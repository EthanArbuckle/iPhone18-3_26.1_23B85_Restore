int main(int argc, const char **argv, const char **envp)
{
  if (qword_1000850C8 != -1)
  {
    swift_once();
  }

  sub_100027CB8();

  dispatch_main();
}

uint64_t sub_100001894(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001910(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001994@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000019DC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100001A1C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001A74()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100001AF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100001B8C(uint64_t a1)
{
  v2 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100001BF8(uint64_t a1)
{
  v2 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100001C64(void *a1, uint64_t a2)
{
  v4 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100001D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100001D94()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100001DF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001E10(uint64_t a1)
{
  v2 = sub_10000238C(&qword_1000851F8, type metadata accessor for FileAttributeKey);
  v3 = sub_10000238C(&unk_100085200, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001ED0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100001F18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100001F68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001F88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_100002028(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002074(uint64_t a1)
{
  v2 = sub_10000238C(&qword_1000851E8, type metadata accessor for URLResourceKey);
  v3 = sub_10000238C(&qword_1000851F0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002130(uint64_t a1)
{
  v2 = sub_10000238C(&qword_1000851B8, type metadata accessor for BGSystemTaskSchedulerError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000219C(uint64_t a1)
{
  v2 = sub_10000238C(&qword_1000851B8, type metadata accessor for BGSystemTaskSchedulerError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000220C(uint64_t a1)
{
  v2 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000238C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100002794()
{
  result = qword_1000851E0;
  if (!qword_1000851E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000851E0);
  }

  return result;
}

uint64_t sub_100002814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696665446B736174 && a2 == 0xEE006E6F6974696ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100072A40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617261506B736174 && a2 == 0xEE0073726574656DLL)
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

Swift::Int sub_100002A18(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_100002A60(unsigned __int8 a1)
{
  v1 = 0x6E6F6973726576;
  v2 = 0x696665446B736174;
  v3 = 0xD000000000000010;
  if (a1 != 3)
  {
    v3 = 0x617261506B736174;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6E6F697461657263;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_100002B20(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1000029E0(*a1, *a2);
}

Swift::Int sub_100002B38(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_100002A18(*v1);
}

void sub_100002B48(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  sub_1000029F0(a1, *v2);
}

Swift::Int sub_100002B58(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1000029F0(v8, *v2);
  return Hasher._finalize()();
}

uint64_t sub_100002BA4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_100002A60(*v1);
}

uint64_t sub_100002BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_100002814(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_100002BF4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_100009178();
  *a2 = result;
  return result;
}

uint64_t sub_100002C28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100002C7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100002CD0(void *a1, int *a2)
{
  v21 = a2;
  v3 = v2;
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v20[0] = *(a2 + 4);
  v20[1] = v6;
  type metadata accessor for MLHostPushMessage.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  v12 = a1[4];
  sub_100009BA0(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v27 = 0;
  v14 = v22;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v15 = v21[11];
    v26 = 1;
    type metadata accessor for Date();
    sub_100009A90(&qword_100085480, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v21[12];
    v25 = 2;
    type metadata accessor for TaskDefinition();
    sub_100009A90(&qword_100085488, &type metadata accessor for TaskDefinition);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v21[13];
    v24 = 3;
    type metadata accessor for MLHostSystemParameters();
    sub_100009A90(&qword_100085490, &type metadata accessor for MLHostSystemParameters);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v21[14];
    v23 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10000300C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v7 = type metadata accessor for Optional();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v45 = &v39 - v9;
  v10 = sub_1000089AC(&qword_100085460, &qword_100068F38);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v48 = &v39 - v12;
  v55 = type metadata accessor for TaskDefinition();
  v49 = *(v55 - 8);
  v13 = *(v49 + 64);
  __chkstk_darwin(v55);
  v54 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Date();
  v53 = *(v50 - 8);
  v15 = *(v53 + 64);
  __chkstk_darwin(v50);
  v52 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MLHostPushMessage.CodingKeys();
  swift_getWitnessTable();
  v57 = type metadata accessor for KeyedDecodingContainer();
  v51 = *(v57 - 8);
  v17 = *(v51 + 64);
  __chkstk_darwin(v57);
  v19 = &v39 - v18;
  v46 = a3;
  v47 = a2;
  v20 = type metadata accessor for MLHostPushMessage();
  v41 = *(v20 - 8);
  v21 = *(v41 + 64);
  __chkstk_darwin(v20);
  v23 = (&v39 - v22);
  v24 = a1[4];
  sub_100009BA0(a1, a1[3]);
  v56 = v19;
  v25 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return sub_100009914(a1);
  }

  v26 = v51;
  v27 = v52;
  v29 = v53;
  v28 = v54;
  v58 = v23;
  v40 = v20;
  v30 = v55;
  v63 = 0;
  *v58 = KeyedDecodingContainer.decode(_:forKey:)();
  v62 = 1;
  sub_100009A90(&qword_100085468, &type metadata accessor for Date);
  v31 = v27;
  v32 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 32))(v58 + *(v40 + 44), v31, v32);
  v61 = 2;
  sub_100009A90(&qword_100085470, &type metadata accessor for TaskDefinition);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = v40;
  (*(v49 + 32))(v58 + *(v40 + 48), v28, v30);
  type metadata accessor for MLHostSystemParameters();
  v60 = 3;
  sub_100009A90(&qword_100085478, &type metadata accessor for MLHostSystemParameters);
  v34 = v48;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100009CF4(v34, v58 + *(v33 + 52), &qword_100085460, &qword_100068F38);
  v59 = 4;
  v35 = v45;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v26 + 8))(v56, v57);
  v36 = v58;
  (*(v42 + 32))(v58 + *(v33 + 56), v35, v43);
  v37 = v41;
  (*(v41 + 16))(v44, v36, v33);
  sub_100009914(a1);
  return (*(v37 + 8))(v36, v33);
}

uint64_t sub_100003778(uint64_t a1, uint64_t a2, void *a3)
{
  v117 = a3;
  v109 = a1;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v114 = *(v5 - 8);
  v115 = v5;
  v6 = *(v114 + 64);
  __chkstk_darwin(v5);
  v113 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v112 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000089AC(&qword_1000854B0, &qword_100068F50);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v104 - v14;
  v16 = type metadata accessor for MLHostEnvironment();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10004F634(_swiftEmptyArrayStorage);
  v106 = v3;
  v3[3] = v21;
  v22 = sub_10004F648(_swiftEmptyArrayStorage);
  v116 = v3 + 3;
  v3[9] = v22;
  v105 = a2;
  sub_100009C2C(a2, v15, &qword_1000854B0, &qword_100068F50);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100009C94(v15, &qword_1000854B0, &qword_100068F50);
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v23 = MLHostEnvironment.rawValue.getter();
    v25 = v26;
    (*(v17 + 8))(v20, v16);
  }

  v27 = v106;
  v106[5] = v23;
  v27[6] = v25;
  v28 = v109;
  v29 = v117;
  if (v117)
  {
    v30 = v117;
  }

  else
  {
    sub_100009A48(0, &qword_1000854B8, OS_dispatch_queue_ptr);
    static DispatchQoS.unspecified.getter();
    v119 = _swiftEmptyArrayStorage;
    sub_100009A90(&qword_1000854C0, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000089AC(&qword_1000854C8, &qword_100068F58);
    sub_100009BE4(&unk_1000854D0, &qword_1000854C8, &qword_100068F58);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v114 + 104))(v113, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v115);
    v28 = v109;
    v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  v106[4] = v30;
  v31 = v28 + 64;
  v32 = 1 << *(v28 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v28 + 64);
  v35 = (v32 + 63) >> 6;
  v104 = v29;

  v36 = 0;
  v37 = 0;
  v107 = v35;
  v108 = v28 + 64;
LABEL_12:
  if (v34)
  {
    v38 = v37;
LABEL_17:
    v110 = v38;
    v111 = (v34 - 1) & v34;
    v39 = __clz(__rbit64(v34)) | (v38 << 6);
    v40 = (*(v28 + 48) + 16 * v39);
    v42 = *v40;
    v43 = v40[1];
    v41 = *(*(v28 + 56) + 8 * v39);
    v44 = v41 + 64;
    v45 = 1 << *(v41 + 32);
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v47 = v46 & *(v41 + 64);
    v48 = (v45 + 63) >> 6;

    v114 = v41;

    v49 = 0;
    v112 = v48;
    v113 = v42;
    while (v47)
    {
LABEL_28:
      v51 = __clz(__rbit64(v47)) | (v49 << 6);
      v52 = *(v114 + 56);
      LODWORD(v117) = *(*(v114 + 48) + v51);
      v53 = *(v52 + 8 * v51);

      v115 = sub_10004F764(v54);

      v55 = v116;
      swift_beginAccess();
      sub_100009B20(v36);
      v56 = *v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = *v55;
      v58 = v118;
      *v55 = 0x8000000000000000;
      v60 = sub_100010DF4(v42, v43);
      v61 = v58[2];
      v62 = (v59 & 1) == 0;
      v63 = v61 + v62;
      if (__OFADD__(v61, v62))
      {
        goto LABEL_49;
      }

      v64 = v59;
      if (v58[3] >= v63)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100013368();
          v58 = v118;
        }
      }

      else
      {
        sub_10001190C(v63, isUniquelyReferenced_nonNull_native);
        v58 = v118;
        v65 = sub_100010DF4(v42, v43);
        if ((v64 & 1) != (v66 & 1))
        {
          goto LABEL_54;
        }

        v60 = v65;
      }

      *v116 = v58;
      if ((v64 & 1) == 0)
      {
        v67 = sub_100052488(_swiftEmptyArrayStorage);
        v58[(v60 >> 6) + 8] |= 1 << v60;
        v68 = (v58[6] + 16 * v60);
        *v68 = v42;
        v68[1] = v43;
        *(v58[7] + 8 * v60) = v67;
        v69 = v58[2];
        v70 = __OFADD__(v69, 1);
        v71 = v69 + 1;
        if (v70)
        {
          goto LABEL_51;
        }

        v58[2] = v71;
      }

      v72 = v44;
      v73 = v43;
      v74 = v58[7];
      v75 = *(v74 + 8 * v60);
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v118 = *(v74 + 8 * v60);
      v77 = v118;
      *(v74 + 8 * v60) = 0x8000000000000000;
      v79 = sub_100010E6C(v117);
      v80 = v77[2];
      v81 = (v78 & 1) == 0;
      v82 = v80 + v81;
      if (__OFADD__(v80, v81))
      {
        goto LABEL_50;
      }

      v83 = v78;
      if (v77[3] >= v82)
      {
        if ((v76 & 1) == 0)
        {
          sub_10001320C();
        }
      }

      else
      {
        sub_10001164C(v82, v76);
        v84 = sub_100010E6C(v117);
        if ((v83 & 1) != (v85 & 1))
        {
          goto LABEL_53;
        }

        v79 = v84;
      }

      v43 = v73;
      v86 = v118;
      v44 = v72;
      if (v83)
      {
        v87 = v118[7];
        v88 = *(v87 + 8 * v79);
        *(v87 + 8 * v79) = v115;
      }

      else
      {
        sub_100012E14(v79, v117, v115, v118);
      }

      v48 = v112;
      v47 &= v47 - 1;
      *(v74 + 8 * v60) = v86;
      swift_endAccess();
      v36 = sub_100004100;
      v42 = v113;
    }

    while (1)
    {
      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v50 >= v48)
      {

        v28 = v109;
        v37 = v110;
        v35 = v107;
        v31 = v108;
        v34 = v111;
        goto LABEL_12;
      }

      v47 = *(v44 + 8 * v50);
      ++v49;
      if (v47)
      {
        v49 = v50;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v35)
      {

        sub_1000089AC(&qword_100085A40, &unk_100068F60);
        v89 = swift_allocObject();
        *(v89 + 16) = 0;
        v90 = v106;
        v106[2] = v89;
        *(v90 + 8) = [objc_allocWithZone(type metadata accessor for MLHostAPSListener()) init];
        v92 = *(v90 + 5);
        v91 = *(v90 + 6);
        v93 = *(v90 + 4);
        v94 = objc_allocWithZone(APSConnection);

        v95 = v93;
        v96 = String._bridgeToObjectiveC()();

        v97 = String._bridgeToObjectiveC()();
        v98 = [v94 initWithEnvironmentName:v96 namedDelegatePort:v97 queue:v95];

        if (!v98)
        {
          goto LABEL_52;
        }

        *(v90 + 7) = v98;
        [v98 setDelegate:*(v90 + 8)];

        sub_100009C94(v105, &qword_1000854B0, &qword_100068F50);
        v99 = *(v90 + 8);
        v100 = &v99[OBJC_IVAR____TtC7mlhostd17MLHostAPSListener_handleMessage];
        v101 = *&v99[OBJC_IVAR____TtC7mlhostd17MLHostAPSListener_handleMessage + 8];
        *v100 = sub_100009B30;
        v100[1] = v90;
        v102 = v99;

        sub_100009B20(v36);
        return v90;
      }

      v34 = *(v31 + 8 * v38);
      ++v37;
      if (v34)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_54:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100004100@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100052488(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

void sub_100004130(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v105 = a8;
  v104 = a7;
  v103 = a6;
  v102 = a5;
  v110 = a3;
  v14 = sub_1000089AC(&qword_1000854E0, &qword_1000694C0);
  v106 = *(v14 - 8);
  v15 = *(v106 + 64);
  __chkstk_darwin(v14);
  v108 = &v90 - v16;
  v107 = sub_1000089AC(&qword_1000854E8, &qword_100068F70);
  v17 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v109 = &v90 - v18;
  v19 = *(v9 + 16);
  os_unfair_lock_lock(v19 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_1000098DC(v20, qword_100087610);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v101 = v21;
    *&v116 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_100008A0C(a1, a2, &v116);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100008A0C(v110, a4, &v116);
    _os_log_impl(&_mh_execute_header, v22, v23, "Processing push message: topic: %s channel: %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v26 = *(v10 + 72);
  if (!*(v26 + 16) || (v27 = *(v10 + 72), v28 = sub_100010DF4(a1, a2), (v29 & 1) == 0))
  {
    swift_endAccess();

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v116 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_100008A0C(a1, a2, &v116);
      _os_log_impl(&_mh_execute_header, v64, v65, "No handler registered for topic: %s", v66, 0xCu);
      sub_100009914(v67);
    }

    goto LABEL_38;
  }

  v101 = v19;
  v30 = (*(v26 + 56) + 16 * v28);
  v31 = v30[1];
  v97 = *v30;
  swift_endAccess();
  strcpy(v115, "messageBundle");
  HIWORD(v115[0]) = -4864;

  AnyHashable.init<A>(_:)();
  if (!*(a9 + 16) || (v32 = sub_1000110B0(&v116), (v33 & 1) == 0))
  {
    sub_100009B3C(&v116);

LABEL_35:
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    v70 = os_log_type_enabled(v68, v69);
    v19 = v101;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v116 = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_100008A0C(0x426567617373656DLL, 0xED0000656C646E75, &v116);
      _os_log_impl(&_mh_execute_header, v68, v69, "The push message body must be a JSON dictionary with key: %s.", v71, 0xCu);
      sub_100009914(v72);
    }

    goto LABEL_38;
  }

  v93 = v31;
  sub_100009960(*(a9 + 56) + 32 * v32, v115);
  sub_100009B3C(&v116);
  sub_100009B90(v115, &v118);
  v34 = objc_opt_self();
  sub_100009BA0(&v118, v119);
  v35 = _bridgeAnythingToObjectiveC<A>(_:)();
  v94 = v34;
  LOBYTE(v34) = [v34 isValidJSONObject:v35];
  swift_unknownObjectRelease();
  if ((v34 & 1) == 0 || (sub_100009960(&v118, &v116), sub_1000089AC(&qword_1000854F0, &qword_100068F78), (swift_dynamicCast() & 1) == 0))
  {

    sub_100009914(&v118);
    goto LABEL_35;
  }

  v36 = *&v115[0];
  v91 = *(*&v115[0] + 16);
  if (v91)
  {
    v37 = 0;
    v100 = 0;
    v98 = 0x8000000100072A40;
    v38 = _swiftEmptyArrayStorage;
    v92 = *&v115[0];
    while (1)
    {
      v99 = v38;
      if (v37 >= *(v36 + 16))
      {
        __break(1u);
      }

      v39 = *(v36 + 8 * v37 + 32);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *&v116 = 0;
      v41 = [v94 dataWithJSONObject:isa options:0 error:&v116];

      v42 = v116;
      if (!v41)
      {
        v83 = v42;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_45;
      }

      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = type metadata accessor for JSONDecoder();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_100009BE4(&qword_1000854F8, &qword_1000854E8, &qword_100068F70);
      v95 = v43;
      v96 = v45;
      v49 = v100;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v100 = v49;
      if (v49)
      {
        break;
      }

      v50 = sub_100052588(_swiftEmptyArrayStorage);
      v113 = 0xD000000000000010;
      v114 = v98;
      AnyHashable.init<A>(_:)();
      if (*(v39 + 16) && (v51 = sub_1000110B0(&v116), (v52 & 1) != 0))
      {
        sub_100009960(*(v39 + 56) + 32 * v51, v115);
        sub_100009B3C(&v116);
        sub_100009960(v115, &v116);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113 = v50;
        sub_10004BCDC(&v116, 0xD000000000000010, v98, isUniquelyReferenced_nonNull_native);
        sub_100009914(v115);
      }

      else
      {
        sub_100009B3C(&v116);
        v54 = sub_1000526B8(_swiftEmptyArrayStorage);
        v117 = sub_1000089AC(qword_100085500, &qword_100068F80);
        *&v116 = v54;
        sub_100009B90(&v116, v115);
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v113 = v50;
        sub_10004BCDC(v115, 0xD000000000000010, v98, v55);
      }

      v56 = v113;
      strcpy(v115, "taskParameters");
      HIBYTE(v115[0]) = -18;
      AnyHashable.init<A>(_:)();
      if (*(v39 + 16) && (v57 = sub_1000110B0(&v116), (v58 & 1) != 0))
      {
        sub_100009960(*(v39 + 56) + 32 * v57, v115);
        sub_100009B3C(&v116);

        sub_100009960(v115, &v116);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v113 = v56;
        sub_10004BCDC(&v116, 0x617261506B736174, 0xEE0073726574656DLL, v59);
        sub_100009914(v115);
        v56 = v113;
      }

      else
      {

        sub_100009B3C(&v116);
      }

      v60 = *(v14 + 48);
      v61 = v108;
      sub_100009C2C(v109, v108, &qword_1000854E8, &qword_100068F70);
      *(v61 + v60) = v56;
      v38 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1000244C4(0, v38[2] + 1, 1, v38);
      }

      v63 = v38[2];
      v62 = v38[3];
      if (v63 >= v62 >> 1)
      {
        v38 = sub_1000244C4(v62 > 1, v63 + 1, 1, v38);
      }

      ++v37;
      sub_1000099D4(v95, v96);
      sub_100009C94(v109, &qword_1000854E8, &qword_100068F70);
      v38[2] = v63 + 1;
      sub_100009CF4(v108, v38 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v63, &qword_1000854E0, &qword_1000694C0);
      v36 = v92;
      if (v91 == v37)
      {
        goto LABEL_40;
      }
    }

    sub_1000099D4(v95, v96);

LABEL_45:
    swift_errorRetain();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    v86 = os_log_type_enabled(v84, v85);
    v19 = v101;
    if (v86)
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138412290;
      swift_errorRetain();
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v87 + 4) = v89;
      *v88 = v89;
      _os_log_impl(&_mh_execute_header, v84, v85, "Received invalid push message, error: %@. Skipping callback.", v87, 0xCu);
      sub_100009C94(v88, &qword_100085970, &qword_100068F48);
    }

    else
    {
    }

    sub_100009914(&v118);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
LABEL_40:
    v73 = v38;

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v116 = v77;
      *v76 = 136315138;

      v78 = Array.description.getter();
      v80 = v79;

      v81 = sub_100008A0C(v78, v80, &v116);

      *(v76 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v74, v75, "Decoded pushed message bundle: %s", v76, 0xCu);
      sub_100009914(v77);
    }

    v82 = v97;
    *&v116 = a1;
    *(&v116 + 1) = a2;
    *&v115[0] = v110;
    *(&v115[0] + 1) = a4;
    v113 = v102;
    v114 = v103;
    v112[0] = v104;
    v112[1] = v105;
    v111 = v73;

    v82(&v116, v115, &v113, v112, &v111);

    sub_100009914(&v118);

    v19 = v101;
  }

LABEL_38:
  os_unfair_lock_unlock(v19 + 4);
}

uint64_t sub_100004F58()
{
  if (qword_1000850B8 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v0 = type metadata accessor for Logger();
    sub_1000098DC(v0, qword_100087610);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Subscribing to all topics and groups with a random channel.", v3, 2u);
    }

    swift_beginAccess();
    v4 = *(v29 + 24);
    v5 = v4 + 64;
    v6 = 1 << *(v4 + 32);
    v7 = v6 < 64 ? ~(-1 << v6) : -1;
    v8 = v7 & *(v4 + 64);
    v9 = (v6 + 63) >> 6;
    v28 = *(v29 + 24);

    v10 = 0;
    v26 = v9;
    v27 = v5;
LABEL_9:
    if (!v8)
    {
      break;
    }

    v11 = v10;
LABEL_14:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(v28 + 48) + 16 * v13;
    v15 = *(*(v28 + 56) + 8 * v13);
    v17 = *v14;
    v16 = *(v14 + 8);
    v18 = 1 << *(v15 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v15 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    while (v20)
    {
      v23 = v22;
LABEL_23:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      sub_1000051D0(v17, v16, *(*(v15 + 48) + (v24 | (v23 << 6))));
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        v10 = v11;
        v9 = v26;
        v5 = v27;
        goto LABEL_9;
      }

      v20 = *(v15 + 64 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_27;
    }

    if (v11 >= v9)
    {
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      goto LABEL_14;
    }
  }
}

void sub_1000051D0(id a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(v3 + 16);
  os_unfair_lock_lock(v7 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000098DC(v8, qword_100087610);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100008A0C(a1, a2, &v117);
    *(v11 + 12) = 2080;
    if (a3)
    {
      v12 = 7104112;
    }

    else
    {
      v12 = 0x74736F686C6DLL;
    }

    if (a3)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    v14 = a2;
    v15 = v7;
    v16 = v4;
    v17 = a1;
    v18 = sub_100008A0C(v12, v13, &v117);

    *(v11 + 14) = v18;
    a1 = v17;
    v4 = v16;
    v7 = v15;
    a2 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Subscribing to a random channel on topic %s and group: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v19 = *(v4 + 24);
  if (!*(v19 + 16) || (v20 = sub_100010DF4(a1, a2), (v21 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_37;
  }

  v22 = *(*(v19 + 56) + 8 * v20);
  swift_endAccess();
  if (!*(v22 + 16))
  {
LABEL_37:

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v43, v44))
    {
LABEL_41:

LABEL_42:
      os_unfair_lock_unlock(v7 + 4);
      return;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v117 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_100008A0C(a1, a2, &v117);
    v47 = "There are no channels for topic: %s";
    goto LABEL_39;
  }

  v23 = sub_100010E6C(a3 & 1);
  if ((v24 & 1) == 0)
  {

    goto LABEL_37;
  }

  v25 = 0x74736F686C6DLL;
  v26 = *(*(v22 + 56) + 8 * v23);

  v27 = sub_100005FA8(v4, a1, a2, v26);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v110 = v29;
  v30 = os_log_type_enabled(v28, v29);
  v31 = v27 >> 62;
  v115 = v7;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v106 = v32;
    *v32 = 136315650;
    v25 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v31)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v33 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    log = v28;
    v108 = v26;
    v111 = a1;
    if (v33)
    {
      v26 = 0;
      v7 = (v27 & 0xC000000000000001);
      v113 = &_swiftEmptyArrayStorage;
      do
      {
        v34 = v26;
        while (1)
        {
          if (v7)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v26 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (v34 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

            v35 = *(v27 + 8 * v34 + 32);
            v26 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }
          }

          a1 = v35;
          v36 = [a1 channelID];
          if (v36)
          {
            break;
          }

          ++v34;
          if (v26 == v33)
          {
            goto LABEL_45;
          }
        }

        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v105 = v39;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_1000243B8(0, *(v113 + 2) + 1, 1, v113);
        }

        v41 = *(v113 + 2);
        v40 = *(v113 + 3);
        a1 = (v41 + 1);
        if (v41 >= v40 >> 1)
        {
          v113 = sub_1000243B8((v40 > 1), v41 + 1, 1, v113);
        }

        *(v113 + 2) = a1;
        v42 = &v113[16 * v41];
        *(v42 + 4) = v38;
        *(v42 + 5) = v105;
      }

      while (v26 != v33);
    }

LABEL_45:
    v48 = Array.description.getter();
    v50 = v49;

    v51 = sub_100008A0C(v48, v50, &v117);

    *(v106 + 1) = v51;
    *(v106 + 6) = 2080;
    a1 = v111;
    *(v106 + 14) = sub_100008A0C(v111, a2, &v117);
    *(v106 + 11) = 2080;
    v25 = 0x74736F686C6DLL;
    if (a3)
    {
      v52 = 7104112;
    }

    else
    {
      v52 = 0x74736F686C6DLL;
    }

    if (a3)
    {
      v53 = 0xE300000000000000;
    }

    else
    {
      v53 = 0xE600000000000000;
    }

    v54 = sub_100008A0C(v52, v53, &v117);

    *(v106 + 3) = v54;
    _os_log_impl(&_mh_execute_header, log, v110, "Currently subscribed to channels: %s for topic: %s and group: %s.", v106, 0x20u);
    swift_arrayDestroy();

    v7 = v115;
    v26 = v108;
    v31 = v27 >> 62;
  }

  else
  {
  }

  if (v31)
  {
LABEL_64:
    if (_CocoaArrayWrapper.endIndex.getter() == 1)
    {
      goto LABEL_54;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
LABEL_54:

    v43 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v43, v55))
    {
      goto LABEL_41;
    }

    v56 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v56 = 136315394;
    *(v56 + 4) = sub_100008A0C(a1, a2, &v117);
    *(v56 + 12) = 2080;
    if (a3)
    {
      v57 = 7104112;
    }

    else
    {
      v57 = v25;
    }

    if (a3)
    {
      v58 = 0xE300000000000000;
    }

    else
    {
      v58 = 0xE600000000000000;
    }

    v59 = v7;
    v60 = sub_100008A0C(v57, v58, &v117);

    *(v56 + 14) = v60;
    v7 = v59;
    _os_log_impl(&_mh_execute_header, v43, v55, "There is already one valid channel subscription for topic: %s and group: %s. Skipping new subscription.", v56, 0x16u);
    swift_arrayDestroy();
    goto LABEL_40;
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v63 = 136315650;
    sub_100009A48(0, &unk_1000854A0, PKPublicChannel_ptr);
    v64 = Array.description.getter();
    v109 = v26;
    v66 = a1;
    v67 = sub_100008A0C(v64, v65, &v117);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_100008A0C(v66, a2, &v117);
    *(v63 + 22) = 2080;
    if (a3)
    {
      v68 = 7104112;
    }

    else
    {
      v68 = 0x74736F686C6DLL;
    }

    if (a3)
    {
      v69 = 0xE300000000000000;
    }

    else
    {
      v69 = 0xE600000000000000;
    }

    v70 = sub_100008A0C(v68, v69, &v117);

    *(v63 + 24) = v70;
    a1 = v66;
    v26 = v109;
    _os_log_impl(&_mh_execute_header, v61, v62, "Unsubscribing from existing channels: %s for topic: %s and group: %s.", v63, 0x20u);
    swift_arrayDestroy();
  }

  v71 = *(v4 + 56);
  sub_100009A48(0, &unk_1000854A0, PKPublicChannel_ptr);
  v72 = v71;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v74 = String._bridgeToObjectiveC()();
  [v72 unsubscribeFromChannels:isa forTopic:v74];

  v75 = sub_10000644C(v26);
  v77 = v76;

  if (!v77)
  {

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    v7 = v115;
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_41;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v117 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_100008A0C(a1, a2, &v117);
    v47 = "No channel options are provided for topic %s. Failed to register new random channel.";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v43, v44, v47, v45, 0xCu);
    sub_100009914(v46);
LABEL_40:

    goto LABEL_41;
  }

  v78 = [*(v4 + 56) opportunisticTopics];
  v79 = v75;
  if (v78)
  {
    v80 = v78;
    v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v81 = &_swiftEmptyArrayStorage;
  }

  v82 = sub_10004F764(v81);

  v118 = v82;

  v112 = a1;
  sub_10004A918(&v117, a1, a2);

  v83 = *(v4 + 56);
  v84 = v118;
  v85 = *(v118 + 16);
  if (!v85)
  {
    v88 = v77;
    v89 = v83;

    goto LABEL_83;
  }

  v86 = sub_100024920(*(v118 + 16), 0);
  v114 = sub_100025710(&v117, v86 + 4, v85, v84);
  v87 = v83;
  sub_100009A28();
  if (v114 == v85)
  {
    v88 = v77;
LABEL_83:
    v90 = v79;
    v91 = Array._bridgeToObjectiveC()().super.isa;

    [v83 _setOpportunisticTopics:v91];

    v92 = *(v4 + 56);
    v93 = objc_allocWithZone(PKPublicChannel);
    v94 = v92;
    v95 = String._bridgeToObjectiveC()();
    v96 = [v93 initWithChannelID:v95];

    v97 = String._bridgeToObjectiveC()();
    [v94 subscribeToChannel:v96 forTopic:v97];

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *v100 = 136315650;
      v101 = sub_100008A0C(v90, v88, &v117);

      *(v100 + 4) = v101;
      *(v100 + 12) = 2080;
      *(v100 + 14) = sub_100008A0C(v112, a2, &v117);
      *(v100 + 22) = 2080;
      if (a3)
      {
        v102 = 7104112;
      }

      else
      {
        v102 = 0x74736F686C6DLL;
      }

      if (a3)
      {
        v103 = 0xE300000000000000;
      }

      else
      {
        v103 = 0xE600000000000000;
      }

      v104 = sub_100008A0C(v102, v103, &v117);

      *(v100 + 24) = v104;
      _os_log_impl(&_mh_execute_header, v98, v99, "Subscribed to random channel: %s for topic: %s and group: %s.", v100, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v7 = v115;
    goto LABEL_42;
  }

  __break(1u);
}

void *sub_100005FA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 56);
  v8 = String._bridgeToObjectiveC()();
  v45[0] = 0;
  v9 = [v7 registeredChannelsForTopic:v8 error:v45];

  v10 = v45[0];
  if (v9)
  {
    sub_100009A48(0, &unk_1000854A0, PKPublicChannel_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v10;

    v13 = 0;
  }

  else
  {
    v14 = v45[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000098DC(v15, qword_100087610);

    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45[0] = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_100008A0C(a2, a3, v45);
      *(v18 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed at querying registered channes for topic: %s -- %@", v18, 0x16u);
      sub_100009C94(v19, &qword_100085970, &qword_100068F48);

      sub_100009914(v20);
    }

    else
    {
    }

    v13 = 0;
    v11 = &_swiftEmptyArrayStorage;
  }

  v44 = &_swiftEmptyArrayStorage;
  if (v11 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v41 = v13;
    v23 = 0;
    v42 = v11 & 0xFFFFFFFFFFFFFF8;
    v43 = v11 & 0xC000000000000001;
    v11 += 32;
    v24 = a4 + 56;
    while (1)
    {
      if (v43)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v42 + 16))
        {
          goto LABEL_33;
        }

        v25 = *(v11 + 8 * v23);
      }

      v26 = v25;
      if (__OFADD__(v23++, 1))
      {
        break;
      }

      v28 = [v25 channelID];
      if (!v28)
      {
        __break(1u);
      }

      v13 = v28;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      if (*(a4 + 16) && (v32 = *(a4 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v33 = Hasher._finalize()(), v34 = -1 << *(a4 + 32), v13 = v33 & ~v34, ((*(v24 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v35 = ~v34;
        while (1)
        {
          v36 = (*(a4 + 48) + 16 * v13);
          v37 = *v36 == v29 && v36[1] == v31;
          if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v13 = (v13 + 1) & v35;
          if (((*(v24 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v38 = v44[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 = &v44;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
LABEL_12:
      }

      if (v23 == i)
      {
        v39 = v44;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v39 = &_swiftEmptyArrayStorage;
LABEL_36:

  return v39;
}

uint64_t sub_10000644C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_100008FB4(v2);
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = sub_100009040(v5, *(a1 + 36), 0, v3, a1);
  v8 = v7;
  v10 = v9;
  v11 = sub_100050344(v6, v7, v9 & 1, a1);

  sub_100009A30(v6, v8, v10 & 1);
  return v11;
}

void sub_100006504()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  if (qword_1000850B8 != -1)
  {
LABEL_42:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000098DC(v2, qword_100087610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unsubscribing all topics and channels", v5, 2u);
  }

  v6 = sub_100006C70(v67);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v60 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v68 = v10;
    *v9 = 136315138;
    v11 = Array.description.getter();
    v13 = sub_100008A0C(v11, v12, &v68);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "unregistering channels from topics: %s", v9, 0xCu);
    sub_100009914(v10);
  }

  v14 = *&v6[4]._os_unfair_lock_opaque;
  if (v14)
  {
    v56 = v1;
    v15 = 0;
    v1 = v6 + 8;
    v58 = *&v6[4]._os_unfair_lock_opaque;
    v57 = v6 + 8;
    while (1)
    {
      if (v15 >= *&v6[4]._os_unfair_lock_opaque)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v17 = &v1[4 * v15];
      v19 = *&v17->_os_unfair_lock_opaque;
      v18 = *&v17[2]._os_unfair_lock_opaque;
      v20 = *(v67 + 56);

      v21 = v20;
      v66 = v19;
      v22 = String._bridgeToObjectiveC()();
      v68 = 0;
      v23 = [v21 registeredChannelsForTopic:v22 error:&v68];

      v24 = v68;
      if (v23)
      {
        break;
      }

      v16 = v68;

      _convertNSErrorToError(_:)();

      swift_willThrow();

LABEL_9:
      if (++v15 == v14)
      {

        v1 = v56;
        goto LABEL_38;
      }
    }

    sub_100009A48(0, &unk_1000854A0, PKPublicChannel_ptr);
    v65 = v23;
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    v63 = v28;
    if (!os_log_type_enabled(v27, v28))
    {

      v41 = v67;
LABEL_35:
      v46 = *(v41 + 56);
      v47 = String._bridgeToObjectiveC()();

      [v46 unsubscribeFromChannels:v65 forTopic:v47];

      goto LABEL_9;
    }

    log = v27;
    v61 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v61 = 136315394;
    if (v25 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (v29)
      {
LABEL_15:
        v30 = 0;
        v1 = (v25 & 0xC000000000000001);
        v64 = _swiftEmptyArrayStorage;
        do
        {
          v31 = v30;
          while (1)
          {
            if (v1)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v30 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_39;
              }
            }

            else
            {
              if (v31 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_40;
              }

              v32 = *(v25 + 8 * v31 + 32);
              v30 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
LABEL_39:
                __break(1u);
LABEL_40:
                __break(1u);
                goto LABEL_41;
              }
            }

            v33 = v32;
            v34 = [v33 channelID];
            if (v34)
            {
              break;
            }

            ++v31;
            if (v30 == v29)
            {
              goto LABEL_34;
            }
          }

          v35 = v34;
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v37;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_1000243B8(0, *(v64 + 2) + 1, 1, v64);
          }

          v39 = *(v64 + 2);
          v38 = *(v64 + 3);
          if (v39 >= v38 >> 1)
          {
            v64 = sub_1000243B8((v38 > 1), v39 + 1, 1, v64);
          }

          *(v64 + 2) = v39 + 1;
          v40 = &v64[16 * v39];
          *(v40 + 4) = v36;
          *(v40 + 5) = v59;
        }

        while (v30 != v29);
      }
    }

    else
    {
      v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_34:

    v42 = Array.description.getter();
    v44 = v43;

    v45 = sub_100008A0C(v42, v44, &v68);

    *(v61 + 4) = v45;
    *(v61 + 12) = 2080;
    *(v61 + 14) = sub_100008A0C(v66, v18, &v68);
    _os_log_impl(&_mh_execute_header, log, v63, "Unsubscribed channels: %s for topic: %s", v61, 0x16u);
    swift_arrayDestroy();

    v41 = v67;
    v14 = v58;
    v6 = v60;
    v1 = v57;
    goto LABEL_35;
  }

LABEL_38:
  v48 = *(v67 + 56);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v48 _setEnabledTopics:isa];

  v50 = *(v67 + 56);
  v51 = Array._bridgeToObjectiveC()().super.isa;
  [v50 _setOpportunisticTopics:v51];

  v52 = *(v67 + 56);
  v53 = Array._bridgeToObjectiveC()().super.isa;
  [v52 _setIgnoredTopics:v53];

  v54 = *(v67 + 56);
  v55 = Array._bridgeToObjectiveC()().super.isa;
  [v54 _setNonWakingTopics:v55];

  os_unfair_lock_unlock(v1 + 4);
}

void *sub_100006C70(uint64_t a1)
{
  v21 = &_swiftEmptySetSingleton;
  v2 = [*(a1 + 56) enabledTopics];
  if (v2)
  {
    v3 = v2;
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1000500E8(v4);

  v5 = [*(a1 + 56) opportunisticTopics];
  if (v5)
  {
    v6 = v5;
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  sub_1000500E8(v7);

  v8 = [*(a1 + 56) ignoredTopics];
  if (v8)
  {
    v9 = v8;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_1000500E8(v10);

  v11 = [*(a1 + 56) nonWakingTopics];
  if (v11)
  {
    v12 = v11;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  sub_1000500E8(v13);

  swift_beginAccess();
  v14 = *(a1 + 24);

  sub_1000295C0(v15);
  v16 = v21[2];
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = sub_100024920(v21[2], 0);
  v18 = sub_100025710(&v20, v17 + 4, v16, v21);
  sub_100009A28();
  if (v18 != v16)
  {
    __break(1u);
LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  return v17;
}

uint64_t sub_100006E80()
{
  v1 = *v0;
  v2 = v0[2];
  os_unfair_lock_lock(v2 + 4);
  _StringGuts.grow(_:)(49);
  v3 = _typeName(_:qualified:)();

  v15 = v3;
  v4._object = 0x80000001000729C0;
  v4._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v4);
  v5 = v0[5];
  v6 = v0[6];

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v8._object = 0x80000001000729E0;
  String.append(_:)(v8);
  swift_beginAccess();
  v9 = v0[3];

  sub_1000089AC(&qword_100085458, &qword_100068F30);
  v10 = Dictionary.description.getter();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  os_unfair_lock_unlock(v2 + 4);
  return v15;
}

uint64_t sub_100007018()
{
  v21 = *(v0 + 16);
  os_unfair_lock_lock(v21 + 4);
  v1 = sub_1000527F4(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v2 = *(v0 + 24);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + 24) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v22 = *(v0 + 24);

  for (i = 0; v8; result = )
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v22 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v22 + 56) + 8 * v14);

    sub_10000756C(v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10004BE2C(_swiftEmptyArrayStorage, v16, v17, isUniquelyReferenced_nonNull_native);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      os_unfair_lock_unlock(v21 + 4);
      return v1;
    }

    v8 = *(v4 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000071BC(uint64_t result)
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

    v4 = sub_1000243B8(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_100025710(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
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

  v38 = sub_1000243B8((v31 > 1), v13 + 1, 1, v4);
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
  result = sub_100009A28();
  *v1 = v4;
  return result;
}

uint64_t sub_100007478(uint64_t result)
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

  result = sub_1000243B8(result, v11, 1, v3);
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

uint64_t sub_10000756C(uint64_t a1)
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

  for (i = 0; v5; result = sub_1000071BC(v12))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a1 + 56) + ((v9 << 9) | (8 * v10)));
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_100007650()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  v44 = v0;
  v2 = sub_100007B74(v0);
  v3 = sub_1000527F4(_swiftEmptyArrayStorage);
  v43 = v2[2];
  if (!v43)
  {

    goto LABEL_36;
  }

  v39 = v1;
  v4 = 0;
  v42 = v2 + 4;
  v40 = v2;
  do
  {
    if (v4 >= v2[2])
    {
      goto LABEL_39;
    }

    v7 = &v42[2 * v4];
    v8 = *v7;
    v9 = v7[1];
    v10 = *(v44 + 56);

    v11 = v10;
    v46 = v8;
    v12 = String._bridgeToObjectiveC()();
    v47 = 0;
    v13 = [v11 registeredChannelsForTopic:v12 error:&v47];

    v14 = v47;
    if (v13)
    {
      sub_100009A48(0, &unk_1000854A0, PKPublicChannel_ptr);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v14;

      if (v15 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
        v45 = v3;
        if (v17)
        {
LABEL_10:
          v18 = 0;
          v5 = _swiftEmptyArrayStorage;
          do
          {
            v19 = v18;
            while (1)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v18 = v19 + 1;
                if (__OFADD__(v19, 1))
                {
                  goto LABEL_37;
                }
              }

              else
              {
                if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_38;
                }

                v20 = *(v15 + 8 * v19 + 32);
                v18 = v19 + 1;
                if (__OFADD__(v19, 1))
                {
LABEL_37:
                  __break(1u);
LABEL_38:
                  __break(1u);
LABEL_39:
                  __break(1u);
                }
              }

              v21 = v20;
              v22 = [v21 channelID];
              if (v22)
              {
                break;
              }

              ++v19;
              if (v18 == v17)
              {
                goto LABEL_4;
              }
            }

            v23 = v22;
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v25;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1000243B8(0, *(v5 + 2) + 1, 1, v5);
            }

            v27 = *(v5 + 2);
            v26 = *(v5 + 3);
            if (v27 >= v26 >> 1)
            {
              v5 = sub_1000243B8((v26 > 1), v27 + 1, 1, v5);
            }

            *(v5 + 2) = v27 + 1;
            v28 = &v5[16 * v27];
            *(v28 + 4) = v24;
            *(v28 + 5) = v41;
          }

          while (v18 != v17);
          goto LABEL_4;
        }
      }

      else
      {
        v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v45 = v3;
        if (v17)
        {
          goto LABEL_10;
        }
      }

      v5 = _swiftEmptyArrayStorage;
LABEL_4:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v45;
      sub_10004BE2C(v5, v46, v9, isUniquelyReferenced_nonNull_native);

      v3 = v47;
      v2 = v40;
      goto LABEL_5;
    }

    v29 = v47;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000098DC(v30, qword_100087610);

    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v33 = 136315394;
      v36 = sub_100008A0C(v46, v9, &v47);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed at fetching registered channels for topic: %s - %@", v33, 0x16u);
      sub_100009C94(v34, &qword_100085970, &qword_100068F48);

      sub_100009914(v35);
    }

    else
    {
    }

LABEL_5:
    ++v4;
  }

  while (v4 != v43);

  v1 = v39;
LABEL_36:
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void *sub_100007B74(uint64_t a1)
{
  result = [*(a1 + 56) enabledTopics];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007478(v4);
  result = [*(a1 + 56) opportunisticTopics];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007478(v6);
  result = [*(a1 + 56) ignoredTopics];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007478(v8);
  result = [*(a1 + 56) nonWakingTopics];
  if (result)
  {
    v9 = result;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100007478(v10);
    return _swiftEmptyArrayStorage;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100007CC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  return v0;
}

uint64_t sub_100007D14()
{
  sub_100007CC4();

  return _swift_deallocClassInstance(v0, 80, 7);
}

id sub_100007F0C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100007F84(uint64_t a1)
{
  type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    type metadata accessor for TaskDefinition();
    if (v3 <= 0x3F)
    {
      sub_100008954();
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        type metadata accessor for Optional();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10000804C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v48 = type metadata accessor for Date();
  v6 = *(v48 - 8);
  v7 = *(v6 + 84);
  v47 = type metadata accessor for TaskDefinition();
  v8 = *(v47 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for MLHostSystemParameters() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*(a3 + 16) - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 > v15)
  {
    v15 = v19;
  }

  v20 = *(v11 + 64);
  if (v13)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = *(v6 + 80);
  v23 = *(v6 + 64);
  v24 = *(v8 + 80);
  v25 = *(v12 + 80);
  v26 = *(v16 + 80);
  v27 = *(v16 + 64);
  if (v18)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v29 = *(v8 + 64) + v25;
  v30 = v21 + v26;
  if (a2 > v15)
  {
    v31 = v28 + ((v30 + ((v29 + ((v23 + v24 + ((v22 + 8) & ~v22)) & ~v24)) & ~v25)) & ~v26);
    v32 = 8 * v31;
    if (v31 <= 3)
    {
      v34 = ((a2 - v15 + ~(-1 << v32)) >> v32) + 1;
      if (HIWORD(v34))
      {
        v33 = *(a1 + v31);
        if (!v33)
        {
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      if (v34 > 0xFF)
      {
        v33 = *(a1 + v31);
        if (!*(a1 + v31))
        {
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      if (v34 < 2)
      {
LABEL_43:
        if (v15)
        {
          goto LABEL_44;
        }

        return 0;
      }
    }

    v33 = *(a1 + v31);
    if (!*(a1 + v31))
    {
      goto LABEL_43;
    }

LABEL_30:
    v35 = (v33 - 1) << v32;
    if (v31 > 3)
    {
      v35 = 0;
    }

    if (v31)
    {
      if (v31 <= 3)
      {
        v36 = v31;
      }

      else
      {
        v36 = 4;
      }

      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v37 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v37 = *a1;
        }
      }

      else if (v36 == 1)
      {
        v37 = *a1;
      }

      else
      {
        v37 = *a1;
      }
    }

    else
    {
      v37 = 0;
    }

    return v15 + (v37 | v35) + 1;
  }

LABEL_44:
  v38 = (a1 + v22 + 8) & ~v22;
  if (v7 == v15)
  {
    v39 = *(v6 + 48);
    v40 = v38;
    v41 = v7;
    v42 = v48;
LABEL_49:

    return v39(v40, v41, v42);
  }

  v44 = (v38 + v23 + v24) & ~v24;
  if (v9 == v15)
  {
    v39 = *(v8 + 48);
    v40 = v44;
    v41 = v9;
    v42 = v47;
    goto LABEL_49;
  }

  v45 = (v29 + v44) & ~v25;
  if (v14 == v15)
  {
    v46 = (*(v12 + 48))(v45);
  }

  else
  {
    v46 = (*(v17 + 48))((v30 + v45) & ~v26, v18);
  }

  if (v46 >= 2)
  {
    return v46 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_100008434(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v52 = type metadata accessor for Date();
  v6 = *(v52 - 8);
  v55 = v6;
  v7 = *(v6 + 84);
  v51 = type metadata accessor for TaskDefinition();
  v8 = *(v51 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(type metadata accessor for MLHostSystemParameters() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a4 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  v20 = *(v12 + 64);
  v21 = *(v6 + 80);
  v22 = *(v6 + 64);
  v23 = *(v8 + 80);
  v24 = *(v8 + 64);
  v25 = *(v13 + 80);
  v26 = *(v18 + 80);
  v27 = v19 - 1;
  if (!v19)
  {
    v27 = 0;
  }

  if (v27 <= v16)
  {
    v28 = v16;
  }

  else
  {
    v28 = v27;
  }

  if (v14)
  {
    v29 = v20;
  }

  else
  {
    v29 = v20 + 1;
  }

  v30 = v24 + v25;
  v31 = v29 + v26;
  if (v19)
  {
    v32 = *(v18 + 64);
  }

  else
  {
    v32 = *(v18 + 64) + 1;
  }

  v33 = ((v31 + ((v24 + v25 + ((v22 + v23 + ((v21 + 8) & ~v21)) & ~v23)) & ~v25)) & ~v26) + v32;
  if (a3 > v28)
  {
    if (v33 <= 3)
    {
      v34 = ((a3 - v28 + ~(-1 << (8 * v33))) >> (8 * v33)) + 1;
      if (HIWORD(v34))
      {
        v11 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v11 = v35;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v28 < a2)
  {
    v36 = ~v28 + a2;
    if (v33 < 4)
    {
      v37 = (v36 >> (8 * v33)) + 1;
      if (v33)
      {
        v38 = v36 & ~(-1 << (8 * v33));
        bzero(a1, v33);
        if (v33 != 3)
        {
          if (v33 == 2)
          {
            *a1 = v38;
            if (v11 > 1)
            {
LABEL_66:
              if (v11 == 2)
              {
                *&a1[v33] = v37;
              }

              else
              {
                *&a1[v33] = v37;
              }

              return;
            }
          }

          else
          {
            *a1 = v36;
            if (v11 > 1)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_63;
        }

        *a1 = v38;
        a1[2] = BYTE2(v38);
      }

      if (v11 > 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      bzero(a1, v33);
      *a1 = v36;
      v37 = 1;
      if (v11 > 1)
      {
        goto LABEL_66;
      }
    }

LABEL_63:
    if (v11)
    {
      a1[v33] = v37;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *&a1[v33] = 0;
  }

  else if (v11)
  {
    a1[v33] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  v39 = &a1[v21 + 8] & ~v21;
  if (v7 == v28)
  {
    v40 = *(v55 + 56);
    v41 = v39;
    v42 = a2;
    v43 = v7;
    v17 = v52;
LABEL_52:

    v40(v41, v42, v43, v17);
    return;
  }

  v44 = (v39 + v22 + v23) & ~v23;
  if (v9 == v28)
  {
    v40 = *(v8 + 56);
    v41 = v44;
    v42 = a2;
    v43 = v9;
    v17 = v51;
    goto LABEL_52;
  }

  v45 = (v30 + v44) & ~v25;
  if (v15 == v28)
  {
    v46 = *(v13 + 56);

    v46(v45, a2 + 1);
  }

  else
  {
    v47 = ((v31 + v45) & ~v26);
    if (v27 >= a2)
    {
      v40 = *(v18 + 56);
      v42 = a2 + 1;
      v41 = (v31 + v45) & ~v26;
      v43 = v19;
      goto LABEL_52;
    }

    if (v32 <= 3)
    {
      v48 = ~(-1 << (8 * v32));
    }

    else
    {
      v48 = -1;
    }

    if (v32)
    {
      v49 = v48 & (~v27 + a2);
      if (v32 <= 3)
      {
        v50 = v32;
      }

      else
      {
        v50 = 4;
      }

      bzero(v47, v32);
      if (v50 > 2)
      {
        if (v50 == 3)
        {
          *v47 = v49;
          v47[2] = BYTE2(v49);
        }

        else
        {
          *v47 = v49;
        }
      }

      else if (v50 == 1)
      {
        *v47 = v49;
      }

      else
      {
        *v47 = v49;
      }
    }
  }
}

void sub_100008954()
{
  if (!qword_100085450)
  {
    type metadata accessor for MLHostSystemParameters();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100085450);
    }
  }
}

uint64_t sub_1000089AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008A0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008AD8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100009960(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009914(v11);
  return v7;
}

unint64_t sub_100008AD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100008BE4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100008BE4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100008C30(a1, a2);
  sub_100008D60(&off_10007DFA0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100008C30(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100008E4C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100008E4C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100008D60(uint64_t result)
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

  result = sub_100008EC0(result, v12, 1, v3);
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

void *sub_100008E4C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000089AC(&qword_100085498, &qword_100068F40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100008EC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000089AC(&qword_100085498, &qword_100068F40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100008FB4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100009040(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v16 = result;
      sub_100009A3C(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    while ((a3 & 1) == 0)
    {
      if ((result & 0x8000000000000000) != 0 || (v7 = 1 << *(a5 + 32), result >= v7))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = result >> 6;
      v9 = *(a5 + 56 + 8 * (result >> 6));
      if (((v9 >> result) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_21;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 64 + 8 * v8);
        while (v12 < (v7 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      a3 = 0;
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_100009180()
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000098DC(v0, qword_100087610);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Received public push token", v2, 2u);
  }
}

void sub_100009268(void *a1)
{
  v2 = v1;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000098DC(v4, qword_100087610);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received relay push", v7, 2u);
  }

  if (a1)
  {
    v50 = a1;
    v8 = [v50 topic];
    if (v8)
    {
      v9 = v8;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [v50 channelID];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = [v50 pushType];
        if (v17 == 1024)
        {
          v18 = 0xEC00000079746976;
          v19 = 0x697463416576696CLL;
        }

        else if (v17 == 8)
        {
          v18 = 0xE500000000000000;
          v19 = 0x7472656C61;
        }

        else if (v17 == 4)
        {
          v18 = 0xEA0000000000646ELL;
          v19 = 0x756F72676B636162;
        }

        else
        {
          v51 = v17;
          type metadata accessor for APSIncomingMessagePushType(0);
          v19 = String.init<A>(describing:)();
          v18 = v25;
        }

        v26 = [v50 priority];
        if (v26 == 1)
        {
          v27 = 0xE300000000000000;
          v28 = 7827308;
        }

        else if (v26 == 10)
        {
          v27 = 0xE400000000000000;
          v28 = 1751607656;
        }

        else if (v26 == 5)
        {
          v27 = 0xE600000000000000;
          v28 = 0x6D756964656DLL;
        }

        else
        {
          v51 = v26;
          type metadata accessor for APSIncomingMessagePriority(0);
          v28 = String.init<A>(describing:)();
          v27 = v29;
        }

        v30 = [v50 userInfo];

        if (v30)
        {
          v46 = v28;
          v47 = v27;
          v48 = v19;
          v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v45 = v18;
            v34 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            *v34 = 136315650;
            *(v34 + 4) = sub_100008A0C(v49, v11, &v51);
            *(v34 + 12) = 2080;
            *(v34 + 14) = sub_100008A0C(v14, v16, &v51);
            *(v34 + 22) = 2080;
            v35 = Dictionary.description.getter();
            v37 = v16;
            v38 = v14;
            v39 = sub_100008A0C(v35, v36, &v51);

            *(v34 + 24) = v39;
            v14 = v38;
            v16 = v37;
            _os_log_impl(&_mh_execute_header, v32, v33, "Received push message for topic %s on channel %s: %s", v34, 0x20u);
            swift_arrayDestroy();

            v18 = v45;
          }

          v40 = *(v2 + OBJC_IVAR____TtC7mlhostd17MLHostAPSListener_handleMessage);
          v41 = *(v2 + OBJC_IVAR____TtC7mlhostd17MLHostAPSListener_handleMessage + 8);

          v40(v49, v11, v14, v16, v48, v18, v46, v47, v31);
        }

        else
        {

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&_mh_execute_header, v42, v43, "Push message has nil userInfo.", v44, 2u);
          }
        }

        return;
      }
    }

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Push message has nil topic / channel.", v24, 2u);
    }
  }

  else
  {
    v50 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v50, v20, "Push message has nil message.", v21, 2u);
    }
  }
}

uint64_t sub_1000098DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100009914(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100009960(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000099C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000099D4(a1, a2);
  }

  return a1;
}

uint64_t sub_1000099D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100009A30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100009A3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100009A48(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100009A90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009AD8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100009B20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

_OWORD *sub_100009B90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100009BA0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100009BE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009AD8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009C2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000089AC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009C94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000089AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000089AC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009DA0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100009E30(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100009F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!*(*(v3 + 40) + 16) || (, sub_100010F08(a1), v8 = v7, , (v8 & 1) == 0))
  {
    if (!a3)
    {
      return 1;
    }

    swift_beginAccess();
    v9 = *(v3 + 24);
    if (*(v9 + 16) && (v10 = sub_100010DF4(a2, a3), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();

      v13 = sub_1000293A8(a1, v12);

      if (v13)
      {
        return 1;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  return 0;
}

uint64_t sub_10000A044()
{
  v38 = *(v0 + 16);
  os_unfair_lock_lock(v38 + 4);
  v1 = sub_100052808(&_swiftEmptyArrayStorage);
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 24);

  v8 = 0;
  v39 = v6;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      os_unfair_lock_unlock(v38 + 4);
      return v1;
    }

    v5 = *(v2 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        v14 = (*(v2 + 48) + 16 * v13);
        v15 = v14[1];
        v43 = *v14;
        v16 = *(*(v2 + 56) + 8 * v13);
        v17 = *(v16 + 16);
        if (v17)
        {
          v41 = v14[1];
          sub_1000089AC(&qword_100085650, &qword_1000690E8);
          v18 = *(type metadata accessor for UUID() - 8);
          v19 = *(v18 + 72);
          v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
          v21 = swift_allocObject();
          v22 = j__malloc_size(v21);
          if (!v19)
          {
            goto LABEL_32;
          }

          if (v22 - v20 == 0x8000000000000000 && v19 == -1)
          {
            goto LABEL_35;
          }

          v21[2] = v17;
          v21[3] = 2 * ((v22 - v20) / v19);
          v42 = v21;
          v40 = sub_100025868(&v44, v21 + v20, v17, v16);

          sub_100009A28();
          if (v40 != v17)
          {
            goto LABEL_33;
          }

          v6 = v39;
          v15 = v41;
        }

        else
        {

          v42 = &_swiftEmptyArrayStorage;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v1;
        v25 = sub_100010DF4(v43, v15);
        v27 = v1[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_31;
        }

        v31 = v26;
        if (v1[3] >= v30)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v36 = v25;
            sub_100013984();
            v25 = v36;
          }
        }

        else
        {
          sub_1000122D0(v30, isUniquelyReferenced_nonNull_native);
          v25 = sub_100010DF4(v43, v15);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_36;
          }
        }

        v5 &= v5 - 1;
        if (v31)
        {
          v9 = v25;

          v1 = v44;
          v10 = v44[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v42;

          v8 = v12;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v1 = v44;
          v44[(v25 >> 6) + 8] |= 1 << v25;
          v33 = (v1[6] + 16 * v25);
          *v33 = v43;
          v33[1] = v15;
          *(v1[7] + 8 * v25) = v42;
          v34 = v1[2];
          v29 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (v29)
          {
            goto LABEL_34;
          }

          v1[2] = v35;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
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

uint64_t sub_10000A3D4()
{
  v38 = *(v0 + 16);
  os_unfair_lock_lock(v38 + 4);
  v1 = sub_100052808(&_swiftEmptyArrayStorage);
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 32);

  v8 = 0;
  v39 = v6;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      os_unfair_lock_unlock(v38 + 4);
      return v1;
    }

    v5 = *(v2 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        v14 = (*(v2 + 48) + 16 * v13);
        v15 = v14[1];
        v43 = *v14;
        v16 = *(*(v2 + 56) + 8 * v13);
        v17 = *(v16 + 16);
        if (v17)
        {
          v41 = v14[1];
          sub_1000089AC(&qword_100085650, &qword_1000690E8);
          v18 = *(type metadata accessor for UUID() - 8);
          v19 = *(v18 + 72);
          v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
          v21 = swift_allocObject();
          v22 = j__malloc_size(v21);
          if (!v19)
          {
            goto LABEL_32;
          }

          if (v22 - v20 == 0x8000000000000000 && v19 == -1)
          {
            goto LABEL_35;
          }

          v21[2] = v17;
          v21[3] = 2 * ((v22 - v20) / v19);
          v42 = v21;
          v40 = sub_100025868(&v44, v21 + v20, v17, v16);

          sub_100009A28();
          if (v40 != v17)
          {
            goto LABEL_33;
          }

          v6 = v39;
          v15 = v41;
        }

        else
        {

          v42 = &_swiftEmptyArrayStorage;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v1;
        v25 = sub_100010DF4(v43, v15);
        v27 = v1[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_31;
        }

        v31 = v26;
        if (v1[3] >= v30)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v36 = v25;
            sub_100013984();
            v25 = v36;
          }
        }

        else
        {
          sub_1000122D0(v30, isUniquelyReferenced_nonNull_native);
          v25 = sub_100010DF4(v43, v15);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_36;
          }
        }

        v5 &= v5 - 1;
        if (v31)
        {
          v9 = v25;

          v1 = v44;
          v10 = v44[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v42;

          v8 = v12;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v1 = v44;
          v44[(v25 >> 6) + 8] |= 1 << v25;
          v33 = (v1[6] + 16 * v25);
          *v33 = v43;
          v33[1] = v15;
          *(v1[7] + 8 * v25) = v42;
          v34 = v1[2];
          v29 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (v29)
          {
            goto LABEL_34;
          }

          v1[2] = v35;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
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

void *sub_10000A764(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000089AC(&qword_100085A00, &unk_100069670);
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  __chkstk_darwin(v8);
  v74 = &v69 - v10;
  v76 = type metadata accessor for RemoteHandler();
  v78 = *(v76 - 8);
  v11 = v78[8];
  __chkstk_darwin(v76);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v69 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v84 = &v69 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v69 - v26;
  __chkstk_darwin(v25);
  v29 = &v69 - v28;
  v79 = *(v4 + 16);
  os_unfair_lock_lock(v79 + 4);
  sub_10000E18C(a3, v16);
  v30 = (*(v18 + 48))(v16, 1, v17);
  v85 = v18;
  if (v30 == 1)
  {
    sub_100009C94(v16, &qword_100085FA0, &qword_1000690F8);
    goto LABEL_8;
  }

  (*(v18 + 32))(v29, v16, v17);
  if ((sub_100009F44(v29, a1, a2) & 1) == 0)
  {
    (*(v18 + 8))(v29, v17);
LABEL_8:
    swift_beginAccess();
    v42 = *(v4 + 32);
    v43 = *(v42 + 16);
    v82 = v4;
    v86 = v17;
    if (v43 && (v44 = sub_100010DF4(a1, a2), (v45 & 1) != 0))
    {
      v46 = *(*(v42 + 56) + 8 * v44);
    }

    else
    {
      v46 = &_swiftEmptySetSingleton;
    }

    swift_endAccess();
    v27 = 0;
    v47 = v46 + 56;
    v48 = 1 << v46[32];
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v46 + 7);
    v29 = ((v48 + 63) >> 6);
    v83 = v85 + 16;
    v80 = (v85 + 8);
    v81 = v85 + 32;
    v70 = (v78 + 1);
    v71 = v78 + 2;
    v77 = &_swiftEmptyArrayStorage;
    if (v50)
    {
      while (1)
      {
        v51 = v22;
LABEL_20:
        v53 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v17 = v46;
        v54 = *(v46 + 6);
        v55 = v84;
        a2 = v85;
        a1 = *(v85 + 16);
        v56 = v86;
        (a1)(v84, v54 + *(v85 + 72) * (v53 | (v27 << 6)), v86);
        v57 = v56;
        v22 = v51;
        (*(a2 + 32))(v51, v55, v57);
        v58 = v82;
        swift_beginAccess();
        v59 = *(v58 + 48);
        if (*(v59 + 16) && (v60 = sub_100010F08(v51), (v61 & 1) != 0))
        {
          v62 = v78[2];
          a2 = v71;
          v62(v75, *(v59 + 56) + v78[9] * v60, v76);
          swift_endAccess();
          v63 = v74;
          v69 = *(v73 + 48);
          (a1)(v74, v22, v86);
          v62((v63 + v69), v75, v76);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_1000244E8(0, v77[2] + 1, 1, v77);
          }

          a1 = v77[2];
          v64 = v77[3];
          if (a1 >= v64 >> 1)
          {
            v77 = sub_1000244E8(v64 > 1, a1 + 1, 1, v77);
          }

          (*v70)(v75, v76);
          (*v80)(v22, v86);
          v65 = v77;
          v77[2] = a1 + 1;
          sub_10000E1FC(v74, v65 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * a1);
          v46 = v17;
          if (!v50)
          {
            break;
          }
        }

        else
        {
          swift_endAccess();
          (*v80)(v51, v86);
          v46 = v17;
          if (!v50)
          {
            break;
          }
        }
      }
    }

    while (1)
    {
      v52 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v52 >= v29)
      {

        v66 = v79;
        v67 = v77;
        goto LABEL_33;
      }

      v50 = *&v47[8 * v52];
      ++v27;
      if (v50)
      {
        v51 = v22;
        v27 = v52;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  if (qword_1000850B8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000098DC(v31, qword_100087610);
  v32 = v85;
  (*(v85 + 16))(v27, v29, v17);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v84 = a1;
    v36 = v35;
    v86 = swift_slowAlloc();
    v87[0] = v86;
    *v36 = 136315394;
    sub_10000E26C(&qword_100085660);
    LODWORD(v83) = v34;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v40 = *(v32 + 8);
    v40(v27, v17);
    v41 = sub_100008A0C(v37, v39, v87);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_100008A0C(v84, a2, v87);
    _os_log_impl(&_mh_execute_header, v33, v83, "Invalid publisher %s for topic %s.", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v40 = *(v32 + 8);
    v40(v27, v17);
  }

  v66 = v79;
  v40(v29, v17);
  v67 = &_swiftEmptyArrayStorage;
LABEL_33:
  os_unfair_lock_unlock(v66 + 4);
  return v67;
}

void sub_10000AFC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  v5 = sub_1000089AC(&qword_100085658, &qword_1000690F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v41 - v15;
  v54 = type metadata accessor for RemoteHandler();
  v16 = *(v54 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v54);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + 16);
  os_unfair_lock_lock(v20 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000098DC(v21, qword_100087610);
  v50 = *(v16 + 16);
  v51 = v16 + 16;
  v50(v19, v55, v54);
  v53 = v16;
  v49 = v10[2];
  v49(v52, a1, v9);
  v22 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v48))
  {
    v23 = swift_slowAlloc();
    v46 = v8;
    v24 = v23;
    v43 = swift_slowAlloc();
    v56[0] = v43;
    *v24 = 136315394;
    v42 = v22;
    RemoteHandler.sessionId.getter();
    sub_10000E26C(&qword_100085660);
    v47 = v3;
    v44 = v20;
    v25 = v9;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v45 = a1;
    v29 = v10[1];
    v29(v14, v25);
    v30 = v19;
    v31 = v54;
    (*(v53 + 8))(v30, v54);
    v32 = sub_100008A0C(v26, v28, v56);

    *(v24 + 4) = v32;
    *(v24 + 12) = 2080;
    v33 = v52;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v29(v33, v25);
    a1 = v45;
    v37 = sub_100008A0C(v34, v36, v56);

    *(v24 + 14) = v37;
    v38 = v42;
    _os_log_impl(&_mh_execute_header, v42, v48, "Registering connection %s for publisher %s", v24, 0x16u);
    swift_arrayDestroy();

    v8 = v46;

    v39 = v25;
    v20 = v44;
  }

  else
  {

    (v10[1])(v52, v9);
    v40 = v19;
    v31 = v54;
    (*(v53 + 8))(v40, v54);
    v39 = v9;
  }

  v49(v14, a1, v39);
  v50(v8, v55, v31);
  (*(v53 + 56))(v8, 0, 1, v31);
  swift_beginAccess();
  sub_100028BBC(v8, v14);
  swift_endAccess();
  os_unfair_lock_unlock(v20 + 4);
}

uint64_t sub_10000B4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100010F08(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100013998();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for RemoteHandler();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_10004B168(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for RemoteHandler();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

void sub_10000B660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  v5 = sub_1000089AC(&qword_100085658, &qword_1000690F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v41 - v15;
  v54 = type metadata accessor for RemoteHandler();
  v16 = *(v54 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v54);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + 16);
  os_unfair_lock_lock(v20 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000098DC(v21, qword_100087610);
  v50 = *(v16 + 16);
  v51 = v16 + 16;
  v50(v19, v55, v54);
  v53 = v16;
  v49 = v10[2];
  v49(v52, a1, v9);
  v22 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v48))
  {
    v23 = swift_slowAlloc();
    v46 = v8;
    v24 = v23;
    v43 = swift_slowAlloc();
    v56[0] = v43;
    *v24 = 136315394;
    v42 = v22;
    RemoteHandler.sessionId.getter();
    sub_10000E26C(&qword_100085660);
    v47 = v3;
    v44 = v20;
    v25 = v9;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v45 = a1;
    v29 = v10[1];
    v29(v14, v25);
    v30 = v19;
    v31 = v54;
    (*(v53 + 8))(v30, v54);
    v32 = sub_100008A0C(v26, v28, v56);

    *(v24 + 4) = v32;
    *(v24 + 12) = 2080;
    v33 = v52;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v29(v33, v25);
    a1 = v45;
    v37 = sub_100008A0C(v34, v36, v56);

    *(v24 + 14) = v37;
    v38 = v42;
    _os_log_impl(&_mh_execute_header, v42, v48, "Registering connection %s for subscriber %s", v24, 0x16u);
    swift_arrayDestroy();

    v8 = v46;

    v39 = v25;
    v20 = v44;
  }

  else
  {

    (v10[1])(v52, v9);
    v40 = v19;
    v31 = v54;
    (*(v53 + 8))(v40, v54);
    v39 = v9;
  }

  v49(v14, a1, v39);
  v50(v8, v55, v31);
  (*(v53 + 56))(v8, 0, 1, v31);
  swift_beginAccess();
  sub_100028BBC(v8, v14);
  swift_endAccess();
  os_unfair_lock_unlock(v20 + 4);
}

uint64_t sub_10000BB60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v53 = a2;
  v6 = type metadata accessor for UUID();
  v54 = *(v6 - 8);
  v7 = v54[8];
  v8 = __chkstk_darwin(v6);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v49 = &v45 - v11;
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v50 = v3;
  v48 = *(v3 + 16);
  os_unfair_lock_lock(v48 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000098DC(v14, qword_100087610);
  v51 = v54[2];
  v51(v13, a1, v6);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v47 = a1;
    v18 = v17;
    v46 = swift_slowAlloc();
    v56[0] = v46;
    *v18 = 136315394;
    sub_10000E26C(&qword_100085660);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = a3;
    v22 = v21;
    v23 = v54[1];
    v23(v13, v6);
    v24 = sub_100008A0C(v19, v22, v56);
    a3 = v20;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v25 = v53;
    *(v18 + 14) = sub_100008A0C(v53, a3, v56);
    _os_log_impl(&_mh_execute_header, v15, v16, "Adding publisher %s to topic %s", v18, 0x16u);
    swift_arrayDestroy();

    a1 = v47;

    v26 = v23;
  }

  else
  {

    v26 = v54[1];
    v26(v13, v6);
    v25 = v53;
  }

  v27 = v52;
  v51(v52, a1, v6);
  v28 = v50;
  swift_beginAccess();
  v29 = *(v28 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(v28 + 24);
  v31 = v55;
  *(v28 + 24) = 0x8000000000000000;
  v32 = sub_100010DF4(v25, a3);
  v34 = v31[2];
  v35 = (v33 & 1) == 0;
  v36 = __OFADD__(v34, v35);
  v37 = v34 + v35;
  if (v36)
  {
    __break(1u);
LABEL_15:
    v44 = v32;
    sub_100013CEC();
    v32 = v44;
    v31 = v55;
    goto LABEL_11;
  }

  LOBYTE(a1) = v33;
  if (v31[3] < v37)
  {
    sub_10001278C(v37, isUniquelyReferenced_nonNull_native);
    v31 = v55;
    v32 = sub_100010DF4(v25, a3);
    if ((a1 & 1) == (v38 & 1))
    {
      goto LABEL_11;
    }

    v32 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v40 = v48;
  v39 = v49;
  *(v28 + 24) = v31;
  if ((a1 & 1) == 0)
  {
    v41 = v32;
    sub_1000157D8(v32, v25, a3, &_swiftEmptySetSingleton, v31);

    v32 = v41;
  }

  v42 = v31[7] + 8 * v32;
  LOBYTE(v42) = sub_10004AA68(v39, v27);
  swift_endAccess();
  v26(v39, v6);
  os_unfair_lock_unlock(v40 + 4);
  return v42 & 1;
}

uint64_t sub_10000BFE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v53 = a2;
  v6 = type metadata accessor for UUID();
  v54 = *(v6 - 8);
  v7 = v54[8];
  v8 = __chkstk_darwin(v6);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v49 = &v45 - v11;
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v50 = v3;
  v48 = *(v3 + 16);
  os_unfair_lock_lock(v48 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000098DC(v14, qword_100087610);
  v51 = v54[2];
  v51(v13, a1, v6);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v47 = a1;
    v18 = v17;
    v46 = swift_slowAlloc();
    v56[0] = v46;
    *v18 = 136315394;
    sub_10000E26C(&qword_100085660);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = a3;
    v22 = v21;
    v23 = v54[1];
    v23(v13, v6);
    v24 = sub_100008A0C(v19, v22, v56);
    a3 = v20;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v25 = v53;
    *(v18 + 14) = sub_100008A0C(v53, a3, v56);
    _os_log_impl(&_mh_execute_header, v15, v16, "Adding subscriber %s to topic %s", v18, 0x16u);
    swift_arrayDestroy();

    a1 = v47;

    v26 = v23;
  }

  else
  {

    v26 = v54[1];
    v26(v13, v6);
    v25 = v53;
  }

  v27 = v52;
  v51(v52, a1, v6);
  v28 = v50;
  swift_beginAccess();
  v29 = *(v28 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(v28 + 32);
  v31 = v55;
  *(v28 + 32) = 0x8000000000000000;
  v32 = sub_100010DF4(v25, a3);
  v34 = v31[2];
  v35 = (v33 & 1) == 0;
  v36 = __OFADD__(v34, v35);
  v37 = v34 + v35;
  if (v36)
  {
    __break(1u);
LABEL_15:
    v44 = v32;
    sub_100013CEC();
    v32 = v44;
    v31 = v55;
    goto LABEL_11;
  }

  LOBYTE(a1) = v33;
  if (v31[3] < v37)
  {
    sub_10001278C(v37, isUniquelyReferenced_nonNull_native);
    v31 = v55;
    v32 = sub_100010DF4(v25, a3);
    if ((a1 & 1) == (v38 & 1))
    {
      goto LABEL_11;
    }

    v32 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v40 = v48;
  v39 = v49;
  *(v28 + 32) = v31;
  if ((a1 & 1) == 0)
  {
    v41 = v32;
    sub_1000157D8(v32, v25, a3, &_swiftEmptySetSingleton, v31);

    v32 = v41;
  }

  v42 = v31[7] + 8 * v32;
  LOBYTE(v42) = sub_10004AA68(v39, v27);
  swift_endAccess();
  v26(v39, v6);
  os_unfair_lock_unlock(v40 + 4);
  return v42 & 1;
}

BOOL sub_10000C460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = a2;
  v7 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v3 + 16);
  os_unfair_lock_lock(v52 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000098DC(v16, qword_100087610);
  (*(v12 + 16))(v15, a1, v11);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v53 = v12;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v51 = v10;
    v21 = v20;
    v50 = swift_slowAlloc();
    v56[0] = v50;
    *v21 = 136315394;
    sub_10000E26C(&qword_100085660);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v12;
    v24 = a3;
    v25 = a1;
    v27 = v26;
    (*(v23 + 8))(v15, v11);
    v28 = sub_100008A0C(v22, v27, v56);
    a1 = v25;
    a3 = v24;

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v29 = v54;
    *(v21 + 14) = sub_100008A0C(v54, v24, v56);
    _os_log_impl(&_mh_execute_header, v17, v18, "Removing subscriber %s from topic %s", v21, 0x16u);
    swift_arrayDestroy();

    v10 = v51;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
    v29 = v54;
  }

  swift_beginAccess();
  v30 = *(v4 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(v4 + 32);
  v32 = v55;
  *(v4 + 32) = 0x8000000000000000;
  v33 = sub_100010DF4(v29, a3);
  v35 = v32[2];
  v36 = (v34 & 1) == 0;
  v37 = __OFADD__(v35, v36);
  v38 = v35 + v36;
  if (v37)
  {
    __break(1u);
LABEL_15:
    v45 = v11;
    v46 = a3;
    v47 = a1;
    v48 = v33;
    sub_100013CEC();
    v33 = v48;
    a1 = v47;
    a3 = v46;
    v11 = v45;
    v32 = v55;
    goto LABEL_11;
  }

  v18 = v34;
  if (v32[3] < v38)
  {
    sub_10001278C(v38, isUniquelyReferenced_nonNull_native);
    v32 = v55;
    v33 = sub_100010DF4(v29, a3);
    if ((v18 & 1) == (v39 & 1))
    {
      goto LABEL_11;
    }

    v33 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v40 = v53;
  *(v4 + 32) = v32;
  if ((v18 & 1) == 0)
  {
    v41 = v33;
    sub_1000157D8(v33, v29, a3, &_swiftEmptySetSingleton, v32);

    v33 = v41;
  }

  v42 = v32[7] + 8 * v33;
  sub_10004DF7C(a1, v10);
  swift_endAccess();
  v43 = (*(v40 + 48))(v10, 1, v11) != 1;
  sub_100009C94(v10, &qword_100085FA0, &qword_1000690F8);
  os_unfair_lock_unlock(v52 + 4);
  return v43;
}

void sub_10000C900(uint64_t a1)
{
  v2 = v1;
  v123 = a1;
  v3 = sub_1000089AC(&qword_100085658, &qword_1000690F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v109 = &v101[-v5];
  v6 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v106 = &v101[-v8];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v107 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v105 = &v101[-v15];
  __chkstk_darwin(v14);
  v118 = &v101[-v16];
  v108 = *(v2 + 16);
  os_unfair_lock_lock(v108 + 4);
  v126 = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v17 = *(v2 + 24);
  v18 = *(v17 + 64);
  v112 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v111 = (v19 + 63) >> 6;
  v120 = (v10 + 16);
  v121 = (v10 + 8);
  v110 = v10;
  v103 = (v10 + 56);

  v22 = 0;
  *&v23 = 136315394;
  v104 = v23;
  v122 = v9;
  v117 = v2;
  v114 = v17;
  while (v21)
  {
LABEL_11:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v22 << 6);
    v27 = *(*(v17 + 56) + 8 * v26);
    if (*(v27 + 16))
    {
      v116 = v21;
      v28 = (*(v17 + 48) + 16 * v26);
      v29 = v28[1];
      v113 = *v28;
      v30 = *(v27 + 40);
      sub_10000E26C(&qword_100085F70);
      v115 = v29;

      v31 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v27 + 32);
      v33 = v31 & ~v32;
      if ((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        v34 = ~v32;
        v35 = *(v110 + 72);
        *&v119 = *(v110 + 16);
        while (1)
        {
          v36 = v118;
          v37 = v122;
          (v119)(v118, *(v27 + 48) + v35 * v33, v122);
          sub_10000E26C(&qword_100085F80);
          v38 = dispatch thunk of static Equatable.== infix(_:_:)();
          v39 = *v121;
          (*v121)(v36, v37);
          if (v38)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_1000098DC(v40, qword_100087610);
        v41 = v105;
        v42 = v122;
        (v119)(v105, v123, v122);
        v43 = v115;

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();

        v46 = os_log_type_enabled(v44, v45);
        v2 = v117;
        v47 = v113;
        if (v46)
        {
          v48 = swift_slowAlloc();
          *&v119 = swift_slowAlloc();
          v124 = v119;
          *v48 = v104;
          sub_10000E26C(&qword_100085660);
          v102 = v45;
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = v41;
          v52 = v51;
          v39(v50, v42);
          v53 = sub_100008A0C(v49, v52, &v124);

          *(v48 + 4) = v53;
          *(v48 + 12) = 2080;
          *(v48 + 14) = sub_100008A0C(v47, v43, &v124);
          _os_log_impl(&_mh_execute_header, v44, v102, "Removing publisher %s from topic %s", v48, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v39(v41, v42);
        }

        swift_beginAccess();
        v54 = sub_10000FD98(&v124, v47, v43);
        if (*v55)
        {
          v56 = v106;
          sub_10004DF7C(v123, v106);
          (v54)(&v124, 0);
          v57 = v56;
          swift_endAccess();
        }

        else
        {
          (v54)(&v124, 0);
          swift_endAccess();
          v57 = v106;
          (*v103)(v106, 1, 1, v42);
        }

        v17 = v114;
        v21 = v116;
        sub_100009C94(v57, &qword_100085FA0, &qword_1000690F8);
        swift_beginAccess();
        v58 = *(v2 + 24);
        if (*(v58 + 16) && (v59 = sub_100010DF4(v47, v43), (v60 & 1) != 0))
        {
          v61 = *(*(v58 + 56) + 8 * v59);
          swift_endAccess();
          if (*(v61 + 16))
          {
            goto LABEL_30;
          }

          sub_10004A918(&v124, v47, v43);
        }

        else
        {
          swift_endAccess();
LABEL_30:
        }
      }

      else
      {
LABEL_5:

        v21 = v116;
        v2 = v117;
        v17 = v114;
      }
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v24 >= v111)
    {
      break;
    }

    v21 = *(v112 + 8 * v24);
    ++v22;
    if (v21)
    {
      v22 = v24;
      goto LABEL_11;
    }
  }

  v63 = 0;
  v64 = v126;
  v65 = v126 + 56;
  v66 = 1 << v126[32];
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v126 + 7);
  v69 = (v66 + 63) >> 6;
  *&v62 = 136315138;
  v119 = v62;
  v118 = v126;
  while (v68)
  {
LABEL_41:
    v73 = (*(v64 + 6) + ((v63 << 10) | (16 * __clz(__rbit64(v68)))));
    v74 = *v73;
    v75 = v73[1];
    v76 = qword_1000850B8;

    if (v76 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_1000098DC(v77, qword_100087610);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v124 = v81;
      *v80 = v119;
      *(v80 + 4) = sub_100008A0C(v74, v75, &v124);
      _os_log_impl(&_mh_execute_header, v78, v79, "Removing topic: %s", v80, 0xCu);
      sub_100009914(v81);

      v2 = v117;
      v64 = v118;
    }

    swift_beginAccess();
    v82 = *(v2 + 24);
    v83 = sub_100010DF4(v74, v75);
    if (v84)
    {
      v85 = v83;
      v86 = *(v2 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = *(v2 + 24);
      v125 = v88;
      *(v2 + 24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100013CEC();
        v88 = v125;
      }

      v70 = *(*(v88 + 48) + 16 * v85 + 8);

      v71 = *(*(v88 + 56) + 8 * v85);

      sub_100065974(v85, v88);
      *(v2 + 24) = v88;
    }

    v68 &= v68 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v72 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v72 >= v69)
    {

      if (qword_1000850B8 != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

    v68 = *&v65[8 * v72];
    ++v63;
    if (v68)
    {
      v63 = v72;
      goto LABEL_41;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  swift_once();
LABEL_49:
  v89 = type metadata accessor for Logger();
  sub_1000098DC(v89, qword_100087610);
  v90 = v107;
  v91 = v122;
  (*v120)(v107, v123, v122);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v124 = v95;
    *v94 = v119;
    sub_10000E26C(&qword_100085660);
    v96 = dispatch thunk of CustomStringConvertible.description.getter();
    v98 = v97;
    (*v121)(v90, v91);
    v99 = sub_100008A0C(v96, v98, &v124);

    *(v94 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v92, v93, "Removing publisher %s from connections list", v94, 0xCu);
    sub_100009914(v95);
  }

  else
  {

    (*v121)(v90, v91);
  }

  swift_beginAccess();
  v100 = v109;
  sub_10000B4C0(v123, v109);
  swift_endAccess();
  sub_100009C94(v100, &qword_100085658, &qword_1000690F0);
  os_unfair_lock_unlock(v108 + 4);
}

void sub_10000D508(uint64_t a1)
{
  v2 = v1;
  v123 = a1;
  v3 = sub_1000089AC(&qword_100085658, &qword_1000690F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v109 = &v101[-v5];
  v6 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v106 = &v101[-v8];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v107 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v105 = &v101[-v15];
  __chkstk_darwin(v14);
  v118 = &v101[-v16];
  v108 = *(v2 + 16);
  os_unfair_lock_lock(v108 + 4);
  v126 = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v17 = *(v2 + 32);
  v18 = *(v17 + 64);
  v112 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v111 = (v19 + 63) >> 6;
  v120 = (v10 + 16);
  v121 = (v10 + 8);
  v110 = v10;
  v103 = (v10 + 56);

  v22 = 0;
  *&v23 = 136315394;
  v104 = v23;
  v122 = v9;
  v117 = v2;
  v114 = v17;
  while (v21)
  {
LABEL_11:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v22 << 6);
    v27 = *(*(v17 + 56) + 8 * v26);
    if (*(v27 + 16))
    {
      v116 = v21;
      v28 = (*(v17 + 48) + 16 * v26);
      v29 = v28[1];
      v113 = *v28;
      v30 = *(v27 + 40);
      sub_10000E26C(&qword_100085F70);
      v115 = v29;

      v31 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v27 + 32);
      v33 = v31 & ~v32;
      if ((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        v34 = ~v32;
        v35 = *(v110 + 72);
        *&v119 = *(v110 + 16);
        while (1)
        {
          v36 = v118;
          v37 = v122;
          (v119)(v118, *(v27 + 48) + v35 * v33, v122);
          sub_10000E26C(&qword_100085F80);
          v38 = dispatch thunk of static Equatable.== infix(_:_:)();
          v39 = *v121;
          (*v121)(v36, v37);
          if (v38)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_1000098DC(v40, qword_100087610);
        v41 = v105;
        v42 = v122;
        (v119)(v105, v123, v122);
        v43 = v115;

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();

        v46 = os_log_type_enabled(v44, v45);
        v2 = v117;
        v47 = v113;
        if (v46)
        {
          v48 = swift_slowAlloc();
          *&v119 = swift_slowAlloc();
          v124 = v119;
          *v48 = v104;
          sub_10000E26C(&qword_100085660);
          v102 = v45;
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = v41;
          v52 = v51;
          v39(v50, v42);
          v53 = sub_100008A0C(v49, v52, &v124);

          *(v48 + 4) = v53;
          *(v48 + 12) = 2080;
          *(v48 + 14) = sub_100008A0C(v47, v43, &v124);
          _os_log_impl(&_mh_execute_header, v44, v102, "Removing subscriber %s from topic %s", v48, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v39(v41, v42);
        }

        swift_beginAccess();
        v54 = sub_10000FD98(&v124, v47, v43);
        if (*v55)
        {
          v56 = v106;
          sub_10004DF7C(v123, v106);
          (v54)(&v124, 0);
          v57 = v56;
          swift_endAccess();
        }

        else
        {
          (v54)(&v124, 0);
          swift_endAccess();
          v57 = v106;
          (*v103)(v106, 1, 1, v42);
        }

        v17 = v114;
        v21 = v116;
        sub_100009C94(v57, &qword_100085FA0, &qword_1000690F8);
        swift_beginAccess();
        v58 = *(v2 + 32);
        if (*(v58 + 16) && (v59 = sub_100010DF4(v47, v43), (v60 & 1) != 0))
        {
          v61 = *(*(v58 + 56) + 8 * v59);
          swift_endAccess();
          if (*(v61 + 16))
          {
            goto LABEL_30;
          }

          sub_10004A918(&v124, v47, v43);
        }

        else
        {
          swift_endAccess();
LABEL_30:
        }
      }

      else
      {
LABEL_5:

        v21 = v116;
        v2 = v117;
        v17 = v114;
      }
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v24 >= v111)
    {
      break;
    }

    v21 = *(v112 + 8 * v24);
    ++v22;
    if (v21)
    {
      v22 = v24;
      goto LABEL_11;
    }
  }

  v63 = 0;
  v64 = v126;
  v65 = v126 + 56;
  v66 = 1 << v126[32];
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v126 + 7);
  v69 = (v66 + 63) >> 6;
  *&v62 = 136315138;
  v119 = v62;
  v118 = v126;
  while (v68)
  {
LABEL_41:
    v73 = (*(v64 + 6) + ((v63 << 10) | (16 * __clz(__rbit64(v68)))));
    v74 = *v73;
    v75 = v73[1];
    v76 = qword_1000850B8;

    if (v76 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_1000098DC(v77, qword_100087610);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v124 = v81;
      *v80 = v119;
      *(v80 + 4) = sub_100008A0C(v74, v75, &v124);
      _os_log_impl(&_mh_execute_header, v78, v79, "Removing topic: %s", v80, 0xCu);
      sub_100009914(v81);

      v2 = v117;
      v64 = v118;
    }

    swift_beginAccess();
    v82 = *(v2 + 32);
    v83 = sub_100010DF4(v74, v75);
    if (v84)
    {
      v85 = v83;
      v86 = *(v2 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = *(v2 + 32);
      v125 = v88;
      *(v2 + 32) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100013CEC();
        v88 = v125;
      }

      v70 = *(*(v88 + 48) + 16 * v85 + 8);

      v71 = *(*(v88 + 56) + 8 * v85);

      sub_100065974(v85, v88);
      *(v2 + 32) = v88;
    }

    v68 &= v68 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v72 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v72 >= v69)
    {

      if (qword_1000850B8 != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

    v68 = *&v65[8 * v72];
    ++v63;
    if (v68)
    {
      v63 = v72;
      goto LABEL_41;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  swift_once();
LABEL_49:
  v89 = type metadata accessor for Logger();
  sub_1000098DC(v89, qword_100087610);
  v90 = v107;
  v91 = v122;
  (*v120)(v107, v123, v122);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v124 = v95;
    *v94 = v119;
    sub_10000E26C(&qword_100085660);
    v96 = dispatch thunk of CustomStringConvertible.description.getter();
    v98 = v97;
    (*v121)(v90, v91);
    v99 = sub_100008A0C(v96, v98, &v124);

    *(v94 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v92, v93, "Removing subscriber %s from connections list", v94, 0xCu);
    sub_100009914(v95);
  }

  else
  {

    (*v121)(v90, v91);
  }

  swift_beginAccess();
  v100 = v109;
  sub_10000B4C0(v123, v109);
  swift_endAccess();
  sub_100009C94(v100, &qword_100085658, &qword_1000690F0);
  os_unfair_lock_unlock(v108 + 4);
}

uint64_t sub_10000E110()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10000E18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085A00, &unk_100069670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E26C(unint64_t *a1)
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

uint64_t sub_10000E2B0(uint64_t a1)
{
  v62 = type metadata accessor for URL();
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v62);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000089AC(&qword_100085728, &qword_100069140);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v48 - v7;
  v63 = type metadata accessor for ExtensionRecord();
  v9 = *(v63 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v63);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v13;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000FCE4();
    sub_10000FD30(&qword_100085720, sub_10000FCE4);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v69;
    v15 = v70;
    v17 = v71;
    v16 = v72;
    v18 = v73;
  }

  else
  {
    v19 = -1 << *(a1 + 32);
    v15 = a1 + 56;
    v17 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(a1 + 56);

    v16 = 0;
  }

  v53 = v17;
  v22 = (v17 + 64) >> 6;
  v58 = (v9 + 56);
  v59 = (v2 + 8);
  v57 = (v9 + 48);
  v50 = v9;
  v51 = (v9 + 32);
  v54 = &_swiftEmptyArrayStorage;
  v55 = v15;
  v60 = v22;
  v56 = a1;
LABEL_8:
  v23 = v16;
  if (a1 < 0)
  {
    do
    {
      v28 = __CocoaSet.Iterator.next()();
      if (!v28)
      {
        goto LABEL_25;
      }

      v68 = v28;
      sub_10000FCE4();
      swift_dynamicCast();
      v27 = v74;
      v16 = v23;
      v26 = v18;
      if (!v74)
      {
        goto LABEL_25;
      }

LABEL_17:
      v67 = v26;
      v29 = v27;
      v30 = [v29 localizedName];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v32;
      v66 = v31;

      v33 = [v29 bundleIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v34;

      v35 = [v29 url];
      v36 = v61;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.absoluteString.getter();
      (*v59)(v36, v62);
      v37 = v8;
      v38 = [v29 extensionPointIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = v37;
      ExtensionRecord.init(name:bundleIdentifier:url:extensionPointIdentifier:)();

      v39 = v63;
      (*v58)(v37, 0, 1, v63);

      if ((*v57)(v37, 1, v39) != 1)
      {
        v40 = *v51;
        v41 = v49;
        v42 = v63;
        (*v51)(v49, v8, v63);
        v40(v52, v41, v42);
        v43 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1000246F4(0, v43[2] + 1, 1, v43);
        }

        v15 = v55;
        a1 = v56;
        v44 = v50;
        v46 = v43[2];
        v45 = v43[3];
        if (v46 >= v45 >> 1)
        {
          v43 = sub_1000246F4(v45 > 1, v46 + 1, 1, v43);
        }

        v43[2] = v46 + 1;
        v47 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v54 = v43;
        result = (v40)(v43 + v47 + *(v44 + 72) * v46, v52, v63);
        v22 = v60;
        v18 = v67;
        goto LABEL_8;
      }

      result = sub_100009C94(v37, &qword_100085728, &qword_100069140);
      v23 = v16;
      v18 = v67;
      v15 = v55;
      a1 = v56;
      v22 = v60;
    }

    while (v56 < 0);
  }

  v24 = v23;
  v25 = v18;
  v16 = v23;
  if (v18)
  {
LABEL_13:
    v26 = (v25 - 1) & v25;
    v27 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v25)))));
    if (v27)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_100009A28();
    return v54;
  }

  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v22)
    {
      goto LABEL_25;
    }

    v25 = *(v15 + 8 * v16);
    ++v24;
    if (v25)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_10000E8DC(uint64_t a1)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10004EE3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v1[3] = v3;
  sub_1000089AC(&qword_100085A40, &unk_100068F60);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v1[2] = v4;
  v1[4] = a1;
  return v1;
}

void sub_10000E968()
{
  v1 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_31;
  }

LABEL_2:
  v2 = &_swiftEmptySetSingleton;
LABEL_3:
  v32 = v2;
  v3 = v0[4];
  v27 = v3[2];
  if (v27)
  {
    v4 = 0;
    v25 = v3 + 4;
    v26 = objc_opt_self();
    v24 = v3;
    while (1)
    {
      if (v4 >= v3[2])
      {
        goto LABEL_30;
      }

      v7 = &v25[2 * v4];
      v9 = *v7;
      v8 = v7[1];
      v10 = objc_allocWithZone(_EXQuery);

      v30 = v8;
      v11 = String._bridgeToObjectiveC()();
      v6 = [v10 initWithExtensionPointIdentifier:v11];

      v12 = [v26 executeQuery:v6];
      sub_10000FCE4();
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = v1;
      if (v13 >> 62)
      {
        break;
      }

      v0 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v0)
      {
        goto LABEL_10;
      }

LABEL_26:
      v5 = v1;
LABEL_6:
      ++v4;

      v0 = &v32;
      sub_10004FDF0(v5);

      if (v4 == v27)
      {
        return;
      }
    }

    v0 = _CocoaArrayWrapper.endIndex.getter();
    if (!v0)
    {
      goto LABEL_26;
    }

LABEL_10:
    v28 = v6;
    v29 = v4;
    v14 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v15 = *(v13 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_2;
        }

        sub_10004EE3C(&_swiftEmptyArrayStorage);
        goto LABEL_3;
      }

      v18 = v0;
      v19 = [v15 extensionPointIdentifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v20 == v9 && v22 == v30)
      {
      }

      else
      {
        v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v1 & 1) == 0)
        {

          goto LABEL_13;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v1 = *(v31 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_13:
      ++v14;
      v0 = v18;
      if (v17 == v18)
      {
        v5 = v31;
        v1 = &_swiftEmptyArrayStorage;
        v3 = v24;
        v6 = v28;
        v4 = v29;
        goto LABEL_6;
      }
    }
  }
}

void sub_10000EC54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v6 = type metadata accessor for ExtensionRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  os_unfair_lock_lock(v11 + 4);
  v12 = *(v3 + 24);

  sub_1000297C8(v13);
  v15 = v14;

  v30[0] = a1;
  v30[1] = a2;
  v27 = a2;
  v29 = v30;
  LOBYTE(v12) = sub_100029F60(sub_10000FD78, v28, v15);

  os_unfair_lock_unlock(v11 + 4);
  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

  os_unfair_lock_lock(v11 + 4);
  v16 = *(v3 + 24);

  v18 = sub_10000E2B0(v17);

  os_unfair_lock_unlock(v11 + 4);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_9:

LABEL_10:
    (*(v7 + 56))(v25, 1, 1, v6);
    return;
  }

  v20 = 0;
  v26 = v7 + 16;
  while (v20 < *(v18 + 16))
  {
    (*(v7 + 16))(v10, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v6);
    if (ExtensionRecord.bundleIdentifier.getter() == a1 && v21 == v27)
    {

LABEL_12:

      v23 = v25;
      (*(v7 + 32))(v25, v10, v6);
      (*(v7 + 56))(v23, 0, 1, v6);
      return;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_12;
    }

    ++v20;
    (*(v7 + 8))(v10, v6);
    if (v19 == v20)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10000EEF4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v108 = a4;
  v120 = a1;
  v121 = a2;
  v118 = a5;
  v7 = sub_1000089AC(&qword_100085C80, &unk_100069450);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v95 - v9;
  v98 = type metadata accessor for UUID();
  v97 = *(v98 - 8);
  v11 = *(v97 + 64);
  __chkstk_darwin(v98);
  v96 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppExtensionProcess._InstanceIdentifier();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v100 = &v95 - v20;
  __chkstk_darwin(v19);
  v22 = &v95 - v21;
  v23 = type metadata accessor for AppExtensionProcess.Configuration();
  v110 = *(v23 - 8);
  v111 = v23;
  v24 = *(v110 + 64);
  v25 = __chkstk_darwin(v23);
  v106 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v95 - v27;
  v29 = type metadata accessor for AppExtensionIdentity();
  v113 = *(v29 - 8);
  v114 = v29;
  v30 = *(v113 + 64);
  v31 = __chkstk_darwin(v29);
  v105 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v112 = &v95 - v33;
  v117 = *(v5 + 16);
  os_unfair_lock_lock(v117 + 4);
  v34 = *(v5 + 24);
  v109 = v28;
  v104 = v13;
  v102 = v14;
  v99 = a3;
  v116 = v34;
  if ((v34 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000FCE4();
    sub_10000FD30(&qword_100085720, sub_10000FCE4);
    Set.Iterator.init(_cocoa:)();
    v36 = v123[1];
    v35 = v123[2];
    v38 = v123[3];
    v37 = v123[4];
    v39 = v123[5];
  }

  else
  {
    v40 = -1 << *(v34 + 32);
    v36 = v34;
    v35 = v34 + 56;
    v38 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v39 = (v42 & *(v34 + 56));
    swift_bridgeObjectRetain_n();
    v37 = 0;
  }

  v103 = v22;
  v107 = v10;
  v115 = v38;
  v101 = v18;
  v43 = v37;
  if (v36 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v44 = v43;
  v45 = v39;
  v46 = v43;
  if (!v39)
  {
    while (1)
    {
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v46 >= ((v38 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v45 = *(v35 + 8 * v46);
      ++v44;
      if (v45)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_12:
  v47 = (v45 - 1) & v45;
  v48 = *(*(v36 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v45)))));
  if (!v48)
  {
LABEL_23:
    sub_100009A28();

    if (qword_1000850B8 == -1)
    {
LABEL_24:
      v57 = type metadata accessor for Logger();
      sub_1000098DC(v57, qword_100087610);
      v58 = v121;

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v123[0] = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_100008A0C(v120, v58, v123);
        _os_log_impl(&_mh_execute_header, v59, v60, "No extension identifier available in registry: %s", v61, 0xCu);
        sub_100009914(v62);
      }

      v63 = type metadata accessor for AppExtensionProcess();
      (*(*(v63 - 8) + 56))(v118, 1, 1, v63);
      goto LABEL_27;
    }

LABEL_38:
    swift_once();
    goto LABEL_24;
  }

  while (1)
  {
    v119 = v39;
    v50 = v48;
    v51 = [v48 bundleIdentifier];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    if (v52 == v120 && v54 == v121)
    {
      break;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v56)
    {
      goto LABEL_29;
    }

    v43 = v46;
    v39 = v47;
    if ((v36 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v49 = __CocoaSet.Iterator.next()();
    if (v49)
    {
      v122 = v49;
      sub_10000FCE4();
      swift_dynamicCast();
      v48 = v123[0];
      v46 = v43;
      v47 = v39;
      if (v123[0])
      {
        continue;
      }
    }

    goto LABEL_23;
  }

LABEL_29:
  sub_100009A28();

  v64 = v50;
  v65 = v112;
  v119 = v64;
  AppExtensionIdentity.init(_:)();
  (*(v113 + 16))(v105, v65, v114);
  v66 = v109;
  AppExtensionProcess.Configuration.init(appExtension:onInterruption:)();
  v68 = v110;
  v67 = v111;
  if (v108)
  {
    v69 = v103;
    AppExtensionProcess._InstanceIdentifier.init()();
    v70 = v102;
    v71 = *(v102 + 16);
    v72 = v104;
    v71(v100, v69, v104);
    AppExtensionProcess.Configuration._instanceIdentifier.setter();
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_1000098DC(v73, qword_100087610);
    v74 = v101;
    v71(v101, v69, v72);

    v75 = v121;

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = v70;
      v79 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v123[0] = v116;
      *v79 = 136315650;
      v80 = v96;
      LODWORD(v115) = v77;
      AppExtensionProcess._InstanceIdentifier.id.getter();
      sub_10000FD30(&qword_100085660, &type metadata accessor for UUID);
      v81 = v98;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v66;
      v85 = v84;
      (*(v97 + 8))(v80, v81);
      v86 = *(v78 + 8);
      v87 = v104;
      v86(v74, v104);
      v88 = sub_100008A0C(v82, v85, v123);
      v66 = v83;

      *(v79 + 4) = v88;
      *(v79 + 12) = 2080;
      *(v79 + 14) = sub_100008A0C(v99, v108, v123);
      *(v79 + 22) = 2080;
      *(v79 + 24) = sub_100008A0C(v120, v75, v123);
      _os_log_impl(&_mh_execute_header, v76, v115, "Requesting instanceIdentifier %s for taskName %s and bundleId %s", v79, 0x20u);
      swift_arrayDestroy();

      v86(v103, v87);
    }

    else
    {

      v89 = *(v70 + 8);
      v89(v74, v72);
      v89(v69, v72);
    }

    v68 = v110;
    v67 = v111;
  }

  (*(v68 + 16))(v106, v66, v67);
  v90 = v107;
  AppExtensionProcess.init(configuration:)();

  (*(v68 + 8))(v66, v67);
  (*(v113 + 8))(v112, v114);
  v91 = type metadata accessor for AppExtensionProcess();
  v92 = *(v91 - 8);
  v93 = *(v92 + 56);
  v93(v90, 0, 1, v91);
  v94 = v118;
  (*(v92 + 32))(v118, v90, v91);
  v93(v94, 0, 1, v91);
LABEL_27:
  os_unfair_lock_unlock(v117 + 4);
}

uint64_t sub_10000FC78()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_10000FCE4()
{
  result = qword_100085718;
  if (!qword_100085718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100085718);
  }

  return result;
}

uint64_t sub_10000FD30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_10000FD98(uint64_t **a1, uint64_t a2, uint64_t a3))()
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
  v6[4] = sub_100014138(v6, a2, a3);
  return sub_10000FE20;
}

uint64_t (*sub_10000FE24(uint64_t **a1, uint64_t a2, uint64_t a3))()
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
  v6[4] = sub_1000141E8(v6, a2, a3);
  return sub_1000157DC;
}

void sub_10000FEAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_10000FEF8(uint64_t *a1))(void *a1)
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
  v4 = type metadata accessor for DatastoreKey();
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
  v3[7] = sub_1000142F4(v3, v8);
  return sub_100010010;
}

void sub_100010010(void *a1)
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

uint64_t sub_100010088(Swift::Int a1, Swift::Int a2, uint64_t a3)
{
  v4 = v3;
  v36 = *(v4 + 16);
  os_unfair_lock_lock(v36 + 4);
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v39 = a3;

  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (v9)
  {
LABEL_10:
    v17 = (*(v39 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
    v19 = *v17;
    v18 = v17[1];
    swift_beginAccess();

    sub_100009B20(v11);
    v20 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v4 + 24);
    v22 = v40;
    *(v4 + 24) = 0x8000000000000000;
    v23 = sub_100010DF4(v19, v18);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_23;
    }

    v29 = v24;
    if (v22[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v23;
        sub_100013D00(&qword_1000857E8, &qword_100069178);
        v23 = v34;
        v22 = v40;
        *(v4 + 24) = v40;
        if (v29)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_1000127A0(v28, isUniquelyReferenced_nonNull_native, &qword_1000857E8, &qword_100069178);
      v22 = v40;
      v23 = sub_100010DF4(v19, v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_25;
      }
    }

    *(v4 + 24) = v22;
    if (v29)
    {
      goto LABEL_4;
    }

LABEL_16:
    v22[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v22[6] + 16 * v23);
    *v31 = v19;
    v31[1] = v18;
    *(v22[7] + 8 * v23) = &_swiftEmptySetSingleton;
    v32 = v22[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_24;
    }

    v22[2] = v33;
    v14 = v23;

    v23 = v14;
LABEL_4:
    v9 &= v9 - 1;
    v15 = v22[7] + 8 * v23;

    v12 = sub_10004A918(&v40, a1, a2);
    swift_endAccess();

    v11 = sub_100010364;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v10)
    {

      os_unfair_lock_unlock(v36 + 4);
      sub_100009B20(v11);
      return v12 & 1;
    }

    v9 = *(v6 + 8 * v16);
    ++v13;
    if (v9)
    {
      v13 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100010374(Swift::Int a1, Swift::Int a2, uint64_t a3)
{
  v5 = v3;
  v29 = a1;
  v28 = type metadata accessor for DatastoreKey();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v28);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 16);
  os_unfair_lock_lock(v12 + 4);
  swift_beginAccess();
  v13 = *(v3 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + 32);
  v30 = v15;
  *(v5 + 32) = 0x8000000000000000;
  v17 = sub_100010FDC(a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v16;
  if (v15[3] >= v20)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_10001354C();
    v15 = v30;
    goto LABEL_6;
  }

  sub_100011C28(v20, isUniquelyReferenced_nonNull_native);
  v15 = v30;
  v21 = sub_100010FDC(a3);
  if ((v4 & 1) != (v22 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v21;
LABEL_6:
  v23 = v29;
  *(v5 + 32) = v15;
  if ((v4 & 1) == 0)
  {
    (*(v8 + 16))(v11, a3, v28);
    sub_100012EC4(v17, v11, &_swiftEmptySetSingleton, v15);
  }

  v24 = v15[7] + 8 * v17;

  v25 = sub_10004A918(&v30, v23, a2);
  swift_endAccess();

  os_unfair_lock_unlock(v12 + 4);
  return v25 & 1;
}

void sub_100010580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *(v3 + 16);
  os_unfair_lock_lock(v17 + 4);
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_11:
    v12 = (*(a3 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = *v12;
    v13 = v12[1];
    swift_beginAccess();

    v15 = sub_10000FE24(v19, v14, v13);
    if (*v16)
    {
      sub_10004E224(a1, a2);
      (v15)(v19, 0);
      swift_endAccess();
    }

    else
    {
      (v15)(v19, 0);
      swift_endAccess();
    }

    v8 &= v8 - 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      os_unfair_lock_unlock(v17 + 4);
      return;
    }

    v8 = *(a3 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100010728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DatastoreKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 16);
  os_unfair_lock_lock(v12 + 4);
  (*(v8 + 16))(v11, a3, v7);
  swift_beginAccess();
  v13 = sub_10000FEF8(v16);
  if (*v14)
  {
    sub_10004E224(a1, a2);
    (v13)(v16, 0);
    swift_endAccess();
  }

  else
  {
    (v13)(v16, 0);
    swift_endAccess();
  }

  (*(v8 + 8))(v11, v7);
  os_unfair_lock_unlock(v12 + 4);
}

void *sub_1000108C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v31[-v10];
  v12 = type metadata accessor for DatastoreKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v3 + 16);
  os_unfair_lock_lock(v17 + 4);
  v32 = &_swiftEmptySetSingleton;
  if (a2)
  {
    swift_beginAccess();
    v18 = *(v3 + 24);
    if (*(v18 + 16) && (v19 = sub_100010DF4(a1, a2), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);
    }

    else
    {
      v21 = &_swiftEmptySetSingleton;
    }

    swift_endAccess();
    sub_1000296C4(v21);
  }

  sub_100014C8C(a3, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100014CFC(v11);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    swift_beginAccess();
    v22 = *(v4 + 32);
    if (*(v22 + 16) && (v23 = sub_100010FDC(v16), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v25 = &_swiftEmptySetSingleton;
    }

    swift_endAccess();
    sub_1000296C4(v25);
    (*(v13 + 8))(v16, v12);
  }

  v26 = v32;
  swift_beginAccess();
  v27 = *(v4 + 40);

  v29 = sub_100014D64(v28, v26);

  os_unfair_lock_unlock(v17 + 4);
  return v29;
}

void sub_100010B74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v3 + 40);
  if (*(v8 + 16) && (v9 = sub_100010DF4(a1, a2), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = type metadata accessor for ContinuousClock.Instant();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);
    (*(v14 + 56))(a3, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for ContinuousClock.Instant();
    (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  swift_endAccess();
  os_unfair_lock_unlock(v7 + 4);
}

uint64_t sub_100010CEC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_100010D60(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000110F4(a1, v4);
}

unint64_t sub_100010DF4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000111F8(a1, a2, v6);
}

unint64_t sub_100010E6C(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return sub_1000112B0(a1 & 1, v5);
}

unint64_t sub_100010F08(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100015730(&qword_100085F70, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000113E4(a1, v5, &type metadata accessor for UUID, &qword_100085F80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100010FDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for DatastoreKey();
  sub_100015730(&qword_100085D20, &type metadata accessor for DatastoreKey);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000113E4(a1, v5, &type metadata accessor for DatastoreKey, &qword_1000857F0, &type metadata accessor for DatastoreKey, &protocol conformance descriptor for DatastoreKey);
}

unint64_t sub_1000110B0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100011584(a1, v4);
}

unint64_t sub_1000110F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000111F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000112B0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 7104112;
    }

    else
    {
      v6 = 0x74736F686C6DLL;
    }

    if (a1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 7104112 : 0x74736F686C6DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE600000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000113E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_100015730(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100011584(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100015778(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100009B3C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10001164C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000089AC(&qword_100085818, &qword_100069198);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100011970(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000089AC(&unk_1000860C0, &unk_100069770);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100011C28(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DatastoreKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000089AC(&unk_100086070, &unk_100069720);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100015730(&qword_100085D20, &type metadata accessor for DatastoreKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100012004(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000089AC(&qword_100085808, &qword_100069188);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100009B90(v25, v37);
      }

      else
      {
        sub_100009960(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100009B90(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000122E4(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = type metadata accessor for RemoteHandler();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_1000089AC(&qword_100085800, &qword_100069180);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_100015730(&qword_100085F70, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1000127A0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1000089AC(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_100012A90(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  sub_1000089AC(a4, a5);
  v51 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v14 + 16))
  {
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v47 = v8;
    v48 = (v11 + 16);
    v49 = v14;
    v50 = v11;
    v52 = (v11 + 32);
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v14 + 56);
      v32 = (*(v14 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v50 + 72);
      v36 = v31 + v35 * v30;
      if (v51)
      {
        (*v52)(v53, v36, v54);
      }

      else
      {
        (*v48)(v53, v36, v54);
      }

      v37 = *(v17 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v38 = -1 << *(v17 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 16 * v25);
      *v26 = v34;
      v26[1] = v33;
      result = (*v52)(*(v17 + 56) + v35 * v25, v53, v54);
      ++*(v17 + 16);
      v14 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v19, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}

unint64_t sub_100012E14(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_100012E74(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_100012EC4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DatastoreKey();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_100012F7C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100009B90(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100012FEC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for RemoteHandler();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1000130E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100013158(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

void *sub_10001320C()
{
  v1 = v0;
  sub_1000089AC(&qword_100085818, &qword_100069198);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1000133CC()
{
  v1 = v0;
  sub_1000089AC(&unk_1000860C0, &unk_100069770);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_10001354C()
{
  v1 = v0;
  v34 = type metadata accessor for DatastoreKey();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089AC(&unk_100086070, &unk_100069720);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}
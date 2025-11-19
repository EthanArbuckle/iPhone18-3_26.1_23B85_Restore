int main(int argc, const char **argv, const char **envp)
{
  if (qword_1000DB9C8 != -1)
  {
    swift_once();
  }

  sub_10002CBC8();

  if (qword_1000DB9C0 != -1)
  {
    swift_once();
  }

  v3 = [objc_opt_self() mainRunLoop];
  [v3 run];

  exit(1);
}

uint64_t sub_100001D68(uint64_t a1, int a2)
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

uint64_t sub_100001D88(uint64_t result, int a2, int a3)
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

NSString sub_100001DE8@<X0>(void *a1@<X8>)
{
  result = sub_100002AF4();
  *a1 = result;
  return result;
}

uint64_t sub_100001E34(uint64_t a1)
{
  v2 = sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100001EA0()
{
  sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError);

  return _BridgedStoredNSError.errorUserInfo.getter();
}

uint64_t sub_100001F0C(void *a1, uint64_t a2)
{
  v4 = sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100001FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002044()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000020A4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1000020D8();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1000020E0@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10000210C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100002154@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100002180(uint64_t a1)
{
  v2 = sub_100002450(&qword_1000DBB58, type metadata accessor for AMSBagKey);
  v3 = sub_100002450(&unk_1000DBB60, type metadata accessor for AMSBagKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000223C(uint64_t a1)
{
  v2 = sub_100002450(&qword_1000DBAF0, type metadata accessor for AMSError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000022A8(uint64_t a1)
{
  v2 = sub_100002450(&qword_1000DBAF0, type metadata accessor for AMSError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002318(uint64_t a1)
{
  v2 = sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002450(&qword_1000DBB28, type metadata accessor for AMSError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100002450(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100002660()
{
  result = qword_1000DBB18;
  if (!qword_1000DBB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBB18);
  }

  return result;
}

void sub_100002764(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002858(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000028AC();
}

uint64_t sub_1000028AC()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100002930()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100002984()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_1000029F8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002A7C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

NSString sub_100002AF4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_100002B2C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100002B68()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1000080A0(v0);
  if (!v1)
  {
    v4 = 0u;
    v5 = 0u;
    goto LABEL_6;
  }

  sub_10007BF54(v1, &v4);

  if (!*(&v5 + 1))
  {
LABEL_6:
    sub_10000A7A8(&v4, &qword_1000DBD08, &qword_1000AA690);
    return 3157555;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  return 3157555;
}

void sub_100002C48()
{
  sub_10000AE68();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(*(sub_100003998(&qword_1000DBE78, &qword_1000AA750) - 8) + 64);
  sub_10000ACFC();
  __chkstk_darwin(v11);
  sub_10000AE80();
  v12 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v13 = sub_10000AC48(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10000ADA0();
  v20 = (v19 - v18);
  *(v9 + 48) = v3;
  v51 = v1;
  sub_10000A898(v1, v9 + 56);
  sub_10000A744(v7, &v53, &qword_1000DBE80, &qword_1000AA758);
  if (v54)
  {
    sub_10000A8F8(&v53, &v55);
    sub_10000A8F8(&v55, v9);
  }

  else
  {
    sub_10000A7A8(&v53, &qword_1000DBE80, &qword_1000AA758);
    v21 = String._bridgeToObjectiveC()();
    v22 = MGGetBoolAnswer();

    v49 = v12;
    if ((v22 & 1) != 0 && (type metadata accessor for BagProvider(), type metadata accessor for ContainerConstants(), static ContainerConstants.tempoUrlUserDefaultKey.getter(), sub_1000204A4(), v24 = v23, , v24))
    {

      v48 = 1;
    }

    else
    {
      v48 = 0;
    }

    v50 = v7;
    v25 = [objc_opt_self() defaultSessionConfiguration];
    v26 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v25];

    if (qword_1000DBA80 != -1)
    {
      swift_once();
    }

    v47 = v5;
    v27 = qword_1000E6E10;
    v56 = type metadata accessor for SportsPerformanceMeasurement();
    v57 = &off_1000D4A78;
    *&v55 = v27;

    sub_1000499E0();
    *(v9 + 24) = &type metadata for ApiAgent;
    *(v9 + 32) = &off_1000D18E8;
    v28 = swift_allocObject();
    *v9 = v28;
    if (qword_1000DB9B8 != -1)
    {
      swift_once();
    }

    v29 = *(qword_1000E6CC0 + 16);
    v30 = v26;
    v31 = [v26 configuration];
    v32 = sub_10000AF64();
    sub_100079034(v32, v33, v31);

    v34 = [v30 configuration];
    v35 = [objc_opt_self() currentProcess];

    v36 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v29];
    [v36 setUrlKnownToBeTrusted:v48];
    v28[6] = sub_10000A854();
    v28[7] = &off_1000D0658;
    v28[3] = v36;
    sub_10000A898(&v55, (v28 + 9));
    v37 = [objc_allocWithZone(type metadata accessor for AMSTaskDelegate()) init];

    v28[2] = v30;
    v28[8] = v37;
    sub_100008A94(&v55);
    v7 = v50;
    v12 = v49;
    v5 = v47;
  }

  v38 = type metadata accessor for JSONDecoder();
  sub_10000AFD0(v38);
  swift_allocObject();
  v39 = JSONDecoder.init()();
  *v20 = sub_1000329B0;
  v20[1] = 0;
  (*(v15 + 104))(v20, enum case for JSONDecoder.DateDecodingStrategy.custom(_:), v12);
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  v40 = v5;
  if (!v5)
  {

    v40 = v39;
  }

  *(v9 + 40) = v40;

  static SportsJSONContext.Property<A>.initFailureObserver.getter();
  v41 = type metadata accessor for DefaultSportsJSONInitFailureObserver();
  sub_10000AFD0(v41);
  swift_allocObject();
  v42 = DefaultSportsJSONInitFailureObserver.init()();
  v56 = v41;
  v57 = &protocol witness table for DefaultSportsJSONInitFailureObserver;
  *&v55 = v42;
  v43 = dispatch thunk of JSONDecoder.userInfo.modify();
  v45 = v44;
  v52 = *v44;
  swift_bridgeObjectRetain_n();
  sub_100003998(&qword_1000DBE90, &qword_1000AA760);
  Dictionary<>.subscript.setter();
  v46 = *v45;
  *v45 = v52;

  v43(&v53, 0);

  sub_100008A94(v51);
  sub_10000A7A8(v7, &qword_1000DBE80, &qword_1000AA758);

  sub_10000AE50();
}

void sub_100003200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, unsigned __int8 a22, char a23, void *a24, uint64_t *a25)
{
  sub_10000AE68();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v118._countAndFlagsBits = v36;
  v118._object = v37;
  v120 = v38;
  v39 = sub_100003998(&qword_1000DBC30, &qword_1000AA608);
  sub_10000AC48(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v44);
  sub_10000AE90();
  v45 = type metadata accessor for URL();
  v46 = sub_10000AC48(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  __chkstk_darwin(v49);
  v54 = &v105 - v53;
  v55 = HIBYTE(v33) & 0xF;
  v119 = v33;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v55 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {
    v60 = 0xD000000000000012;
    v61 = 0x80000001000B0BD0;
LABEL_19:
    v121 = sub_100029E04(1u, v60, v61);
    sub_100003998(&qword_1000DBC40, &qword_1000AA618);
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    Fail.init(error:)();
    sub_10000A6FC(&qword_1000DBC48, &qword_1000DBC30, &qword_1000AA608);
    Publisher.eraseToAnyPublisher()();
    (*(v41 + 8))(v25, v39);
    goto LABEL_26;
  }

  v56 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v56 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {
    v61 = 0x80000001000B0BB0;
    v60 = 0xD000000000000014;
    goto LABEL_19;
  }

  v112 = v52;
  v116 = v51;
  v117 = v50;
  if (!a21)
  {
    goto LABEL_13;
  }

  v57 = HIBYTE(a21) & 0xF;
  if ((a21 & 0x2000000000000000) == 0)
  {
    v57 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v57)
  {
    v121 = v27;
    v122 = a21;

    v58._countAndFlagsBits = 58;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    v59._countAndFlagsBits = v31;
    v59._object = v29;
    String.append(_:)(v59);
    v31 = v121;
    v29 = v122;
  }

  else
  {
LABEL_13:
  }

  v115 = v35;
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  LODWORD(v107) = a22;
  v62 = type metadata accessor for Logger();
  sub_100007DE8(v62, qword_1000E6D48);
  v64 = v116;
  v63 = v117;
  v110 = *(v116 + 16);
  v111 = v116 + 16;
  v110(v54, v120, v117);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v67 = os_log_type_enabled(v65, v66);
  v113 = v31;
  v114 = v29;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v121 = v109;
    *v68 = 136315138;
    sub_100008F6C(&qword_1000DBC38, &type metadata accessor for URL);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (*(v64 + 8))(v54, v63);
    v72 = sub_1000170D4(v69, v71, &v121);

    *(v68 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v65, v66, "Tempo /register base url: %s", v68, 0xCu);
    sub_100008A94(v109);
    sub_10000B008();
    sub_10000B008();
  }

  else
  {

    (*(v64 + 8))(v54, v63);
  }

  v108 = a24;
  v109 = a25;
  v73 = Dictionary.init(dictionaryLiteral:)();
  if (v107)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v73;
    sub_100086888(0x524154534F545541, 0xE900000000000054, 0xD000000000000014, 0x80000001000B0B90, isUniquelyReferenced_nonNull_native);
    v73 = v121;
  }

  v121 = 791901743;
  v122 = 0xE400000000000000;
  String.append(_:)(v118);
  v75._countAndFlagsBits = 0x657473696765722FLL;
  v75._object = 0xE900000000000072;
  String.append(_:)(v75);
  v77 = v121;
  v76 = v122;

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();

  v80 = os_log_type_enabled(v78, v79);
  v106 = v76;
  v107 = v73;
  v105 = v77;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v121 = v82;
    *v81 = 136315138;
    *(v81 + 4) = sub_1000170D4(v77, v76, &v121);
    _os_log_impl(&_mh_execute_header, v78, v79, "Tempo /register path: %s", v81, 0xCu);
    sub_100008A94(v82);
    sub_10000B008();
    sub_10000B008();
  }

  v83 = v112;
  v84 = v117;
  v110(v112, v120, v117);
  v118._countAndFlagsBits = sub_100002B68();
  v111 = v85;
  sub_100069EA8(a23);
  v120 = v86;
  v118._object = v87;
  sub_100003998(&qword_1000DC430, &qword_1000AA610);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1000AA5B0;
  v89 = v114;
  *(v88 + 32) = v113;
  *(v88 + 40) = v89;
  v90 = v119;

  v91 = sub_1000698CC();
  v92 = v116;
  v93 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v94 = v93 + v48;
  v95 = swift_allocObject();
  v96 = v106;
  *(v95 + 16) = v105;
  *(v95 + 24) = v96;
  (*(v92 + 32))(v95 + v93, v83, v84);
  *(v95 + v94) = 1;
  v97 = v95 + (v94 & 0xFFFFFFFFFFFFFFF8);
  v98 = v111;
  *(v97 + 8) = v118._countAndFlagsBits;
  *(v97 + 16) = v98;
  *(v97 + 24) = 0x302E302E31;
  *(v97 + 32) = 0xE500000000000000;
  *(v97 + 40) = v115;
  *(v97 + 48) = v90;
  *(v97 + 56) = 0x544E455645;
  *(v97 + 64) = 0xE500000000000000;
  object = v118._object;
  *(v97 + 72) = v120;
  *(v97 + 80) = object;
  v100 = v107;
  v101 = v108;
  *(v97 + 88) = v88;
  *(v97 + 96) = v100;
  *(v97 + 104) = 1;
  *(v97 + 112) = v91;
  v102 = sub_100008614(v101, v101[3]);
  v103 = v101[5];
  v104 = v109;

  sub_100008658(sub_10000858C, v95, v104, 0, v103, v102);

LABEL_26:
  sub_10000AF58();
  sub_10000AE50();
}

uint64_t sub_100003998(uint64_t *a1, uint64_t *a2)
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

void sub_1000039E0()
{
  sub_10000AE68();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v27 = sub_100003998(&qword_1000DBD50, &qword_1000AA6B8);
  sub_10000AC48(v27);
  v28 = v8;
  v10 = *(v9 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v11);
  sub_10000ADEC();
  v26 = sub_100003998(&qword_1000DBD58, &unk_1000AA6C0);
  sub_10000AC48(v26);
  v13 = *(v12 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v14);
  sub_10000ADEC();
  v15 = sub_100008614((v1 + 56), *(v1 + 80));
  sub_10000AF88(v15);
  sub_1000097A0(v1, v16);
  sub_10000AF7C();
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = v5;
  memcpy(v17 + 4, v29, 0x60uLL);
  v17[16] = v3;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBD60, &qword_1000ABEC0);
  sub_100003998(&qword_1000DBD68, &qword_1000AA6D0);
  sub_10000AD40();
  sub_10000A6FC(v18, &qword_1000DBD60, &qword_1000ABEC0);
  sub_10000A6FC(&qword_1000DBD78, &qword_1000DBD68, &qword_1000AA6D0);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_10000AC94();
  sub_10000A6FC(v19, &qword_1000DBD50, &qword_1000AA6B8);
  sub_10000AFA8();
  Publisher.map<A>(_:)();
  v20 = *(v28 + 8);
  v21 = sub_10000AF64();
  v22(v21);
  sub_10000AC5C();
  sub_10000A6FC(v23, &qword_1000DBD58, &unk_1000AA6C0);
  sub_10000AFE8();
  v24 = sub_10000AEC8();
  v25(v24);
  sub_10000AF58();
  sub_10000AE50();
}

uint64_t sub_100003CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v12);
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v29 = 0x65726E752F33762FLL;
  v30 = 0xEF2F726574736967;
  v14._countAndFlagsBits = a2;
  v14._object = a3;
  String.append(_:)(v14);
  v16 = v29;
  v15 = v30;
  v17 = sub_1000698CC();
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = v18 + v11;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v15;
  (*(v10 + 32))(v20 + v18, v13, v9);
  *(v20 + v19) = 1;
  *(v20 + (v19 & 0xFFFFFFFFFFFFFFF8) + 8) = v17;
  v21 = sub_100008614(v26, v26[3]);
  v22 = v27;

  v23 = sub_100009874(sub_100009840, v20, v22, 0, v21);

  *v28 = v23;
  return result;
}

int *sub_100003ECC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = sub_100003998(&qword_1000DBD90, &qword_1000AA6D8);
  if (*(a1 + result[8]) && (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {
    result = [result statusCode];
    v5 = (result - 50) < 0x64;
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

void sub_100003F50()
{
  sub_10000AE68();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v30 = sub_100003998(&qword_1000DBD50, &qword_1000AA6B8);
  sub_10000AC48(v30);
  v31 = v12;
  v14 = *(v13 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v15);
  sub_10000ADEC();
  v28 = v16;
  v29 = sub_100003998(&qword_1000DBDB0, &qword_1000AA6E8);
  sub_10000AC48(v29);
  v18 = *(v17 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v19);
  sub_10000ADEC();
  v20 = sub_100008614((v1 + 56), *(v1 + 80));
  sub_10000AF88(v20);
  sub_1000097A0(v1, v21);
  sub_10000AFDC();
  v22 = swift_allocObject();
  v22[2] = v11;
  v22[3] = v9;
  v22[4] = v7;
  v22[5] = v5;
  memcpy(v22 + 6, v32, 0x60uLL);
  v22[18] = v3;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBD60, &qword_1000ABEC0);
  sub_100003998(&qword_1000DBD68, &qword_1000AA6D0);
  sub_10000AD40();
  sub_10000A6FC(v23, &qword_1000DBD60, &qword_1000ABEC0);
  sub_10000A6FC(&qword_1000DBD78, &qword_1000DBD68, &qword_1000AA6D0);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_100003998(&qword_1000DBDB8, &qword_1000AA6F0);
  sub_10000AC94();
  sub_10000A6FC(v24, &qword_1000DBD50, &qword_1000AA6B8);
  sub_10000AFA8();
  Publisher.map<A>(_:)();
  (*(v31 + 8))(v28, v30);
  sub_10000AC5C();
  sub_10000A6FC(v25, &qword_1000DBDB0, &qword_1000AA6E8);
  sub_10000AFE8();
  v26 = sub_10000AEC8();
  v27(v26);
  sub_10000AF58();
  sub_10000AE50();
}

uint64_t sub_100004264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13, v16);
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v35 = 0x65726E752F33762FLL;
  v36 = 0xEF2F726574736967;
  v18._countAndFlagsBits = a2;
  v18._object = a3;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 47;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = a4;
  v20._object = a5;
  String.append(_:)(v20);
  v21 = v35;
  v22 = v36;
  v23 = sub_1000698CC();
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = v24 + v15;
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  *(v26 + 24) = v22;
  (*(v14 + 32))(v26 + v24, v17, v13);
  *(v26 + v25) = 1;
  *(v26 + (v25 & 0xFFFFFFFFFFFFFFF8) + 8) = v23;
  v27 = sub_100008614(v32, v32[3]);
  v28 = v33;

  v29 = sub_100009874(sub_100009C68, v26, v28, 0, v27);

  *v34 = v29;
  return result;
}

id sub_100004488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = sub_100003998(&qword_1000DBD90, &qword_1000AA6D8);
  v21 = *(a1 + *(v13 + 32));
  if (v21 && (objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0))
  {
    v15 = [v14 statusCode];
    sub_10000A744(a1, v12, &qword_1000DD720, &qword_1000AA648);
    (*(v5 + 16))(v8, a1 + *(v13 + 28), v4);
    v16 = sub_100003998(&qword_1000DBDB8, &qword_1000AA6F0);
    *(a2 + v16[10]) = (v15 - 200) < 0x64;
    sub_100008C04(v12, a2);
    (*(v5 + 32))(a2 + v16[7], v8, v4);
  }

  else
  {
    sub_10000A744(a1, a2, &qword_1000DD720, &qword_1000AA648);
    v17 = *(v13 + 28);
    v16 = sub_100003998(&qword_1000DBDB8, &qword_1000AA6F0);
    (*(v5 + 16))(a2 + v16[7], a1 + v17, v4);
    *(a2 + v16[10]) = 1;
  }

  v18 = v21;
  *(a2 + v16[8]) = v21;
  *(a2 + v16[9]) = xmmword_1000AA5C0;

  return v18;
}

void sub_100004710()
{
  sub_10000AE68();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100003998(&qword_1000DBE08, &qword_1000AA718);
  v16 = sub_10000AC48(v9);
  v17 = v10;
  v12 = *(v11 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v13);
  sub_10000AE80();
  v18[12] = *(*sub_100008614((v2 + 56), *(v2 + 80)) + 24);
  sub_1000097A0(v2, v18);
  sub_10000AF7C();
  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = v6;
  v14[4] = v4;
  sub_10000AEF8(v14 + 5);

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBD60, &qword_1000ABEC0);
  sub_100003998(&qword_1000DBE10, &qword_1000AA720);
  sub_10000A6FC(&qword_1000DBD70, &qword_1000DBD60, &qword_1000ABEC0);
  sub_10000A6FC(&qword_1000DBE18, &qword_1000DBE10, &qword_1000AA720);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_10000AC94();
  sub_10000A6FC(v15, &qword_1000DBE08, &qword_1000AA718);
  Publisher.eraseToAnyPublisher()();
  (*(v17 + 8))(v1, v16);
  sub_10000AF58();
  sub_10000AE50();
}

uint64_t sub_100004944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v30 = a5;
  v31 = a4;
  v32 = a6;
  v29 = type metadata accessor for URL();
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v29);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v11);
  v13 = 0xE000000000000000;
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v33 = 0xD000000000000018;
  v34 = 0x80000001000B0C10;
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    a2 = 0;
  }

  v14._countAndFlagsBits = a2;
  v14._object = v13;
  String.append(_:)(v14);

  v15 = v33;
  v16 = v34;
  v17 = sub_1000698CC();
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v9 + 32))(v20 + v18, v12, v29);
  v21 = (v20 + v19);
  *v21 = v15;
  v21[1] = v16;
  v22 = v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v20 + ((v19 + 39) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v23 = v30;
  v24 = sub_100008614(v30, v30[3]);
  v25 = v23[5];
  v26 = v31;

  v27 = sub_10000A0C0(sub_100009FCC, v20, v26, 0, v25, v24);

  *v32 = v27;
  return result;
}

uint64_t sub_100004BC0@<X0>(_BYTE *a1@<X8>)
{
  result = static LiveActivityAppIntentServiceError.__derived_enum_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100004BEC(uint64_t a1)
{
  v2 = sub_10000A9E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004C28(uint64_t a1)
{
  v2 = sub_10000A9E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004C84(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = sub_100003998(a2, a3);
  sub_10000AC48(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_100008614(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_100004DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100004C64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100004E04(uint64_t a1)
{
  v2 = sub_10000AA34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004E40(uint64_t a1)
{
  v2 = sub_10000AA34();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100004EC0(void *a1, uint64_t a2, uint64_t a3, int a4, const void *a5, uint64_t a6)
{
  v62 = a3;
  v66 = a6;
  v60 = a4;
  v63 = a1;
  v64 = a2;
  v7 = type metadata accessor for URLError.Code();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for URLError();
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v58 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a5, sizeof(__dst));
  (*(v21 + 16))(v16, v62, v20);
  sub_100008E2C(v16, 0, 1, v20);
  URL.init(string:relativeTo:)();
  sub_10000A7A8(v16, &unk_1000DD7B0, &qword_1000AC150);
  if (sub_100008B84(v19, 1, v20) == 1)
  {
    sub_10000A7A8(v19, &unk_1000DD7B0, &qword_1000AC150);
    static URLError.Code.badURL.getter();
    sub_100007E20(_swiftEmptyArrayStorage);
    sub_100008F6C(&qword_1000DBCE8, &type metadata accessor for URLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = URLError._nsError.getter();
    (*(v59 + 8))(v12, v9);
    v64 = v25;
    swift_willThrow();
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    v26 = objc_allocWithZone(AMSURLRequest);
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v30 = [v26 initWithURL:v28];

    v31 = v30;
    [v31 setTimeoutInterval:10.0];
    v32 = String._bridgeToObjectiveC()();

    [v31 setHTTPMethod:v32];

    v33 = type metadata accessor for JSONEncoder();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_100008E54();
    v36 = v61;
    v37 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v64 = v36;
    if (v36)
    {
      (*(v21 + 8))(v24, v20);
    }

    else
    {
      v39 = v37;
      v40 = v38;
      v61 = v24;
      v62 = v21;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100008BAC(v39, v40);
      [v31 setHTTPBody:isa];
      v63 = v31;

      v42 = v66 + 64;
      v43 = 1 << *(v66 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & *(v66 + 64);
      v46 = (v43 + 63) >> 6;

      v47 = 0;
      while (v45)
      {
        v48 = v47;
LABEL_13:
        v49 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        v50 = (v48 << 10) | (16 * v49);
        v51 = (*(v66 + 48) + v50);
        v53 = *v51;
        v52 = v51[1];
        v54 = (*(v66 + 56) + v50);
        v55 = *v54;
        v56 = v54[1];

        v57 = String._bridgeToObjectiveC()();
        sub_100008118(v55, v56, v57, v63);
      }

      while (1)
      {
        v48 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v48 >= v46)
        {

          (*(v62 + 8))(v61, v20);
          return;
        }

        v45 = *(v42 + 8 * v48);
        ++v47;
        if (v45)
        {
          v47 = v48;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1000054B0(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v69 = a6;
  v70 = a7;
  v72 = a1;
  v74 = a5;
  v68 = a4;
  v73 = a2;
  v8 = type metadata accessor for URLError.Code();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_10000ADA0();
  v10 = type metadata accessor for URLError();
  v11 = sub_10000AC48(v10);
  v67 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000ADA0();
  v17 = v16 - v15;
  v18 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  v25 = type metadata accessor for URL();
  v26 = sub_10000AC48(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_10000ADA0();
  v33 = v32 - v31;
  (*(v28 + 16))(v21, a3, v25);
  sub_100008E2C(v21, 0, 1, v25);
  URL.init(string:relativeTo:)();
  sub_10000A7A8(v21, &unk_1000DD7B0, &qword_1000AC150);
  if (sub_100008B84(v24, 1, v25) == 1)
  {
    sub_10000A7A8(v24, &unk_1000DD7B0, &qword_1000AC150);
    static URLError.Code.badURL.getter();
    sub_100007E20(_swiftEmptyArrayStorage);
    sub_100008F6C(&qword_1000DBCE8, &type metadata accessor for URLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v34 = URLError._nsError.getter();
    (*(v67 + 8))(v17, v10);
    v73 = v34;
    swift_willThrow();
  }

  else
  {
    (*(v28 + 32))(v33, v24, v25);
    v35 = objc_allocWithZone(AMSURLRequest);
    URL._bridgeToObjectiveC()(v36);
    v38 = v37;
    v39 = [v35 initWithURL:v37];

    v40 = v39;
    [v40 setTimeoutInterval:10.0];
    v41 = v28;
    v42 = String._bridgeToObjectiveC()();

    [v40 setHTTPMethod:v42];

    v43 = type metadata accessor for JSONEncoder();
    sub_10000AFD0(v43);
    swift_allocObject();
    JSONEncoder.init()();
    v69();
    v44 = v71;
    v45 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v73 = v44;
    if (v44)
    {
      (*(v28 + 8))(v33, v25);
    }

    else
    {
      v47 = v45;
      v48 = v46;
      v70 = v33;
      v71 = v41;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100008BAC(v47, v48);
      [v40 setHTTPBody:isa];
      v72 = v40;

      v50 = v74 + 64;
      v51 = 1 << *(v74 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v74 + 64);
      v54 = (v51 + 63) >> 6;

      v55 = 0;
      while (v53)
      {
        v56 = v55;
LABEL_13:
        v57 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        v58 = (v56 << 10) | (16 * v57);
        v59 = (*(v74 + 48) + v58);
        v61 = *v59;
        v60 = v59[1];
        v62 = (*(v74 + 56) + v58);
        v63 = *v62;
        v64 = v62[1];

        sub_10000AF64();
        v65 = String._bridgeToObjectiveC()();
        sub_100008118(v63, v64, v65, v72);
      }

      while (1)
      {
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v56 >= v54)
        {

          (*(v71 + 8))(v70, v25);
          return;
        }

        v53 = *(v50 + 8 * v56);
        ++v55;
        if (v53)
        {
          v55 = v56;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

id sub_100005A5C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  v7 = type metadata accessor for URL();
  sub_10000ACDC(v7);
  (*(v8 + 8))(a1);
  return v6;
}

void sub_100005AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000AE68();
  a19 = v21;
  a20 = v22;
  v112 = v23;
  v25 = v24;
  v102 = v24;
  v27 = v26;
  v117 = v28;
  v109 = v29;
  v119 = v30;
  v32 = v31;
  v34 = v33;
  v113 = v35;
  v105 = type metadata accessor for URLRequest();
  v36 = sub_10000AC48(v105);
  v120 = v37;
  v106 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_10000AF30();
  sub_10000AF24(v39);
  v40 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  v41 = sub_10000AC84(v40);
  v104 = v42;
  v100 = *(v43 + 64);
  v44 = v100;
  __chkstk_darwin(v41);
  sub_10000ADEC();
  sub_10000AF24(v45);
  v46 = sub_100003998(&qword_1000DBC88, &qword_1000AA650);
  sub_10000AC48(v46);
  v48 = v47;
  v50 = *(v49 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v51);
  sub_10000AE90();
  v107 = sub_100003998(&qword_1000DBD10, &qword_1000AA698);
  sub_10000AC48(v107);
  v108 = v52;
  v54 = *(v53 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v55);
  v101 = v99 - v56;
  v110 = sub_100003998(&qword_1000DBD18, &qword_1000AA6A0);
  sub_10000AC48(v110);
  v111 = v57;
  v59 = *(v58 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v60);
  sub_10000ADEC();
  v118 = v61;
  v114 = v34;
  v122[0] = v34;
  v122[1] = v32;
  v115 = v32;
  sub_100008B28(v34, v32);
  Just.init(_:)();
  sub_100003998(&qword_1000DBD20, &qword_1000AA6A8);
  v122[0] = v27;
  type metadata accessor for JSONDecoder();
  sub_10000AD88();
  sub_10000A6FC(v62, &qword_1000DBC88, &qword_1000AA650);
  sub_100008EB8();
  sub_10000AD70();
  sub_100008F6C(v63, v64);
  Publisher.decode<A, B>(type:decoder:)();
  (*(v48 + 8))(v20, v46);
  sub_100008A38(v25, v122);
  v65 = v103;
  sub_10000A744(v117, v103, &qword_1000DD720, &qword_1000AA648);
  sub_10000AE18();
  v66 = v116;
  v67 = v105;
  v68(v116, v119, v105);
  v69 = *(v104 + 80);
  v70 = (v69 + 120) & ~v69;
  v71 = *(v20 + 80);
  v72 = (v44 + v71 + v70) & ~v71;
  sub_10000ADF8(&v123);
  v74 = v73 & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  sub_10000AEF8((v75 + 16));
  v76 = v109;
  *(v75 + 112) = v109;
  sub_100008C04(v65, v75 + v70);
  sub_10000AEE0();
  v77(v75 + v72, v66, v67);
  v78 = (v75 + v74);
  v79 = v114;
  v80 = v115;
  *v78 = v114;
  v78[1] = v80;
  sub_100008B28(v79, v80);
  v81 = v76;
  sub_100003998(&qword_1000DBD38, &qword_1000AA6B0);
  sub_10000AD58();
  sub_10000A6FC(v82, &qword_1000DBD10, &qword_1000AA698);
  sub_10000AEA0();

  v83 = sub_10000ACE8(&a10);
  v84(v83);
  v85 = v65;
  sub_10000A744(v117, v65, &qword_1000DD720, &qword_1000AA648);
  sub_100008A38(v102, v122);
  v86 = v116;
  sub_10000AF44();
  v87();
  sub_10000A898(v112, v121);
  v88 = (v69 + 32) & ~v69;
  sub_10000AF10();
  v90 = v89 & 0xFFFFFFFFFFFFFFF8;
  v91 = (v71 + (v89 & 0xFFFFFFFFFFFFFFF8) + 96) & ~v71;
  v92 = (v106 + v91) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  v94 = v114;
  v95 = v115;
  *(v93 + 16) = v114;
  *(v93 + 24) = v95;
  sub_100008C04(v85, v93 + v88);
  sub_10000AEF8((v93 + v90));
  (v99[2])(v93 + v91, v86, v67);
  sub_10000A8F8(v121, v93 + v92);
  sub_100008B28(v94, v95);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000AC5C();
  sub_10000A6FC(v96, &qword_1000DBD18, &qword_1000AA6A0);
  sub_10000ADBC();
  Publisher.mapError<A>(_:)();

  v97 = sub_10000ACE8(&a13);
  v98(v97);
  sub_10000AE50();
}

void sub_1000061A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000AE68();
  a19 = v21;
  a20 = v22;
  v112 = v23;
  v116 = v24;
  v26 = v25;
  v119 = v27;
  v109 = v28;
  v118 = v29;
  v31 = v30;
  v33 = v32;
  v113 = v34;
  v105 = type metadata accessor for URLRequest();
  v35 = sub_10000AC48(v105);
  v120 = v36;
  v106 = *(v37 + 64);
  __chkstk_darwin(v35);
  sub_10000AF30();
  sub_10000AF24(v38);
  v39 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  v40 = sub_10000AC84(v39);
  v103 = v41;
  v100 = *(v42 + 64);
  v43 = v100;
  __chkstk_darwin(v40);
  sub_10000ADEC();
  sub_10000AF24(v44);
  v45 = sub_100003998(&qword_1000DBC88, &qword_1000AA650);
  sub_10000AC48(v45);
  v47 = v46;
  v49 = *(v48 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v50);
  sub_10000AE90();
  v107 = sub_100003998(&qword_1000DBDD0, &qword_1000AA6F8);
  sub_10000AC48(v107);
  v108 = v51;
  v53 = *(v52 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v54);
  v101 = v99 - v55;
  v110 = sub_100003998(&qword_1000DBDD8, &unk_1000AA700);
  sub_10000AC48(v110);
  v111 = v56;
  v58 = *(v57 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v59);
  sub_10000ADEC();
  v117 = v60;
  v114 = v33;
  v122[0] = v33;
  v122[1] = v31;
  v102 = v31;
  v61 = sub_10000AF64();
  sub_100008B28(v61, v62);
  Just.init(_:)();
  sub_100003998(&qword_1000DBDE0, &unk_1000AC110);
  v122[0] = v26;
  type metadata accessor for JSONDecoder();
  sub_10000AD88();
  sub_10000A6FC(v63, &qword_1000DBC88, &qword_1000AA650);
  sub_10000A6FC(&qword_1000DBDE8, &qword_1000DBDE0, &unk_1000AC110);
  sub_10000AD70();
  sub_100008F6C(v64, v65);
  Publisher.decode<A, B>(type:decoder:)();
  (*(v47 + 8))(v20, v45);
  sub_100008A38(v116, v122);
  v66 = v115;
  sub_10000A744(v119, v115, &qword_1000DD720, &qword_1000AA648);
  sub_10000AE18();
  v67 = v104;
  v68 = v105;
  v69(v104, v118, v105);
  v70 = *(v103 + 80);
  v71 = (v70 + 120) & ~v70;
  v72 = *(v20 + 80);
  v73 = (v43 + v72 + v71) & ~v72;
  sub_10000ADF8(&v123);
  v75 = v74 & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  sub_10000AEF8((v76 + 16));
  v77 = v109;
  *(v76 + 112) = v109;
  sub_100008C04(v66, v76 + v71);
  sub_10000AEE0();
  v78(v76 + v73, v67, v68);
  v79 = (v76 + v75);
  v80 = v114;
  v81 = v102;
  *v79 = v114;
  v79[1] = v81;
  sub_100008B28(v80, v81);
  v82 = v77;
  sub_100003998(&qword_1000DBDF0, &qword_1000AA710);
  sub_10000AD58();
  sub_10000A6FC(v83, &qword_1000DBDD0, &qword_1000AA6F8);
  sub_10000AEA0();

  v84 = sub_10000ACE8(&a10);
  v85(v84);
  v86 = v115;
  sub_10000A744(v119, v115, &qword_1000DD720, &qword_1000AA648);
  sub_100008A38(v116, v122);
  v87 = v67;
  sub_10000AF44();
  v88();
  sub_10000A898(v112, v121);
  v89 = (v70 + 32) & ~v70;
  sub_10000AF10();
  v91 = v90 & 0xFFFFFFFFFFFFFFF8;
  v92 = (v72 + (v90 & 0xFFFFFFFFFFFFFFF8) + 96) & ~v72;
  v93 = (v106 + v92) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  v95 = v114;
  *(v94 + 16) = v114;
  *(v94 + 24) = v81;
  sub_100008C04(v86, v94 + v89);
  sub_10000AEF8((v94 + v91));
  (v99[2])(v94 + v92, v87, v68);
  sub_10000A8F8(v121, v94 + v93);
  sub_100008B28(v95, v81);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000AC5C();
  sub_10000A6FC(v96, &qword_1000DBDD8, &unk_1000AA700);
  sub_10000ADBC();
  Publisher.mapError<A>(_:)();

  v97 = sub_10000ACE8(&a13);
  v98(v97);
  sub_10000AE50();
}

uint64_t sub_100006880@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v72 = a8;
  v62 = a7;
  v76 = a5;
  v69 = a4;
  v79 = a3;
  v73 = a9;
  v77 = type metadata accessor for URLRequest();
  v80 = *(v77 - 8);
  v66 = v80[8];
  __chkstk_darwin(v77);
  v75 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  v65 = *(v14 - 8);
  v60 = *(v65 + 64);
  v15 = v60;
  __chkstk_darwin(v14 - 8);
  v64 = &v57 - v16;
  v17 = sub_100003998(&qword_1000DBC88, &qword_1000AA650);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v57 - v20;
  v67 = sub_100003998(&qword_1000DBC90, &qword_1000AA658);
  v68 = *(v67 - 8);
  v22 = *(v68 + 64);
  __chkstk_darwin(v67);
  v61 = &v57 - v23;
  v70 = sub_100003998(&qword_1000DBC98, &qword_1000AA660);
  v71 = *(v70 - 8);
  v24 = *(v71 + 64);
  __chkstk_darwin(v70);
  v78 = &v57 - v25;
  v74 = a1;
  __src[0] = a1;
  __src[1] = a2;
  v63 = a2;
  sub_100008B28(a1, a2);
  Just.init(_:)();
  _s20RegistrationResponseVMa();
  __src[0] = a6;
  type metadata accessor for JSONDecoder();
  sub_10000A6FC(&qword_1000DBCA0, &qword_1000DBC88, &qword_1000AA650);
  sub_100008F6C(&qword_1000DBCA8, _s20RegistrationResponseVMa);
  sub_100008F6C(&qword_1000DBCB0, &type metadata accessor for JSONDecoder);
  Publisher.decode<A, B>(type:decoder:)();
  (*(v18 + 8))(v21, v17);
  sub_100008A38(a7, __src);
  v26 = v64;
  sub_10000A744(v76, v64, &qword_1000DD720, &qword_1000AA648);
  v27 = v80;
  v28 = v80[2];
  v57 = v80 + 2;
  v58 = v28;
  v29 = v75;
  v30 = v77;
  v28(v75, v79, v77);
  v31 = *(v65 + 80);
  v32 = (v31 + 120) & ~v31;
  v33 = *(v27 + 80);
  v34 = (v15 + v33 + v32) & ~v33;
  v65 = v31 | v33;
  v66 += 7;
  v35 = (v66 + v34) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  memcpy((v36 + 16), __src, 0x60uLL);
  v37 = v69;
  *(v36 + 112) = v69;
  sub_100008C04(v26, v36 + v32);
  v38 = v80[4];
  v80 += 4;
  v59 = v38;
  v38(v36 + v34, v29, v30);
  v39 = (v36 + v35);
  v40 = v74;
  v41 = v63;
  *v39 = v74;
  v39[1] = v41;
  sub_100008B28(v40, v41);
  v42 = v37;
  sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  sub_10000A6FC(&qword_1000DBCB8, &qword_1000DBC90, &qword_1000AA658);
  v43 = v67;
  v44 = v61;
  Publisher.map<A>(_:)();

  (*(v68 + 8))(v44, v43);
  v45 = v26;
  sub_10000A744(v76, v26, &qword_1000DD720, &qword_1000AA648);
  sub_100008A38(v62, __src);
  v46 = v75;
  v47 = v77;
  v58(v75, v79, v77);
  sub_10000A898(v72, v81);
  v48 = (v31 + 32) & ~v31;
  v49 = (v60 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v33 + v49 + 96) & ~v33;
  v51 = (v66 + v50) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v74;
  *(v52 + 16) = v74;
  *(v52 + 24) = v41;
  sub_100008C04(v45, v52 + v48);
  memcpy((v52 + v49), __src, 0x60uLL);
  v59(v52 + v50, v46, v47);
  sub_10000A8F8(v81, v52 + v51);
  sub_100008B28(v53, v41);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000A6FC(&qword_1000DBCC0, &qword_1000DBC98, &qword_1000AA660);
  v54 = v70;
  v55 = v78;
  Publisher.mapError<A>(_:)();

  return (*(v71 + 8))(v55, v54);
}

uint64_t sub_1000070C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v72 = a8;
  v62 = a7;
  v77 = a5;
  v69 = a4;
  v79 = a3;
  v73 = a9;
  v65 = type metadata accessor for URLRequest();
  v80 = *(v65 - 8);
  v66 = v80[8];
  __chkstk_darwin(v65);
  v76 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  v64 = *(v14 - 8);
  v60 = *(v64 + 64);
  v15 = v60;
  __chkstk_darwin(v14 - 8);
  v63 = &v57 - v16;
  v17 = sub_100003998(&qword_1000DBC88, &qword_1000AA650);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v57 - v20;
  v67 = sub_100003998(&qword_1000DBE50, &qword_1000AA740);
  v68 = *(v67 - 8);
  v22 = *(v68 + 64);
  __chkstk_darwin(v67);
  v61 = &v57 - v23;
  v70 = sub_100003998(&qword_1000DBE58, &qword_1000AA748);
  v71 = *(v70 - 8);
  v24 = *(v71 + 64);
  __chkstk_darwin(v70);
  v78 = &v57 - v25;
  v74 = a1;
  __src[0] = a1;
  __src[1] = a2;
  v75 = a2;
  sub_100008B28(a1, a2);
  Just.init(_:)();
  __src[0] = a6;
  type metadata accessor for JSONDecoder();
  sub_10000A6FC(&qword_1000DBCA0, &qword_1000DBC88, &qword_1000AA650);
  sub_10000A4A0();
  sub_100008F6C(&qword_1000DBCB0, &type metadata accessor for JSONDecoder);
  Publisher.decode<A, B>(type:decoder:)();
  (*(v18 + 8))(v21, v17);
  sub_100008A38(a7, __src);
  v26 = v63;
  sub_10000A744(v77, v63, &qword_1000DD720, &qword_1000AA648);
  v27 = v80;
  v28 = v80[2];
  v57 = v80 + 2;
  v58 = v28;
  v29 = v76;
  v30 = v65;
  v28(v76, v79, v65);
  v31 = *(v64 + 80);
  v32 = (v31 + 120) & ~v31;
  v33 = *(v27 + 80);
  v34 = (v15 + v33 + v32) & ~v33;
  v64 = v31 | v33;
  v66 += 7;
  v35 = (v66 + v34) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  memcpy((v36 + 16), __src, 0x60uLL);
  v37 = v69;
  *(v36 + 112) = v69;
  sub_100008C04(v26, v36 + v32);
  v38 = v80[4];
  v80 += 4;
  v59 = v38;
  v38(v36 + v34, v29, v30);
  v39 = (v36 + v35);
  v40 = v74;
  v41 = v75;
  *v39 = v74;
  v39[1] = v41;
  sub_100008B28(v40, v41);
  v42 = v37;
  sub_100003998(&qword_1000DBE30, &qword_1000AA730);
  sub_10000A6FC(&qword_1000DBE68, &qword_1000DBE50, &qword_1000AA740);
  v43 = v67;
  v44 = v61;
  Publisher.map<A>(_:)();

  (*(v68 + 8))(v44, v43);
  v45 = v26;
  sub_10000A744(v77, v26, &qword_1000DD720, &qword_1000AA648);
  sub_100008A38(v62, __src);
  v46 = v76;
  v58(v76, v79, v30);
  sub_10000A898(v72, v81);
  v47 = (v31 + 32) & ~v31;
  v48 = (v60 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v33 + v48 + 96) & ~v33;
  v50 = (v66 + v49) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v74;
  v53 = v75;
  *(v51 + 16) = v74;
  *(v51 + 24) = v53;
  sub_100008C04(v45, v51 + v47);
  memcpy((v51 + v48), __src, 0x60uLL);
  v59(v51 + v49, v46, v30);
  sub_10000A8F8(v81, v51 + v50);
  sub_100008B28(v52, v53);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000A6FC(&qword_1000DBE70, &qword_1000DBE58, &qword_1000AA748);
  v54 = v70;
  v55 = v78;
  Publisher.mapError<A>(_:)();

  return (*(v71 + 8))(v55, v54);
}

id sub_1000078D4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_100047124(a2);
  sub_10000A744(a3, a7, &qword_1000DD720, &qword_1000AA648);
  v13 = sub_100003998(&qword_1000DBD38, &qword_1000AA6B0);
  v14 = v13[7];
  v15 = type metadata accessor for URLRequest();
  (*(*(v15 - 8) + 16))(a7 + v14, a4, v15);
  *(a7 + v13[10]) = a1;
  *(a7 + v13[8]) = a2;
  v16 = (a7 + v13[9]);
  *v16 = a5;
  v16[1] = a6;

  sub_100008B28(a5, a6);

  return a2;
}

uint64_t sub_1000079F4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_100047124(a2);
  sub_10000A744(a3, a7, &qword_1000DD720, &qword_1000AA648);
  v14 = sub_100003998(&qword_1000DBDF0, &qword_1000AA710);
  v15 = v14[7];
  v16 = type metadata accessor for URLRequest();
  (*(*(v16 - 8) + 16))(a7 + v15, a4, v16);
  *(a7 + v14[10]) = a1;
  *(a7 + v14[8]) = a2;
  v17 = (a7 + v14[9]);
  *v17 = a5;
  v17[1] = a6;
  sub_100008B28(a5, a6);
  v18 = a2;
}

id sub_100007B04@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_100047124(a2);
  sub_10000A744(a3, a7, &qword_1000DD720, &qword_1000AA648);
  v13 = sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  v14 = v13[7];
  v15 = type metadata accessor for URLRequest();
  (*(*(v15 - 8) + 16))(a7 + v14, a4, v15);
  sub_100008D68(a1, a7 + v13[10]);
  *(a7 + v13[8]) = a2;
  v16 = (a7 + v13[9]);
  *v16 = a5;
  v16[1] = a6;
  sub_100008B28(a5, a6);

  return a2;
}

id sub_100007C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unint64_t a9)
{
  sub_100047124(a4);
  sub_10000A744(a5, a8, &qword_1000DD720, &qword_1000AA648);
  v16 = sub_100003998(&qword_1000DBE30, &qword_1000AA730);
  v17 = v16[7];
  v18 = type metadata accessor for URLRequest();
  (*(*(v18 - 8) + 16))(a8 + v17, a6, v18);
  v19 = (a8 + v16[10]);
  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  *(a8 + v16[8]) = a4;
  v20 = (a8 + v16[9]);
  *v20 = a7;
  v20[1] = a9;

  sub_100008B28(a7, a9);

  return a4;
}

uint64_t sub_100007D68(char *a1, uint64_t (*a2)(uint64_t, uint64_t, char *, void, char *))
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = sub_100003998(&qword_1000DBC80, &qword_1000AA640);
  return a2(v4, v5, &a1[v6[12]], *&a1[v6[16]], &a1[v6[20]]);
}

uint64_t sub_100007DE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100007E20(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100003998(&qword_1000DBCF8, &qword_1000AA680);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_10000A744(v6, &v15, &qword_1000DBD00, &qword_1000AA688);
    v7 = v15;
    v8 = v16;
    result = sub_100007F74(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_100008EA8(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_100007F74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100007FEC(a1, a2, v6);
}

unint64_t sub_100007FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000080A0(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100008118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a4 setValue:v6 forHTTPHeaderField:a3];
}

void sub_100008180()
{
  sub_10000AE68();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v20 = sub_100003998(&qword_1000DBCC8, &qword_1000AA668);
  sub_10000AC48(v20);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v15);
  sub_10000AE80();
  v23[3] = &type metadata for AMSApiRequest;
  v23[4] = &off_1000D0740;
  v16 = swift_allocObject();
  v23[0] = v16;
  v16[2] = v10;
  v16[3] = v8;
  v16[4] = v6;
  v16[5] = v4;
  sub_100008A38(v2, v22);
  sub_10000A898(v23, v21);
  sub_10000AFDC();
  v17 = swift_allocObject();
  memcpy((v17 + 16), v22, 0x60uLL);
  sub_10000A8F8(v21, v17 + 112);
  v18 = sub_100003998(&qword_1000DBCD0, &unk_1000AA670);
  sub_10000AFD0(v18);
  swift_allocObject();
  v19 = v4;

  v22[0] = Future.init(_:)();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  sub_10000A6FC(&qword_1000DBCD8, &qword_1000DBCD0, &unk_1000AA670);
  Publisher.mapError<A>(_:)();

  sub_10000A6FC(&qword_1000DBCE0, &qword_1000DBCC8, &qword_1000AA668);
  Publisher.eraseToAnyPublisher()();
  (*(v12 + 8))(v0, v20);
  sub_100008A94(v23);
  sub_10000AE50();
}

uint64_t sub_100008488()
{
  v1 = type metadata accessor for URL();
  sub_10000AC48(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (v5 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 16);

  v10 = *(v0 + v7 + 32);

  v11 = *(v0 + v7 + 48);

  v12 = *(v0 + v7 + 64);

  v13 = *(v0 + v7 + 80);

  v14 = *(v0 + v7 + 88);

  v15 = *(v0 + v7 + 96);

  v16 = *(v0 + v7 + 112);

  return _swift_deallocObject(v0, v7 + 120, v4 | 7);
}

void sub_10000858C()
{
  v1 = type metadata accessor for URL();
  sub_10000AC84(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  v8 = sub_10000AFBC();
  sub_10000840C(v8, v12, v0 + v10, *(v0 + v9), (v11 + 8), *(v11 + 112));
}

void *sub_100008614(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008658(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = sub_100003998(&qword_1000DBC50, &qword_1000AA628);
  v25 = *(v24 - 8);
  v12 = *(v25 + 64);
  __chkstk_darwin(v24);
  v14 = v23 - v13;
  v29[3] = &type metadata for AMSApiRequest;
  v29[4] = &off_1000D0740;
  v15 = swift_allocObject();
  v29[0] = v15;
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v16 = a4;

  sub_100008180();
  v23[1] = v17;
  v28 = v17;
  sub_100008A38(a6, __src);
  sub_10000A898(v29, v26);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  memcpy((v18 + 24), __src, 0x60uLL);
  sub_10000A8F8(v26, v18 + 120);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100008AE0;
  *(v19 + 24) = v18;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBC58, &qword_1000AA630);
  sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  sub_100003998(&qword_1000DBC60, &qword_1000AA638);
  sub_10000A6FC(&qword_1000DBC68, &qword_1000DBC58, &qword_1000AA630);
  sub_10000A6FC(&qword_1000DBC70, &qword_1000DBC60, &qword_1000AA638);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_10000A6FC(&qword_1000DBC78, &qword_1000DBC50, &qword_1000AA628);
  v20 = v24;
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v25 + 8))(v14, v20);
  sub_100008A94(v29);
  return v21;
}

uint64_t sub_1000089A8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000089F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008A94(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100008AF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008B28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008BAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100008C74()
{
  sub_10000AF9C();
  v0 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v0);
  v2 = (*(v1 + 80) + 120) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for URLRequest();
  sub_10000AC84(v5);
  v7 = v6;
  v9 = v8;
  v10 = (v2 + v4 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = *(v9 + 64);
  v12 = sub_10000ACAC(v10);

  return sub_100007B04(v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_100008D68(uint64_t a1, uint64_t a2)
{
  v4 = _s20RegistrationResponseVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008DCC()
{
  sub_100008A94((v0 + 24));
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 72));
  sub_100008A94((v0 + 112));
  sub_10000AFDC();

  return _swift_deallocObject(v2, v3, v4);
}

unint64_t sub_100008E54()
{
  result = qword_1000DBCF0;
  if (!qword_1000DBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBCF0);
  }

  return result;
}

_OWORD *sub_100008EA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100008EB8()
{
  result = qword_1000DBD28;
  if (!qword_1000DBD28)
  {
    sub_1000089A8(&qword_1000DBD20, &qword_1000AA6A8);
    sub_100008F6C(&qword_1000DBD30, &type metadata accessor for SportingEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBD28);
  }

  return result;
}

uint64_t sub_100008F6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008FB4()
{
  v1 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for URLRequest();
  sub_10000AC48(v7);
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);

  sub_100008A94((v0 + 24));
  v13 = *(v0 + 64);
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 72));

  v14 = v0 + v4;
  v15 = type metadata accessor for ApiRequestMetrics();
  v16 = sub_10000AF70();
  if (!sub_100008B84(v16, v17, v15))
  {
    v69 = v6;
    v18 = type metadata accessor for Date();
    v19 = sub_10000AF70();
    if (!sub_100008B84(v19, v20, v18))
    {
      sub_10000AC74();
      (*(v21 + 8))(v14, v18);
    }

    v22 = v15[5];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v24 = *(v23 + 8);
      v25 = sub_10000ADB0();
      v26(v25);
    }

    v27 = v15[8];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v29 = *(v28 + 8);
      v30 = sub_10000ADB0();
      v31(v30);
    }

    v32 = v15[9];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v34 = *(v33 + 8);
      v35 = sub_10000ADB0();
      v36(v35);
    }

    v37 = v15[10];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v39 = *(v38 + 8);
      v40 = sub_10000ADB0();
      v41(v40);
    }

    v68 = v12;
    sub_10000AE38(v15[12]);
    v42 = v15[13];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v44 = *(v43 + 8);
      v45 = sub_10000ADB0();
      v46(v45);
    }

    v47 = v15[14];
    v48 = type metadata accessor for URL();
    if (!sub_100008B84(v14 + v47, 1, v48))
    {
      sub_10000ACDC(v48);
      (*(v49 + 8))(v14 + v47, v48);
    }

    v50 = v15[15];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v52 = *(v51 + 8);
      v53 = sub_10000ADB0();
      v54(v53);
    }

    v55 = v15[16];
    v12 = v68;
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v57 = *(v56 + 8);
      v58 = sub_10000ADB0();
      v59(v58);
    }

    v60 = v15[17];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v62 = *(v61 + 8);
      v63 = sub_10000ADB0();
      v64(v63);
    }

    sub_10000AE38(v15[19]);
    sub_10000AE38(v15[20]);
    sub_10000AE38(v15[21]);
    sub_10000AE38(v15[22]);
    sub_10000AE38(v15[23]);
    sub_10000AE38(v15[25]);
    v6 = v69;
    v4 = (v3 + 120) & ~v3;
  }

  v65 = (v4 + v6 + v10) & ~v10;
  v66 = (v12 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v9 + 8))(v0 + v65, v7);
  sub_100008BAC(*(v0 + v66), *(v0 + v66 + 8));

  return _swift_deallocObject(v0, v66 + 16, v3 | v10 | 7);
}

uint64_t sub_1000093B0()
{
  v1 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for URLRequest();
  sub_10000AC48(v7);
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);
  sub_100008BAC(*(v0 + 16), *(v0 + 24));
  v13 = v0 + v4;
  v14 = type metadata accessor for ApiRequestMetrics();
  v15 = sub_10000AF70();
  if (!sub_100008B84(v15, v16, v14))
  {
    v70 = v12;
    v71 = v6;
    v17 = type metadata accessor for Date();
    v18 = sub_10000AF70();
    if (!sub_100008B84(v18, v19, v17))
    {
      sub_10000AC74();
      (*(v20 + 8))(v0 + v4, v17);
    }

    v21 = v14[5];
    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v23 = *(v22 + 8);
      v24 = sub_10000ADE0();
      v25(v24);
    }

    v26 = v14[8];
    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v28 = *(v27 + 8);
      v29 = sub_10000ADE0();
      v30(v29);
    }

    v31 = v14[9];
    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v33 = *(v32 + 8);
      v34 = sub_10000ADE0();
      v35(v34);
    }

    v36 = v14[10];
    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v38 = *(v37 + 8);
      v39 = sub_10000ADE0();
      v40(v39);
    }

    v72 = v7;
    sub_10000AE38(v14[12]);
    v41 = v14[13];
    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v43 = *(v42 + 8);
      v44 = sub_10000ADE0();
      v45(v44);
    }

    v46 = v14[14];
    v47 = type metadata accessor for URL();
    if (!sub_100008B84(v13 + v46, 1, v47))
    {
      sub_10000ACDC(v47);
      (*(v48 + 8))(v13 + v46, v47);
    }

    v49 = v14[15];
    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v51 = *(v50 + 8);
      v52 = sub_10000ADE0();
      v53(v52);
    }

    v54 = v14[16];
    v7 = v72;
    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v56 = *(v55 + 8);
      v57 = sub_10000ADE0();
      v58(v57);
    }

    v59 = v14[17];
    if (!sub_10000AD24())
    {
      sub_10000AC74();
      v61 = *(v60 + 8);
      v62 = sub_10000ADE0();
      v63(v62);
    }

    sub_10000AE38(v14[19]);
    sub_10000AE38(v14[20]);
    sub_10000AE38(v14[21]);
    sub_10000AE38(v14[22]);
    sub_10000AE38(v14[23]);
    sub_10000AE38(v14[25]);
    v12 = v70;
    v6 = v71;
  }

  v64 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + v10 + 96) & ~v10;
  v66 = (v12 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v0 + v64);

  sub_100008A94(v67 + 1);
  v68 = v67[6];
  swift_unknownObjectRelease();
  sub_100008A94(v67 + 7);
  (*(v9 + 8))(v0 + v65, v7);
  sub_100008A94((v0 + v66));

  return _swift_deallocObject(v0, v66 + 40, v3 | v10 | 7);
}

uint64_t sub_1000097D8()
{
  v1 = v0[3];

  sub_100008A94(v0 + 4);
  v2 = v0[9];

  sub_100008A94(v0 + 11);
  v3 = v0[16];

  sub_10000AF7C();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100009874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100003998(&qword_1000DBD98, &qword_1000AA6E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &__src[-v9 - 8];
  sub_100008180();
  v18 = v11;
  sub_100008A38(a5, __src);
  v12 = swift_allocObject();
  memcpy((v12 + 16), __src, 0x60uLL);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100009AD0;
  *(v13 + 24) = v12;
  sub_100003998(&qword_1000DBC58, &qword_1000AA630);
  sub_100003998(&qword_1000DBD90, &qword_1000AA6D8);
  sub_10000A6FC(&qword_1000DBC68, &qword_1000DBC58, &qword_1000AA630);
  Publisher.map<A>(_:)();

  sub_10000A6FC(&qword_1000DBDA0, &qword_1000DBD98, &qword_1000AA6E0);
  v14 = Publisher.eraseToAnyPublisher()();
  (*(v7 + 8))(v10, v6);
  return v14;
}

unint64_t sub_100009AD8()
{
  result = qword_1000DBDA8;
  if (!qword_1000DBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDA8);
  }

  return result;
}

uint64_t sub_100009B2C()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_100008A94(v0 + 6);
  v3 = v0[11];

  sub_100008A94(v0 + 13);
  v4 = v0[18];

  sub_10000AFDC();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_100009B9C()
{
  v1 = type metadata accessor for URL();
  sub_10000AC48(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (v5 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

void sub_100009C9C(void (*a1)(void), uint64_t a2)
{
  v5 = type metadata accessor for URL();
  sub_10000AC84(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = *(v9 + 64);
  v12 = sub_10000AFBC();
  sub_1000054B0(v12, v16, v2 + v15, *(v2 + v14), *(v13 + 8), a1, a2);
}

unint64_t sub_100009D38()
{
  result = qword_1000DBDC8;
  if (!qword_1000DBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDC8);
  }

  return result;
}

uint64_t sub_100009DA4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_10000AF9C();
  v2 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v2);
  v4 = (*(v3 + 80) + 120) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for URLRequest();
  sub_10000AC84(v7);
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = *(v11 + 64);
  v14 = sub_10000ACAC((v4 + v6 + v12) & ~v12);

  return a2(v14);
}

uint64_t sub_100009EA4()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_100008A94(v0 + 5);
  v3 = v0[10];

  sub_100008A94(v0 + 12);
  sub_10000AF7C();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100009F08()
{
  v1 = type metadata accessor for URL();
  sub_10000ACDC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));

  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_100009FCC()
{
  v1 = type metadata accessor for URL();
  sub_10000AC84(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10001DBDC(v0 + v6, *(v0 + v7), *(v0 + v7 + 8), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10000A0C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = sub_100003998(&qword_1000DBE28, &qword_1000AA728);
  v25 = *(v24 - 8);
  v12 = *(v25 + 64);
  __chkstk_darwin(v24);
  v14 = v23 - v13;
  v29[3] = &type metadata for AMSApiRequest;
  v29[4] = &off_1000D0740;
  v15 = swift_allocObject();
  v29[0] = v15;
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v16 = a4;

  sub_100008180();
  v23[1] = v17;
  v28 = v17;
  sub_100008A38(a6, __src);
  sub_10000A898(v29, v26);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  memcpy((v18 + 24), __src, 0x60uLL);
  sub_10000A8F8(v26, v18 + 120);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10000A474;
  *(v19 + 24) = v18;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBC58, &qword_1000AA630);
  sub_100003998(&qword_1000DBE30, &qword_1000AA730);
  sub_100003998(&qword_1000DBE38, &qword_1000AA738);
  sub_10000A6FC(&qword_1000DBC68, &qword_1000DBC58, &qword_1000AA630);
  sub_10000A6FC(&qword_1000DBE40, &qword_1000DBE38, &qword_1000AA738);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_10000A6FC(&qword_1000DBE48, &qword_1000DBE28, &qword_1000AA728);
  v20 = v24;
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v25 + 8))(v14, v20);
  sub_100008A94(v29);
  return v21;
}

uint64_t sub_10000A414()
{
  v1 = *(v0 + 16);

  sub_100008A94((v0 + 32));
  v2 = *(v0 + 72);
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 80));
  sub_100008A94((v0 + 120));

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_10000A4A0()
{
  result = qword_1000DBE60;
  if (!qword_1000DBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBE60);
  }

  return result;
}

id sub_10000A4F4()
{
  sub_10000AF9C();
  v0 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v0);
  v2 = (*(v1 + 80) + 120) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for URLRequest();
  sub_10000AC84(v5);
  v7 = v6;
  v9 = v8;
  v10 = (v2 + v4 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = *(v9 + 64);
  v12 = sub_10000ACAC(v10);

  return sub_10000A078(v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_10000A5E0()
{
  sub_10000AF9C();
  v3 = sub_100003998(&qword_1000DD720, &qword_1000AA648);
  sub_10000AC84(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for URLRequest();
  sub_10000AC84(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v7 + *(v10 + 80) + 96) & ~*(v10 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = (v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004732C(v0, v14, v15, v1 + v5, v1 + v7, v1 + v13, v16, v2);
}

uint64_t sub_10000A6FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000089A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003998(a3, a4);
  sub_10000ACDC(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10000A7A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003998(a2, a3);
  sub_10000ACDC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10000A804()
{
  sub_100008A94((v0 + 24));
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 72));

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_10000A854()
{
  result = qword_1000DBE88;
  if (!qword_1000DBE88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBE88);
  }

  return result;
}

uint64_t sub_10000A898(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_10000ACDC(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_10000A8F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000A938(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000A978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000A9E0()
{
  result = qword_1000DBEA0;
  if (!qword_1000DBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBEA0);
  }

  return result;
}

unint64_t sub_10000AA34()
{
  result = qword_1000DBEB0;
  if (!qword_1000DBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBEB0);
  }

  return result;
}

unint64_t sub_10000AAAC()
{
  result = qword_1000DBEB8;
  if (!qword_1000DBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBEB8);
  }

  return result;
}

unint64_t sub_10000AB04()
{
  result = qword_1000DBEC0;
  if (!qword_1000DBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBEC0);
  }

  return result;
}

unint64_t sub_10000AB5C()
{
  result = qword_1000DBEC8;
  if (!qword_1000DBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBEC8);
  }

  return result;
}

unint64_t sub_10000ABB4()
{
  result = qword_1000DBED0;
  if (!qword_1000DBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBED0);
  }

  return result;
}

uint64_t sub_10000ACAC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v3 + 112);
  v5 = (v3 + ((v1 + a1 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  return v2;
}

uint64_t sub_10000AD08()
{

  return sub_100008B84(v0 + v2, 1, v1);
}

uint64_t sub_10000AD24()
{

  return sub_100008B84(v1 + v0, 1, v2);
}

uint64_t sub_10000ADBC()
{
  result = v0;
  v3 = *(v1 - 288);
  v4 = *(v1 - 312);
  return result;
}

void sub_10000AE18()
{
  v1 = *(v0 - 232);
  v2 = *(v1 + 16);
  *(v0 - 416) = v1 + 16;
  *(v0 - 408) = v2;
}

uint64_t sub_10000AE38@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_10000AEA0()
{
  v2 = *(v0 - 336);
  v3 = *(v0 - 384);

  return Publisher.map<A>(_:)();
}

void sub_10000AEE0()
{
  v1 = *(v0 - 232);
  v2 = *(v1 + 32);
  *(v0 - 232) = v1 + 32;
  *(v0 - 400) = v2;
}

void *sub_10000AEF8(void *a1)
{

  return memcpy(a1, (v1 - 184), 0x60uLL);
}

uint64_t sub_10000AFA8()
{
  result = v0;
  v3 = *(v1 - 232);
  return result;
}

uint64_t sub_10000AFBC()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_10000AFD0(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t sub_10000AFE8()
{
  v2 = *(v0 - 224);

  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_10000B008()
{
}

uint64_t sub_10000B020(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10000ADA0();
  v72 = type metadata accessor for IntentsServices.PayloadPrivacy();
  sub_10000BD44();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_10000ADA0();
  v13 = v12 - v11;
  v14 = sub_100003998(&unk_1000DBF90, &unk_1000AA9A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v68 = type metadata accessor for IntentsServices.DispatcherOptions();
  sub_10000BD44();
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  sub_10000ADA0();
  v23 = v22 - v21;
  v24 = String._bridgeToObjectiveC()();
  v73 = a2;
  v25 = [a2 valueForEntitlement:v24];

  v66 = v2;
  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v77 = v74;
  v78 = v75;
  if (*(&v75 + 1))
  {
    if (sub_10000BD54())
    {
      v70 = v85;
      v71 = v86;
      goto LABEL_16;
    }
  }

  else
  {
    sub_10000B860(&v77);
  }

  v26 = String._bridgeToObjectiveC()();
  v27 = [v73 valueForEntitlement:v26];

  if (v27)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v77 = v74;
  v78 = v75;
  if (*(&v75 + 1))
  {
    v28 = sub_10000BD54();
    v29 = v85;
    v30 = v86;
    if (!v28)
    {
      v30 = 0;
      v29 = 0;
    }

    v70 = v29;
    v71 = v30;
  }

  else
  {
    sub_10000B860(&v77);
    v70 = 0;
    v71 = 0;
  }

LABEL_16:
  v31 = [objc_opt_self() defaultEnvironment];
  *(&v78 + 1) = sub_10000B8C8();
  v79 = &protocol witness table for LNEnvironment;
  *&v77 = v31;
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  (*(v7 + 104))(v13, enum case for IntentsServices.PayloadPrivacy.default(_:), v72);
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v32 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  v34 = v33;
  (*(v17 + 8))(v23, v68);
  sub_100008A94(&v77);
  v35 = sub_1000499E0();
  v37 = v36;
  v38 = qword_1000DB9B8;
  swift_unknownObjectRetain();
  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_1000E6CC0;
  type metadata accessor for LiveActivityAppIntentService();
  swift_allocObject();
  v40 = sub_100026A0C(v35, v37, v32, v34, v39);
  v41 = *(v66 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_entitlement + 8);
  v69 = *(v66 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_entitlement);
  sub_10000BC8C(v66 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_apsListening, &v77);
  v42 = qword_1000DB9C8;

  v67 = v41;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_1000E6CD0;
  v44 = objc_opt_self();

  v45 = [v44 defaultManager];
  NSFileManager.currentContainerURL.getter();

  v46 = type metadata accessor for PlaysStore();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = PlaysStore.init(storeUrl:)();
  sub_10000BC8C(v66 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_metadataProvider, &v82);
  sub_10000BC8C(v66 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_tempoApiProvider, &v83);
  sub_10000BC8C(v66 + OBJC_IVAR____TtC7sportsd25SportsKitRequestXPCServer_supressionManager, v84);
  v80 = v43;
  v81 = v49;
  v50 = type metadata accessor for ActivityAuthorization();
  v51 = [objc_allocWithZone(v50) init];
  v52 = sub_1000499E0();
  v54 = v53;
  *(&v75 + 1) = v50;
  v76 = &off_1000D1900;
  *&v74 = v51;
  type metadata accessor for ActivityCapUtility();
  v55 = swift_allocObject();
  sub_10000B90C(&v74, v50);
  sub_10000BD44();
  v57 = *(v56 + 64);
  __chkstk_darwin(v58);
  sub_10000ADA0();
  v61 = (v60 - v59);
  (*(v62 + 16))(v60 - v59);
  v63 = *v61;
  v55[5] = v50;
  v55[6] = &off_1000D1900;
  v55[2] = v63;
  v55[7] = v52;
  v55[8] = v54;
  sub_100008A94(&v74);

  v84[5] = v55;

  v64 = sub_10000B95C(v69, v67, v73, &v77, v70, v71, v40);
  sub_100091820();

  swift_unknownObjectRelease();
  return 1;
}

id sub_10000B784()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000B860(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000B8C8()
{
  result = qword_1000DBFA0;
  if (!qword_1000DBFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBFA0);
  }

  return result;
}

uint64_t sub_10000B90C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_10000B95C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v35 = a5;
  v36 = a6;
  v37 = a4;
  v38 = a3;
  v39 = a1;
  v40 = a2;
  v8 = *a7;
  v9 = objc_allocWithZone(type metadata accessor for SportsKitRequestXPCSession());
  v42[3] = v8;
  v42[4] = &protocol witness table for LiveActivityAppIntentService;
  v42[0] = a7;
  *&v9[OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_cancellables] = &_swiftEmptySetSingleton;
  v10 = &v9[OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_bundleId];
  *v10 = 0;
  *(v10 + 1) = 0;
  v34 = OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_activityCapUtility;
  v11 = type metadata accessor for ActivityAuthorization();
  v12 = objc_allocWithZone(v11);

  v13 = [v12 init];
  v14 = sub_1000499E0();
  v16 = v15;
  v41[3] = v11;
  v41[4] = &off_1000D1900;
  v41[0] = v13;
  type metadata accessor for ActivityCapUtility();
  v17 = swift_allocObject();
  v18 = sub_10000B90C(v41, v11);
  v19 = *(*(v11 - 1) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = (&v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = *v22;
  v17[5] = v11;
  v17[6] = &off_1000D1900;
  v17[2] = v24;
  v17[7] = v14;
  v17[8] = v16;
  sub_100008A94(v41);

  v25 = v35;
  *&v9[v34] = v17;
  v26 = *(v10 + 1);
  v27 = v36;
  *v10 = v25;
  *(v10 + 1) = v27;

  v28 = v37;
  sub_10000BC30(v37, &v9[OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_subscriptionOperation]);
  sub_10000BC8C(v42, &v9[OBJC_IVAR____TtC7sportsd26SportsKitRequestXPCSession_liveActivityAppIntentService]);
  v29 = v38;
  v30 = sub_1000917D0(v39, v40, v29);
  [v29 setExportedObject:v30];
  v31 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7sportsd25SportsdXPCDaemon_Protocol_];
  [v29 setExportedInterface:v31];

  sub_10000BCF0(v28);
  sub_100008A94(v42);
  return v30;
}

uint64_t sub_10000BC8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000BD54()
{

  return swift_dynamicCast();
}

uint64_t sub_10000BD74(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10000ADA0();
  v71 = v7 - v6;
  v8 = type metadata accessor for IntentsServices.PayloadPrivacy();
  sub_10000BD44();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  sub_10000ADA0();
  v16 = v15 - v14;
  v17 = sub_100003998(&unk_1000DBF90, &unk_1000AA9A0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = type metadata accessor for IntentsServices.DispatcherOptions();
  sub_10000BD44();
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  sub_10000ADA0();
  v27 = v26 - v25;
  v28 = [objc_opt_self() defaultEnvironment];
  v78[3] = sub_10000B8C8();
  v78[4] = &protocol witness table for LNEnvironment;
  v78[0] = v28;
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  (*(v10 + 104))(v16, enum case for IntentsServices.PayloadPrivacy.default(_:), v8);
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v29 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  v31 = v30;
  (*(v21 + 8))(v27, v19);
  sub_100008A94(v78);
  v32 = sub_1000499E0();
  v34 = v33;
  v35 = qword_1000DB9B8;
  swift_unknownObjectRetain();
  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_1000E6CC0;
  v37 = type metadata accessor for LiveActivityAppIntentService();
  swift_allocObject();
  v38 = sub_100026A0C(v32, v34, v29, v31, v36);
  v39 = *(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_entitlement + 8);
  v73 = *(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_entitlement);
  sub_10000BC8C(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_apsListening, v78);
  v40 = qword_1000DB9C8;

  v72 = v39;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_1000E6CD0;
  v42 = objc_opt_self();

  v43 = [v42 defaultManager];
  NSFileManager.currentContainerURL.getter();

  v44 = type metadata accessor for PlaysStore();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = PlaysStore.init(storeUrl:)();
  sub_10000BC8C(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_metadataProvider, &v79);
  sub_10000BC8C(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_tempoApiProvider, &v80);
  sub_10000BC8C(v3 + OBJC_IVAR____TtC7sportsd30DirectActivityRequestXPCServer_supressionManager, v81);
  v78[5] = v41;
  v78[6] = v47;
  v48 = type metadata accessor for ActivityAuthorization();
  v49 = [objc_allocWithZone(v48) init];
  v50 = sub_1000499E0();
  v52 = v51;
  v77 = &off_1000D1900;
  v76 = v48;
  v75[0] = v49;
  type metadata accessor for ActivityCapUtility();
  v53 = swift_allocObject();
  sub_10000B90C(v75, v48);
  sub_10000BD44();
  v55 = *(v54 + 64);
  __chkstk_darwin(v56);
  sub_10000ADA0();
  v59 = (v58 - v57);
  (*(v60 + 16))(v58 - v57);
  v61 = *v59;
  v53[5] = v48;
  v53[6] = &off_1000D1900;
  v53[2] = v61;
  v53[7] = v50;
  v53[8] = v52;
  sub_100008A94(v75);

  v81[5] = v53;
  type metadata accessor for SportsManager();

  v62 = static SportsManager.shared.getter();
  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  v64 = objc_allocWithZone(type metadata accessor for DirectActivityRequestXPCSession());
  v77 = &protocol witness table for LiveActivityAppIntentService;
  v76 = v37;
  v75[0] = v38;
  *&v64[OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_cancellables] = &_swiftEmptySetSingleton;
  sub_10000BC30(v78, &v64[OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_subscriptionOperation]);
  sub_10000BC8C(v75, &v64[OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_liveActivityAppIntentService]);
  v65 = &v64[OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_areLiveActivitiesEnabledForBundleId];
  *v65 = sub_10005D7BC;
  v65[1] = 0;
  v66 = &v64[OBJC_IVAR____TtC7sportsd31DirectActivityRequestXPCSession_autostartStatus];
  *v66 = sub_10000C60C;
  v66[1] = v63;
  swift_retain_n();

  v67 = a2;
  v68 = sub_1000917D0(v73, v72, v67);
  [v67 setExportedObject:v68];
  v69 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7sportsd38DirectSessionRequestXPCDaemon_Protocol_];
  [v67 setExportedInterface:v69];

  sub_10000BCF0(v78);
  sub_100008A94(v75);
  sub_100091820();

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_10000C5D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C66C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365536F706D6574 && a2 == 0xEE0064496E6F6973;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E756F4365747962 && a2 == 0xE900000000000074;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

Swift::Int sub_10000C8F4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_10000C93C(char a1)
{
  result = 0x746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x7365536F706D6574;
      break;
    case 2:
      result = 0x6556616D65686373;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    case 5:
      result = 0x6E756F4365747962;
      break;
    case 6:
      result = 0x496C656E6E616863;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10000CA48(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_10000C8BC(*a1, *a2);
}

Swift::Int sub_10000CA5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_10000C8F4(*v1);
}

void sub_10000CA68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_10000C8CC(a1, *v2);
}

Swift::Int sub_10000CA74(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_10000C8CC(v7, *v2);
  return Hasher._finalize()();
}

uint64_t sub_10000CABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53[0] = a4;
  type metadata accessor for Date();
  sub_10000BD44();
  v57 = v8;
  v58 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10000DC58();
  v54 = v11;
  sub_10000BD44();
  v59 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  sub_10000DC58();
  v55 = v16;
  type metadata accessor for CloudChannelMessageProcessor.CloudChannelMessageContentWrapper.CodingKeys();
  swift_getWitnessTable();
  v61 = type metadata accessor for KeyedDecodingContainer();
  sub_10000BD44();
  v53[1] = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  v56 = a3;
  v60 = type metadata accessor for CloudChannelMessageProcessor.CloudChannelMessageContentWrapper();
  sub_10000BD44();
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v25);
  v27 = v53 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v63 = a1;
  sub_100008614(a1, v29);
  v30 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    return sub_100008A94(v63);
  }

  v31 = v22;
  v32 = v54;
  v70 = 0;
  v33 = v55;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v59 + 32))(v27, v33, a2);
  v69 = 1;
  sub_10000DC4C();
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v60;
  v36 = &v27[*(v60 + 36)];
  *v36 = v34;
  v36[1] = v37;
  v68 = 2;
  sub_10000DC4C();
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = &v27[v35[10]];
  *v40 = v38;
  v40[1] = v41;
  v67 = 3;
  sub_10000DC4C();
  *&v27[v35[11]] = KeyedDecodingContainer.decode(_:forKey:)();
  v66 = 4;
  sub_10000D9EC();
  v42 = v32;
  v43 = v58;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v57 + 32))(&v27[v35[12]], v42, v43);
  v65 = 5;
  sub_10000DC4C();
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = &v27[v35[13]];
  *v45 = v44;
  v45[8] = v46 & 1;
  v64 = 6;
  sub_10000DC4C();
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = v48;
  v50 = &v27[v35[14]];
  v51 = sub_10000DC3C();
  v52(v51);
  *v50 = v47;
  v50[1] = v49;
  (*(v31 + 16))(v53[0], v27, v35);
  sub_100008A94(v63);
  return (*(v31 + 8))(v27, v35);
}

uint64_t sub_10000D070(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_10000C93C(*v1);
}

uint64_t sub_10000D07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_10000C66C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_10000D0AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *v1;
  return sub_100004B88();
}

uint64_t sub_10000D0D0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_10000C8B4();
  *a2 = result;
  return result;
}

uint64_t sub_10000D100(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10000D154(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

BOOL sub_10000D1C8(void **a1, void *a2)
{
  v3 = sub_10001B460(*a1);
  if (v4)
  {
    if (a2[2])
    {
      v5 = sub_100049B40(v3, v4, a2);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_10000D22C(void **a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_10001B46C(*a1);
    if (v6)
    {
      if (v5 == a2 && v6 == a3)
      {
        v8 = 1;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_10000D2B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_10000D2E0()
{
  sub_10000D2B8();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_10000D364(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      sub_10000D988(319, &qword_1000DC100);
      if (v4 <= 0x3F)
      {
        sub_10000D988(319, &qword_1000DC108);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10000D450(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  v16 = v14 + 8;
  if (v12 < a2)
  {
    v17 = ((*(*(v8 - 8) + 64) + ((v16 + ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v12 + 1;
    }

    if (v19 >= 0x10000)
    {
      LODWORD(v20) = 4;
    }

    else
    {
      LODWORD(v20) = 2;
    }

    if (v19 < 0x100)
    {
      LODWORD(v20) = 1;
    }

    if (v19 >= 2)
    {
      v20 = v20;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v17);
        if (!v21)
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v21 = *(a1 + v17);
        if (v21)
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x10000D694);
      case 4:
        v21 = *(a1 + v17);
        if (!v21)
        {
          break;
        }

LABEL_25:
        v23 = v21 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      default:
        break;
    }
  }

  if (v7 == v12)
  {
    v25 = a1;
    v10 = v7;
    v15 = v5;
LABEL_35:

    return sub_100008B84(v25, v10, v15);
  }

  v26 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v11 & 0x80000000) != 0)
  {
    v25 = (v16 + ((((v26 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14;
    goto LABEL_35;
  }

  v27 = *(v26 + 8);
  if (v27 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

void sub_10000D6A8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((*(*(v10 - 8) + 64) + ((v16 + 8 + ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + ((v16 + 8 + ((((((v15 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v16) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((*(*(v10 - 8) + 64) + ((v16 + 8 + ((((((v15 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v16) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((*(*(v10 - 8) + 64) + ((v16 + 8 + ((((((v15 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v16) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v22 = ~v14 + a2;
      bzero(a1, v17);
      *a1 = v22;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v21;
        return;
      case 2:
        *(a1 + v17) = v21;
        return;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v17) = v21;
        return;
      default:
        return;
    }
  }

  switch(v20)
  {
    case 1:
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    case 2:
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    case 3:
LABEL_48:
      __break(1u);
      JUMPOUT(0x10000D948);
    case 4:
      *(a1 + v17) = 0;
      goto LABEL_34;
    default:
LABEL_34:
      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v14)
      {
        v23 = a1;
        v24 = a2;
        v12 = v9;
        v10 = v7;
      }

      else
      {
        v25 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            *v25 = a2 & 0x7FFFFFFF;
            v25[1] = 0;
          }

          else
          {
            v25[1] = (a2 - 1);
          }

          return;
        }

        v23 = (v16 + 8 + ((((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
        v24 = a2;
      }

      sub_100008E2C(v23, v24, v12, v10);
      return;
  }
}

void sub_10000D988(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_10000D9EC()
{
  result = qword_1000DC110[0];
  if (!qword_1000DC110[0])
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000DC110);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveActivityAutostartContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10000DAE0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000DBACLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10000DC3C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

uint64_t sub_10000DC6C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF060, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000DCC0(char a1)
{
  if (a1)
  {
    return 7759204;
  }

  else
  {
    return 1685025392;
  }
}

uint64_t sub_10000DD0C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000DC6C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000DD3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000DCC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000DD68()
{
  v0 = sub_100003998(&qword_1000DC238, &unk_1000AAC00);
  v8 = *(v0 - 8);
  v9 = v0;
  v1 = *(v8 + 64);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v10 = *(qword_1000E6CC0 + 24);

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DBD60, &qword_1000ABEC0);
  sub_100003998(&qword_1000DC240, &qword_1000AAC10);
  sub_10000A6FC(&qword_1000DBD70, &qword_1000DBD60, &qword_1000ABEC0);
  sub_10000A6FC(&qword_1000DC248, &qword_1000DC240, &qword_1000AAC10);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_10000A6FC(&qword_1000DC250, &qword_1000DC238, &unk_1000AAC00);
  v4 = v9;
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v8 + 8))(v3, v4);
  return v5;
}

uint64_t sub_10000DFA8@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v1 = sub_100003998(&qword_1000DC258, &qword_1000AAC18);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21 - v3;
  v22 = sub_100003998(&qword_1000DC260, &unk_1000AAC20);
  v21 = *(v22 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v22);
  v7 = &v21 - v6;
  sub_100003998(&qword_1000DC430, &qword_1000AA610);
  inited = swift_initStackObject();
  v9 = 0;
  *(inited + 16) = xmmword_1000AABD0;
  *(inited + 32) = 1936553065;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x6567617473;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 7630441;
  *(inited + 72) = 0xE300000000000000;
  *(inited + 80) = 24945;
  *(inited + 88) = 0xE200000000000000;
  *(inited + 96) = 7759204;
  *(inited + 104) = 0xE300000000000000;
  *(inited + 112) = 6516592;
  *(inited + 120) = 0xE300000000000000;
  *(inited + 128) = 1953719668;
  *(inited + 136) = 0xE400000000000000;
  while (1)
  {
    v10 = v9 + 16;
    if (v9 == 112)
    {
      break;
    }

    v11 = inited + v9;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);

    v26 = URL.absoluteString.getter();
    v27 = v14;
    v24 = v12;
    v25 = v13;
    v15 = type metadata accessor for Locale();
    sub_100008E2C(v4, 1, 1, v15);
    sub_10000E304();
    StringProtocol.range<A>(of:options:range:locale:)();
    v17 = v16;
    sub_10000E358(v4);

    v9 = v10;
    if ((v17 & 1) == 0)
    {
      swift_setDeallocating();
      sub_100086754();
      LOBYTE(v26) = 1;
      goto LABEL_6;
    }
  }

  swift_setDeallocating();
  sub_100086754();
  LOBYTE(v26) = 0;
LABEL_6:
  Just.init(_:)();
  sub_10000A6FC(&qword_1000DC268, &qword_1000DC260, &unk_1000AAC20);
  v18 = v22;
  v19 = Publisher.eraseToAnyPublisher()();
  result = (*(v21 + 8))(v7, v18);
  *v23 = v19;
  return result;
}

unint64_t sub_10000E304()
{
  result = qword_1000DC410;
  if (!qword_1000DC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC410);
  }

  return result;
}

uint64_t sub_10000E358(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DC258, &qword_1000AAC18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SportsEnvironment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportsEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000E514);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000E55C()
{
  result = qword_1000DC270;
  if (!qword_1000DC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC270);
  }

  return result;
}

uint64_t sub_10000E5B0()
{
  type metadata accessor for CloudChannelTaskActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1000E6C00 = v0;
  return result;
}

uint64_t sub_10000E5EC()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000E668()
{
  if (qword_1000DB960 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000E6C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CloudChannelTaskActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

void sub_10000E6FC(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = &APSEnvironmentDevelopment;
    if (!v1)
    {
      v4 = &APSEnvironmentProduction;
    }

    v5 = *v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (qword_1000DBA20 != -1)
    {
      sub_10001C088();
    }

    v9 = type metadata accessor for Logger();
    sub_100007DE8(v9, qword_1000E6D48);
    sub_10001C418();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_10001C4D0();
      v32 = swift_slowAlloc();
      *v12 = 136315138;
      v13 = sub_10001C400();
      *(v12 + 4) = sub_1000170D4(v13, v14, v15);
      _os_log_impl(&_mh_execute_header, v10, v11, "Current environment: %s", v12, 0xCu);
      sub_100008A94(v32);
      sub_10000B008();
      sub_10000B008();
    }

    sub_10001BDC0(0, &qword_1000DC5D8, OS_dispatch_queue_ptr);
    sub_10001C418();

    v16 = static OS_dispatch_queue.main.getter();
    v17 = objc_allocWithZone(APSConnection);
    v18 = sub_10001C400();
    v21 = sub_100016410(v18, v19, 0xD000000000000015, v20, v16);
    v22 = OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection;
    v23 = *&v3[OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection];
    *&v3[OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection] = v21;

    v24 = *&v3[v22];
    if (v24)
    {
      sub_10001B4E4(&off_1000CF0B0, v24, &selRef__setEnabledTopics_);
      v25 = *&v3[v22];
      if (v25)
      {
        sub_10001B4E4(&off_1000CF0E0, v25, &selRef__setOpportunisticTopics_);
        v26 = *&v3[v22];
        if (v26)
        {
          [v26 setDelegate:v3];
        }
      }
    }

    v27 = &v3[OBJC_IVAR____TtC7sportsd11ApsListener_currentAPSConnectionEnvironment];
    v28 = *&v3[OBJC_IVAR____TtC7sportsd11ApsListener_currentAPSConnectionEnvironment + 8];
    *v27 = v6;
    v27[1] = v8;

    v29 = *&v3[v22];
    if (v29)
    {
      v30 = *&v3[OBJC_IVAR____TtC7sportsd11ApsListener_connection];
      v31 = v29;

      os_unfair_lock_lock(v30 + 7);
      sub_10000E998(&v30[4], v31);
      os_unfair_lock_unlock(v30 + 7);
    }
  }
}

void sub_10000E998(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      *a1 = a2;
      *(a1 + 8) = 1;
      v2 = a2;
    }
  }

  else
  {
    v3 = *a1;
    *a1 = a2;
    *(a1 + 8) = 1;
    v4 = v3[2];
    if (v4)
    {
      v5 = v3 + 4;
      v6 = a2;
      do
      {
        v7 = *v5++;
        **(*(v7 + 64) + 40) = v6;
        v8 = v6;
        swift_continuation_resume();
        --v4;
      }

      while (v4);
    }

    else
    {
      v9 = a2;
    }

    sub_10001BE00(v3, 0);
  }
}

void sub_10000EA5C()
{
  v1 = type metadata accessor for CloudChannelPreferences.AuditStrategy();
  v2 = sub_10000AC48(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  static CloudChannelPreferences.subscriptionAuditStrategy.getter();
  v9 = v4[11];
  v10 = sub_10001C284();
  if (v11(v10) == enum case for CloudChannelPreferences.AuditStrategy.nextPush(_:))
  {
    v12 = v4[12];
    v13 = sub_10001C284();
    v14(v13);
    v15 = *v8;
    v16 = OBJC_IVAR____TtC7sportsd11ApsListener_cloudChannelAuditDebouncer;
    v17 = *&v0[OBJC_IVAR____TtC7sportsd11ApsListener_cloudChannelAuditDebouncer];
    if (v17)
    {
      [v17 invalidate];
    }

    sub_10001BDC0(0, &qword_1000DC5B0, NSTimer_ptr);
    sub_10001C594();
    v18 = swift_allocObject();
    *(v18 + 16) = v0;
    v19 = v0;
    v20 = sub_100011220(0, sub_10001BCC8, v18, v15);
    v21 = *&v0[v16];
    *&v0[v16] = v20;

    v22 = [objc_opt_self() mainRunLoop];
    v23 = *&v0[v16];
    if (v23)
    {
      v24 = v22;
      [v22 addTimer:v23 forMode:NSRunLoopCommonModes];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v25 = v4[1];
    v26 = sub_10001C284();
    v27(v26);
  }
}

uint64_t sub_10000EC58()
{
  sub_10001BEC4();
  type metadata accessor for CloudChannelSubscriptionManager();
  *(v0 + 16) = static CloudChannelSubscriptionManager.shared.getter();
  sub_10001BE48();
  sub_10001BA4C(v1, 255, v2);
  sub_10001C548();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10001C224();
  v3 = sub_10001BEE8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10000ECFC()
{
  sub_10001BF48();
  v1 = *(v0 + 16);
  dispatch thunk of CloudChannelSubscriptionManager.clearChannelMap()();
  *(v0 + 24) = 0;
  v2 = *(v0 + 16);

  sub_10001BE84();

  return v3();
}

uint64_t sub_10000EDA8()
{
  sub_10001BEC4();
  v1 = *(v0 + 16);

  sub_10001BEDC();
  v3 = *(v0 + 24);

  return v2();
}

uint64_t sub_10000EE04(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  v3 = _swiftEmptyArrayStorage;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = BYTE6(a2);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_43;
      }

      v8 = HIDWORD(a1) - a1;
LABEL_6:
      if (!v8)
      {
        goto LABEL_35;
      }

      v46 = _swiftEmptyArrayStorage;
      sub_100017B68(0, v8 & ~(v8 >> 63), 0);
      v37 = v7;
      v38 = v5;
      v35 = v6;
      if (v2)
      {
        if (v2 == 2)
        {
          v11 = *(v5 + 16);
        }

        else
        {
          v11 = v5;
        }
      }

      else
      {
        v11 = 0;
      }

      if (v8 < 0)
      {
        goto LABEL_42;
      }

      v3 = v46;
      v36 = v5 >> 32;
      v33 = v5 >> 16;
      v34 = v5 >> 8;
      v31 = v5 >> 40;
      v32 = v5 >> 24;
      v29 = HIBYTE(v5);
      v30 = HIWORD(v5);
      v39 = v5;
      break;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

      goto LABEL_44;
    case 3uLL:
      goto LABEL_35;
    default:
      v8 = BYTE6(a2);
      goto LABEL_6;
  }

  do
  {
    if (v2 == 1)
    {
      if (v11 < v38 || v11 >= v36)
      {
        goto LABEL_38;
      }

      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_45;
      }

      v15 = v14;
      v16 = __DataStorage._offset.getter();
      v17 = v11 - v16;
      if (__OFSUB__(v11, v16))
      {
        goto LABEL_40;
      }

LABEL_31:
      v12 = *(v15 + v17);
      goto LABEL_32;
    }

    if (v2)
    {
      if (v11 < *(v5 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      if (v11 >= *(v5 + 24))
      {
        goto LABEL_39;
      }

      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
        goto LABEL_46;
      }

      v15 = v18;
      v19 = __DataStorage._offset.getter();
      v17 = v11 - v19;
      if (__OFSUB__(v11, v19))
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }

    if (v11 >= v37)
    {
      goto LABEL_37;
    }

    LOBYTE(v40) = v5;
    BYTE1(v40) = v34;
    BYTE2(v40) = v33;
    BYTE3(v40) = v32;
    BYTE4(v40) = v35;
    BYTE5(v40) = v31;
    BYTE6(v40) = v30;
    HIBYTE(v40) = v29;
    v41 = a2;
    v42 = BYTE2(a2);
    v43 = BYTE3(a2);
    v44 = BYTE4(a2);
    v45 = BYTE5(a2);
    v12 = *(&v40 + v11);
LABEL_32:
    sub_100003998(&qword_1000DC508, &qword_1000AAF50);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000AA5B0;
    *(v20 + 56) = &type metadata for UInt8;
    *(v20 + 64) = &protocol witness table for UInt8;
    *(v20 + 32) = v12;
    v21 = String.init(format:_:)();
    v23 = v22;
    v46 = v3;
    v25 = v3[2];
    v24 = v3[3];
    if (v25 >= v24 >> 1)
    {
      sub_100017B68((v24 > 1), v25 + 1, 1);
      v3 = v46;
    }

    v3[2] = v25 + 1;
    v26 = &v3[2 * v25];
    v26[4] = v21;
    v26[5] = v23;
    ++v11;
    --v8;
    v5 = v39;
  }

  while (v8);
LABEL_35:
  v40 = v3;
  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60);
  v27 = BidirectionalCollection<>.joined(separator:)();

  return v27;
}

uint64_t sub_10000F1CC()
{
  v1 = sub_100003998(&qword_1000DC550, &qword_1000AAF98);
  sub_10000AC48(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v6);
  v7 = sub_100003998(&qword_1000DC558, &unk_1000AAFA0);
  sub_10000AC48(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v12);
  v14 = v21 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC7sportsd11ApsListener_pushToken + 8);
  if (v15)
  {
    v21[0] = *(v0 + OBJC_IVAR____TtC7sportsd11ApsListener_pushToken);
    v21[1] = v15;

    Just.init(_:)();
    sub_10000A6FC(&qword_1000DC578, &qword_1000DC558, &unk_1000AAFA0);
    v16 = Publisher.eraseToAnyPublisher()();
    (*(v9 + 8))(v14, v7);
  }

  else
  {
    v21[0] = *(v0 + OBJC_IVAR____TtC7sportsd11ApsListener_tokenPublisher);
    sub_100003998(&qword_1000DC560, &qword_1000AB830);
    sub_10000A6FC(&qword_1000DC568, &qword_1000DC560, &qword_1000AB830);
    Publisher.first()();
    sub_10000A6FC(&qword_1000DC570, &qword_1000DC550, &qword_1000AAF98);
    sub_10001C548();
    v16 = Publisher.eraseToAnyPublisher()();
    v17 = *(v3 + 8);
    v18 = sub_10000AF64();
    v19(v18);
  }

  return v16;
}

uint64_t sub_10000F440()
{
  sub_10001BEC4();
  *(v1 + 88) = v0;
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28();
  }

  v2 = qword_1000E6C00;
  sub_10001BFBC();
  sub_10001BA4C(v3, v4, v5);
  if (v2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_10000F514, v6, v8);
}

uint64_t sub_10000F514()
{
  sub_10001BF48();
  v1 = v0 + 2;
  v2 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_10000F5F8;
  v3 = swift_continuation_init();
  v4 = *(v2 + OBJC_IVAR____TtC7sportsd11ApsListener_connection);
  os_unfair_lock_lock(v4 + 7);
  sub_10000F6E0(&v4[4], v3);
  os_unfair_lock_unlock(v4 + 7);

  return _swift_continuation_await(v1);
}

uint64_t sub_10000F5F8()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *(v1 + 80);
  v3 = *(*v0 + 8);

  return v3(v2);
}

void sub_10000F6E0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      **(*(a2 + 64) + 40) = v4;
      v5 = v4;
      swift_continuation_resume();
      return;
    }

    sub_100003998(&qword_1000DC440, &qword_1000AAED8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000AA5B0;
    *(v8 + 32) = a2;
    *a1 = v8;
  }

  else
  {
    v6 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = v4[2];
      sub_100016A58();
      v4 = v10;
    }

    v7 = v4[2];
    if (v7 >= v4[3] >> 1)
    {
      sub_100016A58();
      v4 = v11;
    }

    v4[2] = v7 + 1;
    v4[v7 + 4] = a2;
    *a1 = v4;
  }

  *(a1 + 8) = 0;
}

void sub_10000F94C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = sub_10000EE04(a2, a3);
  v5 = &v3[OBJC_IVAR____TtC7sportsd11ApsListener_pushToken];
  v6 = *&v3[OBJC_IVAR____TtC7sportsd11ApsListener_pushToken + 8];
  *v5 = v4;
  v5[1] = v7;

  v8 = *&v3[OBJC_IVAR____TtC7sportsd11ApsListener_tokenPublisher];
  v9 = sub_10001C400();
  v21[0] = sub_10000EE04(v9, v10);
  v21[1] = v11;
  PassthroughSubject.send(_:)();

  if (qword_1000DBA18 != -1)
  {
    sub_10001C0A8();
  }

  v12 = type metadata accessor for Logger();
  sub_100007DE8(v12, qword_1000E6D30);
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_10001C4D0();
    v17 = swift_slowAlloc();
    v21[0] = v17;
    *v16 = 136380675;
    v18 = v5[1];
    if (v18)
    {
      v19 = *v5;
      v20 = v18;
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    sub_1000170D4(v19, v20, v21);
    sub_10001C61C();

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "Did receive push token %{private}s", v16, 0xCu);
    sub_100008A94(v17);
    sub_10000B008();
    sub_10000B008();
  }
}

void sub_10000FB88()
{
  sub_10000AE68();
  v1 = v0;
  v3 = v2;
  v4 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  sub_10001C3C4(v4);
  v6 = *(v5 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v7);
  v9 = v45 - v8;
  v10 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v10);
  v12 = *(v11 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v13);
  v15 = v45 - v14;
  sub_10001B7F8(v3, &selRef_channelID);
  if (v16)
  {

    if (qword_1000DB9D0 != -1)
    {
      swift_once();
    }

    v47[0] = v3;

    PassthroughSubject.send(_:)();

    sub_10000EA5C();
    goto LABEL_16;
  }

  v17 = sub_10001B7F8(v3, &selRef_topic);
  if (!v18)
  {
    if (qword_1000DBA20 != -1)
    {
      sub_10001C088();
    }

    v31 = type metadata accessor for Logger();
    sub_100007DE8(v31, qword_1000E6D48);
    v46 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v46, v32, "This message has no topic", v33, 2u);
      sub_10001C17C();
    }

LABEL_21:
    sub_10000AE50();

    return;
  }

  v19 = v17;
  v20 = v18;
  if (qword_1000DBA18 != -1)
  {
    sub_10001C0A8();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100007DE8(v21, qword_1000E6D30);

  v45[1] = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    sub_10001C4D0();
    v46 = v19;
    v25 = sub_10001C490();
    v47[0] = v25;
    LODWORD(v19->isa) = 136315138;
    *(&v19->isa + 4) = sub_1000170D4(v46, v20, v47);
    _os_log_impl(&_mh_execute_header, v23, v24, "Did receive push notification for topic %s", v19, 0xCu);
    sub_100008A94(v25);
    sub_10000B008();
    v19 = v46;
    sub_10000B008();
  }

  v26 = v19 == 0xD000000000000011 && 0x80000001000B0480 == v20;
  if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v27 = type metadata accessor for TaskPriority();
    sub_100008E2C(v15, 1, 1, v27);
    sub_10001C594();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v28;
    v29[5] = v3;
    v30 = v3;
    sub_10004A77C();

LABEL_16:
    sub_10000AE50();
    return;
  }

  v36 = v19 == 0xD000000000000020 && 0x80000001000B04A0 == v20;
  if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    v46 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v41))
    {
      v42 = sub_10001C4D0();
      v43 = swift_slowAlloc();
      v47[0] = v43;
      *v42 = 136315138;
      v44 = sub_1000170D4(v19, v20, v47);

      *(v42 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v46, v41, "Topic not supported: %s", v42, 0xCu);
      sub_100008A94(v43);
      sub_10000B008();
      sub_10001C17C();

      goto LABEL_16;
    }

    goto LABEL_21;
  }

  sub_10000BC8C(v1 + OBJC_IVAR____TtC7sportsd11ApsListener_messageProcessing, v47);
  sub_100008614(v47, v47[3]);
  v37 = sub_10001C1DC();
  v38 = sub_10001B478(v37);
  if (v38)
  {
    v39 = v38;

    v40 = type metadata accessor for Date();
    sub_100008E2C(v9, 1, 1, v40);
    sub_1000A5B88(v39, 1, v9, nullsub_1, 0);

    sub_10001BB44(v9, &qword_1000DC5A0, &unk_1000AB0E0);
    sub_100008A94(v47);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_10001010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = *(*(sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000101A8, 0, 0);
}

uint64_t sub_1000101A8()
{
  sub_10001BEC4();
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    if (qword_1000DBA50 != -1)
    {
      swift_once();
    }

    v0[14] = qword_1000E6DD8;
    v3 = sub_10001C530();

    return _swift_task_switch(v3, v4, v5);
  }

  else
  {
    v6 = v0[12];

    sub_10001BEDC();

    return v7();
  }
}

uint64_t sub_100010294()
{
  sub_10001BEC4();
  v1 = *(v0 + 112);
  *(v0 + 120) = sub_10006EC84() & 1;
  sub_10001C740();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000102FC()
{
  sub_10001BF48();
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = sub_1000104AC();
  if (v1 == 1)
  {
    if (v3)
    {
      v2 = *(v0 + 104);
      v4 = OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection;
      v5 = *(v2 + OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection);
      if (v5)
      {
        sub_10001B4E4(&off_1000CF110, v5, &selRef__setEnabledTopics_);
        v6 = *(v2 + v4);
        if (v6)
        {
          v7 = &off_1000CF140;
LABEL_10:
          sub_10001B4E4(v7, v6, &selRef__setOpportunisticTopics_);
        }
      }
    }
  }

  else if ((v3 & 1) == 0)
  {
    v2 = *(v0 + 104);
    v8 = OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection;
    v9 = *(v2 + OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection);
    if (v9)
    {
      sub_10001B4E4(_swiftEmptyArrayStorage, v9, &selRef__setEnabledTopics_);
      v6 = *(v2 + v8);
      if (v6)
      {
        v7 = &off_1000CF170;
        goto LABEL_10;
      }
    }
  }

  v10 = *(v0 + 88);
  sub_10000BC8C(*(v0 + 104) + OBJC_IVAR____TtC7sportsd11ApsListener_messageProcessing, v0 + 16);
  sub_100008614((v0 + 16), *(v0 + 40));
  v11 = sub_10001C1DC();
  result = sub_10001B478(v11);
  if (result)
  {
    v13 = result;
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = type metadata accessor for Date();
    sub_100008E2C(v14, 1, 1, v16);
    v17 = *v2;
    sub_1000A5B88(v13, 0, v14, nullsub_1, 0);

    sub_10001BB44(v14, &qword_1000DC5A0, &unk_1000AB0E0);
    sub_100008A94((v0 + 16));
    v18 = *(v0 + 96);

    sub_10001BEDC();

    return v19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000104AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7sportsd11ApsListener_apsConnection);
  if (!v1)
  {
    return 0;
  }

  result = sub_10001B558(v1);
  if (result)
  {
    v3 = *(result + 16);

    return v3 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010574(uint64_t a1, void *a2)
{
  v3 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_100008E2C(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  v9 = a2;
  sub_100032C10(0, 0, v6, &unk_1000AAFF0, v8);
}

uint64_t sub_100010678()
{
  sub_10001BEC4();
  *(v0 + 24) = type metadata accessor for CloudChannelSubscriptionManager();
  *(v0 + 32) = static CloudChannelSubscriptionManager.shared.getter();
  sub_10001BE48();
  sub_10001BA4C(v1, 255, v2);
  sub_10001C548();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10001C224();
  v3 = sub_10001BEE8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100010720()
{
  sub_10001BF48();
  v1 = v0[4];
  v0[5] = dispatch thunk of CloudChannelSubscriptionManager.audit(clearExpiredEntries:)();
  v0[6] = 0;
  v2 = v0[4];

  sub_10001C740();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000107B0()
{
  sub_10001BF48();
  v1 = v0[3];
  static CloudChannelSubscriptionManager.topic.getter();
  v0[7] = v2;
  v3 = swift_task_alloc();
  v4 = sub_10001C424(v3);
  *v4 = v5;
  v4[1] = sub_100010858;
  v6 = v0[2];
  sub_10001C648(v0[5]);

  return sub_100010A44();
}

uint64_t sub_100010858()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    sub_10001C740();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[7];
    v13 = v3[5];

    sub_10001BE84();

    return v14();
  }
}

uint64_t sub_100010980()
{
  sub_10001BEC4();
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  sub_10001BEDC();

  return v3();
}

uint64_t sub_1000109DC()
{
  sub_10001BEC4();
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[9];
  sub_10001BEDC();

  return v4();
}

uint64_t sub_100010A44()
{
  sub_10001BF48();
  sub_10001C674(v1, v2, v3);
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28();
  }

  *(v0 + 56) = qword_1000E6C00;
  v4 = swift_task_alloc();
  v5 = sub_10001C424(v4);
  *v5 = v6;
  sub_10001BF34(v5);

  return sub_100013184();
}

uint64_t sub_100010AFC()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  sub_10001C728(v7);
  if (v0)
  {
    sub_10001BF80();

    return v8();
  }

  else
  {
    v10 = *(v3 + 56);
    v11 = sub_10001BF70();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_1000110BC()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  v4 = *(v3 + 88);
  v5 = *(v3 + 56);
  v6 = *v0;
  sub_10001BE74();
  *v7 = v6;
  sub_10001C710(v8);
  v9 = sub_10001BF60();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000111B0()
{
  sub_10001BEC4();
  v1 = v0[12];
  sub_10001B5BC(v0[10], v0[4], v0[5], v1, &selRef_unsubscribeFromChannels_forTopic_);

  sub_10001BE84();

  return v2();
}

id sub_100011220(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000112F0;
  v9[3] = &unk_1000D0500;
  v6 = _Block_copy(v9);
  v7 = [swift_getObjCClassFromMetadata() timerWithTimeInterval:a1 & 1 repeats:v6 block:a4];
  _Block_release(v6);

  return v7;
}

void sub_1000112F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100011358()
{
  sub_10001C524();
  v2 = v1;
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28();
  }

  v3 = *v2;
  v4 = *(v2 + 32);
  if (*(v2 + 32))
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    if (v4 == 1)
    {
      v8 = swift_task_alloc();
      v0[3] = v8;
      *v8 = v0;
      sub_10001C0F0(v8);
      sub_10001C2BC();
      sub_10001C74C();

      return sub_1000125F4();
    }

    else
    {
      v13 = swift_task_alloc();
      v0[4] = v13;
      *v13 = v0;
      sub_10001C0F0(v13);
      sub_10001C2BC();
      sub_10001C74C();

      return sub_100012BBC();
    }
  }

  else
  {
    v11 = swift_task_alloc();
    v0[2] = v11;
    *v11 = v0;
    sub_10001C0F0(v11);
    sub_10001C74C();

    return sub_1000117A4();
  }
}

uint64_t sub_100011504()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;

  sub_10001BEDC();

  return v5();
}

uint64_t sub_1000115E4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;

  sub_10001BEDC();

  return v5();
}

uint64_t sub_1000116C4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_10001BE74();
  *v4 = v3;

  sub_10001BEDC();

  return v5();
}

uint64_t sub_1000117A4()
{
  sub_10001BEC4();
  v1[4] = v2;
  v1[5] = v0;
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28();
  }

  v1[6] = qword_1000E6C00;
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  sub_10001C0F0(v3);

  return sub_100013D9C();
}

uint64_t sub_100011860()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_10001BF80();

    return v9();
  }

  else
  {
    v11 = *(v3 + 48);
    v12 = sub_10001BF70();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t sub_100011980()
{
  sub_10001BEC4();
  *(v0 + 72) = type metadata accessor for CloudChannelSubscriptionManager();
  *(v0 + 80) = static CloudChannelSubscriptionManager.shared.getter();
  sub_10001BE48();
  sub_10001BA4C(v1, 255, v2);
  sub_10001C548();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10001C224();
  v3 = sub_10001BEE8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100011A28()
{
  sub_10001BF48();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[4];
  v4 = dispatch thunk of CloudChannelSubscriptionManager.signal(demand:)();
  v0[11] = v2;
  v0[12] = v4;
  v0[13] = v5;
  if (v2)
  {
    v6 = v0[6];
    v7 = sub_100012488;
  }

  else
  {
    v8 = v0[10];
    v9 = v0[6];

    v7 = sub_100011ACC;
    v6 = v9;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100011ACC()
{
  sub_10001BF48();
  v1 = v0[9];
  static CloudChannelSubscriptionManager.topic.getter();
  v0[14] = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_100011B78;
  v4 = v0[5];
  sub_10000AF64();

  return sub_100013184();
}

uint64_t sub_100011B78()
{
  sub_10001C524();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_10001BE74();
  *v6 = v5;
  v7 = v4[15];
  v8 = *v1;
  *v6 = *v1;

  v9 = v4[14];
  if (v0)
  {
    v10 = v5[12];
    v11 = v5[13];

    v12 = v8[1];
    sub_10001C74C();

    __asm { BRAA            X1, X16 }
  }

  v15 = v5[6];

  v5[16] = v3;
  sub_10001C74C();

  return _swift_task_switch(v16, v17, v18);
}

void sub_100011CEC()
{
  sub_10001C6BC();
  v22 = _swiftEmptyArrayStorage;
  if (v0[16])
  {
    v1 = v0[16];
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = sub_1000163EC(v1);
  v3 = 0;
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    sub_10001B7F8(v4, &selRef_channelID);
    v8 = v7;

    ++v3;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = v22[2];
        sub_10001BFA0();
        sub_100016520();
        v22 = v11;
      }

      sub_10001C2DC(v22);
      if (v9)
      {
        sub_10001C40C();
        sub_100016520();
        v22 = v12;
      }

      sub_10001C2CC(v22);
      v3 = v6;
    }
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[9];

  v16 = sub_100015240(v22);
  v0[17] = sub_1000155BC(v14, v16);

  v0[18] = sub_10001513C(v17, v13);
  static CloudChannelSubscriptionManager.topic.getter();
  v0[19] = v18;
  v19 = swift_task_alloc();
  v0[20] = v19;
  *v19 = v0;
  v19[1] = sub_100011EF0;
  v20 = v0[5];
  sub_10001C208();

  sub_100010A44();
}

uint64_t sub_100011EF0()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  v3[21] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = sub_1000124E4;
  }

  else
  {
    v12 = v3[18];
    v11 = v3[19];
    v13 = v3[6];

    v10 = sub_100012008;
    v9 = v13;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100012008()
{
  sub_10001BF48();
  v1 = v0[9];
  static CloudChannelSubscriptionManager.topic.getter();
  v0[22] = v2;
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_1000120B4;
  v4 = v0[5];
  sub_10001C648(v0[12]);

  return sub_100015610();
}

uint64_t sub_1000120B4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = sub_100012570;
  }

  else
  {
    v11 = v3[22];
    v12 = v3[6];

    v10 = sub_1000121C4;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000121C4()
{
  v22 = v0;
  if (qword_1000DBA40 != -1)
  {
    sub_10001BE60();
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6DA8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  v10 = v0[12];
  v9 = v0[13];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 136315394;
    v0[2] = v10;
    v20 = v6;
    sub_100003998(&qword_1000DC400, &qword_1000AAEC0);
    sub_10000A6FC(&qword_1000DC408, &qword_1000DC400, &qword_1000AAEC0);
    sub_10000E304();
    sub_10001C2EC();
    v12 = Sequence<>.joined(separator:)();
    v14 = sub_1000170D4(v12, v13, &v21);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;

    v0[3] = sub_10001513C(v8, v9);
    v15 = Sequence<>.joined(separator:)();
    v17 = v16;

    sub_1000170D4(v15, v17, &v21);
    sub_10001C418();

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v20, "active channels: [%s], expired channels: [%s]", v11, 0x16u);
    swift_arrayDestroy();
    sub_10001C17C();
    sub_10000B008();
  }

  else
  {
  }

  sub_10001BE84();

  return v18();
}

uint64_t sub_100012488()
{
  sub_10001BEC4();
  v1 = *(v0 + 80);

  v2 = *(v0 + 88);
  sub_10001BEDC();

  return v3();
}

uint64_t sub_1000124E4()
{
  sub_10001BF48();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];

  v6 = v0[21];
  sub_10001BEDC();

  return v7();
}

uint64_t sub_100012570()
{
  sub_10001BF48();
  v1 = v0[22];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[24];
  sub_10001BEDC();

  return v6();
}

uint64_t sub_1000125F4()
{
  sub_10001BF48();
  sub_10001C3A0(v1, v2, v3, v4);
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28();
  }

  *(v0 + 56) = qword_1000E6C00;
  v5 = swift_task_alloc();
  v6 = sub_10001C424(v5);
  *v6 = v7;
  sub_10001BF34(v6);

  return sub_100013184();
}

uint64_t sub_1000126AC()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  sub_10001C728(v7);
  if (v0)
  {
    sub_10001BF80();

    return v8();
  }

  else
  {
    v10 = *(v3 + 56);
    v11 = sub_10001BF70();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_100012A68()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  v4 = *(v3 + 88);
  v5 = *(v3 + 56);
  v6 = *v0;
  sub_10001BE74();
  *v7 = v6;
  sub_10001C710(v8);
  v9 = sub_10001BF60();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100012B5C()
{
  sub_10001BEC4();
  v2 = sub_10001C340();
  sub_10001B668(v2, v3, v4, v5);

  sub_10001BE84();

  return v6();
}

uint64_t sub_100012BBC()
{
  sub_10001BF48();
  sub_10001C3A0(v1, v2, v3, v4);
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28();
  }

  *(v0 + 56) = qword_1000E6C00;
  v5 = swift_task_alloc();
  v6 = sub_10001C424(v5);
  *v6 = v7;
  sub_10001BF34(v6);

  return sub_100013184();
}

uint64_t sub_100012C74()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  sub_10001C728(v7);
  if (v0)
  {
    sub_10001BF80();

    return v8();
  }

  else
  {
    v10 = *(v3 + 56);
    v11 = sub_10001BF70();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_100013030()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  v4 = *(v3 + 88);
  v5 = *(v3 + 56);
  v6 = *v0;
  sub_10001BE74();
  *v7 = v6;
  sub_10001C710(v8);
  v9 = sub_10001BF60();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100013124()
{
  sub_10001BEC4();
  v2 = sub_10001C340();
  sub_10001B6D0(v2, v3, v4, v5);

  sub_10001BE84();

  return v6();
}

uint64_t sub_100013184()
{
  sub_10001BEC4();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28();
  }

  v1[6] = qword_1000E6C00;
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  sub_10001C0F0(v4);

  return sub_10000F440();
}

uint64_t sub_10001323C()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  v4 = *(v3 + 56);
  v5 = *(v3 + 48);
  v6 = *v0;
  sub_10001BE74();
  *v7 = v6;
  *(v9 + 64) = v8;

  v10 = sub_10001BF60();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100013338()
{
  sub_10001C524();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  sub_10001BFBC();
  v7 = sub_10001BA4C(v4, v5, v6);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = *(v0 + 32);
  *(v8 + 16) = v1;
  *(v8 + 24) = v3;
  *(v8 + 32) = v9;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  v12 = sub_100003998(&qword_1000DC450, &qword_1000AAEE8);
  *v11 = v0;
  v11[1] = sub_10001347C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v2, v7, 0xD00000000000001BLL, 0x80000001000B1270, sub_10001B8A8, v8, v12);
}

uint64_t sub_10001347C()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = sub_1000135F0;
  }

  else
  {
    v11 = v3[9];
    v12 = v3[6];

    v10 = sub_10001358C;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10001358C()
{
  sub_10001BEC4();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000135F0()
{
  sub_10001BEC4();
  v1 = *(v0 + 72);

  sub_10001BEDC();
  v3 = *(v0 + 88);

  return v2();
}

void sub_100013654(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003998(&qword_1000DC458, &qword_1000AAEF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v9 + 32))(v15 + v14, v12, v8);
  aBlock[4] = sub_10001B9AC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100013CF8;
  aBlock[3] = &unk_1000D0488;
  v16 = _Block_copy(aBlock);

  sub_10001B738(a3, a4, v16, a2);
  _Block_release(v16);
}

uint64_t sub_100013840(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC460, &qword_1000AAEF8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for CloudChannelError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v34 = a3;
    swift_errorRetain();
    if (qword_1000DBA40 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100007DE8(v15, qword_1000E6DA8);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v33 = v9;
      v19 = v18;
      v32 = swift_slowAlloc();
      v36 = v32;
      *v19 = 136315138;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = sub_1000170D4(v20, v21, &v36);

      *(v19 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch registered channels - error: %s", v19, 0xCu);
      sub_100008A94(v32);

      v9 = v33;
    }

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v36 = 0xD00000000000002DLL;
    v37 = 0x80000001000B12B0;
    swift_getErrorValue();
    v23._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v23);

    v24 = v37;
    *v14 = v36;
    v14[1] = v24;
    (*(v11 + 104))(v14, enum case for CloudChannelError.failedToFetchRegisteredChannels(_:), v10);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      if (*&Strong[OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor])
      {
        v27 = *&Strong[OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor];

        (*(v11 + 16))(v9, v14, v10);
        sub_100008E2C(v9, 0, 1, v10);
        sub_10003F3A8(v9);

        sub_10001BB44(v9, &qword_1000DC460, &qword_1000AAEF8);
      }

      else
      {
      }
    }

    sub_10001BA4C(&qword_1000DC468, 255, &type metadata accessor for CloudChannelError);
    v29 = swift_allocError();
    (*(v11 + 16))(v30, v14, v10);
    v35 = v29;
    sub_100003998(&qword_1000DC458, &qword_1000AAEF0);
    CheckedContinuation.resume(throwing:)();

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v36 = a1;

    sub_100003998(&qword_1000DC458, &qword_1000AAEF0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100013CF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_10001BDC0(0, &qword_1000DC438, PKPublicChannel_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_100013D9C()
{
  sub_10001BEC4();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_100003998(&qword_1000DC460, &qword_1000AAEF8);
  sub_10001C3C4(v3);
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v1[7] = v6;
  sub_10000AC84(v6);
  v1[8] = v7;
  v9 = *(v8 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v10 = type metadata accessor for CloudChannelSubscription.CacheValue();
  v1[11] = v10;
  sub_10000AC84(v10);
  v1[12] = v11;
  v13 = *(v12 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v14 = type metadata accessor for CloudChannelSubscription.Demand();
  v1[15] = v14;
  sub_10000AC84(v14);
  v1[16] = v15;
  v17 = *(v16 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28();
  }

  v1[19] = qword_1000E6C00;
  v18 = sub_10001C530();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_100013F74()
{
  sub_10001BEC4();
  if (qword_1000DB9E0 != -1)
  {
    swift_once();
  }

  *(v0 + 160) = qword_1000E6CE8;
  v1 = sub_10001C530();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100014004()
{
  sub_10001BEC4();
  v1 = v0[19];
  v0[21] = *(v0[20] + 112);

  v2 = sub_10001C53C();

  return _swift_task_switch(v2, v3, 0);
}

uint64_t sub_100014070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, int a12, int a13, uint64_t *a14, uint64_t a15)
{
  sub_10001C324();
  sub_10001C63C();
  if (v16[21])
  {
    v21 = async function pointer to Task.value.getter[1];
    v22 = swift_task_alloc();
    v16[22] = v22;
    sub_100003998(&qword_1000DC480, &unk_1000AB420);
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    *v22 = v16;
    v22[1] = sub_100014330;
    sub_10001C040();

    return Task.value.getter(v23, v24, v25, v26, v27);
  }

  else
  {
    v16[24] = 0;
    v29 = v16[4];
    v30 = *(v29 + 16);
    if (v30)
    {
      sub_10001C0C8(v29);
      sub_10001C688();
      v58 = v18;
      do
      {
        sub_10001C668();
        v31 = sub_10000AF64();
        v20(v31);
        v32 = sub_10001BF24();
        v20(v32);
        v33 = *a14;
        v34 = sub_10001BFB0();
        v36 = v35(v34);
        if (v36 == a13)
        {
          sub_10001C668();
          v43 = *a11;
          v44 = sub_10001BFB0();
          v45(v44);
          sub_10001513C(*v17, &_swiftEmptySetSingleton);
          v46 = sub_10001C628();
          v47(v46);
        }

        else
        {
          v48 = v16[18];
          if (v36 == a12)
          {
            sub_10001C2FC(v36, v37, v38, v39, v40, v41, v42);

            (*v19)(v48, v17);
          }

          else
          {
            v49 = sub_10001C24C();
            v20(v49);
            v50 = sub_10001BFB0();
            v20(v50);
            v20 = v18;
            v18 = v58;
          }
        }

        v15 += a15;
        --v30;
      }

      while (v30);
    }

    v16[25] = &_swiftEmptySetSingleton;
    v16[26] = type metadata accessor for CloudChannelSubscriptionManager();
    v16[27] = static CloudChannelSubscriptionManager.shared.getter();
    sub_10001BE48();
    v16[28] = sub_10001BA4C(v51, 255, v52);
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_10001C224();
    sub_10001BEE8();
    sub_10001C040();

    return _swift_task_switch(v53, v54, v55);
  }
}

uint64_t sub_100014330()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  sub_10001BE74();
  *v8 = v7;
  v3[23] = v0;

  if (v0)
  {
    v9 = v3[19];
    v10 = sub_100014D40;
  }

  else
  {
    v11 = v3[19];
    v12 = v3[3];

    v10 = sub_100014440;
    v9 = v11;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100014440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, int a12, int a13, uint64_t *a14, uint64_t a15)
{
  sub_10001C324();
  sub_10001C63C();
  v21 = v16[21];

  v16[24] = v16[23];
  v22 = v16[4];
  v23 = *(v22 + 16);
  if (v23)
  {
    sub_10001C0C8(v22);
    sub_10001C688();
    v51 = v18;
    do
    {
      sub_10001C668();
      v24 = sub_10000AF64();
      v20(v24);
      v25 = sub_10001BF24();
      v20(v25);
      v26 = *a14;
      v27 = sub_10001BFB0();
      v29 = v28(v27);
      if (v29 == a13)
      {
        sub_10001C668();
        v36 = *a11;
        v37 = sub_10001BFB0();
        v38(v37);
        sub_10001513C(*v17, &_swiftEmptySetSingleton);
        v39 = sub_10001C628();
        v40(v39);
      }

      else
      {
        v41 = v16[18];
        if (v29 == a12)
        {
          sub_10001C2FC(v29, v30, v31, v32, v33, v34, v35);

          (*v19)(v41, v17);
        }

        else
        {
          v42 = sub_10001C24C();
          v20(v42);
          v43 = sub_10001BFB0();
          v20(v43);
          v20 = v18;
          v18 = v51;
        }
      }

      v15 += a15;
      --v23;
    }

    while (v23);
  }

  v16[25] = &_swiftEmptySetSingleton;
  v16[26] = type metadata accessor for CloudChannelSubscriptionManager();
  v16[27] = static CloudChannelSubscriptionManager.shared.getter();
  sub_10001BE48();
  v16[28] = sub_10001BA4C(v44, 255, v45);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10001C224();
  sub_10001BEE8();
  sub_10001C040();

  return _swift_task_switch(v46, v47, v48);
}

uint64_t sub_100014650()
{
  sub_10001BF48();
  v1 = v0[27];
  v2 = v0[24];
  v0[29] = dispatch thunk of CloudChannelSubscriptionManager.readChannelMap()();
  v0[30] = v2;
  v3 = v0[27];
  if (v2)
  {
    v4 = v0[25];
    v5 = v0[19];

    v6 = sub_100014DE0;
    v7 = v5;
  }

  else
  {
    v8 = v0[19];

    v6 = sub_100014700;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100014700()
{
  v50 = v0[29];
  v1 = v0[12];
  v2 = v0[25];
  v3 = *(v2 + 56);
  v43 = v2 + 56;
  v4 = *(v2 + 32);
  sub_10001BF08();
  v7 = v6 & v5;
  v47 = v9;
  v48 = v0;
  v10 = (63 - v8) >> 6;
  v46 = v11;
  v45 = (v0[8] + 8);

  v13 = 0;
  v44 = v10;
  while (v7)
  {
    v14 = v48;
LABEL_9:
    v16 = v14[29];
    if (!*(v50 + 16))
    {
      v37 = v14[25];
      goto LABEL_18;
    }

    v17 = (*(v47 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v7)))));
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_100017538();
    if ((v21 & 1) == 0)
    {
      v38 = v14[29];
      v39 = v14[25];

LABEL_18:

      v40 = v14[25];
LABEL_19:

      v41 = swift_task_alloc();
      v14[31] = v41;
      *v41 = v14;
      v41[1] = sub_100014AA8;
      v42 = v14[20];

      return sub_100033514();
    }

    v7 &= v7 - 1;
    v23 = v14[13];
    v22 = v14[14];
    v24 = v14[10];
    v25 = v14[9];
    v26 = v14[7];
    v27 = v14[11];
    (*(v46 + 16))(v23, *(v50 + 56) + *(v46 + 72) * v20);
    (*(v46 + 32))(v22, v23, v27);
    CloudChannelSubscription.CacheValue.expiration.getter();
    static Date.now.getter();
    sub_10001BA4C(&qword_1000DC478, 255, &type metadata accessor for Date);
    v49 = dispatch thunk of static Comparable.< infix(_:_:)();

    v28 = *v45;
    (*v45)(v25, v26);
    v28(v24, v26);
    v29 = v27;
    v10 = v44;
    result = (*(v46 + 8))(v22, v29);
    if (v49)
    {
      v14 = v48;
      v30 = v48[29];
      v31 = v48[25];

      goto LABEL_19;
    }
  }

  v14 = v48;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v10)
    {
      break;
    }

    v7 = *(v43 + 8 * v15);
    ++v13;
    if (v7)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  v32 = v48[25];

  v33 = v48[29];
  v34 = v48[17];
  v35 = v48[18];
  sub_10001BEF8();

  sub_10001BE84();

  return v36();
}

uint64_t sub_100014AA8()
{
  sub_10001BF48();
  v2 = *v1;
  sub_10001BE94();
  *v4 = v3;
  v5 = *(v2 + 248);
  v6 = *v1;
  sub_10001BED0();
  *v7 = v6;
  *(v9 + 256) = v8;
  *(v9 + 264) = v0;

  v10 = *(v2 + 152);
  if (v0)
  {
    v11 = sub_100014EF8;
  }

  else
  {
    v11 = sub_100014BCC;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100014BCC()
{
  sub_10001BF48();
  v1 = v0[28];
  v2 = v0[26];
  v0[34] = static CloudChannelSubscriptionManager.shared.getter();
  sub_10000AF64();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10001C224();
  v3 = sub_10001BEE8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100014C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  v12 = v10[33];
  v11 = v10[34];
  v13 = v10[32];
  dispatch thunk of CloudChannelSubscriptionManager.updateChannelMap(_:)();
  v10[35] = v12;
  if (v12)
  {
    v14 = v10[19];
    sub_10001C530();
    sub_10001C358();

    return _swift_task_switch(v15, v16, v17);
  }

  else
  {
    v19 = v10[34];

    v20 = v10[32];
    v21 = v10[17];
    v22 = v10[18];
    sub_10001BEF8();

    sub_10001BE84();
    sub_10001C358();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t sub_100014D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  v11 = v10[21];

  v12 = v10[23];
  v14 = v10[17];
  v13 = v10[18];
  sub_10001BEF8();

  sub_10001BEDC();
  sub_10001C358();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_100014DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  v12 = v10[30];
  if (*(v10[5] + OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor))
  {
    sub_10001C1E8();
    swift_errorRetain();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    sub_10001C610();
    type metadata accessor for CloudChannelError();
    sub_10001BF24();
    v13 = swift_dynamicCast();
    sub_10001C198(v13);

    sub_10001BB44(v11, &qword_1000DC460, &qword_1000AAEF8);
  }

  swift_willThrow();
  v15 = v10[17];
  v14 = v10[18];
  sub_10001BEF8();

  sub_10001BEDC();
  sub_10001C358();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_100014EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  v12 = v10[33];
  if (*(v10[5] + OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor))
  {
    sub_10001C1E8();
    swift_errorRetain();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    sub_10001C610();
    type metadata accessor for CloudChannelError();
    sub_10001BF24();
    v13 = swift_dynamicCast();
    sub_10001C198(v13);

    sub_10001BB44(v11, &qword_1000DC460, &qword_1000AAEF8);
  }

  swift_willThrow();
  v15 = v10[17];
  v14 = v10[18];
  sub_10001BEF8();

  sub_10001BEDC();
  sub_10001C358();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_100015010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  v12 = v10[34];
  v13 = v10[32];

  v14 = v10[35];
  if (*(v10[5] + OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor))
  {
    sub_10001C1E8();
    swift_errorRetain();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    sub_10001C610();
    type metadata accessor for CloudChannelError();
    sub_10001BF24();
    v15 = swift_dynamicCast();
    sub_10001C198(v15);

    sub_10001BB44(v11, &qword_1000DC460, &qword_1000AAEF8);
  }

  swift_willThrow();
  v17 = v10[17];
  v16 = v10[18];
  sub_10001BEF8();

  sub_10001BEDC();
  sub_10001C358();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_10001513C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100019204(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100015240(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_100019204(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

void sub_100015300()
{
  sub_10000AE68();
  v1 = v0;
  v2 = type metadata accessor for Sport();
  v3 = sub_10000AC48(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v22 - v11;
  v13 = *(v1 + 16);
  sub_10001BA4C(&qword_1000DC4E0, 255, &type metadata accessor for Sport);
  v22[1] = Set.init(minimumCapacity:)();
  v14 = *(v1 + 16);
  if (v14)
  {
    v17 = *(v5 + 16);
    v15 = v5 + 16;
    v16 = v17;
    v18 = *(v15 + 64);
    sub_10001C290();
    v22[0] = v1;
    v20 = v1 + v19;
    v21 = *(v15 + 56);
    do
    {
      v16(v9, v20, v2);
      sub_100019348(v12, v9);
      (*(v15 - 8))(v12, v2);
      v20 += v21;
      --v14;
    }

    while (v14);
  }

  else
  {
    sub_10001C1DC();
  }

  sub_10000AE50();
}

uint64_t sub_1000154A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100019204(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000155BC(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100019618(a1);
    return a2;
  }

  else
  {

    return sub_100019B28(a1, a2);
  }
}

uint64_t sub_100015610()
{
  sub_10001BF48();
  sub_10001C674(v1, v2, v3);
  if (qword_1000DB960 != -1)
  {
    sub_10001BE28();
  }

  *(v0 + 56) = qword_1000E6C00;
  v4 = swift_task_alloc();
  v5 = sub_10001C424(v4);
  *v5 = v6;
  sub_10001BF34(v5);

  return sub_100013184();
}

uint64_t sub_1000156C8()
{
  sub_10001BF48();
  sub_10001BF54();
  v3 = v2;
  sub_10001BE94();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  sub_10001C728(v7);
  if (v0)
  {
    sub_10001BF80();

    return v8();
  }

  else
  {
    v10 = *(v3 + 56);
    v11 = sub_10001BF70();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_100015C88()
{
  sub_10001BEC4();
  sub_10001BF54();
  sub_10001BED0();
  *v2 = v1;
  v4 = *(v3 + 88);
  v5 = *(v3 + 56);
  v6 = *v0;
  sub_10001BE74();
  *v7 = v6;
  sub_10001C710(v8);
  v9 = sub_10001BF60();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100015D7C()
{
  sub_10001BEC4();
  v1 = v0[12];
  sub_10001B5BC(v0[10], v0[4], v0[5], v1, &selRef_subscribeToChannels_forTopic_);

  sub_10001BE84();

  return v2();
}

void sub_100015DEC()
{
  sub_10000AE68();
  v1 = v0;
  v3 = v2;
  v4 = sub_100003998(&qword_1000DC460, &qword_1000AAEF8);
  sub_10001C3C4(v4);
  v6 = *(v5 + 64);
  sub_10000ACFC();
  v8 = __chkstk_darwin(v7);
  v42 = (v37.n128_u64 - v9);
  if (!v3)
  {
    goto LABEL_32;
  }

  if (v3 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_30:
    sub_10000AE50();
    return;
  }

  v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_4:
  if (v10 >= 1)
  {
    v11 = 0;
    v43 = v3 & 0xC000000000000001;
    v44 = OBJC_IVAR____TtC7sportsd11ApsListener_scoreboardProcessor;
    v40 = "ibe to channel [";
    v41 = "registered channels - error: ";
    v39 = enum case for CloudChannelError.failedToSubscribe(_:);
    v8.n128_u64[0] = 136315650;
    v37 = v8;
    v38 = v3;
    do
    {
      if (v43)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v3 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = sub_10001B7F8(v12, &selRef_channelID);
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v47 = v16;
      v17 = 0xE000000000000000;
      if (v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      v19 = sub_10001B7F8(v13, &selRef_pushTopic);
      if (v20)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      v45 = v21;
      if (v20)
      {
        v17 = v20;
      }

      v46 = [v13 failureReason];
      if (qword_1000DBA40 != -1)
      {
        sub_10001BE60();
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100007DE8(v22, qword_1000E6DA8);
      sub_10001C1DC();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v1;
        v26 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v26 = v37.n128_u32[0];
        *(v26 + 4) = sub_1000170D4(v45, v17, &v49);
        *(v26 + 12) = 2080;
        *(v26 + 14) = sub_1000170D4(v47, v18, &v49);
        *(v26 + 22) = 1024;
        *(v26 + 24) = v46;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to subscribe to channel [%s:%s] with failure reason: %d", v26, 0x1Cu);
        swift_arrayDestroy();
        sub_10000B008();
        v1 = v25;
        v3 = v38;
        sub_10000B008();
      }

      if (*(v1 + v44))
      {
        v49 = 0;
        v50 = 0xE000000000000000;

        _StringGuts.grow(_:)(62);
        v27._countAndFlagsBits = 0xD000000000000020;
        v27._object = (v41 | 0x8000000000000000);
        String.append(_:)(v27);
        v28._countAndFlagsBits = v45;
        v28._object = v17;
        String.append(_:)(v28);

        v29._countAndFlagsBits = 58;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
        v30._countAndFlagsBits = v47;
        v30._object = v18;
        String.append(_:)(v30);

        v31._object = (v40 | 0x8000000000000000);
        v31._countAndFlagsBits = 0xD000000000000017;
        String.append(_:)(v31);
        v48 = v46;
        v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v32);

        v33 = v50;
        v34 = v42;
        *v42 = v49;
        *(v34 + 8) = v33;
        v35 = type metadata accessor for CloudChannelError();
        sub_10001C2AC(v35);
        (*(v36 + 104))(v34, v39, v35);
        sub_100008E2C(v34, 0, 1, v35);
        sub_10003F3A8(v34);

        sub_10001BB44(v34, &qword_1000DC460, &qword_1000AAEF8);
      }

      else
      {
      }

      ++v11;
    }

    while (v10 != v11);
    goto LABEL_30;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1000162C4(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1000162E0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000162F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100016334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100016378(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1000163EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_100016410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

LABEL_6:
  v10 = [v5 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:a5];

  return v10;
}

id sub_1000164BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithChannelID:v3];

  return v4;
}

void sub_100016520()
{
  sub_10001C1D0();
  if (v5)
  {
    sub_10001BEB4();
    if (v7 != v8)
    {
      sub_10001C05C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10001BF90(v6);
  if (v3)
  {
    sub_100003998(&qword_1000DC430, &qword_1000AA610);
    v9 = sub_10001C478();
    sub_10001C568(v9);
    sub_10001C29C(v10);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000165F4()
{
  sub_10001C1D0();
  if (v5)
  {
    sub_10001BEB4();
    if (v7 != v8)
    {
      sub_10001C05C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10001BF90(v6);
  if (v3)
  {
    sub_100003998(&qword_1000DC418, &qword_1000AAEC8);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * v10 - 64;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_1000166C8()
{
  sub_10001C1D0();
  if (v5)
  {
    sub_10001BEB4();
    if (v7 != v8)
    {
      sub_10001C05C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10001BF90(v6);
  if (v3)
  {
    sub_100003998(&qword_1000DC520, &qword_1000AAF68);
    v9 = sub_10001C478();
    sub_10001C568(v9);
    sub_10001C29C(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[4 * v2 + 4] <= v9 + 4)
    {
      v12 = sub_10001BFB0();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC528, &qword_1000AAF70);
    sub_10001BFB0();
    swift_arrayInitWithCopy();
  }
}

void sub_1000167BC()
{
  sub_10001C078();
  if (v4)
  {
    sub_10001C068();
    if (v6 != v7)
    {
      sub_10001C5A0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001C030();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10001C6F8(v2, v5, &qword_1000DC548, &qword_1000AAF90);
  sub_10001C37C();
  v9 = type metadata accessor for SportingEventRunningClockFeature();
  sub_10001C3B8(v9);
  v11 = *(v10 + 80);
  sub_10001C290();
  if (v1)
  {
    sub_10001C268(&type metadata accessor for SportingEventRunningClockFeature, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10001C010();
  }
}

void sub_100016894()
{
  sub_10001C078();
  if (v4)
  {
    sub_10001C068();
    if (v6 != v7)
    {
      sub_10001C5A0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001C030();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10001C6F8(v2, v5, &qword_1000DC540, &qword_1000AAF88);
  sub_10001C37C();
  v9 = type metadata accessor for SportingEventSubscription.Competitor();
  sub_10001C3B8(v9);
  v11 = *(v10 + 80);
  sub_10001C290();
  if (v1)
  {
    sub_10001C268(&type metadata accessor for SportingEventSubscription.Competitor, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10001C010();
  }
}

void sub_10001696C()
{
  sub_10001C078();
  if (v4)
  {
    sub_10001C068();
    if (v6 != v7)
    {
      sub_10001C5A0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001C030();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10001C6F8(v2, v5, &qword_1000DC518, &qword_1000AAF60);
  sub_10001C37C();
  v9 = type metadata accessor for IngestionError();
  sub_10001C3B8(v9);
  v11 = *(v10 + 80);
  sub_10001C290();
  if (v1)
  {
    sub_10001C268(&type metadata accessor for IngestionError, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10001C010();
  }
}

void sub_100016A58()
{
  sub_10001C1D0();
  if (v5)
  {
    sub_10001BEB4();
    if (v7 != v8)
    {
      sub_10001C05C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = *(v0 + 2);
  if (v6 <= v9)
  {
    v10 = *(v0 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_100003998(v3, v4);
    v11 = sub_10001C478();
    sub_10001C568(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = v0 + 32;
  if (v1)
  {
    if (v11 != v0 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

void sub_100016B2C()
{
  sub_10001C1D0();
  if (v3)
  {
    sub_10001BEB4();
    if (v5 != v6)
    {
      sub_10001C05C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100003998(&qword_1000DC4A0, &qword_1000AEBA0);
    v9 = sub_10001C478();
    sub_10001C568(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * (v10 / 16);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_100016C08()
{
  sub_10001C1D0();
  if (v5)
  {
    sub_10001BEB4();
    if (v7 != v8)
    {
      sub_10001C05C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10001BF90(v6);
  if (v3)
  {
    sub_100003998(&qword_1000DC4D0, &qword_1000AAF28);
    v9 = sub_10001C478();
    sub_10001C568(v9);
    sub_10001C29C(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v2 + 4] <= v9 + 4)
    {
      v12 = sub_10001BFB0();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC4D8, &qword_1000AAF30);
    sub_10001BFB0();
    swift_arrayInitWithCopy();
  }
}

void sub_100016CFC()
{
  sub_10001C078();
  if (v4)
  {
    sub_10001C068();
    if (v6 != v7)
    {
      sub_10001C5A0();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001C030();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_10001C6F8(v2, v5, &qword_1000DC488, &qword_1000AAF00);
  sub_10001C37C();
  v9 = type metadata accessor for CloudChannelSubscription.Demand();
  sub_10001C3B8(v9);
  v11 = *(v10 + 80);
  sub_10001C290();
  if (v1)
  {
    sub_10001C268(&type metadata accessor for CloudChannelSubscription.Demand, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10001C010();
  }
}

void *sub_100016DD4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003998(&qword_1000DC4A8, &qword_1000AAF20);
  v4 = sub_10001C478();
  sub_10001C568(v4);
  v4[2] = a1;
  v4[3] = (2 * (v5 / 8)) | 1;
  return v4;
}

void *sub_100016E48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003998(a3, a4);
  v8 = sub_10001C37C();
  v9 = a5(v8);
  sub_10000AC84(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_100016F38(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_10001C000(a3, result);
  }

  return result;
}

char *sub_100016F60(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_10001C000(a3, result);
  }

  return result;
}

uint64_t sub_100016F80(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = sub_10001C2AC(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = sub_10001C284();

    return _swift_arrayInitWithTakeFrontToBack(v12);
  }

  else if (a3 != a1)
  {
    v11 = sub_10001C284();

    return _swift_arrayInitWithTakeBackToFront(v11);
  }

  return result;
}

uint64_t sub_100017078(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000170D4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000170D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_10001C740();
  v9 = sub_100017194(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_10001B798(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_100008A94(v14);
  return v10;
}

unint64_t sub_100017194(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100017294(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100017294(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000202A8(a1, a2);
  sub_1000172E0(&off_1000CEEC0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

uint64_t sub_1000172E0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100017434(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000173C4(uint64_t a1, uint64_t a2)
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

  sub_100003998(&qword_1000DC418, &qword_1000AAEC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100017434(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_1000DC418, &qword_1000AAEC8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_100017528(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_100017538()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v2 = sub_10001C400();

  return sub_100007FEC(v2, v3, v4);
}

unint64_t sub_1000175AC(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_100083914(a1);
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_100017810(a1, v4);
}

unint64_t sub_100017634(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100017908(a1, v4);
}

void sub_100017678()
{
  sub_10001C5C0();
  type metadata accessor for SportingEventPlayLevel();
  sub_10001BA4C(&qword_1000DC4B0, 255, &type metadata accessor for SportingEventPlayLevel);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000179CC();
}

void sub_100017744()
{
  sub_10001C5C0();
  type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName();
  sub_10001BA4C(&qword_1000DC4C0, 255, &type metadata accessor for SportingEventCompetitorScoreStatisticType.StatisticName);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000179CC();
}

unint64_t sub_100017810(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = sub_100083914(*(*(v2 + 48) + i));
    v8 = v7;
    if (v6 == sub_100083914(a1) && v8 == v9)
    {

      return i;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_100017908(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10001BA94(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10001BAF0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

void sub_1000179CC()
{
  sub_10000AE68();
  v23 = v1;
  v24 = v2;
  v22 = v3;
  v5 = v4;
  v20 = v6;
  v8 = v7(0);
  sub_10000AC48(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_10000ACFC();
  v14 = __chkstk_darwin(v13);
  v16 = &v20 - v15;
  v25 = v0 + 64;
  v21 = v0;
  v17 = ~(-1 << *(v0 + 32));
  for (i = v5 & v17; ((1 << i) & *(v25 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v17)
  {
    (*(v10 + 16))(v16, *(v21 + 48) + *(v10 + 72) * i, v8, v14);
    sub_10001BA4C(v22, 255, v23);
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v16, v8);
    if (v19)
    {
      break;
    }
  }

  sub_10000AE50();
}

void *sub_100017B48(void *a1, int64_t a2, char a3)
{
  result = sub_100017D38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100017B68(char *a1, int64_t a2, char a3)
{
  result = sub_100017E70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100017B88()
{
  v1 = *v0;
  sub_100018400();
  *v0 = v2;
}

void sub_100017BE0()
{
  v1 = *v0;
  sub_100017F78();
  *v0 = v2;
}

void *sub_100017C00(void *a1, int64_t a2, char a3)
{
  result = sub_100018084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100017CA0(void *a1, int64_t a2, char a3)
{
  result = sub_1000182D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100017CC0()
{
  v1 = *v0;
  sub_100018400();
  *v0 = v2;
}

char *sub_100017D18(char *a1, int64_t a2, char a3)
{
  result = sub_100018590(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100017D38(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003998(&qword_1000DC5C8, &qword_1000AB008);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC5D0, &qword_1000AB010);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100017E70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003998(&qword_1000DC430, &qword_1000AA610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100017F78()
{
  sub_10001C1D0();
  if (v5)
  {
    sub_10001BEB4();
    if (v7 != v8)
    {
      sub_10001C05C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10001BF90(v6);
  if (v3)
  {
    sub_100003998(&qword_1000DC4F8, &qword_1000AAF40);
    v9 = swift_allocObject();
    sub_10001C568(v9);
    v9[2] = v2;
    v9[3] = 2 * (v10 / 24);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[3 * v2 + 4] <= v9 + 4)
    {
      v12 = sub_10001BFB0();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC500, &qword_1000AAF48);
    sub_10001BFB0();
    swift_arrayInitWithCopy();
  }
}

void *sub_100018084(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003998(&qword_1000DC490, &qword_1000AAF08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC498, &unk_1000AAF10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000181B4(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    sub_10001BEB4();
    if (v9 != v10)
    {
      sub_10001C05C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = a4[2];
  if (v8 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_100003998(a5, a6);
    v13 = swift_allocObject();
    sub_10001C568(v13);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 40);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v13 != a4 || &a4[5 * v11 + 4] <= v13 + 4)
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    v16 = sub_10001C284();
    sub_100003998(v16, v17);
    swift_arrayInitWithCopy();
  }
}

void *sub_1000182D0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003998(&qword_1000DC580, &qword_1000AAFB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003998(&qword_1000DC588, &qword_1000AAFB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100018400()
{
  sub_10000AE68();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_10001BEB4();
    if (v13 != v14)
    {
      sub_10001C05C();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10001BEA4();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100003998(v1, v2);
  v17 = sub_10001C610();
  v18 = v6(v17);
  sub_10000AC84(v18);
  v20 = *(v19 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v24 = j__malloc_size(v23);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 - v22 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v23[2] = v15;
  v23[3] = 2 * ((v24 - v22) / v20);
LABEL_18:
  v26 = v6(0);
  sub_10001C3B8(v26);
  v28 = *(v27 + 80);
  sub_10001C290();
  if (v10)
  {
    sub_100016F80(v8 + v29, v15, v23 + v29, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_10000AE50();
}
void sub_100002B70(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [a2 firstObject];
  v6 = [v7 location];
  (*(v4 + 16))(v4, v6, v5);
}

__n128 sub_100002D44(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002D50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002D70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

BOOL sub_100002E28(void *a1, uint64_t *a2)
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

uint64_t sub_100002E98(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833148, type metadata accessor for DIIdentityError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002F04(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833148, type metadata accessor for DIIdentityError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002F74(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002FE0(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833110, type metadata accessor for DIIdentityFatalError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000304C(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833110, type metadata accessor for DIIdentityFatalError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000030B8(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100003158@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100003184@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100003248@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_100003278@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10000328C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000032B8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003330(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000033B0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_1000033F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100003470()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000034C4(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003530(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000359C(void *a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003650(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000036E0(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000374C(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000037B8(void *a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000038C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1005A0FE0();

  *a1 = v2;
  return result;
}

uint64_t sub_100003914(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003980(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000039EC(void *a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003AF8()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100003B58(uint64_t a1)
{
  v2 = sub_100004214(&qword_100832F00, type metadata accessor for URLFileProtection);
  v3 = sub_100004214(&qword_100832F08, type metadata accessor for URLFileProtection);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003C14(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008331D8, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_100004214(&qword_1008331E0, type metadata accessor for CIImageRepresentationOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003CD0(uint64_t a1)
{
  v2 = sub_100004214(&unk_1008341B0, type metadata accessor for FileAttributeKey);
  v3 = sub_100004214(&qword_1008331D0, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003D8C(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008331E8, type metadata accessor for DIAttributeImageEncoding);
  v3 = sub_100004214(&qword_1008331F0, type metadata accessor for DIAttributeImageEncoding);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003E48(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833218, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);
  v3 = sub_100004214(&qword_100833220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004214(&qword_100833178, type metadata accessor for DIIdentityError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100003F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004214(&qword_100833140, type metadata accessor for DIIdentityFatalError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000400C(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008331A8, type metadata accessor for ODIAttributeKey);
  v3 = sub_100004214(&qword_1008331B0, type metadata accessor for ODIAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000040C8(uint64_t a1)
{
  v2 = sub_100004214(&qword_100832F10, type metadata accessor for ASCDigitalIdentityCredentialRequestType);
  v3 = sub_100004214(&qword_100832F18, type metadata accessor for ASCDigitalIdentityCredentialRequestType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000042A4(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008330D0, type metadata accessor for ASCAuthorizationError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004310(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008330D0, type metadata accessor for ASCAuthorizationError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000437C(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000043E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004214(&qword_1008330C8, type metadata accessor for ASCAuthorizationError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000446C(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008331B8, type metadata accessor for FileProtectionType);
  v3 = sub_100004214(&unk_1008331C0, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004528(uint64_t a1)
{
  v2 = sub_100004214(&qword_100833208, type metadata accessor for DIHttpHeaderName);
  v3 = sub_100004214(&qword_100833210, type metadata accessor for DIHttpHeaderName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000045E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10000462C(uint64_t a1)
{
  v2 = sub_100004214(&qword_1008331F8, type metadata accessor for DISharingOption);
  v3 = sub_100004214(&qword_100833200, type metadata accessor for DISharingOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

__n128 initializeBufferWithCopyOfBuffer for ImageDimension(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageDimension(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageDimension(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000499C(uint64_t a1, int a2)
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

uint64_t sub_1000049BC(uint64_t result, int a2, int a3)
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

uint64_t sub_100004B9C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100004BD8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004C2C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100004CA0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000055F4()
{
  result = qword_1008330F8;
  if (!qword_1008330F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008330F8);
  }

  return result;
}

void sub_100005A1C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100005D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();
  v19 = a1;
  v20 = a2;
  Logger.sensitive(_:)();
  (*(v7 + 8))(v10, v6);
  if (!a2)
  {
    type metadata accessor for DaemonAnalytics();
    v13 = *(v3 + 16);
    v12 = *(v3 + 24);

    static DaemonAnalytics.sendGenderInvalidEvent(issuer:)();

    return a1;
  }

  v11 = String.lowercased()();
  if (v11._countAndFlagsBits == 49 && v11._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_5;
  }

  if (v11._countAndFlagsBits == 50 && v11._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a1 = 0x656C616D6546;
    goto LABEL_11;
  }

  if (v11._countAndFlagsBits == 109 && v11._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_5:
    a1 = 1701601613;

    return a1;
  }

  a1 = 0x656C616D6546;
  if (v11._countAndFlagsBits == 102 && v11._object == 0xE100000000000000)
  {
LABEL_11:

    return a1;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
    type metadata accessor for DaemonAnalytics();
    v16 = *(v3 + 16);
    v17 = *(v3 + 24);

    static DaemonAnalytics.sendGenderInvalidEvent(issuer:)();

    return 0x6E776F6E6B6E55;
  }

  return a1;
}

unint64_t sub_100005FCC(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(35);

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    a1 = 0x3E6C696E3CLL;
    v4 = 0xE500000000000000;
  }

  v5._countAndFlagsBits = a1;
  v5._object = v4;
  String.append(_:)(v5);

  return 0xD000000000000021;
}

unint64_t sub_100006078(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Calendar();
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = *(v97 + 64);
  __chkstk_darwin(v6);
  v105 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DateComponents();
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  __chkstk_darwin(v9);
  v94 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v104 = v92 - v17;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = v92 - v25;
  v27 = __chkstk_darwin(v24);
  __chkstk_darwin(v27);
  v30 = v92 - v29;
  if (!a2)
  {
    v58 = v18;
    defaultLogger()();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Date of birth doesn't exist in the PDF417, hence not stored in the database", v61, 2u);
    }

    (*(v19 + 8))(v23, v58);
    type metadata accessor for DaemonAnalytics();
    v62 = *(v3 + 16);
    v63 = *(v3 + 24);

    static DaemonAnalytics.sendDateOfBirthInvalidEvent(issuer:isEmpty:invalidRange:incorrectFormat:)();
    goto LABEL_14;
  }

  v93 = v28;
  v102 = v3;
  v31 = defaultLogger()();
  __chkstk_darwin(v31);
  v92[-2] = a1;
  v92[-1] = a2;
  Logger.sensitive(_:)();
  v33 = *(v19 + 8);
  v32 = (v19 + 8);
  v103 = v18;
  v101 = v33;
  v33(v30, v18);
  v34 = [objc_allocWithZone(NSDateFormatter) init];
  v35 = String._bridgeToObjectiveC()();
  [v34 setDateFormat:v35];

  v36 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v36 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36 || (v37 = String._bridgeToObjectiveC()(), v38 = [v34 dateFromString:v37], v37, !v38))
  {
LABEL_8:
    defaultLogger()();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Date of birth is in an incorrect format. Unable to derive the age. ", v55, 2u);
    }

    v101(v26, v103);
    type metadata accessor for DaemonAnalytics();
    v56 = *(v102 + 16);
    v57 = *(v102 + 24);

    static DaemonAnalytics.sendDateOfBirthInvalidEvent(issuer:isEmpty:invalidRange:incorrectFormat:)();

LABEL_14:

    return 0;
  }

  v92[0] = v34;
  v92[1] = v32;
  v39 = v104;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  static Calendar.current.getter();
  sub_100007224(&qword_1008334A0, &qword_1006BF610);
  v40 = type metadata accessor for Calendar.Component();
  v41 = *(v40 - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1006BF520;
  (*(v41 + 104))(v44 + v43, enum case for Calendar.Component.year(_:), v40);
  sub_1003A92C4(v44);
  swift_setDeallocating();
  (*(v41 + 8))(v44 + v43, v40);
  swift_deallocClassInstance();
  Date.init()();
  v45 = v94;
  v46 = v39;
  v47 = v105;
  Calendar.dateComponents(_:from:to:)();

  v48 = *(v99 + 8);
  v49 = v16;
  v50 = v100;
  v48(v49, v100);
  (*(v97 + 8))(v47, v98);
  v51 = DateComponents.year.getter();
  LOBYTE(v47) = v52;
  (*(v95 + 8))(v45, v96);
  if (v47)
  {
    v48(v46, v50);
    v34 = v92[0];
    goto LABEL_8;
  }

  v105 = v48;
  v65 = defaultLogger()();
  __chkstk_darwin(v65);
  v92[-2] = v51;
  Logger.sensitive(_:)();
  v66 = v30;
  v67 = v101;
  v101(v66, v103);
  sub_100007224(&qword_1008334A8, &qword_1006BF618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF530;
  *(inited + 32) = 0x39312D3531;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = xmmword_1006BF540;
  *(inited + 64) = 0x34322D3032;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = xmmword_1006BF550;
  *(inited + 96) = 0x34332D3532;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = xmmword_1006BF560;
  *(inited + 128) = 0x34342D3533;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = xmmword_1006BF570;
  *(inited + 160) = 0x34352D3534;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = xmmword_1006BF580;
  *(inited + 192) = 0x39352D3535;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 208) = xmmword_1006BF590;
  *(inited + 224) = 0x34362D3036;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = xmmword_1006BF5A0;
  *(inited + 256) = 0x34372D3536;
  *(inited + 264) = 0xE500000000000000;
  *(inited + 272) = xmmword_1006BF5B0;
  *(inited + 288) = 0x34382D3537;
  *(inited + 296) = 0xE500000000000000;
  *(inited + 304) = xmmword_1006BF5C0;
  *(inited + 320) = 2831672;
  *(inited + 328) = 0xE300000000000000;
  *(inited + 336) = xmmword_1006BF5D0;
  v69 = sub_10003CBB0(inited);
  swift_setDeallocating();
  sub_100007224(&qword_1008334B0, &qword_1006BF620);
  swift_arrayDestroy();
  result = v69;
  v70 = 0;
  v71 = v69 + 64;
  v72 = 1 << *(v69 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v69 + 64);
  v75 = (v72 + 63) >> 6;
  v76 = v102;
  while (v74)
  {
    v77 = v70;
LABEL_26:
    v78 = __clz(__rbit64(v74));
    v74 &= v74 - 1;
    v79 = v78 | (v77 << 6);
    v80 = (*(result + 56) + 16 * v79);
    v82 = *v80;
    v81 = v80[1];
    if (v51 >= v82 && v51 < v81)
    {
      v84 = (*(result + 48) + 16 * v79);
      v86 = *v84;
      v85 = v84[1];

      (v105)(v104, v50);

      return v86;
    }
  }

  while (1)
  {
    v77 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
      return result;
    }

    if (v77 >= v75)
    {
      break;
    }

    v74 = *(v71 + 8 * v77);
    ++v70;
    if (v74)
    {
      v70 = v77;
      goto LABEL_26;
    }
  }

  defaultLogger()();
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "Age not in the valid range", v89, 2u);
  }

  v67(v93, v103);
  type metadata accessor for DaemonAnalytics();
  v90 = *(v76 + 16);
  v91 = *(v76 + 24);

  static DaemonAnalytics.sendDateOfBirthInvalidEvent(issuer:isEmpty:invalidRange:incorrectFormat:)();

  (v105)(v104, v50);
  return 0;
}

uint64_t sub_100006B74(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(52);
  v4._object = 0x80000001006FAC00;
  v4._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  return 0;
}

unint64_t sub_100006BF8()
{
  _StringGuts.grow(_:)(33);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  return 0xD00000000000001FLL;
}

unint64_t sub_100006C8C()
{
  _StringGuts.grow(_:)(47);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  return 0xD00000000000002DLL;
}

uint64_t sub_100006E60()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100006EBC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  if ((a2 & 1) == 0 && a1)
  {
    v10 = defaultLogger()();
    __chkstk_darwin(v10);
    *(&v17 - 2) = a1;
    Logger.sensitive(_:)();
    (*(v5 + 8))(v8, v4);
    v11 = sub_10003CCE4(&off_1007F8348);
    sub_100007224(&qword_100833498, &qword_1006BF608);
    swift_arrayDestroy();
    if (v11[2] && (v12 = sub_10003AFE4(a1), (v13 & 1) != 0))
    {
      v14 = (v11[7] + 16 * v12);
      v9 = *v14;
      v15 = v14[1];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

unint64_t sub_100007060(unsigned __int8 a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();
  v10[16] = a1;
  Logger.sensitive(_:)();
  (*(v3 + 8))(v6, v2);
  v7 = 0x4445444E45545845;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
  }

  if (a1 == 3)
  {
    v7 = 0x44455443454A4552;
  }

  v8 = 0x4653534543435553;
  if (a1 != 1)
  {
    v8 = 0x4445444E45545845;
  }

  if (!a1)
  {
    v8 = 0x44455443454A4552;
  }

  if (a1 <= 2u)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100007224(uint64_t *a1, uint64_t *a2)
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

void sub_100007284(void (*a1)(void, void, void), int a2, int a3)
{
  v4 = v3;
  v217 = a2;
  v237 = a1;
  v6 = sub_100007224(&qword_1008336D8, qword_1006BF6F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v213 = (&v210 - v8);
  v9 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v215 = &v210 - v11;
  v220 = type metadata accessor for SHA256();
  v219 = *(v220 - 8);
  v12 = *(v219 + 64);
  __chkstk_darwin(v220);
  v218 = &v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for SHA256Digest();
  v235 = *(v236 - 8);
  v14 = *(v235 + 64);
  v15 = __chkstk_darwin(v236);
  v225 = &v210 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v231 = &v210 - v17;
  v230 = type metadata accessor for AEADKey();
  v241 = *(v230 - 8);
  v18 = *(v241 + 64);
  v19 = __chkstk_darwin(v230);
  v21 = &v210 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v227 = (&v210 - v22);
  v229 = sub_100007224(&unk_100833638, &unk_1006BF6C0);
  v240 = *(v229 - 8);
  v23 = *(v240 + 64);
  v24 = __chkstk_darwin(v229);
  v216 = &v210 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v226 = &v210 - v26;
  v228 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  v27 = *(*(v228 - 8) + 64);
  v28 = __chkstk_darwin(v228);
  v212 = &v210 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v243 = &v210 - v30;
  v31 = type metadata accessor for Logger();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v214 = &v210 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v222 = &v210 - v37;
  v38 = __chkstk_darwin(v36);
  v223 = &v210 - v39;
  v40 = __chkstk_darwin(v38);
  v221 = &v210 - v41;
  v42 = __chkstk_darwin(v40);
  v224 = &v210 - v43;
  v44 = __chkstk_darwin(v42);
  v211 = &v210 - v45;
  v46 = __chkstk_darwin(v44);
  v233 = (&v210 - v47);
  v48 = __chkstk_darwin(v46);
  v50 = &v210 - v49;
  __chkstk_darwin(v48);
  v52 = &v210 - v51;
  defaultLogger()();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  v55 = os_log_type_enabled(v53, v54);
  v234 = a3;
  *&v242 = v31;
  if (v55)
  {
    v239 = v21;
    v232 = v4;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v244 = v57;
    *v56 = 136315138;
    v58 = 0xEF746E6F7246746ELL;
    v59 = 0xE600000000000000;
    v60 = 0x6569666C6573;
    v61 = 0x7373656E6576696CLL;
    v62 = 0xED00006F65646956;
    if (a3 != 3)
    {
      v61 = 0x7261696C69787561;
      v62 = 0xEE006F6564695679;
    }

    if (a3 != 2)
    {
      v60 = v61;
      v59 = v62;
    }

    if (a3)
    {
      v58 = 0xEE006B636142746ELL;
    }

    if (a3 <= 1u)
    {
      v63 = 0x656D75636F446469;
    }

    else
    {
      v63 = v60;
    }

    if (a3 <= 1u)
    {
      v64 = v58;
    }

    else
    {
      v64 = v59;
    }

    v65 = sub_100141FE4(v63, v64, &v244);

    *(v56 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v53, v54, "CloudKitUploadBuilder.addUploadAsset: creating upload asset of type %s.", v56, 0xCu);
    sub_10000BB78(v57);

    v66 = *(v32 + 8);
    v31 = v242;
    (v66)(v52, v242);
    v4 = v232;
    v21 = v239;
  }

  else
  {

    v66 = *(v32 + 8);
    (v66)(v52, v31);
  }

  defaultLogger()();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "CloudKitUploadBuilder.addUploadAsset: Starting to encrypt images", v69, 2u);
  }

  v239 = (v32 + 8);
  (v66)(v50, v31);
  objc_opt_self();
  v70 = v237;
  v71 = swift_dynamicCastObjCClass();
  if (v71)
  {
    v72 = v71;
    v73 = v70;
    v74 = v226;
    v75 = v227;
    v76 = v238;
    sub_10000AA70(v226, v227, v72);
    v77 = v76;

    if (v76)
    {
      return;
    }

LABEL_25:
    v232 = v4;
    v88 = v243;
    v237 = *(v240 + 32);
    v240 += 32;
    v237(v243, v74, v229);
    v89 = *(v241 + 32);
    v90 = v88 + *(v228 + 48);
    v241 += 32;
    v227 = v89;
    (v89)(v90, v75, v230);
    defaultLogger()();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "CloudKitUploadBuilder.addUploadAsset: Images encryption complete", v93, 2u);
    }

    (v66)(v233, v31);
    v246 = SealedMessage.data.getter();
    v247 = v94;
    if (shouldIncludeUnencryptedData()())
    {
      SealedMessage.unencryptedData.getter();
      v95 = v245;
      if (v245 >> 60 != 15)
      {
        v96 = v244;
        v97 = v211;
        defaultLogger()();
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v98, v99))
        {
          v233 = v96;
          v238 = 0;
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v244 = v101;
          *v100 = 136315138;
          v102 = 0xE600000000000000;
          v103 = 0x6569666C6573;
          v104 = 0x7373656E6576696CLL;
          v105 = 0xED00006F65646956;
          if (v234 != 3)
          {
            v104 = 0x7261696C69787561;
            v105 = 0xEE006F6564695679;
          }

          if (v234 != 2)
          {
            v103 = v104;
            v102 = v105;
          }

          v106 = 0xEE006B636142746ELL;
          if (!v234)
          {
            v106 = 0xEF746E6F7246746ELL;
          }

          if (v234 <= 1u)
          {
            v107 = 0x656D75636F446469;
          }

          else
          {
            v107 = v103;
          }

          if (v234 <= 1u)
          {
            v108 = v106;
          }

          else
          {
            v108 = v102;
          }

          v109 = sub_100141FE4(v107, v108, &v244);

          *(v100 + 4) = v109;
          _os_log_impl(&_mh_execute_header, v98, v99, "CloudKitUploadBuilder.addUploadAsset: allowing unencrypted CK data for %s, privacy: .public)", v100, 0xCu);
          sub_10000BB78(v101);

          (v66)(v211, v242);
          v77 = v238;
          v96 = v233;
        }

        else
        {

          (v66)(v97, v31);
        }

        sub_10000B90C(v246, v247);
        v246 = v96;
        v247 = v95;
      }
    }

    v110 = v246;
    v111 = v247;
    sub_10000B8B8(v246, v247);
    sub_10000BD4C(&qword_1008336E0, &type metadata accessor for SHA256);
    v112 = v218;
    v113 = v220;
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v110, v111);
    sub_10037939C(v110, v111);
    v238 = v77;
    sub_10000B90C(v110, v111);
    v114 = v231;
    dispatch thunk of HashFunction.finalize()();
    sub_10000B90C(v110, v111);
    (*(v219 + 8))(v112, v113);
    sub_10000BD4C(&qword_1008336E8, &type metadata accessor for SHA256Digest);
    v115 = v236;
    v226 = Digest.base64Str.getter();
    v220 = v116;
    v117 = v224;
    defaultLogger()();
    v118 = v235;
    v119 = v225;
    (*(v235 + 16))(v225, v114, v115);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v244 = swift_slowAlloc();
      *v122 = 136446466;
      v123 = 0xE600000000000000;
      v124 = 0x6569666C6573;
      v125 = 0x7373656E6576696CLL;
      v126 = 0xED00006F65646956;
      if (v234 != 3)
      {
        v125 = 0x7261696C69787561;
        v126 = 0xEE006F6564695679;
      }

      if (v234 != 2)
      {
        v124 = v125;
        v123 = v126;
      }

      v127 = 0xEE006B636142746ELL;
      if (!v234)
      {
        v127 = 0xEF746E6F7246746ELL;
      }

      if (v234 <= 1u)
      {
        v128 = 0x656D75636F446469;
      }

      else
      {
        v128 = v124;
      }

      if (v234 <= 1u)
      {
        v129 = v127;
      }

      else
      {
        v129 = v123;
      }

      v130 = sub_100141FE4(v128, v129, &v244);

      *(v122 + 4) = v130;
      *(v122 + 12) = 2080;
      v131 = v236;
      v132 = v225;
      v133 = Digest.hexStr.getter();
      v135 = v134;
      v233 = *(v235 + 8);
      v233(v132, v131);
      v136 = sub_100141FE4(v133, v135, &v244);

      *(v122 + 14) = v136;
      _os_log_impl(&_mh_execute_header, v120, v121, "CloudKitUploadBuilder.addUploadAsset: Hash for uploaded %{public}s: %s", v122, 0x16u);
      swift_arrayDestroy();

      v137 = v224;
    }

    else
    {

      v233 = *(v118 + 8);
      v233(v119, v115);
      v137 = v117;
    }

    v138 = v242;
    (v66)(v137, v242);
    v139 = v221;
    defaultLogger()();
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.debug.getter();
    v142 = os_log_type_enabled(v140, v141);
    v143 = v222;
    v144 = v223;
    if (v142)
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      _os_log_impl(&_mh_execute_header, v140, v141, "--- BEGIN LOGGING ENCRYPTED IMAGE SIZE----", v145, 2u);
    }

    (v66)(v139, v138);
    defaultLogger()();
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v146, v147))
    {

      v151 = v144;
      v152 = v138;
      goto LABEL_83;
    }

    v148 = swift_slowAlloc();
    v244 = swift_slowAlloc();
    *v148 = 136446466;
    if (v234 <= 1u)
    {
      if (v234)
      {
        v150 = 0xEE006B636142746ELL;
      }

      else
      {
        v150 = 0xEF746E6F7246746ELL;
      }

      v149 = 0x656D75636F446469;
    }

    else if (v234 == 2)
    {
      v150 = 0xE600000000000000;
      v149 = 0x6569666C6573;
    }

    else if (v234 == 3)
    {
      v149 = 0x7373656E6576696CLL;
      v150 = 0xED00006F65646956;
    }

    else
    {
      v149 = 0x7261696C69787561;
      v150 = 0xEE006F6564695679;
    }

    v153 = sub_100141FE4(v149, v150, &v244);

    *(v148 + 4) = v153;
    *(v148 + 12) = 2082;
    swift_beginAccess();
    v154 = v246;
    v155 = v247 >> 62;
    if ((v247 >> 62) > 1)
    {
      if (v155 != 2)
      {
        goto LABEL_82;
      }

      v154 = *(v246 + 16);
      if (!__OFSUB__(*(v246 + 24), v154))
      {
        goto LABEL_82;
      }

      __break(1u);
    }

    else if (!v155)
    {
LABEL_82:
      v156 = Int.formattedByteSize.getter();
      v158 = sub_100141FE4(v156, v157, &v244);

      *(v148 + 14) = v158;
      _os_log_impl(&_mh_execute_header, v146, v147, "%{public}s: %{public}s", v148, 0x16u);
      swift_arrayDestroy();

      v151 = v223;
      v138 = v242;
      v152 = v242;
LABEL_83:
      (v66)(v151, v152);
      defaultLogger()();
      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v159, v160))
      {
LABEL_94:

        (v66)(v143, v138);
        v168 = v214;
        defaultLogger()();
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          *v171 = 0;
          _os_log_impl(&_mh_execute_header, v169, v170, "--- END LOGGING ENCRYPTED IMAGE SIZE----", v171, 2u);
        }

        (v66)(v168, v138);
        v172 = [objc_allocWithZone(NSUUID) init];
        v173 = [v172 UUIDString];

        v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v176 = v175;

        swift_beginAccess();
        v177 = v246;
        v178 = v247;
        v179 = type metadata accessor for URL();
        v180 = *(*(v179 - 8) + 56);
        v181 = v215;
        v180(v215, 1, 1, v179);
        v182 = type metadata accessor for UploadAsset(0);
        v183 = *(v182 + 48);
        v184 = *(v182 + 52);
        v185 = swift_allocObject();
        v242 = xmmword_1006BF650;
        *(v185 + 32) = xmmword_1006BF650;
        v180((v185 + OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL), 1, 1, v179);
        *(v185 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData) = v242;
        *(v185 + 16) = v174;
        *(v185 + 24) = v176;
        v186 = *(v185 + 32);
        v187 = *(v185 + 40);
        *(v185 + 32) = v177;
        *(v185 + 40) = v178;
        sub_10000B8B8(v177, v178);
        sub_10000BD94(v186, v187);
        *(v185 + 48) = v234;
        v188 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
        swift_beginAccess();
        sub_10000BDA8(v181, v185 + v188);
        swift_endAccess();
        v189 = *(v185 + 16);
        v190 = *(v185 + 24);
        v191 = v246;
        v192 = v247 >> 62;
        if ((v247 >> 62) > 1)
        {
          v193 = 0;
          if (v192 != 2)
          {
            goto LABEL_105;
          }

          v191 = *(v246 + 16);
          v194 = *(v246 + 24);
          v193 = v194 - v191;
          if (!__OFSUB__(v194, v191))
          {
            goto LABEL_105;
          }

          __break(1u);
        }

        else if (!v192)
        {
          v193 = BYTE6(v247);
LABEL_105:
          v196 = v243;
          v197 = v212;
          sub_10000BBC4(v243, v212, &qword_1008335C0, &qword_1006DA7B0);
          v198 = *(v228 + 48);
          v199 = v213;
          v200 = v220;
          *v213 = v226;
          *(v199 + 8) = v200;
          *(v199 + 16) = v193;
          v201 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo();
          v202 = v199 + *(v201 + 24);
          v237(v202, v197, v229);
          (v227)(v202 + v198, v197 + v198, v230);
          (*(*(v201 - 8) + 56))(v199, 0, 1, v201);
          v203 = v232;
          swift_beginAccess();

          sub_10014B4FC(v199, v189, v190);
          swift_endAccess();
          v204 = *(v185 + 16);
          v205 = *(v185 + 24);
          swift_beginAccess();

          v206 = v203[2];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v248 = v203[2];
          v203[2] = 0x8000000000000000;
          sub_10016C328(v185, v204, v205, isUniquelyReferenced_nonNull_native);

          v203[2] = v248;
          swift_endAccess();
          v208._countAndFlagsBits = 0x6239386161303431;
          v209._object = 0x80000001006FAEB0;
          v208._object = 0xE800000000000000;
          v209._countAndFlagsBits = 0xD000000000000047;
          logMilestone(tag:description:)(v208, v209);

          v233(v231, v236);
          sub_10000BE18(v196, &qword_1008335C0, &qword_1006DA7B0);
          sub_10000B90C(v246, v247);
          return;
        }

        v166 = __OFSUB__(HIDWORD(v191), v191);
        v195 = HIDWORD(v191) - v191;
        if (!v166)
        {
          v193 = v195;
          goto LABEL_105;
        }

        __break(1u);
        goto LABEL_108;
      }

      v161 = swift_slowAlloc();
      *v161 = 134349056;
      swift_beginAccess();
      v162 = v246;
      v163 = v247 >> 62;
      if ((v247 >> 62) > 1)
      {
        v164 = 0;
        if (v163 != 2)
        {
          goto LABEL_93;
        }

        v162 = *(v246 + 16);
        v165 = *(v246 + 24);
        v166 = __OFSUB__(v165, v162);
        v164 = v165 - v162;
        if (!v166)
        {
          goto LABEL_93;
        }

        __break(1u);
      }

      else if (!v163)
      {
        v164 = BYTE6(v247);
LABEL_93:
        *(v161 + 4) = v164;
        _os_log_impl(&_mh_execute_header, v159, v160, "size in bytes: %{public}ld", v161, 0xCu);

        goto LABEL_94;
      }

      v166 = __OFSUB__(HIDWORD(v162), v162);
      v167 = HIDWORD(v162) - v162;
      if (v166)
      {
LABEL_109:
        __break(1u);
        return;
      }

      v164 = v167;
      goto LABEL_93;
    }

    if (__OFSUB__(HIDWORD(v154), v154))
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    goto LABEL_82;
  }

  v232 = v66;
  v78 = [v70 data];
  v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  v82 = v21;
  if (v217)
  {
    v83 = Data.base64EncodedData(options:)();
    v85 = v84;
    sub_10000B90C(v79, v81);
    v79 = v83;
    v81 = v85;
  }

  v86 = v4[8];
  sub_10000BA08(v4 + 4, v4[7]);
  v244 = v79;
  v245 = v81;
  sub_10000B960();
  sub_10000B9B4();
  v74 = v216;
  v87 = v238;
  dispatch thunk of HPKESuite.sealMessageAEAD<A>(message:)();
  v77 = v87;
  sub_10000B90C(v79, v81);
  if (!v87)
  {
    v75 = v82;
    v31 = v242;
    v66 = v232;
    goto LABEL_25;
  }
}

void sub_10000AA70(uint64_t a1, uint64_t a2, void *a3)
{
  v61 = a2;
  v60 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v69 = *(v4 - 8);
  v5 = v69[8];
  __chkstk_darwin(v4);
  v71 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  __chkstk_darwin(v7);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  __chkstk_darwin(v10);
  v70 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPFileUploadCryptor.Result();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  __chkstk_darwin(v13);
  v74 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for UUID();
  v81 = *(v79 - 8);
  v16 = *(v81 + 64);
  __chkstk_darwin(v79);
  v78 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DIPFileUploadCryptor.Options();
  v76 = *(v18 - 8);
  v77 = v18;
  v19 = *(v76 + 64);
  __chkstk_darwin(v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AES.GCM.Nonce();
  v22 = *(v72 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v72);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SymmetricKeySize();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v28 = type metadata accessor for SymmetricKey();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a3;
  v33 = [a3 fileHandle];
  if (v33)
  {
    v71 = v33;
    static SymmetricKeySize.bits128.getter();
    SymmetricKey.init(size:)();
    v34 = v73;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v29 + 8))(v32, v28);
    v73 = *(&v80 + 1);
    v35 = v80;
    AES.GCM.Nonce.init()();
    AES.GCM.Nonce.withUnsafeBytes<A>(_:)();
    v69 = v34;
    (*(v22 + 8))(v25, v72);
    v36 = v80;
    v37 = [v75 assetID];
    v38 = v78;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    v39 = v21;
    v40 = *(v81 + 8);
    v41 = v38;
    v42 = v81 + 8;
    v40(v41, v79);
    v43 = v73;
    sub_10000B8B8(v35, v73);
    sub_10000B8B8(v36, *(&v36 + 1));
    v44 = v35;
    DIPFileUploadCryptor.Options.init(eraseInputFileData:copyDataForInternalDiagnostics:uuid:key:nonce:publicKey:)();
    v45 = v74;
    v46 = v71;
    v47 = v69;
    static DIPFileUploadCryptor.encryptFileHandle(_:withOptions:)();
    if (v47)
    {
      (*(v76 + 8))(v39, v77);
      sub_10000B90C(v44, v43);
      sub_10000B90C(v36, *(&v36 + 1));
    }

    else
    {
      v69 = v40;
      v75 = v39;
      v72 = v36;
      v81 = v42;
      defaultLogger()();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Finished encrypting data from original FileHandle", v50, 2u);
      }

      (*(v62 + 8))(v70, v63);
      v51 = v64;
      DIPFileUploadCryptor.Result.encryptedFileURL.getter();
      v52 = v44;
      v53 = Data.init(contentsOf:options:)();
      v54 = v51;
      v56 = v55;
      (*(v65 + 8))(v54, v66);
      v57 = v78;
      UUID.init()();
      UUID.uuidString.getter();
      (v69)(v57, v79);
      v80 = xmmword_1006BF650;
      v70 = v56;
      sub_10000B8B8(v53, v56);
      sub_10000B960();
      sub_10000B9B4();
      SealedMessage.init(keyID:data:unencryptedData:)();
      v58 = v73;
      Data.base64EncodedString(options:)(0);
      v59 = v72;
      Data.base64EncodedString(options:)(0);
      AEADKey.init(secretKey:nonce:)();

      sub_10000B90C(v53, v70);
      sub_10000B90C(v59, *(&v36 + 1));
      sub_10000B90C(v52, v58);
      (*(v67 + 8))(v45, v68);
      (*(v76 + 8))(v75, v77);
    }
  }

  else
  {
    (v69[13])(v71, enum case for DIPError.Code.internalError(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10000BD4C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_10000B454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = &type metadata for UnsafeRawBufferPointer;
  v14[4] = &protocol witness table for UnsafeRawBufferPointer;
  v14[0] = a1;
  v14[1] = a2;
  v4 = sub_10000BA08(v14, &type metadata for UnsafeRawBufferPointer);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_10034BFA0(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_10034C0DC(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_10034C058(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = sub_10000BB78(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_10000B520()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_10000BB78(v0 + 4);

  return swift_deallocClassInstance();
}

uint64_t sub_10000B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000B670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo()
{
  result = qword_100833620;
  if (!qword_100833620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B76C()
{
  sub_10000B7F0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000B7F0()
{
  if (!qword_100833630)
  {
    sub_10000B870(&unk_100833638, &unk_1006BF6C0);
    type metadata accessor for AEADKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100833630);
    }
  }
}

uint64_t sub_10000B870(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000B8B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000B90C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000B960()
{
  result = qword_100833670;
  if (!qword_100833670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833670);
  }

  return result;
}

unint64_t sub_10000B9B4()
{
  result = qword_100833678;
  if (!qword_100833678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833678);
  }

  return result;
}

void *sub_10000BA08(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000BA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000BB18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BB78(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000BBC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007224(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000BC2C()
{
  result = qword_1008336C0;
  if (!qword_1008336C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008336C0);
  }

  return result;
}

uint64_t sub_10000BC80(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_1008336B0, &qword_1006BF6E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000BCF8()
{
  result = qword_1008336D0;
  if (!qword_1008336D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008336D0);
  }

  return result;
}

uint64_t sub_10000BD4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000BD94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000B90C(a1, a2);
  }

  return a1;
}

uint64_t sub_10000BDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BE18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007224(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000BE94(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x6F5A6574656C6564;
    v5 = 0x6465686361747461;
    if (a1 != 8)
    {
      v5 = 0x6465686361746564;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000010;
    if (a1 != 5)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x696C616974696E69;
    v2 = 0xD000000000000017;
    if (a1 == 3)
    {
      v2 = 0x7465467075746573;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = 0x7465536E69676562;
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
}

uint64_t sub_10000C000(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10000BE94(*a1);
  v5 = v4;
  if (v3 == sub_10000BE94(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10000C088()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000BE94(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000C0EC()
{
  sub_10000BE94(*v0);
  String.hash(into:)();
}

Swift::Int sub_10000C140()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000BE94(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000C1A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001F24C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10000C1D0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000BE94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_10000C218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v88 = a4;
  v89 = a6;
  v86 = a5;
  v87 = a3;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  __chkstk_darwin(v9);
  v94 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v93 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v91 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Logger();
  v17 = *(v97 - 1);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v97);
  v85 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v84 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v84 - v25;
  __chkstk_darwin(v24);
  v28 = &v84 - v27;
  *(v6 + 6) = dispatch_group_create();
  v29 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_retrier;
  v30 = type metadata accessor for DIPRetrier();
  (*(*(v30 - 8) + 56))(&v6[v29], 1, 1, v30);
  v31 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_waitingForState;
  *&v6[v31] = sub_10003D01C(_swiftEmptyArrayStorage);
  v32 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
  *&v6[v32] = sub_10003D110(_swiftEmptyArrayStorage);
  *&v6[OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs] = &_swiftEmptySetSingleton;
  v33 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_changeTokensByZoneID;
  *&v6[v33] = sub_10003D124(_swiftEmptyArrayStorage);
  *(v6 + 3) = a1;
  *(v6 + 4) = a2;
  v90 = v6;
  v6[OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state] = 0;
  v34 = objc_opt_self();
  v35 = [v34 standardUserDefaults];
  static DaemonDefaultsKeys.useCloudKitSandbox.getter();
  v36 = String._bridgeToObjectiveC()();

  LODWORD(v33) = [v35 BOOLForKey:v36];

  if (v33)
  {
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Using CloudKit sandbox container environment due to user defaults setting", v39, 2u);
    }

    v40 = *(v17 + 8);
    v40(v28, v97);
    v41 = [v34 standardUserDefaults];
    static DaemonDefaultsKeys.environmentName.getter();
    v42 = String._bridgeToObjectiveC()();

    v43 = [v41 stringForKey:v42];

    if (v43)
    {
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v100 = v44;
      v101 = v46;
      v98 = 16721;
      v99 = 0xE200000000000000;
      sub_10001F298();
      v47 = StringProtocol.contains<A>(_:)();
      v48 = v89;
      if (v47)
      {

        v49 = 2;
      }

      else
      {
        defaultLogger()();

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = v40;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v100 = v70;
          *v69 = 136315138;
          v71 = sub_100141FE4(v44, v46, &v100);

          *(v69 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v66, v67, "CloudKit sandbox container in use but server environment name %s doesn't look compatible. Do you need to fix your CloudKit container environment setting?", v69, 0xCu);
          sub_10000BB78(v70);

          v68(v26, v97);
        }

        else
        {

          v40(v26, v97);
        }

        v49 = 2;
      }
    }

    else
    {
      v49 = 2;
      v48 = v89;
    }
  }

  else
  {
    defaultLogger()();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Using CloudKit production container environment", v52, 2u);
    }

    v53 = *(v17 + 8);
    v53(v23, v97);
    v54 = [v34 standardUserDefaults];
    static DaemonDefaultsKeys.environmentName.getter();
    v55 = String._bridgeToObjectiveC()();

    v56 = [v54 stringForKey:v55];

    v48 = v89;
    if (v56)
    {
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v100 = v57;
      v101 = v59;
      v98 = 16721;
      v99 = 0xE200000000000000;
      sub_10001F298();
      if (StringProtocol.contains<A>(_:)())
      {
        v60 = v85;
        defaultLogger()();

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v100 = v64;
          *v63 = 136315138;
          v65 = sub_100141FE4(v57, v59, &v100);

          *(v63 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v61, v62, "CloudKit production container in use but server environment name %s doesn't look compatible. Do you need to fix your CloudKit container environment setting?", v63, 0xCu);
          sub_10000BB78(v64);
        }

        else
        {
        }

        v53(v60, v97);
      }

      else
      {
      }
    }

    v49 = 1;
  }

  v72 = objc_allocWithZone(CKContainerID);
  v73 = String._bridgeToObjectiveC()();

  v74 = [v72 initWithContainerIdentifier:v73 environment:v49];

  v75 = [objc_allocWithZone(CKContainerOptions) init];
  if (v48)
  {
    v76 = String._bridgeToObjectiveC()();
  }

  else
  {
    v76 = 0;
  }

  [v75 setApplicationBundleIdentifierOverrideForNetworkAttribution:v76];

  v77 = [objc_allocWithZone(CKContainer) initWithContainerID:v74 options:v75];
  v97 = v74;
  v78 = v90;
  *(v90 + 2) = v77;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v100 = 0;
  v101 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v80 = *(v78 + 3);
  v79 = *(v78 + 4);

  v100 = v80;
  v101 = v79;
  v81._object = 0x80000001006FAFB0;
  v81._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v81);
  static DispatchQoS.unspecified.getter();
  v100 = _swiftEmptyArrayStorage;
  sub_10001F43C(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10001F484(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v95 + 104))(v94, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
  v82 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  *(v78 + 5) = v82;
  return v78;
}

uint64_t sub_10000CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v33 = a5;
  v30 = a2;
  v31 = a4;
  v6 = type metadata accessor for DIPRetrier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPBackoffStrategy();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100007224(&qword_100833A28, &qword_1006BF8A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v29 - v21;
  *v15 = 0x3FC999999999999ALL;
  (*(v12 + 104))(v15, enum case for DIPBackoffStrategy.exponential(_:), v11);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  (*(v7 + 56))(v22, 0, 1, v6);
  v23 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_retrier;
  swift_beginAccess();
  sub_1000200A0(v22, v5 + v23);
  swift_endAccess();
  sub_100020110(v5 + v23, v20);
  if ((*(v7 + 48))(v20, 1, v6))
  {
    return sub_10000BE18(v20, &qword_100833A28, &qword_1006BF8A8);
  }

  (*(v7 + 16))(v10, v20, v6);
  sub_10000BE18(v20, &qword_100833A28, &qword_1006BF8A8);
  v25 = swift_allocObject();
  v26 = v30;
  v25[2] = v5;
  v25[3] = v26;
  v25[4] = v32;
  v27 = swift_allocObject();
  v28 = v31;
  v27[2] = v5;
  v27[3] = v28;
  v27[4] = v33;
  swift_retain_n();

  DIPRetrier.async(action:completion:)();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10000D050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v16 = *(v24 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v24);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(a4 + 40);
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a5;
  v20[6] = a6;
  aBlock[4] = sub_1000201C0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD410;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v24);
}

uint64_t sub_10000D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;

  sub_10000F500(sub_100020238, v10);
}

uint64_t sub_10000D3E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t (*)(uint64_t a1), void *))
{
  v24 = a3;
  v25 = a2;
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPError();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23[1] = "error from Cloudkit";
    (*(v9 + 104))(v12, enum case for DIPError.Code.internalError(_:), v8);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    v18 = swift_allocError();
    (*(v14 + 16))(v19, v17, v13);

    sub_1000202C4(v18, v25, v24, a4, &unk_1007FD498, &unk_1007FD4C0, sub_1000222A4, sub_100020254);

    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v21 = swift_allocObject();
    v22 = v24;
    v21[2] = v25;
    v21[3] = v22;
    v21[4] = a4;

    a5(sub_100020248, v21);
  }
}

uint64_t sub_10000D758(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPRetryResult();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    (*(v6 + 104))(v9, enum case for DIPError.Code.internalError(_:), v5);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    v20 = swift_allocError();
    (*(v11 + 16))(v21, v14, v10);
    v22 = v27;

    sub_1000202C4(v20, v25, v26, v22, &unk_1007FD4E8, &unk_1007FD510, sub_100022140, sub_100022264);

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    (*(v16 + 104))(v19, enum case for DIPRetryResult.stop(_:), v15);
    v26(v19);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_10000DAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 40);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a3;
  v17[4] = a4;
  aBlock[4] = sub_1000201B0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD3C0;
  v18 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_10000DDD0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (a2)(0);
  }

  v19 = a3;
  v20 = a2;
  (*(v7 + 104))(v10, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
  v16 = swift_allocError();
  (*(v12 + 16))(v17, v15, v11);
  v20(v16);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_10000E080(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v26 = type metadata accessor for DIPRetryResult();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v26);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPError();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  if (a1)
  {
    v24[0] = "eration, retrying...";
    v24[1] = "error from Cloudkit";
    v25 = v5;
    (*(v10 + 104))(v13, enum case for DIPError.Code.internalError(_:), v9);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    v5 = v25;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_beginAccess();
    (*(v15 + 40))(v19, v18, v14);
  }

  swift_beginAccess();
  sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
  v20 = swift_allocError();
  (*(v15 + 16))(v21, v19, v14);
  *v8 = v20;
  v22 = v26;
  (*(v5 + 104))(v8, enum case for DIPRetryResult.retryWithError(_:), v26);
  v28(v8);
  return (*(v5 + 8))(v8, v22);
}

uint64_t sub_10000E410(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 40);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_100020010;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD280;
  v16 = _Block_copy(aBlock);

  sub_10001F640(a1);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_10000E6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
  if (v11 == 7)
  {
    return sub_100011E74(9, a2, a3);
  }

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  if ((v11 - 1) >= 6)
  {
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    sub_10001F640(a2);

    sub_10001F640(a2);

    sub_10000FE20(7u, 10, sub_100020028, v19);
  }

  else
  {
    sub_10001F640(a2);

    defaultLogger()();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_100141FE4(*(a1 + 24), *(a1 + 32), &v21);
      _os_log_impl(&_mh_execute_header, v14, v15, "Container %{public}s is working, waiting for it to finish before deleting", v16, 0xCu);
      sub_10000BB78(v17);
    }

    (*(v7 + 8))(v10, v6);
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = sub_10002001C;
    v18[4] = v13;

    sub_100011E74(8, sub_10002004C, v18);
  }
}

uint64_t sub_10000EA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  sub_10001F640(a2);
  sub_10000FE20(7u, 10, sub_100022260, v6);
}

uint64_t sub_10000EAB8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError();
  v13 = *(*(v12 - 8) + 64);
  result = __chkstk_darwin(v12);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v45 = v15;
    v46 = result;
    v39[1] = a4;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v18 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v40 = v18;
    v19 = *(v18 - 8);
    v48 = a1;
    v44 = v8;
    v20 = *(v19 + 72);
    v21 = *(v19 + 80);
    v47 = a3;
    v22 = (v21 + 32) & ~v21;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1006BF740;
    v24 = *(v18 + 48);
    v43 = v11;
    v25 = v17;
    v26 = (v23 + v22 + v24);
    v27 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v28 = type metadata accessor for DIPError.PropertyKey();
    v29 = *(*(v28 - 8) + 104);
    (v29)(v23 + v22, v27, v28);
    v31 = *(a2 + 32);
    v41 = *(a2 + 24);
    v30 = v41;
    v26[3] = &type metadata for String;
    v26[4] = &protocol witness table for String;
    *v26 = v30;
    v26[1] = v31;
    v32 = v23 + v22 + v20 + *(v40 + 48);
    v29();
    LOBYTE(v29) = *(a2 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v32 + 24) = &type metadata for DIPCloudContainerState;
    *(v32 + 32) = sub_10001F584();
    *v32 = v29;

    swift_errorRetain();
    v42 = sub_10003C9C0(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v50 = 0xD000000000000021;
    v51 = 0x80000001006FB5C0;
    v33._countAndFlagsBits = v41;
    v33._object = v31;
    String.append(_:)(v33);
    (*(v49 + 104))(v43, enum case for DIPError.Code.internalError(_:), v44);
    swift_errorRetain();
    v34 = v47;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    if (v34)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v35 = v46;
      v36 = swift_allocError();
      v37 = v45;
      (*(v45 + 16))(v38, v25, v35);
      v34(v36);

      return (*(v37 + 8))(v25, v35);
    }

    else
    {
      (*(v45 + 8))(v25, v46);
    }
  }

  else if (a3)
  {
    return (a3)(0);
  }

  return result;
}

uint64_t sub_10000EF94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DIPError();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v55 = v19;
    v56 = v20;
    v53 = v22;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v59 = a3;
    v23 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v57 = v8;
    v24 = v23;
    v25 = *(v23 - 8);
    v52 = v13;
    v48 = *(v25 + 72);
    v49 = a1;
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1006BF740;
    v54 = v11;
    v28 = v27 + v26;
    v29 = v24;
    v30 = (v27 + v26 + *(v24 + 48));
    v31 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v32 = type metadata accessor for DIPError.PropertyKey();
    v50 = v12;
    v51 = v16;
    v33 = *(*(v32 - 8) + 104);
    v58 = a4;
    (v33)(v27 + v26, v31, v32);
    v35 = *(a2 + 24);
    v34 = *(a2 + 32);
    v30[3] = &type metadata for String;
    v30[4] = &protocol witness table for String;
    *v30 = v35;
    v30[1] = v34;
    v36 = v28 + v48 + *(v29 + 48);
    v33();
    v37 = *(a2 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v36 + 24) = &type metadata for DIPCloudContainerState;
    *(v36 + 32) = sub_10001F584();
    *v36 = v37;
    swift_errorRetain();

    sub_10003C9C0(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(95);
    v38._countAndFlagsBits = 0xD00000000000001DLL;
    v38._object = 0x80000001006FB530;
    String.append(_:)(v38);
    v39._countAndFlagsBits = v35;
    v39._object = v34;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0xD000000000000040;
    v40._object = 0x80000001006FB550;
    String.append(_:)(v40);
    (*(v52 + 104))(v51, enum case for DIPError.Code.internalError(_:), v50);
    swift_errorRetain();
    v41 = v53;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    v42 = v55;
    swift_allocError();
    v43 = v56;
    (*(v56 + 16))(v44, v41, v42);
    v45 = v54;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v60 + 8))(v45, v57);
    (*(v43 + 8))(v41, v42);
    a3 = v59;
  }

  return a3(v19);
}

uint64_t sub_10000F500(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - v13;
  result = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state;
  v19 = *(v3 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
  if (v19 <= 6)
  {
    if (v19 - 1 < 6)
    {
      defaultLogger()();

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = a2;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v39 = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), &v39);
        _os_log_impl(&_mh_execute_header, v20, v21, "Attaching to container %{public}s; setup is already in progress", v23, 0xCu);
        sub_10000BB78(v24);

        a2 = v22;
      }

      (*(v7 + 8))(v14, v6);
      v25 = 8;
      return sub_100011E74(v25, a1, a2);
    }

LABEL_11:
    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v38 = a2;
      v29 = v28;
      v30 = swift_slowAlloc();
      v39 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), &v39);
      _os_log_impl(&_mh_execute_header, v26, v27, "Attaching to container %{public}s; starting setup", v29, 0xCu);
      sub_10000BB78(v30);

      a2 = v38;
    }

    (*(v7 + 8))(v17, v6);
    v31 = *(v3 + v18);
    v32 = swift_allocObject();
    v32[2] = v3;
    v32[3] = a1;
    v32[4] = a2;

    sub_10001F640(a1);
    sub_10000FE20(1u, v31, sub_100020004, v32);
  }

  if (v19 == 7)
  {
    defaultLogger()();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = a2;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), &v39);
      _os_log_impl(&_mh_execute_header, v33, v34, "Attached to container %{public}s; container deletion is in progress", v36, 0xCu);
      sub_10000BB78(v37);

      a2 = v35;
    }

    (*(v7 + 8))(v11, v6);
    v25 = 9;
    return sub_100011E74(v25, a1, a2);
  }

  if (v19 != 8)
  {
    goto LABEL_11;
  }

  if (a1)
  {
    return a1(0);
  }

  return result;
}

uint64_t sub_10000F998(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPError();
  v14 = *(*(v13 - 8) + 64);
  result = __chkstk_darwin(v13);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v47 = v16;
    v48 = result;
    v41[1] = a4;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v19 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v20 = *(v19 - 8);
    v46 = v18;
    v44 = v9;
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1006BF740;
    v24 = v23 + v22;
    v25 = *(v19 + 48);
    v49 = a3;
    v43 = v12;
    v26 = (v23 + v22 + v25);
    v27 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v28 = type metadata accessor for DIPError.PropertyKey();
    v45 = a1;
    v29 = *(v28 - 8);
    v42 = v8;
    v30 = *(v29 + 104);
    (v30)(v24, v27, v28);
    v31 = *(a2 + 24);
    v32 = *(a2 + 32);
    v26[3] = &type metadata for String;
    v26[4] = &protocol witness table for String;
    *v26 = v31;
    v26[1] = v32;
    v33 = v24 + v21 + *(v19 + 48);
    v34 = v46;
    v30();
    v35 = *(a2 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v33 + 24) = &type metadata for DIPCloudContainerState;
    *(v33 + 32) = sub_10001F584();
    *v33 = v35;
    v36 = v49;

    swift_errorRetain();
    sub_10003C9C0(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v44 + 104))(v43, enum case for DIPError.Code.internalError(_:), v42);
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    if (v36)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v37 = v48;
      v38 = swift_allocError();
      v39 = v47;
      (*(v47 + 16))(v40, v34, v37);
      v36(v38);

      return (*(v39 + 8))(v34, v37);
    }

    else
    {
      (*(v47 + 8))(v34, v48);
    }
  }

  else if (a3)
  {
    return (a3)(0);
  }

  return result;
}

uint64_t sub_10000FE20(unsigned __int8 a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v134 = a4;
  v135 = a3;
  v8 = 0xEB0000000064657ALL;
  v9 = 0x696C616974696E69;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v132 = v10;
  v133 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v131 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v121 - v15;
  v17 = type metadata accessor for DIPError.Code();
  v129 = *(v17 - 8);
  v18 = *(v129 + 64);
  __chkstk_darwin(v17);
  v20 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DIPError();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v25 = __chkstk_darwin(v24);
  v28 = &v121 - v27;
  v29 = *(v5 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
  v130 = v17;
  if (v29 > 4)
  {
    if (v29 <= 6)
    {
      v30 = a1;
      if (v29 == 5)
      {
        v32 = 0x80000001006F8940;
        v31 = 0xD000000000000010;
      }

      else
      {
        v32 = 0x80000001006F8960;
        v31 = 0xD000000000000018;
      }
    }

    else
    {
      v30 = a1;
      if (v29 == 7)
      {
        v31 = 0x6F5A6574656C6564;
        v32 = 0xEB0000000073656ELL;
      }

      else if (v29 == 8)
      {
        v31 = 0x6465686361747461;
        v32 = 0xE800000000000000;
      }

      else
      {
        v32 = 0xE800000000000000;
        v31 = 0x6465686361746564;
      }
    }
  }

  else if (v29 <= 1)
  {
    v31 = 0x696C616974696E69;
    v32 = 0xEB0000000064657ALL;
    v30 = a1;
    if (v29)
    {
      v31 = 0x7465536E69676562;
      v32 = 0xEA00000000007075;
    }
  }

  else
  {
    v30 = a1;
    if (v29 == 2)
    {
      v32 = 0x80000001006F88F0;
      v31 = 0xD000000000000011;
    }

    else if (v29 == 3)
    {
      v31 = 0x7465467075746573;
      v32 = 0xEF73656E6F5A6863;
    }

    else
    {
      v31 = 0xD000000000000017;
      v32 = 0x80000001006F8920;
    }
  }

  if (v30 > 4u)
  {
    if (v30 <= 6u)
    {
      if (v30 == 5)
      {
        v8 = 0x80000001006F8940;
        if (v31 != 0xD000000000000010)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v8 = 0x80000001006F8960;
        if (v31 != 0xD000000000000018)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_44;
    }

    if (v30 == 7)
    {
      v8 = 0xEB0000000073656ELL;
      if (v31 != 0x6F5A6574656C6564)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    if (v30 == 8)
    {
      v8 = 0xE800000000000000;
      if (v31 != 0x6465686361747461)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v8 = 0xE800000000000000;
    v9 = 0x6465686361746564;
    goto LABEL_43;
  }

  if (v30 <= 1u)
  {
    if (v30)
    {
      v8 = 0xEA00000000007075;
      if (v31 != 0x7465536E69676562)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

LABEL_43:
    if (v31 != v9)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (v30 == 2)
  {
    v8 = 0x80000001006F88F0;
    if (v31 != 0xD000000000000011)
    {
      goto LABEL_47;
    }
  }

  else if (v30 == 3)
  {
    v8 = 0xEF73656E6F5A6863;
    if (v31 != 0x7465467075746573)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v8 = 0x80000001006F8920;
    if (v31 != 0xD000000000000017)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v32 == v8)
  {

    goto LABEL_48;
  }

LABEL_47:
  v126 = v25;
  v127 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state;
  v125 = v26;
  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
LABEL_48:
    if (v135)
    {
      return (v135)(0);
    }

    return result;
  }

  v123 = v20;
  v124 = v22;
  if (a2 != 10)
  {
    v35 = sub_10000BE94(*(v5 + v127));
    v37 = v36;
    if (v35 == sub_10000BE94(a2) && v37 == v38)
    {
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v89 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
        v131 = v89;
        v90 = *(v89 - 8);
        v133 = *(v90 + 72);
        v91 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1006BF740;
        v93 = (v92 + v91 + *(v89 + 48));
        LODWORD(v132) = enum case for DIPError.PropertyKey.cloudContainerName(_:);
        v94 = type metadata accessor for DIPError.PropertyKey();
        v95 = *(*(v94 - 8) + 104);
        (v95)(v92 + v91, v132, v94);
        v97 = *(v5 + 32);
        v132 = *(v5 + 24);
        v96 = v132;
        LODWORD(v125) = a2;
        v122 = v97;
        v93[3] = &type metadata for String;
        v93[4] = &protocol witness table for String;
        *v93 = v96;
        v93[1] = v97;
        v98 = v92 + v91 + v133 + *(v131 + 12);
        v95();
        *(v98 + 24) = &type metadata for DIPCloudContainerState;
        *(v98 + 32) = sub_10001F584();
        v99 = v125;
        *v98 = v125;
        v100 = v122;

        v133 = sub_10003C9C0(v92);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        aBlock = 0;
        v137 = 0xE000000000000000;
        _StringGuts.grow(_:)(75);
        v101._countAndFlagsBits = 0xD00000000000001CLL;
        v101._object = 0x80000001006FB3C0;
        String.append(_:)(v101);
        v102._countAndFlagsBits = sub_10000BE94(a1);
        String.append(_:)(v102);
        v103 = v124;

        v104._countAndFlagsBits = 0x746E6F63206E6920;
        v104._object = 0xEE002072656E6961;
        String.append(_:)(v104);
        v105._countAndFlagsBits = v132;
        v105._object = v100;
        String.append(_:)(v105);
        v106._countAndFlagsBits = 0x676E696D6F63203BLL;
        v106._object = 0xEE00206D6F726620;
        String.append(_:)(v106);
        v107._countAndFlagsBits = sub_10000BE94(*(v5 + v127));
        String.append(_:)(v107);

        v108._countAndFlagsBits = 0x746365707865202CLL;
        v108._object = 0xEB00000000206465;
        String.append(_:)(v108);
        v109._countAndFlagsBits = sub_10000BE94(v99);
        String.append(_:)(v109);

        (*(v129 + 104))(v123, enum case for DIPError.Code.cloudContainerInvalidStateTransition(_:), v130);
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        v110 = v135;
        if (v135)
        {
          sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
          v111 = v126;
          v112 = swift_allocError();
          (*(v103 + 16))(v113, v28, v111);
          v110(v112);
        }

        return (*(v103 + 8))(v28, v126);
      }
    }
  }

  defaultLogger()();

  v128 = v5;
  v40 = Logger.logObject.getter();
  v41 = v128;
  v42 = v40;
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    aBlock = v122;
    *v44 = 136446722;
    *(v44 + 4) = sub_100141FE4(*(v128 + 24), *(v128 + 32), &aBlock);
    *(v44 + 12) = 2080;
    v45 = a1;
    v46 = sub_10000BE94(a1);
    v48 = sub_100141FE4(v46, v47, &aBlock);

    *(v44 + 14) = v48;
    *(v44 + 22) = 2080;
    v49 = v134;
    v50 = v135;
    v51 = v127;
    v52 = sub_10000BE94(*(v128 + v127));
    v54 = sub_100141FE4(v52, v53, &aBlock);
    v55 = v49;
    v56 = v50;

    *(v44 + 24) = v54;
    _os_log_impl(&_mh_execute_header, v42, v43, "Cloud container %{public}s moving to state %s from state %s", v44, 0x20u);
    swift_arrayDestroy();

    v41 = v128;

    v57 = v132;
    v58 = *(v133 + 8);
    result = v58(v16, v132);
  }

  else
  {

    v57 = v132;
    v58 = *(v133 + 8);
    result = v58(v16, v132);
    v45 = a1;
    v55 = v134;
    v56 = v135;
    v51 = v127;
  }

  v59 = v131;
  *(v41 + v51) = v45;
  if (v45 > 4u)
  {
    if (v45 <= 6u)
    {
      if (v45 == 5)
      {
        sub_1000122BC(5);
        v88 = swift_allocObject();
        v88[2] = v41;
        v88[3] = v56;
        v88[4] = v55;

        sub_10001F640(v56);
        sub_100015F84(sub_10001FED8, v88);
      }

      else
      {
        sub_1000122BC(6);
        v120 = swift_allocObject();
        v120[2] = v41;
        v120[3] = v56;
        v120[4] = v55;

        sub_10001F640(v56);
        sub_100017DA0(sub_10001FEAC, v120);
      }
    }

    if (v45 == 7)
    {
      sub_1000122BC(7);
      v118 = swift_allocObject();
      v118[2] = v41;
      v118[3] = v56;
      v118[4] = v55;

      sub_10001F640(v56);
      sub_10001A074(sub_10001FEA0, v118);
    }

    if (v45 == 8)
    {
      defaultLogger()();

      v61 = Logger.logObject.getter();
      v62 = v128;
      v63 = v61;
      v64 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock = v66;
        *v65 = 136446210;
        *(v65 + 4) = sub_100141FE4(*(v62 + 24), *(v62 + 32), &aBlock);
        _os_log_impl(&_mh_execute_header, v63, v64, "Container %{public}s entered attached state", v65, 0xCu);
        sub_10000BB78(v66);
      }

      v58(v59, v57);
      if (v56)
      {
        v56(0);
      }

      return sub_1000122BC(8);
    }
  }

  else
  {
    if (v45 > 1u)
    {
      if (v45 == 2)
      {
        sub_1000122BC(2);
        v114 = swift_allocObject();
        v114[2] = v41;
        v114[3] = v56;
        v114[4] = v55;
        v115 = *(v41 + 16);
        v116 = swift_allocObject();
        v116[2] = v41;
        v116[3] = sub_10001FF5C;
        v116[4] = v114;
        v140 = sub_10001FF88;
        v141 = v116;
        aBlock = _NSConcreteStackBlock;
        v137 = 1107296256;
        v138 = sub_10001335C;
        v139 = &unk_1007FD1B8;
        v117 = _Block_copy(&aBlock);
        swift_retain_n();
        sub_10001F640(v56);

        [v115 accountInfoWithCompletionHandler:v117];
        _Block_release(v117);
      }

      else if (v45 == 3)
      {
        sub_1000122BC(3);
        v60 = swift_allocObject();
        v60[2] = v41;
        v60[3] = v56;
        v60[4] = v55;

        sub_10001F640(v56);
        sub_1000133E8(sub_10001FF30, v60);
      }

      else
      {
        sub_1000122BC(4);
        v119 = swift_allocObject();
        v119[2] = v41;
        v119[3] = v56;
        v119[4] = v55;

        sub_10001F640(v56);
        sub_100014A54(sub_10001FF04, v119);
      }
    }

    if (v45)
    {
      sub_10001DF3C();
      sub_10001E28C();
      sub_10001E440();
      sub_1000122BC(1);
      return sub_10000FE20(2, 1, v56, v55);
    }

    else
    {
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v67 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v68 = *(*(v67 - 8) + 72);
      v69 = v41;
      v70 = (*(*(v67 - 8) + 80) + 32) & ~*(*(v67 - 8) + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1006BF740;
      v72 = (v71 + v70 + *(v67 + 48));
      v73 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
      v74 = type metadata accessor for DIPError.PropertyKey();
      v75 = *(*(v74 - 8) + 104);
      (v75)(v71 + v70, v73, v74);
      v77 = *(v69 + 24);
      v76 = *(v69 + 32);
      v72[3] = &type metadata for String;
      v72[4] = &protocol witness table for String;
      *v72 = v77;
      v72[1] = v76;
      v78 = v135;
      v79 = v71 + v70 + v68 + *(v67 + 48);
      v75();
      *(v79 + 24) = &type metadata for DIPCloudContainerState;
      *(v79 + 32) = sub_10001F584();
      *v79 = 0;

      sub_10003C9C0(v71);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      aBlock = 0;
      v137 = 0xE000000000000000;
      _StringGuts.grow(_:)(82);
      v80._countAndFlagsBits = 0xD000000000000039;
      v80._object = 0x80000001006FB340;
      String.append(_:)(v80);
      v81._countAndFlagsBits = v77;
      v81._object = v76;
      String.append(_:)(v81);
      v82._object = 0x80000001006FB380;
      v82._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v82);
      (*(v129 + 104))(v123, enum case for DIPError.Code.badLogic(_:), v130);
      v83 = v125;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v84 = v124;
      if (v78)
      {
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
        v85 = v126;
        v86 = swift_allocError();
        (*(v84 + 16))(v87, v83, v85);
        v78(v86);
      }

      return (*(v84 + 8))(v83, v126);
    }
  }

  return result;
}

uint64_t sub_100011188(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DIPError.Code();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  if (!a1)
  {
    return sub_10000FE20(a5, a6, a3, a4);
  }

  (*(v14 + 104))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.internalError(_:));
  swift_errorRetain();
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
  v15 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100011754(v15, a3, a4);
}

uint64_t sub_10001138C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  if (!a1)
  {
    return sub_100011580(a3);
  }

  (*(v10 + 104))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.internalError(_:));
  swift_errorRetain();
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
  v11 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100011754(v11, a3, a4);
}

uint64_t sub_100011580(uint64_t (*a1)(void))
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100141FE4(*(v2 + 24), *(v2 + 32), &v15);
    _os_log_impl(&_mh_execute_header, v9, v10, "Container %{public}s has detached", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v5 + 8))(v8, v4);
  *(v2 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state) = 9;
  result = sub_10001DC7C();
  if (a1)
  {
    return a1(0);
  }

  return result;
}

uint64_t sub_100011754(void (*a1)(char *, char *, uint64_t), void (*a2)(uint64_t), uint64_t a3)
{
  v54 = a3;
  v65 = a2;
  v61 = a1;
  v4 = type metadata accessor for Logger();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  __chkstk_darwin(v4);
  v66 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError.Code();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DIPError();
  v56 = *(v67 - 8);
  v10 = *(v56 + 64);
  v11 = __chkstk_darwin(v67);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v51 - v13;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v14 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v15 = *(v14 - 8);
  v62 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006BF740;
  v18 = v17 + v16;
  v19 = (v17 + v16 + *(v14 + 48));
  v20 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
  v21 = type metadata accessor for DIPError.PropertyKey();
  v22 = *(*(v21 - 8) + 104);
  (v22)(v18, v20, v21);
  v23 = *(v3 + 24);
  v24 = *(v3 + 32);
  v19[3] = &type metadata for String;
  v19[4] = &protocol witness table for String;
  v53 = v23;
  *v19 = v23;
  v19[1] = v24;
  v25 = v18 + v62 + *(v14 + 48);
  v22();
  v26 = v55;
  v62 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state;
  LOBYTE(v22) = *(v3 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
  *(v25 + 24) = &type metadata for DIPCloudContainerState;
  *(v25 + 32) = sub_10001F584();
  *v25 = v22;
  v52 = v24;

  sub_10003C9C0(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  v27 = v57;
  swift_deallocClassInstance();
  (*(v59 + 104))(v58, enum case for DIPError.Code.internalError(_:), v60);
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  v28 = v56;
  v29 = v26;
  v61 = *(v56 + 16);
  v61(v27, v26, v67);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v60 = v3;

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v68 = v59;
    *v32 = 136446466;
    *(v32 + 4) = sub_100141FE4(v53, v52, &v68);
    *(v32 + 12) = 2080;
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    v33 = v67;
    v34 = Error.localizedDescription.getter();
    v35 = v27;
    v36 = v29;
    v37 = v28;
    v39 = v38;
    v40 = *(v37 + 8);
    v40(v35, v33);
    v41 = sub_100141FE4(v34, v39, &v68);
    v29 = v36;

    *(v32 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "Container %{public}s entered error state due to error: %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v40 = *(v28 + 8);
    v40(v27, v67);
  }

  (*(v63 + 8))(v66, v64);
  *(v60 + v62) = 9;
  sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
  v42 = v67;
  v43 = swift_allocError();
  v44 = v61;
  v61(v45, v29, v42);
  sub_1000123D0(v43);

  sub_10001DC7C();
  v46 = v65;
  if (v65)
  {
    v47 = v67;
    v48 = swift_allocError();
    v44(v49, v29, v47);
    v46(v48);
  }

  return (v40)(v29, v67);
}

uint64_t sub_100011E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return result;
  }

  v42 = v11;
  v43 = result;
  v14 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_waitingForState;
  swift_beginAccess();
  if (!*(*(v3 + v14) + 16))
  {

    goto LABEL_6;
  }

  sub_10001F640(a2);

  sub_10003B078(a1);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_6:
    swift_beginAccess();
    v17 = *(v3 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v3 + v14);
    *(v3 + v14) = 0x8000000000000000;
    sub_10016C818(_swiftEmptyArrayStorage, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + v14) = v44;
    swift_endAccess();
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  swift_beginAccess();
  v41 = a3;

  v20 = *(v3 + v14);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(v3 + v14);
  v22 = v44;
  *(v4 + v14) = 0x8000000000000000;
  v24 = sub_10003B078(a1);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    __break(1u);
  }

  else
  {
    v28 = v23;
    if (v22[3] >= v27)
    {
      if (v21)
      {
        if ((v23 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_10016F1FC();
        if ((v28 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_1001654FC(v27, v21);
      v29 = sub_10003B078(a1);
      if ((v28 & 1) != (v30 & 1))
      {
LABEL_26:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v24 = v29;
      if ((v28 & 1) == 0)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    v22 = *(v44[7] + 8 * v24);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_15;
    }
  }

  v22 = sub_1003C4FDC(0, v22[2] + 1, 1, v22);
LABEL_15:
  v32 = v22[2];
  v31 = v22[3];
  if (v32 >= v31 >> 1)
  {
    v22 = sub_1003C4FDC((v31 > 1), v32 + 1, 1, v22);
  }

  v22[2] = v32 + 1;
  v33 = &v22[2 * v32];
  v33[4] = sub_10001FE60;
  v33[5] = v19;
  v34 = v44;
  *(v44[7] + 8 * v24) = v22;
  *(v4 + v14) = v34;
  swift_endAccess();
  defaultLogger()();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v37 = 136446466;
    v38 = sub_10000BE94(a1);
    v40 = sub_100141FE4(v38, v39, v45);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_100141FE4(*(v4 + 24), *(v4 + 32), v45);
    _os_log_impl(&_mh_execute_header, v35, v36, "Handler is waiting for state %{public}s in container %{public}s", v37, 0x16u);
    swift_arrayDestroy();

    sub_10001FE8C(a2);
  }

  else
  {
    sub_10001FE8C(a2);
  }

  return (*(v42 + 8))(v13, v43);
}

uint64_t sub_1000122BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_waitingForState;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (*(v5 + 16))
  {

    v6 = sub_10003B078(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = (v8 + 40);
        do
        {
          v12 = *(v10 - 1);
          v11 = *v10;
          v13[0] = 0;

          v12(v13);

          v10 += 2;
          --v9;
        }

        while (v9);
      }

      swift_beginAccess();
      sub_10014B8AC(0, a1);
      return swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000123D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_waitingForState;
  swift_beginAccess();
  v26 = v3;
  v27 = v1;
  v4 = *(v1 + v3);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + v3) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v28 = result;
  while (v10)
  {
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = *(result + 56);
    v17 = (v13 << 9) | (8 * v15);
    v18 = *(v16 + v17);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = *(v16 + v17);

      v21 = (v18 + 40);
      do
      {
        v23 = *(v21 - 1);
        v22 = *v21;
        v29 = a1;

        v23(&v29);

        v21 += 2;
        --v19;
      }

      while (v19);

      result = v28;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      v24 = sub_10003D01C(_swiftEmptyArrayStorage);
      v25 = *(v27 + v26);
      *(v27 + v26) = v24;
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100012538(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 + 40);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a2;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a1;
  aBlock[4] = sub_10001FFEC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD208;
  v19 = _Block_copy(aBlock);

  swift_errorRetain();
  sub_10001F640(a4);
  v20 = a1;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v13, v10);
  (*(v14 + 8))(v17, v23);
}

void sub_100012828(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v80 = a5;
  v82 = a4;
  v89 = a3;
  v86 = a2;
  v6 = type metadata accessor for DIPError.PropertyKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DIPError.Code();
  v83 = *(v87 - 8);
  v10 = *(v83 + 64);
  __chkstk_darwin(v87);
  v88 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError();
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = *(v84 + 64);
  v14 = __chkstk_darwin(v12);
  v72 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v73 = &v70 - v17;
  v18 = __chkstk_darwin(v16);
  v74 = &v70 - v19;
  __chkstk_darwin(v18);
  v81 = &v70 - v20;
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v21 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v22 = *(*(v21 - 8) + 72);
  v23 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006BF740;
  v25 = (v24 + v23 + *(v21 + 48));
  v77 = v7;
  v26 = *(v7 + 104);
  (v26)(v24 + v23, enum case for DIPError.PropertyKey.cloudContainerName(_:), v6);
  v27 = *(a1 + 24);
  v28 = *(a1 + 32);
  v25[3] = &type metadata for String;
  v25[4] = &protocol witness table for String;
  v75 = v27;
  *v25 = v27;
  v25[1] = v28;
  v29 = v24 + v23 + v22 + *(v21 + 48);
  v78 = v6;
  v26();
  v79 = a1;
  LOBYTE(v22) = *(a1 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
  *(v29 + 24) = &type metadata for DIPCloudContainerState;
  *(v29 + 32) = sub_10001F584();
  *v29 = v22;
  v30 = v86;

  v31 = sub_10003C9C0(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v30)
  {
    (*(v83 + 104))(v88, enum case for DIPError.Code.internalError(_:), v87);
    swift_errorRetain();
    swift_errorRetain();
    v32 = v81;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v33 = v89;
    if (v89)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v34 = v85;
      v35 = swift_allocError();
      v36 = v84;
      (*(v84 + 16))(v37, v32, v34);
      v33(v35);

      (*(v36 + 8))(v32, v34);
    }

    else
    {
      (*(v84 + 8))(v32, v85);
    }

    return;
  }

  v38 = v79;
  v71 = v28;
  v39 = v76;
  v86 = v31;
  v40 = v77;
  v41 = v78;
  v42 = v87;
  v43 = v88;
  if (v80)
  {
    v81 = v80;
    v44 = [v81 accountStatus];
    if (v44 == 1)
    {
      if ((*(*v38 + 360))() & 1) == 0 || ([v81 supportsDeviceToDeviceEncryption])
      {

        if (v89)
        {
          v89(0);
        }

        v45 = v81;

        return;
      }

      (*(v83 + 104))(v43, enum case for DIPError.Code.cloudkitD2DEncryptionNotSupported(_:), v42);
      v64 = v72;
    }

    else
    {
      v54 = v44;
      (v26)(v39, enum case for DIPError.PropertyKey.appleAccountStatus(_:), v41);
      v55 = [v81 accountStatus];
      v93 = &type metadata for Int;
      v94 = &protocol witness table for Int;
      *&v92 = v55;
      sub_10001F358(&v92, v91);
      v56 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v56;
      v58 = sub_10001F370(v91, v91[3]);
      sub_100658C24(*v58, v39, isUniquelyReferenced_nonNull_native, &v90);
      (*(v40 + 8))(v39, v41);
      sub_10000BB78(v91);
      *&v92 = 0;
      *(&v92 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(91);
      v59._countAndFlagsBits = 0xD00000000000001ALL;
      v59._object = 0x80000001006FB440;
      String.append(_:)(v59);
      v60._countAndFlagsBits = v75;
      v60._object = v71;
      String.append(_:)(v60);
      v61._countAndFlagsBits = 0xD00000000000002ALL;
      v61._object = 0x80000001006FB460;
      String.append(_:)(v61);
      v91[0] = v54;
      v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v62);

      v63._countAndFlagsBits = 0xD000000000000013;
      v63._object = 0x80000001006FB490;
      String.append(_:)(v63);
      (*(v83 + 104))(v43, enum case for DIPError.Code.invalidAppleAccount(_:), v42);
      v64 = v73;
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v65 = v89;
    if (v89)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v66 = v85;
      v67 = swift_allocError();
      v68 = v84;
      (*(v84 + 16))(v69, v64, v66);
      v65(v67);

      (*(v68 + 8))(v64, v66);
    }

    else
    {
      (*(v84 + 8))(v64, v85);
    }

    return;
  }

  *&v92 = 0;
  *(&v92 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v46._countAndFlagsBits = 0xD00000000000003BLL;
  v46._object = 0x80000001006FB3E0;
  String.append(_:)(v46);
  v47._countAndFlagsBits = v75;
  v47._object = v71;
  String.append(_:)(v47);
  (*(v83 + 104))(v43, enum case for DIPError.Code.unexpectedDeviceState(_:), v42);
  v48 = v74;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  v49 = v89;
  v51 = v84;
  v50 = v85;
  if (v89)
  {
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    v52 = swift_allocError();
    (*(v51 + 16))(v53, v48, v50);
    v49(v52);
  }

  (*(v51 + 8))(v48, v50);
}

void sub_10001335C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000133E8(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - v12;
  v14 = (*(*v2 + 312))(v11);
  v15 = *(v14 + 16);
  if (v15)
  {
    v41 = v6;
    v42 = a2;
    v43 = a1;
    v16 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
    result = swift_beginAccess();
    v18 = (v14 + 40);
    v19 = -v15;
    v20 = -1;
    while (v19 + v20 != -1)
    {
      if (++v20 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      if (*(*(v2 + v16) + 16))
      {
        v21 = v18 + 2;
        v23 = *(v18 - 1);
        v22 = *v18;

        sub_10003ADCC(v23, v22);
        LOBYTE(v23) = v24;

        v18 = v21;
        if (v23)
        {
          continue;
        }
      }

      v25 = [objc_opt_self() fetchAllRecordZonesOperation];
      v26 = [objc_allocWithZone(CKOperationConfiguration) init];
      [v26 setQualityOfService:17];
      [v25 setConfiguration:v26];
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      v28 = swift_allocObject();
      *(v28 + 16) = v2;
      *(v28 + 24) = v27;

      CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter();
      v29 = swift_allocObject();
      v29[2] = v2;
      v29[3] = v27;
      v31 = v42;
      v30 = v43;
      v29[4] = v43;
      v29[5] = v31;

      sub_10001F640(v30);
      CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter();
      sub_10001B4FC(v25, 0);
    }

    defaultLogger()();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), &v45);
      _os_log_impl(&_mh_execute_header, v37, v38, "Not fetching zones for container %{public}s since all zones are cached.", v39, 0xCu);
      sub_10000BB78(v40);
    }

    result = (*(v44 + 8))(v10, v41);
    if (v43)
    {
      return v43(0);
    }
  }

  else
  {

    defaultLogger()();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = v6;
      v36 = swift_slowAlloc();
      v46 = v36;
      *v34 = 136446210;
      *(v34 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), &v46);
      _os_log_impl(&_mh_execute_header, v32, v33, "Not fetching zones for container %{public}s since no zones are required.", v34, 0xCu);
      sub_10000BB78(v36);

      result = (*(v44 + 8))(v13, v35);
      if (!a1)
      {
        return result;
      }
    }

    else
    {

      result = (*(v44 + 8))(v13, v6);
      if (!a1)
      {
        return result;
      }
    }

    return a1(0);
  }

  return result;
}

uint64_t sub_100013940(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a4 + 40);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v19 = a3 & 1;
  *(v18 + 24) = a3 & 1;
  *(v18 + 32) = a1;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  aBlock[4] = sub_10001FDF4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FD050;
  v20 = _Block_copy(aBlock);
  sub_10001F8C8(a2, v19);
  v21 = a1;

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v25 + 8))(v13, v10);
  (*(v14 + 8))(v17, v24);
}

uint64_t sub_100013C38(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    defaultLogger()();
    sub_10001F8C8(a1, 1);
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    sub_10001F8A4(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v39 = v18;
      v40 = swift_slowAlloc();
      v42 = v40;
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *v18 = v14;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v38 = v16;
      v41 = a5;
      v19 = v14;
      v20 = Error.localizedDescription.getter();
      v22 = sub_100141FE4(v20, v21, &v42);
      a5 = v41;

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v15, v38, "fetchZones error received for zone ID %@: %s", v17, 0x16u);
      sub_10000BE18(v39, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v40);
    }

    (*(v10 + 8))(v13, v9);
    swift_beginAccess();
    v23 = *(a5 + 16);
    *(a5 + 16) = a1;
  }

  else
  {
    v25 = [a3 zoneName];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = [a3 zoneName];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
    if (v30 == static CKRecordZoneID.defaultZoneName.getter() && v32 == v33)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        v36 = [a1 zoneID];
        swift_beginAccess();
        sub_10014B7B4(v36, v26, v28);
        return swift_endAccess();
      }
    }
  }
}

void sub_100014024(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v79 = a6;
  LODWORD(v78) = a5;
  v82 = type metadata accessor for DIPError();
  isa = v82[-1].isa;
  v11 = *(isa + 8);
  __chkstk_darwin(v82);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for DIPError.Code();
  v19 = *(v80 - 1);
  v20 = *(v19 + 64);
  __chkstk_darwin(v80);
  v81 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (a2)
    {
      (*(v19 + 104))(v81, enum case for DIPError.Code.internalError(_:), v80);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v22 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      a2(v22);
    }

    return;
  }

  v72 = a4;
  v75 = v18;
  v70 = v15;
  v71 = v14;
  v23 = v79;
  v73 = v13;
  v77 = a2;
  v74 = isa;
  v76 = a3;
  if (v78)
  {
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v24 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v25 = *(v24 - 8);
    v78 = *(v25 + 72);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1006BF740;
    v28 = v27 + v26;
    v29 = (v28 + *(v24 + 48));
    v30 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v31 = type metadata accessor for DIPError.PropertyKey();
    v32 = *(*(v31 - 8) + 104);
    (v32)(v28, v30, v31);
    v33 = *(v23 + 24);
    v34 = *(v23 + 32);
    v29[3] = &type metadata for String;
    v29[4] = &protocol witness table for String;
    *v29 = v33;
    v29[1] = v34;
    v35 = v28 + v78 + *(v24 + 48);
    v36 = v77;
    v32();
    v37 = *(v23 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v35 + 24) = &type metadata for DIPCloudContainerState;
    *(v35 + 32) = sub_10001F584();
    *v35 = v37;

    sub_10003C9C0(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_10001CEBC();
    (*(v19 + 104))(v81, enum case for DIPError.Code.internalError(_:), v80);
    v38 = v73;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v39 = v82;
    v40 = v74;
    if (v36)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v41 = swift_allocError();
      (*(v40 + 2))(v42, v38, v39);
      v36(v41);
    }

    (*(v40 + 1))(v38, v39);
    return;
  }

  v43 = v75;
  defaultLogger()();
  v44 = v23;

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  v47 = os_log_type_enabled(v45, v46);
  v48 = &qword_100833000;
  v49 = v77;
  if (v47)
  {
    LODWORD(v81) = v46;
    v50 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v84 = v80;
    *v50 = 136446466;
    *(v50 + 4) = sub_100141FE4(*(v44 + 24), *(v44 + 32), &v84);
    *(v50 + 12) = 2112;
    v51 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
    swift_beginAccess();
    v52 = *(v44 + v51);
    v53 = *(v52 + 16);
    v82 = v45;
    if (v53)
    {
      v54 = sub_1003BA064(v53, 0);
      v55 = sub_1003BC304(v83, v54 + 4, v53, v52);
      v74 = v83[4];

      sub_10001FA6C();
      if (v55 != v53)
      {
LABEL_21:
        __break(1u);
        return;
      }

      v49 = v77;
      v56 = v71;
      v57 = v70;
      v43 = v75;
      v48 = &qword_100833000;
    }

    else
    {
      v49 = v77;
      v56 = v71;
      v57 = v70;
    }

    v58 = Array._bridgeToObjectiveC()().super.isa;

    *(v50 + 14) = v58;
    v59 = v78;
    *v78 = v58;
    v60 = v82;
    _os_log_impl(&_mh_execute_header, v82, v81, "Successfully fetched record zones for container %{public}s: %@", v50, 0x16u);
    sub_10000BE18(v59, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v80);

    (*(v57 + 8))(v43, v56);
  }

  else
  {

    (*(v70 + 8))(v43, v71);
  }

  v61 = v48[225];
  swift_beginAccess();
  v62 = *(v44 + v61);
  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = sub_1003BA064(*(v62 + 16), 0);
    v65 = sub_1003BC304(v83, v64 + 4, v63, v62);

    sub_10001FA6C();
    if (v65 != v63)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  v66 = [objc_opt_self() standardUserDefaults];
  v67 = Array._bridgeToObjectiveC()().super.isa;

  (*(*v79 + 328))(v68);
  v69 = String._bridgeToObjectiveC()();

  [v66 setObject:v67 forKey:v69];

  if (v49)
  {
    v49(0);
  }
}

uint64_t sub_100014A54(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v54 - v13;
  v15 = (*(*v2 + 320))(v12);
  v16 = v15;
  if (*(v15 + 16))
  {
    v56 = v6;
    v57 = v11;
    v55 = v7;
    v58 = a2;
    v59 = a1;
    v17 = v15 + 64;
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
    v62 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
    result = swift_beginAccess();
    v22 = 0;
    v23 = (v18 + 63) >> 6;
    v60 = v16;
    v61 = v3;
    while (v20)
    {
LABEL_12:
      v25 = (*(v16 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v20)))));
      v26 = v25[1];
      v27 = *(v3 + v62);
      if (!*(v27 + 16))
      {
        v53 = v25[1];

        goto LABEL_22;
      }

      v28 = *v25;
      v29 = *(v27 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v30 = Hasher._finalize()();
      v31 = -1 << *(v27 + 32);
      v32 = v30 & ~v31;
      if (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
LABEL_21:

        v3 = v61;
LABEL_22:

        v36 = [objc_opt_self() fetchAllSubscriptionsOperation];
        v37 = [objc_allocWithZone(CKOperationConfiguration) init];
        [v37 setQualityOfService:17];
        [v36 setConfiguration:v37];
        v38 = swift_allocObject();
        *(v38 + 16) = 0;
        v39 = swift_allocObject();
        *(v39 + 16) = v3;
        *(v39 + 24) = v38;

        CKFetchSubscriptionsOperation.perSubscriptionResultBlock.setter();
        v40 = swift_allocObject();
        v40[2] = v3;
        v40[3] = v38;
        v42 = v58;
        v41 = v59;
        v40[4] = v59;
        v40[5] = v42;

        sub_10001F640(v41);
        CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.setter();
        sub_10001B4FC(v36, 0);
      }

      v20 &= v20 - 1;
      v33 = ~v31;
      while (1)
      {
        v34 = (*(v27 + 48) + 16 * v32);
        v35 = *v34 == v28 && v34[1] == v26;
        if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v16 = v60;
      v3 = v61;
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return result;
      }

      if (v24 >= v23)
      {
        break;
      }

      v20 = *(v17 + 8 * v24);
      ++v22;
      if (v20)
      {
        v22 = v24;
        goto LABEL_12;
      }
    }

    v48 = v57;
    defaultLogger()();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63[0] = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), v63);
      _os_log_impl(&_mh_execute_header, v49, v50, "Not fetching subscriptions for container %{public}s since all subscriptions are cached.", v51, 0xCu);
      sub_10000BB78(v52);
    }

    result = (*(v55 + 8))(v48, v56);
    if (v59)
    {
      return v59(0);
    }
  }

  else
  {

    defaultLogger()();

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v7;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v63[0] = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), v63);
      _os_log_impl(&_mh_execute_header, v43, v44, "Not fetching subscriptions for container %{public}s since no subscriptions are required.", v46, 0xCu);
      sub_10000BB78(v47);

      result = (*(v45 + 8))(v14, v6);
      if (!a1)
      {
        return result;
      }
    }

    else
    {

      result = (*(v7 + 8))(v14, v6);
      if (!a1)
      {
        return result;
      }
    }

    return a1(0);
  }

  return result;
}

uint64_t sub_1000150B4(void *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    defaultLogger()();

    sub_10001F8C8(a1, 1);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    sub_10001F8A4(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27 = a6;
      v19 = v18;
      v26 = swift_slowAlloc();
      v29[0] = v26;
      *v19 = 136315394;
      *(v19 + 4) = sub_100141FE4(a4, a5, v29);
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = sub_100141FE4(v20, v21, v29);

      *(v19 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "fetch subscriptions error received for subscription ID %s: %s", v19, 0x16u);
      swift_arrayDestroy();

      a6 = v27;
    }

    (*(v12 + 8))(v15, v11);
    swift_beginAccess();
    v23 = *(a6 + 16);
    *(a6 + 16) = a1;
  }

  else
  {
    swift_beginAccess();

    sub_100151120(&v28, a4, a5);
    swift_endAccess();
  }
}

uint64_t sub_10001535C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a8;
  v28 = a9;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v30 = *(v19 - 8);
  v31 = v19;
  v20 = *(v30 + 64);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a3 + 40);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = a6;
  *(v23 + 40) = a1;
  a2 &= 1u;
  *(v23 + 48) = a2;
  *(v23 + 56) = a3;
  aBlock[4] = v27;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = v28;
  v24 = _Block_copy(aBlock);

  sub_10001F640(a5);
  sub_10001F6D4(a1, a2);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v32 + 8))(v18, v15);
  (*(v30 + 8))(v22, v31);
}

void sub_100015654(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v73 = a6;
  LODWORD(v72) = a5;
  v76 = type metadata accessor for DIPError();
  v10 = *(v76 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v76);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DIPError.Code();
  v19 = *(v74 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v74);
  v75 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (a2)
    {
      (*(v19 + 104))(v75, enum case for DIPError.Code.internalError(_:), v74);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v22 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      a2(v22);
    }
  }

  else
  {
    v65 = v15;
    v66 = a4;
    v67 = v14;
    v68 = v13;
    v69 = v10;
    v70 = a3;
    v71 = a2;
    if (v72)
    {
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v23 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
      v24 = *(v23 - 8);
      v72 = *(v24 + 72);
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1006BF740;
      v27 = v26 + v25;
      v28 = (v26 + v25 + *(v23 + 48));
      v29 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
      v30 = type metadata accessor for DIPError.PropertyKey();
      v31 = *(*(v30 - 8) + 104);
      v32 = v73;
      (v31)(v27, v29, v30);
      v33 = *(v32 + 24);
      v34 = *(v32 + 32);
      v28[3] = &type metadata for String;
      v28[4] = &protocol witness table for String;
      *v28 = v33;
      v28[1] = v34;
      v35 = v27 + v72 + *(v23 + 48);
      v31();
      v36 = *(v32 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
      *(v35 + 24) = &type metadata for DIPCloudContainerState;
      *(v35 + 32) = sub_10001F584();
      *v35 = v36;

      sub_10003C9C0(v26);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10001CEBC();
      (*(v19 + 104))(v75, enum case for DIPError.Code.internalError(_:), v74);
      v37 = v68;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v38 = v71;
      v39 = v76;
      v40 = v69;
      if (v71)
      {
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
        v41 = swift_allocError();
        (*(v40 + 16))(v42, v37, v39);
        v38(v41);
      }

      (*(v40 + 8))(v37, v39);
    }

    else
    {
      defaultLogger()();
      v43 = v73;

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v46 = 136446466;
        *(v46 + 4) = sub_100141FE4(*(v43 + 24), *(v43 + 32), &v77);
        *(v46 + 12) = 2080;
        v47 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
        swift_beginAccess();
        v48 = *(v43 + v47);

        v49 = Set.description.getter();
        v51 = v50;

        v52 = sub_100141FE4(v49, v51, &v77);

        *(v46 + 14) = v52;
        _os_log_impl(&_mh_execute_header, v44, v45, "Successfully fetched subscriptions for container self.containerName%{public}s: %s", v46, 0x16u);
        swift_arrayDestroy();
      }

      (*(v65 + 8))(v18, v67);
      v53 = [objc_opt_self() standardUserDefaults];
      v54 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
      swift_beginAccess();
      v55 = *(v43 + v54);
      v56 = *(v55 + 16);
      if (v56)
      {
        v76 = v53;
        v57 = sub_1003BA064(v56, 0);
        v58 = sub_1003BC45C(&v77, v57 + 4, v56, v55);

        sub_10001FA6C();
        if (v58 != v56)
        {
          __break(1u);
          return;
        }

        v59 = v71;
        v60 = v73;
        v53 = v76;
      }

      else
      {
        v60 = v43;
        v59 = v71;
      }

      isa = Array._bridgeToObjectiveC()().super.isa;

      (*(*v60 + 336))(v62);
      v63 = String._bridgeToObjectiveC()();

      [v53 setObject:isa forKey:v63];

      if (v59)
      {
        v59(0);
      }
    }
  }
}

uint64_t sub_100015F84(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v57 - v13;
  v15 = (*(*v2 + 312))(v12);
  v16 = *(v15 + 16);
  if (v16)
  {
    v62 = v11;
    v58 = v7;
    v59 = v6;
    v60 = a2;
    v64 = a1;
    v17 = swift_allocObject();
    v63 = v17;
    *(v17 + 16) = _swiftEmptyArrayStorage;
    v18 = (v17 + 16);
    v19 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
    v20 = v3;
    swift_beginAccess();
    v61 = v15;
    v21 = (v15 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v24 = *(*(v20 + v19) + 16);

      if (v24 && (, sub_10003ADCC(v22, v23), v26 = v25, , (v26 & 1) != 0))
      {
      }

      else
      {
        v27 = objc_allocWithZone(CKRecordZone);
        v28 = String._bridgeToObjectiveC()();

        [v27 initWithZoneName:v28];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v21 += 2;
      --v16;
    }

    while (v16);

    v30 = *v18;
    if (*v18 >> 62)
    {
      if (v30 < 0)
      {
        v56 = *v18;
      }

      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v64;
    v33 = v20;
    v34 = v62;
    if (v31)
    {
      v35 = [objc_allocWithZone(CKModifyRecordZonesOperation) init];
      v36 = v63;
      v37 = *(v63 + 16);
      sub_10001F8D4(0, &qword_100833A80, CKRecordZone_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v35 setRecordZonesToSave:isa];

      v39 = [objc_allocWithZone(CKOperationConfiguration) init];
      [v39 setQualityOfService:17];
      [v35 setConfiguration:v39];
      v40 = swift_allocObject();
      *(v40 + 16) = _swiftEmptyArrayStorage;
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      v42 = swift_allocObject();
      v42[2] = v33;
      v42[3] = v40;
      v42[4] = v41;

      CKModifyRecordZonesOperation.perRecordZoneSaveBlock.setter();
      v43 = swift_allocObject();
      v43[2] = v33;
      v43[3] = v41;
      v44 = v60;
      v43[4] = v32;
      v43[5] = v44;
      v43[6] = v40;
      v43[7] = v36;

      sub_10001F640(v32);

      CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter();
      sub_10001B4FC(v35, 0);
    }

    else
    {
      defaultLogger()();

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v65 = v55;
        *v54 = 136446210;
        *(v54 + 4) = sub_100141FE4(*(v33 + 24), *(v33 + 32), &v65);
        _os_log_impl(&_mh_execute_header, v52, v53, "No zones to create for container %{public}s; skipping zone creation", v54, 0xCu);
        sub_10000BB78(v55);
      }

      (*(v58 + 8))(v34, v59);
      if (v32)
      {
        v32(0);
      }
    }
  }

  else
  {

    defaultLogger()();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v6;
      v48 = swift_slowAlloc();
      v49 = v7;
      v50 = swift_slowAlloc();
      v66 = v50;
      *v48 = 136446210;
      *(v48 + 4) = sub_100141FE4(*(v3 + 24), *(v3 + 32), &v66);
      _os_log_impl(&_mh_execute_header, v45, v46, "No zones required for container %{public}s; skipping zone creation", v48, 0xCu);
      sub_10000BB78(v50);

      result = (*(v49 + 8))(v14, v47);
      if (!a1)
      {
        return result;
      }
    }

    else
    {

      result = (*(v7 + 8))(v14, v6);
      if (!a1)
      {
        return result;
      }
    }

    return (a1)(0);
  }
}

uint64_t sub_100016658(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  __chkstk_darwin(v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v26 = *(v16 - 8);
  v27 = v16;
  v17 = *(v26 + 64);
  __chkstk_darwin(v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(a4 + 40);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v21 = a3 & 1;
  *(v20 + 24) = a3 & 1;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a1;
  *(v20 + 56) = a6;
  aBlock[4] = sub_10001FAD0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FCE70;
  v22 = _Block_copy(aBlock);
  sub_10001F8C8(a2, v21);

  v23 = a1;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v28 + 8))(v15, v12);
  (*(v26 + 8))(v19, v27);
}

uint64_t sub_100016958(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    defaultLogger()();
    sub_10001F8C8(a1, 1);
    v16 = a5;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    sub_10001F8A4(a1, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = v20;
      v45 = swift_slowAlloc();
      v48 = v45;
      *v19 = 138412546;
      *(v19 + 4) = v16;
      *v20 = v16;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v46 = v11;
      v47 = a6;
      v21 = v16;
      v22 = Error.localizedDescription.getter();
      v24 = sub_100141FE4(v22, v23, &v48);

      *(v19 + 14) = v24;
      a6 = v47;
      _os_log_impl(&_mh_execute_header, v17, v18, "createZones error received for zone ID %@: %s", v19, 0x16u);
      sub_10000BE18(v44, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v45);

      (*(v12 + 8))(v15, v46);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    swift_beginAccess();
    v42 = *(a6 + 16);
    *(a6 + 16) = a1;
  }

  else
  {
    v25 = [a1 zoneID];
    v26 = [v25 zoneName];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = [a1 zoneID];
    swift_beginAccess();
    sub_10014B7B4(v30, v27, v29);
    swift_endAccess();
    v31 = [a1 zoneID];
    v32 = [v31 zoneName];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    swift_beginAccess();
    v36 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_1003C5110(0, *(v36 + 2) + 1, 1, v36);
      *(a4 + 16) = v36;
    }

    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    if (v39 >= v38 >> 1)
    {
      v36 = sub_1003C5110((v38 > 1), v39 + 1, 1, v36);
    }

    *(v36 + 2) = v39 + 1;
    v40 = &v36[16 * v39];
    *(v40 + 4) = v33;
    *(v40 + 5) = v35;
    *(a4 + 16) = v36;
    return swift_endAccess();
  }
}

uint64_t sub_100016D6C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v30 - 8);
  v15 = *(v34 + 64);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v32 = *(v17 - 8);
  v33 = v17;
  v18 = *(v32 + 64);
  __chkstk_darwin(v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a3 + 40);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  *(v21 + 32) = a6;
  *(v21 + 40) = a3;
  *(v21 + 48) = a1;
  v22 = a2 & 1;
  *(v21 + 56) = a2 & 1;
  v23 = v28;
  *(v21 + 64) = a7;
  *(v21 + 72) = v23;
  aBlock[4] = sub_10001FA54;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FCE20;
  v24 = _Block_copy(aBlock);

  sub_10001F640(a5);

  sub_10001F6D4(a1, v22);

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  v26 = v29;
  v25 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v34 + 8))(v26, v25);
  (*(v32 + 8))(v20, v33);
}

uint64_t sub_100017094(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v100 = a8;
  v101 = a7;
  LODWORD(v103) = a6;
  v99 = a5;
  v102 = a4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DIPError();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v88 - v22;
  v105 = type metadata accessor for DIPError.Code();
  v104 = *(v105 - 8);
  v24 = *(v104 + 64);
  __chkstk_darwin(v105);
  v106 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    if (a2)
    {
      (*(v104 + 104))(v106, enum case for DIPError.Code.internalError(_:), v105);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v27 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      a2(v27);
    }
  }

  else
  {
    v93 = v21;
    v91 = v23;
    v88 = v15;
    v89 = v12;
    v95 = v17;
    v90 = v11;
    v96 = v16;
    v97 = a3;
    v98 = a2;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v28 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v94 = v28;
    v29 = *(*(v28 - 8) + 72);
    v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1006BF740;
    v32 = v31 + v30;
    v33 = (v31 + v30 + *(v28 + 48));
    v34 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v35 = type metadata accessor for DIPError.PropertyKey();
    v36 = *(*(v35 - 8) + 104);
    (v36)(v32, v34, v35);
    v37 = v102;
    v38 = *(v102 + 24);
    v39 = *(v102 + 32);
    v33[3] = &type metadata for String;
    v33[4] = &protocol witness table for String;
    v92 = v38;
    *v33 = v38;
    v33[1] = v39;
    v40 = v32 + v29 + *(v94 + 48);
    v36();
    LOBYTE(v34) = *(v37 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v40 + 24) = &type metadata for DIPCloudContainerState;
    *(v40 + 32) = sub_10001F584();
    *v40 = v34;

    sub_10003C9C0(v31);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v103)
    {
      sub_10001CEBC();
      (*(v104 + 104))(v106, enum case for DIPError.Code.internalError(_:), v105);
      v41 = v93;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v42 = v98;
      v43 = v96;
      v44 = v95;
      if (v98)
      {
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
        v45 = swift_allocError();
        (*(v44 + 16))(v46, v41, v43);
        v42(v45);
      }

      return (*(v44 + 8))(v41, v43);
    }

    else
    {
      v103 = v39;
      v47 = v37;
      v48 = v101;
      swift_beginAccess();
      v49 = *(*(v48 + 16) + 16);
      v50 = v100;
      swift_beginAccess();
      v51 = *(v50 + 16);
      v52 = v98;
      if (v51 >> 62)
      {
        if (v51 < 0)
        {
          v86 = *(v50 + 16);
        }

        v53 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v54 = v96;
      v55 = v95;
      if (v49 == v53)
      {

        v56 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
        swift_beginAccess();
        v57 = *(v37 + v56);
        v58 = *(v57 + 16);
        if (v58)
        {
          v59 = sub_1003BA064(*(v57 + 16), 0);
          v60 = sub_1003BC304(&v107, v59 + 4, v58, v57);

          result = sub_10001FA6C();
          if (v60 != v58)
          {
            __break(1u);
            return result;
          }

          v48 = v101;
        }

        v72 = v89;
        v73 = [objc_opt_self() standardUserDefaults];
        isa = Array._bridgeToObjectiveC()().super.isa;

        (*(*v47 + 328))(v75);
        v76 = String._bridgeToObjectiveC()();

        [v73 setObject:isa forKey:v76];

        v77 = v88;
        defaultLogger()();

        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v111[0] = swift_slowAlloc();
          *v80 = 136446466;
          *(v80 + 4) = sub_100141FE4(v92, v103, v111);
          *(v80 + 12) = 2082;
          swift_beginAccess();
          v81 = *(v48 + 16);

          v82 = Array.description.getter();
          v84 = v83;

          v85 = sub_100141FE4(v82, v84, v111);

          *(v80 + 14) = v85;
          _os_log_impl(&_mh_execute_header, v78, v79, "Created container %{public}s zones %{public}s", v80, 0x16u);
          swift_arrayDestroy();
        }

        result = (*(v72 + 8))(v77, v90);
        if (v98)
        {
          return (v98)(0);
        }
      }

      else
      {
        v107 = 0;
        v108 = 0xE000000000000000;
        _StringGuts.grow(_:)(69);
        v111[0] = v107;
        v111[1] = v108;
        v61._countAndFlagsBits = 0xD00000000000002ALL;
        v61._object = 0x80000001006FB240;
        String.append(_:)(v61);
        v62._countAndFlagsBits = v92;
        v62._object = v103;
        String.append(_:)(v62);
        v63._countAndFlagsBits = 0x746365707865203BLL;
        v63._object = 0xED0000203D206465;
        String.append(_:)(v63);
        swift_beginAccess();
        v64 = *(v50 + 16);
        if (v64 >> 62)
        {
          if (v64 < 0)
          {
            v87 = *(v50 + 16);
          }

          v65 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v110 = v65;
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v66);

        v67._countAndFlagsBits = 0x203D20746F67202CLL;
        v67._object = 0xE800000000000000;
        String.append(_:)(v67);
        swift_beginAccess();
        v109 = *(*(v48 + 16) + 16);
        v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v68);

        (*(v104 + 104))(v106, enum case for DIPError.Code.cloudkitResponseInconsistent(_:), v105);
        v69 = v91;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        if (v52)
        {
          sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
          v70 = swift_allocError();
          (*(v55 + 16))(v71, v69, v54);
          v52(v70);
        }

        return (*(v55 + 8))(v69, v54);
      }
    }
  }

  return result;
}

uint64_t sub_100017DA0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v119 = a2;
  v113 = type metadata accessor for DIPError.Code();
  v112 = *(v113 - 8);
  v5 = *(v112 + 64);
  __chkstk_darwin(v113);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v118 = *(v13 - 8);
  v14 = *(v118 + 64);
  v15 = __chkstk_darwin(v13);
  v117 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v108 - v18;
  v20 = (*(*v2 + 320))(v17);
  if (!*(v20 + 16))
  {

    defaultLogger()();

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = v3;
      v77 = v75;
      v128 = v75;
      *v74 = 136446210;
      *(v74 + 4) = sub_100141FE4(*(v76 + 24), *(v76 + 32), &v128);
      _os_log_impl(&_mh_execute_header, v72, v73, "No subscriptions required in container %{public}s; skipping subscription creation", v74, 0xCu);
      sub_10000BB78(v77);
    }

    result = (*(v118 + 8))(v19, v13);
    if (a1)
    {
      return (a1)(0);
    }

    return result;
  }

  v114 = v13;
  v108 = v7;
  v109 = v12;
  v110 = v9;
  v111 = v8;
  v116 = a1;
  v21 = swift_allocObject();
  v115 = v21;
  *(v21 + 16) = _swiftEmptyArrayStorage;
  v22 = (v21 + 16);
  v125 = v20;
  v25 = *(v20 + 64);
  v24 = v20 + 64;
  v23 = v25;
  v26 = 1 << *(v24 - 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v23;
  v29 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
  v123 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
  swift_beginAccess();
  v121 = v29;
  swift_beginAccess();
  v30 = 0;
  v31 = (v26 + 63) >> 6;
  v126 = v3;
  v122 = v22;
  v120 = v24;
  while (v28)
  {
    v32 = v125;
LABEL_13:
    v34 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v35 = (v30 << 10) | (16 * v34);
    v36 = (*(v32 + 48) + v35);
    v38 = *v36;
    v37 = v36[1];
    v39 = (*(v32 + 56) + v35);
    v40 = v39[1];
    v127 = *v39;
    v41 = *(v3 + v123);
    if (*(v41 + 16))
    {
      v42 = *(v41 + 40);
      Hasher.init(_seed:)();

      v124 = v40;

      String.hash(into:)();
      v43 = Hasher._finalize()();
      v44 = -1 << *(v41 + 32);
      v45 = v43 & ~v44;
      if (((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
LABEL_22:

        v3 = v126;
        v40 = v124;
        goto LABEL_24;
      }

      v46 = ~v44;
      while (1)
      {
        v47 = (*(v41 + 48) + 16 * v45);
        v48 = *v47 == v38 && v47[1] == v37;
        if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v3 = v126;
      v22 = v122;
    }

    else
    {

LABEL_24:
      v49 = *(v3 + v121);
      v50 = v127;
      if (!*(v49 + 16))
      {
        goto LABEL_38;
      }

      v51 = *(v3 + v121);

      v52 = sub_10003ADCC(v50, v40);
      if ((v53 & 1) == 0)
      {

LABEL_38:

        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v79 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
        v80 = *(*(v79 - 8) + 72);
        v81 = *(*(v79 - 8) + 80);
        v124 = v40;
        v82 = (v81 + 32) & ~v81;
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_1006BF740;
        v84 = v83 + v82;
        v85 = (v83 + v82 + *(v79 + 48));
        v86 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
        v87 = type metadata accessor for DIPError.PropertyKey();
        v88 = *(*(v87 - 8) + 104);
        (v88)(v84, v86, v87);
        v90 = *(v3 + 32);
        v126 = *(v3 + 24);
        v89 = v126;
        v85[3] = &type metadata for String;
        v85[4] = &protocol witness table for String;
        *v85 = v89;
        v85[1] = v90;
        v91 = v84 + v80 + *(v79 + 48);
        v88();
        LOBYTE(v85) = *(v3 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
        *(v91 + 24) = &type metadata for DIPCloudContainerState;
        *(v91 + 32) = sub_10001F584();
        *v91 = v85;

        sub_10003C9C0(v83);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v128 = 0;
        v129 = 0xE000000000000000;
        _StringGuts.grow(_:)(44);

        v128 = 0xD00000000000001ALL;
        v129 = 0x80000001006FB150;
        v92._countAndFlagsBits = v127;
        v92._object = v124;
        String.append(_:)(v92);

        v93._countAndFlagsBits = 0x746E6F63206E6920;
        v93._object = 0xEE002072656E6961;
        String.append(_:)(v93);
        v94._countAndFlagsBits = v126;
        v94._object = v90;
        String.append(_:)(v94);
        (*(v112 + 104))(v108, enum case for DIPError.Code.unexpectedDaemonState(_:), v113);
        v95 = v109;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        v96 = v116;
        if (v116)
        {
          sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
          v97 = v111;
          v98 = swift_allocError();
          v99 = v110;
          (*(v110 + 16))(v100, v95, v97);
          v96(v98);

          (*(v99 + 8))(v95, v97);
        }

        else
        {
          (*(v110 + 8))(v95, v111);
        }
      }

      v54 = v52;

      v55 = *(*(v49 + 56) + 8 * v54);

      sub_10001F8D4(0, &qword_100833A70, CKRecordZoneSubscription_ptr);
      v56 = v55;
      v57._countAndFlagsBits = v38;
      v57._object = v37;
      CKRecordZoneSubscription.init(zoneID:subscriptionID:)(v56, v57);
      v22 = v122;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v58 = *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v3 = v126;
      v24 = v120;
    }
  }

  v32 = v125;
  while (1)
  {
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_42:
      v101 = _CocoaArrayWrapper.endIndex.getter();
      v59 = v116;
      v60 = v119;
      v61 = v114;
      v62 = v117;
      if (v101)
      {
        goto LABEL_32;
      }

      goto LABEL_43;
    }

    if (v33 >= v31)
    {
      break;
    }

    v28 = *(v24 + 8 * v33);
    ++v30;
    if (v28)
    {
      v30 = v33;
      goto LABEL_13;
    }
  }

  if (*v22 >> 62)
  {
    goto LABEL_42;
  }

  v59 = v116;
  v60 = v119;
  v61 = v114;
  v62 = v117;
  if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    v63 = [objc_allocWithZone(CKModifySubscriptionsOperation) init];
    v64 = v3;
    v65 = v115;
    v66 = *(v115 + 16);
    sub_10001F8D4(0, &qword_100833A78, CKSubscription_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v63 setSubscriptionsToSave:isa];

    v68 = [objc_allocWithZone(CKOperationConfiguration) init];
    [v68 setQualityOfService:17];
    [v63 setConfiguration:v68];
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = v64;
    *(v70 + 24) = v69;

    CKModifySubscriptionsOperation.perSubscriptionSaveBlock.setter();
    v71 = swift_allocObject();
    v71[2] = v64;
    v71[3] = v69;
    v71[4] = v59;
    v71[5] = v60;
    v71[6] = v65;

    sub_10001F640(v59);

    CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter();
    sub_10001B4FC(v63, 0);
  }

LABEL_43:
  defaultLogger()();

  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v106 = v3;
    v107 = v105;
    v128 = v105;
    *v104 = 136446210;
    *(v104 + 4) = sub_100141FE4(*(v106 + 24), *(v106 + 32), &v128);
    _os_log_impl(&_mh_execute_header, v102, v103, "No subscriptions to create in container %{public}s; skipping subscription creation", v104, 0xCu);
    sub_10000BB78(v107);
  }

  (*(v118 + 8))(v62, v61);
  if (v59)
  {
    v59(0);
  }
}

uint64_t sub_100018B38(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a8;
  v28 = a9;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v30 = *(v19 - 8);
  v31 = v19;
  v20 = *(v30 + 64);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a5 + 40);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  a4 &= 1u;
  *(v23 + 24) = a4;
  *(v23 + 32) = a5;
  *(v23 + 40) = a1;
  *(v23 + 48) = a2;
  *(v23 + 56) = a6;
  aBlock[4] = v27;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = v28;
  v24 = _Block_copy(aBlock);
  sub_10001F8C8(a3, a4);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v32 + 8))(v18, v15);
  (*(v30 + 8))(v22, v31);
}

uint64_t sub_100018E2C(void *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    defaultLogger()();
    sub_10001F8C8(a1, 1);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    sub_10001F8A4(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = a4;
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v19 = 136315394;
      *(v19 + 4) = sub_100141FE4(v18, a5, v30);
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = sub_100141FE4(v20, v21, v30);

      *(v19 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "createSubscriptions error received for subscription ID %s: %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    (*(v12 + 8))(v15, v11);
    swift_beginAccess();
    v23 = *(a6 + 16);
    *(a6 + 16) = a1;
  }

  else
  {
    v25 = CKSubscription.subscriptionID.getter();
    v27 = v26;
    swift_beginAccess();
    sub_100151120(&v29, v25, v27);
    swift_endAccess();
  }
}

uint64_t sub_1000190D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v27 - 8);
  v13 = *(v31 + 64);
  __chkstk_darwin(v27);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v29 = *(v16 - 8);
  v30 = v16;
  v17 = *(v29 + 64);
  __chkstk_darwin(v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a3 + 40);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 32) = a6;
  *(v20 + 40) = a3;
  *(v20 + 48) = a1;
  v21 = a2 & 1;
  *(v20 + 56) = a2 & 1;
  *(v20 + 64) = v26;
  aBlock[4] = sub_10001F88C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FCD08;
  v22 = _Block_copy(aBlock);

  sub_10001F640(a5);

  sub_10001F6D4(a1, v21);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  v23 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v31 + 8))(v15, v23);
  (*(v29 + 8))(v19, v30);
}

uint64_t sub_1000193F0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v99 = a7;
  v100 = a6;
  v98 = a5;
  v104 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPError();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v87 - v21;
  v23 = type metadata accessor for DIPError.Code();
  v101 = *(v23 - 8);
  v102 = v23;
  v24 = *(v101 + 64);
  __chkstk_darwin(v23);
  v103 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    if (a2)
    {
      (*(v101 + 104))(v103, enum case for DIPError.Code.internalError(_:), v102);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v27 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      a2(v27);
    }
  }

  else
  {
    v93 = v20;
    v91 = v22;
    v88 = v14;
    v89 = v11;
    v90 = v10;
    v94 = v16;
    v97 = v15;
    v95 = a3;
    v96 = a2;
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v28 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v29 = *(*(v28 - 8) + 72);
    v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1006BF740;
    v32 = v31 + v30;
    v33 = (v32 + *(v28 + 48));
    v34 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v35 = type metadata accessor for DIPError.PropertyKey();
    v36 = *(*(v35 - 8) + 104);
    (v36)(v32, v34, v35);
    v37 = *(v104 + 24);
    v38 = *(v104 + 32);
    v33[3] = &type metadata for String;
    v33[4] = &protocol witness table for String;
    v92 = v37;
    *v33 = v37;
    v33[1] = v38;
    v39 = v104;
    v40 = v32 + v29 + *(v28 + 48);
    v36();
    v41 = *(v39 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v40 + 24) = &type metadata for DIPCloudContainerState;
    *(v40 + 32) = sub_10001F584();
    *v40 = v41;

    sub_10003C9C0(v31);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v100)
    {
      sub_10001CEBC();
      (*(v101 + 104))(v103, enum case for DIPError.Code.internalError(_:), v102);
      v42 = v93;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v43 = v96;
      v44 = v97;
      v45 = v94;
      if (v96)
      {
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
        v46 = swift_allocError();
        (*(v45 + 16))(v47, v42, v44);
        v43(v46);
      }

      return (*(v45 + 8))(v42, v44);
    }

    else
    {
      v48 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
      swift_beginAccess();
      v49 = *(*(v39 + v48) + 16);
      v50 = v99;
      swift_beginAccess();
      v51 = *(v50 + 16);
      if (v51 >> 62)
      {
        if (v51 < 0)
        {
          v85 = *(v50 + 16);
        }

        v52 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v53 = v97;
      if (v49 == v52)
      {
        v103 = v38;

        v54 = [objc_opt_self() standardUserDefaults];
        v55 = v54;
        v56 = *(v39 + v48);
        v57 = *(v56 + 16);
        if (v57)
        {
          v102 = v54;
          v58 = sub_1003BA064(v57, 0);
          v59 = sub_1003BC45C(&v105, v58 + 4, v57, v56);

          result = sub_10001FA6C();
          if (v59 != v57)
          {
            __break(1u);
            return result;
          }

          v39 = v104;
          v55 = v102;
        }

        isa = Array._bridgeToObjectiveC()().super.isa;

        (*(*v39 + 336))(v74);
        v75 = String._bridgeToObjectiveC()();

        [v55 setObject:isa forKey:v75];

        v76 = v88;
        defaultLogger()();

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          *v79 = 136446466;
          *(v79 + 4) = sub_100141FE4(v92, v103, &v105);
          *(v79 + 12) = 2080;
          v80 = *(v39 + v48);

          v81 = Set.description.getter();
          v83 = v82;

          v84 = sub_100141FE4(v81, v83, &v105);

          *(v79 + 14) = v84;
          _os_log_impl(&_mh_execute_header, v77, v78, "Created container %{public}s subscriptions %s", v79, 0x16u);
          swift_arrayDestroy();
        }

        result = (*(v89 + 8))(v76, v90);
        if (v96)
        {
          return (v96)(0);
        }
      }

      else
      {
        v105 = 0;
        v106 = 0xE000000000000000;
        _StringGuts.grow(_:)(75);
        v108 = v105;
        v109 = v106;
        v60._countAndFlagsBits = 0xD000000000000030;
        v60._object = 0x80000001006FB1C0;
        String.append(_:)(v60);
        v61._countAndFlagsBits = v92;
        v61._object = v38;
        String.append(_:)(v61);
        v62._countAndFlagsBits = 0x746365707865203BLL;
        v62._object = 0xED0000203D206465;
        String.append(_:)(v62);
        swift_beginAccess();
        v63 = *(v50 + 16);
        if (v63 >> 62)
        {
          if (v63 < 0)
          {
            v86 = *(v50 + 16);
          }

          v64 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v107 = v64;
        v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v65);

        v66._countAndFlagsBits = 0x203D20746F67202CLL;
        v66._object = 0xE800000000000000;
        String.append(_:)(v66);
        v107 = *(*(v39 + v48) + 16);
        v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v67);

        (*(v101 + 104))(v103, enum case for DIPError.Code.cloudkitResponseInconsistent(_:), v102);
        v68 = v91;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        v69 = v96;
        v70 = v94;
        if (v96)
        {
          sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
          v71 = swift_allocError();
          (*(v70 + 16))(v72, v68, v53);
          v69(v71);
        }

        return (*(v70 + 8))(v68, v53);
      }
    }
  }

  return result;
}

uint64_t sub_10001A074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10001DD68();
  v6 = (*(*v2 + 312))();
  v7 = *(v6 + 16);
  if (v7)
  {
    v25 = a1;
    v26 = a2;
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
    v8 = (v6 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14._countAndFlagsBits = v9;
      v14._object = v10;
      v15._countAndFlagsBits = v11;
      v15._object = v13;
      CKRecordZoneID.init(zoneName:ownerName:)(v14, v15);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 2;
      --v7;
    }

    while (v7);

    a2 = v26;
    a1 = v25;
  }

  else
  {
  }

  v17 = [objc_allocWithZone(CKModifyRecordZonesOperation) init];
  sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setRecordZoneIDsToDelete:isa];

  v19 = [objc_allocWithZone(CKOperationConfiguration) init];
  [v19 setQualityOfService:17];
  [v17 setConfiguration:v19];
  v20 = swift_allocObject();
  *(v20 + 16) = _swiftEmptyArrayStorage;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  v22[2] = v3;
  v22[3] = v20;
  v22[4] = v21;

  CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.setter();
  v23 = swift_allocObject();
  v23[2] = v3;
  v23[3] = v21;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = v20;

  sub_10001F640(a1);
  CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter();
  sub_10001B4FC(v17, 0);
}

uint64_t sub_10001A3B8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v16 = *(v25 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v25);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a4 + 40);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  LOBYTE(a4) = a3 & 1;
  *(v20 + 24) = a3 & 1;
  *(v20 + 32) = a5;
  *(v20 + 40) = a1;
  *(v20 + 48) = a6;
  aBlock[4] = sub_10001F734;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FCC40;
  v21 = _Block_copy(aBlock);
  sub_10001F6D4(a2, a4);

  v22 = a1;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v15, v12);
  (*(v16 + 8))(v19, v25);
}

uint64_t sub_10001A6B4(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    defaultLogger()();
    sub_10001F6D4(a1, 1);
    v15 = a4;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    sub_10001F6B4(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      v38 = swift_slowAlloc();
      v40 = v38;
      *v18 = 138412546;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v36 = v17;
      v39 = a5;
      v20 = v15;
      v21 = Error.localizedDescription.getter();
      v23 = sub_100141FE4(v21, v22, &v40);
      a5 = v39;

      *(v18 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v16, v36, "deleteZones error received for zone ID %@: %s", v18, 0x16u);
      sub_10000BE18(v37, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v38);
    }

    (*(v11 + 8))(v14, v10);
    swift_beginAccess();
    v24 = *(a5 + 16);
    *(a5 + 16) = a1;
  }

  else
  {
    v26 = [a4 zoneName];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    swift_beginAccess();
    v30 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_1003C5110(0, *(v30 + 2) + 1, 1, v30);
      *(a3 + 16) = v30;
    }

    v33 = *(v30 + 2);
    v32 = *(v30 + 3);
    if (v33 >= v32 >> 1)
    {
      v30 = sub_1003C5110((v32 > 1), v33 + 1, 1, v30);
    }

    *(v30 + 2) = v33 + 1;
    v34 = &v30[16 * v33];
    *(v34 + 4) = v27;
    *(v34 + 5) = v29;
    *(a3 + 16) = v30;
    return swift_endAccess();
  }
}

uint64_t sub_10001AA04(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v27 - 8);
  v13 = *(v31 + 64);
  __chkstk_darwin(v27);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v29 = *(v16 - 8);
  v30 = v16;
  v17 = *(v29 + 64);
  __chkstk_darwin(v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a3 + 40);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 32) = a6;
  *(v20 + 40) = a1;
  LOBYTE(a6) = a2 & 1;
  *(v20 + 48) = a2 & 1;
  v21 = v26;
  *(v20 + 56) = a3;
  *(v20 + 64) = v21;
  aBlock[4] = sub_10001F6C0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1007FCBF0;
  v22 = _Block_copy(aBlock);

  sub_10001F640(a5);
  sub_10001F6D4(a1, a6);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  v23 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v31 + 8))(v15, v23);
  (*(v29 + 8))(v19, v30);
}

uint64_t sub_10001AD1C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v63 = a7;
  v65 = a6;
  LODWORD(v64) = a5;
  v68 = type metadata accessor for DIPError();
  v11 = *(v68 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v68);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DIPError.Code();
  v20 = *(v66 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v66);
  v67 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    if (a2)
    {
      (*(v20 + 104))(v67, enum case for DIPError.Code.internalError(_:), v66);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v24 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      a2(v24);
    }
  }

  else
  {
    v61 = a3;
    v62 = a2;
    v25 = v63;
    v56[1] = a4;
    v57 = v16;
    v58 = v15;
    v59 = v14;
    v60 = v11;
    if ((v64 & 1) == 0)
    {
      v45 = v65;
      sub_10001DD68();
      defaultLogger()();

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();

      v48 = os_log_type_enabled(v46, v47);
      v49 = v62;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v50 = 136446466;
        *(v50 + 4) = sub_100141FE4(*(v45 + 24), *(v45 + 32), &v69);
        *(v50 + 12) = 2082;
        swift_beginAccess();
        v51 = *(v25 + 16);

        v52 = Array.description.getter();
        v54 = v53;

        v55 = sub_100141FE4(v52, v54, &v69);

        *(v50 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v46, v47, "Deleted container %{public}s zones %{public}s", v50, 0x16u);
        swift_arrayDestroy();

        result = (*(v57 + 8))(v19, v58);
        if (!v49)
        {
          return result;
        }
      }

      else
      {

        result = (*(v57 + 8))(v19, v58);
        if (!v49)
        {
          return result;
        }
      }

      return (v49)(0);
    }

    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v26 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v27 = *(v26 - 8);
    v64 = *(v27 + 72);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1006BF740;
    v30 = v29 + v28;
    v31 = (v29 + v28 + *(v26 + 48));
    v32 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v33 = type metadata accessor for DIPError.PropertyKey();
    v34 = *(*(v33 - 8) + 104);
    (v34)(v29 + v28, v32, v33);
    v35 = v65;
    v36 = *(v65 + 24);
    v37 = *(v65 + 32);
    v31[3] = &type metadata for String;
    v31[4] = &protocol witness table for String;
    *v31 = v36;
    v31[1] = v37;
    v38 = v30 + v64 + *(v26 + 48);
    v34();
    LOBYTE(v34) = *(v35 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v38 + 24) = &type metadata for DIPCloudContainerState;
    *(v38 + 32) = sub_10001F584();
    *v38 = v34;

    sub_10003C9C0(v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_10001CEBC();
    (*(v20 + 104))(v67, enum case for DIPError.Code.internalError(_:), v66);
    v39 = v62;
    v40 = v59;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v41 = v68;
    v42 = v60;
    if (v39)
    {
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v43 = swift_allocError();
      (*(v42 + 16))(v44, v40, v41);
      v39(v43);
    }

    return (*(v42 + 8))(v40, v41);
  }

  return result;
}

void sub_10001B4FC(void *a1, unsigned __int8 a2)
{
  v5 = [objc_allocWithZone(CKOperationGroup) init];
  if (a2 <= 4u || a2 == 5)
  {
    v6 = String._bridgeToObjectiveC()();

    [v5 setName:v6];
  }

  v7 = (*(*v2 + 44))([a1 setGroup:v5]);
  v8 = &selRef_publicCloudDatabase;
  v9 = v2[2];
  if ((v7 & 1) == 0)
  {
    v8 = &selRef_privateCloudDatabase;
  }

  v10 = [v2[2] *v8];
  [v10 addOperation:a1];
}

uint64_t sub_10001B6FC(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v58 = a4;
  v59 = a5;
  v49 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  v10 = *(v53 + 64);
  __chkstk_darwin(v55);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DIPError.Code();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() standardUserDefaults];
  v22._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceCloudkitAllRecordsFailure.getter();
  v23 = NSUserDefaults.internalBool(forKey:)(v22);

  if (v23)
  {
    (*(v17 + 104))(v20, enum case for DIPError.Code.cloudkitAllRecordsHaveFailedToUpload(_:), v16);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    v24 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v58(v24, 0);
  }

  else
  {
    sub_10001F8D4(0, &qword_100833A60, CKModifyRecordsOperation_ptr);

    v62.is_nil = 0;
    isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v62, v63).super.super.super.super.isa;
    [(objc_class *)isa setSavePolicy:1];
    [(objc_class *)isa setAtomic:0];
    [(objc_class *)isa setConfiguration:v49];
    defaultLogger()();
    v27 = isa;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v30 = a1;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      v33 = CKOperation.operationID.getter();
      v35 = sub_100141FE4(v33, v34, aBlock);
      v49 = v12;
      v36 = a2;
      v37 = v30;
      v38 = v35;

      *(v31 + 4) = v38;
      v30 = v37;
      a2 = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "The operation ID for save records is %s", v31, 0xCu);
      sub_10000BB78(v32);

      (*(v50 + 8))(v15, v49);
    }

    else
    {

      (*(v50 + 8))(v15, v12);
    }

    v39 = v58;
    v40 = v51;
    v42 = *(v51 + 40);
    v41 = *(v51 + 48);
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v27;
    *(v43 + 32) = v39;
    *(v43 + 40) = v59;
    *(v43 + 48) = v30;
    *(v43 + 56) = a2;
    aBlock[4] = sub_10001F410;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100503A7C;
    aBlock[3] = &unk_1007FCAD8;
    v44 = _Block_copy(aBlock);

    v45 = v27;

    v46 = v52;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_10001F43C(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
    v47 = v54;
    v48 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v44);

    (*(v56 + 8))(v47, v48);
    (*(v53 + 8))(v46, v55);
  }
}

uint64_t sub_10001BE00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyArrayStorage;
  dispatch_group_enter(*(a1 + 48));

  CKModifyRecordsOperation.perRecordSaveBlock.setter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = v12;
  v13[6] = a5;

  CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
  sub_10001B4FC(a2, a6);
}

uint64_t sub_10001BF20(void *a1, void *a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  if (a3)
  {
    v43 = v9;
    v16 = [a1 recordName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    swift_beginAccess();
    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v20;
    v44 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1003C5110(0, *(v20 + 2) + 1, 1, v20);
      *(a4 + 16) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1003C5110((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[16 * v23];
    *(v24 + 4) = v17;
    *(v24 + 5) = v19;
    *(a4 + 16) = v20;
    swift_endAccess();
    defaultLogger()();
    sub_10001F8C8(a2, 1);
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    sub_10001F8A4(a2, 1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v28 = 138412546;
      *(v28 + 4) = v25;
      *v29 = v25;
      *(v28 + 12) = 2080;
      swift_getErrorValue();
      v31 = v25;
      v32 = Error.localizedDescription.getter();
      v34 = sub_100141FE4(v32, v33, &v45);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Received an error while saving record %@ %s", v28, 0x16u);
      sub_10000BE18(v29, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v30);
    }

    return (*(v43 + 8))(v13, v44);
  }

  else
  {
    defaultLogger()();
    v36 = a2;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    sub_10001F8A4(a2, 0);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      v41 = [v36 recordID];
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "%@ successfully saved", v39, 0xCu);
      sub_10000BE18(v40, &unk_100833B50, &unk_1006D8FB0);
    }

    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_10001C354(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v84 = a5;
  v85 = a4;
  v80 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v78 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v79 = &v77 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v77 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v77 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v77 - v25;
  __chkstk_darwin(v24);
  v28 = &v77 - v27;
  v29 = type metadata accessor for DIPError.Code();
  v81 = *(v29 - 8);
  v82 = v29;
  v30 = *(v81 + 64);
  __chkstk_darwin(v29);
  v83 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_leave(*(a3 + 48));
  if (a2)
  {
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v32 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v33 = *(*(v32 - 8) + 72);
    v34 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1006BF740;
    v36 = v35 + v34;
    v37 = (v35 + v34 + *(v32 + 48));
    v38 = enum case for DIPError.PropertyKey.cloudContainerName(_:);
    v39 = type metadata accessor for DIPError.PropertyKey();
    v40 = *(*(v39 - 8) + 104);
    (v40)(v36, v38, v39);
    v41 = *(a3 + 24);
    v42 = *(a3 + 32);
    v37[3] = &type metadata for String;
    v37[4] = &protocol witness table for String;
    *v37 = v41;
    v37[1] = v42;
    v43 = v36 + v33 + *(v32 + 48);
    v40();
    v44 = *(a3 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_state);
    *(v43 + 24) = &type metadata for DIPCloudContainerState;
    *(v43 + 32) = sub_10001F584();
    *v43 = v44;

    sub_10003C9C0(v35);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_10001CEBC();
    (*(v81 + 104))(v83, enum case for DIPError.Code.internalError(_:), v82);
    type metadata accessor for DIPError();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    v45 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v85(v45, 0);
  }

  else
  {
    v80 = a6;
    defaultLogger()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Received a success from cloudkit, will check if there are any partial upload failures...", v49, 2u);
    }

    v50 = *(v12 + 8);
    v50(v28, v11);
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Checking if all files have failed to upload.", v53, 2u);
    }

    v50(v26, v11);
    v54 = v80;
    swift_beginAccess();
    v55 = *(*(v54 + 16) + 16);
    if (a7 >> 62)
    {
      v56 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v56 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = v85;
    if (v55 == v56)
    {
      defaultLogger()();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "All the files have failed to upload.", v60, 2u);
      }

      v50(v23, v11);
      (*(v81 + 104))(v83, enum case for DIPError.Code.cloudkitServerUnavailable(_:), v82);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v61 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v57(v61, 0);
    }

    else
    {
      defaultLogger()();
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "There has been at least one successful record upload.. Checking if there are any record upload failures", v64, 2u);
      }

      v50(v20, v11);
      swift_beginAccess();
      if (*(*(v54 + 16) + 16))
      {
        defaultLogger()();

        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 134217984;
          swift_beginAccess();
          *(v67 + 4) = *(*(v54 + 16) + 16);

          _os_log_impl(&_mh_execute_header, v65, v66, "%ld have failed to upload. Returning a partial upload failure error.", v67, 0xCu);
        }

        else
        {
        }

        v72 = v82;
        v73 = v83;
        v74 = v81;
        v50(v79, v11);
        (*(v74 + 104))(v73, enum case for DIPError.Code.cloudkitPartialUploadsFailure(_:), v72);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
        v75 = swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_beginAccess();
        v76 = *(v54 + 16);

        v85(v75 | 0x8000000000000000, v76);
      }

      else
      {
        v68 = v78;
        defaultLogger()();
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "All uploads successfully completed", v71, 2u);
        }

        v50(v68, v11);
        return (v57)(0xF000000000000007, 0);
      }
    }
  }
}

uint64_t sub_10001CEBC()
{
  v66 = type metadata accessor for Logger();
  v65 = *(v66 - 8);
  v0 = *(v65 + 64);
  __chkstk_darwin(v66);
  v64 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DIPError();
  v69 = *(v2 - 8);
  v3 = *(v69 + 64);
  v4 = __chkstk_darwin(v2);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = &v60 - v6;
  v7 = type metadata accessor for DIPError.PropertyKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v60 - v18;
  v19 = _convertErrorToNSError(_:)();
  v20 = sub_10003C9C0(_swiftEmptyArrayStorage);
  v21 = [v19 code];
  v68 = v12;
  v67 = v19;
  switch(v21)
  {
    case 1uLL:
    case 0xFuLL:
      v22 = &enum case for DIPError.Code.cloudkitInternalError(_:);
      goto LABEL_42;
    case 2uLL:
    case 0x16uLL:
      v24 = [v19 userInfo];
      v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v25 + 16))
      {
        v28 = sub_10003ADCC(v26, v27);
        v30 = v29;

        if (v30)
        {
          sub_10001F2EC(*(v25 + 56) + 32 * v28, &v76);

          sub_10001F8D4(0, &qword_100833A58, NSDictionary_ptr);
          if (swift_dynamicCast())
          {
            v61 = v72;
            NSDictionary.makeIterator()();
            NSDictionary.Iterator.next()();
            v76 = v72;
            v77 = v73;
            v78 = v74;
            v79 = v75;
            if (!*(&v73 + 1))
            {
LABEL_16:

              v31 = v71;
              v12 = v68;
              (*(v13 + 104))(v71, enum case for DIPError.Code.cloudKitPartialFailureNoValidErrors(_:), v68);
              goto LABEL_43;
            }

            while (1)
            {
              sub_10001F348(&v78, &v72);
              sub_100007224(&qword_100833B90, &qword_1006D95C0);
              if (swift_dynamicCast())
              {
                break;
              }

              sub_10000BB78(&v76);
              NSDictionary.Iterator.next()();
              v76 = v72;
              v77 = v73;
              v78 = v74;
              v79 = v75;
              if (!*(&v73 + 1))
              {
                goto LABEL_16;
              }
            }

            v59 = v80;

            v56 = sub_10001CEBC(v59);

            sub_10000BB78(&v76);
            return v56;
          }

LABEL_41:
          v12 = v68;
          v22 = &enum case for DIPError.Code.cloudKitPartialFailureNoDictionary(_:);
LABEL_42:
          v31 = v71;
          (*(v13 + 104))(v71, *v22, v12);
          goto LABEL_43;
        }
      }

      else
      {
      }

      goto LABEL_41;
    case 3uLL:
    case 4uLL:
      v22 = &enum case for DIPError.Code.networkTimeOut(_:);
      goto LABEL_42;
    case 5uLL:
    case 8uLL:
      v22 = &enum case for DIPError.Code.cloudKitContainerEntitlementError(_:);
      goto LABEL_42;
    case 6uLL:
    case 0x17uLL:
      (*(v13 + 104))(v71, enum case for DIPError.Code.cloudkitServerUnavailable(_:), v12);
      v23 = [v19 userInfo];
      goto LABEL_27;
    case 7uLL:
      (*(v13 + 104))(v71, enum case for DIPError.Code.cloudkitRateLimited(_:), v12);
      v23 = [v19 userInfo];
LABEL_27:
      v32 = v23;
      v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v33 + 16))
      {

        goto LABEL_37;
      }

      v61 = sub_10003ADCC(v34, v35);
      v62 = v36;

      if ((v62 & 1) == 0)
      {
LABEL_37:

        goto LABEL_38;
      }

      sub_10001F2EC(*(v33 + 56) + 32 * v61, &v76);

      sub_10001F8D4(0, &qword_100833A50, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v37 = v72;
        v38 = v8;
        (*(v8 + 104))(v11, enum case for DIPError.PropertyKey.serverRetryAfter(_:), v7);
        v39 = v37;
        [v37 doubleValue];
        *(&v77 + 1) = &type metadata for Double;
        *&v78 = &protocol witness table for Double;
        *&v76 = v40;
        sub_10001F358(&v76, &v72);
        LOBYTE(v37) = swift_isUniquelyReferenced_nonNull_native();
        v80 = v20;
        v41 = sub_10001F370(&v72, *(&v73 + 1));
        sub_100658E08(v11, v37, &v80, *v41);

        (*(v38 + 8))(v11, v7);
        sub_10000BB78(&v72);
      }

LABEL_38:
      v12 = v68;
      v31 = v71;
LABEL_43:
      (*(v13 + 16))(v17, v31, v12);
      swift_errorRetain();
      v42 = v70;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v43 = v64;
      defaultLogger()();
      v44 = v69;
      v45 = v63;
      (*(v69 + 16))(v63, v42, v2);
      swift_errorRetain();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *&v76 = swift_slowAlloc();
        *v48 = 136315394;
        swift_getErrorValue();
        v49 = Error.localizedDescription.getter();
        v51 = sub_100141FE4(v49, v50, &v76);

        *(v48 + 4) = v51;
        *(v48 + 12) = 2080;
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
        v52 = Error.localizedDescription.getter();
        v54 = v53;
        (*(v69 + 8))(v45, v2);
        v55 = sub_100141FE4(v52, v54, &v76);

        *(v48 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v46, v47, "Converting CloudKit error [%s] to DIPError [%s]", v48, 0x16u);
        swift_arrayDestroy();
        v44 = v69;
      }

      else
      {

        (*(v44 + 8))(v45, v2);
      }

      (*(v65 + 8))(v43, v66);
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v56 = swift_allocError();
      (*(v44 + 32))(v57, v70, v2);

      (*(v13 + 8))(v71, v68);
      return v56;
    case 9uLL:
      v22 = &enum case for DIPError.Code.invalidAppleAccount(_:);
      goto LABEL_42;
    case 0xAuLL:
      v22 = &enum case for DIPError.Code.cloudKitPermissionFailure(_:);
      goto LABEL_42;
    case 0xBuLL:
      v22 = &enum case for DIPError.Code.cloudkitRecordDoesNotExist(_:);
      goto LABEL_42;
    case 0xCuLL:
    case 0x18uLL:
      v22 = &enum case for DIPError.Code.badLogic(_:);
      goto LABEL_42;
    case 0xEuLL:
      v22 = &enum case for DIPError.Code.cloudkitServerRecordChanged(_:);
      goto LABEL_42;
    case 0x10uLL:
    case 0x11uLL:
      v22 = &enum case for DIPError.Code.cloudKitAssetFileError(_:);
      goto LABEL_42;
    case 0x12uLL:
      v22 = &enum case for DIPError.Code.cloudkitIncompatibleVersion(_:);
      goto LABEL_42;
    case 0x13uLL:
      v22 = &enum case for DIPError.Code.cloudKitConstraintViolation(_:);
      goto LABEL_42;
    case 0x14uLL:
      v22 = &enum case for DIPError.Code.cloudkitOperationCancelled(_:);
      goto LABEL_42;
    case 0x15uLL:
      v22 = &enum case for DIPError.Code.cloudkitChangeTokenExpired(_:);
      goto LABEL_42;
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x21uLL:
      v22 = &enum case for DIPError.Code.cloudKitQuotaLimitsError(_:);
      goto LABEL_42;
    case 0x1AuLL:
    case 0x1CuLL:
      v22 = &enum case for DIPError.Code.cloudkitZoneNotFound(_:);
      goto LABEL_42;
    case 0x1FuLL:
      v22 = &enum case for DIPError.Code.cloudKitReferenceViolation(_:);
      goto LABEL_42;
    case 0x20uLL:
      v22 = &enum case for DIPError.Code.cloudkitAccountRestricted(_:);
      goto LABEL_42;
    case 0x6EuLL:
      v22 = &enum case for DIPError.Code.cloudkitManateeUnavailable(_:);
      goto LABEL_42;
    case 0x6FuLL:
      v22 = &enum case for DIPError.Code.cloudkitUnsyncedKeychain(_:);
      goto LABEL_42;
    case 0x70uLL:
      v22 = &enum case for DIPError.Code.cloudkitMissingManateeIdentity(_:);
      goto LABEL_42;
    default:
      v22 = &enum case for DIPError.Code.cloudKitUnknownError(_:);
      goto LABEL_42;
  }
}

uint64_t sub_10001DC7C()
{
  v1 = sub_10003D01C(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_waitingForState;
  swift_beginAccess();
  v3 = *(v0 + v2);
  *(v0 + v2) = v1;

  v4 = sub_10003D110(_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
  swift_beginAccess();
  v6 = *(v0 + v5);
  *(v0 + v5) = v4;

  v7 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
  swift_beginAccess();
  v8 = *(v0 + v7);
  *(v0 + v7) = &_swiftEmptySetSingleton;

  v9 = sub_10003D124(_swiftEmptyArrayStorage);
  v10 = *(v0 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_changeTokensByZoneID);
  *(v0 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_changeTokensByZoneID) = v9;
}

void sub_10001DD68()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  (*(*v0 + 328))();
  v3 = String._bridgeToObjectiveC()();

  [v2 removeObjectForKey:v3];

  v4 = [v1 standardUserDefaults];
  (*(*v0 + 336))();
  v5 = String._bridgeToObjectiveC()();

  [v4 removeObjectForKey:v5];

  v6 = [v1 standardUserDefaults];
  (*(*v0 + 344))();
  v7 = String._bridgeToObjectiveC()();

  [v6 removeObjectForKey:v7];
}

void sub_10001DF3C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  (*(*v0 + 328))();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 arrayForKey:v2];

  if (!v3)
  {
    return;
  }

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10003D110(_swiftEmptyArrayStorage);
  v6 = *(v4 + 16);
  if (!v6)
  {

LABEL_22:
    v28 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName;
    swift_beginAccess();
    v29 = *(v0 + v28);
    *(v0 + v28) = v5;

    return;
  }

  v30 = v0;
  v7 = 0;
  v8 = v4 + 32;
  v32 = v4;
  v31 = *(v4 + 16);
  while (v7 < *(v4 + 16))
  {
    sub_10001F2EC(v8, &v34);
    if (!swift_dynamicCast())
    {
      goto LABEL_6;
    }

    sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    v15 = CKRecordZoneID.init(zoneName:ownerName:)(v33, v14).super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v5;
    v18 = sub_10003ADCC(v33._countAndFlagsBits, v33._object);
    v19 = v5[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_25;
    }

    v22 = v17;
    if (v5[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_10016F088();
        if ((v22 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_100165280(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_10003ADCC(v33._countAndFlagsBits, v33._object);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_27;
      }

      v18 = v23;
      if ((v22 & 1) == 0)
      {
LABEL_16:
        v5 = v34;
        v34[(v18 >> 6) + 8] |= 1 << v18;
        *(v5[6] + 16 * v18) = v33;
        *(v5[7] + 8 * v18) = v15;

        v25 = v5[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_26;
        }

        v5[2] = v27;
        goto LABEL_5;
      }
    }

    v5 = v34;
    v9 = v34[7];
    v10 = *(v9 + 8 * v18);
    *(v9 + 8 * v18) = v15;

LABEL_5:
    v6 = v31;
    v4 = v32;
LABEL_6:
    ++v7;
    v8 += 32;
    if (v6 == v7)
    {

      v0 = v30;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10001E28C()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  (*(*v0 + 336))();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 arrayForKey:v3];

  if (v4)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = &_swiftEmptySetSingleton;
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      do
      {
        sub_10001F2EC(v7, &v13);
        if (swift_dynamicCast())
        {
          sub_100151120(&v13, v11, v12);
        }

        v7 += 32;
        --v6;
      }

      while (v6);

      v8 = v14;
    }

    else
    {

      v8 = &_swiftEmptySetSingleton;
    }

    v9 = OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs;
    swift_beginAccess();
    v10 = *(v1 + v9);
    *(v1 + v9) = v8;
  }
}

void sub_10001E440()
{
  v73 = type metadata accessor for Logger();
  v1 = *(v73 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v73);
  v72 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  (*(*v0 + 344))();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 dictionaryForKey:v5];

  if (v6)
  {
    v68[0] = v0;
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_10003D124(_swiftEmptyArrayStorage);
    v10 = 0;
    v76 = 0;
    v83 = v8;
    v12 = v7 + 64;
    v11 = *(v7 + 64);
    v74 = v7;
    v13 = 1 << *(v7 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v16 = (v13 + 63) >> 6;
    v71 = (v1 + 8);
    v70 = CKCurrentUserDefaultName;
    *&v9 = 136446210;
    v69 = v9;
    v17 = v72;
    if ((v14 & v11) == 0)
    {
      goto LABEL_8;
    }

    do
    {
      while (1)
      {
        v18 = v10;
LABEL_16:
        v21 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v22 = v21 | (v18 << 6);
        v23 = (*(v74 + 48) + 16 * v22);
        v25 = *v23;
        v24 = v23[1];
        sub_10001F2EC(*(v74 + 56) + 32 * v22, v77);
        *&v78 = v25;
        *(&v78 + 1) = v24;
        sub_10001F348(v77, &v79);

LABEL_17:
        v81 = v78;
        v82[0] = v79;
        v82[1] = v80;
        v26 = *(&v78 + 1);
        if (!*(&v78 + 1))
        {

          v67 = *(v68[0] + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_changeTokensByZoneID);
          *(v68[0] + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_changeTokensByZoneID) = v83;

          return;
        }

        v27 = v81;
        sub_10001F348(v82, &v78);
        if (swift_dynamicCast())
        {
          break;
        }

        if (!v15)
        {
          goto LABEL_8;
        }
      }

      v28 = v77[0];
      sub_10001F8D4(0, &qword_100833A30, NSKeyedUnarchiver_ptr);
      sub_10001F8D4(0, &qword_100833A38, CKServerChangeToken_ptr);
      v75 = v28;
      v29 = v76;
      v30 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v29)
      {

        defaultLogger()();
        swift_errorRetain();
        v31 = v17;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v76 = v29;
          v36 = v35;
          *&v78 = v35;
          *v34 = v69;
          swift_getErrorValue();
          v37 = Error.localizedDescription.getter();
          v39 = sub_100141FE4(v37, v38, &v78);

          *(v34 + 4) = v39;
          _os_log_impl(&_mh_execute_header, v32, v33, "Unable to decode change token: %{public}s", v34, 0xCu);
          sub_10000BB78(v36);

          sub_10000B90C(v75, *(&v75 + 1));

          v17 = v72;
          (*v71)(v72, v73);
          v76 = 0;
        }

        else
        {
          sub_10000B90C(v75, *(&v75 + 1));

          (*v71)(v31, v73);
          v76 = 0;
          v17 = v31;
        }
      }

      else
      {
        v40 = v30;
        v41 = sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
        v42._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42._object = v43;
        v44._countAndFlagsBits = v27;
        v44._object = v26;
        v68[1] = v41;
        v45.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v44, v42).super.isa;
        isa = v45.super.isa;
        v76 = 0;
        if (v40)
        {
          v47 = v83;
          if ((v83 & 0xC000000000000001) != 0)
          {
            if (v83 >= 0)
            {
              v47 = v83 & 0xFFFFFFFFFFFFFF8;
            }

            v48 = v40;
            v49 = __CocoaDictionary.count.getter();
            if (__OFADD__(v49, 1))
            {
              goto LABEL_49;
            }

            v47 = sub_10001F000(v47, v49 + 1);
            v83 = v47;
          }

          else
          {
            v51 = v40;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v78 = v47;
          v53 = sub_10003B028(isa);
          v55 = *(v47 + 16);
          v56 = (v54 & 1) == 0;
          v57 = __OFADD__(v55, v56);
          v58 = v55 + v56;
          if (v57)
          {
            goto LABEL_48;
          }

          v59 = v54;
          if (*(v47 + 24) >= v58)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v66 = v53;
              sub_10016F09C();
              v53 = v66;
            }
          }

          else
          {
            sub_100165294(v58, isUniquelyReferenced_nonNull_native);
            v53 = sub_10003B028(isa);
            if ((v59 & 1) != (v60 & 1))
            {
              goto LABEL_51;
            }
          }

          v17 = v72;
          v61 = v78;
          if (v59)
          {
            v62 = *(v78 + 56);
            v63 = *(v62 + 8 * v53);
            *(v62 + 8 * v53) = v40;

            sub_10000B90C(v75, *(&v75 + 1));
          }

          else
          {
            *(v78 + 8 * (v53 >> 6) + 64) |= 1 << v53;
            *(v61[6] + 8 * v53) = isa;
            *(v61[7] + 8 * v53) = v40;
            sub_10000B90C(v75, *(&v75 + 1));

            v64 = v61[2];
            v57 = __OFADD__(v64, 1);
            v65 = v64 + 1;
            if (v57)
            {
              goto LABEL_50;
            }

            v61[2] = v65;
          }

          v83 = v61;
        }

        else
        {
          v50 = sub_10014EFBC(v45.super.isa);
          sub_10000B90C(v75, *(&v75 + 1));
        }
      }
    }

    while (v15);
LABEL_8:
    if (v16 <= v10 + 1)
    {
      v19 = v10 + 1;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        v15 = 0;
        v79 = 0u;
        v80 = 0u;
        v10 = v20;
        v78 = 0u;
        goto LABEL_17;
      }

      v15 = *(v12 + 8 * v18);
      ++v10;
      if (v15)
      {
        v10 = v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

uint64_t sub_10001EBD4()
{
  v1 = *(v0 + 32);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_retrier, &qword_100833A28, &qword_1006BF8A8);
  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_waitingForState);

  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_zoneIDsByName);

  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_subscriptionIDs);

  v5 = *(v0 + OBJC_IVAR____TtC8coreidvd17DIPCloudContainer_changeTokensByZoneID);

  return v0;
}

uint64_t sub_10001EC6C()
{
  sub_10001EBD4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DIPCloudContainer()
{
  result = qword_100833748;
  if (!qword_100833748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001ED18()
{
  sub_10001EDE0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10001EDE0()
{
  if (!qword_100833758)
  {
    type metadata accessor for DIPRetrier();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100833758);
    }
  }
}

uint64_t getEnumTagSinglePayload for DIPCloudContainerState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPCloudContainerState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001EFAC()
{
  result = qword_100833A18;
  if (!qword_100833A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833A18);
  }

  return result;
}

Swift::Int sub_10001F000(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100007224(&qword_100833A48, &unk_1006BF8B0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10001F8D4(0, &qword_100833A40, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10001F8D4(0, &qword_100833A38, CKServerChangeToken_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100165294(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_10001F24C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8420, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001F298()
{
  result = qword_100833A20;
  if (!qword_100833A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833A20);
  }

  return result;
}

uint64_t sub_10001F2EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10001F348(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001F358(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001F370(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10001F3C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10001F424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F43C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F484(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F4D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F51C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10001F584()
{
  result = qword_100833A68;
  if (!qword_100833A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100833A68);
  }

  return result;
}

uint64_t sub_10001F5D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F640(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001F650()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  sub_10001F6B4(*(v0 + 40), *(v0 + 48));
  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001F6B4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10001F6D4(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10001F6E0()
{
  sub_10001F6B4(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F79C()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F828()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  v3 = *(v0 + 40);

  sub_10001F6B4(*(v0 + 48), *(v0 + 56));
  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10001F8A4(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_10001F8C8(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10001F8D4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10001F91C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F974()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  v4 = v0[6];

  v5 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001F9E8()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  v3 = *(v0 + 40);

  sub_10001F6B4(*(v0 + 48), *(v0 + 56));
  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001FA74()
{
  sub_10001F8A4(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001FB88()
{
  sub_10001F8A4(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001FC10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FC5C()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001FD10()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  sub_10001F6B4(*(v0 + 40), *(v0 + 48));
  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001FDA0()
{
  sub_10001F8A4(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001FE28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FE60(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_10001FE8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001FF94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v3 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100020058()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000200A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100833A28, &qword_1006BF8A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020110(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100833A28, &qword_1006BF8A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000201F0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100020260(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000202C4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v212 = a8;
  v211 = a7;
  v210 = a6;
  v218 = a2;
  v229 = a1;
  v10 = type metadata accessor for DIPError.PropertyKey();
  v222 = *(v10 - 8);
  v223 = v10;
  v11 = *(v222 + 64);
  __chkstk_darwin(v10);
  v221 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for Logger();
  v217 = *(v216 - 8);
  v13 = *(v217 + 64);
  v14 = __chkstk_darwin(v216);
  v207 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v208 = &v201 - v17;
  v18 = __chkstk_darwin(v16);
  v213 = &v201 - v19;
  v20 = __chkstk_darwin(v18);
  v209 = &v201 - v21;
  v22 = __chkstk_darwin(v20);
  v215 = &v201 - v23;
  __chkstk_darwin(v22);
  v214 = &v201 - v24;
  v25 = type metadata accessor for DIPRetryResult();
  v26 = *(v25 - 8);
  v227 = v25;
  v228 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = (&v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for DIPError.Code();
  v225 = *(v30 - 8);
  v226 = v30;
  v31 = *(v225 + 64);
  v32 = __chkstk_darwin(v30);
  v224 = &v201 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v201 - v34;
  v36 = sub_100007224(&qword_100833A88, qword_1006BF8E0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v201 - v38;
  v40 = type metadata accessor for DIPError();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v220 = &v201 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v219 = &v201 - v46;
  __chkstk_darwin(v45);
  v48 = &v201 - v47;
  v49 = swift_allocObject();
  v50 = a3;
  *(v49 + 16) = a3;
  *(v49 + 24) = a4;
  v231[0] = v229;
  v51 = a4;
  v52 = v229;

  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v53 = swift_dynamicCast();
  v54 = *(v41 + 56);
  if (!v53)
  {
    v54(v39, 1, 1, v40);
    sub_10000BE18(v39, &qword_100833A88, qword_1006BF8E0);
    *v29 = v52;
    v64 = v227;
    v65 = v228;
    (*(v228 + 104))(v29, enum case for DIPRetryResult.stopWithError(_:), v227);
    swift_errorRetain();
    v50(v29);
    (*(v65 + 8))(v29, v64);
  }

  v206 = v49;
  v205 = v51;
  v229 = v50;
  v54(v39, 0, 1, v40);
  (*(v41 + 32))(v48, v39, v40);
  DIPError.code.getter();
  v56 = v225;
  v55 = v226;
  v57 = (*(v225 + 88))(v35, v226);
  v58 = v40;
  v59 = v29;
  if (v57 == enum case for DIPError.Code.invalidAppleAccount(_:))
  {
    goto LABEL_3;
  }

  v204 = v48;
  v203 = v41;
  v202 = v29;
  if (v57 == enum case for DIPError.Code.networkTimeOut(_:))
  {
LABEL_6:
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v66 = v55;
    v67 = v58;
    v68 = *(v203 + 16);
    v69 = v204;
    v219 = v67;
    v68(v70, v204);
    (*(v56 + 104))(v224, enum case for DIPError.Code.internalError(_:), v66);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v71 = v220;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v72 = DIPError.properties.getter();
    v74 = v221;
    v73 = v222;
    v75 = v223;
    (*(v222 + 104))(v221, enum case for DIPError.PropertyKey.serverRetryAfter(_:), v223);
    if (*(v72 + 16) && (v76 = sub_10003AF10(v74), (v77 & 1) != 0))
    {
      sub_100020260(*(v72 + 56) + 40 * v76, v231);
      (*(v73 + 8))(v74, v75);

      sub_100007224(&unk_100833A90, &unk_1006DEE50);
      v78 = swift_dynamicCast();
      v79 = v228;
      v80 = v229;
      v81 = v227;
      if (v78)
      {
        v82 = v230;
        v83 = v219;
        v84 = v69;
        v85 = swift_allocError();
        (v68)(v86, v71, v83);
        v87 = v202;
        *v202 = v85;
        v87[1] = v82;
        (*(v79 + 104))(v87, enum case for DIPRetryResult.retryAfterDelay(_:), v81);
        v80(v87);
        (*(v79 + 8))(v87, v81);
        v88 = *(v203 + 8);
        v88(v71, v83);
        v88(v84, v83);
      }
    }

    else
    {

      (*(v73 + 8))(v74, v75);
      v79 = v228;
      v80 = v229;
      v81 = v227;
    }

    v107 = v219;
    v108 = swift_allocError();
    (v68)(v109, v71, v107);
    v110 = v202;
    *v202 = v108;
    (*(v79 + 104))(v110, enum case for DIPRetryResult.retryWithError(_:), v81);
    v80(v110);
    (*(v79 + 8))(v110, v81);
    v111 = *(v203 + 8);
    v111(v71, v107);
    v111(v204, v107);
  }

  if (v57 == enum case for DIPError.Code.cloudkitZoneNotFound(_:))
  {
    v89 = v215;
    defaultLogger()();
    v90 = v218;

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v231[0] = v94;
      *v93 = 136446210;
      *(v93 + 4) = sub_100141FE4(*(v90 + 24), *(v90 + 32), v231);
      _os_log_impl(&_mh_execute_header, v91, v92, "Zone is missing in container %{public}s, deleting local caches", v93, 0xCu);
      sub_10000BB78(v94);
    }

    (*(v217 + 8))(v89, v216);
    v95 = v203;
    v223 = "e, wiping container";
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v96 = *(v95 + 16);
    v96(v97, v204, v58);
    v98 = v58;
    (*(v225 + 104))(v224, enum case for DIPError.Code.internalError(_:), v226);
    sub_1000402AC(_swiftEmptyArrayStorage);
LABEL_14:
    v99 = v219;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10001DD68();
    sub_10001DC7C();
    v100 = swift_allocError();
    v96(v101, v99, v98);
    v102 = v202;
    *v202 = v100;
    v104 = v227;
    v103 = v228;
    (*(v228 + 104))(v102, enum case for DIPRetryResult.retryWithError(_:), v227);
    v229(v102);
    (*(v103 + 8))(v102, v104);
    v105 = *(v95 + 8);
    v105(v99, v98);
LABEL_15:
    v106 = v204;
LABEL_16:
    v105(v106, v98);
  }

  if (v57 == enum case for DIPError.Code.cloudkitServerUnavailable(_:) || v57 == enum case for DIPError.Code.cloudkitRateLimited(_:))
  {
    goto LABEL_6;
  }

  if (v57 == enum case for DIPError.Code.cloudkitServerRecordChanged(_:))
  {
    v223 = "local caches and retrying";
    v222 = sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    v221 = swift_allocError();
    v113 = v203;
    v114 = *(v203 + 16);
    v114(v115, v204, v58);
    v98 = v58;
    (*(v56 + 104))(v224, enum case for DIPError.Code.internalError(_:), v55);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v116 = v219;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v117 = swift_allocError();
    v114(v118, v116, v58);
    *v59 = v117;
    v120 = v227;
    v119 = v228;
    (*(v228 + 104))(v59, enum case for DIPRetryResult.retryWithError(_:), v227);
    v229(v59);
    (*(v119 + 8))(v59, v120);
    v105 = *(v113 + 8);
    v105(v116, v58);
    goto LABEL_15;
  }

  if (v57 == enum case for DIPError.Code.cloudkitChangeTokenExpired(_:))
  {
    v121 = v56;
    v122 = v214;
    defaultLogger()();
    v123 = v218;

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v231[0] = v127;
      *v126 = 136446210;
      *(v126 + 4) = sub_100141FE4(*(v123 + 24), *(v123 + 32), v231);
      _os_log_impl(&_mh_execute_header, v124, v125, "Change token is expired in container %{public}s, deleting local caches", v126, 0xCu);
      sub_10000BB78(v127);
    }

    (*(v217 + 8))(v122, v216);
    v223 = "g local caches and retrying";
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v95 = v203;
    v96 = *(v203 + 16);
    v96(v128, v204, v58);
    v98 = v58;
    (*(v121 + 104))(v224, enum case for DIPError.Code.internalError(_:), v226);
    sub_1000402AC(_swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  v129 = v35;
  v130 = v218;
  if (v57 == enum case for DIPError.Code.cloudkitUnsyncedKeychain(_:))
  {
    v131 = v56;
    v132 = v213;
    defaultLogger()();
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v133, v134, "CloudKit keychain is still being synced", v135, 2u);
    }

    (*(v217 + 8))(v132, v216);
    v223 = "artial uploads failure";
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v136 = v203;
    v137 = *(v203 + 16);
    v138 = v204;
    v137(v139, v204, v58);
    v140 = v58;
    (*(v131 + 104))(v224, enum case for DIPError.Code.internalError(_:), v226);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v141 = v219;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v142 = swift_allocError();
    v137(v143, v141, v140);
    v144 = v202;
    *v202 = v142;
    v146 = v227;
    v145 = v228;
    (*(v228 + 104))(v144, enum case for DIPRetryResult.retryWithError(_:), v227);
    v229(v144);
    (*(v145 + 8))(v144, v146);
    v147 = *(v136 + 8);
    v147(v141, v140);
    v147(v138, v140);
  }

  else if (v57 == enum case for DIPError.Code.cloudkitMissingManateeIdentity(_:))
  {
    v148 = v56;
    v149 = v209;
    defaultLogger()();

    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.info.getter();

    v152 = os_log_type_enabled(v150, v151);
    v153 = v203;
    if (v152)
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v231[0] = v155;
      *v154 = 136446210;
      *(v154 + 4) = sub_100141FE4(*(v130 + 24), *(v130 + 32), v231);
      _os_log_impl(&_mh_execute_header, v150, v151, "E2E encryption data in container %{public}s is unrecoverable, wiping container", v154, 0xCu);
      sub_10000BB78(v155);
    }

    (*(v217 + 8))(v149, v216);
    v156 = swift_allocBox();
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v157 = v204;
    (*(v153 + 16))(v158, v204, v58);
    (*(v148 + 104))(v224, enum case for DIPError.Code.internalError(_:), v226);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v159 = swift_allocObject();
    v160 = v211;
    v159[2] = v156;
    v159[3] = v160;
    v159[4] = v206;

    sub_10000E410(v212, v159);

    (*(v153 + 8))(v157, v58);
  }

  else
  {
    v41 = v203;
    v48 = v204;
    if (v57 == enum case for DIPError.Code.cloudkitManateeUnavailable(_:))
    {
LABEL_3:
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      v60 = swift_allocError();
      (*(v41 + 16))(v61, v48, v58);
      *v59 = v60;
      v63 = v227;
      v62 = v228;
      (*(v228 + 104))(v59, enum case for DIPRetryResult.stopWithError(_:), v227);
      v229(v59);
      (*(v62 + 8))(v59, v63);
      (*(v41 + 8))(v48, v58);
    }

    if (v57 != enum case for DIPError.Code.cloudkitPartialUploadsFailure(_:))
    {
      if (v57 != enum case for DIPError.Code.cloudkitCancelRequestedByClient(_:))
      {
        sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
        v194 = swift_allocError();
        v195 = v203;
        v196 = v56;
        v197 = v204;
        (*(v203 + 16))(v198, v204, v58);
        *v59 = v194;
        v200 = v227;
        v199 = v228;
        (*(v228 + 104))(v59, enum case for DIPRetryResult.stopWithError(_:), v227);
        v229(v59);
        (*(v199 + 8))(v59, v200);
        (*(v195 + 8))(v197, v58);
        (*(v196 + 8))(v129, v226);
      }

      v178 = v56;
      v179 = v207;
      defaultLogger()();
      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.debug.getter();
      v182 = os_log_type_enabled(v180, v181);
      v183 = v203;
      if (v182)
      {
        v184 = swift_slowAlloc();
        *v184 = 0;
        _os_log_impl(&_mh_execute_header, v180, v181, "", v184, 2u);
      }

      (*(v217 + 8))(v179, v216);
      v223 = "ching to container";
      sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v185 = *(v183 + 16);
      v186 = v204;
      v185(v187, v204, v58);
      v98 = v58;
      (*(v178 + 104))(v224, enum case for DIPError.Code.internalError(_:), v226);
      sub_1000402AC(_swiftEmptyArrayStorage);
      v188 = v219;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v189 = swift_allocError();
      v185(v190, v188, v98);
      v191 = v202;
      *v202 = v189;
      v193 = v227;
      v192 = v228;
      (*(v228 + 104))(v191, enum case for DIPRetryResult.stopWithError(_:), v227);
      v229(v191);
      (*(v192 + 8))(v191, v193);
      v105 = *(v183 + 8);
      v105(v188, v98);
      v106 = v186;
      goto LABEL_16;
    }

    v161 = v208;
    defaultLogger()();
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&_mh_execute_header, v162, v163, "There was a partial uploads failure.", v164, 2u);
    }

    (*(v217 + 8))(v161, v216);
    v165._countAndFlagsBits = 0xD000000000000018;
    v166._countAndFlagsBits = 0x3932353561313033;
    v165._object = 0x80000001006FB6D0;
    v166._object = 0xE800000000000000;
    logMilestone(tag:description:)(v166, v165);
    v223 = "Partial CloudKit Failure";
    sub_10001F43C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v167 = v203;
    v168 = *(v203 + 16);
    v169 = v204;
    v168(v170, v204, v58);
    (*(v225 + 104))(v224, enum case for DIPError.Code.internalError(_:), v226);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v171 = v219;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v172 = swift_allocError();
    v168(v173, v171, v58);
    v174 = v202;
    *v202 = v172;
    v176 = v227;
    v175 = v228;
    (*(v228 + 104))(v174, enum case for DIPRetryResult.retryWithError(_:), v227);
    v229(v174);
    (*(v175 + 8))(v174, v176);
    v177 = *(v167 + 8);
    v177(v171, v58);
    v177(v169, v58);
  }
}
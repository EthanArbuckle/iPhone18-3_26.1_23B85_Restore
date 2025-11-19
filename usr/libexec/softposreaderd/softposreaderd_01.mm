void sub_100020000()
{
  if (qword_10039D2E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_10039E390);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100008F6C(0xD000000000000018, 0x8000000100346FD0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "NFSecureElementManagerSession ended in %s", v2, 0xCu);
    sub_10000959C(v3);
  }
}

uint64_t sub_100020148(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC25SPRConfigurationErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for ConfigurationError(0);
  sub_1000223F0(&qword_10039DC00, type metadata accessor for ConfigurationError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

uint64_t sub_100020384(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC17SPRDepotErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for DepotError(0);
  sub_1000223F0(&qword_10039DBC8, type metadata accessor for DepotError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

uint64_t sub_1000205C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC11ORErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for ORError(0);
  sub_1000223F0(&qword_10039DC70, type metadata accessor for ORError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

uint64_t sub_1000207FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC16SPRReadErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for ReadError(0);
  sub_1000223F0(&qword_10039DA08, type metadata accessor for ReadError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

uint64_t sub_100020A38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC23SPRPersistenceErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for PersistenceError(0);
  sub_1000223F0(&qword_10039DB20, type metadata accessor for PersistenceError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

uint64_t sub_100020C74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC20SPRSecurityErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for SecurityError(0);
  sub_1000223F0(&qword_10039D998, type metadata accessor for SecurityError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

uint64_t sub_100020EB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC25SPRSecureChannelErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for SecureChannelError(0);
  sub_1000223F0(&qword_10039D9D0, type metadata accessor for SecureChannelError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

uint64_t sub_1000210EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC16SPRJSONErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for JSONError(0);
  sub_1000223F0(&qword_10039DB90, type metadata accessor for JSONError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

uint64_t sub_100021328(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC22SPRPINAppletProxyErrorLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for PINAppletProxyError(0);
  sub_1000223F0(&qword_10039DAE8, type metadata accessor for PINAppletProxyError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

uint64_t sub_100021564(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC19SPRMonitorErrorCodeLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for MonitorError(0);
  sub_1000223F0(&qword_10039DB58, type metadata accessor for MonitorError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

uint64_t sub_1000217A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v22 = _sSC21SPRPINControllerErrorLeV14softposreaderdE9errorName4codeSSSoAAV_tFZ_0(a1);
  v23 = v7;
  if (a3)
  {
    *&v20 = 8250;
    *(&v20 + 1) = 0xE200000000000000;
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 8250;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
  }

  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = String._bridgeToObjectiveC()();

  *(inited + 72) = sub_10000411C(0, &qword_10039E4C8, NSString_ptr);
  *(inited + 48) = v12;
  sub_100182BA0(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039E4D0, &qword_1002C94A0);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_errorRetain();
    v16 = _convertErrorToNSError(_:)();
    v21 = sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    *&v20 = v16;
    sub_100019D3C(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017F944(v19, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for PINControllerError(0);
  sub_1000223F0(&qword_10039DAB0, type metadata accessor for PINControllerError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v20;
}

void *sub_1000219DC(char a1)
{
  v4 = type metadata accessor for SecureElement();
  swift_allocObject();
  v5 = sub_100138D94();
  if (!v1)
  {
    v6 = v5;
    v47[7] = 0;
    v7 = type metadata accessor for SystemInfo();
    v8 = swift_allocObject();
    if (qword_10039D760 != -1)
    {
      swift_once();
    }

    v9 = qword_1003A6F30;
    *(v8 + 16) = xmmword_1003A6F20;
    *(v8 + 32) = v9;
    type metadata accessor for CALogger();
    swift_allocObject();
    v10 = sub_100022EBC(a1 & 1, 1);
    v38 = type metadata accessor for DefaultManagedDictionary();
    swift_allocObject();
    v11 = sub_10017A614();
    v39 = v10;

    v40 = sub_1000DC8BC(v12);
    v13 = [objc_allocWithZone(NSOperationQueue) init];
    [v13 setMaxConcurrentOperationCount:1];
    [v13 setQualityOfService:33];
    v47[3] = v4;
    v47[4] = &off_1003849A0;
    v47[0] = v6;
    v45 = v38;
    v46 = &off_100386190;
    v44[0] = v11;
    v42 = v7;
    v43 = &off_100386330;
    v41[0] = v8;
    type metadata accessor for ProvisionReader();
    v2 = swift_allocObject();
    v14 = sub_100022438(v47, v4);
    v37[2] = v37;
    v15 = *(*(v4 - 8) + 64);
    __chkstk_darwin(v14);
    v17 = (v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = v45;
    v20 = sub_100022438(v44, v45);
    v37[1] = v37;
    v21 = *(*(v19 - 8) + 64);
    __chkstk_darwin(v20);
    v23 = (v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = v42;
    v26 = sub_100022438(v41, v42);
    v27 = *(*(v25 - 8) + 64);
    __chkstk_darwin(v26);
    v29 = v7;
    v30 = (v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = *v17;
    v33 = *v23;
    v34 = *v30;
    v2[5] = v4;
    v2[6] = &off_1003849A0;
    v2[2] = v32;
    v2[10] = v38;
    v2[11] = &off_100386190;
    v2[7] = v33;
    v2[15] = v29;
    v2[16] = &off_100386330;

    v2[12] = v34;
    v35 = v40;
    v2[17] = v13;
    v2[18] = v35;
    sub_10000959C(v41);
    sub_10000959C(v44);
    sub_10000959C(v47);
  }

  return v2;
}

uint64_t sub_100021E0C()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedHardwareManager];
  v2 = [v1 getHwSupport];

  if (v2 == 2)
  {
    v3 = [v0 sharedHardwareManager];
    v8 = 0;
    v4 = [v3 getRadioEnabledState:&v8];

    if (v4)
    {

LABEL_8:
      v5 = 20904;
      goto LABEL_9;
    }

    if (v8 != 1)
    {
      goto LABEL_8;
    }

    sub_100186854();
    v6 = sub_10011A8C8();

    if (v6)
    {
      return result;
    }

    v5 = 20903;
  }

  else
  {
    v5 = 20905;
  }

LABEL_9:
  sub_1000205C0(v5, 0, 0, 0);
  return swift_willThrow();
}

uint64_t sub_100021F70(void *a1)
{
  v2 = 0xD00000000000003BLL;
  [a1 amount];
  v3 = "end ttp post processing";
  if (NSDecimal.isSignMinus.getter())
  {
    goto LABEL_31;
  }

  [a1 amount];
  NSDecimal.init(integerLiteral:)(v4, 10);
  pow(_:_:)(v7, v5, v6);
  if ((static NSDecimal.< infix(_:_:)() & 1) == 0)
  {
    goto LABEL_31;
  }

  [a1 amount];
  if (NSDecimal.exponent.getter() < 0)
  {
    goto LABEL_31;
  }

  v8 = [a1 unpredictableNumber];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v13)
    {
      sub_100009548(v9, v11);
      v9 = BYTE6(v11);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v13 != 2)
  {
    sub_100009548(v9, v11);
    v9 = 0;
    goto LABEL_14;
  }

  v15 = *(v9 + 16);
  v14 = *(v9 + 24);
  sub_100009548(v9, v12);
  v9 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_11:
    result = sub_100009548(v9, v12);
    if (__OFSUB__(HIDWORD(v9), v9))
    {
      __break(1u);
      goto LABEL_36;
    }

    v9 = HIDWORD(v9) - v9;
  }

LABEL_14:
  if (v9 != static TLVTag.TAG_9F37_LENGTH.getter())
  {
    v3 = "gits, or not a whole number";
    v2 = 0xD000000000000022;
LABEL_31:
    sub_1000205C0(20000, v2, (v3 | 0x8000000000000000), 0);
    return swift_willThrow();
  }

  v17 = [a1 transactionId];
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = v20;
  v22 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v22)
    {
      sub_100009548(v18, v20);
      v23 = BYTE6(v20);
      goto LABEL_25;
    }

LABEL_23:
    result = sub_100009548(v18, v21);
    LODWORD(v23) = HIDWORD(v18) - v18;
    if (!__OFSUB__(HIDWORD(v18), v18))
    {
      v23 = v23;
      goto LABEL_25;
    }

LABEL_36:
    __break(1u);
    return result;
  }

  if (v22 != 2)
  {
    sub_100009548(v18, v20);
    goto LABEL_30;
  }

  v25 = *(v18 + 16);
  v24 = *(v18 + 24);
  sub_100009548(v18, v21);
  v23 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_25:
  if (v23 != 16)
  {
LABEL_30:
    v3 = "ber invalid length";
    v2 = 0xD00000000000001CLL;
    goto LABEL_31;
  }

  v3 = "countryCode invalid";
  if (([a1 currencyCode] & 0x8000000000000000) != 0 || objc_msgSend(a1, "currencyCode") > 999)
  {
    v2 = 0xD000000000000014;
    goto LABEL_31;
  }

  v3 = "transactionId invalid length";
  v2 = 0xD000000000000013;
  if (([a1 countryCode] & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  result = [a1 countryCode];
  if (result > 999)
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_10002226C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000222A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100022304(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002231C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022380(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_10039E248, &qword_1002C23D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000223F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022438(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_100022544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Logging();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *CALogger.dailyAnalyticsPOS.unsafeMutableAddressor()
{
  if (qword_10039D300 != -1)
  {
    swift_once();
  }

  return &static CALogger.dailyAnalyticsPOS;
}

uint64_t *CALogger.dailyAnalyticsProvision.unsafeMutableAddressor()
{
  if (qword_10039D308 != -1)
  {
    swift_once();
  }

  return &static CALogger.dailyAnalyticsProvision;
}

uint64_t sub_100022648()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039E510);
  sub_10000403C(v0, qword_10039E510);
  sub_100023B24();
  return static SPRLogger.coreAnalytics.getter();
}

unint64_t sub_1000226A4(unsigned __int8 a1)
{
  v1 = 0xD00000000000002CLL;
  if (a1 > 4u)
  {
    v5 = 0xD00000000000002BLL;
    if (a1 != 8)
    {
      v5 = 0xD000000000000022;
    }

    if (a1 == 7)
    {
      v5 = 0xD00000000000002CLL;
    }

    v6 = 0xD000000000000026;
    if (a1 == 5)
    {
      v6 = 0xD000000000000027;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000032;
    v3 = 0xD000000000000025;
    if (a1 == 3)
    {
      v3 = 0xD00000000000002DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000024;
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

uint64_t sub_1000227BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1000226A4(*a1);
  v5 = v4;
  if (v3 == sub_1000226A4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100022844()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000226A4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000228A8()
{
  sub_1000226A4(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000228FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000226A4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002295C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100023940(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10002298C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000226A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000229B8()
{
  sub_100004074(&qword_10039E600, &qword_1002C1898);
  v0 = swift_allocObject();
  *(v0 + 33) = 2;
  sub_100004074(&qword_10039D7F8, &qword_1002BDC50);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 40) = result;
  *(v0 + 16) = 0xD00000000000001DLL;
  *(v0 + 24) = 0x8000000100347320;
  *(v0 + 32) = 0;
  static CALogger.dailyAnalyticsPOS = v0;
  return result;
}

uint64_t (*static CALogger.dailyAnalyticsPOS.modify())()
{
  if (qword_10039D300 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100022B24()
{
  sub_100004074(&qword_10039E5F8, &unk_1002C1888);
  v0 = swift_allocObject();
  *(v0 + 33) = 2;
  sub_100004074(&qword_10039D7F8, &qword_1002BDC50);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 40) = result;
  *(v0 + 16) = 0xD000000000000027;
  *(v0 + 24) = 0x8000000100344C60;
  *(v0 + 32) = 5;
  static CALogger.dailyAnalyticsProvision = v0;
  return result;
}

uint64_t sub_100022BE4(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
}

uint64_t sub_100022C64(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static CALogger.dailyAnalyticsProvision.modify())()
{
  if (qword_10039D308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_100022D54(void *a1)
{
  if (qword_10039D300 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_1000297A8();

  if (qword_10039D308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_100029CF4();

  return [a1 setTaskCompleted];
}

void sub_100022E54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100022EBC(char a1, char a2)
{
  v3 = v2;
  *(v2 + 16) = a1;
  *(v2 + 17) = a2;
  if (qword_10039D2F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039E510);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v2 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "isProductionAnalytics: %{BOOL}d", v7, 8u);
  }

  else
  {
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = *(v3 + 17);

    _os_log_impl(&_mh_execute_header, v8, v9, "isDailyCollectionEnabled: %{BOOL}d", v10, 8u);
  }

  else
  {
  }

  return v3;
}

void sub_100023074(unsigned __int8 a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 16);

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = a2;
  sub_10017FC24(isa, 0xD000000000000017, 0x80000001003472C0, isUniquelyReferenced_nonNull_native);
  if (qword_10039D2F8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_10039E510);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v14 = v5;
    v16 = sub_100008F6C(v13, v15, aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002C1670;
    *(v17 + 56) = &type metadata for CAEvent;
    *(v17 + 32) = a1;
    *(v17 + 88) = sub_100004074(&qword_10039E5F0, &qword_1002C1880);
    *(v17 + 64) = a2;

    v18 = showFunction(signature:_:)(0xD000000000000017, 0x8000000100347300, v17);
    v20 = v19;

    v21 = sub_100008F6C(v18, v20, aBlock);

    *(v12 + 14) = v21;
    v5 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v22 = sub_1000226A4(a1);
  v24 = v23;
  v25 = String._bridgeToObjectiveC()();

  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = v5;
  aBlock[4] = sub_1000238F8;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D80C;
  aBlock[3] = &unk_10037FF50;
  v27 = _Block_copy(aBlock);

  v28 = AnalyticsSendEventLazy();
  _Block_release(v27);

  if ((v28 & 1) == 0)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      v33 = sub_100008F6C(v22, v24, aBlock);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "CoreAnalytics rejected event %s", v31, 0xCu);
      sub_10000959C(v32);
    }
  }
}

void _s14softposreaderd8CALoggerC20registerBGSystemTask5queueySo012OS_dispatch_F0C_tFZ_0(uint64_t a1)
{
  if (qword_10039D2F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_10039E510);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315138;
    v7 = showFunction(signature:_:)(0xD00000000000001CLL, 0x8000000100347390, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, v25);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v10 = [objc_opt_self() sharedScheduler];
  v11 = String._bridgeToObjectiveC()();
  v25[4] = sub_100022D54;
  v25[5] = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_100022E54;
  v25[3] = &unk_10037FF78;
  v12 = _Block_copy(v25);
  v13 = [v10 registerForTaskWithIdentifier:v11 usingQueue:a1 launchHandler:v12];
  _Block_release(v12);

  v14 = Logger.logObject.getter();
  if (v13)
  {
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v16 = 136315138;
      v18 = showFunction(signature:_:)(0xD00000000000001CLL, 0x8000000100347390, _swiftEmptyArrayStorage);
      v20 = sub_100008F6C(v18, v19, v25);

      *(v16 + 4) = v20;
      v21 = "%s - Handler was registered (for daily core analytics)";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v14, v15, v21, v16, 0xCu);
      sub_10000959C(v17);
    }
  }

  else
  {
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v16 = 136315138;
      v22 = showFunction(signature:_:)(0xD00000000000001CLL, 0x8000000100347390, _swiftEmptyArrayStorage);
      v24 = sub_100008F6C(v22, v23, v25);

      *(v16 + 4) = v24;
      v21 = "%s - registerForTask() returned NO";
      goto LABEL_10;
    }
  }
}

uint64_t sub_1000238C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000238F8()
{
  v1 = *(v0 + 32);
  sub_10002398C(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_100023928(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100023940(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037CEE0, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002398C(unsigned __int8 a1, uint64_t a2)
{
  if (qword_10039D2F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039E510);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1000226A4(a1);
    v13 = sub_100008F6C(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.post(...) AnalyticsSendEventLazy: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return a2;
}

unint64_t sub_100023B24()
{
  result = qword_1003A26E0;
  if (!qword_1003A26E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A26E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAEvent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CAEvent(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100023CE0()
{
  result = qword_10039E608;
  if (!qword_10039E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E608);
  }

  return result;
}

uint64_t sub_100023D40()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039E610);
  sub_10000403C(v0, qword_10039E610);
  sub_100023B24();
  return static SPRLogger.coreAnalytics.getter();
}

unint64_t sub_100023D9C(char a1)
{
  result = 0x655674656C707041;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x7250646564616F4CLL;
      break;
    case 4:
      result = 0x646F43726F727245;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x637465464D414C53;
      break;
    case 7:
      result = 0x7245726576726553;
      break;
    case 8:
      result = 0x654E6C656E72654BLL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x4E656C69666F7250;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x5374736575716552;
      break;
    case 13:
      result = 0x726F727245464153;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_100023FBC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100023D9C(*a1);
  v5 = v4;
  if (v3 == sub_100023D9C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100024044()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100023D9C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000240A8()
{
  sub_100023D9C(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000240FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100023D9C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002415C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100024EE8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10002418C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100023D9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1000241C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000242D0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000243C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000244D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100024F34(*a1);
  *a2 = result;
  return result;
}

void sub_100024500(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656D695468;
  v4 = 0x637465464D414C53;
  v5 = 0x5474736575716552;
  v6 = 0xEB00000000656D69;
  v7 = 0xEC000000656D6954;
  v8 = 0x7265746E45464153;
  if (v2 != 3)
  {
    v8 = 0x5474697845464153;
    v7 = 0xEB00000000656D69;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000100344E50;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_1000245C8(char *a1)
{
  v3 = *v1;
  if (*(*sub_10000BE18(v1 + 2, v1[5]) + 17) == 1)
  {
    if (qword_10039D300 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = *(*sub_10000BE18(v1 + 2, v1[5]) + 16);

    sub_10002AB10(a1, v4);
  }

  else
  {
    if (qword_10039D310 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000403C(v5, qword_10039E610);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v15[0] = swift_slowAlloc();
      *v7 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = sub_100008F6C(v8, v9, v15);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = showFunction(signature:_:)(0xD000000000000017, 0x8000000100347400, _swiftEmptyArrayStorage);
      v13 = sub_100008F6C(v11, v12, v15);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v6, "%s.%s - isDailyCollectionEnabled: false", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_100024864(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v4;
  if (*(*sub_10000BE18(v4 + 2, v4[5]) + 17) == 1)
  {
    if (qword_10039D300 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = *(*sub_10000BE18(v4 + 2, v4[5]) + 16);

    sub_100026378(a3, a1, a2, v9);
  }

  else
  {
    if (qword_10039D310 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000403C(v10, qword_10039E610);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v12 = 136315394;
      v13 = _typeName(_:qualified:)();
      v15 = sub_100008F6C(v13, v14, v20);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = showFunction(signature:_:)(0xD000000000000014, 0x80000001003473E0, _swiftEmptyArrayStorage);
      v18 = sub_100008F6C(v16, v17, v20);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, oslog, v11, "%s.%s - isDailyCollectionEnabled: false", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for ConfiguratorAnalytics()
{
  result = qword_10039E650;
  if (!qword_10039E650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfiguratorAnalytics.PerformanceField(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConfiguratorAnalytics.PerformanceField(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ConfiguratorAnalytics.AnalyticsField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfiguratorAnalytics.AnalyticsField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100024E3C()
{
  result = qword_10039E780;
  if (!qword_10039E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E780);
  }

  return result;
}

unint64_t sub_100024E94()
{
  result = qword_10039E788;
  if (!qword_10039E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E788);
  }

  return result;
}

unint64_t sub_100024EE8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037CFF0, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100024F34(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037D160, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void *sub_100024F80()
{
  sub_1000E3EB4(v21);
  if (!v1)
  {
    v2 = v22;
    v3 = sub_100022438(v21, v22);
    v4 = *(*(v2 - 8) + 64);
    __chkstk_darwin(v3);
    v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for CALogger();
    v20[3] = v9;
    v20[4] = &off_10037FF08;
    v20[0] = v8;
    type metadata accessor for ConfiguratorAnalytics();
    v0 = swift_allocObject();
    v10 = sub_100022438(v20, v9);
    v11 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v0[5] = v9;
    v0[6] = &off_10037FF08;
    v0[2] = v15;
    v16 = sub_100182F40(_swiftEmptyArrayStorage);
    v17 = sub_10018369C(_swiftEmptyArrayStorage);
    sub_100004074(&qword_10039E7A8, &unk_1002C1AE0);
    v18 = swift_allocObject();
    *(v18 + 32) = 0;
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v0[7] = v18;
    sub_10000959C(v20);
    sub_10000959C(v21);
  }

  return v0;
}

Swift::Int sub_1000251C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000252DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000253F4()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039E7B0);
  sub_10000403C(v0, qword_10039E7B0);
  sub_100023B24();
  return static SPRLogger.coreAnalytics.getter();
}

uint64_t sub_100025464()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100025570@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000262C0(*a1);
  *a2 = result;
  return result;
}

void sub_1000255A0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701080909;
  v5 = 0x8000000100344F20;
  v6 = 0xD000000000000018;
  v7 = 0x7A69536863746142;
  if (v2 != 4)
  {
    v7 = 0x646F43726F727245;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE900000000000065;
  }

  v8 = 0xEB0000000070616DLL;
  v9 = 0x746942746E657645;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x8000000100344F00;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

Swift::Int sub_100025674()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000256E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002573C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10037D2F8, *a1);

  *a2 = v3 != 0;
  return result;
}

void sub_1000257B0(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_100004074(&qword_10039E978, &qword_1002C1C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1690;
  *(inited + 32) = 0;
  v9 = *(v4 + 64);
  *(inited + 64) = &type metadata for UInt8;
  *(inited + 40) = v9;
  *(inited + 72) = 1;
  *(inited + 104) = &type metadata for UInt32;
  *(inited + 80) = a1;
  *(inited + 112) = 2;
  *(inited + 144) = &type metadata for UInt64;
  *(inited + 120) = a2;
  *(inited + 152) = 3;
  *(inited + 184) = &type metadata for UInt8;
  *(inited + 160) = a3;
  sub_100183870(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039E980, &qword_1002C1C98);
  swift_arrayDestroy();
  v10 = *(v4 + 56);
  os_unfair_lock_lock((v10 + 32));
  sub_100026348((v10 + 16));
  os_unfair_lock_unlock((v10 + 32));

  os_unfair_lock_lock((v10 + 32));
  sub_100026360((v10 + 16));
  os_unfair_lock_unlock((v10 + 32));
}

void sub_100025910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100004074(&qword_10039E978, &qword_1002C1C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1670;
  *(inited + 32) = 4;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = a1;
  *(inited + 72) = 5;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = a2;
  sub_100183870(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039E980, &qword_1002C1C98);
  swift_arrayDestroy();
  v7 = *(v3 + 56);
  os_unfair_lock_lock((v7 + 32));
  sub_10002630C((v7 + 16));
  os_unfair_lock_unlock((v7 + 32));

  os_unfair_lock_lock((v7 + 32));
  sub_100026328((v7 + 16));
  os_unfair_lock_unlock((v7 + 32));
}

void sub_100025A34(char *a1)
{
  v3 = *v1;
  if (*(*sub_10000BE18(v1 + 2, v1[5]) + 17) == 1)
  {
    if (qword_10039D300 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = *(*sub_10000BE18(v1 + 2, v1[5]) + 16);

    sub_10002AB10(a1, v4);
  }

  else
  {
    if (qword_10039D318 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000403C(v5, qword_10039E7B0);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v15[0] = swift_slowAlloc();
      *v7 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = sub_100008F6C(v8, v9, v15);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = showFunction(signature:_:)(0xD000000000000017, 0x8000000100347400, _swiftEmptyArrayStorage);
      v13 = sub_100008F6C(v11, v12, v15);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v6, "%s.%s - isDailyCollectionEnabled: false", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_100025CD0()
{
  sub_10000959C((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MonitorAnalytics()
{
  result = qword_10039E7F0;
  if (!qword_10039E7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MonitorAnalytics.PerformanceField(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MonitorAnalytics.PerformanceField(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MonitorAnalytics.AnalyticsField(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MonitorAnalytics.AnalyticsField(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100025FD8()
{
  result = qword_10039E950;
  if (!qword_10039E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E950);
  }

  return result;
}

unint64_t sub_100026030()
{
  result = qword_10039E958;
  if (!qword_10039E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E958);
  }

  return result;
}

uint64_t sub_100026084()
{
  sub_1000E3EB4(v21);
  if (!v1)
  {
    v2 = v22;
    v3 = sub_100022438(v21, v22);
    v4 = *(*(v2 - 8) + 64);
    __chkstk_darwin(v3);
    v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for CALogger();
    v20[3] = v9;
    v20[4] = &off_10037FF08;
    v20[0] = v8;
    type metadata accessor for MonitorAnalytics();
    v0 = swift_allocObject();
    v10 = sub_100022438(v20, v9);
    v11 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    *(v0 + 64) = 0;
    *(v0 + 40) = v9;
    *(v0 + 48) = &off_10037FF08;
    *(v0 + 16) = v15;
    v16 = sub_100182F40(_swiftEmptyArrayStorage);
    v17 = sub_10018369C(_swiftEmptyArrayStorage);
    sub_100004074(&qword_10039E988, &qword_1002C1CA0);
    v18 = swift_allocObject();
    *(v18 + 32) = 0;
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    *(v0 + 56) = v18;
    sub_10000959C(v20);
    sub_10000959C(v21);
  }

  return v0;
}

unint64_t sub_1000262C0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037D248, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void sub_100026378(char a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = v4[2];
  v12 = v5[3];
  v13 = objc_allocWithZone(NSUserDefaults);
  v14 = String._bridgeToObjectiveC()();
  oslog = [v13 initWithSuiteName:v14];

  if (oslog)
  {
    v15 = *(v5 + 33);
    if (v15 != 2 && ((v15 ^ a4) & 1) != 0)
    {
      if (qword_10039D330 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000403C(v16, qword_10039EE18);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "production flag changed, sending the daily events.", v19, 2u);
      }

      sub_1000297A8();
    }

    *(v5 + 33) = a4 & 1;
    v20 = v5[5];
    os_unfair_lock_lock(v20 + 4);
    sub_100028A38(v21, oslog, a1, a2, a3);
    os_unfair_lock_unlock(v20 + 4);
  }

  else
  {
    if (qword_10039D330 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000403C(v22, qword_10039EE18);
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = sub_100008F6C(v25, v26, &v32);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = showFunction(signature:_:)(0xD00000000000001BLL, 0x8000000100347540, _swiftEmptyArrayStorage);
      v30 = sub_100008F6C(v28, v29, &v32);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, oslog, v23, "%s.%s - User Defaults is nil", v24, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_1000266C8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039E990);
  sub_10000403C(v0, qword_10039E990);
  sub_100023B24();
  return static SPRLogger.coreAnalytics.getter();
}

unint64_t sub_100026774(char a1)
{
  result = 0x646F43726F727245;
  switch(a1)
  {
    case 1:
    case 4:
    case 7:
    case 24:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6F436C61626F6C47;
      break;
    case 8:
      result = 0x4E73736150534156;
      break;
    case 9:
    case 21:
      result = 0xD00000000000001DLL;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x746361466D726F46;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 5396052;
      break;
    case 15:
      result = 0x646E49726F727245;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
    case 25:
    case 28:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x5274756F656D6954;
      break;
    case 19:
      result = 0x7272456B63617254;
      break;
    case 20:
      result = 0x43676E6972616554;
      break;
    case 22:
      result = 0xD000000000000019;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 26:
      result = 0xD00000000000001BLL;
      break;
    case 27:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_100026AE8(char a1)
{
  result = 0x54676E696C6C6F50;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x52746E656D796150;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x6461655243434950;
      break;
    case 7:
      result = 0x5464616552534156;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0x5065727574706143;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x6C61746F544E4950;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0xD00000000000002ELL;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0x506E656577746562;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_100026DA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000294CC();
  *a2 = result;
  return result;
}

unint64_t sub_100026DD0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100026774(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100026E24(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_100026ED0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100026F54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_100026FC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002702C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029520(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10002705C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100026AE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100027098(unint64_t a1, unint64_t a2, char a3)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      sub_10002973C();
      UnsignedInteger.setBit(_:)(0);
    }

    else
    {
      sub_10002973C();
      UnsignedInteger.clearBit(_:)(0);
    }

    UnsignedInteger.clearBit(_:)(1);
  }

  else
  {
    if (a1 == 2)
    {
      sub_10002973C();
      UnsignedInteger.clearBit(_:)(0);
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_11;
      }

      sub_10002973C();
      UnsignedInteger.setBit(_:)(0);
    }

    UnsignedInteger.setBit(_:)(1);
  }

LABEL_11:
  if ((a1 & 0xFF00) != 0x200)
  {
    sub_10002973C();
    if ((a1 & 0x100) != 0)
    {
      UnsignedInteger.setBit(_:)(2);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(2);
    }
  }

  if ((a1 & 0xFF0000) != 0x20000)
  {
    sub_10002973C();
    if ((a1 & 0x10000) != 0)
    {
      UnsignedInteger.setBit(_:)(3);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(3);
    }
  }

  if ((a1 & 0xFF000000) != 0x2000000)
  {
    sub_10002973C();
    if ((a1 & 0x1000000) != 0)
    {
      UnsignedInteger.setBit(_:)(4);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(4);
    }
  }

  if ((a1 & 0xFF00000000) != 0x200000000)
  {
    sub_10002973C();
    if ((a1 & 0x100000000) != 0)
    {
      UnsignedInteger.setBit(_:)(5);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(5);
    }
  }

  if ((a1 & 0xFF0000000000) != 0x20000000000)
  {
    sub_10002973C();
    if ((a1 & 0x10000000000) != 0)
    {
      UnsignedInteger.setBit(_:)(6);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(6);
    }
  }

  v6 = HIBYTE(a1);
  if ((a1 & 0xFF000000000000) != 0x2000000000000)
  {
    sub_10002973C();
    if ((a1 & 0x1000000000000) != 0)
    {
      UnsignedInteger.setBit(_:)(7);
      if (v6 == 2)
      {
        goto LABEL_40;
      }

      goto LABEL_35;
    }

    UnsignedInteger.clearBit(_:)(7);
  }

  if (v6 == 2)
  {
    goto LABEL_40;
  }

LABEL_35:
  sub_10002973C();
  if ((a1 & 0x100000000000000) != 0)
  {
    UnsignedInteger.setBit(_:)(8);
  }

  else
  {
    UnsignedInteger.clearBit(_:)(8);
  }

LABEL_40:
  if (a2 != 2)
  {
    sub_10002973C();
    if (a2)
    {
      UnsignedInteger.setBit(_:)(9);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(9);
    }
  }

  if ((a2 & 0xFF00) != 0x200)
  {
    sub_10002973C();
    if ((a2 & 0x100) != 0)
    {
      UnsignedInteger.setBit(_:)(10);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(10);
    }
  }

  if ((a2 & 0xFF0000) != 0x20000)
  {
    sub_10002973C();
    if ((a2 & 0x10000) != 0)
    {
      UnsignedInteger.setBit(_:)(11);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(11);
    }
  }

  if ((a2 & 0xFF000000) != 0x2000000)
  {
    sub_10002973C();
    if ((a2 & 0x1000000) != 0)
    {
      UnsignedInteger.setBit(_:)(12);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(12);
    }
  }

  if ((a2 & 0xFF00000000) != 0x200000000)
  {
    sub_10002973C();
    if ((a2 & 0x100000000) != 0)
    {
      UnsignedInteger.setBit(_:)(13);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(13);
    }
  }

  if ((a2 & 0xFF0000000000) != 0x20000000000)
  {
    sub_10002973C();
    if ((a2 & 0x10000000000) != 0)
    {
      UnsignedInteger.setBit(_:)(14);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(14);
    }
  }

  v7 = HIBYTE(a2);
  if ((a2 & 0xFF000000000000) != 0x2000000000000)
  {
    sub_10002973C();
    if ((a2 & 0x1000000000000) != 0)
    {
      UnsignedInteger.setBit(_:)(15);
      if (v7 == 2)
      {
        goto LABEL_73;
      }

      goto LABEL_68;
    }

    UnsignedInteger.clearBit(_:)(15);
  }

  if (v7 == 2)
  {
    goto LABEL_73;
  }

LABEL_68:
  sub_10002973C();
  if ((a2 & 0x100000000000000) != 0)
  {
    UnsignedInteger.setBit(_:)(16);
  }

  else
  {
    UnsignedInteger.clearBit(_:)(16);
  }

LABEL_73:
  if (a3 != 2)
  {
    sub_10002973C();
    if (a3)
    {
      UnsignedInteger.setBit(_:)(17);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(17);
    }
  }

  return 0;
}

uint64_t sub_100027534()
{
  v1 = v0;
  sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1002C1680;
  *(result + 32) = 2;
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = v3 + (v4 << 16);
  if (__CFADD__(v3, v4 << 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v0 + 160);
  v7 = __CFADD__(v5, v6 << 32);
  v8 = v5 + (v6 << 32);
  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v0 + 168);
  if ((v4 | v3 | v9 | v6) < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__CFADD__(v8, v9 << 48))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v10 = result;
  *(result + 64) = &type metadata for UInt64;
  *(result + 40) = v8 + (v9 << 48);
  *(result + 72) = 1;
  v11 = sub_100027098(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  *(v10 + 104) = &type metadata for UInt32;
  *(v10 + 80) = v11;
  *(v10 + 112) = 3;
  v12 = *(v0 + 176) | (*(v0 + 180) << 32) | (*(v0 + 177) << 8) | (*(v0 + 178) << 16);
  *(v10 + 144) = &type metadata for UInt64;
  *(v10 + 120) = v12;
  *(v10 + 152) = 4;
  swift_beginAccess();
  if (*(v0 + 184))
  {
    v26 = *(v0 + 184);

    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0);
    v13 = BidirectionalCollection<>.joined(separator:)();
    v15 = v14;

    v16 = &type metadata for String;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v16 = 0;
    *(v10 + 176) = 0;
  }

  *(v10 + 160) = v13;
  *(v10 + 168) = v15;
  *(v10 + 184) = v16;
  *(v10 + 192) = 28;
  v17 = *(v1 + 112);

  v19 = sub_1000295E0(v18);
  v21 = v20;

  if (v21)
  {
    v19 = 0;
    v22 = 0;
    *(v10 + 208) = 0;
    *(v10 + 216) = 0;
  }

  else
  {
    v22 = &type metadata for Int;
  }

  *(v10 + 200) = v19;
  *(v10 + 224) = v22;
  sub_10018399C(v10);
  swift_setDeallocating();
  sub_100004074(&qword_10039EC60, &qword_1002C1F80);
  v23 = swift_arrayDestroy();
  v24 = *(v1 + 56);
  __chkstk_darwin(v23);
  os_unfair_lock_lock((v24 + 32));
  sub_100029720((v24 + 16));
  os_unfair_lock_unlock((v24 + 32));

  __chkstk_darwin(v25);
  os_unfair_lock_lock((v24 + 32));
  sub_100026328((v24 + 16));
  os_unfair_lock_unlock((v24 + 32));
  return sub_10002784C();
}

uint64_t sub_10002784C()
{
  *(v0 + 120) = 4;
  *(v0 + 121) = 0x202020202020202;
  *(v0 + 129) = 0x202020202020202;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 174) = 0;
  swift_beginAccess();
  v1 = *(v0 + 184);
  *(v0 + 184) = 0;

  v2 = *(v0 + 112);
  *(v0 + 112) = _swiftEmptyArrayStorage;
}

void sub_1000278BC()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(*(v1 + 16) + 16);
  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    if (qword_10039D320 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_10039E990);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "analytics wasn't sent last time", v6, 2u);
    }

    sub_100027534();
  }
}

uint64_t sub_1000279D8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  sub_10000BE18((v1 + 64), v11);
  (*(*(v10 + 8) + 16))(v11);
  (*(v3 + 16))(v7, v9, v2);
  v12 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_10004D944(0, v12[2] + 1, 1, v12);
    *(v1 + 112) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_10004D944(v14 > 1, v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  (*(v3 + 32))(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v7, v2);
  *(v1 + 112) = v12;
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_100027BBC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v32[0] = _swiftEmptyArrayStorage;
    sub_10004E2DC(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_1000094F4(v7, *v6);
      v9 = Data.hexString()();
      sub_100009548(v7, v8);
      v32[0] = v4;
      v11 = v4[2];
      v10 = v4[3];
      if (v11 >= v10 >> 1)
      {
        sub_10004E2DC((v10 > 1), v11 + 1, 1);
        v4 = v32[0];
      }

      v6 += 2;
      v4[2] = v11 + 1;
      *&v4[2 * v11 + 4] = v9;
      --v3;
    }

    while (v3);
  }

  v32[0] = v4;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0);
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  swift_beginAccess();
  v15 = *(v2 + 184);
  if (!v15)
  {
    sub_100004074(&qword_1003A5D40, &qword_1002C1740);
    result = swift_allocObject();
    *(result + 16) = xmmword_1002C1660;
    *(result + 32) = v12;
    *(result + 40) = v14;
    *(v2 + 184) = result;
    goto LABEL_14;
  }

  v16 = *(v2 + 184);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_10004D4B0(0, *(v15 + 2) + 1, 1, v15);
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_10004D4B0((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[16 * v18];
  *(v19 + 4) = v12;
  *(v19 + 5) = v14;
  v20 = *(v2 + 184);
  *(v2 + 184) = v15;

  while (1)
  {
    result = *(v2 + 184);
LABEL_14:
    if (!result || *(result + 16) < 4uLL)
    {
      break;
    }

    result = sub_100026724();
    v23 = result;
    v24 = *v22;
    if (*v22)
    {
      v25 = *(v24 + 2);
      if (!v25)
      {
        __break(1u);
        return result;
      }

      v26 = v22;
      v27 = v25 - 1;
      v28 = *v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v24;
      if (!isUniquelyReferenced_nonNull_native || v27 > *(v24 + 3) >> 1)
      {
        if (*(v24 + 2) <= v27)
        {
          v30 = v27;
        }

        else
        {
          v30 = *(v24 + 2);
        }

        v24 = sub_10004D4B0(isUniquelyReferenced_nonNull_native, v30, 1, v24);
        *v26 = v24;
      }

      sub_10002958C((v24 + 32));
      v31 = *(v24 + 2);
      memmove(v24 + 32, v24 + 48, 16 * v31 - 16);
      *(v24 + 2) = v31 - 1;
      *v26 = v24;
      v23(v32, 0);
    }

    else
    {
      (result)(v32, 0);
    }
  }

  return result;
}

uint64_t sub_100027EDC(char a1)
{
  if ((((a1 + 16) >> 4) | (16 * (a1 + 16))) >= 9u)
  {
    type metadata accessor for SPRTransactionOutcomeStatus(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v1 = byte_1002C1F90[(((a1 + 16) >> 4) | (16 * (a1 + 16)))];
    sub_100004074(&qword_10039EC58, &unk_1002C1F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = v1;
    sub_100027F94(inited);
    return swift_setDeallocating();
  }

  return result;
}

void sub_100027F94(char *a1)
{
  v3 = *v1;
  if (*(*sub_10000BE18(v1 + 2, v1[5]) + 17) == 1)
  {
    if (qword_10039D300 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = *(*sub_10000BE18(v1 + 2, v1[5]) + 16);

    sub_10002AB10(a1, v4);
  }

  else
  {
    if (qword_10039D320 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000403C(v5, qword_10039E990);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v15[0] = swift_slowAlloc();
      *v7 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = sub_100008F6C(v8, v9, v15);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = showFunction(signature:_:)(0xD000000000000017, 0x8000000100347400, _swiftEmptyArrayStorage);
      v13 = sub_100008F6C(v11, v12, v15);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v6, "%s.%s - isDailyCollectionEnabled: false", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_100028230(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v4;
  if (*(*sub_10000BE18(v4 + 2, v4[5]) + 17) == 1)
  {
    if (qword_10039D300 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = *(*sub_10000BE18(v4 + 2, v4[5]) + 16);

    sub_100026378(a3, a1, a2, v9);
  }

  else
  {
    if (qword_10039D320 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000403C(v10, qword_10039E990);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v12 = 136315394;
      v13 = _typeName(_:qualified:)();
      v15 = sub_100008F6C(v13, v14, v20);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = showFunction(signature:_:)(0xD000000000000014, 0x80000001003473E0, _swiftEmptyArrayStorage);
      v18 = sub_100008F6C(v16, v17, v20);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, oslog, v11, "%s.%s - isDailyCollectionEnabled: false", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1000284E0()
{
  sub_10000959C(v0 + 8);
  v1 = v0[14];

  v2 = v0[23];
}

uint64_t sub_100028518()
{
  sub_10000959C(v0 + 2);
  v1 = v0[7];

  sub_10000959C(v0 + 8);
  v2 = v0[14];

  v3 = v0[23];

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReaderAnalytics()
{
  result = qword_10039E9D0;
  if (!qword_10039E9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReaderAnalytics.PerformanceField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReaderAnalytics.PerformanceField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReaderAnalytics.AnalyticsField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReaderAnalytics.AnalyticsField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100028948()
{
  result = qword_10039EC20;
  if (!qword_10039EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039EC20);
  }

  return result;
}

unint64_t sub_1000289E4()
{
  result = qword_10039EC38;
  if (!qword_10039EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039EC38);
  }

  return result;
}

void sub_100028A38(uint64_t a1, void *a2, char a3, uint64_t a4, unint64_t a5)
{
  POSDailyEventField.rawValue.getter(a3);
  v10 = String._bridgeToObjectiveC()();

  v11 = [a2 stringArrayForKey:v10];

  if (v11)
  {
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v42[0] = a4;
  v42[1] = a5;
  __chkstk_darwin(v12);
  v40[2] = v42;
  v14 = sub_10011D960(sub_10002956C, v40, v13);

  if (v14)
  {

    if (qword_10039D330 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_10039EE18);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v18 = 136315650;
      v19 = _typeName(_:qualified:)();
      v41 = a4;
      v21 = sub_100008F6C(v19, v20, v42);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = POSDailyEventField.rawValue.getter(a3);
      v24 = sub_100008F6C(v22, v23, v42);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_100008F6C(v41, a5, v42);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s.cumulate - Field %s is already stored with value: %s", v18, 0x20u);
      swift_arrayDestroy();
    }
  }

  else
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[3] = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_10004D4B0(0, *(v13 + 2) + 1, 1, v13);
    }

    v27 = *(v13 + 2);
    v26 = *(v13 + 3);
    if (v27 >= v26 >> 1)
    {
      v13 = sub_10004D4B0((v26 > 1), v27 + 1, 1, v13);
    }

    *(v13 + 2) = v27 + 1;
    v28 = &v13[16 * v27];
    *(v28 + 4) = a4;
    *(v28 + 5) = a5;
    isa = Array._bridgeToObjectiveC()().super.isa;

    POSDailyEventField.rawValue.getter(a3);
    v30 = String._bridgeToObjectiveC()();

    [a2 setObject:isa forKey:v30];

    if (qword_10039D330 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000403C(v31, qword_10039EE18);

    v16 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v32))
    {
      v33 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v33 = 136315650;
      v34 = _typeName(_:qualified:)();
      v36 = sub_100008F6C(v34, v35, v42);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_100008F6C(a4, a5, v42);
      *(v33 + 22) = 2080;
      v37 = POSDailyEventField.rawValue.getter(a3);
      v39 = sub_100008F6C(v37, v38, v42);

      *(v33 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v16, v32, "%s.cumulate - Appended value %s for field %s", v33, 0x20u);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_100028F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[3] = type metadata accessor for DefaultSecureTimeKeeper();
  v24[4] = &off_100384E70;
  v24[0] = a1;
  v6 = type metadata accessor for CALogger();
  v23[3] = v6;
  v23[4] = &off_10037FF08;
  v23[0] = a2;
  *(a3 + 104) = 3;
  *(a3 + 112) = _swiftEmptyArrayStorage;
  *(a3 + 120) = 4;
  *(a3 + 121) = 0x202020202020202;
  *(a3 + 129) = 0x202020202020202;
  *(a3 + 184) = 0;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 174) = 0;
  sub_10000CCE4(v24, a3 + 64);
  sub_10000CCE4(v23, v21);
  v7 = v22;
  v8 = sub_100022438(v21, v22);
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v19 = v6;
  v20 = &off_10037FF08;
  *&v18 = v13;
  v14 = sub_100182F40(_swiftEmptyArrayStorage);
  v15 = sub_10018369C(_swiftEmptyArrayStorage);
  sub_100004074(&qword_10039EC70, &qword_1002C1F88);
  v16 = swift_allocObject();
  *(v16 + 32) = 0;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  *(a3 + 56) = v16;
  sub_100029790(&v18, a3 + 16);
  sub_10000959C(v23);
  sub_10000959C(v24);
  sub_10000959C(v21);
  return a3;
}

uint64_t sub_100029110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultSecureTimeKeeper();
  v22[3] = v4;
  v22[4] = &off_100384E70;
  v22[0] = a1;
  v20 = type metadata accessor for CALogger();
  v21 = &off_10037FF08;
  v19[0] = a2;
  type metadata accessor for ReaderAnalytics();
  v5 = swift_allocObject();
  v6 = sub_100022438(v22, v4);
  v7 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = v20;
  v12 = sub_100022438(v19, v20);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_100028F40(*v9, *v15, v5);
  sub_10000959C(v19);
  sub_10000959C(v22);
  return v17;
}

uint64_t sub_1000292E4()
{
  sub_1000E4518(v17);
  if (v0)
  {
  }

  else
  {
    sub_1000E3EB4(v15);
    v3 = v18;
    v4 = sub_100022438(v17, v18);
    v5 = *(*(v3 - 8) + 64);
    __chkstk_darwin(v4);
    v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = v16;
    v10 = sub_100022438(v15, v16);
    v11 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = (v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v1 = sub_100029110(*v7, *v13);

    sub_10000959C(v15);
    sub_10000959C(v17);
  }

  return v1;
}

uint64_t sub_1000294CC()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100029520(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037D608, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000295E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DispatchTime() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = DispatchTime.uptimeNanoseconds.getter();
  v7 = *(v4 + 72);

  v8 = 0;
  v9 = 0;
  v10 = v1 - 1;
  v11 = a1 + v7 + v5;
  do
  {
    result = DispatchTime.uptimeNanoseconds.getter();
    v12 = result - v6;
    if (result >= v6)
    {
      v13 = __CFADD__(v9, v12);
      v9 += v12;
      if (v13)
      {
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      if (__OFADD__(v8++, 1))
      {
        goto LABEL_12;
      }

      v6 = result;
    }

    v11 += v7;
    --v10;
  }

  while (v10);

  if (v8)
  {
    return (v9 / 0xF4240) / v8;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_10002973C()
{
  result = qword_10039EC68;
  if (!qword_10039EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039EC68);
  }

  return result;
}

uint64_t sub_100029790(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1000297A8()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D330 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_10039EE18);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, aBlock);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000011, 0x80000001003475B0, &_swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, aBlock);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  if (*(static Terminator.shared + 16) == 1)
  {
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Daily events post cancelled: shutdown in progress", v14, 2u);
    }

LABEL_18:

    return;
  }

  v15 = swift_allocObject();
  v16 = sub_10002BBEC(&off_10037B8A0);
  *(v15 + 16) = v16;
  if (!*(v16 + 16))
  {
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v19 = 136315394;
      v20 = _typeName(_:qualified:)();
      v22 = sub_100008F6C(v20, v21, aBlock);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = showFunction(signature:_:)(0xD000000000000011, 0x80000001003475B0, &_swiftEmptyArrayStorage);
      v25 = sub_100008F6C(v23, v24, aBlock);

      *(v19 + 14) = v25;
      _os_log_impl(&_mh_execute_header, oslog, v18, "%s.%s - eventPayload isEmpty (not sending)", v19, 0x16u);
      swift_arrayDestroy();

      return;
    }

    goto LABEL_18;
  }

  if (*(v1 + 33) == 2)
  {
    isa = 0;
  }

  else
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  sub_10002D180(isa, 0x6375646F72507349, 0xEC0000006E6F6974);
  sub_1000226A4(*(v1 + 32));
  v26 = String._bridgeToObjectiveC()();

  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  *(v27 + 24) = v15;
  aBlock[4] = sub_10002C994;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D80C;
  aBlock[3] = &unk_100380500;
  v28 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v28);
}

void sub_100029CF4()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D330 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_10039EE18);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, aBlock);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000011, 0x80000001003475B0, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, aBlock);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  if (*(static Terminator.shared + 16) == 1)
  {
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Daily events post cancelled: shutdown in progress", v14, 2u);
    }

LABEL_18:

    return;
  }

  v15 = swift_allocObject();
  v16 = sub_10002B6DC(&off_10037B8F0);
  *(v15 + 16) = v16;
  if (!*(v16 + 16))
  {
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v19 = 136315394;
      v20 = _typeName(_:qualified:)();
      v22 = sub_100008F6C(v20, v21, aBlock);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = showFunction(signature:_:)(0xD000000000000011, 0x80000001003475B0, _swiftEmptyArrayStorage);
      v25 = sub_100008F6C(v23, v24, aBlock);

      *(v19 + 14) = v25;
      _os_log_impl(&_mh_execute_header, oslog, v18, "%s.%s - eventPayload isEmpty (not sending)", v19, 0x16u);
      swift_arrayDestroy();

      return;
    }

    goto LABEL_18;
  }

  if (*(v1 + 33) == 2)
  {
    isa = 0;
  }

  else
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  sub_10002D180(isa, 0x6375646F72507349, 0xEC0000006E6F6974);
  sub_1000226A4(*(v1 + 32));
  v26 = String._bridgeToObjectiveC()();

  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  *(v27 + 24) = v15;
  aBlock[4] = sub_10002C958;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D80C;
  aBlock[3] = &unk_100380550;
  v28 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v28);
}

void sub_10002A240(char *a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v3[3];
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  v79 = [v9 initWithSuiteName:v10];

  if (v79)
  {
    v11 = *(v3 + 33);
    if (v11 != 2 && ((v11 ^ a2) & 1) != 0)
    {
      if (qword_10039D330 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000403C(v12, qword_10039EE18);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "production flag changed, sending the daily events.", v15, 2u);
      }

      sub_100029CF4();
    }

    *(v3 + 33) = a2 & 1;
    if (qword_10039D330 != -1)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v16 = type metadata accessor for Logger();
      sub_10000403C(v16, qword_10039EE18);
      swift_bridgeObjectRetain_n();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v80[0] = swift_slowAlloc();
        *v19 = 136315394;
        v20 = _typeName(_:qualified:)();
        v22 = sub_100008F6C(v20, v21, v80);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v23 = *(a1 + 2);
        if (v23)
        {
          v76 = v18;
          v77 = v19;
          v78 = v17;
          sub_10004E2DC(0, v23, 0);
          v24 = 0x8000000100345930;
          v25 = 0x8000000100345910;
          v26 = 0x80000001003458F0;
          v27 = 0x80000001003458D0;
          v28 = 0x80000001003458A0;
          v29 = 0x8000000100345870;
          v30 = 0x8000000100345850;
          v31 = 0x8000000100345830;
          v32 = 0x8000000100345810;
          v33 = 0x80000001003457F0;
          v34 = 0x80000001003457D0;
          v35 = 0x80000001003457B0;
          v36 = 32;
          do
          {
            v37 = 0xEE00746C75736552;
            v38 = 0x64656375646F7270;
            switch(a1[v36])
            {
              case 1:
                v38 = 0x64656375646F7270;
                v37 = 0xED0000726F727245;
                break;
              case 2:
                v38 = 0x636E614372657375;
                v37 = 0xED000064656C6C65;
                break;
              case 3:
                v38 = 0xD000000000000012;
                v37 = v35;
                break;
              case 4:
                v38 = 0xD000000000000015;
                v37 = v34;
                break;
              case 5:
                v38 = 0xD000000000000015;
                v37 = v33;
                break;
              case 6:
                v38 = 0xD00000000000001ALL;
                v37 = v32;
                break;
              case 7:
                v38 = 0xD00000000000001BLL;
                v37 = v31;
                break;
              case 8:
                v38 = 0xD000000000000017;
                v37 = v30;
                break;
              case 9:
                v38 = 0xD000000000000020;
                v37 = v29;
                break;
              case 10:
                v38 = 0xD000000000000015;
                v37 = v28;
                break;
              case 11:
                v38 = 0x53656D6F6374756FLL;
                v37 = 0xEF414E7375746174;
                break;
              case 12:
                v38 = 0xD000000000000011;
                v37 = v27;
                break;
              case 13:
                v38 = 0xD000000000000019;
                v37 = v26;
                break;
              case 14:
                v38 = 0xD000000000000015;
                v37 = v25;
                break;
              case 15:
                v38 = 0xD000000000000016;
                v37 = v24;
                break;
              default:
                break;
            }

            v40 = _swiftEmptyArrayStorage[2];
            v39 = _swiftEmptyArrayStorage[3];
            if (v40 >= v39 >> 1)
            {
              v69 = v30;
              v70 = v29;
              v67 = v32;
              v68 = v31;
              v74 = v25;
              v75 = v24;
              v72 = v27;
              v73 = v26;
              v71 = v28;
              v65 = v34;
              v66 = v33;
              v64 = v35;
              sub_10004E2DC((v39 > 1), v40 + 1, 1);
              v35 = v64;
              v34 = v65;
              v33 = v66;
              v32 = v67;
              v31 = v68;
              v30 = v69;
              v29 = v70;
              v28 = v71;
              v27 = v72;
              v26 = v73;
              v25 = v74;
              v24 = v75;
            }

            _swiftEmptyArrayStorage[2] = v40 + 1;
            v41 = &_swiftEmptyArrayStorage[2 * v40];
            v41[4] = v38;
            v41[5] = v37;
            ++v36;
            --v23;
          }

          while (v23);

          v19 = v77;
          v17 = v78;
          v18 = v76;
        }

        else
        {
        }

        v52 = Array.description.getter();
        v54 = v53;

        v55 = sub_100008F6C(v52, v54, v80);

        *(v19 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v17, v18, "%s.increment fields: %s", v19, 0x16u);
        swift_arrayDestroy();

        v51 = *(a1 + 2);
        if (!v51)
        {
          goto LABEL_44;
        }
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v51 = *(a1 + 2);
        if (!v51)
        {
          goto LABEL_44;
        }
      }

      v56 = a1 + 32;
      while (1)
      {
        v58 = *v56++;
        v57 = v58;
        v59 = v3[5];
        os_unfair_lock_lock(v59 + 4);
        ProvisionDailyEventField.rawValue.getter(v58);
        v60 = String._bridgeToObjectiveC()();

        v61 = [v79 integerForKey:v60];

        v62 = __OFADD__(v61, 1);
        a1 = v61 + 1;
        if (v62)
        {
          break;
        }

        ProvisionDailyEventField.rawValue.getter(v57);
        v63 = String._bridgeToObjectiveC()();

        [v79 setInteger:a1 forKey:v63];

        os_unfair_lock_unlock(v59 + 4);
        if (!--v51)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_48:
      swift_once();
    }
  }

  if (qword_10039D330 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000403C(v42, qword_10039EE18);
  v79 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v79, v43))
  {
    v44 = swift_slowAlloc();
    v80[0] = swift_slowAlloc();
    *v44 = 136315394;
    v45 = _typeName(_:qualified:)();
    v47 = sub_100008F6C(v45, v46, v80);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    v48 = showFunction(signature:_:)(0xD000000000000017, 0x8000000100347590, _swiftEmptyArrayStorage);
    v50 = sub_100008F6C(v48, v49, v80);

    *(v44 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v79, v43, "%s.%s - User Defaults is nil", v44, 0x16u);
    swift_arrayDestroy();
  }

LABEL_44:
}

void sub_10002AB10(char *a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v3[3];
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  oslog = [v9 initWithSuiteName:v10];

  if (oslog)
  {
    v11 = *(v3 + 33);
    if (v11 != 2 && ((v11 ^ a2) & 1) != 0)
    {
      if (qword_10039D330 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000403C(v12, qword_10039EE18);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "production flag changed, sending the daily events.", v15, 2u);
      }

      sub_1000297A8();
    }

    *(v3 + 33) = a2 & 1;
    if (qword_10039D330 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v16 = type metadata accessor for Logger();
      sub_10000403C(v16, qword_10039EE18);
      swift_bridgeObjectRetain_n();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v19 = 136315394;
        v20 = _typeName(_:qualified:)();
        v22 = sub_100008F6C(v20, v21, &v55);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v23 = *(a1 + 2);
        if (v23)
        {
          sub_10004E2DC(0, v23, 0);
          v24 = 32;
          do
          {
            v25 = POSDailyEventField.rawValue.getter(a1[v24]);
            v28 = *(&_swiftEmptyArrayStorage + 2);
            v27 = *(&_swiftEmptyArrayStorage + 3);
            if (v28 >= v27 >> 1)
            {
              v52 = v26;
              v53 = v25;
              sub_10004E2DC((v27 > 1), v28 + 1, 1);
              v26 = v52;
              v25 = v53;
            }

            *(&_swiftEmptyArrayStorage + 2) = v28 + 1;
            v29 = &_swiftEmptyArrayStorage + 16 * v28;
            *(v29 + 4) = v25;
            *(v29 + 5) = v26;
            ++v24;
            --v23;
          }

          while (v23);
        }

        v40 = Array.description.getter();
        v42 = v41;

        v43 = sub_100008F6C(v40, v42, &v55);

        *(v19 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v17, v18, "%s.increment fields: %s", v19, 0x16u);
        swift_arrayDestroy();

        v39 = *(a1 + 2);
        if (!v39)
        {
          goto LABEL_27;
        }
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v39 = *(a1 + 2);
        if (!v39)
        {
          goto LABEL_27;
        }
      }

      v44 = a1 + 32;
      while (1)
      {
        v46 = *v44++;
        v45 = v46;
        v47 = v3[5];
        os_unfair_lock_lock(v47 + 4);
        POSDailyEventField.rawValue.getter(v46);
        v48 = String._bridgeToObjectiveC()();

        v49 = [oslog integerForKey:v48];

        v50 = __OFADD__(v49, 1);
        a1 = v49 + 1;
        if (v50)
        {
          break;
        }

        POSDailyEventField.rawValue.getter(v45);
        v51 = String._bridgeToObjectiveC()();

        [oslog setInteger:a1 forKey:v51];

        os_unfair_lock_unlock(v47 + 4);
        if (!--v39)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_31:
      swift_once();
    }
  }

  if (qword_10039D330 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000403C(v30, qword_10039EE18);
  oslog = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v31))
  {
    v32 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = _typeName(_:qualified:)();
    v35 = sub_100008F6C(v33, v34, &v55);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v36 = showFunction(signature:_:)(0xD000000000000017, 0x8000000100347590, &_swiftEmptyArrayStorage);
    v38 = sub_100008F6C(v36, v37, &v55);

    *(v32 + 14) = v38;
    _os_log_impl(&_mh_execute_header, oslog, v31, "%s.%s - User Defaults is nil", v32, 0x16u);
    swift_arrayDestroy();
  }

LABEL_27:
}

uint64_t sub_10002B11C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039EC78);
  sub_10000403C(v0, qword_10039EC78);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.coreAnalytics.getter();
}

Swift::Int sub_10002B1F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10002B260()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002B2B4@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

void sub_10002B31C(char *a1)
{
  v3 = *v1;
  if (*(*sub_10000BE18(v1 + 2, v1[5]) + 17) == 1)
  {
    if (qword_10039D300 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = *(*sub_10000BE18(v1 + 2, v1[5]) + 16);

    sub_10002AB10(a1, v4);
  }

  else
  {
    if (qword_10039D328 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000403C(v5, qword_10039EC78);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v15[0] = swift_slowAlloc();
      *v7 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = sub_100008F6C(v8, v9, v15);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = showFunction(signature:_:)(0xD000000000000017, 0x8000000100347400, _swiftEmptyArrayStorage);
      v13 = sub_100008F6C(v11, v12, v15);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v6, "%s.%s - isDailyCollectionEnabled: false", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for SecurityAnalytics()
{
  result = qword_10039ECB8;
  if (!qword_10039ECB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10002B630()
{
  result = qword_10039EDE0;
  if (!qword_10039EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039EDE0);
  }

  return result;
}

unint64_t sub_10002B688()
{
  result = qword_10039EDE8;
  if (!qword_10039EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039EDE8);
  }

  return result;
}

unint64_t sub_10002B6DC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[2];
  v48 = v2;
  v6 = v2[3];
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  v49 = v9;
  if (v9)
  {
    v10 = sub_100182F40(_swiftEmptyArrayStorage);
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (a1 + 32);
      do
      {
        v17 = *v12++;
        v16 = v17;
        v18 = v48[5];
        os_unfair_lock_lock(v18 + 4);
        if (ProvisionDailyEventField.rawValue.getter(v17) == 0xD000000000000011 && 0x8000000100345720 == v19)
        {
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v21 & 1) == 0)
          {
            v22 = ProvisionDailyEventField.rawValue.getter(v16);
            v24 = v23;
            ProvisionDailyEventField.rawValue.getter(v16);
            v25 = String._bridgeToObjectiveC()();

            [v49 integerForKey:v25];

            isa = Int._bridgeToObjectiveC()().super.super.isa;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v50 = v10;
            sub_10017FC24(isa, v22, v24, isUniquelyReferenced_nonNull_native);
            goto LABEL_5;
          }
        }

        v28 = ProvisionDailyEventField.rawValue.getter(v16);
        v30 = v29;
        ProvisionDailyEventField.rawValue.getter(v16);
        v31 = String._bridgeToObjectiveC()();

        v32 = [v49 stringArrayForKey:v31];

        if (!v32)
        {
          v33 = sub_1000F5A28(v28, v30);
          v35 = v34;

          if (v35)
          {
            v50 = v10;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_100181554();
              v10 = v50;
            }

            v36 = *(*(v10 + 48) + 16 * v33 + 8);

            sub_10017C5C4(v33, v10);
          }

          goto LABEL_6;
        }

        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        Array.description.getter();

        v13 = String._bridgeToObjectiveC()();

        v14 = swift_isUniquelyReferenced_nonNull_native();
        v50 = v10;
        sub_10017FC24(v13, v28, v30, v14);
LABEL_5:

        v10 = v50;
LABEL_6:
        ProvisionDailyEventField.rawValue.getter(v16);
        v15 = String._bridgeToObjectiveC()();

        [v49 removeObjectForKey:v15];

        os_unfair_lock_unlock(v18 + 4);
        --v11;
      }

      while (v11);
    }

    return v10;
  }

  else
  {
    if (qword_10039D330 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000403C(v38, qword_10039EE18);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v41 = 136315394;
      v42 = _typeName(_:qualified:)();
      v44 = sub_100008F6C(v42, v43, &v50);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v45 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003475D0, _swiftEmptyArrayStorage);
      v47 = sub_100008F6C(v45, v46, &v50);

      *(v41 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s.%s - User Defaults is nil", v41, 0x16u);
      swift_arrayDestroy();
    }

    return sub_100182F40(_swiftEmptyArrayStorage);
  }
}

unint64_t sub_10002BBEC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[2];
  v6 = v2[3];
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  v86 = v9;
  if (!v9)
  {
    if (qword_10039D330 != -1)
    {
LABEL_55:
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_10000403C(v69, qword_10039EE18);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v72 = 136315394;
      v73 = _typeName(_:qualified:)();
      v75 = sub_100008F6C(v73, v74, &v87);

      *(v72 + 4) = v75;
      *(v72 + 12) = 2080;
      v76 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003475D0, &_swiftEmptyArrayStorage);
      v78 = sub_100008F6C(v76, v77, &v87);

      *(v72 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v70, v71, "%s.%s - User Defaults is nil", v72, 0x16u);
      swift_arrayDestroy();
    }

    return sub_100182F40(&_swiftEmptyArrayStorage);
  }

  v10 = sub_100182F40(&_swiftEmptyArrayStorage);
  v11 = v10;
  v85 = *(a1 + 16);
  if (!v85)
  {
LABEL_46:

    return v11;
  }

  v12 = 0;
  v13 = v10;
  v84 = a1 + 32;
  v82 = v2;
  while (1)
  {
    v18 = *(v84 + v12);
    v19 = v2[5];
    os_unfair_lock_lock(v19 + 4);
    if (POSDailyEventField.rawValue.getter(v18) == 0xD000000000000011 && 0x8000000100345720 == v20)
    {

LABEL_17:
      v36 = POSDailyEventField.rawValue.getter(v18);
      v38 = v37;
      POSDailyEventField.rawValue.getter(v18);
      v39 = String._bridgeToObjectiveC()();

      v40 = [v86 stringArrayForKey:v39];

      if (v40)
      {
        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        Array.description.getter();

        v14 = String._bridgeToObjectiveC()();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v13;
        sub_10017FC24(v14, v36, v38, isUniquelyReferenced_nonNull_native);

        v16 = v13;
        v11 = v13;
      }

      else
      {
        v41 = sub_1000F5A28(v36, v38);
        v43 = v42;

        if (v43)
        {
          v87 = v13;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_100181554();
            v13 = v87;
          }

          v44 = *(*(v13 + 48) + 16 * v41 + 8);

          sub_10017C5C4(v41, v13);
          v16 = v13;
          v11 = v13;
        }

        else
        {
          v16 = v13;
        }
      }

      goto LABEL_5;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_17;
    }

    v23 = POSDailyEventField.rawValue.getter(v18);
    v25 = v24;
    POSDailyEventField.rawValue.getter(v18);
    v26 = String._bridgeToObjectiveC()();

    [v86 integerForKey:v26];

    v83.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v87 = v13;
    v29 = sub_1000F5A28(v23, v25);
    v30 = *(v13 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v33 = v28;
    if (*(v13 + 24) >= v32)
    {
      break;
    }

    sub_10017CFE4(v32, v27);
    v16 = v87;
    v34 = sub_1000F5A28(v23, v25);
    if ((v33 & 1) != (v35 & 1))
    {
      goto LABEL_57;
    }

    v29 = v34;
    if ((v33 & 1) == 0)
    {
LABEL_43:
      *(v16 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v64 = (*(v16 + 48) + 16 * v29);
      *v64 = v23;
      v64[1] = v25;
      *(*(v16 + 56) + 8 * v29) = v83;
      v65 = *(v16 + 16);
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_54;
      }

      *(v16 + 16) = v67;
      goto LABEL_45;
    }

LABEL_25:
    v45 = *(v16 + 56);
    v46 = *(v45 + 8 * v29);
    *(v45 + 8 * v29) = v83;

LABEL_45:
    v11 = v16;
    v2 = v82;
LABEL_5:
    ++v12;
    POSDailyEventField.rawValue.getter(v18);
    v17 = String._bridgeToObjectiveC()();

    [v86 removeObjectForKey:v17];

    os_unfair_lock_unlock(v19 + 4);
    v13 = v16;
    if (v12 == v85)
    {
      goto LABEL_46;
    }
  }

  if (v27)
  {
    v16 = v13;
    if ((v28 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_25;
  }

  sub_100004074(&qword_10039EE08, &qword_1002C2130);
  v47 = static _DictionaryStorage.copy(original:)();
  v16 = v47;
  if (!*(v13 + 16))
  {
LABEL_42:

    if ((v33 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_25;
  }

  v48 = (v47 + 64);
  v49 = (v13 + 64);
  v50 = ((1 << *(v16 + 32)) + 63) >> 6;
  if (v16 != v13 || v48 >= &v49[8 * v50])
  {
    memmove(v48, v49, 8 * v50);
  }

  v51 = 0;
  *(v16 + 16) = *(v13 + 16);
  v52 = 1 << *(v13 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & *(v13 + 64);
  v55 = (v52 + 63) >> 6;
  v79 = v55;
  if (v54)
  {
    do
    {
      v56 = __clz(__rbit64(v54));
      v81 = (v54 - 1) & v54;
LABEL_40:
      v59 = v56 | (v51 << 6);
      v60 = (*(v13 + 48) + 16 * v59);
      v61 = v60[1];
      v80 = *(*(v13 + 56) + 8 * v59);
      v62 = (*(v16 + 48) + 16 * v59);
      *v62 = *v60;
      v62[1] = v61;
      *(*(v16 + 56) + 8 * v59) = v80;

      v63 = v80;
      v55 = v79;
      v54 = v81;
    }

    while (v81);
  }

  v57 = v51;
  while (1)
  {
    v51 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v51 >= v55)
    {
      goto LABEL_42;
    }

    v58 = *(v13 + 64 + 8 * v51);
    ++v57;
    if (v58)
    {
      v56 = __clz(__rbit64(v58));
      v81 = (v58 - 1) & v58;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_57:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10002C364()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C3A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10002C3B8()
{
  sub_1000E3EB4(v21);
  if (!v1)
  {
    v2 = v22;
    v3 = sub_100022438(v21, v22);
    v4 = *(*(v2 - 8) + 64);
    __chkstk_darwin(v3);
    v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for CALogger();
    v20[3] = v9;
    v20[4] = &off_10037FF08;
    v20[0] = v8;
    type metadata accessor for SecurityAnalytics();
    v0 = swift_allocObject();
    v10 = sub_100022438(v20, v9);
    v11 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v0[5] = v9;
    v0[6] = &off_10037FF08;
    v0[2] = v15;
    v16 = sub_100182F40(_swiftEmptyArrayStorage);
    v17 = sub_10018369C(_swiftEmptyArrayStorage);
    sub_100004074(&qword_10039EE10, &qword_1002C2138);
    v18 = swift_allocObject();
    *(v18 + 32) = 0;
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v0[7] = v18;
    sub_10000959C(v20);
    sub_10000959C(v21);
  }

  return v0;
}

uint64_t sub_10002C5F0(uint64_t a1, uint64_t a2)
{
  if (qword_10039D330 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039EE18);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = *(a1 + 32);
    if (v8 > 4)
    {
      v17 = "sreader.provisionEvent";
      v18 = "sreader.monitoringAddedEvent";
      v19 = 0xD00000000000002BLL;
      if (v8 != 8)
      {
        v19 = 0xD000000000000022;
        v18 = "sreader.monitoringSentEvent";
      }

      if (v8 == 7)
      {
        v19 = 0xD00000000000002CLL;
      }

      else
      {
        v17 = v18;
      }

      v20 = "sreader.cardReadEvent";
      v21 = 0xD000000000000027;
      if (v8 != 5)
      {
        v21 = 0xD000000000000026;
        v20 = "sreader.daily.provision";
      }

      if (*(a1 + 32) <= 6u)
      {
        v15 = v21;
      }

      else
      {
        v15 = v19;
      }

      if (*(a1 + 32) <= 6u)
      {
        v16 = v20;
      }

      else
      {
        v16 = v17;
      }
    }

    else
    {
      v9 = 0xD000000000000024;
      v10 = "Challenge Certificate invalid";
      v11 = "sreader.configureReaderEvent";
      v12 = 0xD000000000000032;
      v13 = "eReaderStatusEvent";
      v14 = 0xD000000000000025;
      if (v8 == 3)
      {
        v14 = 0xD00000000000002DLL;
      }

      else
      {
        v13 = "sreader.payloadCertRenewEvent";
      }

      if (v8 != 2)
      {
        v12 = v14;
        v11 = v13;
      }

      if (*(a1 + 32))
      {
        v9 = 0xD00000000000002CLL;
        v10 = "sreader.generalDaily";
      }

      if (*(a1 + 32) <= 1u)
      {
        v15 = v9;
      }

      else
      {
        v15 = v12;
      }

      if (*(a1 + 32) <= 1u)
      {
        v16 = v10;
      }

      else
      {
        v16 = v11;
      }
    }

    v22 = sub_100008F6C(v15, v16 | 0x8000000000000000, v29);

    *(v7 + 4) = v22;
    *(v7 + 12) = 2080;
    swift_beginAccess();
    v23 = *(a2 + 16);
    sub_10000411C(0, &qword_10039E280, NSObject_ptr);

    v24 = Dictionary.description.getter();
    v26 = v25;

    v27 = sub_100008F6C(v24, v26, v29);

    *(v7 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsSendEventLazy - event name: %s, payload: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  return *(a2 + 16);
}

uint64_t sub_10002C918()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C95C()
{
  sub_10002C5F0(*(v0 + 16), *(v0 + 24));
}

Swift::Void __swiftcall CADailyLogger.postDailyEvents()()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  if (qword_10039D330 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_10039EE18);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, aBlock);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = showFunction(signature:_:)(0xD000000000000011, 0x80000001003475B0, _swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, aBlock);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  if (*(static Terminator.shared + 16))
  {
    v33 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v33, v16, "Daily events post cancelled: shutdown in progress", v17, 2u);
    }
  }

  else
  {
    v18 = swift_allocObject();
    dispatch thunk of static CaseIterable.allCases.getter();
    type metadata accessor for Array();
    swift_dynamicCast();
    v19 = sub_10002D914();

    *(v18 + 16) = v19;
    if (*(v19 + 16))
    {
      if (*(v1 + 33) == 2)
      {
        isa = 0;
      }

      else
      {
        isa = Bool._bridgeToObjectiveC()().super.super.isa;
      }

      sub_10002D180(isa, 0x6375646F72507349, 0xEC0000006E6F6974);
      sub_1000226A4(*(v1 + 32));
      v30 = String._bridgeToObjectiveC()();

      v31 = swift_allocObject();
      *(v31 + 16) = v1;
      *(v31 + 24) = v18;
      aBlock[4] = sub_10002EB10;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002D80C;
      aBlock[3] = &unk_1003805C8;
      v32 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v32);
    }

    else
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v23 = 136315394;
        v24 = _typeName(_:qualified:)();
        v26 = sub_100008F6C(v24, v25, aBlock);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2080;
        v27 = showFunction(signature:_:)(0xD000000000000011, 0x80000001003475B0, _swiftEmptyArrayStorage);
        v29 = sub_100008F6C(v27, v28, aBlock);

        *(v23 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v21, v22, "%s.%s - eventPayload isEmpty (not sending)", v23, 0x16u);
        swift_arrayDestroy();
      }
    }
  }
}

uint64_t sub_10002CFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100019D3C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10017F944(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_10000BD44(a1, &qword_10039E248, &qword_1002C23D0);
    sub_10017A9E0(a2, a3, v10);

    return sub_10000BD44(v10, &qword_10039E248, &qword_1002C23D0);
  }

  return result;
}

uint64_t sub_10002D0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 255)
  {
    sub_10000BD44(a1, qword_10039EEE0, &qword_1002C23D8);
    sub_10017AA84(a2, a3, v11);

    return sub_10000BD44(v11, qword_10039EEE0, &qword_1002C23D8);
  }

  else
  {
    v6 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v6;
    v12 = *(a1 + 32);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_10017FA94(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

uint64_t sub_10002D180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10017FC24(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1000F5A28(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_100181554();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_10017C5C4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10002D278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for StopWatch();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_10000BD44(a1, &qword_10039E288, &unk_1002C1700);
    sub_10017AB3C(a2, a3, v10);

    return sub_10000BD44(v10, &qword_10039E288, &unk_1002C1700);
  }

  else
  {
    sub_10002F15C(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10017FD9C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_10002D438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10018008C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1000F5A28(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_100181A74();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_10017C5C4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10002D5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (*(a1 + 24))
  {
    sub_100019D3C(a1, v25);
    v10 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v6;
    result = a3(v25, a2, isUniquelyReferenced_nonNull_native);
    *v6 = v23;
  }

  else
  {
    sub_10000BD44(a1, &qword_10039E248, &qword_1002C23D0);
    v16 = *v6;
    v17 = a4(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v24 = *v7;
      if (!v21)
      {
        a6();
        v22 = v24;
      }

      sub_100019D3C((*(v22 + 56) + 32 * v19), v25);
      a5(v19, v22);
      *v7 = v22;
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    return sub_10000BD44(v25, &qword_10039E248, &qword_1002C23D0);
  }

  return result;
}

uint64_t sub_10002D704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_100180D1C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1000F5A28(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_100181F14();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_10017C310(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

Class sub_10002D80C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10000411C(0, &qword_10039E280, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_10002D8A8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039EE18);
  sub_10000403C(v0, qword_10039EE18);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.coreAnalytics.getter();
}

unint64_t sub_10002D914()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *v0;
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v19 = sub_100182F40(_swiftEmptyArrayStorage);
    __chkstk_darwin(v19);
    v7 = *(v3 + 80);
    type metadata accessor for Array();
    sub_100004074(&qword_10039E5F0, &qword_1002C1880);
    swift_getWitnessTable();
    Sequence.reduce<A>(into:_:)();

    return v20;
  }

  else
  {
    if (qword_10039D330 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000403C(v9, qword_10039EE18);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = _typeName(_:qualified:)();
      v15 = sub_100008F6C(v13, v14, &v20);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003475D0, _swiftEmptyArrayStorage);
      v18 = sub_100008F6C(v16, v17, &v20);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s - User Defaults is nil", v12, 0x16u);
      swift_arrayDestroy();
    }

    return sub_100182F40(_swiftEmptyArrayStorage);
  }
}

void sub_10002DC14(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[5];
  os_unfair_lock_lock(v9 + 4);
  v10 = v8[10];
  v11 = v8[11];
  v12 = v8[12];
  sub_10002DCDC(v13, a2, a1, a4);
  os_unfair_lock_unlock(v9 + 4);
  if (v4)
  {
    __break(1u);
  }
}

void sub_10002DCDC(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v15 == 0xD000000000000011 && 0x8000000100345720 == v16)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v6 = String._bridgeToObjectiveC()();

      [a4 integerForKey:v6];

      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v8 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *a3;
      *a3 = 0x8000000000000000;
      sub_10017FC24(isa, v15, v16, isUniquelyReferenced_nonNull_native);

      *a3 = v14;
      goto LABEL_11;
    }
  }

  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [a4 stringArrayForKey:v10];

  if (v11)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    Array.description.getter();

    v11 = String._bridgeToObjectiveC()();
  }

  sub_10002D180(v11, v15, v16);
LABEL_11:
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = String._bridgeToObjectiveC()();

  [a4 removeObjectForKey:v12];
}

uint64_t POSDailyEventField.rawValue.getter(char a1)
{
  result = 0x65526C65636E6143;
  switch(a1)
  {
    case 1:
      return 0x54746E656D796150;
    case 2:
      return 0x706154736156;
    case 3:
      return 0x6156646E41796150;
    case 4:
      return 0x546E776F6E6B6E55;
    case 5:
      return 0x6573616863727550;
    case 6:
      return 0x7254646E75666552;
    case 7:
      return 0x546E776F6E6B6E55;
    case 8:
      v4 = 1383686480;
      return v4 | 0x64616500000000;
    case 9:
      v4 = 1383293270;
      return v4 | 0x64616500000000;
    case 10:
      v3 = 1181966678;
      goto LABEL_25;
    case 11:
      v3 = 1182359888;
LABEL_25:
      result = v3 | 0x526C696100000000;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
    case 24:
    case 25:
    case 31:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x5065727574706143;
      break;
    case 15:
    case 16:
      result = 0xD00000000000001ELL;
      break;
    case 17:
      result = 0xD00000000000001ALL;
      break;
    case 18:
      result = 0xD00000000000001BLL;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
    case 21:
    case 26:
    case 41:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0x6E4964656C696146;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 28:
      result = 0xD000000000000011;
      break;
    case 29:
      result = 0xD000000000000017;
      break;
    case 30:
    case 42:
      result = 0xD000000000000016;
      break;
    case 32:
      result = 0xD000000000000011;
      break;
    case 33:
      result = 0xD00000000000001CLL;
      break;
    case 34:
    case 35:
      result = 0x6C75736552796150;
      break;
    case 36:
      result = 0x7265746E45464153;
      break;
    case 37:
      result = 0x74697845464153;
      break;
    case 38:
      result = 0x706154464153;
      break;
    case 39:
      result = 0x6176616E55464153;
      break;
    case 40:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CADailyLogger.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t CADailyLogger.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_10002E554@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s14softposreaderd18POSDailyEventFieldO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_10002E584@<X0>(uint64_t *a1@<X8>)
{
  result = POSDailyEventField.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t ProvisionDailyEventField.rawValue.getter(char a1)
{
  result = 0x64656375646F7270;
  switch(a1)
  {
    case 2:
      result = 0x636E614372657375;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x53656D6F6374756FLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10002E824(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_10002E8D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002E954(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_10002E9C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002EA2C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14softposreaderd24ProvisionDailyEventFieldO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10002EA5C@<X0>(unint64_t *a1@<X8>)
{
  result = ProvisionDailyEventField.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002EA98()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002EAD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002EB10()
{
  sub_10002EB54(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_10002EB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EB54(uint64_t a1, uint64_t a2)
{
  if (qword_10039D330 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039EE18);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_1000226A4(*(a1 + 32));
    v10 = sub_100008F6C(v8, v9, v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    swift_beginAccess();
    v11 = *(a2 + 16);
    sub_10000411C(0, &qword_10039E280, NSObject_ptr);

    v12 = Dictionary.description.getter();
    v14 = v13;

    v15 = sub_100008F6C(v12, v14, v17);

    *(v7 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "AnalyticsSendEventLazy - event name: %s, payload: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  return *(a2 + 16);
}

uint64_t _s14softposreaderd18POSDailyEventFieldO8rawValueACSgSS_tcfC_0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x2B)
  {
    return 43;
  }

  else
  {
    return v0;
  }
}

unint64_t _s14softposreaderd24ProvisionDailyEventFieldO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037DC40, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10002EE1C()
{
  result = qword_10039EE30;
  if (!qword_10039EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039EE30);
  }

  return result;
}

unint64_t sub_10002EEA4()
{
  result = qword_10039EE48;
  if (!qword_10039EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039EE48);
  }

  return result;
}

uint64_t sub_10002EF28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for POSDailyEventField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for POSDailyEventField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002F15C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StopWatch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002F25C()
{
  v1 = v0;
  v2 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for StopWatch();
  sub_10002F674(v1 + *(v9 + 20), v8);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) == 1)
  {
    v13 = v8;
LABEL_5:
    sub_10002F6E4(v13);
    return 0;
  }

  v14 = DispatchTime.uptimeNanoseconds.getter();
  v15 = *(v11 + 8);
  v15(v8, v10);
  sub_10002F674(v1, v6);
  if (v12(v6, 1, v10) == 1)
  {
    v13 = v6;
    goto LABEL_5;
  }

  v17 = DispatchTime.uptimeNanoseconds.getter();
  v15(v6, v10);
  if (v14 >= v17)
  {
    return (v14 - v17) / 0xF4240;
  }

  return 0;
}

uint64_t sub_10002F45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002F4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for StopWatch()
{
  result = qword_10039EFC0;
  if (!qword_10039EFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002F5B0()
{
  sub_10002F61C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10002F61C()
{
  if (!qword_10039EFD0)
  {
    type metadata accessor for DispatchTime();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10039EFD0);
    }
  }
}

uint64_t sub_10002F674(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F6E4(uint64_t a1)
{
  v2 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F74C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v53 = a3;
  v49 = a2;
  v50 = a1;
  v56 = type metadata accessor for URLRequest();
  v52 = *(v56 - 8);
  v4 = *(v52 + 64);
  __chkstk_darwin(v56);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v18 = type metadata accessor for StopWatch();
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v7[7];
  v23(v17, 1, 1, v6);
  v23(v15, 1, 1, v6);
  v23(v22, 1, 1, v6);
  v24 = *(v19 + 28);
  v23(&v22[v24], 1, 1, v6);
  sub_10001A178(v17, v22);
  v46 = v24;
  sub_10001A178(v15, &v22[v24]);
  static DispatchTime.now()();
  sub_10002F6E4(v22);
  v25 = v7[4];
  v47 = v10;
  v48 = v7 + 4;
  v45 = v25;
  v25(v22, v10, v6);
  v23(v22, 0, 1, v6);
  v26 = *(v53 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_secureChannel + 24);
  v27 = *(v53 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_secureChannel + 32);
  sub_10000BE18((v53 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_secureChannel), v26);
  v28 = v51;
  v29 = v52;
  (*(v52 + 16))(v51, v54, v56);
  v30 = v55;
  v31 = sub_10013C2A4(v28, 1, v26, v27);
  if (v30)
  {
    (*(v29 + 8))(v28, v56);
  }

  else
  {
    v33 = v31;
    v34 = v32;
    (*(v29 + 8))(v28, v56);
    v35 = v49;
    v36 = *v49;
    v37 = v49[1];
    *v49 = v33;
    v35[1] = v34;
    sub_10001A074(v36, v37);
    v38 = v47;
    static DispatchTime.now()();
    v39 = v46;
    sub_10002F6E4(&v22[v46]);
    v45(&v22[v39], v38, v6);
    v23(&v22[v39], 0, 1, v6);
    sub_10002F25C();
    LOBYTE(v39) = v40;
    v41 = *(v50 + 56);
    os_unfair_lock_lock(v41 + 8);
    if (v39)
    {
      isa = 0;
    }

    else
    {
      isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    }

    sub_10002D180(isa, 0xD000000000000015, 0x8000000100344F50);
    os_unfair_lock_unlock(v41 + 8);
  }

  return sub_10001A24C(v22);
}

uint64_t sub_10002FBA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 initializeBufferWithCopyOfBuffer for SPRTimestamp(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10002FBEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002FC34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10002FC88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x637465464D414C53;
    }

    if (v2)
    {
      v4 = 0x8000000100344E50;
    }

    else
    {
      v4 = 0xED0000656D695468;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x5474736575716552;
    v4 = 0xEB00000000656D69;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7265746E45464153;
    }

    else
    {
      v3 = 0x5474697845464153;
    }

    if (v2 == 3)
    {
      v4 = 0xEC000000656D6954;
    }

    else
    {
      v4 = 0xEB00000000656D69;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0x637465464D414C53;
    }

    if (a2)
    {
      v5 = 0x8000000100344E50;
    }

    else
    {
      v5 = 0xED0000656D695468;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 2)
  {
    v7 = 0x736575716552;
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xEC000000656D6954;
      if (v3 != 0x7265746E45464153)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v7 = 0x697845464153;
  }

  v5 = 0xEB00000000656D69;
  if (v3 != (v7 & 0xFFFFFFFFFFFFLL | 0x5474000000000000))
  {
LABEL_34:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_35;
  }

LABEL_32:
  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_10002FE4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE900000000000065;
  v4 = 0x54676E696C6C6F70;
  if (a1 == 2)
  {
    v4 = 0x6D69546C61746F74;
  }

  else
  {
    v3 = 0xEE00534156656D69;
  }

  v5 = 0xD000000000000012;
  v6 = 0x8000000100345AF0;
  if (a1)
  {
    v5 = 0x656D695464616572;
    v6 = 0xEB00000000564D45;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6D69546C61746F74;
    }

    else
    {
      v11 = 0x54676E696C6C6F70;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000065;
    }

    else
    {
      v10 = 0xEE00534156656D69;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x656D695464616572;
    }

    else
    {
      v9 = 0xD000000000000012;
    }

    if (a2)
    {
      v10 = 0xEB00000000564D45;
    }

    else
    {
      v10 = 0x8000000100345AF0;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_10002FFB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701080909;
  v3 = a1;
  v4 = 0xE400000000000000;
  v5 = 0xD000000000000018;
  v6 = 0x7A69536863746142;
  if (a1 != 4)
  {
    v6 = 0x646F43726F727245;
  }

  if (a1 == 3)
  {
    v7 = 0x8000000100344F20;
  }

  else
  {
    v5 = v6;
    v7 = 0xE900000000000065;
  }

  v8 = 0x746942746E657645;
  v9 = 0xEB0000000070616DLL;
  if (a1 != 1)
  {
    v8 = 0xD000000000000011;
    v9 = 0x8000000100344F00;
  }

  if (a1)
  {
    v4 = v9;
  }

  else
  {
    v8 = 1701080909;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v3 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x8000000100344F20;
      v2 = 0xD000000000000018;
    }

    else
    {
      if (a2 == 4)
      {
        v2 = 0x7A69536863746142;
      }

      else
      {
        v2 = 0x646F43726F727245;
      }

      v12 = 0xE900000000000065;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x746942746E657645;
      v12 = 0xEB0000000070616DLL;
    }

    else
    {
      v2 = 0xD000000000000011;
      v12 = 0x8000000100344F00;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  if (v10 == v2 && v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100030188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x80000001003463F0;
    v13 = 0xD000000000000019;
    if (a1 != 2)
    {
      v13 = 0x74536D6574737973;
      v12 = 0xEC00000073757461;
    }

    v14 = 0x666E6F4365726F63;
    if (a1)
    {
      v11 = 0xEC00000064496769;
    }

    else
    {
      v14 = 0x736B706163;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x6572617764726168;
    v4 = 0xEC00000065707954;
    v5 = 0x4965746174536573;
    v6 = 0xEB000000006F666ELL;
    if (a1 != 7)
    {
      v5 = 0x6F436C61626F6C67;
      v6 = 0xEE0064496769666ELL;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xD000000000000013;
    v8 = 0x8000000100346420;
    if (a1 != 4)
    {
      v7 = 0xD000000000000018;
      v8 = 0x8000000100346440;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x80000001003463F0;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v16 = 0x74536D6574737973;
      v17 = 1937077345;
    }

    else
    {
      if (!a2)
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x736B706163)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v16 = 0x666E6F4365726F63;
      v17 = 1682532201;
    }

    goto LABEL_44;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xEB000000006F666ELL;
        if (v9 != 0x4965746174536573)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xEE0064496769666ELL;
        if (v9 != 0x6F436C61626F6C67)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    v16 = 0x6572617764726168;
    v17 = 1701869908;
LABEL_44:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v9 != v16)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 == 4)
  {
    v15 = 0x8000000100346420;
    if (v9 != 0xD000000000000013)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v15 = 0x8000000100346440;
    if (v9 != 0xD000000000000018)
    {
LABEL_51:
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_1000304A4()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039F080);
  sub_10000403C(v0, qword_10039F080);
  sub_100023B24();
  return static SPRLogger.coreAnalytics.getter();
}

unint64_t sub_100030500(char a1)
{
  result = 0x44496769666E6F63;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0x79636E6572727563;
      break;
    case 6:
      result = 0x696C6C6F50766D65;
      break;
    case 7:
      result = 0x646F43726F727265;
      break;
    case 8:
      result = 0x646E49726F727265;
      break;
    case 9:
      result = 0x746361466D726F66;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x44496C656E72656BLL;
      break;
    case 13:
      result = 0x664F7265626D756ELL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x5041527472617473;
      break;
    case 18:
      result = 0x6574726F70707573;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x7272456B63617274;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1000307D4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100030500(*a1);
  v5 = v4;
  if (v3 == sub_100030500(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10003085C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100030500(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000308C0()
{
  sub_100030500(*v0);
  String.hash(into:)();
}

Swift::Int sub_100030914()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100030500(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100030974@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100031738();
  *a2 = result;
  return result;
}

unint64_t sub_1000309A4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100030500(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1000309EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100030ACC()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100030B98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100030C74@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003178C(*a1);
  *a2 = result;
  return result;
}

void sub_100030CA4(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000564D45;
  v3 = 0x656D695464616572;
  v4 = 0xE900000000000065;
  v5 = 0x6D69546C61746F74;
  if (*v1 != 2)
  {
    v5 = 0x54676E696C6C6F70;
    v4 = 0xEE00534156656D69;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000100345AF0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100030D50(unsigned int a1)
{
  if (a1 != 2)
  {
    sub_100031840();
    if (a1)
    {
      UnsignedInteger.setBit(_:)(0);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(0);
    }
  }

  if ((a1 & 0xFF00) != 0x200)
  {
    sub_100031840();
    if ((a1 & 0x100) != 0)
    {
      UnsignedInteger.setBit(_:)(1);
    }

    else
    {
      UnsignedInteger.clearBit(_:)(1);
    }
  }

  v2 = HIBYTE(a1);
  if ((a1 & 0xFF0000) == 0x20000)
  {
LABEL_12:
    if (v2 == 2)
    {
      return 0;
    }

    goto LABEL_13;
  }

  sub_100031840();
  if ((a1 & 0x10000) == 0)
  {
    UnsignedInteger.clearBit(_:)(2);
    goto LABEL_12;
  }

  UnsignedInteger.setBit(_:)(2);
  if (v2 == 2)
  {
    return 0;
  }

LABEL_13:
  sub_100031840();
  if ((a1 & 0x1000000) != 0)
  {
    UnsignedInteger.setBit(_:)(3);
  }

  else
  {
    UnsignedInteger.clearBit(_:)(3);
  }

  return 0;
}

void sub_100030E60()
{
  v1 = v0;
  sub_100004074(&qword_10039E238, &qword_1002C16D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = 21;
  v3 = sub_100030D50(*(v1 + 64));
  *(inited + 64) = &type metadata for UInt8;
  *(inited + 40) = v3;
  sub_100183344(inited);
  swift_setDeallocating();
  sub_1000317D8(inited + 32);
  v4 = *(v1 + 56);
  os_unfair_lock_lock((v4 + 32));
  sub_100019D20((v4 + 16));
  os_unfair_lock_unlock((v4 + 32));

  os_unfair_lock_lock((v4 + 32));
  sub_100026328((v4 + 16));
  os_unfair_lock_unlock((v4 + 32));
  *(v1 + 64) = 33686018;
}

uint64_t sub_100030F64(char a1)
{
  if ((((a1 + 16) >> 4) | (16 * (a1 + 16))) >= 9u)
  {
    type metadata accessor for SPRTransactionOutcomeStatus(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v1 = byte_1002C26F8[(((a1 + 16) >> 4) | (16 * (a1 + 16)))];
    sub_100004074(&qword_10039F258, &qword_1002C26F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = v1;
    sub_10003101C(inited);
    return swift_setDeallocating();
  }

  return result;
}

void sub_10003101C(char *a1)
{
  v3 = *v1;
  if (*(*sub_10000BE18(v1 + 2, v1[5]) + 17) == 1)
  {
    if (qword_10039D308 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = *(*sub_10000BE18(v1 + 2, v1[5]) + 16);

    sub_10002A240(a1, v4);
  }

  else
  {
    if (qword_10039D338 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000403C(v5, qword_10039F080);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v15[0] = swift_slowAlloc();
      *v7 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = sub_100008F6C(v8, v9, v15);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = showFunction(signature:_:)(0xD000000000000017, 0x8000000100347400, _swiftEmptyArrayStorage);
      v13 = sub_100008F6C(v11, v12, v15);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v6, "%s.%s - isDailyCollectionEnabled: false", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1000312B8()
{
  sub_10000959C((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProvisionAnalytics()
{
  result = qword_10039F0C0;
  if (!qword_10039F0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProvisionAnalytics.PerformanceField(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProvisionAnalytics.PerformanceField(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ProvisionAnalytics.AnalyticsField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProvisionAnalytics.AnalyticsField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003165C()
{
  result = qword_10039F220;
  if (!qword_10039F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039F220);
  }

  return result;
}

unint64_t sub_1000316E4()
{
  result = qword_10039F238;
  if (!qword_10039F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039F238);
  }

  return result;
}

uint64_t sub_100031738()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_10003178C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037E010, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000317D8(uint64_t a1)
{
  v2 = sub_100004074(&qword_10039E240, &unk_1002C16E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100031840()
{
  result = qword_10039F260;
  if (!qword_10039F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039F260);
  }

  return result;
}

uint64_t sub_100031A30(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100031A48()
{
  sub_100031B14(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_10000BD44(__dst, &qword_10039F268, &qword_1002C2730);
  v1[295] = 1;
  memcpy(v4, __src, 0x110uLL);
  v4[35] = 0;
  v4[34] = 0;
  LOWORD(v4[36]) = 256;
  memcpy(v5, __src, sizeof(v5));
  v7 = 0;
  v6 = 0;
  v8 = 0;
  v9 = 1;
  sub_100031B40(v4, v1);
  sub_100031B78(v5);
  return memcpy(&unk_1003A6940, v4, 0x122uLL);
}

double sub_100031B14(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100031BA8(uint64_t a1)
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

uint64_t sub_100031BC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100031BE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 290))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100031C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 290) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 290) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

BOOL sub_100031CF4(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x122uLL);
  memcpy(__dst, a2, 0x122uLL);
  return sub_100031D4C(v4, __dst);
}

BOOL sub_100031D4C(uint64_t *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v104, a2, sizeof(v104));
  v4 = *(__src + 12);
  v5 = *(__src + 10);
  v100 = *(__src + 11);
  v101 = v4;
  v6 = *(__src + 12);
  v7 = *(__src + 14);
  v102 = *(__src + 13);
  v103 = v7;
  v8 = *(__src + 8);
  v9 = *(__src + 6);
  v96 = *(__src + 7);
  v97 = v8;
  v10 = *(__src + 8);
  v11 = *(__src + 10);
  v98 = *(__src + 9);
  v99 = v11;
  v12 = *(__src + 4);
  v92 = *(__src + 3);
  v93 = v12;
  v13 = *(__src + 6);
  v15 = *(__src + 3);
  v14 = *(__src + 4);
  v94 = *(__src + 5);
  v95 = v13;
  v91 = *(__src + 16);
  v117 = v100;
  v118 = v6;
  v16 = *(__src + 14);
  v119 = v102;
  v120 = v16;
  v113 = v96;
  v114 = v10;
  v115 = v98;
  v116 = v5;
  v109 = v15;
  v110 = v14;
  v17 = __dst[0];
  v18 = __dst[1];
  v19 = __dst[2];
  v20 = __dst[3];
  v21 = __dst[4];
  v22 = __dst[5];
  v23 = __dst[30];
  v24 = __dst[31];
  v111 = v94;
  v112 = v9;
  v123 = *(__src + 16);
  v108[0] = __dst[0];
  v108[1] = __dst[1];
  v108[2] = __dst[2];
  v108[3] = __dst[3];
  v108[4] = __dst[4];
  v108[5] = __dst[5];
  v121 = __dst[30];
  v122 = __dst[31];
  if (sub_100031A30(v108) == 1)
  {
    memcpy(v89, a2, sizeof(v89));
    if (sub_100031A30(v89) == 1)
    {
      *&v88[0] = v17;
      *(&v88[0] + 1) = v18;
      *&v88[1] = v19;
      *(&v88[1] + 1) = v20;
      *&v88[2] = v21;
      *(&v88[2] + 1) = v22;
      v25 = *(__src + 12);
      v88[11] = *(__src + 11);
      v88[12] = v25;
      v26 = *(__src + 14);
      v88[13] = *(__src + 13);
      v88[14] = v26;
      v27 = *(__src + 8);
      v88[7] = *(__src + 7);
      v88[8] = v27;
      v28 = *(__src + 10);
      v88[9] = *(__src + 9);
      v88[10] = v28;
      v29 = *(__src + 4);
      v88[3] = *(__src + 3);
      v88[4] = v29;
      v30 = *(__src + 6);
      v88[5] = *(__src + 5);
      v88[6] = v30;
      *&v88[15] = v23;
      *(&v88[15] + 1) = v24;
      v88[16] = *(__src + 16);
      sub_10003237C(__dst, &v67);
      sub_10003237C(v104, &v67);
      sub_10000BD44(v88, &qword_10039F268, &qword_1002C2730);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  memcpy(v89, a2, sizeof(v89));
  if (sub_100031A30(v89) == 1)
  {
LABEL_9:
    *&v89[0] = v17;
    *(&v89[0] + 1) = v18;
    *&v89[1] = v19;
    *(&v89[1] + 1) = v20;
    *&v89[2] = v21;
    *(&v89[2] + 1) = v22;
    v33 = *(__src + 12);
    v89[11] = *(__src + 11);
    v89[12] = v33;
    v34 = *(__src + 14);
    v89[13] = *(__src + 13);
    v89[14] = v34;
    v35 = *(__src + 8);
    v89[7] = *(__src + 7);
    v89[8] = v35;
    v36 = *(__src + 10);
    v89[9] = *(__src + 9);
    v89[10] = v36;
    v37 = *(__src + 4);
    v89[3] = *(__src + 3);
    v89[4] = v37;
    v38 = *(__src + 6);
    v89[5] = *(__src + 5);
    v89[6] = v38;
    *&v89[15] = v23;
    *(&v89[15] + 1) = v24;
    v89[16] = *(__src + 16);
    memcpy(v90, a2, sizeof(v90));
    sub_10003237C(__dst, v88);
    sub_10003237C(v104, v88);
    v39 = &unk_10039F270;
    v40 = &unk_1002C5FC0;
    v41 = v89;
LABEL_29:
    sub_10000BD44(v41, v39, v40);
    return 0;
  }

  memcpy(v88, a2, sizeof(v88));
  v42 = v88[1];
  v65 = v88[2];
  v63 = *(&v88[15] + 1);
  v64 = *&v88[15];
  if (__PAIR128__(v18, v17) != v88[0] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || __PAIR128__(v20, v19) != v42 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!v22)
  {
    if (!*(&v65 + 1))
    {
      goto LABEL_25;
    }

LABEL_28:
    sub_10003237C(__dst, &v67);
    sub_10003237C(v104, &v67);
    sub_10000BD44(v88, &qword_10039F268, &qword_1002C2730);
    v67 = v17;
    v68 = v18;
    v69 = v19;
    v70 = v20;
    v71 = v21;
    v72 = v22;
    v81 = v100;
    v82 = v101;
    v83 = v102;
    v84 = v103;
    v77 = v96;
    v78 = v97;
    v79 = v98;
    v80 = v99;
    v73 = v92;
    v74 = v93;
    v75 = v94;
    v76 = v95;
    v85 = v23;
    v86 = v24;
    v87 = v91;
    v41 = &v67;
    v39 = &qword_10039F268;
    v40 = &qword_1002C2730;
    goto LABEL_29;
  }

  if (!*(&v65 + 1) || __PAIR128__(v22, v21) != v65 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v44 = *(__src + 12);
  v106[8] = *(__src + 11);
  v106[9] = v44;
  v45 = *(__src + 14);
  v106[10] = *(__src + 13);
  v106[11] = v45;
  v46 = *(__src + 8);
  v106[4] = *(__src + 7);
  v106[5] = v46;
  v47 = *(__src + 10);
  v106[6] = *(__src + 9);
  v106[7] = v47;
  v48 = *(__src + 4);
  v106[0] = *(__src + 3);
  v106[1] = v48;
  v49 = *(__src + 6);
  v106[2] = *(__src + 5);
  v106[3] = v49;
  v50 = *(a2 + 192);
  v107[8] = *(a2 + 176);
  v107[9] = v50;
  v51 = *(a2 + 224);
  v107[10] = *(a2 + 208);
  v107[11] = v51;
  v52 = *(a2 + 128);
  v107[4] = *(a2 + 112);
  v107[5] = v52;
  v53 = *(a2 + 160);
  v107[6] = *(a2 + 144);
  v107[7] = v53;
  v54 = *(a2 + 64);
  v107[0] = *(a2 + 48);
  v107[1] = v54;
  v55 = *(a2 + 96);
  v107[2] = *(a2 + 80);
  v107[3] = v55;
  if (!sub_1001769F4(v106, v107))
  {
    goto LABEL_28;
  }

  sub_10003237C(__dst, &v67);
  sub_10003237C(v104, &v67);
  v66 = sub_10017688C(v23, v24, v64, v63);
  sub_10000BD44(v88, &qword_10039F268, &qword_1002C2730);
  v67 = v17;
  v68 = v18;
  v69 = v19;
  v70 = v20;
  v71 = v21;
  v72 = v22;
  v56 = *(__src + 12);
  v81 = *(__src + 11);
  v82 = v56;
  v57 = *(__src + 14);
  v83 = *(__src + 13);
  v84 = v57;
  v58 = *(__src + 8);
  v77 = *(__src + 7);
  v78 = v58;
  v59 = *(__src + 10);
  v79 = *(__src + 9);
  v80 = v59;
  v60 = *(__src + 4);
  v73 = *(__src + 3);
  v74 = v60;
  v61 = *(__src + 6);
  v75 = *(__src + 5);
  v76 = v61;
  v85 = v23;
  v86 = v24;
  v87 = *(__src + 16);
  sub_10000BD44(&v67, &qword_10039F268, &qword_1002C2730);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  v31 = __src[34];
  v32 = *(a2 + 272);
  if (v31)
  {
    if (!v32 || (sub_10015149C(v31, v32) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v43 = *(a2 + 289);
  if ((*(__src + 289) & 1) == 0)
  {
    return (*(a2 + 289) & 1) == 0 && sub_1000A7848(__src[35], __src[36] & 1, *(a2 + 280), *(a2 + 288) & 1);
  }

  return (*(a2 + 289) & 1) != 0;
}

uint64_t sub_10003237C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_10039F268, &qword_1002C2730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000323EC()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039F278);
  sub_10000403C(v0, qword_10039F278);
  sub_100023B24();
  return static SPRLogger.attestation.getter();
}

uint64_t sub_100032448()
{
  v1 = type metadata accessor for DateInterval();
  v70 = *(v1 - 8);
  v2 = *(v70 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v58 - v6;
  v8 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v58 - v19;
  v21 = __chkstk_darwin(v18);
  v68 = &v58 - v22;
  __chkstk_darwin(v21);
  v69 = &v58 - v23;
  memcpy(v74, v0 + 2, sizeof(v74));
  memcpy(v75, v0 + 2, 0x110uLL);
  if (sub_100031A30(v75) == 1)
  {
    if (qword_10039D348 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000403C(v24, qword_10039F278);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No attestation token", v27, 2u);
    }

LABEL_12:

    goto LABEL_13;
  }

  memcpy(v73, v75, sizeof(v73));
  v28 = *sub_10000BE18(v0 + 39, v0[42]);
  memcpy(v72, v74, sizeof(v72));
  sub_100034958(v72, &v71);
  sub_100043268(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000BD44(v11, &unk_1003A3BE0, &qword_1002C36F0);
    if (qword_10039D348 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000403C(v29, qword_10039F278);
    v25 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v25, v30, "Could not calculate secure now", v31, 2u);
    }

    sub_10000BD44(v74, &qword_10039F268, &qword_1002C2730);
    goto LABEL_12;
  }

  v62 = v17;
  v63 = v5;
  (*(v13 + 32))(v69, v11, v12);
  sub_100175270(v7);
  DateInterval.end.getter();
  v35 = v70 + 8;
  v34 = *(v70 + 8);
  v34(v7, v1);
  static Date.- infix(_:_:)();
  v61 = v13;
  v36 = v12;
  v65 = v12;
  v38 = v13 + 8;
  v37 = *(v13 + 8);
  v37(v20, v36);
  sub_100175270(v7);
  DateInterval.start.getter();
  v59 = v7;
  v60 = v1;
  v64 = v34;
  v70 = v35;
  v34(v7, v1);
  sub_1000349B4(&qword_10039F3F0);
  v39 = v65;
  v40 = dispatch thunk of static Comparable.< infix(_:_:)();
  v66 = v38;
  v67 = v37;
  v37(v20, v39);
  if ((v40 & 1) == 0)
  {
    v49 = v63;
    sub_100175270(v63);
    DateInterval.start.getter();
    v50 = v49;
    v51 = v60;
    v52 = v64;
    v64(v50, v60);
    v53 = v68;
    (*(v61 + 16))(v62, v68, v39);
    v54 = v59;
    DateInterval.init(start:end:)();
    v55 = v39;
    v56 = v69;
    v32 = DateInterval.contains(_:)();
    sub_10000BD44(v74, &qword_10039F268, &qword_1002C2730);
    v52(v54, v51);
    v57 = v67;
    v67(v53, v55);
    v57(v56, v55);
    return v32 & 1;
  }

  v41 = v67;
  if (qword_10039D348 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000403C(v42, qword_10039F278);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  v45 = os_log_type_enabled(v43, v44);
  v47 = v68;
  v46 = v69;
  if (v45)
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Attestation token expires at or earlier than token validity start date", v48, 2u);
  }

  sub_10000BD44(v74, &qword_10039F268, &qword_1002C2730);

  v41(v47, v39);
  v41(v46, v39);
LABEL_13:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_100032BAC(uint64_t a1, uint64_t a2)
{
  v119 = a2;
  v116 = a1;
  v3 = *v2;
  v4 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v106 - v6;
  v125 = type metadata accessor for DateInterval();
  v122 = *(v125 - 8);
  v8 = v122[8];
  v9 = __chkstk_darwin(v125);
  v120 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v113 = v106 - v12;
  __chkstk_darwin(v11);
  v14 = v106 - v13;
  v15 = type metadata accessor for Date();
  v126 = *(v15 - 8);
  v127 = v15;
  v16 = *(v126 + 64);
  v17 = __chkstk_darwin(v15);
  v110 = v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v115 = v106 - v20;
  v21 = __chkstk_darwin(v19);
  v111 = v106 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = v106 - v24;
  v26 = __chkstk_darwin(v23);
  v118 = v106 - v27;
  __chkstk_darwin(v26);
  v123 = v106 - v28;
  if (qword_10039D348 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v121 = sub_10000403C(v29, qword_10039F278);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v114 = v7;
  v112 = v25;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v117 = v14;
    v131[0] = v34;
    *v33 = 136315394;
    v35 = _typeName(_:qualified:)();
    v37 = sub_100008F6C(v35, v36, v131);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002C1670;
    *(v38 + 32) = v116;
    *(v38 + 88) = &type metadata for UInt64;
    v39 = v119;
    *(v38 + 56) = &type metadata for UInt64;
    *(v38 + 64) = v39;
    v40 = showFunction(signature:_:)(0xD000000000000021, 0x8000000100347780, v38);
    v42 = v41;

    v43 = sub_100008F6C(v40, v42, v131);

    *(v33 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s.%s", v33, 0x16u);
    swift_arrayDestroy();
    v14 = v117;
  }

  v44 = v120;
  memcpy(v130, v124 + 2, sizeof(v130));
  memcpy(v131, v124 + 2, 0x110uLL);
  v45 = sub_100031A30(v131);
  v46 = v125;
  if (v45 == 1)
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "No attestation token", v49, 2u);
    }

    goto LABEL_18;
  }

  v50 = v131[12];
  memcpy(v129, v130, sizeof(v129));
  sub_100034958(v129, v128);
  result = Date.init(timeIntervalSince1970:)();
  if (!__CFADD__(v50, v119))
  {
    v52 = v118;
    Date.init(timeIntervalSince1970:)();
    v53 = v127;
    v55 = v126 + 16;
    v54 = *(v126 + 16);
    v56 = v112;
    v54(v112, v123, v127);
    v119 = v55;
    v109 = v54;
    v54(v111, v52, v53);
    v57 = v44;
    v58 = v46;
    DateInterval.init(start:end:)();
    v59 = v122[2];
    v60 = v14;
    v61 = v113;
    v59(v113, v14, v46);
    v59(v57, v14, v46);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v108 = v63;
      v65 = v64;
      v111 = swift_slowAlloc();
      v128[0] = v111;
      *v65 = 136315394;
      v107 = v62;
      DateInterval.start.getter();
      v106[1] = sub_1000349B4(&qword_10039F3E8);
      v66 = v127;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v117 = v60;
      v106[0] = *(v126 + 8);
      (v106[0])(v56, v66);
      v70 = v122[1];
      v70(v61, v125);
      v71 = sub_100008F6C(v67, v69, v128);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      v72 = v65;
      v73 = v120;
      DateInterval.end.getter();
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (v106[0])(v56, v66);
      v77 = v117;
      v78 = v73;
      v58 = v125;
      v120 = v70;
      v70(v78, v125);
      v79 = sub_100008F6C(v74, v76, v128);

      *(v72 + 14) = v79;
      v80 = v107;
      _os_log_impl(&_mh_execute_header, v107, v108, "Attestation Token validity period: %s...%s", v72, 0x16u);
      swift_arrayDestroy();

      v81 = v114;
      v82 = v115;
    }

    else
    {

      v83 = v122[1];
      v83(v57, v46);
      v120 = v83;
      v83(v61, v46);
      v81 = v114;
      v82 = v115;
      v77 = v14;
    }

    v84 = *sub_10000BE18(v124 + 39, v124[42]);
    sub_100043268(v81);
    if ((*(v126 + 48))(v81, 1, v127) == 1)
    {
      sub_10000BD44(v81, &unk_1003A3BE0, &qword_1002C36F0);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "Could not calculate secure now", v87, 2u);
      }

      sub_10000BD44(v130, &qword_10039F268, &qword_1002C2730);
      (v120)(v77, v58);
      v88 = v127;
      v89 = *(v126 + 8);
    }

    else
    {
      (*(v126 + 32))(v82, v81, v127);
      if (DateInterval.contains(_:)())
      {
        v91 = *sub_10000BE18(v124 + 44, v124[47]);
        v90 = sub_100034B08(v116);
        sub_10000BD44(v130, &qword_10039F268, &qword_1002C2730);
        v92 = v127;
        v93 = *(v126 + 8);
        v93(v82, v127);
        (v120)(v77, v58);
        v93(v118, v92);
        v93(v123, v92);
        return v90 & 1;
      }

      v117 = v77;
      v94 = v110;
      v109(v110, v82, v127);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = v94;
        v124 = swift_slowAlloc();
        v128[0] = v124;
        *v97 = 136315138;
        sub_1000349B4(&qword_10039F3E8);
        v99 = v127;
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        v103 = *(v126 + 8);
        v103(v98, v99);
        v104 = sub_100008F6C(v100, v102, v128);

        *(v97 + 4) = v104;
        _os_log_impl(&_mh_execute_header, v95, v96, "Current date (%s) outside of attestation token validity period", v97, 0xCu);
        sub_10000959C(v124);

        sub_10000BD44(v130, &qword_10039F268, &qword_1002C2730);
        v103(v115, v99);
        (v120)(v117, v125);
        v103(v118, v99);
        v103(v123, v99);
        goto LABEL_18;
      }

      sub_10000BD44(v130, &qword_10039F268, &qword_1002C2730);
      v89 = *(v126 + 8);
      v105 = v94;
      v88 = v127;
      v89(v105, v127);
      v89(v82, v88);
      (v120)(v117, v125);
    }

    v89(v118, v88);
    v89(v123, v88);
LABEL_18:
    v90 = 0;
    return v90 & 1;
  }

  __break(1u);
  return result;
}
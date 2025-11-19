void sub_10018A880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_10018A920()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteProvisionReader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018A988()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018A9E4()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A60B0);
  sub_10000403C(v0, qword_1003A60B0);
  sub_100023B24();
  return static SPRLogger.xpcServer.getter();
}

uint64_t sub_10018AA40(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a1 - 8) + 64);
  __chkstk_darwin(v7);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10018C7FC(v3, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v12, v4);
    v13 = UUID.uuidString.getter();
    (*(v5 + 8))(v9, v4);
    return v13;
  }

  else
  {
    result = *v12;
    v15 = v12[1];
  }

  return result;
}

uint64_t ClientType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 7565168;
  }

  else
  {
    return 0x6F697369766F7270;
  }
}

uint64_t ClientType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037EFB0, v2);

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

uint64_t sub_10018ACB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7565168;
  }

  else
  {
    v4 = 0x6F697369766F7270;
  }

  if (v3)
  {
    v5 = 0xE90000000000006ELL;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7565168;
  }

  else
  {
    v6 = 0x6F697369766F7270;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE90000000000006ELL;
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

unint64_t sub_10018AD58()
{
  result = qword_1003A60C8;
  if (!qword_1003A60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A60C8);
  }

  return result;
}

Swift::Int sub_10018ADAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10018AE2C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10018AE98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10018AF14@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10037EFB0, *a1);

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

void sub_10018AF74(uint64_t *a1@<X8>)
{
  v2 = 7565168;
  if (!*v1)
  {
    v2 = 0x6F697369766F7270;
  }

  v3 = 0xE90000000000006ELL;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10018AFB4()
{
  result = qword_1003A60D0;
  if (!qword_1003A60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A60D0);
  }

  return result;
}

unint64_t sub_10018B00C()
{
  result = qword_1003A60D8;
  if (!qword_1003A60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A60D8);
  }

  return result;
}

unint64_t sub_10018B064()
{
  result = qword_1003A60E0;
  if (!qword_1003A60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A60E0);
  }

  return result;
}

unint64_t sub_10018B0BC()
{
  result = qword_1003A60E8;
  if (!qword_1003A60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A60E8);
  }

  return result;
}

unint64_t sub_10018B114()
{
  result = qword_1003A60F0;
  if (!qword_1003A60F0)
  {
    sub_1000040BC(&qword_1003A60F8, &qword_1002CAEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A60F0);
  }

  return result;
}

void *sub_10018B5BC(void *a1)
{
  v3 = v1;
  swift_getObjectType();
  v70 = type metadata accessor for ClientID(0);
  v5 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D770 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v62[1] = sub_10000403C(v8, qword_1003A60B0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v62[0] = v2;
  if (v11)
  {
    v12 = swift_slowAlloc();
    *&v65 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, &v65);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = showFunction(signature:_:)(0x6F72662874696E69, 0xEB00000000293A6DLL, _swiftEmptyArrayStorage);
    v18 = sub_100008F6C(v16, v17, &v65);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v19 = [a1 processIdentifier];
  *(v3 + OBJC_IVAR____TtC14softposreaderd10ClientInfo_processID) = v19;
  v20 = String._bridgeToObjectiveC()();
  v21 = [a1 valueForEntitlement:v20];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v65 = v68;
  v66 = v69;
  v22 = &off_1003A6000;
  if (*(&v69 + 1))
  {
    if (swift_dynamicCast())
    {
      v23 = v64;
      v24 = (v3 + OBJC_IVAR____TtC14softposreaderd10ClientInfo_clientID);
      *v24 = v63;
      v24[1] = v23;
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    }
  }

  else
  {
    sub_10009E294(&v65);
  }

  UUID.init()();
  swift_storeEnumTagMultiPayload();
  sub_10018C8BC(v7, v3 + OBJC_IVAR____TtC14softposreaderd10ClientInfo_clientID);
LABEL_13:
  v25 = String._bridgeToObjectiveC()();
  v26 = [a1 valueForEntitlement:v25];

  v27 = &_swiftEmptySetSingleton;
  if (!v26)
  {
LABEL_27:
    v29 = 2;
    goto LABEL_41;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000BDA4(&v68, &v65);
  if (swift_dynamicCast())
  {
    if (v63 == 1)
    {
      v28 = a1;
      v29 = 0;
    }

    else
    {
      if (v63 != 2)
      {
        sub_100020C74(10003, 0x6D656C7469746E65, 0xEB00000000746E65, 0);
        swift_willThrow();

        sub_10000959C(&v68);
        goto LABEL_66;
      }

      v28 = a1;
      v29 = 1;
    }

    v37 = *(&_swiftEmptySetSingleton + 5);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v38 = Hasher._finalize()();
    v39 = -1 << *(&_swiftEmptySetSingleton + 32);
    v40 = v38 & ~v39;
    if ((*(&_swiftEmptySetSingleton + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v40))
    {
      v41 = ~v39;
      while ((*(*(&_swiftEmptySetSingleton + 6) + v40) & 1) != 0)
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v42)
        {
          goto LABEL_37;
        }

        v40 = (v40 + 1) & v41;
        if (((*(&_swiftEmptySetSingleton + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v40) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v27 = &_swiftEmptySetSingleton;
    }

    else
    {
LABEL_34:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v65 = &_swiftEmptySetSingleton;
      sub_100041648(0, v40, isUniquelyReferenced_nonNull_native);
      v27 = v65;
    }

LABEL_37:
    sub_10000959C(&v68);
    goto LABEL_40;
  }

  sub_10000BDA4(&v68, &v65);
  if ((swift_dynamicCast() & 1) == 0 || (v63 & 1) == 0)
  {
    sub_10000959C(&v68);
    goto LABEL_27;
  }

  v28 = a1;
  v30 = *(&_swiftEmptySetSingleton + 5);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v31 = Hasher._finalize()();
  v32 = -1 << *(&_swiftEmptySetSingleton + 32);
  v33 = v31 & ~v32;
  if ((*(&_swiftEmptySetSingleton + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33))
  {
    v34 = ~v32;
    while ((*(*(&_swiftEmptySetSingleton + 6) + v33) & 1) != 0)
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        goto LABEL_39;
      }

      v33 = (v33 + 1) & v34;
      if (((*(&_swiftEmptySetSingleton + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v27 = &_swiftEmptySetSingleton;
  }

  else
  {
LABEL_25:
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v65 = &_swiftEmptySetSingleton;
    sub_100041648(0, v33, v36);
    v27 = v65;
  }

LABEL_39:
  sub_10000959C(&v68);
  v29 = 0;
LABEL_40:
  a1 = v28;
  v22 = &off_1003A6000;
LABEL_41:
  v44 = String._bridgeToObjectiveC()();
  v45 = [a1 valueForEntitlement:v44];

  if (v45)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v65 = v68;
  v66 = v69;
  if (*(&v69 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v63 == 1)
      {
        v46 = a1;
        LOBYTE(v29) = 0;
LABEL_54:
        v48 = v27[5];
        Hasher.init(_seed:)();
        String.hash(into:)();
        v49 = Hasher._finalize()();
        v50 = -1 << *(v27 + 32);
        v51 = v49 & ~v50;
        if ((*(v27 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51))
        {
          v52 = ~v50;
          while (*(v27[6] + v51) != 1)
          {
            v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v53)
            {
              goto LABEL_62;
            }

            v51 = (v51 + 1) & v52;
            if (((*(v27 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) == 0)
            {
              goto LABEL_59;
            }
          }
        }

        else
        {
LABEL_59:
          v54 = swift_isUniquelyReferenced_nonNull_native();
          *&v65 = v27;
          sub_100041648(1, v51, v54);
          v27 = v65;
        }

LABEL_62:
        a1 = v46;
        v22 = &off_1003A6000;
        if (!v27[2])
        {
          goto LABEL_63;
        }

        goto LABEL_52;
      }

      if (v63 == 2)
      {
        v46 = a1;
        LOBYTE(v29) = 1;
        goto LABEL_54;
      }

      sub_100020C74(10003, 0x6D656C7469746E65, 0xEB00000000746E65, 0);
      swift_willThrow();

LABEL_66:
      sub_10018C860(v22[488] + v3);
      type metadata accessor for ClientInfo(0);
      v59 = *((swift_isaMask & *v3) + 0x30);
      v60 = *((swift_isaMask & *v3) + 0x34);
      swift_deallocPartialClassInstance();
      return v3;
    }
  }

  else
  {
    sub_10009E294(&v65);
  }

  if (v29 == 2 || !v27[2])
  {
LABEL_63:
    v55 = a1;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "SecurityError(.notAuthorized, reason: entitlement)", v58, 2u);
    }

    sub_100020C74(10003, 0x6D656C7469746E65, 0xEB00000000746E65, 0);
    swift_willThrow();

    goto LABEL_66;
  }

LABEL_52:
  *(v3 + OBJC_IVAR____TtC14softposreaderd10ClientInfo_clientType) = v27;
  *(v3 + OBJC_IVAR____TtC14softposreaderd10ClientInfo_apiLevel) = v29 & 1;
  v47 = type metadata accessor for ClientInfo(0);
  v67.receiver = v3;
  v67.super_class = v47;
  v3 = objc_msgSendSuper2(&v67, "init");

  return v3;
}

void sub_10018BFEC(char a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  if (qword_10039D770 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A60B0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v31 = a3;
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, &v33);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002C1660;
    v15 = (a1 & 1u) + 1;
    *(v14 + 56) = &type metadata for Int;
    *(v14 + 32) = v15;
    v16 = showFunction(signature:_:)(0xD000000000000022, 0x8000000100353420, v14);
    v18 = v17;

    v19 = v16;
    v4 = v3;
    v20 = sub_100008F6C(v19, v18, &v33);

    *(v10 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();

    a3 = v31;
  }

  else
  {

    v15 = (a1 & 1u) + 1;
  }

  v21 = 1;
  if (v4[OBJC_IVAR____TtC14softposreaderd10ClientInfo_apiLevel])
  {
    v21 = 2;
  }

  if (v21 < v15)
  {

    v22 = v4;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_100008F6C(a2, a3, &v33);
      *(v25 + 12) = 2080;
      v26 = [v22 debugDescription];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_100008F6C(v27, v29, &v33);

      *(v25 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Client not authorized to call %s: %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    sub_100020C74(10003, 0x6D656C7469746E65, 0xEB00000000746E65, 0);
    swift_willThrow();
  }
}

uint64_t sub_10018C3CC(char a1, uint64_t a2, unint64_t a3)
{
  result = sub_100190788(a1 & 1, *&v3[OBJC_IVAR____TtC14softposreaderd10ClientInfo_clientType]);
  if ((result & 1) == 0)
  {
    if (qword_10039D770 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000403C(v7, qword_1003A60B0);

    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v11 = 136315394;
      *(v11 + 4) = sub_100008F6C(a2, a3, &v17);
      *(v11 + 12) = 2080;
      v12 = [v8 debugDescription];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100008F6C(v13, v15, &v17);

      *(v11 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Client not authorized to call %s: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    sub_100020C74(10003, 0x6D656C7469746E65, 0xEB00000000746E65, 0);
    return swift_willThrow();
  }

  return result;
}

id sub_10018C60C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientInfo(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018C6B8()
{
  result = type metadata accessor for ClientID(319);
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

uint64_t sub_10018C790()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10018C7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018C860(uint64_t a1)
{
  v2 = type metadata accessor for ClientID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018C8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10018CA28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteInspector();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10018CA90()
{
  result = qword_1003A6278;
  if (!qword_1003A6278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A6278);
  }

  return result;
}

id sub_10018CFF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteConfigurator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018D05C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10018D09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 + OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 24);
  v16 = *(a7 + OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance + 32);
  sub_10000BE18((a7 + OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance), v15);
  v17 = (*(v16 + 8))(a1, a2, a3, a4, a5, a6, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_100004074(&unk_1003A3C10, &unk_1002C3760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = 0x6E656B6F74;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v17;
  *(inited + 56) = v19;

  sub_100183EFC(inited);
  swift_setDeallocating();
  sub_10018D2C4(inited + 32);

  if (v21)
  {
    sub_10002D704(v23, v21, 0xD000000000000013, 0x800000010034B4E0);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a8 + 16))(a8, isa, 0);
}

uint64_t sub_10018D2C4(uint64_t a1)
{
  v2 = sub_100004074(&qword_10039FE90, &unk_1002C5970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10018D420()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018D488(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10000CCE4(a5 + OBJC_IVAR____TtC14softposreaderd13RemoteMonitor_instance, v16);
  v10 = v17;
  v11 = v18;
  sub_10000BE18(v16, v17);
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = sub_100183EFC(_swiftEmptyArrayStorage);
  }

  v13 = *(v11 + 8);

  v13(a1, a2, a3, v12, v10, v11);

  sub_10000959C(v16);
  return (*(a6 + 16))(a6, 0);
}

id sub_10018DD10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemotePINController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018DDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 24);
  v7 = *(a2 + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance + 32);
  sub_10000BE18((a2 + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance), v6);
  (*(v7 + 8))(v20, a1, v6, v7);
  v8 = v20[0];
  v9 = v20[1];
  v10 = v20[2];
  v11 = v20[3];
  v12 = v20[4];
  v13 = v20[5];
  v14 = os_transaction_create();
  v15 = *(a2 + OBJC_IVAR____TtC14softposreaderd19RemotePINController_captureInProgress);
  *(a2 + OBJC_IVAR____TtC14softposreaderd19RemotePINController_captureInProgress) = v14;
  swift_unknownObjectRelease();
  sub_1000094F4(v8, v9);
  sub_1000094F4(v10, v11);
  sub_1000094F4(v12, v13);
  sub_100009548(v12, v13);
  sub_100009548(v10, v11);
  sub_1000094F4(v8, v9);
  sub_1000094F4(v10, v11);
  sub_1000094F4(v12, v13);
  sub_100009548(v12, v13);
  sub_100009548(v8, v9);
  sub_1000094F4(v8, v9);
  sub_1000094F4(v10, v11);
  sub_1000094F4(v12, v13);
  sub_100009548(v10, v11);
  sub_100009548(v8, v9);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v17 = Data._bridgeToObjectiveC()().super.isa;
  v18 = Data._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, v17, v18, 0);

  sub_100009548(v12, v13);
  sub_100009548(v10, v11);
  sub_100009548(v8, v9);
  sub_100009548(v8, v9);
  sub_100009548(v10, v11);

  return sub_100009548(v12, v13);
}

uint64_t sub_10018E058(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance);
  v5 = v4[3];
  v6 = v4[4];
  sub_10000BE18(v4, v5);
  v7 = (*(v6 + 32))(v5, v6);
  (*(a2 + 16))(a2, v7, 0);

  v8 = *(a1 + OBJC_IVAR____TtC14softposreaderd19RemotePINController_captureInProgress);
  *(a1 + OBJC_IVAR____TtC14softposreaderd19RemotePINController_captureInProgress) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_10018E178()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A6438);
  sub_10000403C(v0, qword_1003A6438);
  sub_100023B24();
  return static SPRLogger.xpcServer.getter();
}

id sub_10018E1D4()
{
  sub_10000CCE4(&v0[OBJC_IVAR____TtC14softposreaderd12RemotePrimer_instance], v5);
  v1 = v6;
  v2 = v7;
  sub_10000BE18(v5, v6);
  (*(v2 + 32))(v0[OBJC_IVAR____TtC14softposreaderd12RemotePrimer_isPOS], v1, v2);
  sub_10000959C(v5);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RemotePrimer();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10018E354(void (*a1)(void))
{
  v2 = v1;
  swift_getObjectType();
  if (qword_10039D778 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A6438);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = a1;
    v11 = sub_100008F6C(v8, v9, v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000019, 0x8000000100353760, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, v21);

    *(v7 + 14) = v14;
    a1 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v15 = [objc_opt_self() currentConnection];
  if (!v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v15 userInfo];

  if (!v17)
  {
LABEL_11:
    __break(1u);
    return;
  }

  type metadata accessor for ClientInfo(0);
  swift_dynamicCastClassUnconditional();
  sub_10018BFEC(1, 0xD000000000000019, 0x8000000100353760);
  swift_unknownObjectRelease();
  v18 = (v2 + OBJC_IVAR____TtC14softposreaderd12RemotePrimer_instance);
  v19 = *(v2 + OBJC_IVAR____TtC14softposreaderd12RemotePrimer_instance + 24);
  v20 = *(v2 + OBJC_IVAR____TtC14softposreaderd12RemotePrimer_instance + 32);
  sub_10000BE18(v18, v19);
  (*(v20 + 8))(v19, v20);
  a1();
}

void sub_10018E79C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

void sub_10018E81C(void (*a1)(id))
{
  v2 = v1;
  swift_getObjectType();
  if (qword_10039D778 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A6438);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, v21);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0xD000000000000015, 0x8000000100353740, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, v21);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = (v2 + OBJC_IVAR____TtC14softposreaderd12RemotePrimer_instance);
  v15 = *(v2 + OBJC_IVAR____TtC14softposreaderd12RemotePrimer_instance + 24);
  v16 = v14[4];
  sub_10000BE18(v14, v15);
  (*(v16 + 40))(v21, v15, v16);
  v17 = type metadata accessor for RemoteProvider();
  v18 = objc_allocWithZone(v17);
  sub_10000CCE4(v21, v18 + OBJC_IVAR____TtC14softposreaderd14RemoteProvider_instance);
  v20.receiver = v18;
  v20.super_class = v17;
  v19 = objc_msgSendSuper2(&v20, "init");
  sub_10000959C(v21);
  a1(v19);
}

void sub_10018EAB0(void (*a1)(id, void), uint64_t a2)
{
  v3 = v2;
  v42[2] = a2;
  v43 = a1;
  swift_getObjectType();
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClientID(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10039D778 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A6438);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v42[1] = v9;
    v49[0] = v17;
    *v16 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100008F6C(v18, v19, v49);
    v42[0] = v3;
    v21 = v8;
    v22 = v5;
    v23 = v4;
    v24 = v20;

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = showFunction(signature:_:)(0xD00000000000001ALL, 0x8000000100353720, _swiftEmptyArrayStorage);
    v27 = sub_100008F6C(v25, v26, v49);

    *(v16 + 14) = v27;
    v4 = v23;
    v5 = v22;
    v8 = v21;
    v3 = v42[0];
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v28 = (v3 + OBJC_IVAR____TtC14softposreaderd12RemotePrimer_instance);
  v29 = *(v3 + OBJC_IVAR____TtC14softposreaderd12RemotePrimer_instance + 24);
  v30 = v28[4];
  sub_10000BE18(v28, v29);
  v31 = [objc_opt_self() currentConnection];
  if (!v31)
  {
    __break(1u);
    goto LABEL_12;
  }

  v32 = v31;
  v33 = [v31 userInfo];

  if (!v33)
  {
LABEL_12:
    __break(1u);
    return;
  }

  type metadata accessor for ClientInfo(0);
  v34 = swift_dynamicCastClassUnconditional();
  sub_10018C7FC(v34 + OBJC_IVAR____TtC14softposreaderd10ClientInfo_clientID, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    v35 = UUID.uuidString.getter();
    v37 = v36;
    swift_unknownObjectRelease();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v38 = v12[1];
    v48[0] = *v12;
    v48[1] = v38;
    v46 = 95;
    v47 = 0xE100000000000000;
    v44 = 45;
    v45 = 0xE100000000000000;
    sub_10008AB88();
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v37 = v39;

    swift_unknownObjectRelease();
  }

  (*(v30 + 48))(v49, v35, v37, v29, v30);

  sub_10000CCE4(v49, v48);
  v40 = objc_allocWithZone(type metadata accessor for RemoteSecureChannel());
  v41 = sub_1001928F0(v48);
  v43(v41, 0);

  sub_10000959C(v49);
}

uint64_t sub_10018EFC4(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_10018F0AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10018F168(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

id sub_10018F214()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10018F27C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentConnection];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 userInfo];

    if (v6)
    {
      type metadata accessor for ClientInfo(0);
      swift_dynamicCastClassUnconditional();
      sub_10018C3CC(1, 0xD000000000000019, 0x8000000100353860);
      swift_unknownObjectRelease();
      v7 = (a1 + OBJC_IVAR____TtC14softposreaderd14RemoteProvider_instance);
      v8 = *(a1 + OBJC_IVAR____TtC14softposreaderd14RemoteProvider_instance + 24);
      v9 = v7[4];
      sub_10000BE18(v7, v8);
      (*(v9 + 8))(v14, v8, v9);
      v10 = type metadata accessor for RemoteConfigurator();
      v11 = objc_allocWithZone(v10);
      sub_10000CCE4(v14, v11 + OBJC_IVAR____TtC14softposreaderd18RemoteConfigurator_instance);
      v13.receiver = v11;
      v13.super_class = v10;
      v12 = objc_msgSendSuper2(&v13, "init");
      sub_10000959C(v14);
      (*(a2 + 16))(a2, v12, 0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10018F468(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentConnection];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 userInfo];

    if (v6)
    {
      type metadata accessor for ClientInfo(0);
      swift_dynamicCastClassUnconditional();
      sub_10018C3CC(1, 0xD000000000000014, 0x8000000100353840);
      swift_unknownObjectRelease();
      v7 = (a1 + OBJC_IVAR____TtC14softposreaderd14RemoteProvider_instance);
      v8 = *(a1 + OBJC_IVAR____TtC14softposreaderd14RemoteProvider_instance + 24);
      v9 = v7[4];
      sub_10000BE18(v7, v8);
      (*(v9 + 16))(v14, v8, v9);
      v10 = type metadata accessor for RemoteMonitor();
      v11 = objc_allocWithZone(v10);
      sub_10000CCE4(v14, v11 + OBJC_IVAR____TtC14softposreaderd13RemoteMonitor_instance);
      v13.receiver = v11;
      v13.super_class = v10;
      v12 = objc_msgSendSuper2(&v13, "init");
      sub_10000959C(v14);
      (*(a2 + 16))(a2, v12, 0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10018F654(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentConnection];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 userInfo];

    if (v6)
    {
      type metadata accessor for ClientInfo(0);
      swift_dynamicCastClassUnconditional();
      sub_10018C3CC(1, 0xD000000000000013, 0x8000000100353820);
      swift_unknownObjectRelease();
      v7 = (a1 + OBJC_IVAR____TtC14softposreaderd14RemoteProvider_instance);
      v8 = *(a1 + OBJC_IVAR____TtC14softposreaderd14RemoteProvider_instance + 24);
      v9 = v7[4];
      sub_10000BE18(v7, v8);
      (*(v9 + 24))(v14, v8, v9);
      v10 = type metadata accessor for RemoteReader();
      v11 = objc_allocWithZone(v10);
      sub_10000CCE4(v14, v11 + OBJC_IVAR____TtC14softposreaderd12RemoteReader_instance);
      v13.receiver = v11;
      v13.super_class = v10;
      v12 = objc_msgSendSuper2(&v13, "init");
      sub_10000959C(v14);
      (*(a2 + 16))(a2, v12, 0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10018F840(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentConnection];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 userInfo];

    if (v6)
    {
      type metadata accessor for ClientInfo(0);
      swift_dynamicCastClassUnconditional();
      sub_10018C3CC(1, 0xD00000000000001ALL, 0x8000000100353800);
      swift_unknownObjectRelease();
      v7 = (a1 + OBJC_IVAR____TtC14softposreaderd14RemoteProvider_instance);
      v8 = *(a1 + OBJC_IVAR____TtC14softposreaderd14RemoteProvider_instance + 24);
      v9 = v7[4];
      sub_10000BE18(v7, v8);
      (*(v9 + 32))(v14, v8, v9);
      v10 = type metadata accessor for RemotePINController();
      v11 = objc_allocWithZone(v10);
      *&v11[OBJC_IVAR____TtC14softposreaderd19RemotePINController_captureInProgress] = 0;
      sub_10000CCE4(v14, &v11[OBJC_IVAR____TtC14softposreaderd19RemotePINController_instance]);
      v13.receiver = v11;
      v13.super_class = v10;
      v12 = objc_msgSendSuper2(&v13, "init");
      sub_10000959C(v14);
      (*(a2 + 16))(a2, v12, 0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1001906B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteReader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10019071C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id SPRRemoteService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_100190788(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_19;
  }

  v4 = 0xE90000000000006ELL;
  v5 = 0x6F697369766F7270;
  v6 = *(a2 + 40);
  Hasher.init(_seed:)();
  if (a1)
  {
    v5 = 7565168;
    v4 = 0xE300000000000000;
  }

  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(a2 + 48) + v9) ? 7565168 : 0x6F697369766F7270;
      v12 = *(*(a2 + 48) + v9) ? 0xE300000000000000 : 0xE90000000000006ELL;
      if (v11 == v5 && v12 == v4)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v9 = (v9 + 1) & v10;
        if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_19:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_100190908()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A6610);
  sub_10000403C(v0, qword_1003A6610);
  sub_100023B24();
  return static SPRLogger.xpcServer.getter();
}

void sub_100190AAC(void (*a1)(void))
{
  swift_getObjectType();
  if (qword_10039D780 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A6610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v25);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000019, 0x8000000100353A10, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v25);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = [objc_opt_self() currentConnection];
  if (!v12)
  {
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  v14 = [v12 userInfo];

  if (!v14)
  {
LABEL_22:
    __break(1u);
    return;
  }

  type metadata accessor for ClientInfo(0);
  v15 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC14softposreaderd10ClientInfo_clientType);

  swift_unknownObjectRelease();
  if (*(v15 + 16) && (v16 = *(v15 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v17 = Hasher._finalize()(), v18 = -1 << *(v15 + 32), v19 = v17 & ~v18, ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
  {
    v20 = ~v18;
    while (*(*(v15 + 48) + v19) != 1)
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        v19 = (v19 + 1) & v20;
        if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

LABEL_15:

  if (qword_10039D5E0 != -1)
  {
    swift_once();
  }

  v22 = objc_allocWithZone(type metadata accessor for RemotePrimer());

  v24 = sub_1001920A0(v23, v21 & 1, v22);
  a1();
}

void sub_100190E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  swift_getObjectType();
  v5 = type metadata accessor for Settings();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v65 - v10;
  if (qword_10039D780 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000403C(v12, qword_1003A6610);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v66 = v9;
  v67 = v11;
  v65[1] = v5;
  v65[2] = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    *&v71 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = a2;
    v21 = sub_100008F6C(v18, v19, &v71);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1002C1660;
    *(v22 + 56) = sub_100004074(&qword_1003A0190, &unk_1002C4040);
    *(v22 + 32) = a1;

    v23 = showFunction(signature:_:)(0xD000000000000021, 0x80000001003539E0, v22);
    v25 = v24;

    v26 = v23;
    a2 = v20;
    v27 = sub_100008F6C(v26, v25, &v71);

    *(v17 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v28 = [objc_opt_self() currentConnection];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 userInfo];

    if (v30)
    {
      type metadata accessor for ClientInfo(0);
      v31 = swift_dynamicCastClassUnconditional();
      sub_10018BFEC(1, 0xD000000000000021, 0x80000001003539E0);
      v65[0] = a2;
      v32 = *(v31 + OBJC_IVAR____TtC14softposreaderd10ClientInfo_clientType);
      if (*(v32 + 16) && (v33 = *(v32 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v34 = Hasher._finalize()(), v35 = -1 << *(v32 + 32), v36 = v34 & ~v35, ((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
      {
        v37 = ~v35;
        while (*(*(v32 + 48) + v36) != 1)
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v38 & 1) == 0)
          {
            v36 = (v36 + 1) & v37;
            if ((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
            {
              continue;
            }
          }

          goto LABEL_15;
        }

        v38 = 1;
      }

      else
      {
        v38 = 0;
      }

LABEL_15:

      v39 = v67;
      Settings.init(dictionary:)(v73);
      if (v40)
      {
        swift_unknownObjectRelease();
        v41 = v65[0];
        swift_errorRetain();
        v41(0, 0, v40);

        return;
      }

      type metadata accessor for Primer();
      v42 = v66;
      sub_1000DD24C(v39, v66);
      v43 = Primer.__allocating_init(settings:)(v42);
      v44 = *(v43 + 24);

      sub_1000E3850(&v71);
      v66 = v43;

      v45 = *sub_10000BE18(&v71, v72) + OBJC_IVAR____TtC14softposreaderd11Environment_storageSetting;
      v46 = *v45;
      v47 = *(v45 + 8);
      v48 = *(v45 + 16);
      sub_1000EFF2C(*v45, v47, *(v45 + 16));
      sub_10000959C(&v71);
      v49 = StorageSetting.description.getter(v46, v47, v48);
      v51 = v50;
      sub_1000E151C(v46, v47, v48);
      v52 = sub_100182BA0(_swiftEmptyArrayStorage);
      if (*(a1 + 16))
      {
        v53 = sub_1000F5A28(0xD000000000000015, 0x800000010034D5C0);
        if (v54)
        {
          sub_10000BDA4(*(a1 + 56) + 32 * v53, &v71);
          if (swift_dynamicCast())
          {
            if (v70[0] == __PAIR128__(v51, v49))
            {

LABEL_29:
              v62 = objc_allocWithZone(type metadata accessor for RemotePrimer());

              v64 = sub_1001920A0(v63, v38 & 1, v62);
              (v65[0])(v64, v52, 0);

              swift_unknownObjectRelease();

              sub_1000F02C0(v39);
              return;
            }

            v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v55)
            {

              goto LABEL_29;
            }
          }
        }
      }

      v72 = &type metadata for String;
      *&v71 = v49;
      *(&v71 + 1) = v51;
      sub_100019D3C(&v71, v70);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v52;
      sub_10017F944(v70, 0xD000000000000015, 0x800000010034D5C0, isUniquelyReferenced_nonNull_native);
      v52 = v69;

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v71 = v60;
        *v59 = 136315138;
        v61 = sub_100008F6C(v49, v51, &v71);

        *(v59 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v57, v58, "override Storage.Location.Path with: %s", v59, 0xCu);
        sub_10000959C(v60);
        v39 = v67;
      }

      else
      {
      }

      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100191788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
LABEL_3:
      v8 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v7.super.isa = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7.super.isa);
}

void sub_100191844(char a1, void (*a2)(id, void))
{
  swift_getObjectType();
  if (qword_10039D780 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A6610);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, v22);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0xD000000000000029, 0x80000001003539B0, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, v22);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = [objc_opt_self() currentConnection];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 userInfo];

    if (v16)
    {
      type metadata accessor for ClientInfo(0);
      swift_dynamicCastClassUnconditional();
      sub_10018C3CC(0, 0xD000000000000029, 0x80000001003539B0);
      swift_unknownObjectRelease();
      v17 = sub_1000219DC(a1 & 1);
      v22[3] = type metadata accessor for ProvisionReader();
      v22[4] = &protocol witness table for ProvisionReader;
      v22[0] = v17;
      v18 = type metadata accessor for RemoteProvisionReader();
      v19 = objc_allocWithZone(v18);
      sub_10000CCE4(v22, v19 + OBJC_IVAR____TtC14softposreaderd21RemoteProvisionReader_instance);
      v21.receiver = v19;
      v21.super_class = v18;
      v20 = objc_msgSendSuper2(&v21, "init");
      sub_10000959C(v22);
      a2(v20, 0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100191C1C(void (*a1)(id, void))
{
  swift_getObjectType();
  if (qword_10039D780 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A6610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v18);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000016, 0x8000000100353990, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v18);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = type metadata accessor for Inspector();
  v13 = swift_allocObject();
  v18[3] = v12;
  v18[4] = &protocol witness table for Inspector;
  v18[0] = v13;
  v14 = type metadata accessor for RemoteInspector();
  v15 = objc_allocWithZone(v14);
  sub_10000CCE4(v18, v15 + OBJC_IVAR____TtC14softposreaderd15RemoteInspector_instance);
  v17.receiver = v15;
  v17.super_class = v14;
  v16 = objc_msgSendSuper2(&v17, "init");
  sub_10000959C(v18);
  a1(v16, 0);
}

uint64_t sub_100191E94(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

id SPRRemoteService.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPRRemoteService();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10019200C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100192068(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001920A0(uint64_t a1, char a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  v23[3] = type metadata accessor for Primer();
  v23[4] = &protocol witness table for Primer;
  v23[0] = a1;
  if (qword_10039D778 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A6438);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136315394;
    nullsub_1(ObjectType);
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, &v21);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = showFunction(signature:_:)(0x693A5F2874696E69, 0xEE00293A534F5073, _swiftEmptyArrayStorage);
    v16 = sub_100008F6C(v14, v15, &v21);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v17 = a2 & 1;
  Primer.attach(isPOS:)(v17);
  sub_10000CCE4(v23, &a3[OBJC_IVAR____TtC14softposreaderd12RemotePrimer_instance]);
  a3[OBJC_IVAR____TtC14softposreaderd12RemotePrimer_isPOS] = v17;
  v18 = type metadata accessor for RemotePrimer();
  v22.receiver = a3;
  v22.super_class = v18;
  v19 = objc_msgSendSuper2(&v22, "init");
  sub_10000959C(v23);
  return v19;
}

uint64_t sub_1001922EC(void *a1)
{
  swift_getObjectType();
  if (qword_10039D780 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A6610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v29);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000026, 0x8000000100353A30, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v29);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = [objc_opt_self() interface];
  [a1 setExportedInterface:v12];

  v13 = [objc_allocWithZone(type metadata accessor for RemoteService()) init];
  [a1 setExportedObject:v13];

  v14 = objc_allocWithZone(type metadata accessor for ClientInfo(0));
  v15 = a1;
  v16 = sub_10018B5BC(v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = _typeName(_:qualified:)();
    v22 = sub_100008F6C(v20, v21, v29);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = [v16 debugDescription];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_100008F6C(v24, v26, v29);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s New client information: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  [v15 setUserInfo:v16];
  [v15 resume];

  return 1;
}

uint64_t sub_100192848()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100192894()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A6748);
  sub_10000403C(v0, qword_1003A6748);
  sub_100023B24();
  return static SPRLogger.xpcServer.getter();
}

id sub_1001928F0(uint64_t *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_10039D788 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A6748);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0x293A5F2874696E69, 0xE800000000000000, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000CCE4(a1, v2 + OBJC_IVAR____TtC14softposreaderd19RemoteSecureChannel_instance);
  v14 = type metadata accessor for RemoteSecureChannel();
  v18.receiver = v2;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, "init");
  sub_10000959C(a1);
  return v15;
}

uint64_t sub_100192AE0(uint64_t a1, int a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  LODWORD(v8) = a2;
  swift_getObjectType();
  v10 = sub_100004074(&unk_1003A67F0, &qword_1002CB078);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  if (qword_10039D788 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000403C(v15, qword_1003A6748);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v8;
    v8 = v18;
    v19 = swift_slowAlloc();
    v33 = a3;
    v34 = a4;
    v35[0] = v19;
    *v8 = 136315394;
    v20 = _typeName(_:qualified:)();
    v22 = a1;
    v23 = sub_100008F6C(v20, v21, v35);

    *(v8 + 4) = v23;
    *(v8 + 12) = 2080;
    v24 = showFunction(signature:_:)(0xD00000000000001FLL, 0x8000000100353AB0, _swiftEmptyArrayStorage);
    v26 = sub_100008F6C(v24, v25, v35);
    a1 = v22;

    *(v8 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
    a3 = v33;

    LOBYTE(v8) = v32;
  }

  v27 = *(v5 + OBJC_IVAR____TtC14softposreaderd19RemoteSecureChannel_instance + 24);
  v28 = *(v5 + OBJC_IVAR____TtC14softposreaderd19RemoteSecureChannel_instance + 32);
  sub_10000BE18((v5 + OBJC_IVAR____TtC14softposreaderd19RemoteSecureChannel_instance), v27);
  SecureChannelProtocol.securingRequest(_:contentType:force:)(a1, 0, v8 & 1, v27, v28);
  v29 = type metadata accessor for URLRequest();
  (*(*(v29 - 8) + 56))(v14, 0, 1, v29);
  a3(v14, 0);
  return sub_100193170(v14);
}

void sub_100192F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004074(&unk_1003A67F0, &qword_1002CB078);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  sub_100193218(a1, &v14 - v8);
  v10 = type metadata accessor for URLRequest();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = _convertErrorToNSError(_:)();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, isa, v13);
}

id sub_100193108()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteSecureChannel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100193170(uint64_t a1)
{
  v2 = sub_100004074(&unk_1003A67F0, &qword_1002CB078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001931D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100193218(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&unk_1003A67F0, &qword_1002CB078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void oWXeOtXZCneK()
{
  v0 = *(&off_10038FA40 + (byte_10034348C[(byte_100343388[(-67 * ((dword_1003A68E8 - qword_1003A6908) ^ 0x1D)) - 8] ^ 0x9F) - 12] ^ (-67 * ((dword_1003A68E8 - qword_1003A6908) ^ 0x1D))) - 10);
  v1 = *v0 - qword_1003A6908 - &v5;
  v2 = 1410351037 * v1 + 0x4A5078CC1149481DLL;
  v3 = 1410351037 * (v1 ^ 0x4A5078CC1149481DLL);
  qword_1003A6908 = v2;
  *v0 = v3;
  v4 = *(&off_1003867C0 + ((4057 * (atomic_exchange(*(&off_10038FA40 + (byte_10034308C[(byte_100342F88[(-67 * ((v3 - qword_1003A6908) ^ 0x1D)) - 8] ^ 0x8B) - 12] ^ (-67 * ((v3 - qword_1003A6908) ^ 0x1D))) - 143), 1u) & 1)) ^ 0x7DEu));
  __asm { BRAA            X8, X17 }
}

void h8edScs3BEMG(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_10038FA40 + ((-67 * (dword_1003A68F8 ^ 0x1D ^ dword_1003A68E8)) ^ byte_100342A80[byte_100342980[(-67 * (dword_1003A68F8 ^ 0x1D ^ dword_1003A68E8))] ^ 0x7A]) - 72);
  v4 = -67 * ((dword_1003A68E8 - *v3) ^ 0x1D);
  v5 = *(&off_10038FA40 + (byte_100343280[byte_100343180[v4] ^ 0x6D] ^ v4) - 148);
  v6 = 1410351037 * (&v12[*v5 - *v3] ^ 0x4A5078CC1149481DLL);
  *v3 = v6;
  *v5 = v6;
  LOBYTE(v6) = -67 * ((v6 - *v3) ^ 0x1D);
  v7 = *(&off_10038FA40 + ((-67 * ((dword_1003A68E8 + dword_1003A68F8) ^ 0x1D)) ^ byte_100343480[byte_100343380[(-67 * ((dword_1003A68E8 + dword_1003A68F8) ^ 0x1D))] ^ 0x73]) + 110) - 8;
  v8 = (*&v7[8 * (byte_100342C80[byte_100342B88[v6 - 8] ^ 0x5A] ^ v6) + 35416])(a1, a2);
  v9 = -67 * (*v3 ^ 0x1D ^ *v5);
  v10 = (*&v7[8 * (byte_10034348C[(byte_100343388[v9 - 8] ^ 0x73) - 12] ^ v9) + 36264])(a1);
  v11 = 1132158169 * ((2 * (&v13 & 0x7B73BE5F891CD030) - &v13 + 0x48C41A076E32FCALL) ^ 0xE82C954243ED11BALL);
  v15 = (v10 - ((2 * v10) & 0x8179BDCD2CEB5D08) + 0x40BCDEE69675AE84) ^ v11;
  v16 = v8;
  v13 = v11 + 2887;
  (*&v7[8 * ((-67 * ((*v5 + *v3) ^ 0x1D)) ^ byte_100343280[byte_100343180[(-67 * ((*v5 + *v3) ^ 0x1D))] ^ 0x32]) + 35856])(&v13);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10019383C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v4 = (*(v3 + 37032))(mach_task_self_, va, ~*(&vm_page_mask - 1) & (*(&vm_page_mask - 4) + 24), 1) == 0;
  return (*(v3 + 8 * (v4 | (8 * v4) | 0x6E2u)))();
}

void xcefb0c533decaccd2971c445edd8e730(uint64_t a1)
{
  v1 = 1132158169 * ((~a1 & 0x61B4982BACEA27A2 | a1 & 0x9E4B67D45315D85DLL) ^ 0x8D144CC999E419D2);
  v2 = *a1 - v1;
  v3 = *(&off_10038FA40 + (v2 ^ 0xBEB)) - 8;
  v4 = *&v3[8 * ((((*&v3[8 * (v2 ^ 0x1AE2)])(*(a1 + 16) ^ v1 ^ 0x40BCDEE69675AE84, 2559056010) != 0) * (((v2 - 1862) | 0x168) - 1361)) | v2)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100193FE0(unsigned __int8 *a1)
{
  (*(v4 + 8 * (v1 + 3265)))(a1, *(v3 + 24), v2, -1);
  v25 = *(v5 + 8 * (v1 ^ 0x5AA));
  v6 = *(v5 + 8 * (v1 ^ 0x5D7)) - 8;
  v7 = *(v6 + ((61 * *(*v25 + 96)) ^ 0x69)) ^ 0xB8;
  v8 = ((v7 >> 5) | (8 * v7)) << (v1 - 73);
  v9 = *(*v25 + 21) | (*(*v25 + 2) << 8);
  v10 = *(*v25 + 62) | (*(*v25 + 45) << 8) | (*(*v25 + 13) << 16);
  v11 = *(*v25 + 18) << 24;
  v12 = (v11 & 0xFE000000 | (*(*v25 + 83) << 48) | (*(*v25 + 20) << 32) | *&v10 & 0xE5881ALL | (*(*v25 + 67) << 40) | (v10 | v11) & 0x11A77E5) ^ (*(*v25 + 60) << 56);
  v13 = *(v6 + ((61 * *(*v25 + 11)) ^ 0x69)) ^ 0xB8;
  v14 = (4 * __ROR8__(((5 * ((*(v6 + ((*(*v25 + 32) + 3) ^ 0xDLL) + 260) - 76) ^ 0x82)) | (*(*v25 + 48) << 8) | (*(*v25 + 56) << 16)) & 0xFFFFFFFF00FFFFFFLL | (((v13 >> 5) | (8 * v13)) << 24) | (*(*v25 + 86) << 32) | (*(*v25 + 98) << 48) | (*(*v25 + 88) << 40), 2)) ^ (*(*v25 + 10) << 56);
  v15 = *(v5 + 8 * (v1 - 1201));
  v16 = *(v6 + ((61 * *(*v25 + 17)) ^ 0x69)) ^ 0xFFFFFFB8;
  v17 = (v16 >> 5) | (8 * v16);
  LOBYTE(v16) = *(v6 + ((61 * *(v15 + 29)) ^ 0x69)) ^ 0xB8;
  v19 = (((*(*v25 + 41) << 16) ^ (-65536 * *(*v25 + 41)) ^ (v9 - (v9 & 0xFFFFFFFFFF00FFFFLL | (*(*v25 + 41) << 16)))) + v9) ^ (((*(*v25 + 19) << 24) | (*(*v25 + 78) << 48)) + v8 + (*(*v25 + 77) << 40));
  v20 = *(*v25 + 97) << 56;
  v21 = (*(v15 + 49) << 32) | (*(v15 + 46) << 40) | *(*v25 + 82) | (*(v15 + 10) << 24) | (*(*v25 + 91) << 16) | (((v16 >> 5) | (8 * v16)) << 8) | (*(v15 + 31) << 48) | (v17 << 56);
  v24 = *(v15 + 32);
  v18 = (61 * *(*v25 + 7)) ^ 0x69;
  v22 = *a1 ^ ((*(v15 + 54) << 32) | (*(v15 + 51) << 24) | *(v15 + 2) | (*(v15 + 26) << 8) | (*(v15 + 40) << 16) | (*(v15 + 24) << 48) | ((((*(v6 + v18) ^ 0xB8) >> 5) | (8 * (*(v6 + v18) ^ 0xB8))) << 40) | (*(v15 + 11) << 56)) ^ 0x86F0CFC8B974B617;
  return (*(v4 + 8 * (((((v1 - 1340821354) & 0x4FEB4F69) == 1377) * ((v1 + 2883) ^ 0x10C2)) ^ (v1 + 2883))))(a1);
}

uint64_t sub_100194768(uint64_t a1, int a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, unsigned __int8 *a18)
{
  v24 = (a2 + 446);
  v25 = (v24 - 0x5633928AED274CB2) ^ v20;
  v26 = (v25 - 0x790F3037468B49E9 - 2 * (v25 & 0x6F0CFC8B974B63FLL ^ v20 & 0x28)) ^ v19;
  v27 = v22 ^ (a16 | (a14 << 32));
  v28 = (v18 & 0x600000E530012440 | 0x930950080032831DLL) ^ v18 & 0x930950080032831DLL | (v18 & 0x8D40B10C9480082 | 0x422A40206845820) ^ v18 & 0x422A40206845820;
  v29 = v27 ^ 0xFFCFB6077F86B59;
  v30 = v27 ^ 0xFFCFB6077F86B59 ^ v28;
  v31 = v26 ^ 0x5366A01EFB55F484 ^ v30 & (v27 ^ 0xF003049F880794A6);
  v32 = __ROR8__(__ROR8__(v30, 14) ^ 0xEF340EE9BF772B82, 50);
  v33 = ((v31 | v29) ^ (v26 ^ 0x5366A01EFB55F484) & v29) + ((v32 ^ 0xFC459022351F4432) & (v23 ^ 0x354D6EFEB40442A8) ^ 0x688E84C024C3D45FLL) - 2 * (((v31 | v29) ^ (v26 ^ 0x5366A01EFB55F484) & v29) & ((v32 ^ 0xFC459022351F4432) & (v23 ^ 0x354D6EFEB40442A8) ^ 0x688E84C024C3D45FLL));
  v34 = v33 ^ (v33 >> 61) ^ (v33 >> 39) ^ (8 * v33) ^ (v33 << 25);
  v35 = v25 ^ v23 ^ 0x354D6EFEB40442A8;
  v36 = v25 & (v23 ^ 0xCAB291014BFBBD57) ^ v30;
  v37 = v23 ^ v36 ^ 0x804D33EE27E3168ALL ^ (v26 ^ 0x5366A01EFB55F484) & ~v35;
  v38 = v37 ^ (v37 << 47) ^ ((v37 >> 17) ^ (v37 >> 10) | (v37 << 54));
  v39 = v36 ^ 0xF6DFAC932282EE21;
  v40 = (v36 ^ 0xF6DFAC932282EE21) >> ((v36 ^ 0x21 | 6) - (v36 ^ 0x27)) >> (((v36 ^ 0x21 | 6) - (v36 ^ 0x27)) ^ 6);
  v41 = (v36 ^ 0xF6DFAC932282EE21) >> 1;
  v42 = v36 & 0x800000000;
  if ((v41 & v42) != 0)
  {
    v42 = -v42;
  }

  v43 = v39 & 0xFFFFFFF7FFFFFFFFLL ^ (v39 << 63) ^ (v39 << 58) ^ (v42 + v41) ^ v40;
  v44 = v34 ^ v43;
  v45 = v38 & ~(v34 ^ v43);
  v46 = v43 & ~v34;
  v47 = (v26 ^ 0xAC995FE104AA0B7BLL) & v29 ^ v35;
  v48 = (v47 ^ 0x631787CCBD1AC167) >> 41;
  v49 = v48 & 0x51CEBA;
  v50 = (v47 ^ 0x631787CCBD1AC167) >> 7;
  v51 = v47 & 0x200000;
  if ((v50 & v47 & 0x200000) != 0)
  {
    v51 = -v51;
  }

  v52 = (v47 ^ 0x631787CCBD1AC167) & 0xFFFFFFFFFFDFFFFFLL ^ ((v47 ^ 0x631787CCBD1AC167) << 23) ^ ((v47 ^ 0x631787CCBD1AC167) << 57) ^ (v51 + v50);
  v53 = v49 - (v52 & 0x6276F812651CEBALL ^ v49);
  v54 = v52 & 0x6276F812651CEBALL ^ -(v52 & 0x6276F812651CEBALL) ^ v53;
  v55 = (v54 ^ (v52 & 0xF9D8907ED9AE3145 ^ v48 & 0x2E3145 | v49)) + 2 * (v54 & (v52 & 0xF9D8907ED9AE3145 ^ v48 & 0x2E3145 | v49));
  v56 = v31 ^ 0x1AEBE25ED3D2EF42 ^ v47 ^ ((v31 ^ 0x1AEBE25ED3D2EF42 ^ v47) << 45) ^ ((v31 ^ 0x1AEBE25ED3D2EF42 ^ v47) >> 19) ^ ((v31 ^ 0x1AEBE25ED3D2EF42 ^ v47) << 36) ^ ((v31 ^ 0x1AEBE25ED3D2EF42 ^ v47) >> 28) ^ v55;
  v57 = v56 ^ v46;
  v58 = v34 ^ v45 ^ 0xD9B87A9F2912D9A3 ^ v57;
  v59 = v58 ^ (v58 >> 61) ^ (v58 >> 39);
  v60 = v59 & 0x20000;
  if ((v59 & 0x20000 & (8 * v58)) != 0)
  {
    v60 = -v60;
  }

  v61 = v59 & 0xFFFFFFFFFFFDFFFFLL ^ (v58 << 25) ^ (v60 + 8 * v58);
  v62 = v34 & ~v56 ^ v55 ^ v38;
  v63 = (0xBABFFFFEAAEE509 - (v62 & 0x100000000000)) ^ v62 & 0xFFFFEFFFFFFFFFFFLL;
  v64 = ((v63 ^ (v63 >> 7) ^ (v63 >> 41)) + (v63 << 57) - 2 * ((v63 << 57) & v63)) ^ (v63 << (v53 & 0x16) << (v53 & 0x16 ^ 0x17));
  v65 = (v62 ^ 0xAA11A8D4C24EA035 ^ ((v62 ^ 0x55EE572B3DB15FCALL) + 1) ^ (v57 - (v62 ^ 0xAA11A8D4C24EA035 ^ v57))) + v57;
  v66 = ((v65 >> 19) & 0x190E13AAB21ALL ^ v65 & 0x3790790E13AAB21ALL | (v65 >> 19) & 0x6F1EC554DE5 ^ v65 & 0xC86F86F1EC554DE5) ^ (v65 >> 28);
  v67 = v55 & ~v38 ^ v44;
  v68 = v38 ^ v56 & ~(v55 ^ v38) ^ v67 ^ 0xB1104CC98D17B218;
  v69 = v68 ^ (v68 << 47) ^ ((v68 >> 17) ^ (v68 >> 10) | (v68 << 54));
  v70 = v64 + v69 - 2 * (v64 & v69);
  v71 = (v66 & 0x10) == 0;
  v72 = v64 ^ (v65 << 45) ^ v66 & 0xFFFFFFFFFFFFFFEFLL ^ (v66 & 0x10 | (v65 << 36));
  v73 = v61 & ~v72 ^ v70;
  v74 = v73 ^ 0x1CC7D5CEC2A5A8A9 ^ ((v73 ^ 0x1CC7D5CEC2A5A8A9) >> 41) ^ ((v73 ^ 0x1CC7D5CEC2A5A8A9) >> 7) ^ ((v73 ^ 0x1CC7D5CEC2A5A8A9) << 23);
  v75 = (v74 & 0x80000000 | ((v73 ^ 0x1CC7D5CEC2A5A8A9) << 57)) ^ v74 & 0xFFFFFFFF7FFFFFFFLL;
  v76 = v72 & ~v70;
  v77 = v67 ^ 0xA3;
  v78 = v67 ^ 0x8F8EF16FAABC99A3 ^ __ROR8__(v67 ^ 0x8F8EF16FAABC99A3, 1) ^ ((v67 ^ 0x8F8EF16FAABC99A3) << 58) ^ ((v67 ^ 0x8F8EF16FAABC99A3) >> 6);
  v79 = v61 ^ v78;
  v80 = v70 & ~v69 ^ v61 ^ v78;
  v81 = v80 ^ v69 ^ v76;
  v82 = v81 ^ 0x2466C25A2447EE9;
  v83 = v72 ^ 0x2000000000000000;
  if (v71)
  {
    v83 = 0xDFFFFFFFFFFFFFFFLL;
  }

  v84 = (v82 ^ (v82 << 54)) + (v82 >> 10) - 2 * ((v82 >> 10) & v82);
  v85 = v82 >> 17;
  v86 = v84 & 0x1000000;
  if ((v84 & 0x1000000 & v85) != 0)
  {
    v86 = -v86;
  }

  v87 = v84 & 0xFFFFFFFFFEFFFFFFLL ^ (v81 << 47) ^ (v86 + v85);
  v88 = v80 ^ 0x5BE06428DB24AD38 ^ ((v80 ^ 0x5BE06428DB24AD38) >> 1) ^ ((((v80 ^ 0x5BE06428DB24AD38) << 58) ^ (v80 << 63)) & 0xFC00000000000000 | ((v80 ^ 0x5BE06428DB24AD38) >> 6));
  v89 = v78 & ~v61;
  v90 = v72 & 0x2000000000000000;
  if ((v72 & 0x2000000000000000 & v89) != 0)
  {
    v90 = -v90;
  }

  v91 = (v90 + v89) ^ v83 & v72;
  v92 = (v87 ^ 0xC08B7FFFFFFFFFFFLL) & v75;
  v93 = v61 ^ v69 & ~v79 ^ 0xBFB5A271BCBA41C8 ^ v91;
  v94 = v93 ^ __ROR8__(v93, 61) ^ (v93 >> 39) ^ (v93 << 25);
  *(&v95 + 1) = v91 ^ v73;
  *&v95 = v91 ^ v73 ^ 0xE6EAFDF4C918B49CLL;
  v96 = v95 ^ __ROR8__(v95, 19) ^ (v95 >> 28) ^ v75;
  v97 = v87 ^ 0x3F74800000000000 ^ v75;
  v98 = v92 ^ v94 ^ v88;
  v99 = v87 ^ v98 ^ 0x11C981ED05E2D7DDLL ^ (__ROR8__(__ROR8__(v97, 6) ^ 0x4124F5CECA4DAA7ELL, 58) ^ 0xB6C28C4D6C95606FLL) & (v96 ^ 0x918B49C000000000);
  v100 = v96 ^ 0x918B49C000000000 ^ v88 & ~v94;
  v101 = v94 ^ v100 ^ (v87 ^ 0x3F74800000000000) & ~(v94 ^ v88) ^ 0x7E293384D926A275;
  v102 = (v94 ^ v96 ^ v88 & ~v94 ^ v87 & ~(v94 ^ v88) ^ 0x75) & 0x3D;
  v103 = v101 ^ (8 * v101) ^ (v101 >> 39) ^ (v101 >> v102 >> (v102 ^ 0x3Du));
  v104 = v103 & 0xD6D49CE25E50C9C9 ^ (v101 << 25) & 0xD6D49CE25E000000 | v103 & 0x292B631DA1AF3636 ^ (v101 << 25) & 0x292B631DA0000000;
  v105 = __ROR8__(__ROR8__(v98, 54) ^ 0x857EF54F8AB843C1, 10) ^ 0x7FEA1D22F8EF176DLL;
  v106 = 0x2000000000000;
  if ((v105 & 0x2000000000000) != 0)
  {
    v106 = 0xFFFE000000000000;
  }

  v107 = v105 ^ __ROR8__(v105, 1) ^ (v105 << 58) & 0xC00000000000000 ^ ((v106 + v105) >> 6) ^ (v104 + ((v105 << 58) & 0xF000000000000000) - 2 * (v104 & (v105 << 58) & 0xF000000000000000));
  v108 = v99 ^ __ROR8__(v99, 10) ^ __ROR8__(v99, 17);
  v109 = v107 ^ 0xFFFFF7FFFFFFFFFFLL;
  v110 = v107 ^ 0x80000000000;
  v111 = v107 ^ 0x80000000000 ^ v108;
  if (v104 == 0x293736E00C4C9059)
  {
    v111 = v109;
  }

  v112 = v97 ^ (v96 ^ 0x6E74B63FFFFFFFFFLL) & v94;
  v113 = v100 ^ 0xE8D7D4BAE3B5A9F1 ^ v112;
  v114 = v112 ^ 0xD4FF360AF3B5A6D8 ^ ((v112 ^ 0xD4FF360AF3B5A6D8) << 23) ^ ((v112 ^ 0xD4FF360AF3B5A6D8) >> 7) ^ (((v112 ^ 0xD4FF360AF3B5A6D8) >> 41) | ((v112 ^ 0xD4FF360AF3B5A6D8) << 57));
  v115 = v113 ^ (v113 >> 28) ^ (v113 >> 19) ^ (v113 << 36) ^ (v113 << 45) ^ v114;
  v116 = v110 & ~v104 ^ v115;
  v117 = v104 ^ v116 ^ v111 & v108 ^ 0x293736E00C4C9059 ^ __ROR8__(v104 ^ v116 ^ v111 & v108 ^ 0x293736E00C4C9059, 61) ^ ((v104 ^ v116 ^ v111 & v108 ^ 0x293736E00C4C9059) >> 39) ^ ((v104 ^ v116 ^ v111 & v108 ^ 0x293736E00C4C9059) << 25);
  v118 = v108 ^ v114;
  v119 = v104 & ~v115 ^ v108 ^ v114;
  v120 = v119 ^ 0xB238203FB1C3382DLL ^ ((v119 ^ 0xB238203FB1C3382DLL) >> 7) ^ ((v119 ^ 0xB238203FB1C3382DLL) >> 41) ^ ((v119 ^ 0xB238203FB1C3382DLL) << 23) ^ ((v119 ^ 0xB238203FB1C3382DLL) << 57);
  v121 = v119 ^ 0x5D4E66E0AE5EA213 ^ v116;
  v122 = v121 ^ ((v121 >> 28) | (v121 << 45)) ^ v120 ^ ((v121 << 36) + (v121 >> 19) - 2 * ((v121 << 36) & (v121 >> 19)));
  v123 = v110 ^ v114 & ~v108;
  v124 = v115 & ~v118 ^ v108 ^ v123;
  v125 = (v124 >> 10) ^ 0x1B00AD46F08B00;
  v126 = v125 & 0x400000;
  v71 = (v125 & 0x400000 & v124) == 0;
  v127 = v124 ^ 0x6C02B51BC22C02F6;
  v128 = v125 & 0xFFFFFFFFFFBFFFFFLL ^ (v127 >> 17) | (v127 << 54);
  if (!v71)
  {
    v126 = -v126;
  }

  v129 = ((v126 + v127) ^ (v127 << 47)) + v128 - 2 * (((v126 + v127) ^ (v127 << 47)) & v128);
  v130 = v123 - ((2 * v123) & 0x1FDEAEB0F937ED68) + 0xFEF57587C9BF6B4;
  *(&v131 + 1) = v123;
  *&v131 = v130;
  v132 = v130 >> 6;
  v133 = (v131 >> 1) ^ v130 ^ (v130 << 58) ^ (v130 >> 6);
  v134 = v129 ^ v120;
  v135 = v120 & ~v129 ^ v117 ^ v133;
  v136 = v122 & ~(v129 ^ v120) ^ v129;
  v137 = v136 & 0xFFFDFFFFFFFFFFFFLL;
  v138 = v136 & 0x2000000000000;
  if ((v138 & v135) != 0)
  {
    v138 = -v138;
  }

  v139 = v133 & ~v117 ^ v122;
  v140 = v117 ^ v139 ^ v129 & ~(v117 ^ v133) ^ 0x72F754DD0432D3F9;
  v141 = v140 & 0x782CE0494ABDE687 ^ (v140 >> 61) | v140 & 0x87D31FB6B5421978;
  v142 = ((8 * v140) ^ (-8 * v140) ^ (v141 - (v141 ^ (8 * v140)))) + v141;
  v143 = __ROR8__(__ROR8__(__ROR8__((v138 + v135) ^ v137, 19) ^ 0xCA650050BBA23DB1, 11) ^ 0x1F3D76508F4996A7, 34);
  v144 = v143 ^ ((v143 ^ 0x6B42952B434A325BLL) << 47) ^ ((v143 ^ 0x6B42952B434A325BLL) << 54);
  v145 = v144 ^ ((v143 ^ 0x6B42952B434A325BuLL) >> 10);
  v146 = v145 ^ ((v143 ^ 0x6B42952B434A325BuLL) >> 17);
  v147 = v142 ^ (v140 << 25);
  v148 = v134 ^ v117 & ~v122;
  v149 = v148 ^ 0x9C7AE6751BC5CCE5 ^ ((v148 ^ 0x9C7AE6751BC5CCE5) << 23) ^ ((v148 ^ 0x9C7AE6751BC5CCE5) >> 7) ^ ((v148 ^ 0x9C7AE6751BC5CCE5) >> 41) ^ ((v148 ^ 0x9C7AE6751BC5CCE5) << ((v99 >> 17) & 0x39) << ((v99 >> 17) & 0x39 ^ 0x39));
  v150 = (v135 ^ 0x9463E71571E85F90) >> 1;
  v151 = (v150 ^ v135 ^ 0x9463E71571E85F90) & 0x35BE343139EB9158;
  v152 = (v150 & 0x4A41CBCEC6146EA7 ^ -(v150 & 0x4A41CBCEC6146EA7) ^ (((v135 ^ 0x9463E71571E85F90) & 0xCA41CBCEC6146EA7) - (v150 & 0x4A41CBCEC6146EA7 ^ (v135 ^ 0x9463E71571E85F90) & 0xCA41CBCEC6146EA7))) + ((v135 ^ 0x9463E71571E85F90) & 0xCA41CBCEC6146EA7);
  v153 = ((v152 ^ v151) + 2 * (v152 & v151)) ^ ((v135 ^ 0x9463E71571E85F90) >> 6);
  v154 = (v153 + (v135 << 63)) ^ ((v135 ^ 0x9463E71571E85F90) << 58);
  v155 = (v147 | (v140 >> 39)) ^ v142 & (v140 >> 39);
  v156 = v148 ^ v139;
  v157 = v156 ^ 0xB9C03D0FBAEBE93ELL;
  v158 = v156 ^ ((v156 ^ 0xB9C03D0FBAEBE93ELL) >> 19) ^ ((v156 ^ 0xB9C03D0FBAEBE93ELL) << 36) ^ ((v156 ^ 0xB9C03D0FBAEBE93ELL) << 45);
  a4[7] = BYTE5(v158) ^ 0x3D;
  v159 = v158 ^ (v157 >> 28);
  *(a11 + 51) = BYTE3(v159) ^ 0xBA;
  a4[91] = BYTE2(v155);
  *(a11 + 2) = v159 ^ 0x3E;
  *(a11 + 26) = BYTE1(v159) ^ 0xE9;
  *(a11 + 11) = HIBYTE(v158) ^ 0xB9;
  *(a11 + 29) = BYTE1(v155);
  *(a11 + 24) = BYTE6(v158) ^ 0xC0;
  a4[56] = BYTE2(v153);
  *(a11 + 40) = BYTE2(v159) ^ 0xEB;
  *(a11 + 54) = BYTE4(v159) ^ 0xF;
  *(a11 + 49) = ((BYTE4(v147) ^ 0xAA) + ((((v146 ^ 0x6B42952B434A325BLL) - 1) & ~v144 & 0x8000000000000000) != 0) * (BYTE4(v147) - (BYTE4(v147) ^ 0xAA))) & 0x55 | BYTE4(v147) & 0xAA;
  *(a11 + 10) = BYTE3(v155);
  a4[82] = v155;
  *(a11 + 46) = BYTE5(v147);
  a4[48] = BYTE1(v153);
  *(a11 + 31) = BYTE6(v147);
  a4[17] = HIBYTE(v147);
  a4[62] = v146 ^ 0x5B;
  a4[98] = BYTE6(v153);
  a4[11] = BYTE3(v153);
  a4[13] = BYTE2(v146) ^ 0x4A;
  a4[45] = BYTE1(v146) ^ 0x32;
  a4[10] = HIBYTE(v154);
  a4[32] = v153;
  a4[88] = BYTE5(v153);
  a4[86] = v154 >> (v132 & 0x20) >> (v132 & 0x20 ^ 0x20);
  LOBYTE(v153) = *(a12 + ((61 * (((v145 ^ ((v143 ^ 0x6B42952B434A325BuLL) >> 17)) >> 24) ^ 0x43)) ^ 0x69)) ^ 0xB8;
  a4[18] = (v153 >> 5) | (8 * v153);
  LOBYTE(v145) = *(a12 + ((61 * (BYTE4(v146) ^ 0x2B)) ^ 0x69));
  a4[83] = BYTE6(v145) ^ 0x42;
  a4[60] = HIBYTE(v144) ^ 0x6B;
  a4[96] = BYTE4(v149);
  a4[2] = BYTE1(v149);
  a4[97] = HIBYTE(v149);
  a4[78] = BYTE6(v149);
  a4[41] = BYTE2(v149);
  a4[20] = ((v145 ^ 0xB8) >> 5) | (8 * (v145 ^ 0xB8));
  a4[67] = BYTE5(v146) ^ 0x95;
  a4[21] = v149;
  a4[19] = BYTE3(v149);
  a4[77] = v149 >> (v77 & 0x28) >> (v77 & 0x28 ^ 0x28u);
  *(a11 + 32) = a14 + 1;
  v160 = *a15;
  v161 = *(*a15 + 80) | (*(*a15 + 27) << 8) | (*(*a15 + 46) << 16);
  v162 = *(*a15 + 90) | (*(*a15 + 25) << 8);
  v163 = v162 ^ 0x62F3;
  if (!v161)
  {
    v163 = 40204;
  }

  v164 = ((v162 & 0x62F3 | (*(v160 + 54) << 16)) + (v163 & v162)) ^ (*(v160 + 75) << 24);
  v165 = ((v164 ^ -v164 ^ ((*(v160 + 49) << 32) - (v164 & 0xFFFFFF00FFFFFFFFLL | (*(v160 + 49) << 32)))) + (*(v160 + 49) << 32)) ^ ((*(v160 + 61) << 40) | (*(v160 + 89) << 48) | (*(v160 + 16) << 56));
  v166 = *(&off_10038FA40 + (a2 ^ 0x316));
  v167 = *(v166 + 260 + (*(v160 + 81) ^ 0x82)) ^ 0xFFFFFFFC;
  v168 = (8 * v167) & 0x20;
  if ((v168 & v167) != 0)
  {
    v168 = -v168;
  }

  v169 = (*(v160 + 84) << 56) | (*(v160 + 40) << 48) | (*(v160 + 28) << 40) | (*(v160 + 22) << 24) | (*(v160 + 57) << 16) | *(v160 + 64) | (*(v160 + 37) << 8) | ((((8 * v167) & 0xDF ^ 0x29 ^ (v168 + v167)) - 91) << 32);
  v170 = (*(v160 + 53) << 24) | (((*(v166 + 260 + (*(v160 + 31) ^ 0x82)) ^ (8 * *(v166 + 260 + (*(v160 + 31) ^ 0x82))) ^ 0x35) - 91) << 32) | (*(v160 + 72) << 40) | (*(v160 + 59) << 48) | v161 | (*(v160 + 3) << 56);
  v171 = v166 + (*(v160 + 93) ^ 0x9BLL);
  v172 = (*(v166 + 530 + ((83 * *(v160 + 8)) ^ 0xE7)) - ((83 * *(v160 + 8)) ^ 0x79)) ^ 0xC9;
  v173 = *a18 ^ (((-23 * (*(v171 + 3) ^ 0x77)) << ((*(v160 + 68) - 1) & 0x10) << ((*(v160 + 68) - 1) & 0x10 ^ 0x10u)) | (*(v160 + 9) << 24)) ^ ((*(v160 + 92) << 56) | (*(v160 + 52) << 40) | *(v160 + 33) | (*(v160 + 87) << 8)) ^ (*(v160 + 73) << 32) ^ (*(v160 + 58) << 48);
  return (*(v21 + 8 * ((67 * ((v24 - 446) + (223 * (v24 ^ 0x506)) != 1276)) | v24)))(a18, 223 * (v24 ^ 0x506), ((*(v160 + 29) << 56) | (*(v160 + 65) << 48) | *(v160 + 39) | (*(v160 + 94) << 24) | (*(v160 + 34) << 8) | (*(v160 + 24) << 16) | (*(v160 + 42) << 32)) ^ (((v172 >> 2) | (v172 << 6)) << 40) ^ 0x10C67F874C6C803BLL, v160, (v24 - 446), v170);
}

uint64_t sub_100195B64@<X0>(int a1@<W1>, uint64_t a2@<X2>, _BYTE *a3@<X3>, uint64_t a4@<X5>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = a2 ^ ((a15 | (a11 << 32)) + a6 - ((2 * (a15 | (a11 << 32))) & 0x218CFF0E98D90076));
  v20 = v19 ^ 0x209C38D4806A7162;
  v21 = v19 ^ 0x209C38D4806A7162 ^ a4;
  v22 = v21 ^ 0x2E9282AA51094BEALL ^ (v17 ^ 0xEBFAFA2034B203E9) & (v15 ^ 0xAFE6FAC9C976986CLL);
  v23 = v22 ^ 0xF6DFAC932282EE21 ^ __ROR8__(v22 ^ 0xF6DFAC932282EE21, 1) ^ ((v22 ^ 0xF6DFAC932282EE21) << 58) ^ ((v22 ^ 0xF6DFAC932282EE21) >> 6);
  v24 = v17 ^ 0xEBFAFA2034B203E9 ^ v16;
  v25 = (v24 & 0x40000000 | 0xCE4F74FF1D9F510DLL) ^ v24 & 0xFFFFFFFFBFFFFFFFLL;
  v26 = (v21 ^ 0x2E9282AA51094BEALL) & (v19 ^ 0xDF63C72B7F958E9DLL);
  v27 = v15 ^ 0x5019053636896793;
  v28 = v19 ^ v26 ^ v25 ^ 0x4812BC14A4A9A53DLL ^ ((((v21 ^ 0x2E9282AA51094BEALL) - (v21 ^ 0xD16D7D55AEF6B415)) ^ 0xFFFFFFFFFFFFFFFELL) + (v21 ^ 0x2E9282AA51094BEALL)) & v27;
  v29 = ((8 * v28) ^ (-8 * v28) ^ ((v28 ^ (v28 >> 61) ^ (v28 >> 39) ^ (8 * v28)) + (v28 ^ (v28 >> 61) ^ (v28 >> 39)) - 2 * (v28 ^ (v28 >> 61) ^ (v28 >> 39) ^ (8 * v28)))) + (v28 ^ (v28 >> 61) ^ (v28 >> 39));
  v30 = (v29 & 8 | (v28 << 25)) ^ v29 & 0xFFFFFFFFFFFFFFF7;
  v31 = v17 ^ 0xEBFAFA2034B203E9 ^ v27;
  v32 = (v20 & (v24 ^ 0x31B08B00E260AEF2) ^ -(v20 & (v24 ^ 0x31B08B00E260AEF2)) ^ (v31 - (v20 & (v24 ^ 0x31B08B00E260AEF2) ^ v31))) + v31;
  v33 = ((((v32 ^ 0x631787CCBD1AC167) << 23) ^ ((v32 ^ 0x631787CCBD1AC167) << 57)) & 0xFFFFFFFFFF800000 | ((v32 ^ 0x631787CCBD1AC167) >> 41)) ^ v32 ^ 0x631787CCBD1AC167;
  v34 = (((v32 ^ 0x631787CCBD1AC167) >> 7) ^ -((v32 ^ 0x631787CCBD1AC167) >> 7) ^ (v33 - (v33 ^ ((v32 ^ 0x631787CCBD1AC167) >> 7)))) + v33;
  v35 = __ROR8__(__ROR8__(v25 & ~v31 ^ v27 ^ v22, 39) ^ 0x55A190B0FFEA3DD3, 25);
  v36 = ((v35 ^ 0x401EB4BA432F0C5DLL) << 54) ^ ((v35 ^ 0x401EB4BA432F0C5DLL) << 47) ^ ((v35 ^ 0x401EB4BA432F0C5DLL ^ ((v35 ^ 0x401EB4BA432F0C5DuLL) >> 10)) + ((v35 ^ 0x401EB4BA432F0C5DuLL) >> 17) - 2 * ((v35 ^ 0x401EB4BA432F0C5DLL ^ ((v35 ^ 0x401EB4BA432F0C5DuLL) >> 10)) & ((v35 ^ 0x401EB4BA432F0C5DuLL) >> 17)));
  v37 = v32 ^ v26 ^ v25 ^ 0x1AEBE25ED3D2EF42 ^ ((v32 ^ v26 ^ v25) << 36) ^ ((v32 ^ v26 ^ v25 ^ 0x1AEBE25ED3D2EF42) >> 19) ^ (((v32 ^ v26 ^ v25 ^ 0x1AEBE25ED3D2EF42) >> 28) | ((v32 ^ v26 ^ v25 ^ 0x1AEBE25ED3D2EF42) << 45));
  v38 = v30 ^ v23;
  v39 = v30 ^ v23 ^ v34 & ~v36;
  v40 = v37 ^ v34;
  v41 = v40 ^ 0x3D2EF42000000000;
  v42 = v34 ^ v36;
  v43 = (v40 ^ 0x3D2EF42000000000) & ~(v34 ^ v36) ^ v36 ^ v39;
  v44 = v43 - 0x4EEFB33672E84DE8 - ((2 * v43) & 0x622099931A2F6430);
  v45 = (v44 >> 6) & 0x3FFFFFFFFFFF800 ^ __ROR8__(v44 ^ (v44 >> 10) ^ (v44 << 47) ^ (v44 << 54), 53) ^ 0xB9C92EAED23BAC62;
  v46 = v30 & (~(2 * (v40 ^ 0x3D2EF42000000000)) + (v40 ^ 0x3D2EF42000000000));
  v47 = v46 + v42 - 2 * (v46 & v42);
  v48 = v23 & ~v30;
  if ((v48 & 0x4000000000000000 & v40) != 0)
  {
    v49 = -(v48 & 0x4000000000000000);
  }

  else
  {
    v49 = v48 & 0x4000000000000000;
  }

  v50 = v49 + v41;
  v51 = v50 ^ v48 & 0xBFFFFFFFFFFFFFFFLL;
  v52 = v47 ^ 0xAA11A8D4C24EA035 ^ v51;
  v53 = v47 ^ 0xBABFFFFEAAEE509;
  v54 = ((((v53 >> 41) | (v53 << 57)) ^ v53 ^ -(((v53 >> 41) | (v53 << 57)) ^ v53) ^ ((v53 >> 7) - (((v53 >> 41) | (v53 << 57)) ^ v53 ^ (v53 >> 7)))) + (v53 >> 7)) ^ (v53 << 23);
  v55 = (v52 << 36) ^ (v52 << 45) ^ (((v52 >> 28) ^ -(v52 >> 28) ^ ((v52 ^ (v52 >> 19)) - (v52 ^ (v52 >> 19) ^ (v52 >> 28)))) + (v52 ^ (v52 >> 19)));
  v56 = __ROR8__(v45, 11);
  v57 = v56 ^ 0x8C573925D5DA4775;
  v58 = v55 ^ v54;
  v59 = v54 + (v56 ^ 0x8C573925D5DA4775) - 2 * ((v56 ^ 0x8C573925D5DA4775) & v54);
  v60 = (v58 & ~v59 ^ v56 ^ 0x8C573925D5DA4775) + 0x2466C25A2447EE9 - ((2 * (v58 & ~v59 ^ v56 ^ 0x8C573925D5DA4775)) & 0x48CD84B4488FDD2);
  v61 = v56 ^ 0x73A8C6DA2A25B88ALL;
  v62 = v39 ^ 0x8F8EF16FAABC99A3 ^ (v39 << 58) ^ __ROR8__(v39 ^ 0x8F8EF16FAABC99A3, 1) ^ ((v39 ^ 0x8F8EF16FAABC99A3) >> 6);
  v63 = v36 & ~v38 ^ 0xD9B87A9F2912D9A3;
  v64 = v51 + v30;
  v65 = ((v51 + v30) ^ 0xBD11CD688820105CLL) - 2 * (v50 & v30);
  v66 = v65 + ((2 * v64) & 0x7A239AD1104020B8) + 0x42EE329777DFEFA4 + v63 - 2 * ((v65 + ((2 * v64) & 0x7A239AD1104020B8) + 0x42EE329777DFEFA4) & v63);
  v67 = 8 * v66;
  v68 = (8 * v66) ^ v66 ^ ((v66 >> 61) ^ (v66 >> 39) | (v66 << 25));
  v69 = (((8 * v66) ^ v66) ^ (v66 >> 61) ^ (v66 >> 39)) & 0x1000;
  if (((((8 * v66) ^ v66) ^ (v66 >> 61) ^ (v66 >> 39)) & 0x1000 & v62) != 0)
  {
    v69 = -v69;
  }

  v70 = v69 + (v62 ^ 0x8C00000000000000);
  v71 = v70 ^ v68 & 0xFFFFFFFFFFFFEFFFLL;
  v72 = v71 ^ -v71 ^ ((v59 & v61) - (v71 ^ v59 & v61));
  v73 = v72 & v59 & v61;
  v74 = v72 ^ v59 & v61;
  v75 = v74 + 2 * v73;
  v76 = v75 ^ v60 ^ ((v75 ^ v60) << 47) ^ (((v75 ^ v60) >> 10) ^ ((v75 ^ v60) >> 17) | ((v75 ^ v60) << 54));
  v77 = v68 & ~v58 ^ v59;
  v78 = v77 ^ 0x1CC7D5CEC2A5A8A9 ^ __ROR8__(v77 ^ 0x1CC7D5CEC2A5A8A9, 41) ^ ((v77 ^ 0x1CC7D5CEC2A5A8A9) << 57) ^ ((v77 ^ 0x1CC7D5CEC2A5A8A9) >> 7);
  v79 = v70 & ~v68 ^ v58;
  v80 = v79 ^ v77 ^ 0xE6EAFDF4C918B49CLL ^ v78 ^ __ROR8__(v79 ^ v77 ^ 0xE6EAFDF4C918B49CLL, 19) ^ ((v79 ^ v77 ^ 0xE6EAFDF4C918B49CLL) << 36) ^ ((v79 ^ v77 ^ 0xE6EAFDF4C918B49CLL) >> 28);
  v81 = v76 ^ v78;
  v82 = v76 ^ 0x2EBD01ED05E2D7DDLL ^ v80 & ~(v76 ^ v78);
  v83 = v68 ^ 0xBFB5A271BCBA41C8 ^ v57 & ~v71 ^ v79;
  v84 = v83 ^ __ROR8__(v83, 61) ^ (v83 >> 39) ^ (v83 << 25);
  v85 = v78 & ~v76;
  v86 = v75 ^ 0x5BE06428DB24AD38 ^ (v74 << 63) ^ __ROR8__(v75 ^ 0x5BE06428DB24AD38, 6) ^ ((v75 ^ 0x5BE06428DB24AD38) >> 1);
  v87 = v86 ^ v84 ^ v85;
  v88 = v82 ^ v87 ^ __ROR8__(v82 ^ v87, 17) ^ ((v82 ^ v87) >> 10) ^ ((v82 ^ v87) << 54);
  v89 = v86 & ~v84 ^ v80;
  if ((a9 ^ a5 ^ (-52501566 - (a5 ^ 0xFCDEE3C2))) == 0xFFFFFFFF)
  {
    v90 = -1;
  }

  else
  {
    v90 = v84;
  }

  v91 = v81 ^ (v80 ^ v90) & v84;
  v92 = (v91 + v89 - 2 * (v91 & v89)) ^ 0xE8D7D4BAE3B5A9F1;
  v93 = v92 ^ (v92 << 36) ^ (v92 >> 19) ^ ((v92 >> 28) | (v92 << 45));
  v94 = v91 ^ 0xD4FF360AF3B5A6D8 ^ ((v91 ^ 0xD4FF360AF3B5A6D8) >> 7) ^ ((v91 ^ 0xD4FF360AF3B5A6D8) << 23) ^ (((v91 ^ 0xD4FF360AF3B5A6D8) >> 41) | ((v91 ^ 0xD4FF360AF3B5A6D8) << 57));
  v95 = v93 & 0xFFFFFF7FFFFFFFFFLL;
  v96 = v93 & 0x8000000000;
  if ((v96 & v94) != 0)
  {
    v96 = -v96;
  }

  v97 = (v96 + v94) ^ v95;
  v98 = (v94 ^ -v94 ^ (v88 - (v88 ^ v94))) + v88;
  v99 = v84 ^ 0x7E293384D926A275 ^ (v84 ^ ~v86) & v76 ^ v89;
  v100 = v99 ^ (v99 << 25) ^ (v99 << (v82 & 3) << (v82 & 3 ^ 3));
  v101 = v100 & 0x401AE85C39E08393 ^ (v99 >> 39) & 0x1E08393 | v100 & 0xBFE517A3C61F7C6CLL ^ (v99 >> 39) & 0x1F7C6C;
  LOBYTE(v99) = *(a10 + ((((v99 >> 61) ^ -(v99 >> 61) ^ (90 - ((v99 >> 61) ^ 0x5A))) + 90) ^ 0xD8));
  v102 = ((v99 ^ (8 * v99) ^ 0x35) - 91) ^ v101;
  *(&v103 + 1) = __ROR8__(__ROR8__(__ROR8__(v87, 5) ^ 0xDF94DB097D083F61, 18) ^ 0x3FE7FC1D34D03BF9, 41);
  *&v103 = *(&v103 + 1) ^ 0x738A4BADF695A6B8;
  v104 = (v103 >> 1) ^ *(&v103 + 1) ^ 0x738A4BADF695A6B8 ^ ((*(&v103 + 1) ^ 0x738A4BADF695A6B8uLL) >> 6) ^ ((*(&v103 + 1) ^ 0x738A4BADF695A6B8) << 58);
  v105 = v102 ^ v104;
  v106 = v102 ^ v104 ^ v98 & ~v88;
  v107 = v97 & ~v98 ^ v88 ^ v106;
  v108 = v107 ^ 0x6C02B51BC22C02F6;
  v109 = (v107 ^ 0x6C02B51BC22C02F6) >> 17;
  v110 = (v107 >> 10) ^ 0x1B00AD46F08B00 ^ v107 ^ 0x6C02B51BC22C02F6 ^ ((v107 ^ 0x6C02B51BC22C02F6) << 47);
  v111 = (v110 + v109 - 2 * (v110 & v109)) ^ (v108 << 54);
  v112 = v102 & ~v97 ^ v98;
  v113 = (v112 + ((((2 * a11) & 0xFFFFFFFC) - a11) ^ a11 ^ (((397 * (((a1 - 1568) | 0x370) ^ 0x37A)) ^ 0x4A7) - a11)) + (a11 ^ 1) - 1) ^ 0xB238203FB1C3382DLL;
  v114 = v104 & ~v102 ^ v97;
  v115 = v114 ^ 0x5D4E66E0AE5EA213 ^ v112 ^ ((v114 ^ 0x5D4E66E0AE5EA213 ^ v112) >> 19) ^ ((((v114 ^ 0x5D4E66E0AE5EA213 ^ v112) << 45) ^ ((v114 ^ 0x5D4E66E0AE5EA213 ^ v112) << 36)) & 0xFFFFFFF000000000 | ((v114 ^ 0x5D4E66E0AE5EA213 ^ v112) >> 28));
  LOBYTE(v112) = (v114 ^ 0x13 ^ v112 ^ ((v114 ^ 0x5D4E66E0AE5EA213 ^ v112) >> 19) ^ ((v114 ^ 0x5D4E66E0AE5EA213 ^ v112) >> 28)) & 0x29;
  v116 = v113 ^ (v113 << 57) ^ (v113 << 23) ^ (v113 >> 7) ^ (v113 >> v112 >> (v112 ^ 0x29u));
  v117 = v116 ^ v111;
  v118 = v102 ^ 0x293736E00C4C9059 ^ v114 ^ ((v105 ^ v88) + (v88 | ~v105) + 1);
  v119 = v118 ^ (v118 >> 39) ^ (((v118 << 25) ^ (8 * v118)) & 0xFFFFFFFFFFFFFFF8 | (v118 >> 61));
  v120 = v116 ^ v115;
  v121 = v119 & ~(v116 ^ v115) ^ -(v119 & ~(v116 ^ v115)) ^ ((v116 ^ v111) - (v119 & ~(v116 ^ v115) ^ v116 ^ v111));
  v122 = (v121 ^ v116 ^ v111) + 2 * (v121 & (v116 ^ v111));
  v123 = v122 ^ 0xE886A79D5D99B184;
  v124 = ((v122 ^ 0xE886A79D5D99B184) >> 41) & 0x753398 ^ (v122 ^ 0xE886A79D5D99B184) & 0x2D0CB5AAB5F53398 | ((v122 ^ 0xE886A79D5D99B184) >> 41) & 0xACC67 ^ (v122 ^ 0xE886A79D5D99B184) & 0xD2F34A554A0ACC67;
  v125 = v106 ^ 0xFEF57587C9BF6B4 ^ (v106 << 63) ^ ((v106 ^ 0xFEF57587C9BF6B4) << 58) ^ ((v106 ^ 0xFEF57587C9BF6B4) >> 1) ^ ((v106 ^ 0xFEF57587C9BF6B4) >> 6);
  v126 = v116 & ~v111 ^ v119 ^ v125;
  *(&v103 + 1) = v126;
  *&v103 = v126 ^ 0x3642BA73F8FACC82;
  v127 = ((v126 ^ 0x3642BA73F8FACC82) << 58) & (v126 ^ 0x3642BA73F8FACC82) ^ (v103 >> 1) ^ (v126 ^ 0x3642BA73F8FACC82 ^ ((v126 ^ 0x3642BA73F8FACC82) >> 6) | ((v126 ^ 0x3642BA73F8FACC82) << 58));
  v128 = v111 ^ v115;
  if (!v67)
  {
    v128 = v120;
  }

  v129 = v120 ^ v125 & ~v119;
  v130 = v129 + (v111 & ~(v119 ^ v125) ^ v119) - 2 * (v129 & (v111 & ~(v119 ^ v125) ^ v119));
  v131 = (v130 ^ 0xCE9131651EF735E4) >> 39;
  v132 = v130 ^ __ROR8__(v130 ^ 0xCE9131651EF735E4, 61) ^ ((v130 ^ 0xCE9131651EF735E4) << 25);
  v133 = v132 ^ v131;
  v134 = v122 ^ v129;
  v135 = v134 ^ 0x1AF1A5425C3174B2;
  if (v134)
  {
    v136 = (v134 ^ 0x1AF1A5425C3174B2) - 1;
  }

  else
  {
    v136 = v134 ^ 0x1AF1A5425C3174B3;
  }

  v137 = v136 >> 28;
  v138 = v136 ^ 1;
  v139 = (v137 ^ (v135 >> 19) | (v138 << 45)) ^ v135;
  v140 = v139 ^ (v138 << 36);
  a3[87] = BYTE1(v139);
  a3[52] = BYTE5(v140);
  a3[73] = BYTE4(v140);
  a3[9] = BYTE3(v139);
  a3[39] = v133 ^ 0xE4;
  a3[92] = HIBYTE(v140);
  a3[58] = BYTE6(v140);
  a3[33] = v139;
  a3[93] = BYTE2(v139);
  a3[24] = BYTE2(v133) ^ 0xF7;
  a3[42] = BYTE4(v132) ^ 0x65;
  a3[94] = HIBYTE(v133) ^ 0x1E;
  a3[34] = BYTE1(v133) ^ 0x35;
  v141 = *(a10 + (BYTE5(v132) ^ 0xB3));
  a3[46] = BYTE2(v127);
  a3[27] = BYTE1(v127);
  a3[53] = BYTE3(v127);
  a3[65] = BYTE6(v132) ^ 0x91;
  a3[31] = BYTE4(v127);
  a3[80] = v127;
  a3[8] = (v141 ^ (8 * v141) ^ 0x35) - 91;
  a3[29] = HIBYTE(v132) ^ 0xCE;
  v142 = (83 * BYTE6(v127)) ^ 0xA0;
  a3[72] = BYTE5(v127);
  a3[59] = (((*(a13 + v142 - ((166 * HIWORD(v127)) & 0x8E) + 71) - ((83 * BYTE6(v127)) ^ 0x79)) ^ 0xC9) >> 2) | (((*(a13 + v142 - ((166 * HIWORD(v127)) & 0x8E) + 71) - ((83 * BYTE6(v127)) ^ 0x79)) ^ 0xC9) << 6);
  v143 = ((v123 >> 7) ^ -(v123 >> 7) ^ (v124 - (v124 ^ (v123 >> 7)))) + v124;
  v144 = v143 + (v123 << 23);
  v145 = v144 - 2 * (v143 & (v123 << 23));
  a3[75] = (v144 - 2 * (v143 & (v123 << 23))) >> 24;
  v146 = v126 ^ v111 ^ v128 & ~v117;
  v147 = v146 ^ ((v146 ^ 0xAF0F820035636828) << 47) ^ ((v146 ^ 0xAF0F820035636828) >> 10) ^ (((v146 ^ 0xAF0F820035636828) >> 17) | ((v146 ^ 0xAF0F820035636828) << 54));
  a3[57] = BYTE2(v147) ^ 0x63;
  a3[37] = BYTE1(v147) ^ 0x68;
  a3[84] = HIBYTE(v147) ^ 0xAF;
  v148 = HIBYTE(v127);
  a3[3] = v148;
  a3[28] = BYTE5(v147) ^ 0x82;
  a3[81] = BYTE4(v147);
  a3[22] = (v147 ^ 0xAF0F820035636828) >> (v148 & 0x18) >> (v148 & 0x18 ^ 0x18);
  a3[90] = v143;
  a3[25] = BYTE1(v143);
  a3[64] = v147 ^ 0x28;
  a3[54] = BYTE2(v144);
  a3[40] = (v147 ^ 0xAF0F820035636828) >> (v142 & 0x30) >> (v142 & 0x30 ^ 0x30u);
  v149 = *(a13 + ((83 * BYTE4(v145)) ^ 0xE7));
  a3[61] = BYTE5(v145);
  a3[16] = (v145 ^ (v123 << 57)) >> 56;
  a3[89] = BYTE6(v145);
  a3[49] = (((v149 - ((83 * BYTE4(v145)) ^ 0x79)) ^ 0xC9) >> 2) | (((v149 - ((83 * BYTE4(v145)) ^ 0x79)) ^ 0xC9) << 6);
  *(*a14 + 68) = a11 + 1;
  return (*(v18 + 8 * (a1 ^ 0x6D)))();
}

void sub_100196920(int a1@<W8>)
{
  *(v1 + 8) = v5;
  **(v2 + 8 * (a1 - 2816)) = v4;
  *(v3 + 8) = 0x6EAFE7BCD9718C4ELL;
}

uint64_t x2e4a2521bb7f5f901078cd7fa9be967f(uint64_t a1)
{
  v1 = *(a1 + 8) + 1830715039 * ((a1 - 1577344810 - 2 * (a1 & 0xA1FBA0D6)) ^ 0x2C54D7E6);
  result = (v1 + 792486192);
  v3 = *(&off_10038FA40 + v1 + 792486226);
  v4 = *(&off_10038FA40 + (v1 ^ 0xD0C39FA5));
  v5 = *v4;
  v348 = v4;
  v6 = *(&off_10038FA40 + (v1 ^ 0xD0C39F28));
  v7 = v6 + 517;
  v8 = *(v6 + 517 + ((*(v3 + 11) + 25) ^ 0x53));
  v9 = ((*v4)[7] << 40) | (*(v3 + 54) << 32);
  v10 = (((*(v3 + 26) << 8) ^ (-256 * *(v3 + 26)) ^ (*(v3 + 2) - (*(v3 + 2) | (*(v3 + 26) << 8)))) + *(v3 + 2)) ^ (*(v3 + 40) << 16) ^ (*(v3 + 51) << 24);
  v11 = (v10 & 0xD6EEFC46F650B37DLL ^ v9 & 0xFC4600000000 | v10 & 0x291103B909AF4C82 ^ v9 & 0x3B900000000) ^ ((((((v8 >> 3) | (32 * v8)) ^ 0xB6) >> 2) | ((((v8 >> 3) | (32 * v8)) ^ 0xFFFFFFB6) << 6)) << 56) ^ (*(v3 + 24) << 48);
  v12 = (v5[13] << 16) | (v5[45] << 8) | (v5[20] << 32) | (v5[18] << 24) | v5[62] | (v5[67] << 40);
  v13 = (v5[32] | (v5[56] << 16) | (v5[48] << 8) | (v5[86] << 32) | (v5[11] << 24) | (v5[10] << 56) | (v5[88] << 40)) ^ (v5[98] << 48);
  v14 = (*v4)[60] << 56;
  v15 = v14 & 0xEB00000000000000;
  v16 = *(v3 + 32);
  v17 = ((*(v3 + 31) << 48) | (*(v3 + 10) << 24) | (v5[17] << 56) | (v5[91] << 16) | (*(v3 + 49) << 32) | v5[82] | (*(v3 + 46) << 40) | (*(v3 + 29) << 8)) ^ v16;
  v18 = (v12 & 0x800000000000 | ((*v4)[83] << 48)) ^ v12 & 0xFFFF7FFFFFFFFFFFLL;
  v19 = (v18 & 0x42D0008084600A5) + (v14 & 0x400000000000000);
  v20 = (v14 | v12) & 0x1000064201A9440ALL;
  v21 = (v17 ^ -v17 ^ (0x35FF0803156B4BF0 - (v17 ^ 0x35FF0803156B4BF0))) + 0x35FF0803156B4BF0;
  v22 = v21 & 0x200;
  v23 = v18 & 0x6BD2F9B5F610BB50 ^ v15;
  v24 = v21 & 0xFFFFFFFFFFFFFDFFLL;
  if ((v13 & v22) != 0)
  {
    v22 = -v22;
  }

  v26 = (v22 + v13) ^ v24;
  v25 = (v5[78] << 48) | (v5[77] << 40) | v5[21] | (v5[2] << 8) | (v5[96] << 32) | (v5[41] << 16) | (v5[19] << 24);
  v27 = v25 & 0x73A3C969552322E6 ^ (v5[97] << 56) & 0x7300000000000000 | v25 & 0xC5C3696AADCDD19 ^ (v5[97] << 56) & 0x8C00000000000000;
  v28 = v19 | v20 | v23;
  v29 = v27 ^ v28;
  v30 = (v27 ^ -v27 ^ (0x6E6805A84C787E9CLL - (v27 ^ 0x6E6805A84C787E9CLL))) + 0x6E6805A84C787E9CLL;
  v31 = v30 ^ v11;
  v32 = (2 * (v30 ^ v11)) & 0x1589E2A388E3F84ALL;
  v33 = (v30 ^ v11 ^ 0xF53B0EAE3B8E03DALL) & (v17 ^ 0xE782E8BFBA9422B0) ^ v29;
  if (v11 == v30)
  {
    v34 = v26;
  }

  else
  {
    v34 = v17 ^ 0xE782E8BFBA9422B0 ^ v26;
  }

  v35 = v31 - v32 + 0xAC4F151C471FC25;
  v36 = v35 ^ v34 & (v17 ^ 0x187D1740456BDD4FLL);
  v37 = v17 ^ (v28 ^ 0x1989AB2E8FFA9DFALL) & ~v26 ^ 0x9A586720E16FBE8BLL ^ v36;
  v38 = v33 ^ 0xE806403E663EA4A6 ^ v36;
  v39 = (v29 ^ 0x77E1AE86C382E366) & (v28 ^ 0xE67654D170056205) ^ v26;
  v40 = v35 & (v29 ^ 0x881E51793C7D1C99);
  v41 = v38 << 36;
  v42 = v39 ^ 0x40D35160F7FBADF9;
  v43 = (v39 ^ 0x40D35160F7FBADF9) >> 6;
  v44 = (v39 ^ 0x40D35160F7FBADF9) >> 1;
  v45 = v38 ^ __ROR8__(v38, 19) ^ (v38 >> 28);
  v46 = v45 & 0x920D60D94EC83507;
  v47 = (v39 ^ 0x40D35160F7FBADF9) & 0xEBFC85D185D87994;
  v48 = v28 ^ v39 ^ v40 ^ 0x90ACBAFCAD7C58BELL;
  v49 = (v44 ^ v39 ^ 0x40D35160F7FBADF9) & 0x14037A2E7A27866BLL;
  v50 = v44 & 0x6BFC85D185D87994 ^ v47;
  v51 = v45 & 0x6DF29F26B137CAF8;
  v52 = __ROR8__(__ROR8__(v37, 17) & 0xFFFF8FFFFFFFFFFFLL ^ __ROR8__(v37 ^ (v37 >> 61), 20) ^ 0xFFBA504F740CDE0, 44) ^ __ROR8__(v37, 39);
  v53 = ((v49 | v50) & 0x984074A4E0668255 ^ (v43 & 0x4074A4E0668255 | (v42 << 63)) | (v49 | v50) & 0x67BF8B5B1F997DAALL ^ v43 & 0x3BF8B5B1F997DAALL) ^ (v42 << 58);
  v54 = v52 ^ 0x504F740CDE00FFBALL ^ v53;
  v55 = v33 ^ 0x14C31EEB7BBE2398 ^ __ROR8__(v33 ^ 0x14C31EEB7BBE2398, 7) ^ ((v33 ^ 0x14C31EEB7BBE2398) >> 41) ^ ((v33 ^ 0x14C31EEB7BBE2398) << 23);
  v56 = v55 ^ v41 & 0x920D60D000000000 ^ (v51 ^ v41 & 0x6DF29F2000000000 | v46);
  v57 = v48 ^ __ROR8__(v48, 10) ^ (v48 >> 17) ^ (v48 << 47);
  v58 = v57 ^ v55;
  v59 = v57 & ~v54;
  v60 = __ROR8__(__ROR8__((((v57 ^ v55) & 0x7FFF) << 48) ^ __ROR8__(((v57 ^ v55) >> 15) ^ 0x86FE2105B9AAD485, 1) ^ 0x92093373291D4224, 63) ^ 0x241266E6523A8449, 49) ^ 0xEF7D232A95BD3C80;
  v61 = v56 ^ ~v53 & 0xFFFFFFFFFFBFFFFFLL ^ ((v54 | v52 ^ 0xAFB08BF321FF0045) - (~v53 & 0x400000));
  v62 = v54 ^ v55 & ~v57;
  v63 = v62 & 0x10000000000;
  v64 = v60 & v56 ^ v57;
  v65 = __ROR8__(__ROR8__((v52 ^ 0x504F740CDE00FFBALL) & ~v56 ^ v58, 14) ^ 0x7DCF1CE2280F7A3FLL, 50);
  v66 = v62 & 0xFFFFFEFFFFFFFFFFLL;
  v67 = v65 ^ v61 ^ 0xD40B41DDFBA7F301;
  v68 = v62 ^ 0xB90EE27BC821454BLL;
  if ((v64 & v63) != 0)
  {
    v63 = -v63;
  }

  v69 = v66 ^ 0xB3322ABA3BFA21CLL ^ (v63 + v64);
  v70 = v52 ^ v59 ^ 0xBAE0002FB330DD49 ^ v61 ^ __ROR8__(v52 ^ v59 ^ 0xBAE0002FB330DD49 ^ v61, 61) ^ ((v52 ^ v59 ^ 0xBAE0002FB330DD49 ^ v61) >> 39) ^ ((v52 ^ v59 ^ 0xBAE0002FB330DD49 ^ v61) << 25);
  v71 = v68 ^ __ROR8__(v68, 1) ^ (v68 >> 6) ^ (v68 << 58);
  v72 = v70 ^ v71;
  v73 = v69 ^ __ROR8__(v69, 10) ^ (v69 >> 17) ^ (v69 << 47);
  v74 = v65 ^ ((v65 ^ 0xFC4804B4AF79779CLL) << 23) ^ __ROR8__(v65 ^ 0xFC4804B4AF79779CLL, 7) ^ (((v65 ^ 0xFC4804B4AF79779CLL) >> 41) | 0x8000000000000000) ^ 0x3B7FB4B50868863;
  v75 = v74 ^ (v67 << 36) ^ ((v67 ^ (v67 >> 19)) + ((v67 >> 28) | (v67 << 45)) - 2 * (((v67 >> 28) | (v67 << 45)) & (v67 ^ (v67 >> 19))));
  v76 = v73 ^ v74;
  v77 = v75 ^ v71 & ~v70;
  v78 = (v75 ^ 0x8000000000000000) & v70;
  v79 = (v76 ^ 0x7FFFFFFFFFFFFFFFLL) & ~v73 ^ v72;
  v80 = v77 ^ v70 ^ (v72 | ~v73);
  v81 = v80 ^ 0x1BAD7774613FDDD1;
  v82 = v77 ^ 0x3EC8C42A62D12035 ^ v76 ^ v78;
  *(&v84 + 1) = v80 ^ 0x1BAD7774613FDDD1;
  *&v84 = v80;
  v83 = v84 >> 61;
  *(&v84 + 1) = v76 ^ ~v78;
  *&v84 = v76 ^ v78;
  v85 = v73 ^ (v76 ^ 0x8000000000000000) & (v75 ^ 0x7FFFFFFFFFFFFFFFLL) ^ v79 ^ 0x9FF7706E6DF55471;
  v86 = __ROR8__((v84 >> 63) ^ 0xC4BFD322023C7046, 1) ^ 0x60C43B83FEA7CA23;
  *(&v84 + 1) = v79;
  *&v84 = v79 ^ 0x600A54561638928;
  v87 = v84 >> 1;
  *&v84 = __ROR8__(__ROR8__(v85, 63) ^ (2 * (v85 >> 10)) ^ 0xC50D94FBCF311EB3, 1);
  v88 = v87 ^ v79 ^ 0x600A54561638928 ^ ((v79 ^ 0x600A54561638928uLL) >> 6) ^ ((v79 ^ 0x600A54561638928) << 58);
  v89 = (v86 << 23) & 0x40000000;
  v90 = v83 ^ v81 ^ (v81 >> 39) ^ (v81 << 25);
  v91 = ((-2 * ((v84 ^ 0xE286CA7DE7988F59) & -(v84 ^ 0xE286CA7DE7988F59))) ^ ((v85 << 54) - (v84 ^ 0xE286CA7DE7988F59 ^ (v85 << 54)))) + (v85 << 54);
  v92 = v86 ^ __ROR8__(v86, 7) ^ (v86 >> 41);
  v93 = (v86 << 23) & 0xFFFFFFFFBFFFFFFFLL;
  v94 = v88 ^ v90;
  v95 = v88 & ~v90;
  if ((v92 & v89) != 0)
  {
    v96 = -v89;
  }

  else
  {
    v96 = v89;
  }

  v97 = v91 ^ __ROR8__(v85, 17);
  v98 = v96 + v92 + v93 - 2 * ((v96 + v92) & v93);
  v99 = v97 ^ v98;
  v100 = v82 ^ __ROR8__(v82, 19) ^ __ROR8__(v82, 28) ^ v98;
  v101 = v100 ^ v95;
  v102 = v90 & ~v100 ^ v97 ^ v98;
  v103 = v102 ^ v101;
  v104 = v102 ^ v101 ^ 0xA74F7F96B6E53FA0;
  v105 = v98 & ~v97 ^ v94;
  v106 = (v90 ^ 0xB115EA59FBDC1DELL ^ v97 & ~v94) + v101 - 2 * ((v90 ^ 0xB115EA59FBDC1DELL ^ v97 & ~v94) & v101);
  v107 = v100 & ~v99;
  v108 = (v105 ^ 0x3A8025E2F68773EDLL) << 58;
  v109 = __ROR8__(v97, 54);
  v110 = ((v104 & 0x7FFFF) << 23) ^ __ROR8__((v104 ^ -v104 ^ ((v104 >> 19) - ((v104 >> 19) ^ v104))) + (v104 >> 19), 22) ^ 0xB014CDC8F117A9A9;
  v111 = v109 & 0x4000000000000 ^ 0xCF4420C4554F6C4ALL ^ v109 & 0xFFFBFFFFFFFFFFFFLL ^ __ROR8__(v107, 54);
  if (((((v105 ^ 0xF68773ED) & 0xFFFFFFFE) - ((v105 ^ 0x3A8025E2F68773EDuLL) >> 1)) & 0x20000000 & (v105 ^ 0x3A8025E2F68773EDLL)) != 0)
  {
    v112 = -((((v105 ^ 0xF68773ED) & 0xFFFFFFFE) - ((v105 ^ 0x3A8025E2F68773EDuLL) >> 1)) & 0x20000000);
  }

  else
  {
    v112 = (((v105 ^ 0xF68773ED) & 0xFFFFFFFE) - ((v105 ^ 0x3A8025E2F68773EDuLL) >> 1)) & 0x20000000;
  }

  v113 = v105 ^ __ROR8__(v111, 10) ^ 0x1F58ACAC67C1E9E9;
  v114 = (((v105 ^ 0x3A8025E2F68773EDLL) & 0xFFFFFFFFFFFFFFFELL) - ((v105 ^ 0x3A8025E2F68773EDuLL) >> 1) + ((v105 ^ 0x3A8025E2F68773EDLL) << 63)) & 0xFFFFFFFFDFFFFFFFLL ^ ((v105 ^ 0x3A8025E2F68773EDuLL) >> 6) ^ (v112 + (v105 ^ 0x3A8025E2F68773EDLL));
  v115 = v114 + v108;
  v116 = v114 & v108;
  v117 = (v103 >> 28) ^ __ROR8__(v110, 42) ^ 0x723C45E01E9BFC58;
  v118 = v106 ^ __ROR8__(v106, 61) ^ (v106 >> 39) ^ (v106 << 25);
  v119 = v102 ^ 0xE5456558FA31C9A5 ^ __ROR8__(v102 ^ 0xE5456558FA31C9A5, 7) ^ ((v102 ^ 0xE5456558FA31C9A5) >> 41) ^ ((v102 ^ 0xE5456558FA31C9A5) << 23);
  v120 = v115 + 2 * v116 - 4 * v116;
  v121 = v113 ^ __ROR8__(v113, 10) ^ (v113 >> 17) ^ (v113 << 47);
  v122 = v120 ^ v118;
  v123 = (v117 + (v104 << 36) - 2 * (v117 & (v104 << 36))) ^ v119;
  v124 = v123 ^ v120 & ~v118;
  v125 = v121 & ~v122;
  v126 = __ROR8__(__ROR8__(v121 ^ v119, 45) ^ 0xC2EFFAE8A597874ELL, 19);
  v127 = v118 & ~v123;
  v128 = v123 & (v126 ^ 0xF1627A200A2EB4DLL);
  v129 = v122 ^ (v126 ^ 0xF0E9D85DFF5D14B2) & ~v121;
  v130 = v127 ^ v126 ^ 0xF0E9D85DFF5D14B2;
  v131 = v128 ^ v121;
  v132 = v131 & v122;
  v133 = __ROR8__(__ROR8__(v130 ^ v124, 22) ^ 0x88238CBB8E1A38A0, 42);
  v134 = v118 ^ v125 ^ v124 ^ 0xDEE68D4025EDBCB4;
  v135 = (v133 ^ 0x2EE3868E282208E3) - ((2 * (v133 ^ 0x2EE3868E282208E3)) & 0xA789B313AFF5A0B8) + 0x53C4D989D7FAD05CLL;
  v136 = v131 + v129 - 2 * v132;
  *(&v137 + 1) = v129;
  *&v137 = v129 ^ 0x9CE5260AA1655EC8;
  v138 = (((v137 >> 1) ^ v129 ^ 0x9CE5260AA1655EC8 ^ -((v137 >> 1) ^ v129 ^ 0x9CE5260AA1655EC8) ^ (((v129 ^ 0x9CE5260AA1655EC8) >> 6) - ((v137 >> 1) ^ v129 ^ 0x9CE5260AA1655EC8 ^ ((v129 ^ 0x9CE5260AA1655EC8) >> 6)))) + ((v129 ^ 0x9CE5260AA1655EC8) >> 6)) ^ ((v129 ^ 0x9CE5260AA1655EC8) << 58);
  v139 = (8 * v134) ^ (v134 << 25) ^ ((v134 >> 39) & 0x97E5D8 ^ v134 & 0xF45677B51097E5D8 | v134 & 0xBA9884AEF681A27 ^ (v134 >> 61) ^ (v134 >> 39) & 0x1681A27);
  v140 = (((v130 ^ 0x8C592CA30B590F03) >> 41) | ((v130 ^ 0x8C592CA30B590F03) << 57)) ^ ((v130 ^ 0x8C592CA30B590F03) << 23) ^ __ROR8__(__ROR8__(v130 ^ 0x8C592CA30B590F03, 38) & 0xFFFFFFFE03FFFFFFLL ^ __ROR8__(v130 ^ 0x8C592CA30B590F03, 31), 33);
  v141 = v140 ^ __ROR8__(v135, 28) ^ ((v135 ^ (v135 << 45)) & 0xB11856968465405ALL ^ (v135 >> 19) & 0x16968465405ALL | (v135 ^ (v135 << 45)) & 0x4EE7A9697B9ABFA5 ^ (v135 >> 19) & 0x9697B9ABFA5);
  v142 = v138 ^ v139;
  v143 = v136 ^ 0xF93BAD61CE88A78DLL ^ __ROR8__(v136 ^ 0xF93BAD61CE88A78DLL, 10) ^ ((v136 ^ 0xF93BAD61CE88A78DLL) >> 17) ^ ((v136 ^ 0xF93BAD61CE88A78DLL) << 47);
  v144 = v143 + v140 - 2 * (v143 & v140);
  v145 = 0x4000;
  v146 = -2 - (((v141 | ~v144) ^ v141 ^ v144) + (v141 ^ v144));
  v147 = ~(v141 ^ v144) & 0x4000;
  if ((v146 & v147) != 0)
  {
    v147 = -v147;
  }

  v148 = v141 ^ v138 & ~v139;
  v149 = v144 & ~v143 ^ v142;
  v150 = (v147 + v146) ^ ~(v141 ^ v144) & 0xFFFFFFFFFFFFBFFFLL;
  v151 = v139 ^ v143 & ~v142 ^ 0xF9D8D407650D2464 ^ v148;
  v152 = v139 & ~v141 ^ v144;
  v153 = ((v149 - (v149 ^ 0x5A63788A722C1791)) ^ 0xFFFFFFFFFFFFFFFELL) + v149;
  v154 = ((v150 ^ -v150 ^ (v143 - (v150 ^ v143))) + v143) ^ v149;
  v155 = v148 ^ 0xB87842EFC012F842 ^ v152;
  v156 = v152 ^ 0xD8982E3245C3BF7ALL;
  v157 = (v154 & 0x100 | 0xBCF8E99ED58D5886) ^ v154 & 0xFFFFFFFFFFFFFEFFLL;
  v158 = v155 ^ __ROR8__(v155, 19) ^ (v155 >> 28);
  v159 = v158 ^ (v155 << 36);
  *(v3 + 26) = BYTE1(v158);
  *(v3 + 40) = BYTE2(v158);
  *(v3 + 2) = v158;
  v160 = ((v158 >> 21) & 0x88 | 0x77) ^ ((v158 >> 21) & 0x70 | (v158 >> 29));
  v161 = v6 + 1;
  LOBYTE(v155) = *(v6 + 1 + (v160 ^ 0x84));
  *(v3 + 54) = BYTE4(v159);
  *(v3 + 11) = HIBYTE(v159);
  v5[7] = BYTE5(v159);
  v162 = v151 ^ __ROR8__(v151, 61) ^ (v151 >> 39);
  v5[82] = v162;
  *(v3 + 24) = BYTE6(v159);
  v163 = v162 ^ (v151 << 25);
  v164 = __ROR8__(v153, 1);
  v165 = v153 ^ v164 ^ (v153 >> 6);
  *(v3 + 51) = v155 ^ v160 ^ 0xAF;
  *(v3 + 49) = BYTE4(v163);
  *(v3 + 29) = BYTE1(v162);
  v5[17] = HIBYTE(v163);
  v5[48] = BYTE1(v165);
  v166 = v6 - 12;
  v167 = v165 ^ (v153 << 58);
  v5[91] = BYTE2(v162);
  *(v3 + 46) = BYTE5(v163);
  *(v3 + 31) = BYTE6(v163);
  v5[11] = (v153 ^ v164 ^ (v153 >> 6)) >> 24;
  v5[88] = BYTE5(v165);
  v5[32] = v165;
  *(v3 + 10) = BYTE3(v163);
  v5[56] = BYTE2(v165);
  LODWORD(v162) = (BYTE6(v167) + 25) & 0x53;
  v168 = v157 ^ __ROR8__(v157, 10) ^ (v157 >> 17);
  v169 = v168 ^ (v157 << 47);
  v5[86] = BYTE4(v165);
  LODWORD(v155) = ((BYTE6(v167) + 25) & 0xAC | 0x53) ^ -((BYTE6(v167) + 25) & 0xAC | 0x53) ^ (v162 - (((BYTE6(v167) + 25) & 0xAC | 0x53) ^ v162));
  LODWORD(v162) = *(v7 + (v155 ^ v162) + 2 * (v155 & v162));
  v5[10] = HIBYTE(v167);
  v170 = (v168 >> 5) | (8 * (v168 & 0x1F));
  v171 = __ROR8__((v156 >> 25) & 0x7FFFFF0000 ^ __ROR8__(v156 ^ __ROR8__(v156, 7), 48) ^ 0xED05FD5BD439104DLL, 16);
  v172 = (v156 << 23) ^ v171 ^ 0x104DED05FD5BD439;
  v5[98] = ((((v162 >> 3) | (32 * v162)) ^ 0xB6) >> 2) | ((((v162 >> 3) | (32 * v162)) ^ 0xB6) << 6);
  LOBYTE(v155) = *(v161 + (v170 ^ 0xF3));
  v5[20] = BYTE4(v168);
  v5[18] = BYTE3(v168);
  v5[62] = (v170 ^ 0xD8 ^ -(v170 ^ 0xD8) ^ (v155 - (v170 ^ 0xD8 ^ v155))) + v155;
  v5[13] = BYTE2(v168);
  v5[45] = BYTE1(v168);
  v5[67] = *(v166 + ((BYTE5(v169) + 94) ^ 0x58) + 272) ^ 0x73;
  LOBYTE(v155) = *(v166 + (BYTE6(v169) + 39) + 797);
  v5[96] = BYTE4(v172);
  v5[21] = v171 ^ 0x39;
  v5[97] = HIBYTE(v172);
  v5[78] = BYTE6(v172);
  v5[2] = (v171 ^ 0xD439) >> 8;
  v5[77] = BYTE5(v172);
  v5[83] = v155 ^ 0x5B;
  v5[60] = HIBYTE(v169);
  v5[41] = BYTE2(v172);
  v5[19] = ((v156 << 23) ^ v171 ^ 0xFD5BD439) >> 24;
  *(v3 + 32) = v16 + 1;
  v173 = *v4;
  v174 = *(*v4 + 17);
  v175 = (*v4)[42];
  v176 = (*v4)[34] << 8;
  v177 = (*v4)[39];
  v178 = (v177 - (v177 | v176) + v176 - 2 * ((v177 - (v177 | v176)) & v176)) ^ -v176;
  v179 = (*v4)[46] << 16;
  v180 = (*v4)[37];
  v181 = v178 + v177;
  v182 = ((*v4)[93] << 16) | ((*v4)[9] << 24) | (*v4)[33] | ((*v4)[87] << 8) | ((*v4)[73] << 32) | ((*v4)[52] << 40);
  v183 = (*v4)[80] | ((*v4)[27] << 8);
  v184 = (*v4)[64];
  v185 = (*v4)[57];
  v186 = (*v4)[90];
  v187 = (*v4)[61];
  v188 = (v183 ^ -v183 ^ (v179 - (v183 & 0xFFFFFFFFFF00FFFFLL | v179))) + v179;
  v189 = (*v4)[40];
  v190 = (*v4)[28] << 40;
  v191 = ((*v4)[22] - 31) - ((2 * ((*v4)[22] - 31)) & 0x80u) + 64;
  v192 = *(&off_10038FA40 + result);
  v193 = (v184 | (v185 << 16)) & 0xFFFFFFFF00FFFFFFLL | ((15 * ((*(v192 + (v191 ^ 0x96) + 533) + (v191 ^ 0xED)) ^ 0xBE)) << 24) | (v180 << 8) | v190 | (v189 << 48) | (v173[81] << 32);
  v194 = v192 + 272;
  v195 = v186 | (v173[75] << 24) | (v173[25] << 8) | (v173[54] << 16) | ((((-69 * v173[49]) ^ 0x5B ^ *(v192 + 272 + ((-69 * v173[49]) ^ 7))) - 3) << 32);
  v196 = (v174 | (v175 << 32) | (v173[8] << 40) | (v173[29] << 56)) ^ (v173[94] << 24) ^ v181 ^ (v173[24] << 16) ^ (v173[65] << 48);
  LOBYTE(v184) = *(v192 + 799 + ((49 * v173[89]) ^ 0x5FLL)) + 25;
  v197 = ((v187 << 40) | (0xFFFFFF0000000000 * v187)) ^ __ROR8__((((v187 << 40) & (0xFFFFFF0000000000 * v187)) >> 36) ^ __ROR8__((v195 & 0xFFFF00FFFFFFFFFFLL | (v187 << 40)) + v195 - 2 * (v195 & 0xFFFF00FFFFFFFFFFLL | (v187 << 40)), 36) ^ 0xEFDD83CEDCEA28D5, 28) ^ 0xCEA28D5EFDD83CEDLL;
  *(&v198 + 1) = v193;
  *&v198 = v193 ^ (v173[84] << 56);
  LODWORD(v181) = *(v192 + 799 + ((49 * v173[16]) ^ 0x5FLL)) + 25;
  v199 = ((v181 ^ 0x2F ^ (v181 >> 4) & 1) + 2) << 56;
  v200 = ((v197 + v195) ^ (((v184 ^ 0x2F ^ ((v184 & 0x10) != 0)) + 2) << 48) | v199) ^ (v197 + v195) & v199;
  *&v198 = __ROR8__((v198 >> 47) ^ 0x77DAAADD957FA5B9, 17);
  v201 = v188 ^ ((v173[53] << 24) | (v173[31] << 32) | (v173[59] << 48)) ^ v196 ^ (v173[72] << 40) ^ (v173[3] << 56);
  v202 = v200 ^ v193 ^ (v173[84] << 56);
  v203 = v182 ^ (v173[92] << 56) ^ (v173[58] << 48) ^ v200;
  v204 = v201 ^ 0xA326BD17B546C11CLL;
  v205 = v202 ^ 0x36ACDD99F56147CCLL;
  v202 ^= 0xC95322660A9EB833;
  v206 = (v203 ^ 0xBBB3B74D48A99C8BLL) & v205;
  v207 = v203 ^ 0xBBB3B74D48A99C8BLL ^ (v201 ^ 0xA326BD17B546C11CLL) & (v196 ^ 0x371DD4F4B2F9C774);
  v208 = v196 ^ (v198 ^ 0x37D10B7635E2B7ABLL) & (v201 ^ 0x5CD942E84AB93EE3) ^ 0xB538A49416FDA4B0 ^ v207;
  v209 = v202 & (v198 ^ 0xC82EF489CA1D4854) ^ v204;
  v210 = v208 >> 61;
  v211 = (v203 ^ 0x444C48B2B7566374) & (v196 ^ 0xC8E22B0B4D06388BLL) ^ v202;
  v212 = v207 ^ 0x9FE7EEB8A5BC47C0 ^ v211;
  v211 ^= 0x6322B06DB83CC0FEuLL;
  v213 = v209 ^ 0x40D35160F7FBADF9;
  v214 = v211 << 23;
  v215 = v211 ^ __ROR8__(v211, 7) ^ (v211 >> 41);
  v216 = v198 ^ 0x37D10B7635E2B7ABLL ^ v206 ^ v209 ^ 0x892511D22286C544 ^ __ROR8__(v198 ^ 0x37D10B7635E2B7ABLL ^ v206 ^ v209 ^ 0x892511D22286C544, 10) ^ ((v198 ^ 0x37D10B7635E2B7ABLL ^ v206 ^ v209 ^ 0x892511D22286C544) >> 17) ^ ((v198 ^ 0x37D10B7635E2B7ABLL ^ v206 ^ v209 ^ 0x892511D22286C544) << 47);
  v217 = (((v208 >> 61) ^ v208) + 8 * v208 - 2 * ((8 * v208) & v208)) ^ __ROR8__(v208, 39);
  v218 = v215 + v214 - 2 * (v215 & v214);
  v219 = v212 ^ (v212 << 36) ^ (v212 >> 19) ^ ((v212 >> 28) | (v212 << 45)) ^ v218;
  v220 = v217 & ~v219;
  v221 = v218 ^ v216;
  v222 = v220 & 0x7D6D7759BBA9508BLL;
  v223 = v213 ^ __ROR8__(v213, 1) ^ (v213 << 58) ^ (v213 >> 6) ^ v217;
  v224 = v220 & 0x829288A64456AF74 ^ v218 ^ v216;
  v225 = v220 & 0x7D6D7759BBA9508BLL & (v218 ^ v216);
  v226 = v224 + v222;
  v227 = (v218 ^ v216) - v219;
  v228 = (((v217 ^ 0x1A6F4CAD44E9FA45) - (v217 & 0xE590B352BB1605BALL)) | v217 & 0xE590B352BB1605BALL ^ 0xE590B352BB1605BALL) & v223 ^ v219;
  v229 = v218 & ~v216;
  v230 = v226 + 2 * v225 - 4 * v225;
  if (v210)
  {
    v231 = v216;
  }

  else
  {
    v231 = -1;
  }

  v232 = v229 ^ v223;
  v233 = ((v231 ^ v223) & v216 ^ v217 ^ v228) - ((2 * ((v231 ^ v223) & v216 ^ v217 ^ v228)) & 0xD55EE846DA6045E6) - 0x15508BDC92CFDD0DLL;
  v234 = v228 ^ 0x1333CBDE25282C72 ^ v230;
  v235 = v232 ^ v216 ^ (v227 + (v219 | ~v221) + 2 * (v219 & ~v221) + 1);
  v236 = v234 << 36;
  v232 ^= 0xB90EE27BC821454BLL;
  v237 = (8 * v233) & 0x80F915A606399A78 ^ v233 & 0x80F915A606399A7BLL | (8 * v233) & 0x7F06EA59F9C66580 ^ v233 & 0x7F06EA59F9C66584;
  v238 = v234 ^ __ROR8__(v234, 19) ^ (v234 >> 28);
  v239 = __ROR8__(v232, 1);
  v240 = ((v233 >> 39) ^ (v233 >> 61) ^ v237) + (v233 << 25) - 2 * (v237 & (v233 << 25));
  v241 = (v232 ^ v239 ^ (v232 >> 6) ^ -(v232 ^ v239 ^ (v232 >> 6)) ^ ((v232 << 58) - (v232 ^ v239 ^ (v232 >> 6) ^ (v232 << 58)))) + (v232 << 58);
  v242 = v235 ^ 0xB3322ABA3BFA21CLL ^ (v235 >> 17) ^ __ROR8__(v235 ^ 0xB3322ABA3BFA21CLL, 10) ^ ((v235 ^ 0xB3322ABA3BFA21CLL) << 47);
  v243 = v242 ^ 0x5999155D1DFLL;
  v244 = v230 ^ 0x3B708EB771F6A8EFLL ^ __ROR8__(v230 ^ 0x3B708EB771F6A8EFLL, 7) ^ __ROR8__(v230 ^ 0x3B708EB771F6A8EFLL, 41);
  v245 = v238 + v236 - 2 * (v238 & v236);
  v246 = v242 ^ 0x5999155D1DFLL ^ v244;
  v247 = v245 ^ v244;
  v248 = v242 ^ 0xFFFFFA666EAA2E20;
  v249 = ~(2 * v246) + v246;
  v250 = v240 & ~(v245 ^ v244) ^ v246;
  v251 = v244 + (v246 | v248);
  v252 = v240 ^ v241;
  v253 = v249 & v247;
  v254 = v247 ^ (v240 | ~v241);
  v255 = v243 & ~v252;
  v256 = (v251 + 1) ^ v252;
  v257 = v254 ^ 0xC1373BD59D2EDFCALL ^ v250;
  v258 = v240 ^ v255 ^ v254 ^ 0x6452888B9EC0222ELL;
  v259 = v243 ^ v253 ^ v256 ^ 0x9FF7706E6DF55471;
  *(&v260 + 1) = v256;
  *&v260 = v256 ^ 0x600A54561638928;
  v261 = (((v260 >> 1) ^ v256 ^ 0x600A54561638928) + ((v256 ^ 0x600A54561638928uLL) >> 6) - 2 * (((v260 >> 1) ^ v256 ^ 0x600A54561638928) & ((v256 ^ 0x600A54561638928uLL) >> 6))) ^ ((v256 ^ 0x600A54561638928) << 58);
  v262 = v258 ^ (8 * v258) ^ (v258 >> 39) ^ (v258 >> (v210 & 0xFD) >> (v210 & 0xFD ^ 0x3D));
  v263 = v257 ^ __ROR8__(v257, 19) ^ __ROR8__(v257, 28);
  v264 = v262 ^ (v258 << 25);
  v265 = v261 & ~v264;
  v266 = 0x874B0A2561D3F277 - (v265 ^ 0x874B0A2561D3F277);
  v267 = v266 & 0x10000;
  if ((v266 & 0x10000 & v265) != 0)
  {
    v267 = -v267;
  }

  v268 = v266 & 0xFFFFFFFFFFFEFFFFLL ^ -v265 ^ (v267 + v265);
  *(&v269 + 1) = v250;
  *&v269 = v250 ^ 0x29BD212FFB9F200;
  v270 = (v269 >> 7) ^ v250 ^ 0x29BD212FFB9F200 ^ ((v250 ^ 0x29BD212FFB9F200uLL) >> 41) ^ ((v250 ^ 0x29BD212FFB9F200) << 23);
  v271 = v261 ^ v264;
  v272 = v263 & 0x20000000000000;
  v273 = v263 & 0xFFDFFFFFFFFFFFFFLL;
  v274 = ((v259 >> 17) | (v259 << 54)) ^ (v259 << 47) ^ ((v259 >> 10) + v259 - 2 * ((v259 >> 10) & v259));
  v275 = __ROR8__(((2 * v268) & 0xE96144AC3A7E4EELL) + (v268 ^ 0x874B0A2561D3F277), 15) ^ 0xE4EF0E96144AC3A7;
  v276 = v274 ^ v270;
  if ((v272 & v270) != 0)
  {
    v272 = -v272;
  }

  v277 = (v272 + v270) ^ v273;
  v278 = v274 & ~v271;
  v279 = v262 & 2;
  if ((v278 & v279) != 0)
  {
    v279 = -v279;
  }

  v280 = v270 & ~v274;
  v281 = v277 & ~v276 ^ v274;
  v282 = __ROR8__(__ROR8__(v277 ^ __ROR8__(v275, 49), 38) ^ 0xD63A18E2C0B1A86CLL, 26);
  v283 = v280 ^ v271;
  v284 = __ROR8__(__ROR8__(v264 & ~v277 ^ v276, 19) ^ 0xE4854F5711654C9FLL, 45);
  v285 = v264 & 0xFFFFFFFFFFFFFFFDLL ^ (v279 + v278) ^ 0x277B4590113BF96ELL ^ v282;
  v286 = ((v281 ^ -v281 ^ (v283 - (v281 ^ v283))) + v283) ^ 0xDEB7DA456D4BA32;
  v287 = v285 ^ __ROR8__(v285, 61) ^ (v285 >> 39) ^ (v285 << 25);
  v288 = __ROR8__(__ROR8__(v283 ^ 0xEFBE20797FEF5E54, 6) ^ 0x42174136531B5655, 58) ^ 0x50EE480F4FBDB8E9;
  v289 = v284 ^ 0xF19DEF895C9C233ALL ^ v282 ^ __ROR8__(v284 ^ 0xF19DEF895C9C233ALL ^ v282, 19) ^ ((v284 ^ 0xF19DEF895C9C233ALL ^ v282) >> 28) ^ ((v284 ^ 0xF19DEF895C9C233ALL ^ v282) << 36);
  if ((v287 & 0x4000) != 0)
  {
    v145 = -16384;
  }

  v290 = v286 ^ __ROR8__(v286, 10) ^ (v286 >> 17) ^ (v286 << 47);
  v291 = v288 ^ __ROR8__(v288, 1) ^ (v288 >> 6) ^ (v288 << 58) ^ v287;
  v292 = v284 ^ 0x9FFDEE729ECEED8FLL ^ ((v284 ^ 0x9FFDEE729ECEED8FLL) << 23) ^ ((v284 ^ 0x9FFDEE729ECEED8FLL) >> 7) ^ (((v284 ^ 0x9FFDEE729ECEED8FLL) >> 41) | ((v284 ^ 0x9FFDEE729ECEED8FLL) << 57));
  v293 = (~(2 * v291) + v291) & v290;
  v294 = ((v145 + v287) ^ 0xFFFFFFFFFFFFBFFFLL) & v291;
  v295 = (v292 ^ -v292 ^ (v289 - (v289 ^ v292))) + v289;
  v296 = v287 & ~v295 ^ v290 ^ v292;
  v297 = v291 ^ v292 & ~v290;
  v298 = v295 & ~(v290 ^ v292);
  v299 = v294 ^ v295;
  v300 = v299 ^ v296 ^ 0x53C4D989D7FAD05CLL;
  v301 = v297 ^ 0x9CE5260AA1655EC8;
  v302 = v287 ^ v293 ^ v299 ^ 0xDEE68D4025EDBCB4;
  v303 = v296 ^ 0x8C592CA30B590F03 ^ __ROR8__(v296 ^ 0x8C592CA30B590F03, 7);
  v304 = v300 ^ __ROR8__(v300, 19) ^ (v300 >> 28) ^ (v300 << 36);
  v305 = v304 & 0x40000;
  v306 = v303 | 0xDE8392BC6D9AEDBFLL;
  v307 = v290 ^ v297 ^ 0xF93BAD61CE88A78DLL ^ v298 ^ __ROR8__(v290 ^ v297 ^ 0xF93BAD61CE88A78DLL ^ v298, 10) ^ ((v290 ^ v297 ^ 0xF93BAD61CE88A78DLL ^ v298) >> 17) ^ ((v290 ^ v297 ^ 0xF93BAD61CE88A78DLL ^ v298) << 47);
  v308 = 2 * (v301 ^ (v301 >> 1)) - (v301 ^ (v301 >> 1) ^ (v297 << 63));
  v309 = __ROR8__(v303, 12);
  v310 = v302 ^ __ROR8__(v302, 61) ^ (v302 >> 39) ^ (v302 << 25);
  v311 = v304 & 0xFFFFFFFFFFFBFFFFLL;
  v312 = v308 ^ __ROR8__(v301, 6);
  v313 = v306 ^ __ROR8__(v296 ^ 0x8C592CA30B590F03, 41) ^ __ROR8__(v309 ^ (v306 << 52) ^ (v306 >> 12) ^ 0xBAD2A7292754ABABLL, 52);
  v314 = v313 ^ 0x2A7292754ABABBADLL;
  v315 = v312 & ~v310;
  if ((v307 & 0x4000) != 0)
  {
    v316 = (v307 ^ 0xFFFFFFFFFFFFC000) + (v307 >> 14 << 15);
  }

  else
  {
    v316 = v307 + 0x4000;
  }

  v317 = v314 ^ v307;
  if ((v313 & v305) != 0)
  {
    v318 = -v305;
  }

  else
  {
    v318 = v305;
  }

  v319 = (v318 + v314) ^ v311;
  v320 = v310 & ~v319 ^ v317;
  if ((v319 & 0x1000000000000 & v315) != 0)
  {
    v321 = -(v319 & 0x1000000000000);
  }

  else
  {
    v321 = v319 & 0x1000000000000;
  }

  v322 = (v321 + v315) ^ v319 & 0xFFFEFFFFFFFFFFFFLL;
  v323 = v320 ^ 0x1B49DAA226C865CELL ^ v322;
  v324 = (v323 ^ (v323 >> 19)) & 0x68EF2E1485F29159 ^ ((v323 << 45) & 0x68EF200000000000 | (v323 >> 28)) ^ (((v323 ^ (v323 >> 19)) & 0x9710D1EB7A0D6EA6) + ((v323 << 45) & 0x9710C00000000000) - 2 * ((v323 << 45) & 0x9710C00000000000 & v323));
  v325 = v324 ^ (v323 << 36);
  LOBYTE(v323) = -69 * (((v323 ^ (v323 >> 19)) & 0x9159 ^ (v323 >> 28) ^ (v323 ^ (v323 >> 19)) & 0x6EA6) >> 8);
  v173[33] = v324;
  v173[87] = (*(v194 + (v323 ^ 7)) ^ v323 ^ 0x5B) - 3;
  v173[9] = BYTE3(v324);
  v173[93] = BYTE2(v324);
  LODWORD(v324) = (BYTE4(v325) + 108);
  v326 = v192 + 14;
  v327 = *(v326 + (v324 ^ 0xCA) - ((2 * (v324 ^ 0xCA)) & 0x104) + 130);
  v173[58] = BYTE6(v325);
  v173[92] = HIBYTE(v325);
  v173[52] = BYTE5(v325);
  v328 = v310 ^ v312;
  v329 = v307 & ~v328 ^ v310 ^ v322;
  v330 = __ROR8__(v329 ^ 0x45BEB1BF7FC8C279, 44);
  v331 = __ROR8__(__ROR8__(((v330 ^ 0xFA816F6882BACE89) & 0x8D102C7AC5677109 | ((v329 ^ 0x45BEB1BF7FC8C279) >> 41) & 0x600000) ^ ((v329 ^ 0x45BEB1BF7FC8C279) >> 41) & 0x700000 & (v330 ^ 0x82BACE89) & 0x600000 | ((v329 ^ 0x45BEB1BF7FC8C279) >> 41) & 0x700000 & (v330 ^ 0x82BACE89) & 0x100000 ^ ((v330 ^ 0xFA816F6882BACE89) & 0x72EFD3853A988EF6 | ((v329 ^ 0x45BEB1BF7FC8C279) >> 41) & 0x100000), 35) ^ 0xDA6732913B7229E4, 49);
  v332 = (v329 >> 39) ^ (8 * (v329 ^ 0x45BEB1BF7FC8C279)) ^ ((v329 ^ 0x45BEB1BF7FC8C279) << 25) ^ v331 ^ 0x35A00211028F987BLL;
  v173[39] = (v329 >> 39) ^ (8 * (v329 ^ 0x79)) ^ v331 ^ 0x7B;
  LODWORD(v329) = ((v327 >> 2) | (v327 << 6)) ^ (((v324 ^ 0x12) >> 2) | ((v324 ^ 0x12) << 6)) ^ 0x46;
  v173[73] = ((((v329 >> 6) | (4 * v329)) ^ 0x19) >> 1) | ((((v329 >> 6) | (4 * v329)) ^ 0x19) << 7);
  v173[24] = BYTE2(v332);
  v173[42] = BYTE4(v332);
  v173[8] = BYTE5(v332);
  v173[65] = BYTE6(v332);
  v173[94] = BYTE3(v332);
  v173[34] = BYTE1(v332);
  v333 = v317 & (v316 ^ 0xFFFFFFFFFFFFBFFFLL) ^ v328;
  v334 = v333 ^ 0xF84225ECFB3E8483;
  v335 = (v333 ^ 0xF84225ECFB3E8483) >> 6;
  v336 = v333 ^ 0xF84225ECFB3E8483 ^ __ROR8__(v333 ^ 0xF84225ECFB3E8483, 1);
  v337 = v336 & v335;
  v338 = v336 + v335;
  LOBYTE(v332) = *(v326 + ((HIBYTE(v332) + 108) ^ 0x48));
  v339 = v338 - 2 * v337;
  v173[46] = BYTE2(v339);
  v340 = v307 ^ v333 ^ v319 & ~v317 ^ 0x59E2460D89E50C49;
  v341 = __ROR8__(v340, 10);
  v342 = (v340 ^ v341) & 0x666171FB1F31F94ELL ^ (v340 >> 17) & 0x71FB1F31F94ELL | (v340 ^ v341) & 0x999E8E04E0CE06B1 ^ (v340 >> 17) & 0xE04E0CE06B1;
  v173[37] = BYTE1(v342);
  v173[31] = BYTE4(v339);
  v173[22] = ((v340 ^ v341) & 0x1F31F94E ^ (v340 >> 17) & 0x1F31F94E | (v340 ^ v341) & 0xE0CE06B1 ^ (v340 >> 17) & 0xE0CE06B1) >> 24;
  v343 = v342 ^ (v340 << 47);
  v173[40] = BYTE6(v343);
  v173[72] = BYTE5(v339);
  v173[53] = (v338 - 2 * v337) >> 24;
  v173[84] = HIBYTE(v343);
  v173[27] = BYTE1(v339);
  v173[3] = (v339 ^ (v334 << 58)) >> 56;
  v344 = v320 ^ 0xAC646FDA039FC21BLL;
  v345 = v320 ^ 0xAC646FDA039FC21BLL ^ ((v320 ^ 0xAC646FDA039FC21BLL) >> 7);
  v346 = v345 & 0xFFFFFFFDFFFFFFFFLL ^ (v344 >> 41);
  v347 = (v345 & 0x200000000 | (v344 << 57)) ^ (v344 << 23) ^ v346;
  v173[49] = BYTE4(v347);
  v173[29] = ((((HIBYTE(v332) + 108) ^ v332) >> 1) | (((HIBYTE(v332) + 108) ^ v332) << 7)) ^ 9;
  v173[90] = v346;
  v173[25] = BYTE1(v346);
  v173[57] = BYTE2(v342);
  v173[89] = BYTE6(v347);
  v173[61] = BYTE5(v347);
  v173[64] = v342;
  v173[81] = BYTE4(v342);
  v173[28] = BYTE5(v343);
  v173[75] = BYTE3(v347);
  v173[54] = BYTE2(v347);
  v173[80] = v339;
  v173[59] = BYTE6(v339);
  LOBYTE(v347) = (-69 * HIBYTE(v347)) ^ *(v194 + ((-69 * HIBYTE(v347)) ^ 7));
  v173[16] = ((2 * v347) & 0xFB ^ 0xB2) + (v347 ^ 0xA6);
  *(*v348 + 17) = v174 + 1;
  *a1 = v325 ^ 0xA8BDFEAF56748F7ELL;
  return result;
}

unint64_t sub_100198CC0@<X0>(int a1@<W8>)
{
  v6 = (a1 + 408810830);
  v7 = (*(v4 + 8 * (a1 + 4326)))();
  v8 = (v7 | v5 ^ v3) + v3 - ((v6 - 0x1C73FA77CAB5AA41) & (2 * (v7 | v5 ^ v3)));
  v9 = (*(v4 + 8 * (v6 & 0xA7821A0D)))();
  (*(v4 + 8 * (v6 - 408806487)))(v11);
  return v1 | (v2 << 16) | v9 | v8 ^ v3 | (v11[0] << 56) | (v11[1] << 48) | (v11[2] << 40);
}

void x2c11c8fa3809f6c91bcd7c4db6b8b12c(uint64_t a1)
{
  v1 = 653902129 * (((a1 | 0x610C23396411CB67) - (a1 | 0x9EF3DCC69BEE3498) - 0x610C23396411CB68) ^ 0x388D53A3766C07E5);
  v2 = *(a1 + 24) ^ v1;
  v3 = *(&off_10038FA40 + (v2 ^ 0x229)) - 8;
  v4 = *&v3[8 * ((((*&v3[8 * (v2 ^ 0x1320)])((*(a1 + 8) - v1) ^ 0x80E69F3C3AEF585ELL, 38120196) == 0) * ((v2 + 2284) ^ 0xB0C)) ^ v2)];
  __asm { BRAA            X8, X17 }
}

void jJ4Yi9XEsYqo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(&off_10038FA40 + ((-67 * ((dword_1003A68E8 + dword_1003A6900) ^ 0x1D)) ^ byte_100342E80[byte_100342D80[(-67 * ((dword_1003A68E8 + dword_1003A6900) ^ 0x1D))] ^ 0xB9]) - 94);
  v6 = *(&off_10038FA40 + (byte_100343280[byte_100343180[(-67 * ((dword_1003A68E8 - *v5) ^ 0x1D))] ^ 0x4E] ^ (-67 * ((dword_1003A68E8 - *v5) ^ 0x1D))) - 217);
  v7 = *v6 - *v5 - &v13;
  v8 = 1410351037 * v7 + 0x4A5078CC1149481DLL;
  v9 = 1410351037 * (v7 ^ 0x4A5078CC1149481DLL);
  *v5 = v8;
  *v6 = v9;
  LOBYTE(v9) = -67 * (*v5 ^ 0x1D ^ v9);
  v10 = *(&off_10038FA40 + ((-67 * (dword_1003A6900 ^ 0x1D ^ dword_1003A68E8)) ^ byte_100342A80[byte_100342980[(-67 * (dword_1003A6900 ^ 0x1D ^ dword_1003A68E8))] ^ 0xF6]) - 68) - 8;
  (*&v10[8 * (byte_10034348C[(byte_100343388[v9 - 8] ^ 0x15) - 12] ^ v9) + 35256])(a4);
  v11 = -67 * ((*v6 + *v5) ^ 0x1D);
  v12 = *&v10[8 * ((1966 * ((*&v10[8 * (byte_100342E88[(byte_100342D84[v11 - 4] ^ 0xB6) - 8] ^ v11) + 36424])(a4) == 65)) ^ 0x211)];
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10019C414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 46 * (v6 ^ 0xAEC);
  v7[8];
  v7[9];
  v7[10];
  v7[11];
  v7[12];
  v7[13];
  v7[14];
  v7[15];
  v7[16];
  v7[17];
  v11 = *(*(v9 + 8 * (v10 ^ 0x1F2)) - 9);
  v13 = (2 * (v10 ^ 0xD)) ^ *(*(v9 + 8 * (v10 - 364)) - 2) ^ *(*(v9 + 8 * (v10 ^ 0x177)) + 4) ^ v11;
  return (*(v8 + 8 * v10))(*(v8 + 8 * v10), v11, a3, a4, a5, a6);
}

uint64_t sub_10019C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char *a23, unint64_t a24, uint64_t a25, unint64_t a26)
{
  (*(v29 + 8 * (v28 ^ 0x10D5)))(v27, 97);
  v30 = (*(v29 + 8 * (v28 + 4360)))(a11);
  v31 = (*(v29 + 8 * (v28 ^ 0x10DB)))(a11);
  v32 = (*(v29 + 8 * (v28 + 4377)))(v27);
  v33 = 1511273041 * ((~&a17 & 0x81162C4320FD2326 | &a17 & 0x7EE9D3BCDF02DCD9) ^ 0xA1F799692FE1F21);
  a19 = v26;
  a20 = a9;
  a26 = v31 - v33 - ((2 * v31) & 0xBB20701B7F4B5110) + 0x5D90380DBFA5A888;
  a23 = &a15;
  a24 = v33 + 0x2C2778308167C164;
  a17 = ((a12 ^ 0xEFFEDB68CEE7E7EELL) + ((v28 + 232) | 1) + 0x7EF776FFBB9AD98BLL + ((a12 << (v28 - 39)) & 0xDFFDB6D19DCFCFDCLL)) ^ v33;
  a18 = v32;
  a22 = v33 + v28 - 265;
  a21 = v30;
  (*(v29 + 8 * (v28 + 4332)))(&a17);
  v34 = a25;
  v35 = (*(v29 + 8 * (v28 ^ 0x1319)))(&a15, 0, 16);
  return (*(v29 + 8 * ((74 * (v34 != 0x68BEB9FED6979B1FLL)) ^ v28)))(v35);
}

uint64_t sub_10019C7A0()
{
  (*(v3 + 8 * (v4 ^ 0x1059u)))(v2);
  v6 = *(v5 - 96);
  return v0 - 0x68BEB9FF7AE6C1E2 + (v4 - v1 - 514);
}

void xd99cafcf63e062bee1eda563637e5a3c()
{
  v0 = __chkstk_darwin();
  v1 = 1511273041 * ((~v0 & 0x86ABDAF8ED123BE0 | v0 & 0x7954250712EDC41FLL) ^ 0xDA28F2D5F1107E7);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10019C9D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  LODWORD(STACK[0xE94]) = v4;
  v6 = *(a1 + 72);
  v7 = *(a1 + 8);
  v8 = v7 + v2 + ((v3 - 88) ^ 0xEADu ^ a2);
  v9 = *(a1 + 16) + 1;
  STACK[0x2348] = &STACK[0x2350];
  STACK[0x2330] = v9;
  STACK[0x2320] = v7 + 1;
  STACK[0x2300] = v8;
  STACK[0x2310] = v8 + 16;
  return (*(v5 + 8 * (v3 ^ (14 * (((2 * (v2 + 2123906780)) & 0xFFBFE77A) + ((v2 + 2123906780) ^ 0x7FDFF3BD) != 2145383421)))))();
}

uint64_t sub_10019CAD0(uint64_t a1, uint64_t a2)
{
  v8 = ((v4 + v2) ^ 0xBFA5A888) - 2 * (((v4 + v2) ^ 0xBFA5A888) & 0x181059DD ^ (v4 + v2) & 0x10) - 1743758899;
  v9 = v3 - ((2 * v3 - 47153736) & 0xF4746260) + 2027057164;
  v10 = ((2 * v9) & 0xAD6FFA68 ^ 0xA4646260) + (v9 ^ 0x2C8DCC04);
  v11 = v6 ^ (v5 + 3833);
  v13 = ((2 * v8) & 0xDECFCDEE ^ 0x1000818A) + (v8 ^ 0xF777BF3A) == ((((v11 - 293666954) & 0x11810AD8) - 2729) ^ 0x6F67E708) && v10 == -692585100;
  return (*(v7 + 8 * ((391 * v13) ^ v11)))(a1, a2, 1009418305);
}

uint64_t sub_10019CBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x1B80] = v8;
  STACK[0x7B8] = &STACK[0x4977];
  STACK[0x630] = &STACK[0x3367];
  STACK[0x9B8] = &STACK[0x3380];
  STACK[0x1A60] = &STACK[0x3430];
  STACK[0x7F0] = &STACK[0x3526];
  STACK[0x7E8] = &STACK[0x3550];
  STACK[0x10F8] = &STACK[0x3620];
  STACK[0xA20] = &STACK[0x36C0];
  STACK[0xD10] = &STACK[0x3760];
  STACK[0x910] = &STACK[0x3810];
  STACK[0x8F0] = &STACK[0x38B0];
  STACK[0xAA8] = &STACK[0x39F0];
  STACK[0x1018] = &STACK[0x3AB0];
  STACK[0x810] = &STACK[0x46C0];
  STACK[0xD38] = &STACK[0x4770];
  STACK[0xFE8] = &STACK[0x4810];
  STACK[0x11E0] = &STACK[0x48C0];
  STACK[0x6C0] = &STACK[0x4990];
  STACK[0xFD8] = &STACK[0x4DA0];
  STACK[0x938] = &STACK[0x4E40];
  STACK[0xF50] = &STACK[0x4F00];
  v10 = 28 * ((**(v7 + 8 * (v6 - 2709)) ^ (121 * (v6 ^ 0xCC) + 1)) & 1);
  STACK[0xA08] = &STACK[0x5030];
  STACK[0x860] = &STACK[0x50F0];
  STACK[0x830] = &STACK[0x51A0];
  STACK[0xCD8] = &STACK[0x5260];
  STACK[0x798] = &STACK[0x6B33];
  STACK[0xA50] = &STACK[0x58F5];
  STACK[0xA80] = &STACK[0x5300];
  STACK[0xD50] = &STACK[0x53A0];
  STACK[0x1108] = &STACK[0x5450];
  STACK[0xFF8] = &STACK[0x54F0];
  STACK[0x808] = &STACK[0x55A0];
  STACK[0xD78] = &STACK[0x5650];
  STACK[0x1068] = &STACK[0x5700];
  STACK[0x900] = &STACK[0x57A0];
  STACK[0x958] = &STACK[0x5840];
  STACK[0xDC0] = &STACK[0x5920];
  STACK[0xFC0] = &STACK[0x59C0];
  STACK[0x11D8] = &STACK[0x5B10];
  STACK[0x848] = &STACK[0x5FD0];
  STACK[0x640] = &STACK[0x6018];
  STACK[0xA18] = &STACK[0x6040];
  STACK[0x7A0] = &STACK[0x6100];
  STACK[0x9C0] = &STACK[0x61F0];
  STACK[0x11D0] = &STACK[0x6290];
  STACK[0x850] = &STACK[0x6330];
  STACK[0xA28] = &STACK[0x63D0];
  STACK[0x888] = &STACK[0x6470];
  STACK[0xD48] = &STACK[0x6510];
  STACK[0xAD0] = &STACK[0x65B0];
  STACK[0x930] = &STACK[0x6650];
  STACK[0x8A0] = &STACK[0x6700];
  STACK[0x7A8] = &STACK[0x6B24];
  STACK[0xA48] = &STACK[0x6B50];
  STACK[0x9D0] = &STACK[0x6C00];
  STACK[0x8C0] = &STACK[0x6CA0];
  STACK[0xEE0] = &STACK[0x6D40];
  STACK[0xDB8] = &STACK[0x6DF0];
  STACK[0x1180] = &STACK[0x6E20];
  STACK[0x1140] = &STACK[0x6ED0];
  STACK[0xD30] = &STACK[0x6F80];
  STACK[0x12D8] = &STACK[0x7030];
  STACK[0x8B0] = &STACK[0x7110];
  STACK[0x7C0] = &STACK[0x71B0];
  STACK[0x9D8] = &STACK[0x75D0];
  STACK[0x7D0] = &STACK[0x7690];
  STACK[0x970] = &STACK[0x76C0];
  STACK[0xF48] = &STACK[0x7760];
  STACK[0xAF8] = &STACK[0x7830];
  STACK[0x868] = &STACK[0x78D0];
  STACK[0xDD0] = &STACK[0x7980];
  STACK[0xD70] = &STACK[0x7A20];
  STACK[0x9F0] = &STACK[0x7AE0];
  STACK[0xAE0] = &STACK[0x7B90];
  STACK[0xA00] = &STACK[0x7C30];
  STACK[0x1B40] = &STACK[0x7CE0];
  STACK[0x1210] = &STACK[0xA539];
  STACK[0xAC8] = &STACK[0x90A1];
  STACK[0x8F8] = &STACK[0x7D90];
  STACK[0x7D8] = &STACK[0x7E30];
  STACK[0x840] = &STACK[0x7EE0];
  STACK[0x1148] = &STACK[0x7F80];
  STACK[0x1010] = &STACK[0x7FB0];
  STACK[0x9C8] = &STACK[0x8080];
  STACK[0x9E0] = &STACK[0x8130];
  STACK[0x950] = &STACK[0x81E0];
  STACK[0x800] = &STACK[0x8290];
  STACK[0x22F0] = &STACK[0x8380];
  STACK[0x948] = &STACK[0x8E00];
  STACK[0xA10] = &STACK[0x8EA0];
  STACK[0x11A0] = &STACK[0x8F40];
  STACK[0x9A0] = &STACK[0x8FE0];
  STACK[0xAC0] = &STACK[0x90A0];
  STACK[0x10E8] = &STACK[0x90F0];
  STACK[0xD68] = &STACK[0x92C0];
  STACK[0x10F0] = &STACK[0x9380];
  STACK[0x990] = &STACK[0x93D0];
  STACK[0x968] = &STACK[0x9490];
  STACK[0x818] = &STACK[0x9530];
  STACK[0xD18] = &STACK[0x95E0];
  STACK[0x8A8] = &STACK[0xA1F0];
  STACK[0x928] = &STACK[0xA290];
  STACK[0x878] = &STACK[0xA330];
  STACK[0xA40] = &STACK[0xA3E0];
  STACK[0xFD0] = &STACK[0xA490];
  STACK[0x690] = &STACK[0xA538];
  STACK[0x7C8] = &STACK[0xA560];
  STACK[0x8E8] = &STACK[0xA8F0];
  STACK[0x1118] = &STACK[0xA9A0];
  STACK[0x1A78] = &STACK[0xAA40];
  STACK[0xAE8] = &STACK[0xAAE0];
  STACK[0xD80] = &STACK[0xAB90];
  STACK[0x648] = &STACK[0xAD00];
  STACK[0xD60] = &STACK[0xAD20];
  STACK[0x2170] = &STACK[0xADE0];
  STACK[0x820] = &STACK[0xAF60];
  STACK[0x1198] = &STACK[0xB010];
  STACK[0xB00] = &STACK[0xB0C0];
  STACK[0x6A8] = &STACK[0xB1F8];
  STACK[0x9A8] = &STACK[0xB220];
  STACK[0xD28] = &STACK[0xB2C0];
  STACK[0x890] = &STACK[0xB360];
  STACK[0x1B78] = &STACK[0xB420];
  STACK[0xE10] = &STACK[0xB850];
  STACK[0x978] = &STACK[0xB900];
  STACK[0xA98] = &STACK[0xB9B0];
  STACK[0xA38] = &STACK[0xBB00];
  STACK[0x1CF0] = &STACK[0xBC60];
  STACK[0xEE8] = &STACK[0xBD10];
  STACK[0x1F68] = &STACK[0xBDC0];
  STACK[0x8C8] = &STACK[0xBE90];
  STACK[0xAB0] = &STACK[0xBF30];
  STACK[0xDE8] = &STACK[0xC0A0];
  STACK[0x6A0] = &STACK[0xC134];
  STACK[0x980] = &STACK[0xC160];
  STACK[0xF40] = &STACK[0xC2B0];
  STACK[0xA78] = &STACK[0xC2E0];
  STACK[0x1188] = &STACK[0xC390];
  STACK[0xE08] = &STACK[0xC3C0];
  STACK[0x638] = &STACK[0xC410];
  STACK[0x1128] = &STACK[0xC8E0];
  STACK[0xD90] = &STACK[0xC990];
  STACK[0x918] = &STACK[0xCA30];
  STACK[0x998] = &STACK[0xCAD0];
  STACK[0xE98] = &STACK[0xCB70];
  STACK[0x8E0] = &STACK[0xCBA0];
  STACK[0x8B8] = &STACK[0xCC50];
  STACK[0xD40] = &STACK[0xCCF0];
  STACK[0x960] = &STACK[0xCDB0];
  STACK[0x7E0] = &STACK[0xCE60];
  STACK[0x880] = &STACK[0xCF10];
  STACK[0xAF0] = &STACK[0xCFC0];
  STACK[0x988] = &STACK[0xD060];
  STACK[0xE00] = &STACK[0xD100];
  STACK[0x1190] = &STACK[0xD1C0];
  STACK[0x1C48] = &STACK[0xD270];
  STACK[0xDF8] = &STACK[0xD320];
  STACK[0xAB8] = &STACK[0xD3D0];
  STACK[0x920] = &STACK[0xD480];
  v11 = *(v9 + 8 * (v10 ^ v6));
  STACK[0x13C8] = *(v7 + 8 * (v6 - 2675));
  v12 = *(v7 + 8 * (v6 - 2622));
  v13 = *(v7 + 8 * (v6 - 2741));
  STACK[0x13C0] = *(v7 + 8 * (v6 ^ 0xAA0));
  v14 = *(v7 + 8 * (v6 ^ 0xA04));
  v15 = *(v7 + 8 * (v6 - 2640));
  v16 = *(v7 + 8 * (v6 - 2581));
  v17 = *(v7 + 8 * (v6 - 2634));
  v18 = *(v7 + 8 * (v6 - 2576));
  STACK[0x13A0] = *(v7 + 8 * (v6 - 2551));
  v19 = *(v7 + 8 * (v6 - 2565));
  v20 = *(v7 + 8 * (v6 - 2633));
  v21 = *(v7 + 8 * (v6 - 2755));
  STACK[0x13A8] = *(v7 + 8 * (v6 ^ 0xA5B));
  STACK[0x13B8] = *(v7 + 8 * (v6 - 2749));
  STACK[0x13B0] = *(v7 + 8 * (v6 - 2626));
  v22 = *(v7 + 8 * (v6 ^ 0xAD8));
  v23 = *(v7 + 8 * (v6 ^ 0xAE6));
  v24 = *(v7 + 8 * (v6 ^ 0xADA));
  v25 = *(v7 + 8 * (v6 - 2740));
  v26 = *(v7 + 8 * (v6 - 2760));
  STACK[0xFB8] = &STACK[0x24B0];
  STACK[0x1110] = &STACK[0x2570];
  STACK[0x8D0] = &STACK[0x2610];
  STACK[0x9E8] = &STACK[0x2AD0];
  STACK[0xAA0] = &STACK[0x2B70];
  STACK[0x858] = &STACK[0x2C20];
  STACK[0x940] = &STACK[0x2CD0];
  STACK[0x7F8] = &STACK[0x2D90];
  STACK[0x9B0] = &STACK[0x2E60];
  STACK[0xF38] = &STACK[0x2F10];
  STACK[0xD08] = &STACK[0x2F40];
  STACK[0x1130] = &STACK[0x2FF0];
  STACK[0xB38] = &STACK[0x30A0];
  STACK[0x908] = &STACK[0x3150];
  STACK[0xA30] = &STACK[0x31F0];
  STACK[0xA60] = &STACK[0x32C0];
  STACK[0x1398] = v24;
  return v11(a1, v18, v14, v16, a5, a6, v15);
}

uint64_t sub_10019D60C(uint64_t a1, unint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(a2 + 4) = 0;
  *(a2 + 20) = 0;
  v26 = *v23;
  v27 = *v22;
  *v20 = 116;
  *v17 = -53;
  v26[55] = 119;
  *STACK[0x1398] = -36;
  *v16 = 81;
  *a4 = -21;
  *a3 = 104;
  *(a2 + 18) = -47;
  *(a2 + 28) = -118;
  *v18 = -101;
  *STACK[0x13A0] = -10;
  *v21 = 119;
  *v15 = 103;
  *(a2 + 48) = -81;
  *a7 = 26;
  *(a2 + 25) = -49;
  v26[26] = 11;
  *(a2 + 17) = 93;
  v26[50] = -36;
  v26[47] = 6;
  *STACK[0x13A8] = -26;
  *(a2 + 16) = -111;
  *v19 = -69;
  *STACK[0x13B8] = 70;
  *(a2 + 39) = 105;
  *(a2 + 37) = -43;
  *v27 = -110;
  *v25 = 79;
  v26[30] = 57;
  *(v27 + 1) = -14505;
  *(a2 + 1) = 50;
  *(a2 + 38) = 65;
  *STACK[0x13C0] = 111;
  *(a2 + 30) = -64;
  *STACK[0x13B0] = 30;
  *(a2 + 53) = 15;
  *STACK[0x13C8] = -12;
  v26[5] = -100;
  *v26 = -105;
  v28 = *v23;
  *(a2 + 41) = -38;
  v28[63] = -28;
  v28[14] = -76;
  *(a2 + 19) = -67;
  *(a2 + 42) = 10;
  v28[43] = 36;
  *a2 = 27;
  v28[76] = 45;
  v28[4] = 119;
  v28[99] = -48;
  *(a2 + 52) = 73;
  *(a2 + 36) = -71;
  *(a2 + 15) = -65;
  v28[51] = 0;
  *(a2 + 9) = -22;
  v28[38] = 55;
  v28[12] = 96;
  v29 = STACK[0x1398];
  v28[74] = -22;
  *(v28 + 35) = -24208;
  *(a2 + 14) = -4;
  v28[66] = 16;
  v28[79] = 106;
  *(a2 + 44) = 103;
  *(a2 + 12) = -36;
  v28[6] = 86;
  *(a2 + 43) = -90;
  v28[15] = 32;
  *(a2 + 3) = -45;
  v28[85] = 6;
  *(a2 + 27) = -95;
  *(a2 + 45) = -27;
  *(a2 + 13) = 43;
  v28[95] = 69;
  v28[23] = -113;
  *(a2 + 47) = 53;
  v28[44] = -75;
  *(a2 + 50) = 106;
  v28[1] = 49;
  *(a2 + 8) = -85;
  *v13 = 1;
  v30 = STACK[0x2348];
  v31 = *(a1 + 48);
  *(v30 + 19864) = STACK[0x2330];
  *(v30 + 19872) = STACK[0x1B80];
  v69 = v31;
  *(v30 + 19880) = v31;
  *(v30 + 19888) = 0;
  STACK[0x22E8] = v30 + 40784;
  *(v30 + 40784) = 47793868;
  *(v30 + 40788) = 47793836;
  *(v30 + 40792) = 47793820;
  *(v30 + 40796) = 47793804;
  v32 = *(a2 + 4);
  STACK[0x1200] = v17;
  v33 = *v17 ^ 0x49;
  STACK[0x1350] = v18;
  v34 = (v14 ^ 0x3CA) + 1720;
  v35 = ((*v29 ^ 0x5BLL) << (((v14 ^ 0xCA) - 72) ^ 0xFEu)) + (*v18 ^ 0x49 | (v33 << 8));
  STACK[0x1370] = a3;
  v36 = *a3 ^ 0x5Bu;
  v37 = v35 + (*(a2 + 39) << 16);
  STACK[0x1368] = v15;
  v38 = (*v15 ^ 0x49u) << 56;
  STACK[0x1280] = v23;
  v39 = *v23;
  v40 = *(a2 + 25) << 16;
  v41 = ((v38 | (v36 << 32) | (*(a2 + 48) << 40)) + v37) ^ (*(*v23 + 55) << 48);
  v43 = 33 * *(*v23 + 50);
  STACK[0x11F8] = v22;
  v44 = *v22;
  v45 = v40 | (v44[2] << 48) | (*(a2 + 17) << 8) | *(a2 + 37) | (*(a2 + 30) << 40) | (*v44 << 24);
  v46 = *(a2 + 18) << 32;
  STACK[0x1380] = a4;
  v47 = *a4 ^ 0x49;
  STACK[0x1390] = a7;
  v48 = *a7 ^ 0x5Bu;
  STACK[0x1208] = v16;
  v49 = (*v16 ^ 0x5BLL) << 24;
  STACK[0x1378] = v20;
  v50 = *v20 ^ 0x49;
  STACK[0x2290] = v44;
  v51 = v45 | v46 & 0xFF00000000 | (v44[1] << 56);
  v52 = *(a2 + 16);
  v53 = *v39;
  STACK[0x1388] = v19;
  v54 = (v49 | (v47 << 8) | v50 | (v52 << 16) | (v48 << 32)) + (v53 << 40) + ((*v19 ^ 0x49u) << 48);
  STACK[0x1358] = v21;
  v55 = v54 ^ ((*v21 ^ 0x5Bu) << 56);
  STACK[0x1360] = v25;
  v56 = *v25 ^ 0x49;
  v57 = v39[26];
  v58 = *STACK[0x13A8];
  v59 = *(a2 + 53);
  v60 = *(&off_10038FA40 + (v14 ^ 0x3CA) - 492) - 4;
  STACK[0x2288] = v60;
  LOBYTE(v60) = *(v60 + (v43 ^ 0x1BLL) + 540);
  v61 = (__ROR4__(__ROR4__(v32 ^ 0xED4DC126, 29) ^ 0xC785349B, 3) ^ 0x95BD67B5) + (((v32 ^ 3) - v32) ^ 0xFFFFFFFE) + (v32 ^ 3);
  v62 = *STACK[0x13C8] ^ 0x49 | (v57 << 8) | (v39[47] << 16) | (*(a2 + 1) << 24) | (v39[30] << 32);
  v63 = (((*STACK[0x13B0] ^ 0x49u) << 48) | ((*STACK[0x13A0] ^ 0x5Bu) << 40)) ^ ((v58 ^ 0x49 | (v56 << 8) | (v59 << 16)) & 0xFFFFFFFF00FFFFFFLL | ((((v60 ^ 0x32 ^ (8 * v60) & 0x58) >> 2) | ((v60 ^ 0x32 ^ (8 * v60) & 0x58) << 6)) << 24) | ((*STACK[0x13C0] ^ 0x5Bu) << 32)) ^ ((*STACK[0x13B8] ^ 0x49u) << 56);
  STACK[0x2298] = v39;
  v64 = (v62 | (v39[5] << 48)) ^ (*(a2 + 38) << 40);
  STACK[0x22D8] = a2;
  v65 = v64 ^ (*(a2 + 28) << 56);
  STACK[0xA68] = &STACK[0x23A0];
  STACK[0x7B0] = &STACK[0x26B0];
  STACK[0x698] = &STACK[0x2E34];
  STACK[0xD20] = &STACK[0x8350];
  STACK[0x22E0] = v30 + 19864;
  LODWORD(STACK[0x233C]) = v32;
  STACK[0x22C8] = v32 << 32;
  LODWORD(STACK[0x22C0]) = v61 + 2 * v32 - 2 * v61 + 3;
  STACK[0x22B8] = 0x4555D68216BCB1FFLL;
  STACK[0x22F8] = v24;
  v66 = *STACK[0x22E8];
  v67 = STACK[0x22E0];
  LODWORD(STACK[0x22D0]) = 0;
  return (*(v24 + 8 * (v34 + 16)))((v34 - 422), **v67 ^ v41 ^ 0xA2963E1DA81F5B47, v63 ^ 0xCC7661EC49E696BLL, 0, 0x3010220D08051610, 576457757, 197, 27, a9, a10, a11, &STACK[0x32A8], a13, v69);
}

uint64_t sub_10019DD50(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  v15 = ((v14 ^ 0xA124FAC13EBE5180) - 2 * ((v14 ^ 0xA124FAC13EBE5180) & 0x22963E1DA81F5B67 ^ v14 & 0x20) + ((a1 + 1573) ^ 0xA2963E1DA81F5622)) ^ a2;
  v16 = v14 ^ 0xA124FAC13EBE5180 ^ a3 ^ 0x9593D8B92E3E9CF3;
  v17 = v9 ^ v8 ^ 0xD549D77C7CB86B85;
  v18 = ((v15 - (v15 ^ 0x115782E906E76F36)) ^ 0xFFFFFFFFFFFFFFFCLL) + v15;
  v19 = v18 ^ (v17 ^ 0x36B8004FC0871D6BLL) & (v8 ^ 0x2AB628838347947ALL) ^ (v15 ^ 0xEEA87D16F91890C9) & (v8 ^ 0xD549D77C7CB86B85) ^ v16;
  v20 = a3 ^ (v14 ^ 0xA124FAC13EBE5180) & (a3 ^ 0x6A6C2746D1C1630CLL) ^ v17 ^ 0x36B8004FC0871D6BLL ^ 0xA572BC652502B089 ^ v18 & ~v16;
  *(&v21 + 1) = v19 ^ 0x926284F6630B422ALL;
  *&v21 = v19;
  v22 = (v21 >> 28) ^ 0xA2963E148E371421 ^ ((v19 ^ 0x926284F6630B422ALL ^ ((v19 ^ 0x926284F6630B422ALL) << 45)) & 0x564DAA4011EC5FC5 ^ ((v19 ^ 0x926284F6630B422ALL) >> 19) & 0xA4011EC5FC5 | (v19 ^ 0x926284F6630B422ALL ^ ((v19 ^ 0x926284F6630B422ALL) << 45)) & 0xA9B255BFEE13A03ALL ^ ((v19 ^ 0x926284F6630B422ALL) >> 19) & 0x15BFEE13A03ALL);
  v23 = v20 ^ (v20 >> 10) ^ (v20 << 47) ^ (v20 << 54);
  v24 = (v23 & 0xA15A58C44FE73CEDLL ^ (v20 >> 17) & 0x58C44FE73CEDLL | v23 & 0x5EA5A73BB018C312 ^ (v20 >> 17) & 0x273BB018C312) + v7 - 2 * ((v23 & 0xA15A58C44FE73CEDLL ^ (v20 >> 17) & 0x58C44FE73CEDLL | v23 & 0x5EA5A73BB018C312 ^ (v20 >> 17) & 0x273BB018C312) & (v7 + 16) ^ (v23 & 0x5EA5A73BB018C312 ^ (v20 >> 17) & 0x273BB018C312) & 0x10);
  v25 = v11 < v10;
  LODWORD(v15) = v13 + a4 + 2295;
  v26 = v25 ^ (v15 < (((a1 + 278) | v12) ^ a6));
  v27 = v15 < v11;
  if (!v26)
  {
    v25 = v27;
  }

  return (*(STACK[0x22F8] + 8 * ((v25 * a7) ^ (a1 + 1573))))((a1 - 1302) | 4u, v22, v24);
}

uint64_t sub_10019E148@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v8 = (a1 + 579009731) & 0xDD7D035E;
  v9 = (a4 - 47793804);
  v10 = v9 + STACK[0x22C8];
  v11 = v10 & STACK[0x22B8];
  STACK[0x22B0] = v8;
  v12 = (v10 - 2 * (v11 ^ v9 & 0x32) + (v8 ^ 0xC555D68216BCB39DLL)) ^ v4;
  v13 = a3 ^ 0xAC97E3C5942BA1A9;
  v14 = v6 ^ 0xC8B34683CFA189DFLL;
  v15 = 0x1000000000000000;
  if ((v12 & 0x1000000000000000) != 0)
  {
    v15 = 0xF000000000000000;
  }

  v16 = v15 + v12;
  v17 = v16 ^ 0x8B9FB7847622522;
  v18 = (v14 - 0x5D69C1E257E0A4B9 - 2 * (v14 & 0x22963E1DA81F5B67 ^ v6 & 0x20)) ^ a2;
  v19 = v14 ^ v13;
  v20 = v16 ^ 0x8B9FB7847622522 ^ v5;
  v21 = v20 ^ 0x2231C7DBE5999228;
  v22 = __ROR8__(v20 ^ 0x2231C7DBE5999228 ^ v13, 31) ^ 0x9CA947BD97CD96A3;
  v23 = v18 ^ 0xADD8D1C214688E77;
  v24 = v18 ^ 0x52272E3DEB977188;
  v25 = v16 ^ 0xF7460487B89DDADDLL;
  v26 = v20 ^ 0xDDCE38241A666DD7;
  if (v16 == 0x8B9FB7847622522)
  {
    v27 = v23;
  }

  else
  {
    v27 = v24 ^ v16 ^ 0x8B9FB7847622522;
  }

  v28 = v24 & ~v19;
  v29 = v26 & v25 ^ v24;
  v30 = (v19 | a3 ^ 0x53681C3A6BD45E56) ^ v14 ^ v26;
  v31 = v27 & v17 ^ v19;
  v32 = v13 ^ -v13 ^ (v21 - (__ROR8__(v22, 33) ^ 0xCBE6CB51CE54A3DELL));
  v33 = a3 ^ v28 ^ 0x17C4D5108A5D14BCLL ^ v30 ^ __ROR8__(a3 ^ v28 ^ 0x17C4D5108A5D14BCLL ^ v30, 10) ^ ((a3 ^ v28 ^ 0x17C4D5108A5D14BCLL ^ v30) << 47) ^ ((a3 ^ v28 ^ 0x17C4D5108A5D14BCLL ^ v30) >> 17);
  v34 = v26 & v13;
  v35 = v31 ^ 0xE1F078EDF251C5ALL ^ __ROR8__(v31 ^ 0xE1F078EDF251C5ALL, 7) ^ ((v31 ^ 0xE1F078EDF251C5ALL) << 23) ^ ((v31 ^ 0xE1F078EDF251C5AuLL) >> 41);
  v36 = v17 ^ 0x58016D63BB21A6E5 ^ v29 ^ (v34 - v32) ^ __ROR8__(v17 ^ 0x58016D63BB21A6E5 ^ v29 ^ (v34 - v32), 61) ^ ((v17 ^ 0x58016D63BB21A6E5 ^ v29 ^ (v34 - v32)) >> 39) ^ ((v17 ^ 0x58016D63BB21A6E5 ^ v29 ^ (v34 - v32)) << 25);
  v37 = v31 ^ 0xA1830219B354D5E6 ^ v29 ^ __ROR8__(v31 ^ 0xA1830219B354D5E6 ^ v29, 19) ^ ((v31 ^ 0xA1830219B354D5E6 ^ v29) >> 28) ^ ((v31 ^ 0xA1830219B354D5E6 ^ v29) << 36) ^ v35;
  v38 = v30 ^ 0x7C0B3FBA135302FCLL ^ ((v30 ^ 0x7C0B3FBA135302FCuLL) >> 1) ^ ((v30 ^ 0x7C0B3FBA135302FCLL) << 58) ^ (((v30 ^ 0x7C0B3FBA135302FCuLL) >> 6) | (v30 << 63));
  v39 = v36 ^ v38;
  v40 = v33 ^ v35;
  if (v36 == -1)
  {
    v38 = 0;
  }

  v41 = v36 & ~v37;
  STACK[0x22A0] = v41 ^ v40;
  v42 = v38 & v39 ^ v37;
  STACK[0x22A8] = v41 ^ v40 ^ 0xC344EC035C8473DBLL ^ ((v41 ^ v40 ^ 0xC344EC035C8473DBLL) << 23) ^ __ROR8__(v41 ^ v40 ^ 0xC344EC035C8473DBLL, 7) ^ ((v41 ^ v40 ^ 0xC344EC035C8473DBLL) >> 41) ^ __ROR8__(__ROR8__(v42 ^ v41 ^ v40 ^ __ROR8__(v42 ^ v41 ^ v40 ^ 0x72CBA32ECDEBFBDFLL, 19) ^ ((v42 ^ v41 ^ v40 ^ 0x72CBA32ECDEBFBDFLL) << 36) ^ ((v42 ^ v41 ^ v40 ^ 0x72CBA32ECDEBFBDFLL) >> 28) ^ 0x4EA49D7D717FFD69, 5) ^ 0xB1E379F29DE4A035, 59);
  return (*(v7 + 8 * (a1 ^ (27 * (LODWORD(STACK[0x22C0]) <= 2 * (STACK[0x22D0] & 1) + (LODWORD(STACK[0x22D0]) ^ 1u))))))();
}

uint64_t sub_10019EC6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = STACK[0x22B0];
  v10 = STACK[0x22B0] + 2097;
  v11 = ((((a4 ^ 0x47) + 89) - (((a4 ^ 0x47) + 89) ^ 0xCE)) ^ 0xFFFFFFFC) + ((a4 ^ 0x47) + 89);
  v12 = STACK[0x2288];
  v13 = STACK[0x2288] + 3;
  v14 = ((v6 >> 16) ^ 0x38) - 2 * (((v6 >> 16) ^ 0x38) & 0x4B ^ (v6 >> 16) & 2);
  LOBYTE(v11) = v11 ^ 0x6D ^ *(v13 + (v11 ^ 0x5C));
  *STACK[0x1398] = (BYTE3(a4) ^ 0x6F) - ((2 * (BYTE3(a4) ^ 0x6F)) & 0xB6) + 91;
  *STACK[0x1200] = (BYTE1(a4) ^ 0x61) - ((((a4 >> 8) ^ 0x61) & 0x4F ^ (a4 >> 8) & 6) << ((v9 + 49) ^ 0x80)) + 73;
  v15 = STACK[0x22D8];
  v15[39] = BYTE2(a4) ^ 7;
  v16 = STACK[0x2298];
  *(STACK[0x2298] + 55) = BYTE6(a2);
  *STACK[0x1370] = (BYTE4(a4) ^ 0xD) - ((2 * (BYTE4(a4) ^ 0xD)) & 0xB6) + 91;
  *STACK[0x1350] = ((v11 >> 1) | (v11 << 7)) - (v11 & 0x92) + 73;
  v15[17] = BYTE1(v6) ^ 0xC5;
  v15[48] = BYTE5(a2);
  *STACK[0x1368] = HIBYTE(a2) - ((2 * HIBYTE(a2)) & 0x92) + 73;
  v17 = (v6 ^ 0x53E69D4ED338C518) + ((2 * v6) & 0x130 ^ 0xFFFFFFFFFFFFFFCFLL);
  v18 = STACK[0x22A0] == 0xC344EC035C8473DBLL;
  *STACK[0x1380] = BYTE1(v4) - ((2 * BYTE1(v4)) & 0x92) + 73;
  HIBYTE(v6) ^= 0x53u;
  v19 = v17 + 153;
  if (v18)
  {
    HIBYTE(v19) = 0;
  }

  HIBYTE(v6) |= HIBYTE(v19);
  v15[18] = BYTE4(v6) ^ 0x4E;
  v20 = STACK[0x2290];
  *v20 = BYTE3(v6) ^ 0xD3;
  v15[25] = (v14 + 73) ^ 0x49;
  v15[30] = BYTE5(v6) ^ 0x9D;
  v15[37] = v6 ^ 0x1A;
  v20[2] = BYTE6(v6) ^ 0xE6;
  *v16 = BYTE5(v4);
  *STACK[0x1390] = BYTE4(v4) - ((2 * BYTE4(v4)) & 0xB6) + 91;
  v15[16] = BYTE2(v4);
  *STACK[0x1378] = v4 - ((2 * v4) & 0x92) + 73;
  v20[1] = HIBYTE(v6);
  *STACK[0x1388] = BYTE6(v4) - ((2 * BYTE6(v4)) & 0x92) + 73;
  *STACK[0x1208] = BYTE3(v4) - ((2 * BYTE3(v4)) & 0xB6) + 91;
  *STACK[0x1358] = (77 * *(v12 + ((HIBYTE(v5) + 12) ^ 0x84) + 268)) ^ 0xFE;
  v21 = STACK[0x22A8] & 8;
  v22 = ((a3 ^ 0x52) + 89) ^ 0xA3 ^ *(v13 + (((a3 ^ 0x52) + 89) ^ 0x92));
  v16[50] = BYTE3(a3) ^ 0x8B;
  v15[53] = BYTE2(a3) ^ 0x46;
  *STACK[0x13A0] = (BYTE5(a3) ^ 0xF1) - ((2 * (BYTE5(a3) ^ 0xF1)) & 0xB6) + 91;
  *STACK[0x13C0] = (BYTE4(a3) ^ 0xFE) - ((2 * (BYTE4(a3) ^ 0xFE)) & 0xB6) + 91;
  v16[26] = BYTE1(v7) ^ 0x5B;
  v16[30] = BYTE4(v7) ^ 0x16;
  v16[47] = BYTE2(v7) ^ 0x58;
  *STACK[0x13B8] = (HIBYTE(a3) ^ 0x3C) - ((2 * (HIBYTE(a3) ^ 0x3C)) & 0x92) + 73;
  *STACK[0x1360] = ((a3 ^ 0x3CEEF1FE8B46A752uLL) >> v21 >> (v21 ^ 8u)) - ((2 * ((a3 ^ 0x3CEEF1FE8B46A752uLL) >> v21 >> (v21 ^ 8u))) & 0x92) + 73;
  *STACK[0x13B0] = (BYTE6(a3) ^ 0xEE) - ((2 * (BYTE6(a3) ^ 0xEE)) & 0x92) + 73;
  v15[28] = HIBYTE(v7) ^ 0x3E;
  *STACK[0x13A8] = ((v22 >> 1) | (v22 << 7)) - (v22 & 0x92) + 73;
  v16[5] = BYTE6(v7) ^ 0x3E;
  *STACK[0x13C8] = v7 ^ 0x23;
  v15[1] = BYTE3(v7) ^ 0x90;
  v15[38] = BYTE5(v7) ^ 0x92;
  *(v15 + 1) = LODWORD(STACK[0x233C]) + 1;
  v23 = *STACK[0x1280];
  v24 = v23[14];
  v25 = v23[63];
  v26 = v15[15];
  v27 = *v15;
  v28 = v23[12];
  v29 = v23[74];
  v30 = v28 & 0x20;
  v31 = v15[44];
  v32 = v23[76];
  v33 = *(v8 + 8 * (v9 ^ 0x2F0));
  v34 = v28 | (v23[43] << 8);
  STACK[0x22B8] = v33 + 276;
  v35 = (v24 ^ *(v33 + 276 + (v24 ^ 0x85)) ^ 1) - 1;
  v33 += 9;
  v36 = *(v33 + (v23[99] ^ 0xFALL));
  v37 = ((v32 << v30 << (v30 ^ 0x20u)) | (v25 << 24)) ^ (v34 | (v31 << 16)) | (v29 << 40);
  v38 = v15[12];
  v39 = v15[36];
  v40 = (v37 | (v23[4] << 48)) ^ (v35 << 56);
  v41 = v15[52];
  v42 = v15[9];
  v43 = (v26 << 24) | (v27 << 8);
  v44 = v15[14] ^ 0xFALL;
  STACK[0x22D0] = v33;
  v45 = v43 | v39 | (v41 << 16) | (v42 << 32);
  LOBYTE(v43) = v36 ^ (16 * (((8 * v36) ^ (-8 * v36) ^ (v36 - ((8 * v36) ^ v36))) + v36)) ^ 0xB8;
  LOBYTE(v44) = *(v33 + v44) ^ (16 * (*(v33 + v44) & 0xA ^ (8 * *(v33 + v44)) | *(v33 + v44) & 5));
  v46 = (v45 | (v15[42] << 56)) ^ (((v43 >> 6) | (4 * v43)) << 40) ^ ((((v44 >> 6) | (4 * v44)) ^ 0xE2u) << 48);
  v47 = v15[8] | (v38 << 8) | (v15[19] << 24) | (v15[41] << 40) | (v23[66] << 16) | (v23[1] << 48) | (v23[23] << 32) | (v23[38] << 56);
  v48 = v23[15] << 32;
  v49 = ((v23[36] << 24) | (v23[85] << 16) | (v23[44] << 32) | (v15[13] << 8) | v15[27] | (v15[45] << 40) | (v23[6] << 48)) ^ (v15[47] << 56);
  *(&v50 + 1) = v48 | (v23[51] << 8) | (v23[79] << 16) | v15[50] | (v23[35] << 24);
  *&v50 = v48 | (v15[43] << 40);
  *&v50 = __ROR8__(((v15[3] << 14) - ((v15[3] << 15) & 0x170000) - 0x543EC56222344518) ^ (v50 >> 34), 30);
  STACK[0x22C0] = v23;
  v51 = __ROR8__((v23[95] << 49) ^ __ROR8__(v50 ^ 0x772EEBA2AF04EA77, 7) ^ 0xE8C4C6EFAEEC5B90, 57) ^ 0xD2D5033CE3FEE693;
  v52 = *(v15 + 5);
  LODWORD(STACK[0x233C]) = v52;
  STACK[0x22C8] = v52 << 32;
  v53 = **STACK[0x22E0] ^ v40 ^ 0x432D55ED3FC12982;
  return (*(STACK[0x22F8] + 8 * ((((9 * (v10 ^ 0xB40) - 3769) | 0x86) - 389) ^ (9 * (v10 ^ 0xB40)))))(3870, 9 * (v10 ^ 0xB40u) - 47793804 + *STACK[0x22E8] - 4042, 2720719838);
}

uint64_t sub_10019F838(int a1)
{
  v7 = v4 < v1;
  v8 = ((16 * (v6 ^ v2)) ^ (v1 - 559)) + v5;
  v9 = v7 ^ (v8 < v1);
  v10 = v8 <= v4;
  if (!v9)
  {
    v7 = v10;
  }

  return (*(v3 + 8 * ((v7 * a1) ^ v6)))();
}

uint64_t sub_10019F8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = (v13 ^ 0xB0B674EB95D32EE7) + 0x7DFE8E661CB4BEB0 - ((((v11 - 584) | 0x10u) + 2665 - 0x402E333C6968D21) & (2 * v13) ^ 0x616C08C429205D40);
  v17 = (v16 + v8 - 2 * (v16 & (v8 + 17) ^ ((v13 ^ 0xE7) - 80) & 0x11)) ^ a5;
  v18 = (v16 - 0x452694779754BC50 - 2 * (v16 & 0x3AD96B8868AB43BCLL ^ (v13 ^ 0xE7) & 0xC)) ^ v14;
  v19 = v18 ^ 0x9A51CD5A2DBCE5CCLL;
  v20 = v15 ^ ((v12 - 47793804) + STACK[0x22C8] - 0x5681ECF4A1317529 - ((2 * ((v12 - 47793804) + STACK[0x22C8])) & 0x52FC2616BD9D15AELL));
  v21 = v20 ^ 0x4582EB436AE4634ELL;
  v22 = ((v20 ^ 0x4582EB436AE4634ELL) - 0x251956B99477DFCFLL - ((2 * (v20 ^ 0x4582EB436AE4634ELL)) & 0xB5CD528CD7104062)) ^ a8;
  v23 = (v22 ^ 0xC60D75EAADE71341) & (v20 ^ 0xBA7D14BC951B9CB1);
  v24 = (v17 ^ 0xC8276B238899D73ALL) & (v18 ^ 0x65AE32A5D2431A33);
  v25 = (v17 ^ 0x37D894DC776628C5) & (v20 ^ 0x4582EB436AE4634ELL) ^ v19;
  v26 = v17 ^ 0xC8276B238899D73ALL ^ v23;
  v27 = v19 & (v14 ^ 0xDF77592DBAE85983);
  v28 = (v22 ^ 0xC60D75EAADE71341) & 0xFFFFFFFFDFFFFFFFLL;
  v29 = (v22 ^ 0xC60D75EAADE71341) & 0x20000000;
  v30 = v22 ^ 0x39F28A155218ECBELL;
  v31 = v14 ^ 0x2088A6D24517A67CLL;
  v32 = v26 - 0x5E7CFDE64CAB2A1ALL - ((2 * v26) & 0x4306043366A9ABCCLL);
  if ((v27 & v29) != 0)
  {
    v29 = -v29;
  }

  v33 = v30 & v31 ^ v21 ^ v26;
  v34 = (v29 + v27) ^ v28;
  v35 = v32 ^ v25 ^ ((v32 ^ v25) << 36) ^ ((v32 ^ v25) << 45);
  v36 = v24 ^ v31 ^ 0x44ACC92AE1894AEALL ^ v34;
  v34 ^= 0x83F4C045ECACFD03;
  v37 = v35 + ((v32 ^ v25) >> 19) - 2 * (v35 & ((v32 ^ v25) >> 19));
  *(&v38 + 1) = v33;
  *&v38 = v33 ^ 0x58016D63BB21A6E5;
  v39 = (v34 >> 6) | (v34 << 63);
  v40 = (v38 >> 39) ^ v33 ^ 0x58016D63BB21A6E5 ^ (8 * (v33 ^ 0x58016D63BB21A6E5)) ^ ((v33 ^ 0x58016D63BB21A6E5) >> 61);
  v41 = v40 ^ 0xC776434DCA000000;
  v42 = v36 ^ (v36 << 54) ^ (v36 << 47) ^ (v36 >> 10) ^ (v36 >> ((v32 ^ v25) & 0x11) >> ((v32 ^ v25) & 0x11 ^ 0x11));
  v43 = (v40 ^ 0x3889BCB235FFFFFFLL) & 0x2000000000;
  v44 = v34 ^ (v34 >> 1) ^ (v34 << 58) ^ v40 ^ 0xC776434DCA000000;
  v45 = v44 ^ v39;
  v46 = v25 ^ (v25 >> 7) ^ ((v25 ^ 0xE1F078EDF251C5ALL) << 23) ^ (((v25 ^ 0xE1F078EDF251C5ALL) >> 41) | ((v25 ^ 0xE1F078EDF251C5ALL) << 57)) ^ 0xE033981C29B5662;
  v47 = v42 ^ v46;
  v48 = v46 ^ ((v32 ^ v25) >> 28) ^ v37;
  v49 = v44 ^ ~v39;
  if ((v43 & ~v45) != 0)
  {
    v50 = -v43;
  }

  else
  {
    v50 = (v40 ^ 0x3889BCB235FFFFFFLL) & 0x2000000000;
  }

  v51 = (v50 + v49) ^ (v40 ^ 0x3889BCB235FFFFFFLL) & 0xFFFFFFDFFFFFFFFFLL;
  if (v40 == 0xC776434DCA000000)
  {
    v52 = -1;
  }

  else
  {
    v52 = v51;
  }

  v53 = v52 & v45 ^ v48;
  v54 = v42 & ~v45 ^ v41 ^ v53;
  v55 = (v48 & ~v47 ^ -(v48 & ~v47) ^ (v42 - (v48 & ~v47) - (v42 ^ -v42 ^ ((v48 & ~v47) - (v48 & ~v47 ^ v42))))) + v42;
  v56 = v46 & ~v42 ^ v45;
  v57 = v56 ^ 0x9E0D5B82563D407FLL ^ v55;
  v58 = v56 ^ 0xDDFB95B42C8283D2 ^ (v56 << 63) ^ ((v56 ^ 0xDDFB95B42C8283D2) << 58) ^ ((v56 ^ 0xDDFB95B42C8283D2) >> 1) ^ ((v56 ^ 0xDDFB95B42C8283D2) >> 6);
  v59 = v47 ^ (~(2 * v48) + v48) & v41;
  v60 = v59 ^ 0xC344EC035C8473DBLL;
  v61 = v59 ^ 0xC344EC035C8473DBLL ^ ((v59 ^ 0xC344EC035C8473DBLL) << 23);
  v62 = v59 ^ 0x72CBA32ECDEBFBDFLL ^ v53;
  v63 = v54 ^ 0x194E2B99B206A28BLL ^ (8 * (v54 ^ 0x194E2B99B206A28BLL)) ^ ((v54 ^ 0x194E2B99B206A28BLL) >> 39) ^ ((v54 >> 61) | ((v54 ^ 0x194E2B99B206A28BLL) << 25));
  v64 = v63 ^ v58;
  v65 = v61 ^ (v60 >> 7) ^ (v60 << 57) ^ (v60 >> 41);
  v66 = v62 ^ (v62 << 36) ^ (v62 << 45) ^ (v62 >> 19) ^ (v62 >> 28) ^ v65;
  v67 = v57 ^ (v57 >> 10) ^ (((v57 << 47) ^ (v57 << 54)) & 0xFFFF800000000000 | (v57 >> 17));
  v68 = v58 & ~v63 ^ v66;
  v69 = v67 & ~(v63 ^ v58);
  v70 = v67 ^ v65 ^ v63 & ~v66;
  v71 = v70 ^ v68;
  v72 = v70 ^ v68 ^ 0x27DC93BC1C4845B2;
  v73 = __ROR8__(v72, 24);
  v74 = ((v73 & 0xF80000FFFFFFFFFFLL ^ -(v73 & 0xF80000FFFFFFFFFFLL) ^ (0x26C619615404582BLL - (v73 & 0xF80000FFFFFFFFFFLL ^ 0x26C619615404582BLL))) + 0x26C619615404582BLL) ^ __ROR8__(v72 ^ (v72 << 45), 5);
  v75 = v63 ^ 0xC6071F894D289F7DLL ^ v69 ^ v68;
  v76 = v75 ^ __ROR8__(v75, 39);
  v77 = v65 & ~v67 ^ v64;
  v78 = v67 ^ 0x6E8A89BF2F77EC30 ^ v77 ^ v66 & ~(v67 ^ v65);
  v79 = (v78 >> 17) + v78 - 2 * ((v78 >> 17) & v78);
  v80 = v79 ^ (v78 << 54);
  v81 = (v79 & 0x1000 | (v78 << 47)) ^ v80 & 0xFFFFFFFFFFFFEFFFLL;
  v82 = (v81 ^ v80) - 2 * v81 + 2 * (v81 & v80);
  v83 = (((v75 >> 61) ^ -(v75 >> 61) ^ ((v76 & 0x2B86FBCD2C86A9A7) - (v76 & 0x2B86FBCD2C86A9A7 ^ (v75 >> 61)))) + v76) ^ (8 * v75);
  v84 = ((((v77 << 63) | 0x6000000000000000) ^ ((v77 ^ 0x15235A01DF27F45ALL) << 58)) & 0xFC00000000000000 | ((v77 ^ 0x15235A01DF27F45ALL) >> 6)) ^ __ROR8__(__ROR8__(v77 ^ 0x15235A01DF27F45ALL, 32) & 0xFFFFFFFEFFFFFFFFLL ^ __ROR8__(v77 ^ 0x15235A01DF27F45ALL, 31) ^ 0xF430FF527E9BE6CDLL, 33) ^ v83;
  *(&v85 + 1) = v72;
  *&v85 = v71;
  v86 = (v85 >> 28) ^ __ROR8__(v74, 59) ^ 0xD8C32C28FD423EA5;
  v87 = v70 ^ 0x2A85560B5D2C708BLL ^ __ROR8__(v70 ^ 0x2A85560B5D2C708BLL, 41) ^ ((v70 ^ 0x2A85560B5D2C708BLL) >> 7) ^ ((v70 ^ 0x2A85560B5D2C708BLL) << 57);
  v88 = (((v78 << 47) ^ (0xFFFF800000000000 * v78) ^ v82) + v80) ^ (v78 >> 10);
  v89 = v84 ^ 0x5F4DF366FA187FA9;
  v90 = (v86 ^ -v86 ^ (v87 - (v86 ^ v87))) + v87;
  v91 = (v83 ^ 0x367FA2D5) - 914334421 + ((2 * v83) & 0x6CFF45AA);
  v92 = v91 & 0x200000000;
  v93 = v88 & (v84 ^ 0xA0B20C9905E78056);
  v94 = v91 & 0xFFFFFFFDFFFFFFFFLL;
  v95 = v90 ^ (~(2 * v83) + v83) & v89;
  if ((v93 & v92) != 0)
  {
    v96 = -v92;
  }

  else
  {
    v96 = v92;
  }

  v97 = v95 ^ v94 ^ (v96 + v93);
  v98 = v88 ^ v87;
  v99 = v97 ^ 0x15831A5A4A12CDCELL ^ (v97 >> 61) ^ ((v97 ^ 0x15831A5A4A12CDCELL) >> 39) ^ (8 * (v97 ^ 0x15831A5A4A12CDCELL)) ^ ((v97 ^ 0x15831A5A4A12CDCELL) << 25);
  v100 = v87 & ~v88 ^ v89;
  v101 = v88 ^ (v98 | ~v90) ^ v100 ^ 0x62DE77D0F5D75B09;
  v102 = v83 & ~v90 ^ v98;
  v103 = v95 ^ 0x823BD6091D759128 ^ v102;
  v104 = v100 ^ 0x991C7D9C137A2073 ^ ((v100 ^ 0x991C7D9C137A2073) >> 1) ^ ((((v100 ^ 0x991C7D9C137A2073) << 63) ^ ((v100 ^ 0x991C7D9C137A2073) << 58)) & 0xFC00000000000000 | ((v100 ^ 0x991C7D9C137A2073) >> 6));
  v105 = v102 ^ 0xEF03B030F5EC316CLL ^ ((v102 ^ 0xEF03B030F5EC316CLL) >> 7) ^ __ROR8__(v102 ^ 0xEF03B030F5EC316CLL, 41) ^ ((v102 ^ 0xEF03B030F5EC316CLL) << 57);
  v106 = v103 ^ (v103 >> 19) ^ (v103 << 36) ^ (v103 >> 28) ^ (v103 << 45) ^ v105;
  v107 = (v101 ^ (v101 >> 10) ^ (v101 >> 17)) & 0xFFFFFFFFFFEFFFFFLL ^ (v101 << 54) ^ ((v101 ^ (v101 >> 10) ^ (v101 >> 17)) & 0x100000 | (v101 << 47));
  v108 = v107 & ~(v99 ^ v104);
  v109 = v104 & ~v99 ^ v106;
  v110 = v107 + v105 - 2 * (v107 & v105);
  v111 = v110 & ~v107 ^ v99 ^ v104;
  v112 = v106 & ~v110 ^ v107 ^ v111;
  v113 = v110 ^ v99 & ~v106;
  v114 = v109 ^ v113 ^ 0xD97F1599E2A57D19;
  v115 = v114 + 0x2E3FB3EB526B1E9;
  v116 = 0xFD1C04C14AD94E17;
  if (v114 < 0xFD1C04C14AD94E17)
  {
    v115 = v109 ^ v113 ^ 0xD97F1599E2A57D19;
    v116 = 0;
  }

  if (v115)
  {
    v117 = v109 ^ v113 ^ 0xD97F1599E2A57D19;
  }

  else
  {
    v117 = v116;
  }

  *(&v118 + 1) = v117;
  *&v118 = v109 ^ v113 ^ 0xD97F1599E2A57D19;
  v119 = v99 ^ 0xAA63DF22FDEE5AFCLL ^ v108 ^ v109;
  v120 = *(STACK[0x22D0] + ((v119 >> (v112 & 0x3D) >> (v112 & 0x3D ^ 0x3D)) ^ 0xFALL));
  v121 = (v118 >> 19) ^ v114 ^ (v117 >> 28) ^ (v117 << 36);
  v122 = ((v120 << 7) ^ (16 * v120) ^ v120 & 0xF9 | v120 & 6) ^ 0xB8;
  v123 = v112 ^ 0x444816DFD5BAEF7DLL ^ ((v112 ^ 0x444816DFD5BAEF7DLL) >> 10) ^ ((v112 ^ 0x444816DFD5BAEF7DLL) >> 17) ^ ((v112 ^ 0x444816DFD5BAEF7DLL) << 47) ^ ((v112 ^ 0x444816DFD5BAEF7DLL) << 54);
  v124 = v119 ^ ((v122 >> 6) | (4 * v122)) ^ (v119 << 25) ^ (8 * v119) ^ (v119 >> 39);
  v125 = v113 ^ 0xC74D2323DF494E2DLL ^ ((v113 ^ 0xC74D2323DF494E2DLL) << 23) ^ ((v113 ^ 0xC74D2323DF494E2DLL) >> 7) ^ (((v113 ^ 0xC74D2323DF494E2DLL) >> 41) | ((v113 ^ 0xC74D2323DF494E2DLL) << 57));
  v126 = v121 ^ v125;
  v127 = v121 == v125;
  v128 = v121 ^ v123;
  if (v127)
  {
    v128 = ~(v123 ^ v125);
  }

  v129 = v124 ^ v111 ^ 0xB9DF2543D54ABC64 ^ ((v111 ^ 0xB9DF2543D54ABC64) >> 1) ^ ((v111 ^ 0xB9DF2543D54ABC64) << 58) ^ (((v111 ^ 0xB9DF2543D54ABC64) >> 6) | (v111 << 63)) ^ v125 & ~v123 ^ v123 ^ v128 & v126;
  return (*(v9 + 8 * (v11 ^ (4028 * (v10 == 2)))))(a1, v129 ^ ((v129 ^ 0x3F9865619BC422BCLL) << 47) ^ (((v129 ^ 0x3F9865619BC422BCLL) >> 17) | ((v129 ^ 0x3F9865619BC422BCLL) << 54)) ^ (((((v129 ^ 0x3F9865619BC422BCLL) - (v129 ^ 0x3F9865619BC42224)) ^ 0xFFFFFFFFFFFFFFF0) + (v129 ^ 0x3F9865619BC422BCLL)) >> 10));
}

uint64_t sub_1001A0440@<X0>(unint64_t a1@<X1>, unint64_t a2@<X4>, unint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v6 = (v5 + 20) | 0x601;
  v7 = STACK[0x22C0];
  v7[12] = a2 ^ 0x88;
  v8 = STACK[0x22B8];
  v9 = *(STACK[0x22B8] + (BYTE1(a2) ^ 0x31));
  v7[76] = BYTE4(a2) ^ 9;
  v7[63] = BYTE3(a2) ^ 0xD8;
  v10 = STACK[0x22D8];
  *v10 = BYTE1(v4) ^ 0xF8;
  v7[74] = BYTE5(a2) ^ 0xCC;
  *(v10 + 52) = BYTE2(v4) ^ 0x70;
  *(v10 + 15) = BYTE3(v4) ^ 0x83;
  v7[14] = HIBYTE(a2) ^ 0xCD;
  v7[4] = BYTE6(a2) ^ 0xE3;
  *(v10 + 44) = (a2 >> (((v5 + 20) | 1u) - 29)) ^ 0xE3;
  v7[43] = (BYTE1(a2) ^ 0xB4 ^ v9 ^ 1) - 1;
  *(v10 + 14) = BYTE6(v4) ^ 0x2C;
  *(v10 + 9) = BYTE4(v4) ^ 0x9C;
  *(v10 + 36) = v4 ^ 0xE5;
  v7[99] = BYTE5(v4) ^ 0xAB;
  v11 = HIBYTE(v4) ^ 0x6E;
  v12 = STACK[0x22D0];
  v13 = *(STACK[0x22D0] + v11);
  v14 = v13 ^ (16 * ((v13 ^ -v13 ^ (8 * v13 - ((8 * v13) ^ v13))) + 8 * v13));
  *(v10 + 19) = BYTE3(a3) ^ 0x9E;
  *(v10 + 12) = BYTE1(a3) ^ 0x98;
  *(v10 + 42) = ((v14 ^ 0xB8) >> 6) | (4 * (v14 ^ 0xB8));
  v7[66] = BYTE2(a3) ^ 0xCD;
  *(v10 + 8) = a3 ^ 0x7C;
  v15 = *(v12 + (BYTE4(a3) ^ 0x54));
  *(v10 + 41) = BYTE5(a3) ^ 0x9D;
  v16 = ((v15 >> 2) | (v15 << 6)) ^ (2 * (v15 & 1)) ^ 0x41;
  v17 = v15 ^ 0xFFFFFFE8 ^ (((v16 & 0xC0) >> 2) | (v16 << 6));
  v7[23] = (v17 >> 6) | (4 * v17);
  v18 = *(v8 + (((BYTE6(a3) ^ 0xCE) - ((2 * (HIWORD(a3) ^ 0x71CE)) & 0x1FA) + 253) ^ 0x78));
  *(v10 + 27) = a1 ^ 0xBC;
  v7[38] = HIBYTE(a3) ^ 0x71;
  v7[1] = (((BYTE6(a3) ^ 0xCE) - ((2 * (BYTE6(a3) ^ 0xCE)) & 0xFA) - 3) ^ v18 ^ 0xFC) - 1;
  v19 = ((BYTE1(a1) ^ 0xDF) - ((2 * ((a1 >> 8) ^ 0xFFFFFFDF)) & 0xF0) + 120) ^ 0x96DB14EFLL;
  v20 = ((v19 >> 13) & 0xFFFFFFFF0007FFFFLL | ((v19 & 0x1FFF) << 19)) ^ 0xA77CB6D8;
  LOBYTE(v20) = *(v8 + ((v20 >> 19) & 0xFFFFFFFF00001FFFLL | ((v20 & 0x7FFFF) << 13)));
  v7[44] = BYTE4(a1) ^ 0x61;
  *(v10 + 45) = BYTE5(a1) ^ 0x65;
  v7[36] = BYTE3(a1) ^ 0x9B;
  *(v10 + 47) = HIBYTE(a1) ^ 0x3F;
  *(v10 + 13) = (BYTE1(a1) ^ 0x23 ^ v20) - 1;
  v7[6] = BYTE6(a1) ^ 0x98;
  v7[85] = (__ROR8__(__ROR8__((a1 ^ 0x3F9865619BC422BCLL) >> (a3 & 0x10 ^ 0x10), 6) ^ 0xF9FAEA47AF9955E8, 58) ^ 0x7EBA91EBE6557A3EuLL) >> (a3 & 0x10);
  LOBYTE(v13) = *(v12 + (a4 ^ 0x2ELL)) ^ (*(v12 + (a4 ^ 0x2ELL)) << 7) ^ (16 * *(v12 + (a4 ^ 0x2ELL))) ^ 0xB8;
  v7[51] = BYTE1(a4) ^ 0x6C;
  *(v10 + 50) = (v13 >> 6) | (4 * v13);
  v7[79] = BYTE2(a4) ^ 0x1F;
  LOBYTE(v20) = *(v8 + (BYTE3(a4) ^ 0xBFLL));
  v7[15] = BYTE4(a4) ^ 0x8D;
  *(v10 + 3) = BYTE6(a4) ^ 0x5A;
  v7[95] = HIBYTE(a4) ^ 0xC1;
  *(v10 + 43) = BYTE5(a4) ^ 0x9E;
  v7[35] = (BYTE3(a4) ^ 0x3B ^ v20) - 1;
  *(v10 + 20) = LODWORD(STACK[0x233C]) + 1;
  v21 = *(v10 + 4);
  LODWORD(STACK[0x230C]) = v21;
  v22 = *STACK[0x1280];
  v23 = *STACK[0x11F8];
  v24 = *(v10 + 25);
  v25 = *STACK[0x1398];
  v26 = *STACK[0x1208];
  v27 = *v23;
  v28 = v23[2] << 48;
  LODWORD(v12) = *STACK[0x1380];
  v29 = *(&off_10038FA40 + (v5 ^ 0x33));
  v30 = v29 - 8;
  v31 = v29 + 4;
  v32 = (*STACK[0x1350] ^ 0x49 | ((*STACK[0x1200] ^ 0x49) << 8) | (*(v10 + 39) << 16) | ((v25 ^ 0x5Bu) << 24) | (*(v10 + 48) << 40)) ^ ((v22[55] << 48) | ((*STACK[0x1368] ^ 0x49u) << 56) | ((*STACK[0x1370] ^ 0x5Bu) << 32));
  v33 = *(v10 + 37) | ((-71 * ((*(v29 + 4 + (((*(v10 + 17) >> (v25 & 6 ^ 2)) >> (v25 & 6 ^ 4)) ^ (4 * *(v10 + 17)) ^ 7)) + 111) ^ 0xED)) << 8);
  v34 = *(v10 + 30);
  v35 = *(v10 + 18);
  LODWORD(v29) = *(v10 + 16);
  STACK[0x22B0] = v23;
  v36 = v23[1] << 56;
  HIDWORD(v37) = v26 ^ 0x1B;
  LODWORD(v37) = (v26 ^ 0x40) << 24;
  LODWORD(v34) = *STACK[0x1378] ^ 0x49 | ((v12 ^ 0x49) << 8);
  STACK[0x22C0] = v31;
  LOBYTE(v24) = *(v31 + ((v37 >> 30) ^ 7)) + 111;
  LODWORD(v34) = v34 | (v29 << 16);
  LOBYTE(v12) = ((v24 >> 5) | (8 * v24)) ^ 0xED;
  v38 = (*STACK[0x1388] ^ 0x49u) << 48;
  LOBYTE(v27) = -71 * (((v12 >> 3) | (32 * v12)) ^ 0x50);
  v39 = v32 - v21 + (v21 & 0xF7FFFFFF ^ 0x80A27E40 ^ -(v21 & 0xF7FFFFFF ^ 0x80A27E40) ^ ((v21 & 0x8000000 | 0x80A27E40) - (v21 & 0xF7FFFFFF ^ 0x80A27E40 ^ (v21 & 0x8000000 | 0x80A27E40)))) + (v21 & 0x8000000 | 0x80A27E40);
  v40 = v39 - ((2 * v39) & 0x1067D361799A4C34) + 0x833E9B0BCCD261ALL;
  v41 = *(v10 + 38);
  v42 = *STACK[0x13B8] ^ 0x49u;
  v43 = v22[5];
  v44 = *STACK[0x1358] ^ 0x5Bu;
  v45 = *STACK[0x13C0] ^ 0x5Bu;
  v46 = ((((v27 << 24) | ((*STACK[0x1390] ^ 0x5Bu) << 32)) >> 30) | (*v22 << 10) | (((v27 << 24) | v34) << 34)) ^ 0xF3AE504EF5931257;
  v47 = (*STACK[0x13B0] ^ 0x49u) << 48;
  v48 = v22[30];
  v49 = *STACK[0x13A0] ^ 0x5Bu;
  v50 = v22[47];
  v51 = *STACK[0x13A8] ^ 0x49 | ((*STACK[0x1360] ^ 0x49) << 8) | (*(v10 + 53) << 16) | (v22[50] << 24);
  STACK[0x22B8] = v22;
  v52 = ((v41 << 40) | (*(v10 + 28) << 56) | (v43 << 48) | *STACK[0x13C8] ^ 0x49 | (v48 << 32) | (v50 << 16) | (v22[26] << 8) | (*(v10 + 1) << 24)) ^ 0xDF996A9BB8A605F0;
  STACK[0x22E0] = v21 << 32;
  LODWORD(STACK[0x22E8]) = 1;
  v53 = (*(&off_10038FA40 + v6 - 1398) - 8);
  STACK[0x22D0] = v53;
  v54 = *v53;
  v55 = (*(&off_10038FA40 + v6 - 1510) - 4);
  STACK[0x22C8] = v55;
  if (*v55 > 1u)
  {
    v56 = *v55;
  }

  return (*(STACK[0x22F8] + 8 * ((v6 + 1274) ^ 0x64)))((*v54 << ((((*(v30 + 386) & 0x16 | 8) ^ (*(v30 + 386) >> 1)) << ((((v6 - 6) ^ 0x93) + 122) ^ v6)) ^ 0xA8u)) ^ v40);
}

uint64_t sub_1001A0FF0(uint64_t a1)
{
  v8 = v4 ^ ((v7 | STACK[0x22E0]) + 0x6964F3215E0F3196 - 2 * ((v7 | STACK[0x22E0]) & 0x6964F3215E0F319ELL ^ v7 & 8));
  v9 = v5 ^ v1;
  v10 = v5 ^ v1 ^ 0x6BDBCB1917D6E04ELL;
  v11 = a1 ^ v1;
  v12 = v9 ^ (v3 - 2142775126) & 0x7FB8272F ^ 0x942434E6E829199CLL;
  v13 = v8 - ((2 * v8) & 0x3173F6F08EC44A44) + 0x18B9FB7847622522;
  v14 = (v13 - ((2 * v13) & 0xCB70D55EEFEB0B32) - 0x1A479550880A7A67) ^ v6;
  v15 = (v12 - v10) ^ 0xFFFFFFFFFFFFFFFELL;
  v16 = (v11 ^ 0xC8C33B964EDB18FALL) & v13;
  v11 ^= 0x373CC469B124E705uLL;
  v17 = (v15 + v12) & v11;
  v18 = v12 ^ v16;
  v19 = (v14 ^ 0x2231C7DBE5999228) & (v5 ^ 0xF90C37020E57AF26);
  v20 = (v14 ^ 0xDDCE38241A666DD7) & ~v13 ^ v11;
  v21 = v20 ^ v18 ^ 0xA1830219B354D5E6;
  v22 = v12 & (v5 ^ 0x6F3C8FDF1A850D9) ^ v14 ^ 0xDDCE38241A666DD7;
  v23 = v18 ^ 0xE1F078EDF251C5ALL;
  v24 = v13 ^ 0x58016D63BB21A6E5 ^ v19 ^ v20;
  v25 = v5 ^ v17 ^ 0xBDA0FE28EFDEE5CCLL ^ v22;
  v26 = v24 ^ __ROR8__(v24, 39) ^ __ROR8__(v24, 61);
  v27 = v23 ^ __ROR8__(v23, 7) ^ (v23 << 23) ^ (v23 >> 41);
  v28 = v22 ^ 0x83F4C045ECACFD03 ^ ((v22 ^ 0x83F4C045ECACFD03) >> 1) ^ ((v22 ^ 0x83F4C045ECACFD03) << 58) ^ ((v22 ^ 0x83F4C045ECACFD03) >> 6) ^ ((v22 ^ 0x83F4C045ECACFD03) << 63);
  v29 = v28 ^ v26;
  v30 = (v28 ^ v26) >> 47;
  v31 = (v25 >> 10) & 0x21A60068612F8ALL;
  v32 = (v25 ^ (v25 << 47)) & 0x851E59FF979ED075 ^ (v25 >> 10) & 0x1E59FF979ED075 | (v25 ^ (v25 << 47)) & 0x7AE1A60068612F8ALL;
  v33 = (v28 ^ v26) << 17;
  v34 = (v25 >> 17) | (v25 << 54);
  v35 = 0x200000000000000;
  if ((v26 & 0x200000000000000) != 0)
  {
    v35 = 0xFE00000000000000;
  }

  v36 = v35 + v26;
  v37 = v34 ^ v31 ^ v32;
  v38 = __ROR8__(v29, 47);
  v39 = v21 ^ (v21 << 36) ^ (v21 << 45) ^ (v21 >> 19) ^ (v21 >> 28) ^ v27;
  v40 = (v33 - (v38 & 0x2885EFDF8873F6FALL) - (v38 & 0xD77A1020778C0905)) ^ -v30;
  v41 = v36 ^ 0x200000000000000;
  v42 = v40 ^ v30;
  v43 = v40 + v33;
  v44 = v28 == v26;
  *(&v46 + 1) = v26;
  *&v46 = v36 ^ 0x200000000000000;
  v45 = v46 >> 48;
  v47 = v36 ^ 0xFDFFFFFFFFFFFFFFLL;
  v48 = (__ROR8__(__ROR8__(v39, 5) ^ 0xC82EF5F14E67D21, 59) ^ 0x6FA2141D63305BDELL) & v41;
  v49 = v27 & ~v37 ^ v29;
  v50 = v47 ^ v29;
  if (v44)
  {
    v51 = 0;
  }

  else
  {
    v51 = v47 ^ v29;
  }

  v52 = v24 >> 61;
  v53 = v37 ^ v27;
  v54 = ((v51 | v47) - v50) ^ v39;
  v55 = v39 & ~v53;
  *(&v56 + 1) = v42;
  *&v56 = v43;
  v57 = v54 ^ __ROR8__(v45 ^ 0xBD0EF6189179DF32, 16) ^ v37 & ~(v56 >> 17);
  v58 = v53 ^ v48;
  v59 = v54 ^ 0x72CBA32ECDEBFBDFLL ^ v58;
  v60 = v37 ^ 0x9E0D5B82563D407FLL ^ v49;
  v61 = __ROR8__(__ROR8__(v49, 33) ^ 0x84BCF3202993B4B1, 31);
  v62 = v60 ^ v55;
  v63 = 4;
  if ((v59 & 4) != 0)
  {
    v63 = -4;
  }

  v64 = v63 + v59;
  v65 = v57 ^ 0xC67C9697441E33F2 ^ ((v57 ^ 0xC67C9697441E33F2) << 25) ^ (8 * (v57 ^ 0xC67C9697441E33F2)) ^ ((v57 ^ 0xC67C9697441E33F2) >> 39);
  v66 = v65 + ((v57 >> 61) ^ 6) - 2 * (v65 & ((v57 >> 61) ^ 6));
  *(&v67 + 1) = v64 ^ 4;
  *&v67 = v64;
  v68 = __ROR8__(__ROR8__(v66 ^ 0x745EA60CCD9056CALL, 53) ^ 0xF530666C82B653A2, 11);
  v69 = v62 ^ (v62 << 47) ^ (v62 >> 10) ^ (v62 >> 17) ^ (v62 << 54);
  v70 = v58 ^ 0xC344EC035C8473DBLL ^ ((v58 ^ 0xC344EC035C8473DBLL) << 57) ^ __ROR8__(v58 ^ 0xC344EC035C8473DBLL, 41) ^ ((v58 ^ 0xC344EC035C8473DBLL) >> v52 >> (v52 ^ 7u));
  v71 = v59 ^ (v59 >> 19) ^ v70 ^ (v67 >> 28) ^ ((v64 ^ 4) << (v15 & 0x2D) << (v15 & 0x2D ^ 0x2D));
  v72 = v61 ^ 0x8EDCFCD725FB6592 ^ ((v61 ^ 0x8EDCFCD725FB6592) << 58) ^ (((v61 ^ 0x8EDCFCD725FB6592) >> 6) ^ ((v61 ^ 0x8EDCFCD725FB6592) >> 1) | (v61 << 63));
  v73 = v68 ^ v72;
  v74 = v69 & ~(v68 ^ v72);
  v75 = v71 & ~(v69 ^ v70);
  v76 = v72 & ~v68 ^ v71;
  v77 = v70 & ~v69;
  v78 = v66 & ~v71;
  v79 = v66 ^ 0xC6071F894D289F7DLL ^ v74 ^ v76;
  v80 = v78 ^ v69 ^ v70;
  v81 = v73 ^ v77;
  v82 = v75 & 0xFFFDFFFFFFFFFFFFLL;
  v83 = v75 & 0x2000000000000;
  v84 = v80 ^ 0x27DC93BC1C4845B2 ^ v76;
  v85 = v69 ^ -v69 ^ (v81 - (v81 ^ v69));
  v86 = v84 >> 28;
  v87 = (v85 ^ v81) + 2 * (v85 & v81);
  if ((v87 & v83) != 0)
  {
    v83 = -v83;
  }

  v88 = v82 ^ 0x6E8A89BF2F77EC30 ^ (v83 + v87);
  v89 = v80 ^ 0x2A85560B5D2C708BLL;
  v90 = __ROR8__(v84, 19);
  v91 = v79 ^ (8 * v79) ^ (v79 >> 39) ^ (v79 >> 61) ^ (v79 << 25);
  v92 = (v80 ^ 0x2A85560B5D2C708BLL) << 23;
  v93 = v84 ^ v90 ^ (v84 << 36) ^ -(v84 ^ v90 ^ (v84 << 36)) ^ (v86 - (v84 ^ v90 ^ (v84 << 36) ^ v86));
  v94 = ((v81 ^ 0x15235A01DF27F45ALL ^ ((v81 ^ 0x15235A01DF27F45ALL) >> 1) ^ ((v81 ^ 0x15235A01DF27F45ALL) >> 6)) + (v81 << 63)) ^ ((v81 ^ 0x15235A01DF27F45ALL) << 58);
  if ((v91 & 0x40 & v94) != 0)
  {
    v95 = -(v91 & 0x40);
  }

  else
  {
    v95 = v91 & 0x40;
  }

  v96 = v95 + v94;
  v97 = v88 ^ (v88 << 47) ^ (v88 >> 10) ^ ((v88 >> 17) | (v88 << 54));
  v44 = (v92 & 0x8000000000 & v80) == 0;
  v98 = v89 - (v92 & 0x8000000000);
  v99 = v92 & 0x8000000000 ^ v89;
  v100 = v93 + v86;
  v101 = v92 & 0xFFFFFF7FFFFFFFFFLL;
  v102 = v96 ^ v91 & 0xFFFFFFFFFFFFFFBFLL;
  if (v44)
  {
    v98 = v99;
  }

  v103 = ((v89 >> 41) | (v89 << 57)) ^ (v89 >> 7) ^ v101 ^ v98;
  v104 = v97 & 0x20000000;
  v105 = __ROR8__(v97, 59) & 0xFFFFFFFBFFFFFFFFLL;
  if ((v97 & 0x20000000 & v103) != 0)
  {
    v104 = -v104;
  }

  v106 = v104 + v103;
  v107 = v100 ^ v103;
  v108 = __ROR8__(v105 ^ __ROR8__(v106, 59) ^ 0x4CB960FFE26CE774, 5);
  v109 = v108 ^ v91 & ~v107;
  v110 = v108 ^ 0xA265CB07FF13673BLL;
  v111 = v108 ^ 0x5D9A34F800EC98C4;
  v112 = __ROR8__(v96 & ~v91 ^ v107, 28);
  v113 = v111 & v107;
  v114 = __ROR8__(v112 ^ 0xE0B46AC0BF725E2DLL, 36);
  v115 = v97 & ~v102 ^ v91 ^ v114;
  v116 = (((v109 ^ v114 ^ 0xA992EEE521182197) - (v109 ^ v114 ^ 0x2BA938EC3C6DB0BFLL)) ^ 0xFFFFFFFFFFFFFFF0) + (v109 ^ v114 ^ 0xA992EEE521182197);
  v117 = (v110 & ~v97) + v102 - 2 * (v110 & ~v97 & v102);
  v118 = v117 ^ 0x9D21882F0A28A4F6 ^ (__ROR8__(__ROR8__((v113 ^ v97) & 0xA868813125386710, 18) ^ 0x4C5CFB919A17A195, 46) ^ 0xEE46685E86553173 | (v113 ^ v97) & 0x57977ECEDAC798EFLL);
  v119 = (v116 << 36) ^ (v116 >> 19) ^ (v116 >> 28) & v116 ^ (v116 ^ (v116 << 45) | (v116 >> 28));
  v109 ^= 0x4D667B370AFF5657uLL;
  v120 = v115 ^ __ROR8__(v115, 61) ^ ((v115 ^ 0x1E743FB894198B62) >> 39) ^ ((v115 ^ 0x1E743FB894198B62) << 25);
  v121 = v120 ^ 0xEDD5C27C34D5D072;
  v122 = (((v109 << 23) ^ (-8388608 * v109) ^ (v109 - ((v109 << 23) ^ v109))) + v109) ^ (v109 >> 7);
  v123 = (v118 << 47) ^ (v118 << 54) ^ ((v118 ^ (v118 >> 17)) & 0xAD3501586D9A4EDLL ^ (v118 >> 10) & 0x13501586D9A4EDLL | (v118 ^ (v118 >> 17)) & 0xF52CAFEA79265B12 ^ (v118 >> 10) & 0x2CAFEA79265B12);
  v124 = v117 ^ 0x991C7D9C137A2073 ^ v120 ^ 0xEDD5C27C34D5D072 ^ __ROR8__(v117 ^ 0x991C7D9C137A2073, 1) ^ ((v117 ^ 0x991C7D9C137A2073) >> 6) ^ ((v117 ^ 0x991C7D9C137A2073) << 58);
  v125 = v119 ^ -v119;
  v126 = (v122 | (v109 >> 41)) ^ (v109 << 57) ^ v122 & (v109 >> 41);
  v127 = v123 & ~v124;
  v128 = v126 - (v126 ^ v119);
  v129 = v128 & 0x4000000000;
  if ((v128 & 0x4000000000 & v125) != 0)
  {
    v129 = -v129;
  }

  v130 = v129 + v125;
  v131 = v123 ^ v126;
  v132 = (v130 ^ v128 & 0xFFFFFFBFFFFFFFFFLL) + v126;
  v133 = v132 ^ v124 & (v120 ^ 0x122A3D83CB2A2F8DLL);
  v134 = v126 & ~v123 ^ v124;
  v135 = v120 ^ v127 ^ 0x47B61D5EC93B8A8ELL ^ v133;
  v136 = v134 ^ v123 ^ v132 & ~(v123 ^ v126);
  v137 = v121 & ~v132 ^ v131;
  v138 = v133 ^ 0xD97F1599E2A57D19 ^ v137;
  v139 = (8 * v135) ^ (v135 << 25) ^ (((v135 >> 39) ^ (v135 >> 61)) + v135 - 2 * (((v135 >> 39) ^ (v135 >> 61)) & v135));
  v140 = v134 ^ 0xB9DF2543D54ABC64 ^ (v134 << 63) ^ __ROR8__(v134 ^ 0xB9DF2543D54ABC64, 6) ^ ((v134 ^ 0xB9DF2543D54ABC64) >> 1);
  *(&v141 + 1) = v136 ^ 0x444816DFD5BAEF7DLL;
  *&v141 = v136;
  v142 = v140 & ~v139 ^ v138 ^ (v138 >> 19) ^ (v138 << 36) ^ (v138 << 45) ^ (v138 >> 28) ^ v137 ^ 0xC74D2323DF494E2DLL ^ __ROR8__(v137 ^ 0xC74D2323DF494E2DLL, 7) ^ ((v137 ^ 0xC74D2323DF494E2DLL) << 23) ^ ((v137 ^ 0xC74D2323DF494E2DLL) >> 41) ^ v139 ^ (v136 ^ 0x444816DFD5BAEF7DLL ^ ((v136 ^ 0x444816DFD5BAEF7DLL) >> 10) ^ (v141 >> 17) ^ ((v136 ^ 0x444816DFD5BAEF7DLL) << ((v136 ^ 0x7Du ^ ((v136 ^ 0x444816DFD5BAEF7DLL) >> 10)) & v2) << ((v136 ^ 0x7Du ^ ((v136 ^ 0x444816DFD5BAEF7DLL) >> 10)) & v2 ^ v2)) ^ 0x22240B6FEADDLL) & ~(v139 ^ v140);
  v143 = 0x200000;
  if ((v142 & 0x200000) != 0)
  {
    v143 = -2097152;
  }

  v144 = v143 + v142;
  v145 = __ROR8__(__ROR8__(v144 ^ 0x53E69D4ED318C51ALL, 11) & 0xFFE3FFFFFFFFFFFFLL ^ __ROR8__(((-71 * ((*(STACK[0x22C0] + (((v144 ^ 0x53E69D4ED318C51AuLL) >> 59) & 0x1C ^ 7)) + 111) ^ 0xED)) ^ ((v144 ^ 0x53E69D4ED318C51AuLL) >> 39) | ((v144 ^ 0x53E69D4ED318C51ALL) << 25)) ^ v144 ^ 0x53E69D4ED318C51ALL, 14) ^ 0xAAC3A0B46F518694, 50);
  return (*(STACK[0x22F8] + 8 * (v3 ^ (243 * ((STACK[0x22E8] & 1) == 0)))))();
}

uint64_t sub_1001A1C98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x22E8] = 0;
  v14 = v9 + 1893;
  LODWORD(STACK[0x22E0]) = v9 - 841;
  v15 = STACK[0x22C0];
  v16 = *(STACK[0x22C0] + ((((v11 << 18) & 0x3000000u | (v11 << 26)) >> 24) ^ 0x3ELL));
  *STACK[0x1200] = (BYTE1(v11) ^ 7) - (((v9 - 73) ^ 0x99) & (2 * (BYTE1(v11) ^ 7))) + 73;
  v17 = STACK[0x22D8];
  v17[39] = BYTE2(v11) ^ 0x95;
  *STACK[0x1370] = (BYTE4(v11) ^ 0x14) - ((2 * (BYTE4(v11) ^ 0x14)) & 0xB6) + 91;
  *STACK[0x1398] = (BYTE3(v11) ^ 0x7D) - ((2 * (BYTE3(v11) ^ 0x7D)) & 0xB6) + 91;
  *STACK[0x1350] = -71 * ((v16 + 111) ^ 0xED) - ((114 * ((v16 + 111) ^ 0xED)) & 0x92) + 73;
  v18 = *(v15 + (((v11 >> 38) & 0xFC | (v11 >> 46) & 3) ^ 0xDE)) + 111;
  *STACK[0x1368] = (HIBYTE(v11) ^ 0xD6) - ((2 * (HIBYTE(v11) ^ 0xD6)) & 0x92) + 73;
  v17[37] = v13 ^ 0xB0;
  v17[48] = -71 * (v18 ^ 0xED);
  v19 = STACK[0x22B8];
  v19[55] = BYTE6(v11) ^ 0xF0;
  v17[17] = BYTE1(v13) ^ 0x2A;
  v20 = *(a2 + (((v13 >> 13) & 0xF8 | (v13 >> 21) & 7) ^ 0x5C));
  *STACK[0x1380] = (BYTE1(v12) ^ 7) - ((2 * (BYTE1(v12) ^ 7)) & 0x92) + 73;
  v21 = STACK[0x22B0];
  *v21 = BYTE3(v13) ^ 0x61;
  v17[18] = BYTE4(v13) ^ 0xD4;
  *STACK[0x1390] = (BYTE4(v12) ^ 0x59) - 2 * ((BYTE4(v12) ^ 0x59) & 0xDF ^ BYTE4(v12) & 4) + 91;
  *STACK[0x1378] = v12 ^ 0x8B;
  v17[16] = BYTE2(v12) ^ 0x65;
  *STACK[0x1358] = (HIBYTE(v12) ^ 0x8C) + (~(2 * (HIBYTE(v12) ^ 0x8C)) | 0x49) + 92;
  v21[1] = HIBYTE(v13) ^ 0xE8;
  *STACK[0x1208] = (BYTE3(v12) ^ 0x21) - 2 * ((BYTE3(v12) ^ 0x21) & 0xDF ^ BYTE3(v12) & 4) + 91;
  v17[25] = (((v20 >> 1) | (v20 << 7)) - ((2 * ((v20 >> 1) | (v20 << 7))) & 0x6A) - 75) ^ ((2 * ((v20 >> 1) | (v20 << 7))) | 0xC8);
  v21[2] = BYTE6(v13) ^ 0x2D;
  *STACK[0x1388] = (BYTE6(v12) ^ 0x36) - ((2 * BYTE6(v12)) & 0x92) + 73;
  *STACK[0x13A8] = v8 ^ 0x22;
  v17[30] = BYTE5(v13) ^ 0x1B;
  *v19 = BYTE5(v12) ^ 0x2A;
  v22 = *(a7 + 537 + (BYTE1(v8) ^ 0xD8)) - 92;
  v17[53] = BYTE2(v8) ^ 0x4F;
  v19[50] = BYTE3(v8) ^ 0x30;
  *STACK[0x1360] = (v22 ^ 0x3B ^ ((4 * v22) | 0x94)) - ((2 * (v22 ^ 0x3B ^ ((4 * v22) | 0x94)) + 42) & 0x92) + 94;
  v23 = *(a7 + 537 + (((v8 ^ 0x5FC1304F326BuLL) >> (v11 & 0x20) >> (v11 & 0x20 ^ 0x20)) ^ 0xEALL));
  *STACK[0x13A0] = (BYTE5(v8) ^ 0x5F) - ((2 * (BYTE5(v8) ^ 0x5F)) & 0xB6) + 91;
  v24 = (v23 & 1 | (4 * (v23 - 92)) | 0xFFFFFF94) ^ 0x3B;
  v25 = (v24 ^ -v24 ^ (((v23 - 92) & 0xFFFFFFFE) - (v24 ^ (v23 - 92) & 0xFFFFFFFE))) + ((v23 - 92) & 0xFFFFFFFE);
  v19[47] = BYTE2(a1) ^ 0x58;
  v17[1] = BYTE3(a1) ^ 0x90;
  if ((a1 ^ 0x3E3E921690585B6ALL) >= 0xB39AE89840326C3ELL)
  {
    v7 = (a1 ^ 0x6A) - ((2 * (a1 ^ 0x6A) - 124) & 0xE0) - 78;
  }

  v26 = v7 ^ 0xF0;
  if ((a1 ^ 0x3E3E921690585B6ALL) >= 0xB39AE89840326C3ELL)
  {
    v27 = 62;
  }

  else
  {
    v27 = 0;
  }

  *STACK[0x13B0] = BYTE6(v10) - ((2 * BYTE6(v10)) & 0x92) + 73;
  *STACK[0x13C0] = ((2 * v25) & 0x2A) + (v25 ^ 0x15) - ((2 * (((2 * v25) & 0x2A) + (v25 ^ 0x15))) & 0xB6) + 91;
  v19[26] = BYTE1(a1) ^ 0x5B;
  *STACK[0x13C8] = v26 + v27 - ((2 * (v26 + v27)) & 0x92) + 73;
  *STACK[0x13B8] = HIBYTE(v10) - ((2 * HIBYTE(v10)) & 0x92) + 73;
  v28 = *(v15 + (((a1 >> 30) & 0xFC | (a1 >> 38) & 3) ^ 0x5F));
  v17[38] = BYTE5(a1) ^ 0x92;
  v17[28] = HIBYTE(a1) ^ 0x3E;
  v19[5] = BYTE6(a1) ^ 0x3E;
  v19[30] = -71 * ((v28 + 111) ^ 0xED);
  *(v17 + 1) = LODWORD(STACK[0x230C]) + 1;
  v29 = *(v17 + 5);
  LODWORD(STACK[0x230C]) = v29;
  v30 = *STACK[0x1280];
  v31 = v30[63];
  v32 = v30[76];
  v33 = v30[4];
  v34 = *(&off_10038FA40 + (v14 ^ 0xDF4));
  v35 = v34 + 265;
  v36 = v30[74] << 40;
  v37 = (v30[14] >> 1) | (v30[14] << 7);
  v38 = v17[52];
  v39 = ((((-37 * v17[44]) ^ *(v34 + 265 + ((-37 * v17[44]) ^ 0x4FLL)) ^ 0xC7) + 52) << (v29 & 0x10) << (v29 & 0x10 ^ 0x10u)) ^ (v30[12] | (v30[43] << 8));
  v40 = ((v30[14] >> 1) | (v30[14] << 7)) ^ 0xECLL;
  STACK[0x22A8] = v34 + 4;
  LODWORD(v40) = *(v34 + 4 + v40) ^ v37;
  v41 = v17[42];
  v42 = *(v34 + 265 + ((-37 * v17[15]) ^ 0x4FLL)) ^ (-37 * v17[15]);
  v43 = v17[14] << 48;
  *(&v44 + 1) = (v38 << 16) | (*v17 << 8) | v17[36];
  *&v44 = (v38 << 16) | (v17[9] << 32) | (v30[99] << 40);
  v45 = ((v44 >> 17) & 0xFFFFFFFFFFFF807FLL | ((((2 * v42) & 0x68 ^ 8) + (v42 ^ 0xF3)) << 7)) ^ 0x6FC24D95C03F6719;
  v46 = v30[6];
  v47 = ((v17[8] | (v30[66] << 16) | (v17[12] << 8)) & 0xFFFFFFFF00FFFFFFLL | (((*(v34 + 522 + ((-119 * v17[19]) ^ 0xF8)) ^ 0xC4) - 73) << 24) | (v30[23] << 32) | (v30[38] << 56) | (v30[1] << 48) | (v17[41] << 40)) ^ 0xCD342F1B0D4B6677;
  v48 = v17[3];
  v49 = v17[45] << (v39 & 0x28) << (v39 & 0x28 ^ 0x28);
  v50 = v30[79];
  v51 = v17[43];
  v52 = v30[35];
  v53 = (v30[36] << 24) | (((*(v34 + 522 + ((-119 * v17[13]) ^ 0xF8)) ^ 0xC4) - 73) << 8) | (v30[44] << 32) | v17[27] | (v30[85] << 16);
  v54 = v30[95] << 56;
  v55 = (v30[51] << 36) | (v17[50] << 28);
  STACK[0x22B0] = v30;
  *&v44 = __ROR8__(v30[15], 4);
  v56 = (v49 ^ (v46 << 48) | (v17[47] << 56)) ^ v53 ^ 0x719E0B7AAF9D8AB9;
  v57 = STACK[0x22E8];
  STACK[0x22B8] = (v29 ^ (((2 - v29) ^ v29) + 2 * ((2 - v29) & v29)) ^ 2u) << 32;
  v58 = (v43 | (v41 << 56)) ^ __ROR8__(v45, 47) ^ 0x771A7F0E42680456;
  LODWORD(v41) = LODWORD(STACK[0x22E0]) + 1407;
  v59 = *(STACK[0x22C8] + 4 * v57);
  v60 = STACK[0x22D0];
  STACK[0x22E8] = v57;
  v61 = **(v60 + 8 * v57) << (((((v41 + 1) | 4) + 57) ^ *(v35 + 79)) + 52);
  return (*(STACK[0x22F8] + 8 * (v41 ^ 7)))(v56, v58);
}

uint64_t sub_1001A28B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x22E0]) = v14 - 3500;
  v16 = (v14 - 3500) ^ 0x6AD;
  v17 = v10 + STACK[0x22B8];
  LODWORD(STACK[0x22C0]) = v16;
  v18 = (v17 - 2 * ((v16 - 1439) & v10 ^ v17 & 0x6C31FF708C5ADBDALL) - 0x13CE008F73A5242ELL) ^ a2;
  v19 = (v18 ^ 0x4582EB436AE4634ELL) + (v12 ^ 0xB395AF1A0AC7536) - 2 * ((v18 ^ 0x4582EB436AE4634ELL) & (v12 ^ 0xB395AF1A0AC7536));
  v20 = (((a1 ^ 0xEBCFC62082216F75) & ~v19 ^ v18 ^ 0x4582EB436AE4634ELL ^ __ROR8__(__ROR8__(v19 & (v18 ^ 0xBA7D14BC951B9CB1) ^ ((a4 ^ 0x7DFE8E661CB4BEB0) + a8 - (v11 & (2 * (a4 ^ 0x7DFE8E661CB4BEB0)))) ^ v15 ^ 0xC8276B238899D73ALL, 46) ^ 0x6FF0CEF9F3C06CBELL, 18) ^ 0x432EF69F889FDA15) >> 61) * a5;
  v21 = ((v20 ^ v8) - ((2 * (v20 ^ v8)) & 0xCA) - 27) ^ *(v9 + (v20 ^ v13));
  return (*(STACK[0x22F8] + 8 * (v14 ^ (485 * (STACK[0x22E8] == 0)))))();
}

uint64_t sub_1001A637C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X3>, int a4@<W8>)
{
  *a2 = a4;
  v6 = *(v5 + 8 * ((((v4 + 902540415) & 0xCA345F2F ^ (v4 + 76914056) & 0xFB6A6D6F ^ 0x15A) * ((LODWORD(STACK[0x21D8]) - 1970035152) < 0x100)) ^ (v4 + 3030)));
  STACK[0x1B08] = a3 + 12;
  STACK[0x2268] = a3 + 3109;
  STACK[0x2270] = a3 + 1424;
  return v6(a1, a3 + 3643);
}

uint64_t sub_1001A641C@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x1C30];
  v4 = LODWORD(STACK[0x1CE4]);
  v5 = STACK[0x1B88];
  return (*(v2 + 8 * (((a1 < ((v1 - 1744715469) & 0x67FE37D7 ^ 0x5D7u)) * (v1 ^ 0xC84)) ^ v1)))();
}

uint64_t sub_1001A6608@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * ((97 * (a1 < (v1 ^ 0x1803) - 4133 + 482 * (v1 ^ 0x10ACu))) ^ v1));
  STACK[0x21F0] = STACK[0x2118] + 32;
  return v3();
}

void sub_1001A6658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  v11 = (v8 - 2188);
  v12 = a8 - 203;
  if (v10 == a8 + v11 - 236)
  {
    v13 = STACK[0xD40];
  }

  else
  {
    v13 = STACK[0xD50];
  }

  if (v10 == a8 + v11 - 236)
  {
    v12 = a8 - 204;
  }

  v14 = STACK[0x19C8];
  if (v10 == a8 + v11 - 236)
  {
    v14 = a7;
  }

  else
  {
    v14 = v14;
  }

  STACK[0x19C8] = v14;
  v15 = STACK[0x1CB0];
  if (v10 == a8 + v11 - 236)
  {
    v15 = v15;
  }

  else
  {
    v15 = a7;
  }

  STACK[0x1CB0] = v15;
  STACK[0x21F8] = v11;
  STACK[0x21D0] = STACK[0x1C18];
  v16 = STACK[0x1C20];
  STACK[0x1C78] = v9;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x21D8]) = v12;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  JUMPOUT(0x1001A6120);
}

uint64_t sub_1001A6864(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  LODWORD(STACK[0x22E0]) = 0;
  LODWORD(STACK[0x1678]) = 0;
  LODWORD(STACK[0x22C0]) = 0;
  LODWORD(STACK[0x1680]) = 0;
  LODWORD(STACK[0x22A0]) = 0;
  v13 = (v7 - 2019344843) & 0x785CC19F;
  STACK[0x21F8] = v13;
  LODWORD(STACK[0x16C8]) = v7 - 43;
  LODWORD(v13) = v11 == ((v13 + 1970035364) ^ (v7 - 43));
  v14 = *(v10 + 8 * (((4 * v13) | (16 * v13)) ^ v7));
  v15 = STACK[0x2118] + 32;
  LODWORD(STACK[0x21D8]) = 1970035421;
  v16 = STACK[0xA38];
  STACK[0x21D0] = STACK[0x1C18];
  v17 = STACK[0x1C20];
  STACK[0x1C78] = v15;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  v18 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2208]) = v18;
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = a7;
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x12F0];
  STACK[0x1600] = STACK[0x12F8];
  STACK[0x15F0] = STACK[0x1320];
  STACK[0x14F0] = STACK[0x1330];
  STACK[0x1568] = STACK[0x1300];
  STACK[0x14E8] = STACK[0x1308];
  STACK[0x1560] = STACK[0x1338];
  STACK[0x1580] = STACK[0x1310];
  STACK[0x1548] = STACK[0x1318];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x20F0] = STACK[0x1A50];
  STACK[0x20E8] = STACK[0x1A48];
  STACK[0x2290] = STACK[0x1C30];
  STACK[0x2298] = STACK[0x1AC0];
  v19 = STACK[0x818];
  v20 = STACK[0x1C50];
  STACK[0x21F0] = v15;
  STACK[0x2118] = v15;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x2198]) = STACK[0x19D8];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1BA8]) = STACK[0x1DB0];
  LODWORD(STACK[0x1F90]) = STACK[0x1BC0];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20C0]) = STACK[0x1960];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  LODWORD(STACK[0x19B0]) = STACK[0x1A2C];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x22D0]) = 1;
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = v12;
  LODWORD(STACK[0x14C8]) = STACK[0x1404];
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = STACK[0x1B88];
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x2138]) = STACK[0x1A38];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x21A0]) = v9;
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1BB0]) = STACK[0x19D4];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = STACK[0x12E4];
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = v8;
  LODWORD(STACK[0x1558]) = STACK[0x12EC];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = STACK[0x12E8];
  v21 = LODWORD(STACK[0x1FF8]);
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x1E28]) = STACK[0x1ADC];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x1F38]) = STACK[0x1B60];
  LODWORD(STACK[0x1E30]) = STACK[0x1A08];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x20E0]) = STACK[0x1A58];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = STACK[0x1344];
  LODWORD(STACK[0x19B8]) = STACK[0x13FC];
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(STACK[0x1490]) = STACK[0x13F0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x1588]) = STACK[0x1348];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x2110]) = STACK[0x1938];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x19C0]) = STACK[0x1424];
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x2288]) = STACK[0x1F88];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = STACK[0x1AA0];
  LODWORD(STACK[0x19A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x12E0]) = STACK[0x1FF0];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  v22 = LODWORD(STACK[0x2070]);
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(STACK[0x1544]) = STACK[0x132C];
  LODWORD(STACK[0x16D8]) = STACK[0x1CE4];
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1DD8]) = STACK[0x1A74];
  LODWORD(STACK[0x20B0]) = STACK[0x1BF0];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x1D20]) = a7;
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = STACK[0x1768];
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x2250]) = STACK[0x1BB8];
  LODWORD(STACK[0x1998]) = STACK[0x19A0];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v14(v22, v16, 0, 0, 0, 0);
}

uint64_t sub_1001A7088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W8>)
{
  v6 = *(v5 + 8 * (((a4 < ((v4 + 571300311) & 0xDDF2AF77) - 2455) * ((4 * (v4 ^ 0x3D)) ^ 0x416)) | v4));
  v7 = STACK[0x1DC8];
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v6(a1, a2, a3, v7);
}

uint64_t sub_1001A7178(uint64_t a1, unint64_t a2, int a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v17 = v8 + 218;
  v18 = (v8 + 2042763303) & 0x863DE13F;
  STACK[0x21F8] = v18;
  v19 = *(v12 + 8 * ((3431 * (v16 == a8 + v18 - 49)) ^ v17));
  LODWORD(STACK[0x1588]) = 706174043;
  LODWORD(STACK[0x21D8]) = a8 - 18;
  v20 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v21 = STACK[0x1C20];
  STACK[0x21F0] = v15;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  v22 = STACK[0x2148];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v23 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v24 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v25 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD8];
  STACK[0x1580] = STACK[0xEE8];
  v26 = STACK[0xFB8];
  STACK[0x1548] = STACK[0xFB8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v25;
  STACK[0x22C0] = v26;
  STACK[0x2118] = v15;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  v27 = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = v10;
  LODWORD(STACK[0x1E90]) = v9;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v14;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = a4;
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v22;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = STACK[0x1CE0];
  v28 = STACK[0x1424];
  LODWORD(STACK[0x1558]) = STACK[0x1424];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v27;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v23;
  LODWORD(STACK[0x1668]) = STACK[0x13FC];
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v25) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v24;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = v28;
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = v11;
  v29 = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v25;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v25) = STACK[0x1DB0];
  LODWORD(STACK[0x1544]) = STACK[0x1DB0];
  LODWORD(STACK[0x16D8]) = v13;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = a3;
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v29;
  LODWORD(STACK[0x22E0]) = v23;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v25;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v19();
}

void sub_1001A79D0(int a1@<W6>, int a2@<W7>, int a3@<W8>)
{
  v3 = STACK[0x2118] + 32;
  STACK[0x21F8] = (a3 - 2720) | 4u;
  v4 = STACK[0x11D8];
  STACK[0x21D0] = STACK[0x1C18];
  v5 = STACK[0x1C20];
  STACK[0x21F0] = v3;
  STACK[0x1C78] = v3;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x21D8]) = a2 + 212;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = a1;
  JUMPOUT(0x1001CDDC0);
}

uint64_t sub_1001A7AC8@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * (((a1 < (v1 ^ 0xC3Du) - 114) * (20 * (v1 ^ 0xC3D) - 4485)) ^ v1));
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

uint64_t sub_1001A7B0C@<X0>(unsigned int a1@<W8>)
{
  v3 = v1 + 1999;
  v4 = a1 < ((v3 - 578) ^ 0xAC ^ (3 * (v3 ^ 0xA88u)));
  return (*(v2 + 8 * ((v4 | (2 * v4)) ^ v3)))();
}

uint64_t sub_1001A7B48@<X0>(unsigned int a1@<W8>)
{
  v3 = LODWORD(STACK[0x1CE0]);
  v4 = LODWORD(STACK[0x2068]);
  return (*(v2 + 8 * (((((v1 - 1124) | 0x90) ^ ((v1 - 1195) | 0x914) ^ 0x9A9) * (a1 > 0x63)) ^ v1)))();
}

uint64_t sub_1001A7BC0(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v16 = v8 ^ 0x1F2u;
  STACK[0x21F8] = v16;
  v17 = *(v12 + 8 * ((1637 * (v15 != (v16 ^ (a8 - 114) ^ (v8 + 1907890322) & 0x8E47E59F))) ^ v8));
  LODWORD(STACK[0x1588]) = 706174011;
  v18 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v19 = STACK[0x1C20];
  STACK[0x21F0] = v11;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x21D8]) = a8 - 114;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  v20 = STACK[0x2148];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v21 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v22 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v23 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD8];
  STACK[0x1580] = STACK[0xEE8];
  v24 = STACK[0xFB8];
  STACK[0x1548] = STACK[0xFB8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v23;
  STACK[0x22C0] = v24;
  STACK[0x2118] = v11;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  v25 = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = a4;
  LODWORD(STACK[0x1E90]) = STACK[0x1CE8];
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = v10;
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v14;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v20;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = v9;
  v26 = STACK[0x1424];
  LODWORD(STACK[0x1558]) = STACK[0x1424];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v25;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v21;
  LODWORD(STACK[0x1668]) = STACK[0x13FC];
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v23) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v22;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = v26;
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  v27 = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v23;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v23) = STACK[0x1DB0];
  LODWORD(STACK[0x1544]) = STACK[0x1DB0];
  LODWORD(STACK[0x16D8]) = v13;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v27;
  LODWORD(STACK[0x22E0]) = v21;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v23;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v17();
}

uint64_t sub_1001A8298@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * ((113 * (a1 < ((v1 + 377) ^ 0x1819u) - 3935)) ^ v1));
  v4 = STACK[0x1CE8];
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

uint64_t sub_1001A8310@<X0>(unsigned int a1@<W8>)
{
  v3 = LODWORD(STACK[0x1CE0]);
  v4 = LODWORD(STACK[0x2068]);
  return (*(v2 + 8 * ((127 * (a1 < (((((v1 | 0x1018) + 2130993006) & 0x80FB9BFF) - 2846) ^ 0x1C1))) ^ (v1 | 0x1018))))();
}

uint64_t sub_1001A8398(uint64_t a1, unint64_t a2, unint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v16 = (v8 - 200250796) & 0xBEF90DF;
  STACK[0x21F8] = v16;
  v17 = *(v13 + 8 * ((3079 * ((v8 ^ (v15 == (v16 ^ (a8 + 91)))) & 1)) ^ v8));
  LODWORD(STACK[0x1588]) = 706174066;
  LODWORD(STACK[0x21D8]) = a8 + 114;
  v18 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v19 = STACK[0x1C20];
  STACK[0x21F0] = a3;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v20 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v21 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = v9;
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(v16) = STACK[0x2178];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v22 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD0];
  STACK[0x1580] = STACK[0xEE0];
  v23 = STACK[0x10F8];
  STACK[0x1548] = STACK[0x10F8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v22;
  STACK[0x22C0] = v23;
  STACK[0x2118] = a3;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  v24 = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = v12;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = v11;
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v14;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v16;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = v10;
  LODWORD(v16) = STACK[0x13FC];
  LODWORD(STACK[0x1558]) = STACK[0x13FC];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v24;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v20;
  LODWORD(STACK[0x1668]) = v16;
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v22) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v21;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = STACK[0x1424];
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  v25 = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v22;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v22) = STACK[0x1A2C];
  LODWORD(STACK[0x1544]) = STACK[0x1A2C];
  LODWORD(STACK[0x16D8]) = a4;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v25;
  LODWORD(STACK[0x22E0]) = v20;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v22;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v17();
}

uint64_t sub_1001A8A90@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * ((60 * (((a1 < v1 - 2625) ^ (89 * (v1 ^ 0xD6))) & 1)) ^ v1));
  v4 = STACK[0x1CE8];
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

void sub_1001A8BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = (v8 + 220336357) & 0xF2DDE81F;
  v12 = a8 - 58;
  if (v10 == (v11 ^ (a8 - 57)))
  {
    v13 = STACK[0x11D0];
  }

  else
  {
    v13 = STACK[0x11D8];
  }

  v14 = STACK[0x1A98];
  if (v10 == (v11 ^ (a8 - 57)))
  {
    v14 = a7;
    v12 = a8 - 57;
  }

  v15 = STACK[0x2210];
  STACK[0x21F8] = v11;
  STACK[0x21D0] = STACK[0x1C18];
  v16 = STACK[0x1C20];
  STACK[0x21F0] = v9;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x1A98]) = v14;
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x21D8]) = v12;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  JUMPOUT(0x1001CDDBCLL);
}

uint64_t sub_1001A8BD0@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * (((a1 < (v1 ^ 0x1001u) - 4033) * ((v1 + 921506775) & 0xC912FBCB ^ 0x1148)) ^ v1));
  v4 = LODWORD(STACK[0x1CE0]);
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

uint64_t sub_1001A8C5C@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x1AC8];
  v4 = STACK[0x1CE8];
  return (*(v2 + 8 * (((4 * (a1 >= ((v1 + 1913) ^ 0x8D9u))) | (32 * (a1 >= ((v1 + 1913) ^ 0x8D9u)))) ^ v1)))();
}

uint64_t sub_1001A8C90@<X0>(unsigned int a1@<W8>)
{
  v3 = v1 ^ 0x937;
  v4 = a1 < ((v3 + 1751883471) & 0x97946DEB) - 2837;
  return (*(v2 + 8 * (((8 * v4) | (16 * v4)) ^ v3)))();
}

uint64_t sub_1001A8D14(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v16 = (v8 - 967) | 0xFu;
  STACK[0x21F8] = v16;
  v17 = *(v13 + 8 * (v8 | ((v15 == (v16 ^ (a8 + 222))) << 10)));
  LODWORD(STACK[0x1588]) = 706174108;
  LODWORD(STACK[0x21D8]) = a8 + 240;
  v18 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v19 = STACK[0x1C20];
  STACK[0x21F0] = v12;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(v16) = STACK[0x2148];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v20 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v21 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v22 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD8];
  STACK[0x1580] = STACK[0xEE8];
  v23 = STACK[0xFB8];
  STACK[0x1548] = STACK[0xFB8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v22;
  STACK[0x22C0] = v23;
  STACK[0x2118] = v12;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  v24 = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = v10;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v14;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = v9;
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v16;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = v11;
  LODWORD(v16) = STACK[0x1424];
  LODWORD(STACK[0x1558]) = STACK[0x1424];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v24;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v20;
  LODWORD(STACK[0x1668]) = STACK[0x13FC];
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v22) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v21;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = v16;
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  v25 = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v22;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v22) = STACK[0x1DB0];
  LODWORD(STACK[0x1544]) = STACK[0x1DB0];
  LODWORD(STACK[0x16D8]) = a4;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v25;
  LODWORD(STACK[0x22E0]) = v20;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v22;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v17();
}

uint64_t sub_1001A93FC@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * ((30 * (((a1 < (v1 ^ 0x1757u) - 1784) ^ ((v1 ^ 0xBA) - 92)) & 1)) ^ v1 ^ 0x1BA));
  v4 = STACK[0x1A90];
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

void sub_1001A948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = (v8 - 1393006765) & 0x5307915F;
  v12 = a8 - 169;
  if (v10 == a8 + v11 - 201)
  {
    v13 = STACK[0x988];
  }

  else
  {
    v13 = STACK[0x850];
  }

  if (v10 != a8 + v11 - 201)
  {
    v12 = a8 - 170;
  }

  v14 = STACK[0x12C0];
  if (v10 == a8 + v11 - 201)
  {
    v14 = a7;
  }

  LODWORD(STACK[0x12C0]) = v14;
  v15 = STACK[0x13FC];
  if (v10 != a8 + v11 - 201)
  {
    v15 = a7;
  }

  LODWORD(STACK[0x13FC]) = v15;
  STACK[0x21F8] = v11;
  STACK[0x21D0] = STACK[0x1C18];
  v16 = STACK[0x1C20];
  STACK[0x21F0] = v9;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x21D8]) = v12;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  JUMPOUT(0x1001CC66CLL);
}

uint64_t sub_1001A9528@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * (((((v1 ^ 0x1CBC) - 2288) ^ 0x37E) * (a1 > 0x137)) ^ v1 ^ 0x15A6));
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

uint64_t sub_1001A956C@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x1CE8];
  v4 = STACK[0x1A20];
  return (*(v2 + 8 * (((a1 < ((v1 + 1160) | 0x70u) - 1844) * (((v1 - 304) | 0x890) ^ 0xA2C)) ^ v1)))();
}

void sub_1001A95E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v12 = ((v8 & 0xACBB91FF) - 1382392854) & 0x5265A23F;
  STACK[0x21F8] = v12;
  LODWORD(v12) = a8 + v12 + 66;
  v13 = v11 == v12;
  if (v11 == v12)
  {
    v14 = STACK[0x11D8];
  }

  else
  {
    v14 = STACK[0x11D0];
  }

  v15 = STACK[0x1A98];
  if (!v13)
  {
    v15 = a7;
  }

  LODWORD(STACK[0x1A98]) = v15;
  v16 = a8 + 98;
  if (!v13)
  {
    v16 = a8 + 99;
  }

  LODWORD(STACK[0x21D8]) = v16;
  v17 = STACK[0x2210];
  if (v13)
  {
    v17 = a7;
  }

  STACK[0x21D0] = STACK[0x1C18];
  v18 = STACK[0x1C20];
  STACK[0x21F0] = v10;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = v17;
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = v9;
  JUMPOUT(0x1001CDDD0);
}

uint64_t sub_1001AB47C(uint64_t a1, unint64_t a2, int a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  STACK[0x21F8] = (v8 - 3037);
  v16 = *(v12 + 8 * ((452 * (v15 == ((v8 - 1022789917) & 0x3CF67D3F ^ (a8 - 94)))) ^ (v8 - 2405)));
  LODWORD(STACK[0x1588]) = 706174021;
  LODWORD(STACK[0x21D8]) = a8 - 84;
  v17 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v18 = STACK[0x1C20];
  STACK[0x21F0] = v11;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v19 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v20 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  v21 = STACK[0x2178];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v22 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD0];
  STACK[0x1580] = STACK[0xEE0];
  v23 = STACK[0x10F8];
  STACK[0x1548] = STACK[0x10F8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v22;
  STACK[0x22C0] = v23;
  STACK[0x2118] = v11;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  v24 = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = v10;
  LODWORD(STACK[0x1E90]) = v9;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v14;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v21;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = STACK[0x1CE0];
  v25 = STACK[0x13FC];
  LODWORD(STACK[0x1558]) = STACK[0x13FC];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v24;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v19;
  LODWORD(STACK[0x1668]) = v25;
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v22) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v20;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = STACK[0x1424];
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = a3;
  v26 = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v22;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v22) = STACK[0x1A2C];
  LODWORD(STACK[0x1544]) = STACK[0x1A2C];
  LODWORD(STACK[0x16D8]) = v13;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = a4;
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v26;
  LODWORD(STACK[0x22E0]) = v19;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v22;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v16();
}

uint64_t sub_1001ABB84@<X0>(unsigned int a1@<W8>)
{
  v3 = v1 + 3915;
  v4 = a1 < ((v1 + 2792) ^ 0xDDBu);
  v5 = LODWORD(STACK[0x1CC0]);
  return (*(v2 + 8 * (v4 | v3)))();
}

void sub_1001ABBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v12 = (v8 - 157943234) & 0x969F9DF;
  STACK[0x21F8] = v12;
  LODWORD(v12) = a8 + v12 + 224;
  v13 = v11 == v12;
  if (v11 == v12)
  {
    v14 = STACK[0xA78];
  }

  else
  {
    v14 = STACK[0xA80];
  }

  v15 = STACK[0x1878];
  if (v13)
  {
    v15 = a7;
  }

  LODWORD(STACK[0x1878]) = v15;
  v16 = a8 + 256;
  if (!v13)
  {
    v16 = a8 + 257;
  }

  LODWORD(STACK[0x21D8]) = v16;
  v17 = STACK[0x17A0];
  if (!v13)
  {
    v17 = a7;
  }

  LODWORD(STACK[0x17A0]) = v17;
  STACK[0x21D0] = STACK[0x1C18];
  v18 = STACK[0x1C20];
  STACK[0x21F0] = v10;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = v9;
  JUMPOUT(0x1001CDDD0);
}

uint64_t sub_1001ABC58@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * ((2029 * (a1 < ((v1 + 1421359560) & 0xAB47CEFE) + 41 * (v1 ^ 0x3F2) - 3407)) ^ v1));
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

uint64_t sub_1001ABDA8@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * ((77 * (((v1 - 90) ^ (a1 < ((v1 + 2121139157) & 0x8191FBBF ^ 0xA14))) & 1)) ^ v1));
  v4 = LODWORD(STACK[0x1CC0]);
  STACK[0x21F0] = STACK[0x2118] + 32;
  return v3();
}

void sub_1001ABE04(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = (v8 - 2874) | a1;
  v12 = a8 + v11 + 51;
  v13 = v10 == v12;
  if (v10 == v12)
  {
    v14 = STACK[0x950];
  }

  else
  {
    v14 = STACK[0x868];
  }

  v15 = a8 + 83;
  if (v10 != v12)
  {
    v15 = a8 + 82;
  }

  v16 = STACK[0x1FE8];
  v17 = STACK[0x1424];
  if (!v13)
  {
    v17 = a7;
  }

  LODWORD(STACK[0x1424]) = v17;
  STACK[0x21F8] = v11;
  STACK[0x21D0] = STACK[0x1C18];
  v18 = STACK[0x1C20];
  STACK[0x1C78] = v9;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x21D8]) = v15;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  JUMPOUT(0x1001CC4F0);
}

uint64_t sub_1001ABEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W8>)
{
  v7 = *(v6 + 8 * ((a4 >= (((v4 ^ v5) - 2865) ^ 0x4AE)) ^ v4));
  v8 = LODWORD(STACK[0x2020]);
  v9 = STACK[0x1D68];
  v10 = STACK[0x1D60];
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v7(a1, a2, a3, v10);
}

uint64_t sub_1001ABF2C(int a1, unint64_t a2, int a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v18 = v8 ^ 0xA2u;
  v19 = *(v13 + 8 * ((2282 * (v17 == (v18 ^ (a8 + 47)))) ^ v8));
  LODWORD(STACK[0x1588]) = 706174055;
  LODWORD(STACK[0x21D8]) = a8 + 30;
  v20 = STACK[0xAE8];
  STACK[0x21D0] = STACK[0x1C18];
  v21 = STACK[0x1C20];
  STACK[0x21F0] = v16;
  LODWORD(STACK[0x1C70]) = a7;
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v22 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  v23 = STACK[0x1FF0];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x21F8] = v18;
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0xAB8];
  STACK[0x1600] = STACK[0x9A0];
  STACK[0x15F0] = STACK[0x998];
  STACK[0x14F0] = STACK[0xD68];
  STACK[0x1568] = STACK[0xD70];
  v24 = STACK[0xAE0];
  STACK[0x14E8] = STACK[0xAE0];
  STACK[0x1560] = STACK[0xA38];
  STACK[0x1580] = STACK[0xA00];
  v25 = STACK[0xA08];
  STACK[0x1548] = STACK[0xA08];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v24;
  STACK[0x22C0] = v25;
  STACK[0x2118] = v16;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = v9;
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = v10;
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(v18) = STACK[0x1878];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = v11;
  LODWORD(STACK[0x1E90]) = STACK[0x1CE8];
  LODWORD(STACK[0x14C8]) = STACK[0x1404];
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v15;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = a1;
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = a4;
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v23;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(v24) = STACK[0x17E0];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = STACK[0x1CE0];
  v26 = STACK[0x19E0];
  LODWORD(STACK[0x1558]) = STACK[0x19E0];
  v27 = STACK[0x17E8];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v24;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v27;
  LODWORD(STACK[0x1668]) = STACK[0x13FC];
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(STACK[0x1490]) = v18;
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v22;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = STACK[0x1424];
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x13F4]) = a7;
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(v18) = STACK[0x1CAC];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = v12;
  v28 = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = STACK[0x1AA0];
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(STACK[0x1544]) = v18;
  LODWORD(STACK[0x16D8]) = v14;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = a3;
  LODWORD(STACK[0x1D20]) = v26;
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v28;
  LODWORD(STACK[0x22E0]) = v27;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v18;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v19();
}

void sub_1001AC644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = (v8 - 1297);
  v12 = v11 ^ (a8 + 214);
  v13 = v10 == v12;
  if (v10 == v12)
  {
    v14 = STACK[0x1108];
  }

  else
  {
    v14 = STACK[0x1190];
  }

  if (v10 == v12)
  {
    v15 = STACK[0x1DD0];
  }

  else
  {
    v15 = a7;
  }

  v16 = a8 + 185;
  if (v10 == v12)
  {
    v16 = a8 + 184;
  }

  v17 = STACK[0x1AA0];
  if (v13)
  {
    v17 = a7;
  }

  STACK[0x21F8] = v11;
  STACK[0x21D0] = STACK[0x1C18];
  v18 = STACK[0x1C20];
  STACK[0x21F0] = v9;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x1DD0]) = v15;
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x21D8]) = v16;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x1AA0]) = v17;
  JUMPOUT(0x1001CDECCLL);
}

uint64_t sub_1001AC674@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * (((((a1 < 0x58) ^ (13 * (v1 ^ 0xE4))) & 1) * ((v1 - 425) ^ 0xF9F)) ^ v1));
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

uint64_t sub_1001AC6C0@<X0>(unsigned int a1@<W8>)
{
  v3 = a1 >= ((v1 + 147) ^ 0x1E12u) - 3651;
  v4 = *(v2 + 8 * (((2 * v3) | (4 * v3)) ^ v1));
  v5 = STACK[0x1CE8];
  v6 = STACK[0x1A20];
  v7 = LODWORD(STACK[0x1970]);
  return v4();
}

void sub_1001AC72C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = (v8 - 1451528169) & 0x568487BF;
  if (v9 == (v10 ^ (a8 - 118)))
  {
    v11 = STACK[0x11D8];
  }

  else
  {
    v11 = STACK[0x11D0];
  }

  v12 = STACK[0x1A98];
  v13 = STACK[0x2210];
  STACK[0x21F8] = v10;
  STACK[0x21D0] = STACK[0x1C18];
  v14 = STACK[0x1C20];
  STACK[0x21F0] = a3;
  JUMPOUT(0x1001CD5D0);
}

uint64_t sub_1001AC77C@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * (((23 * (((v1 - 2712) | 0x108) ^ 0x705) - 2007) * (a1 > 0x167)) ^ v1));
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

uint64_t sub_1001AC828(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v16 = (v8 - 1580) ^ 0x16u;
  STACK[0x21F8] = v16;
  v17 = *(v13 + 8 * (((((v8 - 1558) ^ 0x16) + v16) * (v15 != a8 + 150)) ^ (v8 - 1580)));
  LODWORD(STACK[0x1588]) = 706174078;
  v18 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v19 = STACK[0x1C20];
  STACK[0x21F0] = v12;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x21D8]) = a8 + 150;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v20 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(v16) = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = v9;
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  v21 = STACK[0x2178];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v22 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD0];
  STACK[0x1580] = STACK[0xEE0];
  v23 = STACK[0x10F8];
  STACK[0x1548] = STACK[0x10F8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v22;
  STACK[0x22C0] = v23;
  STACK[0x2118] = v12;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  v24 = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = v10;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v14;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v21;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = v11;
  v25 = STACK[0x13FC];
  LODWORD(STACK[0x1558]) = STACK[0x13FC];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v24;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v20;
  LODWORD(STACK[0x1668]) = v25;
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v22) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v16;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = STACK[0x1424];
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  v26 = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v22;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v22) = STACK[0x1A2C];
  LODWORD(STACK[0x1544]) = STACK[0x1A2C];
  LODWORD(STACK[0x16D8]) = a4;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v26;
  LODWORD(STACK[0x22E0]) = v20;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v22;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v17();
}

uint64_t sub_1001ACEAC@<X0>(unsigned int a1@<W8>)
{
  v3 = v1 - 699;
  v4 = a1 >= ((((v3 + 609) | 0x62) - 2068) ^ (3 * (v3 ^ 0xB5Du)));
  return (*(v2 + 8 * (((4 * v4) | (16 * v4)) ^ v3)))();
}

uint64_t sub_1001ACEF0@<X0>(unsigned int a1@<W8>)
{
  v3 = a1 < 1504 * (v1 ^ 0xD60u) - 4324;
  v4 = STACK[0x1AC8];
  return (*(v2 + 8 * ((v3 | (4 * v3)) ^ v1)))();
}

void sub_1001ACFB4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v9 = STACK[0x2118] + 32;
  LODWORD(STACK[0x21D8]) = a8 - 32;
  STACK[0x21F8] = v8;
  v10 = STACK[0x1108];
  STACK[0x21D0] = STACK[0x1C18];
  v11 = STACK[0x1C20];
  STACK[0x21F0] = v9;
  STACK[0x1C78] = v9;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = a1;
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x1AA0]) = a7;
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  JUMPOUT(0x1001A6120);
}

uint64_t sub_1001AD060@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x1AC8];
  v4 = STACK[0x1CE8];
  return (*(v2 + 8 * ((250 * (a1 < ((v1 - 1577) ^ 0x831u))) ^ (v1 + 119))))();
}

void sub_1001AD0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = (v8 - 539263546) & 0x20247F7F;
  v12 = v11 ^ (a8 + 259);
  v13 = v10 == v12;
  if (v10 == v12)
  {
    v14 = STACK[0xD68];
  }

  else
  {
    v14 = STACK[0xD70];
  }

  v15 = a8 + 266;
  if (v13)
  {
    v15 = a8 + 267;
  }

  LODWORD(STACK[0x21D8]) = v15;
  v16 = STACK[0x17E0];
  if (v13)
  {
    v16 = a7;
  }

  LODWORD(STACK[0x17E0]) = v16;
  v17 = STACK[0x17E8];
  if (!v13)
  {
    v17 = a7;
  }

  LODWORD(STACK[0x17E8]) = v17;
  STACK[0x21F8] = v11;
  STACK[0x21D0] = STACK[0x1C18];
  v18 = STACK[0x1C20];
  STACK[0x21F0] = v9;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  JUMPOUT(0x1001CC338);
}

uint64_t sub_1001AD17C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  return (*(v10 + 8 * ((54 * ((((v11 & (a8 - 215)) == v9 + ((v8 - 3177) | 0x409) + 2986) ^ (v8 + 2)) & 1)) ^ v8)))();
}

uint64_t sub_1001AD1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v12 = (v8 - 994633215) & 0x3B48DF7F;
  v13 = (v12 - 1808) | 0x15u;
  STACK[0x21F8] = v13;
  v14 = *(v10 + 8 * (((v11 == ((v12 + 253806021) & 0x70DF3BEE ^ (v9 + 2096))) * (v13 ^ 0xFCB)) ^ v12));
  LODWORD(STACK[0x21D8]) = a8 - 214;
  v15 = STACK[0x908];
  STACK[0x21D0] = STACK[0x1C18];
  v16 = STACK[0x1C20];
  STACK[0x1C78] = STACK[0x2118];
  STACK[0x21F0] = STACK[0x848];
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x2220]) = a7;
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  return v14(a1, v15);
}

uint64_t sub_1001AD3FC@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x11E8] + ((v1 + 192) ^ 0x60));
  v3 = *(STACK[0x2270] + ((v2 ^ (16 * (v2 ^ 0x8A) * (v2 ^ 0x8A))) ^ 0x7Du));
  HIDWORD(v4) = v3 ^ 0x11;
  LODWORD(v4) = v3 << 24;
  *(STACK[0xE98] + v1) = -127 * ((v4 >> 31) ^ 0x3D ^ ((v4 >> 31) >> 2) & 9);
  return (*(STACK[0x22F8] + 8 * ((53 * (v1 != 31)) ^ a1)))();
}

uint64_t sub_1001AD558(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, __n128 a8, __n128 a9)
{
  *v10 = a8;
  *&STACK[0x8360] = a9;
  return (*(v11 + 8 * (((STACK[0x6B8] < 0x20) ^ ((v9 & 0xDF ^ 0x2B) + 1)) & 1 | ((v9 & 0xAA4FA8DF) + 2325))))(a1, a2, a3, STACK[0x1CD8]);
}

uint64_t sub_1001AD5B0@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v8 = *((a4 - 2433) + v4 + a3 + 321);
  *(v5 + v4) = v8 ^ a2 ^ (16 * (v8 ^ a1) * (v8 ^ a1) - 32 * (((v8 ^ a1) * (v8 ^ a1)) & 1) + 17);
  return (*(v7 + 8 * (((v4 == 31) * v6) ^ a4)))();
}

uint64_t sub_1001AD640(char a1, double a2, double a3, double a4, double a5, double a6, double a7, __n128 a8, __n128 a9, uint64_t a10, uint64_t a11)
{
  *STACK[0xDB8] = a8;
  *&STACK[0x6E00] = a9;
  v13 = *(a11 + 288) ^ a1;
  *STACK[0xF38] = (*(STACK[0x1FD0] + (((v11 - 40) ^ v13 ^ (16 * v13 * v13)) ^ 0xEEu)) ^ ((v13 ^ (16 * v13 * v13)) - 2 * ((v13 ^ (16 * v13 * v13)) & 0x13 ^ v13 & 2) + 17) ^ 1) - 107;
  return (*(v12 + 8 * (v11 + 1269)))();
}

uint64_t sub_1001AD7D4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x22E0] = v5 ^ 0x4AC;
  v7 = *(a3 + (((v4 ^ 0x60) + 384) & (v5 ^ 0xFFFFFE08)));
  v8 = (v7 ^ a1) * (v7 ^ a1);
  *(STACK[0xF48] + v4) = (*(a4 + ((((((~(32 * v8) | 0xDF) + 16 * v8 + 18) ^ v7) >> 6) | (4 * (((~(32 * v8) | 0xDF) + 16 * v8 + 18) ^ v7))) ^ 0xFELL)) ^ 0xA9) + 95;
  return (*(v6 + 8 * ((1196 * (v4 == 191)) ^ v5)))();
}

uint64_t sub_1001AD864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x1FD8] = 0;
  LODWORD(STACK[0x22D0]) = STACK[0x22E0] - 283575702;
  STACK[0x22C0] = a7 + 576;
  STACK[0x2240] = a7 + 577;
  STACK[0x2248] = a7 + 578;
  STACK[0x2250] = a7 + 584;
  STACK[0x2268] = a7 + 585;
  STACK[0x2278] = a7 + 586;
  STACK[0x2280] = a7 + 587;
  STACK[0x2290] = a7 + 589;
  STACK[0x2288] = a7 + 590;
  STACK[0x22B0] = a7 + 579;
  STACK[0x22A8] = a7 + 580;
  STACK[0x22A0] = a7 + 582;
  STACK[0x2298] = a7 + 583;
  STACK[0x22B8] = (49 - a7) | (a7 + 590);
  v14 = STACK[0x22C0] & 0xFFFFFFF0 ^ 0x79 ^ ((63 - a7) | (a7 + 576)) & 0x4DLL;
  v15 = STACK[0x2240];
  v16 = STACK[0x2240] & 0xFFFFFFF1 ^ 0x79 ^ ((60 - a7) | (a7 + 577)) & 0x4DLL;
  v17 = STACK[0x2248];
  v18 = STACK[0x2248] & 0xFFFFFFF2 ^ 0x79 ^ ((61 - a7) | (a7 + 578)) & 0x4DLL;
  v19 = STACK[0x2250];
  v20 = STACK[0x2268];
  v21 = STACK[0x2268] & 0xFFFFFFF9 ^ 0x79 ^ ((54 - a7) | (a7 + 585)) & 0x4DLL;
  v22 = STACK[0x2278];
  v23 = STACK[0x2278] & 0xFFFFFFFA ^ 0x79 ^ ((53 - a7) | (a7 + 586)) & 0x4DLL;
  v24 = STACK[0x22B8] & 0x4D;
  v25 = STACK[0x2280];
  v26 = STACK[0x2280] & 0xFFFFFFFB ^ 0x79 ^ ((52 - a7) | (a7 + 587)) & 0x4DLL;
  v27 = STACK[0x2290];
  STACK[0x22B8] = STACK[0x2290] & 0xFFFFFFFD ^ 0x79 ^ ((50 - a7) | (a7 + 589)) & 0x4DLL;
  v28.i8[0] = *(STACK[0x1B08] + v14);
  v28.i8[1] = *(STACK[0x1B08] + v16);
  v28.i8[2] = *(STACK[0x1B08] + v18);
  v29 = STACK[0x22F8];
  v28.i8[3] = *(STACK[0x1B08] + ((a7 + 579) & 0xFFFFFFF3 ^ 0x79 ^ ((60 - a7) | (a7 + 579)) & 0x4DLL));
  v28.i8[4] = *(STACK[0x1B08] + ((a7 + 580) & 0xFFFFFFF4 ^ 0x79 ^ ((59 - a7) | (a7 + 580)) & 0x4DLL));
  v28.i8[5] = *(STACK[0x1B08] + ((a7 + 581) & 0xFFFFFFF5 ^ 0x79 ^ ((~LODWORD(STACK[0x22D0]) - a7) | (a7 + 581)) & 0x4DLL));
  v28.i8[6] = *(STACK[0x1B08] + ((a7 + 582) & 0xFFFFFFF6 ^ 0x79 ^ ((57 - a7) | (a7 + 582)) & 0x4DLL));
  v36.val[0].i64[0] = STACK[0x22C0];
  v36.val[0].i64[1] = v15;
  v28.i8[7] = *(STACK[0x1B08] + ((a7 + 583) & 0xFFFFFFF7 ^ 0x79 ^ ((56 - a7) | (a7 + 583)) & 0x4DLL));
  v36.val[1].i64[0] = v17;
  v36.val[1].i64[1] = STACK[0x22B0];
  v28.i8[8] = *(STACK[0x1B08] + (v19 & 0xFFFFFFF8 ^ 0x79 ^ ((55 - a7) | (a7 + 584)) & 0x4DLL));
  v36.val[2].i64[0] = STACK[0x22A8];
  v36.val[2].i64[1] = a7 + 581;
  v28.i8[9] = *(STACK[0x1B08] + v21);
  v36.val[3].i64[0] = STACK[0x22A0];
  v36.val[3].i64[1] = STACK[0x2298];
  v28.i8[10] = *(STACK[0x1B08] + v23);
  v35.val[0].i64[0] = v19;
  v35.val[0].i64[1] = v20;
  v30 = STACK[0x11E8];
  v28.i8[11] = *(STACK[0x1B08] + v26);
  v35.val[1].i64[0] = v22;
  v35.val[1].i64[1] = v25;
  v28.i8[12] = *(STACK[0x1B08] + ((a7 + 588) & 0xFFFFFFFCLL ^ 0x79 ^ ((51 - a7) | (a7 + 588)) & 0x4DLL));
  v35.val[2].i64[0] = a7 + 588;
  v35.val[2].i64[1] = v27;
  v35.val[3].i64[0] = STACK[0x2288];
  v35.val[3].i64[1] = a7 + 591;
  v36.val[0].i64[0] = vqtbl4q_s8(v36, v7).u64[0];
  v28.i8[13] = *(STACK[0x1B08] + STACK[0x22B8]);
  v36.val[0].i64[1] = vqtbl4q_s8(v35, v7).u64[0];
  v28.i8[14] = *(STACK[0x1B08] + (STACK[0x2288] & 0xFFFFFFFE ^ 0x79 ^ v24));
  v36.val[1] = veorq_s8(v36.val[0], v8);
  v28.i8[15] = *(STACK[0x1B08] + ((a7 + 591) ^ 0x79 ^ ((48 - a7) | (a7 + 591)) & 0x4DLL));
  v36.val[0] = veorq_s8(vandq_s8(vaddq_s8(v36.val[1], v9), v10), vandq_s8(v36.val[0], v11));
  *(STACK[0xF50] + a7) = veorq_s8(v28, veorq_s8(vaddq_s8(vsubq_s8(v36.val[1], vaddq_s8(v36.val[0], v36.val[0])), v12), v13));
  v31 = LODWORD(STACK[0x1FE8]);
  v32 = LODWORD(STACK[0x1FF0]);
  v33 = LODWORD(STACK[0x22D0]);
  return (*(v29 + 8 * ((5345 * (a7 == 176)) ^ STACK[0x22E0])))(4294967178);
}

uint64_t sub_1001ADCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = v8 + 22;
  v12 = (v11 - 1398610422) ^ 0xACA2F720;
  STACK[0x21F8] = v12;
  v13 = *(v9 + 8 * (((v10 != a8 + ((v11 - 1398610422) & 0x535D08DF) + 15) * (v12 - 19)) ^ v11));
  LODWORD(STACK[0x21D8]) = a8 + 47;
  v14 = STACK[0xD38];
  STACK[0x21D0] = STACK[0x1C18];
  v15 = STACK[0x1C20];
  v16 = STACK[0xF50];
  STACK[0x1C78] = STACK[0xF50];
  STACK[0x21F0] = v16;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = a7;
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  return v13(a1, v14);
}

void sub_1001ADE0C(int a1@<W6>, unint64_t a2@<X8>)
{
  v3 = STACK[0x2118] + 32;
  STACK[0x21F8] = a2;
  v4 = STACK[0x938];
  STACK[0x21D0] = STACK[0x1C18];
  v5 = STACK[0x1C20];
  STACK[0x21F0] = v3;
  STACK[0x1C78] = v3;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x1618]) = a1;
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x21D8]) = v2 + 46;
  JUMPOUT(0x1001C7E74);
}

uint64_t sub_1001ADEC4(uint64_t a1, unint64_t a2, int a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v17 = v8 - 2568;
  v18 = (v8 - 3817) | 0x15;
  v19 = (v8 - 1056575764) & 0x3EFA023F;
  STACK[0x21F8] = v19;
  v20 = *(v12 + 8 * ((3079 * (v16 == a8 + v18 + v19 - 75)) ^ v17));
  LODWORD(STACK[0x1588]) = 706174045;
  LODWORD(STACK[0x21D8]) = a8 - 12;
  v21 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v22 = STACK[0x1C20];
  STACK[0x21F0] = v15;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v23 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v24 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(v19) = STACK[0x2178];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v25 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD0];
  STACK[0x1580] = STACK[0xEE0];
  v26 = STACK[0x10F8];
  STACK[0x1548] = STACK[0x10F8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v25;
  STACK[0x22C0] = v26;
  STACK[0x2118] = v15;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  v27 = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = v10;
  LODWORD(STACK[0x1E90]) = v9;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v14;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = a4;
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v19;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = STACK[0x1CE0];
  LODWORD(v19) = STACK[0x13FC];
  LODWORD(STACK[0x1558]) = STACK[0x13FC];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v27;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v23;
  LODWORD(STACK[0x1668]) = v19;
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v25) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v24;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = STACK[0x1424];
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = v11;
  v28 = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v25;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v25) = STACK[0x1A2C];
  LODWORD(STACK[0x1544]) = STACK[0x1A2C];
  LODWORD(STACK[0x16D8]) = v13;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = a3;
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v28;
  LODWORD(STACK[0x22E0]) = v23;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v25;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v20();
}

uint64_t sub_1001AE568@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * ((21 * (((v1 - 120) ^ (a1 < ((v1 + 1658) ^ 0x9E3u))) & 1)) ^ (v1 + 1658)));
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

uint64_t sub_1001AE5E0(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v16 = *(v13 + 8 * (((v8 ^ 0x788) * (v15 == a8 + 203)) ^ v8));
  LODWORD(STACK[0x1588]) = 706174096;
  LODWORD(STACK[0x21D8]) = a8 + 204;
  v17 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v18 = STACK[0x1C20];
  STACK[0x21F0] = v11;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  v19 = STACK[0x2148];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v20 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v21 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = v9;
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x21F8] = v8 ^ 0x1F2u;
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v22 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD8];
  STACK[0x1580] = STACK[0xEE8];
  v23 = STACK[0xFB8];
  STACK[0x1548] = STACK[0xFB8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v22;
  STACK[0x22C0] = v23;
  STACK[0x2118] = v11;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  v24 = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = STACK[0x1CE8];
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v14;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = v10;
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v19;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = v12;
  v25 = STACK[0x1424];
  LODWORD(STACK[0x1558]) = STACK[0x1424];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v24;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v20;
  LODWORD(STACK[0x1668]) = STACK[0x13FC];
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v22) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v21;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = v25;
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  v26 = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v22;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v22) = STACK[0x1DB0];
  LODWORD(STACK[0x1544]) = STACK[0x1DB0];
  LODWORD(STACK[0x16D8]) = a4;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v26;
  LODWORD(STACK[0x22E0]) = v20;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v22;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v16();
}

uint64_t sub_1001AEC64@<X0>(unsigned int a1@<W8>)
{
  v3 = LODWORD(STACK[0x1CE0]);
  v4 = LODWORD(STACK[0x2068]);
  return (*(v2 + 8 * (((a1 < ((v1 + 913) | 0x1A0u) - 2868) * (((v1 - 1239) | 0xC00) ^ 0xD83)) ^ v1)))();
}

void sub_1001AECD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v10 = (v8 - 888) | 0xFu;
  STACK[0x21F8] = v10;
  v11 = v10 ^ (a8 - 130);
  v12 = v9 == v11;
  if (v9 == v11)
  {
    v13 = STACK[0x11D8];
  }

  else
  {
    v13 = STACK[0x11D0];
  }

  v14 = STACK[0x1A98];
  if (!v12)
  {
    v14 = a7;
  }

  LODWORD(STACK[0x1A98]) = v14;
  if (v12)
  {
    v15 = a8 - 112;
  }

  else
  {
    v15 = a8 - 111;
  }

  LODWORD(STACK[0x21D8]) = v15;
  v16 = STACK[0x2210];
  JUMPOUT(0x1001CA184);
}

uint64_t sub_1001AED18@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x1AC8];
  v4 = LODWORD(STACK[0x1CE0]);
  return (*(v2 + 8 * (((a1 > 0x143) * (((v1 - 2012470438) & 0x77F3D5D8) - 1478)) | v1)))();
}

uint64_t sub_1001AED8C(uint64_t a1, unint64_t a2, unint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v16 = (v8 - 1438);
  v17 = *(v13 + 8 * (((v16 ^ 0xD7D) * (v15 == a8 + 107)) ^ (v8 + 69)));
  LODWORD(STACK[0x1588]) = 706174064;
  LODWORD(STACK[0x21D8]) = a8 + 108;
  v18 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v19 = STACK[0x1C20];
  STACK[0x21F0] = a3;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  v20 = STACK[0x2148];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v21 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v22 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = v9;
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x21F8] = v16;
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v23 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD8];
  STACK[0x1580] = STACK[0xEE8];
  v24 = STACK[0xFB8];
  STACK[0x1548] = STACK[0xFB8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v23;
  STACK[0x22C0] = v24;
  STACK[0x2118] = a3;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  LODWORD(v16) = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = v11;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v14;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = v10;
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v20;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = v12;
  v25 = STACK[0x1424];
  LODWORD(STACK[0x1558]) = STACK[0x1424];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v16;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v21;
  LODWORD(STACK[0x1668]) = STACK[0x13FC];
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v23) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v22;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = v25;
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  LODWORD(v16) = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v23;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v23) = STACK[0x1DB0];
  LODWORD(STACK[0x1544]) = STACK[0x1DB0];
  LODWORD(STACK[0x16D8]) = a4;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v16;
  LODWORD(STACK[0x22E0]) = v21;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v23;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v17();
}

void sub_1001AF480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v9 == a8 + v8 - 1297 - 101)
  {
    v10 = STACK[0x11D0];
  }

  else
  {
    v10 = STACK[0x11D8];
  }

  v11 = STACK[0x1A98];
  JUMPOUT(0x1001C9358);
}

void sub_1001AF510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v9 == ((v8 + 879754839) & 0xCB8FF97F ^ (a8 + 230)))
  {
    v10 = STACK[0x1108];
  }

  else
  {
    v10 = STACK[0x1190];
  }

  v11 = STACK[0x1DD0];
  JUMPOUT(0x1001C70C8);
}

uint64_t sub_1001AF554@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x1CE8];
  v4 = STACK[0x1A20];
  return (*(v2 + 8 * ((((v1 ^ 0x12A7) - 4532 + ((v1 - 1553) | 0x488)) * (a1 < 0x24)) ^ v1)))();
}

uint64_t sub_1001AF5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = ((v8 & 0xDEC95F5F) - 3925) | 0x15;
  STACK[0x21F8] = v11;
  v12 = *(v9 + 8 * (((v10 != (v11 ^ (a8 - 189))) * ((((v8 & 0xDEC95F5F) + 1248945184) & 0xB58E8C9F) + 11)) ^ v8 & 0xDEC95F5F));
  LODWORD(STACK[0x21D8]) = a8 - 181;
  v13 = STACK[0xFD8];
  v14 = STACK[0x1C18];
  STACK[0x21D0] = STACK[0x1C18];
  v15 = STACK[0x1C20];
  STACK[0x1C78] = STACK[0x2118];
  STACK[0x21F0] = v14;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = a7;
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  return v12(a1, v13);
}

void sub_1001AF6F0(int a1@<W6>, unint64_t a2@<X8>)
{
  v3 = STACK[0x1C20] + 32;
  STACK[0x21F8] = a2;
  v4 = STACK[0xEE8];
  STACK[0x21D0] = STACK[0x1C18];
  STACK[0x21F0] = v3;
  STACK[0x1C78] = STACK[0x2118];
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x1DB0]) = a1;
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x21D8]) = v2 - 182;
  JUMPOUT(0x1001CC644);
}

uint64_t sub_1001AF798(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v14 = (v8 - 1948916674) & 0x742A139F;
  STACK[0x21F8] = v14;
  v15 = *(v11 + 8 * ((2043 * (v13 == ((v8 - 2082) ^ (a8 + 90) ^ v14))) ^ v8));
  LODWORD(STACK[0x1588]) = 706174058;
  v16 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v17 = STACK[0x1C20];
  STACK[0x21F0] = v10;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x21D8]) = a8 + 90;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v18 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v19 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  v20 = STACK[0x2178];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v21 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD0];
  STACK[0x1580] = STACK[0xEE0];
  v22 = STACK[0x10F8];
  STACK[0x1548] = STACK[0x10F8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v21;
  STACK[0x22C0] = v22;
  STACK[0x2118] = v10;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  LODWORD(v14) = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = v9;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v12;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v20;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = STACK[0x1CE0];
  v23 = STACK[0x13FC];
  LODWORD(STACK[0x1558]) = STACK[0x13FC];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v14;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v18;
  LODWORD(STACK[0x1668]) = v23;
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v21) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v19;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = STACK[0x1424];
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  LODWORD(v14) = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v21;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v21) = STACK[0x1A2C];
  LODWORD(STACK[0x1544]) = STACK[0x1A2C];
  LODWORD(STACK[0x16D8]) = a4;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v14;
  LODWORD(STACK[0x22E0]) = v18;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v21;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v15();
}

void sub_1001AFE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = (v8 - 3037);
  if (v10 == (v11 ^ a8))
  {
    v12 = STACK[0xD70];
  }

  else
  {
    v12 = STACK[0xD68];
  }

  v13 = a8 + 14;
  if (v10 != (v11 ^ a8))
  {
    v13 = a8 + 15;
  }

  LODWORD(STACK[0x21D8]) = v13;
  v14 = STACK[0x17E0];
  if (v10 != (v11 ^ a8))
  {
    v14 = a7;
  }

  LODWORD(STACK[0x17E0]) = v14;
  v15 = STACK[0x17E8];
  if (v10 == (v11 ^ a8))
  {
    v15 = a7;
  }

  LODWORD(STACK[0x17E8]) = v15;
  STACK[0x21F8] = v11;
  STACK[0x21D0] = STACK[0x1C18];
  v16 = STACK[0x1C20];
  STACK[0x21F0] = v9;
  JUMPOUT(0x1001CC330);
}

uint64_t sub_1001AFF20@<X0>(unsigned int a1@<W8>)
{
  v3 = v1 + 1713;
  v4 = a1 >= ((71 * ((v1 + 1713) ^ 0x6BA)) ^ 0x3F5u);
  v5 = LODWORD(STACK[0x1CC0]);
  return (*(v2 + 8 * ((113 * v4) ^ v3)))();
}

void sub_1001AFF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = (v8 - 608);
  STACK[0x21F8] = v11;
  LODWORD(v11) = a8 + v11 + 147;
  v12 = v10 == v11;
  if (v10 == v11)
  {
    v13 = STACK[0x1190];
  }

  else
  {
    v13 = STACK[0x1108];
  }

  v14 = STACK[0x1DD0];
  if (v12)
  {
    v14 = a7;
  }

  v15 = a8 + 178;
  if (v12)
  {
    v15 = a8 + 179;
  }

  LODWORD(STACK[0x21D8]) = v15;
  v16 = STACK[0x1AA0];
  if (!v12)
  {
    v16 = a7;
  }

  LODWORD(STACK[0x1AA0]) = v16;
  STACK[0x21D0] = STACK[0x1C18];
  v17 = STACK[0x1C20];
  STACK[0x21F0] = v9;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x1DD0]) = v14;
  JUMPOUT(0x1001CC4D4);
}

uint64_t sub_1001AFFBC@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * ((((2 * v1) ^ 0x1405) * (a1 < 0x44)) ^ v1));
  v4 = STACK[0x1AC8];
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

void sub_1001B0028(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = (v8 - 63);
  if (v9 == a8 + v10 - 184)
  {
    v11 = STACK[0x1108];
  }

  else
  {
    v11 = STACK[0x1190];
  }

  v12 = STACK[0x1DD0];
  v13 = STACK[0x1AA0];
  STACK[0x21F8] = v10;
  STACK[0x21D0] = STACK[0x1C18];
  v14 = STACK[0x1C20];
  STACK[0x21F0] = a3;
  JUMPOUT(0x1001CDE48);
}

uint64_t sub_1001B00A4@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * ((59 * (a1 < ((((v1 - 4500) | 0x312) + 1960) ^ ((v1 - 2296) | 0x310u)))) ^ v1));
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

uint64_t sub_1001B00F4(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v15 = (v8 + 1633024011) ^ 0x615603A0u;
  STACK[0x21F8] = v15;
  v16 = *(v12 + 8 * ((1989 * (v14 == ((a8 + v15 + 147) ^ (v8 + 1633024011) & 0x9EA9FC5F))) ^ v8));
  LODWORD(STACK[0x1588]) = 706174080;
  LODWORD(STACK[0x21D8]) = a8 + 156;
  v17 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v18 = STACK[0x1C20];
  STACK[0x21F0] = v9;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  v19 = STACK[0x2148];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v20 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v21 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v22 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD8];
  STACK[0x1580] = STACK[0xEE8];
  v23 = STACK[0xFB8];
  STACK[0x1548] = STACK[0xFB8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v22;
  STACK[0x22C0] = v23;
  STACK[0x2118] = v9;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  LODWORD(v15) = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = v10;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v13;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v19;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = v11;
  v24 = STACK[0x1424];
  LODWORD(STACK[0x1558]) = STACK[0x1424];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v15;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v20;
  LODWORD(STACK[0x1668]) = STACK[0x13FC];
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v22) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v21;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = v24;
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  LODWORD(v15) = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v22;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v22) = STACK[0x1DB0];
  LODWORD(STACK[0x1544]) = STACK[0x1DB0];
  LODWORD(STACK[0x16D8]) = a4;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v15;
  LODWORD(STACK[0x22E0]) = v20;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v22;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v16();
}

void sub_1001B07F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = (v8 - 2716);
  v12 = a8 + v11 - 81;
  v13 = a8 - 50;
  v14 = v10 == v12;
  STACK[0x1FD8] = v10 != v12;
  if (v10 == v12)
  {
    v15 = STACK[0x1190];
  }

  else
  {
    v15 = STACK[0x1108];
  }

  v16 = STACK[0x1DD0];
  if (v14)
  {
    v16 = a7;
  }

  if (v14)
  {
    v13 = a8 - 49;
  }

  LODWORD(STACK[0x21D8]) = v13;
  v17 = STACK[0x1AA0];
  if (!v14)
  {
    v17 = a7;
  }

  LODWORD(STACK[0x1AA0]) = v17;
  STACK[0x21F8] = v11;
  STACK[0x21D0] = STACK[0x1C18];
  v18 = STACK[0x1C20];
  STACK[0x21F0] = v9;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x1DD0]) = v16;
  JUMPOUT(0x1001CC5A0);
}

void sub_1001B087C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v10 = (v8 - 786) | 0x17u;
  STACK[0x21F8] = v10;
  LODWORD(v10) = a8 + v10 + 243;
  v11 = v9 == v10;
  if (v9 == v10)
  {
    v12 = STACK[0xA80];
  }

  else
  {
    v12 = STACK[0xA78];
  }

  v13 = STACK[0x1878];
  if (!v11)
  {
    v13 = a7;
  }

  LODWORD(STACK[0x1878]) = v13;
  v14 = a8 + 274;
  if (v11)
  {
    v14 = a8 + 275;
  }

  LODWORD(STACK[0x21D8]) = v14;
  v15 = STACK[0x17A0];
  if (v11)
  {
    v15 = a7;
  }

  LODWORD(STACK[0x17A0]) = v15;
  JUMPOUT(0x1001C9314);
}

uint64_t sub_1001B0934(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v13 = (v8 - 1083461641) & 0x40944F9F;
  if (v12 == a8 + v13 - 221)
  {
    v14 = 1637231499;
  }

  else
  {
    v14 = 1637231498;
  }

  LODWORD(STACK[0x20C0]) = v14;
  v15 = STACK[0x12BC];
  if (v12 == a8 + v13 - 221)
  {
    v15 = a7;
  }

  LODWORD(STACK[0x1254]) = v15;
  v16 = STACK[0x13FC];
  if (v12 != a8 + v13 - 221)
  {
    v16 = a7;
  }

  LODWORD(STACK[0x19B8]) = v16;
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x12F0];
  STACK[0x1600] = STACK[0x12F8];
  STACK[0x15F0] = STACK[0x1320];
  STACK[0x14F0] = STACK[0x1330];
  STACK[0x1568] = STACK[0x1300];
  STACK[0x14E8] = STACK[0x1308];
  STACK[0x1560] = STACK[0x1338];
  STACK[0x1580] = STACK[0x1310];
  STACK[0x1548] = STACK[0x1318];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1BA8]) = STACK[0x1DB0];
  LODWORD(STACK[0x1F90]) = STACK[0x1BC0];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  LODWORD(STACK[0x19B0]) = STACK[0x1A2C];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = a4;
  LODWORD(STACK[0x1E90]) = v9;
  LODWORD(STACK[0x14C8]) = STACK[0x1404];
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v11;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x22D0]) = STACK[0x1CA4];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x21A0]) = STACK[0x1994];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1BB0]) = STACK[0x19D4];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = STACK[0x12E4];
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = STACK[0x1CE0];
  LODWORD(STACK[0x1558]) = STACK[0x12EC];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = STACK[0x12E8];
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x1E28]) = STACK[0x1ADC];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x1F38]) = STACK[0x1B60];
  LODWORD(STACK[0x1E30]) = STACK[0x1A08];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = STACK[0x1344];
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(STACK[0x1490]) = STACK[0x13F0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  v17 = STACK[0x22E8];
  LODWORD(STACK[0x2198]) = STACK[0x22E8];
  LODWORD(STACK[0x20E0]) = v17;
  LODWORD(STACK[0x2208]) = v17;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x1588]) = STACK[0x1348];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x19C0]) = STACK[0x1424];
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = STACK[0x1AA0];
  LODWORD(STACK[0x19A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2090]) = STACK[0x1B38];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(STACK[0x1544]) = STACK[0x132C];
  LODWORD(STACK[0x16D8]) = v10;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1DD8]) = STACK[0x1A74];
  LODWORD(STACK[0x20B0]) = STACK[0x1BF0];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = STACK[0x1768];
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x2250]) = STACK[0x1BB8];
  LODWORD(STACK[0x1998]) = STACK[0x19A0];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  if (v12 == a8 + v13 - 221)
  {
    v18 = STACK[0x988];
  }

  else
  {
    v18 = STACK[0xFD0];
  }

  v19 = STACK[0x1C28];
  STACK[0x20F0] = STACK[0x1C28];
  STACK[0x2290] = v19;
  STACK[0x2298] = v18;
  STACK[0x20E8] = v18;
  LODWORD(STACK[0x2138]) = a7;
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2110]) = 922064384;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x2288]) = a7;
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  return sub_1001CF258();
}

uint64_t sub_1001B0F98@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * ((23 * (a1 >= ((v1 - 1109) | 5) - 223)) ^ v1));
  v4 = LODWORD(STACK[0x1CC0]);
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}

uint64_t sub_1001B0FD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v13 = v8 + 833;
  v14 = (v8 + 1658408794) & 0x9D26AA7F;
  v15 = (v8 - 1157505734) & 0x44FE1C9F;
  STACK[0x21F8] = v15;
  v16 = *(v11 + 8 * ((895 * (v12 == v15 + a8 + v14)) ^ v13));
  LODWORD(STACK[0x21D8]) = a8 + 62;
  v17 = STACK[0x928];
  STACK[0x21D0] = STACK[0x1C18];
  v18 = STACK[0x1C20];
  STACK[0x21F0] = v10;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = v9;
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = a7;
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  v19 = STACK[0xA40];
  v20 = STACK[0xA48];
  v21 = STACK[0xA28];
  v22 = STACK[0xFD0];
  v23 = STACK[0xEE0];
  v24 = STACK[0x10F8];
  STACK[0x2118] = v10;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x13F8]) = a7;
  LODWORD(STACK[0x1BA8]) = STACK[0x1DB0];
  LODWORD(STACK[0x19B0]) = STACK[0x1A2C];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  v25 = STACK[0x13FC];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  v26 = LODWORD(STACK[0x18F8]);
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x19B8]) = v25;
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x19C0]) = STACK[0x1424];
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  v27 = STACK[0x1A90];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  v28 = LODWORD(STACK[0x13EC]);
  return v16(a1, v17, v27);
}

void sub_1001B1218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = ((v8 ^ 0x173C) + 2038088264) & 0x868535FF;
  if (v10 == (v11 ^ (a8 + 22)))
  {
    v12 = STACK[0x1108];
  }

  else
  {
    v12 = STACK[0x1190];
  }

  v13 = STACK[0x1DD0];
  v14 = STACK[0x1AA0];
  STACK[0x21F8] = v11;
  STACK[0x21D0] = STACK[0x1C18];
  v15 = STACK[0x1C20];
  STACK[0x21F0] = v9;
  JUMPOUT(0x1001CDE48);
}

uint64_t sub_1001B1268@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x1AC8];
  v4 = STACK[0x1CE8];
  return (*(v2 + 8 * ((510 * (a1 < ((v1 - 1414684875) & 0x54526CDEu) - 2854)) ^ v1)))();
}

void sub_1001B12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v10 = (v8 - 734) | 9u;
  STACK[0x21F8] = v10;
  LODWORD(v10) = a8 + v10 + 187;
  v11 = v9 == v10;
  if (v9 == v10)
  {
    v12 = STACK[0x11D0];
  }

  else
  {
    v12 = STACK[0x11D8];
  }

  v13 = STACK[0x1A98];
  if (v11)
  {
    v13 = a7;
  }

  LODWORD(STACK[0x1A98]) = v13;
  JUMPOUT(0x1001CA178);
}

uint64_t sub_1001B1338@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x1AC8];
  v4 = STACK[0x1CE8];
  v5 = LODWORD(STACK[0x1CE0]);
  return (*(v2 + 8 * (((((v1 + 994334309) & 0xC4BBAFAE) - 3971) * (a1 < 0x7C)) ^ v1)))();
}

void sub_1001B13C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v9 == a8 + ((v8 + 959154060) & 0xC6D4753F) - 125)
  {
    v10 = STACK[0x11D0];
  }

  else
  {
    v10 = STACK[0x11D8];
  }

  v11 = STACK[0x1A98];
  JUMPOUT(0x1001C9358);
}

uint64_t sub_1001B1484(uint64_t a1, unint64_t a2, unint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v13 = (v8 - 1925) | 0x12u;
  STACK[0x21F8] = v13;
  v14 = *(v10 + 8 * (((v12 == ((v8 - 1907) ^ (a8 + 143))) * (v13 + 3400)) ^ v8));
  LODWORD(STACK[0x1588]) = 706174070;
  LODWORD(STACK[0x21D8]) = a8 + 126;
  v15 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v16 = STACK[0x1C20];
  STACK[0x21F0] = a3;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v17 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v18 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(v13) = STACK[0x2178];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v19 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD0];
  STACK[0x1580] = STACK[0xEE0];
  v20 = STACK[0x10F8];
  STACK[0x1548] = STACK[0x10F8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v19;
  STACK[0x22C0] = v20;
  STACK[0x2118] = a3;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  v21 = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = v9;
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v11;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v13;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = STACK[0x1CE0];
  LODWORD(v13) = STACK[0x13FC];
  LODWORD(STACK[0x1558]) = STACK[0x13FC];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v21;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v17;
  LODWORD(STACK[0x1668]) = v13;
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v19) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v18;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = STACK[0x1424];
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  v22 = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v19;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v19) = STACK[0x1A2C];
  LODWORD(STACK[0x1544]) = STACK[0x1A2C];
  LODWORD(STACK[0x16D8]) = a4;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v22;
  LODWORD(STACK[0x22E0]) = v17;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v19;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v14();
}

void sub_1001B1B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v9 == (((v8 - 851) | 4) ^ (a8 - 102)))
  {
    v10 = STACK[0x11D8];
  }

  else
  {
    v10 = STACK[0x11D0];
  }

  v11 = STACK[0x1A98];
  v12 = STACK[0x2210];
  JUMPOUT(0x1001CD5B8);
}

uint64_t sub_1001B1C0C(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x1CD8] = a5;
  STACK[0x11E8] = a2;
  v14 = v8 ^ 0xC30u;
  STACK[0x21F8] = v14;
  v15 = *(v11 + 8 * ((((v8 + 1901287472) & 0x8EAC9BBF ^ (v14 + 645)) * (v13 == a8 + 251)) ^ v8));
  LODWORD(STACK[0x1588]) = 706174112;
  LODWORD(STACK[0x21D8]) = a8 + 252;
  v16 = STACK[0x1118];
  STACK[0x21D0] = STACK[0x1C18];
  v17 = STACK[0x1C20];
  STACK[0x21F0] = v10;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = a7;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  LODWORD(STACK[0x1FE0]) = STACK[0x1FE8];
  LODWORD(STACK[0x2228]) = STACK[0x21E8];
  v18 = STACK[0x2148];
  LODWORD(STACK[0x1C9C]) = STACK[0x2148];
  LODWORD(STACK[0x2220]) = STACK[0x2218];
  LODWORD(STACK[0x2238]) = STACK[0x1FC8];
  v19 = STACK[0x2210];
  LODWORD(STACK[0x2200]) = STACK[0x2210];
  v20 = STACK[0x22E8];
  LODWORD(STACK[0x2248]) = STACK[0x22E8];
  LODWORD(STACK[0x2188]) = STACK[0x1CC0];
  LODWORD(STACK[0x2280]) = STACK[0x1C80];
  LODWORD(STACK[0x2240]) = STACK[0x2260];
  LODWORD(STACK[0x2008]) = STACK[0x1FF0];
  LODWORD(STACK[0x2190]) = STACK[0x2000];
  LODWORD(STACK[0x1C98]) = STACK[0x2178];
  STACK[0x1408] = STACK[0x13E0];
  STACK[0x1410] = STACK[0x13D0];
  STACK[0x1418] = STACK[0x13D8];
  STACK[0x1608] = STACK[0x1128];
  STACK[0x1600] = STACK[0x1130];
  STACK[0x15F0] = STACK[0x1110];
  STACK[0x14F0] = STACK[0x11D0];
  STACK[0x1568] = STACK[0x11D8];
  v21 = STACK[0x1140];
  STACK[0x14E8] = STACK[0x1140];
  STACK[0x1560] = STACK[0xFD8];
  STACK[0x1580] = STACK[0xEE8];
  v22 = STACK[0xFB8];
  STACK[0x1548] = STACK[0xFB8];
  STACK[0x1860] = STACK[0x1530];
  STACK[0x1808] = STACK[0x1538];
  STACK[0x1828] = STACK[0x1518];
  STACK[0x1788] = STACK[0x1508];
  STACK[0x16E0] = STACK[0x1510];
  STACK[0x1848] = STACK[0x1520];
  STACK[0x1700] = STACK[0x1528];
  STACK[0x1728] = STACK[0x15C8];
  STACK[0x15E8] = STACK[0x1448];
  STACK[0x1570] = STACK[0x1450];
  STACK[0x1800] = STACK[0x1460];
  STACK[0x15D8] = STACK[0x1458];
  STACK[0x21C8] = STACK[0x1C40];
  STACK[0x1678] = STACK[0x1180];
  STACK[0x22A0] = STACK[0x1C28];
  STACK[0x2278] = v21;
  STACK[0x22C0] = v22;
  STACK[0x2118] = v10;
  STACK[0x17B8] = STACK[0x2158];
  LODWORD(STACK[0x20F8]) = STACK[0x2020];
  LODWORD(STACK[0x1EB0]) = STACK[0x1AF0];
  LODWORD(STACK[0x13F8]) = STACK[0x2058];
  LODWORD(STACK[0x1D10]) = STACK[0x1BD0];
  LODWORD(STACK[0x20A0]) = STACK[0x1B54];
  LODWORD(STACK[0x14E4]) = STACK[0x17C8];
  LODWORD(STACK[0x14FC]) = STACK[0x1718];
  LODWORD(STACK[0x1690]) = STACK[0x15C0];
  LODWORD(STACK[0x2120]) = STACK[0x19F8];
  LODWORD(STACK[0x14E0]) = STACK[0x17D0];
  LODWORD(STACK[0x1F80]) = STACK[0x1C00];
  LODWORD(STACK[0x1F08]) = STACK[0x1AF8];
  LODWORD(STACK[0x1420]) = STACK[0x13E8];
  LODWORD(v14) = STACK[0x1A98];
  LODWORD(STACK[0x14DC]) = STACK[0x1A98];
  LODWORD(STACK[0x1D30]) = STACK[0x1A68];
  LODWORD(STACK[0x14D8]) = STACK[0x1970];
  LODWORD(STACK[0x1680]) = 1006787430;
  LODWORD(STACK[0x1D18]) = STACK[0x1D68];
  LODWORD(STACK[0x1968]) = STACK[0x1748];
  LODWORD(STACK[0x14F8]) = STACK[0x15A8];
  LODWORD(STACK[0x20A8]) = STACK[0x1B20];
  LODWORD(STACK[0x1D78]) = STACK[0x19E8];
  LODWORD(STACK[0x1628]) = STACK[0x1438];
  LODWORD(STACK[0x1500]) = STACK[0x1750];
  LODWORD(STACK[0x20C8]) = STACK[0x1BD8];
  LODWORD(STACK[0x142C]) = STACK[0x1400];
  LODWORD(STACK[0x1670]) = STACK[0x1958];
  LODWORD(STACK[0x14D4]) = STACK[0x1878];
  LODWORD(STACK[0x14D0]) = STACK[0x1618];
  LODWORD(STACK[0x14CC]) = STACK[0x1DD0];
  LODWORD(STACK[0x20B8]) = STACK[0x1BA4];
  LODWORD(STACK[0x1DA8]) = STACK[0x1B48];
  LODWORD(STACK[0x1E90]) = STACK[0x1CE8];
  LODWORD(STACK[0x11F4]) = a7;
  LODWORD(STACK[0x14C8]) = a7;
  LODWORD(STACK[0x20D0]) = STACK[0x1C38];
  STACK[0x1858] = STACK[0x1830];
  LODWORD(STACK[0x1790]) = STACK[0x2068];
  LODWORD(STACK[0x1EA0]) = STACK[0x1B00];
  LODWORD(STACK[0x1E98]) = STACK[0x1B30];
  LODWORD(STACK[0x1D08]) = v12;
  LODWORD(STACK[0x1D48]) = STACK[0x1A20];
  LODWORD(STACK[0x1F78]) = STACK[0x1B68];
  LODWORD(STACK[0x14C4]) = STACK[0x1640];
  LODWORD(STACK[0x1E20]) = STACK[0x1FD8];
  LODWORD(STACK[0x2100]) = STACK[0x2098];
  LODWORD(STACK[0x1DE0]) = STACK[0x1A18];
  LODWORD(STACK[0x17A8]) = STACK[0x16F0];
  LODWORD(STACK[0x1D00]) = STACK[0x1DC8];
  LODWORD(STACK[0x1DC0]) = STACK[0x1A40];
  LODWORD(STACK[0x1254]) = STACK[0x12BC];
  LODWORD(STACK[0x15D0]) = STACK[0x1444];
  LODWORD(STACK[0x16B8]) = STACK[0x15A0];
  LODWORD(STACK[0x1D98]) = STACK[0x1D60];
  LODWORD(STACK[0x1688]) = STACK[0x1698];
  LODWORD(STACK[0x1554]) = STACK[0x1738];
  LODWORD(STACK[0x1590]) = STACK[0x1760];
  LODWORD(STACK[0x1E88]) = STACK[0x1AC8];
  LODWORD(STACK[0x1504]) = STACK[0x1928];
  LODWORD(STACK[0x1CF8]) = STACK[0x1468];
  LODWORD(STACK[0x1268]) = STACK[0x12C0];
  LODWORD(STACK[0x1EF8]) = STACK[0x1B10];
  LODWORD(STACK[0x22A8]) = STACK[0x1B58];
  LODWORD(STACK[0x143C]) = STACK[0x1708];
  LODWORD(STACK[0x12B8]) = STACK[0x12B0];
  LODWORD(STACK[0x14C0]) = STACK[0x1740];
  LODWORD(STACK[0x14BC]) = STACK[0x18F8];
  LODWORD(STACK[0x157C]) = v18;
  LODWORD(STACK[0x14B8]) = STACK[0x1470];
  LODWORD(STACK[0x1D40]) = STACK[0x1CD0];
  LODWORD(STACK[0x1264]) = STACK[0x12B4];
  LODWORD(STACK[0x14B4]) = STACK[0x17E0];
  LODWORD(STACK[0x1818]) = STACK[0x1930];
  LODWORD(STACK[0x1430]) = v9;
  v23 = STACK[0x1424];
  LODWORD(STACK[0x1558]) = STACK[0x1424];
  LODWORD(STACK[0x14B0]) = STACK[0x17E8];
  LODWORD(STACK[0x155C]) = v14;
  LODWORD(STACK[0x1840]) = STACK[0x1598];
  LODWORD(STACK[0x1EE8]) = STACK[0x1B90];
  LODWORD(STACK[0x1260]) = STACK[0x12D0];
  LODWORD(STACK[0x2088]) = STACK[0x1BC8];
  LODWORD(STACK[0x1EC0]) = STACK[0x1AE4];
  LODWORD(STACK[0x14AC]) = STACK[0x1850];
  LODWORD(STACK[0x17B0]) = STACK[0x16E8];
  LODWORD(STACK[0x14A8]) = STACK[0x1474];
  LODWORD(STACK[0x17F8]) = STACK[0x1710];
  LODWORD(STACK[0x14A4]) = STACK[0x146C];
  LODWORD(STACK[0x14A0]) = STACK[0x15F8];
  LODWORD(STACK[0x149C]) = STACK[0x17A0];
  LODWORD(STACK[0x1498]) = STACK[0x16B0];
  LODWORD(STACK[0x1E18]) = STACK[0x1B98];
  LODWORD(STACK[0x126C]) = STACK[0x12CC];
  LODWORD(STACK[0x1494]) = v19;
  LODWORD(STACK[0x1668]) = STACK[0x13FC];
  LODWORD(STACK[0x16D0]) = STACK[0x1730];
  LODWORD(v21) = STACK[0x1AA0];
  LODWORD(STACK[0x1490]) = STACK[0x1AA0];
  LODWORD(STACK[0x16A8]) = STACK[0x1758];
  LODWORD(STACK[0x21C0]) = STACK[0x1C68];
  LODWORD(STACK[0x1E78]) = STACK[0x1B18];
  LODWORD(STACK[0x1EF0]) = STACK[0x2078];
  LODWORD(STACK[0x2208]) = v20;
  LODWORD(STACK[0x1EC8]) = STACK[0x1F30];
  LODWORD(STACK[0x16F8]) = STACK[0x15B0];
  LODWORD(STACK[0x21B8]) = STACK[0x2018];
  LODWORD(STACK[0x20D8]) = STACK[0x1C10];
  LODWORD(STACK[0x1F00]) = STACK[0x1AE8];
  LODWORD(STACK[0x1944]) = STACK[0x1820];
  LODWORD(STACK[0x158C]) = STACK[0x15E0];
  LODWORD(STACK[0x148C]) = STACK[0x1798];
  LODWORD(STACK[0x16C0]) = STACK[0x1778];
  LODWORD(STACK[0x1D28]) = STACK[0x1A90];
  LODWORD(STACK[0x18F0]) = STACK[0x19C8];
  LODWORD(STACK[0x1660]) = v23;
  LODWORD(STACK[0x13F4]) = STACK[0x1434];
  LODWORD(STACK[0x1EB8]) = STACK[0x1F28];
  LODWORD(STACK[0x16A0]) = STACK[0x1720];
  LODWORD(STACK[0x1D70]) = STACK[0x1A00];
  LODWORD(STACK[0x1488]) = STACK[0x1CAC];
  LODWORD(STACK[0x1D50]) = STACK[0x1AB0];
  LODWORD(v14) = STACK[0x1768];
  LODWORD(STACK[0x22B0]) = STACK[0x1768];
  LODWORD(STACK[0x1E40]) = STACK[0x1ABC];
  LODWORD(STACK[0x1780]) = STACK[0x1770];
  LODWORD(STACK[0x18E8]) = STACK[0x1CB0];
  LODWORD(STACK[0x1484]) = STACK[0x1638];
  LODWORD(STACK[0x1DA0]) = STACK[0x17D8];
  LODWORD(STACK[0x1480]) = v21;
  LODWORD(STACK[0x1D38]) = STACK[0x1A30];
  LODWORD(STACK[0x2080]) = STACK[0x1BF8];
  LODWORD(STACK[0x2180]) = STACK[0x1A10];
  LODWORD(STACK[0x1D90]) = STACK[0x1A70];
  LODWORD(STACK[0x1F70]) = STACK[0x1B70];
  LODWORD(STACK[0x1E80]) = STACK[0x1F58];
  LODWORD(STACK[0x1EA8]) = STACK[0x1AEC];
  LODWORD(STACK[0x147C]) = STACK[0x1478];
  LODWORD(STACK[0x1F20]) = STACK[0x1AD8];
  LODWORD(v21) = STACK[0x1DB0];
  LODWORD(STACK[0x1544]) = STACK[0x1DB0];
  LODWORD(STACK[0x16D8]) = a4;
  LODWORD(STACK[0x1ED0]) = STACK[0x1838];
  LODWORD(STACK[0x1658]) = STACK[0x1A74];
  LODWORD(STACK[0x1ED8]) = STACK[0x1AE0];
  LODWORD(STACK[0x1D58]) = STACK[0x1C58];
  LODWORD(STACK[0x1E70]) = STACK[0x1AD4];
  LODWORD(STACK[0x1610]) = STACK[0x1CB8];
  LODWORD(STACK[0x1D20]) = STACK[0x19E0];
  LODWORD(STACK[0x1EE0]) = STACK[0x1B28];
  LODWORD(STACK[0x1810]) = v14;
  LODWORD(STACK[0x22E0]) = v19;
  LODWORD(STACK[0x1F40]) = STACK[0x1B3C];
  LODWORD(STACK[0x1650]) = STACK[0x1BB8];
  LODWORD(STACK[0x22B8]) = v21;
  LODWORD(STACK[0x1648]) = STACK[0x1620];
  LODWORD(STACK[0x1E38]) = STACK[0x15B8];
  LODWORD(STACK[0x1540]) = STACK[0x1440];
  LODWORD(STACK[0x1D80]) = STACK[0x19F0];
  LODWORD(STACK[0x1F10]) = STACK[0x2048];
  return v15();
}

void sub_1001B2320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v10 = (v8 + 82188335) & 0xFB19E79F;
  v11 = STACK[0x2118] + 32;
  v12 = a8 - 164;
  if (v9 == a8 + v10 - 196)
  {
    v13 = STACK[0x868];
  }

  else
  {
    v13 = STACK[0x950];
  }

  if (v9 != a8 + v10 - 196)
  {
    v12 = a8 - 163;
  }

  v14 = STACK[0x1FE8];
  v15 = STACK[0x1424];
  if (v9 == a8 + v10 - 196)
  {
    v15 = a7;
  }

  LODWORD(STACK[0x1424]) = v15;
  STACK[0x21F8] = v10;
  STACK[0x21D0] = STACK[0x1C18];
  v16 = STACK[0x1C20];
  STACK[0x21F0] = v11;
  STACK[0x1C78] = v11;
  LODWORD(STACK[0x1C70]) = STACK[0x2108];
  LODWORD(STACK[0x2128]) = STACK[0x21B0];
  LODWORD(STACK[0x2230]) = STACK[0x1CC8];
  LODWORD(STACK[0x1C88]) = STACK[0x2130];
  LODWORD(STACK[0x21D8]) = v12;
  LODWORD(STACK[0x1CA8]) = STACK[0x21E0];
  JUMPOUT(0x1001CC650);
}

uint64_t sub_1001B2420@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8 * (((((v1 + 465066193) & 0xE4479FD7) - 740) * (a1 < 0x122)) ^ v1));
  v4 = LODWORD(STACK[0x1CC0]);
  STACK[0x1C78] = STACK[0x2118] + 32;
  return v3();
}
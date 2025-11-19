void sub_100001824(id a1)
{
  v1 = qword_100025930;
  qword_100025930 = &off_1000218C0;
}

uint64_t sub_100001948(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((*&v12 & 0x7FFF8) == 8)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

int main(int argc, const char **argv, const char **envp)
{
  if (qword_100025160 != -1)
  {
    swift_once();
  }

  v3 = qword_1000263E0;
  sub_100011470();
  sub_10001350C();
  sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
  v4 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v19 = sub_1000025B4;
  v20 = v5;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100002920;
  v18 = &unk_100020C40;
  v6 = _Block_copy(&v15);
  v7 = v3;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v4, v6);
  _Block_release(v6);

  [*&v7[OBJC_IVAR____TtC3tzd6Daemon_listener] resume];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v19 = sub_1000025D4;
  v20 = v8;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100002920;
  v18 = &unk_100020C90;
  v9 = _Block_copy(&v15);
  v10 = v7;

  xpc_activity_register("com.apple.timezoneupdates.local-asset-check", XPC_ACTIVITY_CHECK_IN, v9);
  _Block_release(v9);
  v19 = sub_100011150;
  v20 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100002920;
  v18 = &unk_100020CB8;
  v11 = _Block_copy(&v15);
  xpc_activity_register("com.apple.timezoneupdates.stale-data-cleanup", XPC_ACTIVITY_CHECK_IN, v11);
  _Block_release(v11);
  static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v13 = [objc_opt_self() mainRunLoop];
  [v13 run];

  return 0;
}

uint64_t sub_100001FFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100002090(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002108(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002188@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_1000021CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002204@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002230(uint64_t a1)
{
  v2 = sub_100002778(&qword_100025238, type metadata accessor for FileAttributeKey);
  v3 = sub_100002778(&unk_100025240, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000022EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100002334(uint64_t a1)
{
  v2 = sub_100002778(&qword_100025228, type metadata accessor for FileProtectionType);
  v3 = sub_100002778(&qword_100025230, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000023F0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10000242C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100002480()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000024F4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000257C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000025BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000025DC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_10000269C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002778(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10000292C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100002948(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_100002990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000029F0()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  if (*v0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v0[1] == 0xE000000000000000;
  }

  if (v4 || (v5 = *v0, v6 = v0[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v7 = !v2 && v3 == 0xE000000000000000;
    if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0;
    }
  }

  if (!v2 && v3 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {

    v8._countAndFlagsBits = 46;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = v2;
    v9._object = v3;
    String.append(_:)(v9);
  }

  return v1;
}

id sub_100002B00(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_100002C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(sub_100003BE0(&qword_1000252B0, &qword_100019308) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v6 = &v40 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  sub_100003C28(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v14, v6, v7);
    URL.appendingPathComponent(_:)();
    v26 = objc_allocWithZone(NSDictionary);
    v27 = sub_100002B00(v12);
    strcpy(&v53, "DataVersion");
    HIDWORD(v53) = -352321536;
    v28 = [v27 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v28)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    v59 = v53;
    v60 = v54;
    v44 = a1;
    v45 = v27;
    if (*(&v54 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_28:
        LODWORD(v46) = static os_log_type_t.error.getter();
        sub_100003BE0(&qword_1000252B8, &qword_100019310);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1000192B0;
        *(v32 + 56) = sub_1000025DC(0, &qword_1000252E0, NSDictionary_ptr);
        *(v32 + 64) = sub_100003D00(&qword_1000252E8, &qword_1000252E0, NSDictionary_ptr);
        v33 = v45;
        *(v32 + 32) = v45;
        v34 = v33;
        URL._bridgeToObjectiveC()(v35);
        v37 = v36;
        *(v32 + 96) = sub_1000025DC(0, &qword_1000252C0, NSURL_ptr);
        *(v32 + 104) = sub_100003D00(&qword_1000252C8, &qword_1000252C0, NSURL_ptr);
        *(v32 + 72) = v37;
        sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
        v38 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)();

        sub_1000041E8(v44, &qword_1000252B0, &qword_100019308);
        result = (*(v8 + 8))(v14, v7);
        v16 = 0;
        v18 = 0;
        v21 = 0;
        v22 = 0;
        v19 = 0;
        v20 = 0;
        goto LABEL_29;
      }

      v16 = v51;
      v18 = v52;
      strcpy(&v53, "BundleVersion");
      HIWORD(v53) = -4864;
      v29 = [v45 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v29)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = 0u;
        v54 = 0u;
      }

      v59 = v53;
      v60 = v54;
      if (*(&v54 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_32:

          goto LABEL_28;
        }

        v43 = v14;
        v21 = v51;
        v22 = v52;
        *&v53 = 0xD000000000000012;
        *(&v53 + 1) = 0x80000001000199D0;
        v30 = [v45 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v30)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v53 = 0u;
          v54 = 0u;
        }

        v59 = v53;
        v60 = v54;
        v14 = v43;
        if (*(&v54 + 1))
        {
          if (swift_dynamicCast())
          {
            v46 = v7;
            v19 = v51;
            v20 = v52;
            strcpy(&v53, "AlertZones");
            BYTE11(v53) = 0;
            HIDWORD(v53) = -369098752;
            v42 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            v31 = [v45 __swift_objectForKeyedSubscript:v42];
            swift_unknownObjectRelease();
            if (v31)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v53 = 0u;
              v54 = 0u;
            }

            v59 = v53;
            v60 = v54;
            if (*(&v54 + 1))
            {
              sub_100003BE0(&qword_1000252F0, &qword_100019320);
              if ((swift_dynamicCast() & 1) == 0)
              {
LABEL_46:

                goto LABEL_47;
              }

              v25 = v51;
              strcpy(&v59, "ShouldAlertAll");
              HIBYTE(v59) = -18;
              v41 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
              v42 = [v45 __swift_objectForKeyedSubscript:v41];
              swift_unknownObjectRelease();
              if (v42)
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
              }

              else
              {
                v48 = 0u;
                v49 = 0u;
              }

              v50[0] = v48;
              v50[1] = v49;
              if (*(&v49 + 1))
              {
                sub_1000025DC(0, &qword_1000252F8, NSNumber_ptr);
                if (swift_dynamicCast())
                {
                  v41 = v47;
                  LODWORD(v42) = [v47 BOOLValue];

                  sub_1000041E8(v44, &qword_1000252B0, &qword_100019308);
                  (*(v8 + 8))(v43, v46);
                  *&v53 = v16;
                  *(&v53 + 1) = v18;
                  *&v54 = v21;
                  *(&v54 + 1) = v22;
                  v55 = v19;
                  v56 = v20;
                  v57 = v25;
                  v58 = v42;
                  v23 = v42;
                  *&v59 = v16;
                  *(&v59 + 1) = v18;
                  *&v60 = v21;
                  *(&v60 + 1) = v22;
                  v61 = v19;
                  v62 = v20;
                  v63 = v25;
                  v64 = v42;
                  sub_100003C98(&v53, &v51);
                  result = sub_100003CD0(&v59);
                  goto LABEL_30;
                }

                goto LABEL_46;
              }

              v39 = v50;
            }

            else
            {

              v39 = &v59;
            }

            sub_1000041E8(v39, &qword_1000252D8, &qword_100019318);
LABEL_47:
            v7 = v46;
            v14 = v43;
            goto LABEL_28;
          }

          goto LABEL_32;
        }
      }
    }

    sub_1000041E8(&v59, &qword_1000252D8, &qword_100019318);
    goto LABEL_28;
  }

  sub_1000041E8(v6, &qword_1000252B0, &qword_100019308);
  v15 = [objc_opt_self() timeZoneDataVersion];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (qword_1000251B0 != -1)
  {
    swift_once();
  }

  v19 = qword_100026478;
  v20 = qword_100026480;

  sub_1000041E8(a1, &qword_1000252B0, &qword_100019308);
  if (!v20)
  {

    v16 = 0;
    v18 = 0;
    v21 = 0;
    v22 = 0;
    v19 = 0;
LABEL_29:
    v25 = 0;
    v23 = 0;
    goto LABEL_30;
  }

  *&v53 = v16;
  *(&v53 + 1) = v18;
  v21 = 3157553;
  v22 = 0xE300000000000000;
  *&v54 = 3157553;
  *(&v54 + 1) = 0xE300000000000000;
  v55 = v19;
  v56 = v20;
  v57 = 0;
  v23 = 256;
  v58 = 256;
  *&v59 = v16;
  *(&v59 + 1) = v18;
  *&v60 = 3157553;
  *(&v60 + 1) = 0xE300000000000000;
  v61 = v19;
  v62 = v20;
  v63 = 0;
  v64 = 256;
  sub_100003C98(&v53, &v51);
  result = sub_100003CD0(&v59);
  v25 = 0;
LABEL_30:
  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v25;
  *(a2 + 56) = v23;
  return result;
}

void sub_1000037D8(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - v9;
  v11 = [objc_opt_self() defaultManager];
  if (qword_1000251A0 != -1)
  {
    swift_once();
  }

  v12 = String._bridgeToObjectiveC()();
  v31 = 0;
  v13 = [v11 destinationOfSymbolicLinkAtPath:v12 error:&v31];

  v14 = v31;
  if (!v13)
  {
    v19 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    static os_log_type_t.fault.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
LABEL_15:
    os_log(_:dso:log:type:_:)();

    v27 = 0;
    v26 = 0;
    v24 = 0;
    v22 = 0;
    v29 = 0;
    v28 = 0;
    v21 = 0xE000000000000000;
    v25 = 0xE000000000000000;
    v23 = 0xE000000000000000;
    goto LABEL_16;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = v14;

  if (qword_100025170 != -1)
  {
    swift_once();
  }

  if (v15 == qword_1000263F8 && v17 == unk_100026400 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    (*(v3 + 56))(v10, 1, 1, v2);
  }

  else
  {
    URL.init(fileURLWithPath:)();

    URL.deletingLastPathComponent()();
    (*(v3 + 8))(v6, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
  }

  sub_100002C4C(v10, &v31);
  v21 = v32;
  if (!v32)
  {
    static os_log_type_t.error.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    goto LABEL_15;
  }

  v23 = v36;
  v22 = v37;
  v25 = v34;
  v24 = v35;
  v26 = v33;
  v27 = v31;
  v28 = v39;
  v29 = v38;
LABEL_16:
  *a1 = v27;
  *(a1 + 8) = v21;
  *(a1 + 16) = v26;
  *(a1 + 24) = v25;
  *(a1 + 32) = v24;
  *(a1 + 40) = v23;
  *(a1 + 48) = v22;
  *(a1 + 56) = v29 & 1;
  *(a1 + 57) = v28 & 1;
}

uint64_t sub_100003BE0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003D00(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000025DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003D50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v20 - v4;
  v6 = [objc_opt_self() defaultManager];
  if (qword_100025188 != -1)
  {
    swift_once();
  }

  v7 = String._bridgeToObjectiveC()();
  *&v20[0] = 0;
  v8 = [v6 destinationOfSymbolicLinkAtPath:v7 error:v20];

  v9 = *&v20[0];
  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    URL.init(fileURLWithPath:)();

    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    result = sub_100002C4C(v5, v20);
    v13 = v20[0];
    v14 = v20[1];
    v15 = v20[2];
    v16 = v21;
    v17 = v22;
  }

  else
  {
    v18 = *&v20[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v16 = 0;
    v17 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  return result;
}

uint64_t sub_100003F7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v23 - v4;
  sub_1000037D8(v24);
  result = sub_100003D50(&v32);
  if (v33)
  {
    v36[0] = v32;
    v36[1] = v33;
    v37 = v34;
    *v38 = v35[0];
    *&v38[10] = *(v35 + 10);
    v7 = sub_1000029F0();
    v9 = v8;
    v10 = sub_1000029F0();
    v23[2] = v7;
    v23[3] = v9;
    v23[0] = v10;
    v23[1] = v11;
    v12 = type metadata accessor for Locale();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    sub_100004194();
    v13 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_1000041E8(v5, &unk_100025840, &unk_1000194B0);

    if (v13 == -1)
    {
      result = sub_100003CD0(v24);
      v14 = v38[25];
      v15 = v38[24];
      v17 = *&v38[8];
      v16 = *&v38[16];
      v19 = *(&v37 + 1);
      v18 = *v38;
      v20 = v36;
      v21 = v37;
      goto LABEL_6;
    }

    result = sub_1000041E8(&v32, &qword_100025300, qword_100019328);
  }

  v14 = v31;
  v15 = v30;
  v17 = v28;
  v16 = v29;
  v19 = v26;
  v18 = v27;
  v20 = v24;
  v21 = v25;
LABEL_6:
  v22 = v20[1];
  *a1 = *v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21;
  *(a1 + 24) = v19;
  *(a1 + 32) = v18;
  *(a1 + 40) = v17;
  *(a1 + 48) = v16;
  *(a1 + 56) = v15;
  *(a1 + 57) = v14;
  return result;
}

unint64_t sub_100004194()
{
  result = qword_100025850;
  if (!qword_100025850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025850);
  }

  return result;
}

uint64_t sub_1000041E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003BE0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t *sub_100004248(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  sub_10000532C(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000609C(i, v9);
      sub_100003BE0(&qword_1000252D8, &qword_100019318);
      sub_100003BE0(&qword_100025310, &qword_100019358);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000532C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100004388(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v42 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v40 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v14 = *(v39 + 64);
  __chkstk_darwin(v41);
  v38 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    swift_errorRetain();
    v37 = static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100019340;
    v17 = _convertErrorToNSError(_:)();
    *(v16 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    *(v16 + 64) = sub_100003D00(&qword_1000257A0, &qword_1000252D0, NSError_ptr);
    *(v16 + 32) = v17;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v18 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  if (a1)
  {
    aBlock[0] = 0;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    v19 = aBlock[0];
    if (aBlock[0])
    {
      swift_beginAccess();
      sub_10000F0B0(v19);
      swift_endAccess();
    }

    else
    {
      v24 = a1;
      v37 = static os_log_type_t.fault.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100019340;
      *(v25 + 56) = sub_1000025DC(0, &qword_100025328, NSArray_ptr);
      *(v25 + 64) = sub_100003D00(&qword_100025330, &qword_100025328, NSArray_ptr);
      *(v25 + 32) = v24;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v26 = v24;
      v27 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    static os_log_type_t.debug.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100019340;
    swift_beginAccess();
    v29 = *(a4 + 16);
    *(v28 + 56) = sub_100003BE0(&qword_100025338, &qword_100019370);
    *(v28 + 64) = sub_100006204(&qword_100025340, &qword_100025338, &qword_100019370);
    *(v28 + 32) = v29;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

    v30 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v31 = static OS_dispatch_queue.main.getter();
    v32 = swift_allocObject();
    v32[2] = v42;
    v32[3] = a6;
    v32[4] = a4;
    v32[5] = a2;
    aBlock[4] = sub_1000061A0;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F608;
    aBlock[3] = &unk_100020F30;
    v33 = _Block_copy(aBlock);
    swift_errorRetain();

    v34 = v38;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000061AC();
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100006204(&qword_100025350, &unk_100025830, &qword_100019378);
    v35 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v11 + 8))(v35, v10);
    return (*(v39 + 8))(v34, v41);
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    v21 = *(a4 + 16);

    v42(v22, a2);
  }
}

uint64_t sub_100004A50(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);

  a1(v8, a4);
}

void sub_100004ACC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_100004B58(char a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  if (a1)
  {
    v49 = v6;
    v50 = a3;
    v51 = a2;
    v47 = [objc_allocWithZone(UNMutableNotificationContent) init];
    aBlock = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v16._countAndFlagsBits = 0xD00000000000002ALL;
    v16._object = 0x8000000100019B90;
    String.append(_:)(v16);
    v17._object = 0x8000000100019BC0;
    v17._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x656C646E75622ELL;
    v18._object = 0xE700000000000000;
    String.append(_:)(v18);
    v19 = objc_allocWithZone(NSBundle);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 initWithPath:v20];

    if (!v21)
    {
      static os_log_type_t.fault.getter();
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v22 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();
    v25 = CFPreferencesCopyValue(v23, kCFPreferencesAnyApplication, v24, kCFPreferencesAnyHost);

    if (v25)
    {
      aBlock = v25;
      sub_100003BE0(&qword_100025338, &qword_100019370);
      swift_dynamicCast();
    }

    v48 = v7;
    v46 = v10;
    if (v21)
    {
      v26 = v21;
      isa = [v26 localizations];
      if (!isa)
      {
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      v28 = objc_opt_self();
      v29 = Array._bridgeToObjectiveC()().super.isa;

      v30 = [v28 preferredLocalizationsFromArray:isa forPreferences:v29];

      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if (v31[2])
      {
        v32 = v31[4];
        v33 = v31[5];
      }
    }

    else
    {
    }

    String.LocalizationValue.init(stringLiteral:)();
    v34 = v21;
    static Locale.current.getter();

    String.init(localized:table:bundle:localization:locale:comment:)();
    v35 = String._bridgeToObjectiveC()();

    v36 = v47;
    [v47 setTitle:v35];

    String.LocalizationValue.init(stringLiteral:)();
    v37 = v34;
    static Locale.current.getter();
    String.init(localized:table:bundle:localization:locale:comment:)();
    v38 = String._bridgeToObjectiveC()();

    [v36 setBody:v38];

    v39 = String._bridgeToObjectiveC()();
    [v36 setCategoryIdentifier:v39];

    [v36 setShouldSuppressDefaultAction:1];
    v40 = v46;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v48 + 8))(v40, v49);
    v41 = v36;
    v42 = String._bridgeToObjectiveC()();

    v43 = [objc_opt_self() requestWithIdentifier:v42 content:v41 trigger:0];

    if (qword_100025160 != -1)
    {
      swift_once();
    }

    v44 = *(qword_1000263E0 + OBJC_IVAR____TtC3tzd6Daemon_notificationCenter);
    v56 = sub_100012B94;
    v57 = 0;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_1000052C0;
    v55 = &unk_100020F58;
    v45 = _Block_copy(&aBlock);
    [v44 addNotificationRequest:v43 withCompletionHandler:v45];
    _Block_release(v45);
    v51();
  }

  else
  {
    (a2)(v15);
  }
}

void sub_1000052C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void *sub_10000532C(void *a1, int64_t a2, char a3)
{
  result = sub_10000538C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000534C(void *a1, int64_t a2, char a3)
{
  result = sub_1000054C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000536C(char *a1, int64_t a2, char a3)
{
  result = sub_1000056E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000538C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003BE0(&qword_100025318, &qword_100019360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003BE0(&qword_100025310, &qword_100019358);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000054C0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003BE0(&qword_100025320, &qword_100019368);
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
    sub_100003BE0(&qword_1000252D8, &qword_100019318);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000055F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BE0(&qword_100025358, &qword_100019380);
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

char *sub_1000056E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BE0(&qword_100025750, &qword_100019388);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000057F4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = sub_100005F48;
  v7[3] = v6;
  v7[4] = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = _swiftEmptyArrayStorage;

  v57 = a1;

  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = CFPreferencesCopyValue(v9, v10, v11, kCFPreferencesAnyHost);

  if (!v12)
  {
    static os_log_type_t.info.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    goto LABEL_37;
  }

  v55 = a2;
  v56 = a3;
  *&aBlock = v12;
  swift_unknownObjectRetain();
  sub_100003BE0(&qword_100025308, &qword_100019350);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v13 = v58;
  v14 = v58[2];
  if (v14)
  {
    sub_10000534C(0, v14, 0);
    v15 = 4;
    while (1)
    {
      v16 = v13[v15];
      if (!*(v16 + 16))
      {
        goto LABEL_9;
      }

      v17 = v13[v15];

      v18 = sub_100012E54(2037672291, 0xE400000000000000);
      if ((v19 & 1) == 0)
      {
        break;
      }

      sub_100006040(*(v16 + 56) + 32 * v18, &aBlock);

LABEL_10:
      v58 = _swiftEmptyArrayStorage;
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_10000534C((v20 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[4 * v21];
      v23 = v61;
      *(v22 + 2) = aBlock;
      *(v22 + 3) = v23;
      ++v15;
      if (!--v14)
      {

        goto LABEL_16;
      }
    }

LABEL_9:
    aBlock = 0u;
    v61 = 0u;
    goto LABEL_10;
  }

LABEL_16:
  v25 = sub_100004248(_swiftEmptyArrayStorage);

  if (!v25)
  {
LABEL_33:
    static os_log_type_t.error.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v41 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v27 = v25[2];
  if (!v27)
  {
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  do
  {
    v30 = v28;
    while (1)
    {
      if (v30 >= v25[2])
      {
        __break(1u);
        return result;
      }

      v31 = v25[v30 + 4];
      if (*(v31 + 16))
      {
        break;
      }

LABEL_21:
      if (v27 == ++v30)
      {
        goto LABEL_35;
      }
    }

    v32 = v25[v30 + 4];

    v33 = sub_100012E54(0x656E6F5A656D6974, 0xE800000000000000);
    if ((v34 & 1) == 0)
    {

      goto LABEL_21;
    }

    sub_100006040(*(v31 + 56) + 32 * v33, &aBlock);

    result = swift_dynamicCast();
    if ((result & 1) == 0 || !v59)
    {
      goto LABEL_21;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100015478(0, *(v29 + 2) + 1, 1, v29);
      v29 = result;
    }

    v36 = *(v29 + 2);
    v35 = *(v29 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v54 = v36 + 1;
      v39 = v29;
      v40 = *(v29 + 2);
      result = sub_100015478((v35 > 1), v36 + 1, 1, v39);
      v37 = v54;
      v36 = v40;
      v29 = result;
    }

    v28 = v30 + 1;
    *(v29 + 2) = v37;
    v38 = &v29[16 * v36];
    *(v38 + 4) = v58;
    *(v38 + 5) = v59;
  }

  while (v27 - 1 != v30);
LABEL_35:

  sub_10000F0B0(v29);
  swift_unknownObjectRelease();
LABEL_36:
  a2 = v55;
  a3 = v56;
LABEL_37:
  v42 = objc_allocWithZone(NSBundle);
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 initWithPath:v43];

  if (!v44)
  {
    goto LABEL_41;
  }

  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 classNamed:v45];

  if (!v46)
  {

LABEL_41:
    v52 = *(v8 + 16);

    sub_1000166DC(v53, 0, v57, a2, a3);
  }

  swift_getObjCClassMetadata();
  v47 = [swift_getObjCClassFromMetadata() timeZonesForCurrentClockWidgets];
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v8;
  v48[4] = sub_100005F90;
  v48[5] = v7;
  v62 = sub_10000601C;
  v63 = v48;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v61 = sub_100004ACC;
  *(&v61 + 1) = &unk_100020EE0;
  v49 = _Block_copy(&aBlock);
  v50 = v47;

  v51 = [v50 addCompletionBlock:v49];
  _Block_release(v49);
}

uint64_t sub_100005F10()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005F50()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005F9C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005FD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006028(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006040(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000609C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BE0(&qword_1000252D8, &qword_100019318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006110(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006158()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000061AC()
{
  result = qword_100025348;
  if (!qword_100025348)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025348);
  }

  return result;
}

uint64_t sub_100006204(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10000625C()
{
  result = MobileGestalt_get_current_device();
  qword_1000263C0 = result;
  return result;
}

id sub_100006284()
{
  result = [v0 attributes];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    strcpy(v8, "BundleVersion");
    v8[7] = -4864;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v4 = sub_100012E10(v7), (v5 & 1) != 0))
    {
      sub_100006040(*(v3 + 56) + 32 * v4, v8);
      sub_10000C7AC(v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      sub_10000C7AC(v7);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000063B8()
{
  v0 = [objc_allocWithZone(MADownloadOptions) init];
  [v0 setDiscretionary:0];
  result = [v0 setAllowsCellularAccess:1];
  qword_1000263C8 = v0;
  return result;
}

uint64_t sub_10000641C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = type metadata accessor for NSFastEnumerationIterator();
  v35 = *(v36 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v36);
  v40 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for URL();
  v37 = *(v39 - 8);
  v10 = *(v37 + 64);
  v11 = __chkstk_darwin(v39);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v41 = v34 - v14;
  type metadata accessor for FileAttributeKey(0);
  sub_10000C6DC(&qword_100025238, type metadata accessor for FileAttributeKey);
  v38 = a1;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v16 = String._bridgeToObjectiveC()();
  *&v42[0] = 0;
  v17 = [v4 setAttributes:isa ofItemAtPath:v16 error:v42];

  if (v17)
  {
    v18 = *&v42[0];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v4 enumeratorAtPath:v19];

    if (v20)
    {
      URL.init(fileURLWithPath:)();
      v34[0] = v20;
      NSEnumerator.makeIterator()();
      NSFastEnumerationIterator.next()();
      if (v46)
      {
        v21 = (v37 + 8);
        while (1)
        {
          sub_10000D140(&v45, v44);
          sub_100006040(v44, v42);
          if (!swift_dynamicCast())
          {
            break;
          }

          v22 = Dictionary._bridgeToObjectiveC()().super.isa;
          URL.appendingPathComponent(_:)();

          URL.path.getter();
          v23 = *v21;
          (*v21)(v13, v39);
          v24 = String._bridgeToObjectiveC()();

          *&v42[0] = 0;
          v25 = [v4 setAttributes:v22 ofItemAtPath:v24 error:v42];

          if ((v25 & 1) == 0)
          {
            v32 = *&v42[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_10000D1A8(v44);
            (*(v35 + 8))(v40, v36);
            return v23(v41, v39);
          }

          v26 = *&v42[0];
          sub_10000D1A8(v44);
          NSFastEnumerationIterator.next()();
          if (!v46)
          {
            goto LABEL_8;
          }
        }

        static os_log_type_t.fault.getter();
        sub_100003BE0(&qword_1000252B8, &qword_100019310);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_100019340;
        sub_100006040(v44, &v43);
        sub_100003BE0(&qword_100025508, &qword_1000194F8);
        if (swift_dynamicCast())
        {
          sub_10000D128(v42, v31 + 32);
        }

        else
        {
          *(v31 + 56) = &type metadata for String;
          *(v31 + 64) = sub_10000C674();
          *(v31 + 32) = 0x6E776F6E6B6E7528;
          *(v31 + 40) = 0xE900000000000029;
        }

        sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
        v33 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)();

        [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:256 userInfo:0];
        swift_willThrow();

        sub_10000D1A8(v44);
        (*(v35 + 8))(v40, v36);
        return (*v21)(v41, v39);
      }

      else
      {
LABEL_8:

        (*(v35 + 8))(v40, v36);
        return (*(v37 + 8))(v41, v39);
      }
    }

    else
    {
      static os_log_type_t.fault.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100019340;
      *(v29 + 56) = &type metadata for String;
      *(v29 + 64) = sub_10000C674();
      *(v29 + 32) = a2;
      *(v29 + 40) = a3;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

      v30 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:256 userInfo:0];
      return swift_willThrow();
    }
  }

  else
  {
    v28 = *&v42[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_100006DB8()
{
  if (qword_100025140 != -1)
  {
    swift_once();
  }

  result = qword_1000263C0;
  if (qword_1000263C0)
  {
    result = MobileGestalt_get_internalBuild();
  }

  byte_1000263D0 = result;
  return result;
}

void *sub_100006E14()
{
  if (qword_100025150 != -1)
  {
    swift_once();
  }

  if (byte_1000263D0 == 1)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 256);
    result = dlsym(v0, "SimulateCrash");
  }

  else
  {
    result = 0;
  }

  off_1000263D8 = result;
  return result;
}

void sub_100006E94(void *a1)
{
  if (qword_100025150 != -1)
  {
    v40 = a1;
    swift_once();
    a1 = v40;
  }

  if (byte_1000263D0 == 1)
  {
    if (qword_100025158 != -1)
    {
      v41 = a1;
      swift_once();
      a1 = v41;
    }

    v1 = off_1000263D8;
    if (off_1000263D8)
    {
      v2 = a1;
      v3 = [a1 userInfo];
      v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v4 + 16) && (v5 = sub_100012E54(0x6150656C6946534ELL, 0xEA00000000006874), (v6 & 1) != 0))
      {
        sub_100006040(*(v4 + 56) + 32 * v5, v43);

        sub_1000025DC(0, &qword_100025510, NSString_ptr);
        if (swift_dynamicCast())
        {
          v7 = [v42 stringByDeletingLastPathComponent];
          v8 = v7;
          v9 = v7;
          if (!v7)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v9 = String._bridgeToObjectiveC()();

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v8 = String._bridgeToObjectiveC()();
          }

          v10 = objc_opt_self();
          v11 = v7;
          v12 = [v10 defaultManager];
          v43[0] = 0;
          v13 = [v12 contentsOfDirectoryAtPath:v9 error:v43];

          v14 = v43[0];
          if (v13)
          {
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v15 = v14;
          }

          else
          {
            v16 = v43[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          v17 = [v10 defaultManager];
          v43[0] = 0;
          v18 = [v17 attributesOfItemAtPath:v42 error:v43];

          v19 = v43[0];
          if (v18)
          {
            type metadata accessor for FileAttributeKey(0);
            sub_10000C6DC(&qword_100025238, type metadata accessor for FileAttributeKey);
            static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
            v20 = v19;
          }

          else
          {
            v21 = v43[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          v22 = [v10 defaultManager];
          v43[0] = 0;
          v23 = [v22 attributesOfItemAtPath:v8 error:v43];

          v24 = v43[0];
          if (v23)
          {
            type metadata accessor for FileAttributeKey(0);
            sub_10000C6DC(&qword_100025238, type metadata accessor for FileAttributeKey);
            static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = v24;
          }

          else
          {
            v26 = v43[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          v27 = getpid();
          v43[0] = 0;
          v43[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(82);
          v28 = [v2 description];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v32._countAndFlagsBits = v29;
          v32._object = v31;
          String.append(_:)(v32);

          v33._countAndFlagsBits = 0xD00000000000001BLL;
          v33._object = 0x800000010001A3A0;
          String.append(_:)(v33);
          sub_100003BE0(&qword_100025518, &qword_100019500);
          v34._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v34);

          v35._countAndFlagsBits = 0xD00000000000001ALL;
          v35._object = 0x800000010001A3C0;
          String.append(_:)(v35);
          v36._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v36);

          v37._object = 0x800000010001A3E0;
          v37._countAndFlagsBits = 0xD000000000000015;
          String.append(_:)(v37);
          sub_100003BE0(&qword_100025520, &qword_100019508);
          v38._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v38);

          v39 = String._bridgeToObjectiveC()();

          v1(v27, 0, v39);
        }
      }

      else
      {
      }
    }
  }
}

Swift::Int sub_1000074C0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000752C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000758C()
{
  v0 = String.utf8CString.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_10000BDB0(v0);
  }

  if (!mkdtemp((v0 + 32)))
  {
    v12 = NSPOSIXErrorDomain;
    [objc_allocWithZone(NSError) initWithDomain:v12 code:errno.getter() userInfo:0];

LABEL_9:
    swift_willThrow();
  }

  String.init(validatingUTF8:)();
  if (!v1)
  {
    sub_10000D1F4();
    swift_allocError();
    goto LABEL_9;
  }

  v2 = [objc_opt_self() defaultManager];
  sub_100003BE0(&qword_1000254E8, &qword_1000194E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100019340;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v4;
  *(inited + 40) = NSFileProtectionNone;
  v5 = NSFileProtectionKey;
  v6 = NSFileProtectionNone;
  sub_100013B0C(inited);
  swift_setDeallocating();
  sub_1000041E8(inited + 32, &qword_1000254F0, &qword_1000194E8);
  type metadata accessor for FileAttributeKey(0);
  sub_10000C6DC(&qword_100025238, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = String._bridgeToObjectiveC()();
  v17 = 0;
  v9 = [v2 setAttributes:isa ofItemAtPath:v8 error:&v17];

  if (v9)
  {
    v10 = v17;
    URL.init(fileURLWithPath:)();
  }

  else
  {
    v13 = v17;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.fault.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100019340;
    v15 = _convertErrorToNSError(_:)();
    *(v14 + 56) = sub_1000025DC(0, &qword_100025500, NSObject_ptr);
    *(v14 + 64) = sub_100003D00(&qword_100025780, &qword_100025500, NSObject_ptr);
    *(v14 + 32) = v15;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    return swift_willThrow();
  }
}

id sub_10000795C()
{
  if (*(v0 + 48) != 1)
  {
    return *(v0 + 40);
  }

  result = [*(v0 + 16) state];
  *(v0 + 40) = result;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_1000079A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21[-v6];
  v8 = sub_100003BE0(&qword_1000254D8, &qword_1000194C8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v21[-v13];
  v15 = OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___localURL;
  swift_beginAccess();
  sub_10000D2B8(v1 + v15, v14, &qword_1000254D8, &qword_1000194C8);
  if ((*(v4 + 48))(v14, 1, v3) != 1)
  {
    return sub_10000D248(v14, a1);
  }

  sub_1000041E8(v14, &qword_1000254D8, &qword_1000194C8);
  v16 = [*(v1 + 16) getLocalFileUrl];
  if (v16)
  {
    v17 = v16;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 56))(v7, v18, 1, v20);
  sub_10000D248(v7, a1);
  sub_10000D2B8(a1, v12, &qword_1000252B0, &qword_100019308);
  (*(v4 + 56))(v12, 0, 1, v3);
  swift_beginAccess();
  sub_10000D320(v12, v1 + v15);
  return swift_endAccess();
}

double sub_100007C48@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info;
  v4 = *(v1 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 16);
  v21[0] = *(v1 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info);
  v21[1] = v4;
  v22[0] = *(v1 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 32);
  *(v22 + 10) = *(v1 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 42);
  v5 = *(&v21[0] + 1);
  if (*(&v21[0] + 1) == 1)
  {
    sub_100007D7C(v1, v16);
    v7 = v17;
    v6 = v18[0];
    v19 = v17;
    v20[0] = v18[0];
    *(v20 + 10) = *(v18 + 10);
    v8 = *(v3 + 16);
    v14[0] = *v3;
    v14[1] = v8;
    v15[0] = *(v3 + 32);
    *(v15 + 10) = *(v3 + 42);
    *(v3 + 42) = *(v18 + 10);
    v9 = v16[0];
    v5 = v16[1];
    *v3 = v16[0];
    *(v3 + 8) = v5;
    *(v3 + 16) = v7;
    *(v3 + 32) = v6;
    sub_10000D2B8(v16, &v13, &qword_100025300, qword_100019328);
    sub_1000041E8(v14, &qword_1000254E0, &unk_1000194D0);
  }

  else
  {
    v9 = *&v21[0];
    v10 = *(v3 + 32);
    v19 = *(v3 + 16);
    v20[0] = v10;
    *(v20 + 10) = *(v3 + 42);
  }

  sub_10000D2B8(v21, v14, &qword_1000254E0, &unk_1000194D0);
  *a1 = v9;
  *(a1 + 8) = v5;
  v11 = v20[0];
  *(a1 + 16) = v19;
  *(a1 + 32) = v11;
  result = *(v20 + 10);
  *(a1 + 42) = *(v20 + 10);
  return result;
}

void sub_100007D7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000795C() != 2)
  {
    goto LABEL_4;
  }

  sub_1000079A0(v10);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v10, v11);
    (*(v12 + 16))(v8, v15, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_100002C4C(v8, &v50);
    v25 = v15;
    v18 = v51;
    v20 = v53;
    v26 = v12;
    v21 = v54;
    v22 = v55;
    v23 = v56;
    v24 = v57;
    v48 = v50;
    v49 = v25;
    v47 = v52;
    if (!v51)
    {
      v30 = v26;
      LODWORD(v46) = static os_log_type_t.error.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100019340;
      URL._bridgeToObjectiveC()(&unk_100019000);
      v33 = v32;
      *(v31 + 56) = sub_1000025DC(0, &qword_1000252C0, NSURL_ptr);
      *(v31 + 64) = sub_100003D00(&qword_1000252C8, &qword_1000252C0, NSURL_ptr);
      *(v31 + 32) = v33;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v34 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      (*(v30 + 8))(v49, v11);
      v19 = v47;
      v17 = v48;
      v18 = 0;
      goto LABEL_5;
    }

    v45 = v26;
    v58 = v50;
    v59 = v51;
    v60 = v52;
    v61 = v53;
    v62 = v54;
    v63 = v55;
    v64 = v56;
    v65 = v57;
    v27 = sub_1000029F0();
    v29 = *(a1 + 24);
    v46 = *(a1 + 32);
    if (v27 == v29 && v28 == v46)
    {
    }

    else
    {
      v44 = v29;
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        static os_log_type_t.error.getter();
        sub_100003BE0(&qword_1000252B8, &qword_100019310);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1000192B0;
        *(v36 + 56) = &type metadata for String;
        v37 = sub_10000C674();
        *(v36 + 64) = v37;
        v38 = v46;
        *(v36 + 32) = v44;
        *(v36 + 40) = v38;

        v39 = sub_1000029F0();
        v41 = v40;
        sub_1000041E8(&v50, &qword_100025300, qword_100019328);
        *(v36 + 96) = &type metadata for String;
        *(v36 + 104) = v37;
        *(v36 + 72) = v39;
        *(v36 + 80) = v41;
        sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
        v42 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)();

        (*(v45 + 8))(v49, v11);
        goto LABEL_4;
      }
    }

    (*(v45 + 8))(v49, v11);
    v19 = v47;
    v17 = v48;
    goto LABEL_5;
  }

  sub_1000041E8(v10, &qword_1000252B0, &qword_100019308);
  static os_log_type_t.error.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v16 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

LABEL_4:
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
LABEL_5:
  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
}

uint64_t sub_1000082D8(void *a1)
{
  v2 = v1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  v4 = OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___localURL;
  v5 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = (v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info);
  *v6 = xmmword_100019390;
  v6[1] = 0u;
  v6[2] = 0u;
  *(v6 + 42) = 0u;
  *(v2 + 16) = a1;
  v7 = a1;
  v8 = sub_100006284();
  v10 = v9;

  if (v10)
  {
    *(v2 + 24) = v8;
    *(v2 + 32) = v10;
  }

  else
  {

    sub_1000041E8(v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___localURL, &qword_1000254D8, &qword_1000194C8);
    v11 = *(v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 16);
    v15[0] = *(v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info);
    v15[1] = v11;
    v16[0] = *(v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 32);
    *(v16 + 10) = *(v2 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 42);
    sub_1000041E8(v15, &qword_1000254E0, &unk_1000194D0);
    type metadata accessor for TZSAsset();
    v12 = *(*v2 + 48);
    v13 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_100008468(void **a1, void *a2, unint64_t a3, unint64_t a4)
{
  v86 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v79 - v19;
  v85 = v8;
  v84 = v12;
  if (a1)
  {
    static os_log_type_t.error.getter();
    v21 = v16;
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100019340;
    aBlock = a1;
    type metadata accessor for MAQueryResult(0);
    v23 = String.init<A>(describing:)();
    v24 = v13;
    v25 = a4;
    v27 = v26;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_10000C674();
    *(v22 + 32) = v23;
    *(v22 + 40) = v27;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v28 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v29 = static OS_dispatch_queue.main.getter();
    v30 = swift_allocObject();
    v30[2] = v86;
    v30[3] = v25;
    v30[4] = 0;
    v30[5] = a1;
    v99 = sub_10000C6D0;
    v100 = v30;
    aBlock = _NSConcreteStackBlock;
    v96 = 1107296256;
    v97 = sub_10000F608;
    v98 = &unk_100021020;
    v31 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10000C6DC(&qword_100025348, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100006204(&qword_100025350, &unk_100025830, &qword_100019378);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v85 + 8))(v11, v7);
    return (*(v24 + 8))(v21, v84);
  }

  v80 = v16;
  v81 = v11;
  v82 = v13;
  v33 = [a2 results];
  v83 = v7;
  if (!v33)
  {
    v53 = v82;
    v54 = v81;
    v38 = v86;
LABEL_61:
    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v74 = static OS_dispatch_queue.main.getter();
    v75 = swift_allocObject();
    v75[2] = v38;
    v75[3] = a4;
    v75[4] = v33;
    v99 = sub_10000C778;
    v100 = v75;
    aBlock = _NSConcreteStackBlock;
    v96 = 1107296256;
    v97 = sub_10000F608;
    v98 = &unk_100021070;
    v76 = _Block_copy(&aBlock);

    v77 = v80;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10000C6DC(&qword_100025348, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100006204(&qword_100025350, &unk_100025830, &qword_100019378);
    v78 = v83;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v76);

    (*(v85 + 8))(v54, v78);
    return (*(v53 + 8))(v77, v84);
  }

  v87 = v20;
  v91 = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  static os_log_type_t.info.getter();
  v90 = sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v35 = swift_allocObject();
  v89 = xmmword_100019340;
  *(v35 + 16) = xmmword_100019340;
  *(v35 + 56) = sub_100003BE0(&qword_1000254C0, &qword_1000194C0);
  *(v35 + 64) = sub_100006204(&qword_1000254C8, &qword_1000254C0, &qword_1000194C0);
  *(v35 + 32) = v34;
  v36 = sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

  v88 = v36;
  v37 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v94 = _swiftEmptyArrayStorage;
  v38 = v86;
  if (v34 >> 62)
  {
    goto LABEL_58;
  }

  v39 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v79 = a4;
  if (v39)
  {
    v38 = 0;
    a4 = v34 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v38 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v43 = *(v34 + 8 * v38 + 32);
      }

      v44 = v43;
      v45 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
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
        v39 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_6;
      }

      v46 = [v43 attributes];
      if (!v46)
      {
        goto LABEL_64;
      }

      v47 = v46;
      v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(v92, "BundleVersion");
      HIWORD(v92[1]) = -4864;
      AnyHashable.init<A>(_:)();
      if (*(v48 + 16) && (v49 = sub_100012E10(&aBlock), (v50 & 1) != 0))
      {
        sub_100006040(*(v48 + 56) + 32 * v49, v93);
        sub_10000C7AC(&aBlock);

        if (swift_dynamicCast())
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v51 = v94[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_10;
        }
      }

      else
      {

        sub_10000C7AC(&aBlock);
      }

      static os_log_type_t.error.getter();
      v40 = swift_allocObject();
      *(v40 + 16) = v89;
      *(v40 + 56) = v91;
      *(v40 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
      *(v40 + 32) = v44;
      v41 = v44;
      v42 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

LABEL_10:
      ++v38;
      if (v45 == v39)
      {
        v52 = v94;
        a4 = v79;
        v38 = v86;
        goto LABEL_24;
      }
    }
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_24:

  if ((v52 & 0x8000000000000000) == 0 && (v52 & 0x4000000000000000) == 0)
  {
    v90 = *(v52 + 16);
    if (v90)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

  v90 = _CocoaArrayWrapper.endIndex.getter();
  if (!v90)
  {
LABEL_60:

    v33 = 0;
    v53 = v82;
    v54 = v81;
    goto LABEL_61;
  }

LABEL_27:
  *&v89 = v52 & 0xC000000000000001;
  if ((v52 & 0xC000000000000001) != 0)
  {
    v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v52 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:

      sub_10000C7AC(&aBlock);
      __break(1u);
LABEL_66:

      result = sub_10000C7AC(&aBlock);
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v55 = *(v52 + 32);
  }

  v91 = v55;
  if (v90 == 1)
  {
LABEL_31:
    v56 = v91;
LABEL_32:

    v57 = type metadata accessor for TZSAsset();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    v33 = sub_1000082D8(v56);
    v53 = v82;
    v54 = v81;
    a4 = v79;
    v38 = v86;
    goto LABEL_61;
  }

  a4 = 1;
  while (1)
  {
    if (v89)
    {
      v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (a4 >= *(v52 + 16))
      {
        goto LABEL_57;
      }

      v60 = *(v52 + 8 * a4 + 32);
    }

    v56 = v60;
    v34 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      goto LABEL_55;
    }

    result = [v91 attributes];
    if (!result)
    {
      break;
    }

    v61 = result;
    v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    strcpy(v92, "BundleVersion");
    HIWORD(v92[1]) = -4864;
    AnyHashable.init<A>(_:)();
    if (!*(v62 + 16))
    {
      goto LABEL_65;
    }

    v63 = sub_100012E10(&aBlock);
    if ((v64 & 1) == 0)
    {
      goto LABEL_65;
    }

    sub_100006040(*(v62 + 56) + 32 * v63, v93);
    sub_10000C7AC(&aBlock);

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      goto LABEL_67;
    }

    v65 = v92[0];
    v66 = v92[1];
    result = [v56 attributes];
    if (!result)
    {
      goto LABEL_69;
    }

    v67 = result;
    v68 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    strcpy(v92, "BundleVersion");
    HIWORD(v92[1]) = -4864;
    AnyHashable.init<A>(_:)();
    if (!*(v68 + 16))
    {
      goto LABEL_66;
    }

    v69 = sub_100012E10(&aBlock);
    if ((v70 & 1) == 0)
    {
      goto LABEL_66;
    }

    sub_100006040(*(v68 + 56) + 32 * v69, v93);
    sub_10000C7AC(&aBlock);

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      goto LABEL_70;
    }

    v38 = v92[1];
    aBlock = v65;
    v96 = v66;
    v93[0] = v92[0];
    v93[1] = v92[1];
    v71 = type metadata accessor for Locale();
    v72 = v87;
    (*(*(v71 - 8) + 56))(v87, 1, 1, v71);
    sub_100004194();
    v73 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_1000041E8(v72, &unk_100025840, &unk_1000194B0);

    if (v73 == -1)
    {

      v91 = v56;
      ++a4;
      if (v34 == v90)
      {
        goto LABEL_32;
      }
    }

    else
    {

      ++a4;
      if (v34 == v90)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_100009290(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000C5F8();
  v7 = swift_allocError();
  *v8 = a4;
  *(v8 + 8) = 1;
  a1(a3, v7);
}

void sub_100009328(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100019340;
    aBlock[0] = a1;
    type metadata accessor for MADownloadResult(0);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_10000C674();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v21 = v9;
    static os_log_type_t.info.getter();
    v20 = v3;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100009728;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F608;
    aBlock[3] = &unk_100021098;
    v19 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000C6DC(&qword_100025348, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100006204(&qword_100025350, &unk_100025830, &qword_100019378);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v20 + 8))(v6, v2);
    (*(v21 + 8))(v11, v7);
  }
}

uint64_t sub_100009740(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v31 - v8;
  if (!a2)
  {
    if (!a1)
    {
      static os_log_type_t.info.getter();
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v19 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      return a3(0, 0, 0);
    }

    sub_100003F7C(v32);
    v11 = sub_1000029F0();
    v13 = v12;
    sub_100003CD0(v32);
    v15 = a1[3];
    v14 = a1[4];
    v31[4] = v11;
    v31[5] = v13;
    v31[2] = v15;
    v31[3] = v14;
    v16 = type metadata accessor for Locale();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    sub_100004194();

    v17 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_1000041E8(v9, &unk_100025840, &unk_1000194B0);

    if (v17 == -1)
    {
      v20 = sub_10000795C();
      if ((v20 - 2) < 2)
      {
        sub_100009CB8();
        goto LABEL_9;
      }

      if (v20 == 1)
      {
        sub_10000AF00();
        goto LABEL_9;
      }

      if (v20 != 4)
      {
        static os_log_type_t.error.getter();
        sub_100003BE0(&qword_1000252B8, &qword_100019310);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_100019340;
        v25 = a1[2];
        *(v24 + 56) = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
        *(v24 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
        *(v24 + 32) = v25;
        sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
        v26 = v25;
        v27 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)();

        v28 = a1[5];
        sub_10000C5F8();
        v29 = swift_allocError();
        *v30 = v28;
        *(v30 + 8) = 0;

        a3(v15, v14, v29);

        goto LABEL_9;
      }

      static os_log_type_t.info.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100019340;
      v22 = a1[2];
      *(v21 + 56) = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
      *(v21 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
      *(v21 + 32) = v22;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v23 = v22;
      v18 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      static os_log_type_t.info.getter();
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v18 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();
    }

LABEL_9:
    a3(v15, v14, 0);
  }

  swift_errorRetain();
  a3(0, 0, a2);
}

uint64_t sub_100009CB8()
{
  v2 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v120 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v135 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v136 = v120 - v12;
  v13 = __chkstk_darwin(v11);
  v137 = v120 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = v120 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v120 - v19;
  __chkstk_darwin(v18);
  v22 = v120 - v21;
  sub_100007C48(v145);
  if (!*(&v145[0] + 1))
  {
    goto LABEL_4;
  }

  v148 = v145[0];
  v149 = v145[1];
  v150[0] = v146[0];
  *(v150 + 10) = *(v146 + 10);
  sub_1000079A0(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000041E8(v145, &qword_100025300, qword_100019328);
    sub_1000041E8(v5, &qword_1000252B0, &qword_100019308);
LABEL_4:
    sub_10000C5F8();
    swift_allocError();
    *v23 = 1;
    *(v23 + 8) = 3;
    return swift_willThrow();
  }

  v127 = v0;
  (*(v7 + 32))(v22, v5, v6);
  sub_100003F7C(v147);
  v126 = sub_1000029F0();
  v134 = v25;
  sub_100003CD0(v147);
  v26 = [objc_opt_self() defaultManager];
  v133 = v1;
  v27 = v26;
  v28 = [v26 temporaryDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();
  v31 = *(v7 + 8);
  v29 = v7 + 8;
  v30 = v31;
  v31(v17, v6);
  URL.path.getter();
  v32 = v133;
  sub_10000758C();
  v133 = v32;
  if (v32)
  {
    sub_1000041E8(v145, &qword_100025300, qword_100019328);

    v30(v20, v6);
    return (v30)(v22, v6);
  }

  v128 = v27;
  v129 = v22;
  v130 = v29;
  v131 = v30;
  v125 = v20;
  v132 = v6;

  sub_100003BE0(&qword_1000254E8, &qword_1000194E0);
  inited = swift_initStackObject();
  v122 = xmmword_1000192A0;
  *(inited + 16) = xmmword_1000192A0;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 40) = NSFileProtectionNone;
  *(inited + 64) = v34;
  *(inited + 72) = NSFileOwnerAccountID;
  *(inited + 80) = 0;
  *(inited + 104) = &type metadata for Int;
  *(inited + 112) = NSFileGroupOwnerAccountID;
  *(inited + 144) = &type metadata for Int;
  *(inited + 120) = 0;
  v35 = NSFileProtectionKey;
  v36 = NSFileProtectionNone;
  v37 = NSFileOwnerAccountID;
  v38 = NSFileGroupOwnerAccountID;
  v39 = sub_100013B0C(inited);
  swift_setDeallocating();
  sub_100003BE0(&qword_1000254F0, &qword_1000194E8);
  swift_arrayDestroy();
  v141 = &type metadata for Int;
  *&v139 = 493;
  sub_10000D140(&v139, v144);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v124 = v39;
  v138 = v39;
  sub_10000BE70(v144, NSFilePosixPermissions, isUniquelyReferenced_nonNull_native);
  v123 = v138;
  sub_1000029F0();
  v41 = v136;
  URL.appendingPathComponent(_:)();

  if (qword_1000251A8 != -1)
  {
    swift_once();
  }

  v120[0] = qword_100026470;
  v120[1] = qword_100026468;
  URL.init(fileURLWithPath:)();
  sub_1000029F0();
  v42 = v135;
  URL.appendingPathComponent(_:)();

  v131(v17, v132);
  LOBYTE(v138) = 0;
  URL.path.getter();
  v43 = String._bridgeToObjectiveC()();

  v44 = v128;
  v45 = [v128 fileExistsAtPath:v43 isDirectory:&v138];

  if (v45)
  {
    if (v138 == 1)
    {

      sub_1000041E8(v145, &qword_100025300, qword_100019328);

      static os_log_type_t.info.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100019340;
      v47 = URL.path.getter();
      v49 = v48;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = sub_10000C674();
      *(v46 + 32) = v47;
      *(v46 + 40) = v49;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v50 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      v51 = v136;

      v52 = v50;
      v53 = v42;
      v54 = v125;
LABEL_12:
      v55 = v131;

      v56 = v53;
      v57 = v132;
      v55(v56, v132);
      v55(v51, v57);
      v55(v137, v57);
      v55(v54, v57);
      return (v55)(v129, v57);
    }

    static os_log_type_t.fault.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100019340;
    v59 = URL.path.getter();
    v61 = v60;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 64) = sub_10000C674();
    *(v58 + 32) = v59;
    *(v58 + 40) = v61;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v62 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  v121 = static os_log_type_t.info.getter();
  v120[2] = sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v63 = swift_allocObject();
  *(v63 + 16) = v122;
  v64 = URL.path.getter();
  v66 = v65;
  *(v63 + 56) = &type metadata for String;
  v67 = sub_10000C674();
  *(v63 + 64) = v67;
  *(v63 + 32) = v64;
  *(v63 + 40) = v66;
  v52 = v128;
  v68 = URL.path.getter();
  *(v63 + 96) = &type metadata for String;
  *(v63 + 104) = v67;
  *(v63 + 72) = v68;
  *(v63 + 80) = v69;
  v70 = URL.path.getter();
  *(v63 + 136) = &type metadata for String;
  *(v63 + 144) = v67;
  v51 = v41;
  *(v63 + 112) = v70;
  *(v63 + 120) = v71;
  *&v122 = sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v72 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  URL._bridgeToObjectiveC()(v73);
  v75 = v74;
  URL._bridgeToObjectiveC()(v76);
  v78 = v77;
  *&v139 = 0;
  LODWORD(v66) = [v52 copyItemAtURL:v75 toURL:v77 error:&v139];

  if (!v66)
  {
    v87 = v139;

    sub_1000041E8(v145, &qword_100025300, qword_100019328);

    v88 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *&v139 = v88;
    swift_errorRetain();
    sub_100003BE0(&qword_1000254F8, &qword_1000194F0);
    sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    if (swift_dynamicCast())
    {

      sub_100006E94(*&v144[0]);
      swift_willThrow();
    }

    goto LABEL_23;
  }

  v79 = v139;
  v80 = String._bridgeToObjectiveC()();
  type metadata accessor for FileAttributeKey(0);
  sub_10000C6DC(&qword_100025238, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v139 = 0;
  v82 = [v52 createDirectoryAtPath:v80 withIntermediateDirectories:1 attributes:isa error:&v139];

  if (!v82)
  {
    v89 = v139;
    sub_1000041E8(v145, &qword_100025300, qword_100019328);

LABEL_22:

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_23;
  }

  v83 = v139;
  v84 = URL.path.getter();
  v85 = v133;
  sub_10000641C(v124, v84, v86);
  if (!v85)
  {

    URL._bridgeToObjectiveC()(v96);
    v98 = v97;
    URL._bridgeToObjectiveC()(v99);
    v101 = v100;
    *&v139 = 0;
    v102 = [v52 moveItemAtURL:v98 toURL:v100 error:&v139];

    if (v102)
    {
      v133 = 0;
      v103 = qword_100025188;
      v104 = v139;
      if (v103 != -1)
      {
        swift_once();
      }

      v124 = qword_100026428;
      v105 = String._bridgeToObjectiveC()();
      *&v139 = 0;
      v106 = [v52 removeItemAtPath:v105 error:&v139];

      if (v106)
      {
        v107 = v139;
      }

      else
      {
        v108 = v139;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v133 = 0;
      }

      v109 = v134;
      v110 = String._bridgeToObjectiveC()();
      URL.path.getter();
      v111 = String._bridgeToObjectiveC()();

      *&v139 = 0;
      v112 = [v52 createSymbolicLinkAtPath:v110 withDestinationPath:v111 error:&v139];

      if (v112)
      {
        v113 = v139;
        v114 = sub_1000029F0();
        v151[0] = v126;
        v151[1] = v109;
        v151[2] = v114;
        v151[3] = v115;
        v152 = 1;
        sub_10000E698(v151);

        v116 = *(v127 + 16);
        v142 = sub_10000AD10;
        v143 = 0;
        *&v139 = _NSConcreteStackBlock;
        *(&v139 + 1) = 1107296256;
        v140 = sub_10000AE10;
        v141 = &unk_100021228;
        v117 = _Block_copy(&v139);
        [v116 purge:v117];
        _Block_release(v117);
        v54 = v125;
        if (qword_100025160 != -1)
        {
          swift_once();
        }

        v118 = swift_allocObject();
        v119 = v149;
        v118[1] = v148;
        v118[2] = v119;
        v118[3] = v150[0];
        *(v118 + 58) = *(v150 + 10);
        sub_100013D70(0xD000000000000026, 0x800000010001A240, sub_10000D1A0, v118);

        v53 = v135;
        goto LABEL_12;
      }
    }

    v89 = v139;
    sub_1000041E8(v145, &qword_100025300, qword_100019328);
    goto LABEL_22;
  }

  sub_1000041E8(v145, &qword_100025300, qword_100019328);

LABEL_23:
  static os_log_type_t.error.getter();
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_100019340;
  v91 = _convertErrorToNSError(_:)();
  *(v90 + 56) = sub_1000025DC(0, &qword_100025500, NSObject_ptr);
  *(v90 + 64) = sub_100003D00(&qword_100025780, &qword_100025500, NSObject_ptr);
  *(v90 + 32) = v91;
  v92 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v93 = _convertErrorToNSError(_:)();
  v153[0] = v93;
  memset(&v153[1], 0, 24);
  v154 = 3;
  sub_10000E698(v153);

  swift_willThrow();
  v94 = v131;
  v95 = v132;
  v131(v135, v132);
  v94(v136, v95);
  v94(v137, v95);
  v94(v125, v95);
  return (v94)(v129, v95);
}

void sub_10000AD10(uint64_t a1)
{
  if (a1)
  {
    static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100019340;
    type metadata accessor for MAPurgeResult(0);
    v2 = String.init<A>(describing:)();
    v4 = v3;
    *(v1 + 56) = &type metadata for String;
    *(v1 + 64) = sub_10000C674();
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v5 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_10000AE18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10000AE70(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_1000037D8(v10);
  v6 = sub_1000029F0();
  v8 = v7;
  sub_100003CD0(v10);

  sub_100016F34(a3, v6, v8, a1, a2);
}

void sub_10000AF00()
{
  v1 = v0;
  if (sub_10000795C() == 1)
  {
    v2 = *(v0 + 16);
    if (qword_100025148 != -1)
    {
      swift_once();
    }

    v3 = qword_1000263C8;
    v4 = swift_allocObject();
    swift_weakInit();
    v18[4] = sub_10000D120;
    v18[5] = v4;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_10000F768;
    v18[3] = &unk_1000211B0;
    v5 = _Block_copy(v18);

    [v2 startDownload:v3 then:v5];
    _Block_release(v5);
    static os_log_type_t.info.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100019340;
    *(v6 + 56) = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
    *(v6 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
    *(v6 + 32) = v2;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v7 = v2;
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
    goto LABEL_7;
  }

  if ((*(v0 + 40) - 2) < 3)
  {
    static os_log_type_t.info.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100019340;
    v10 = *(v0 + 16);
    *(v9 + 56) = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
    *(v9 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
    *(v9 + 32) = v10;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v11 = v10;
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
LABEL_7:

    return;
  }

  static os_log_type_t.error.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100019340;
  v13 = *(v0 + 16);
  *(v12 + 56) = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
  *(v12 + 64) = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
  *(v12 + 32) = v13;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v14 = v13;
  v15 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v16 = *(v1 + 40);
  sub_10000C5F8();
  swift_allocError();
  *v17 = v16;
  *(v17 + 8) = 0;
  swift_willThrow();
}

uint64_t sub_10000B304(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v23);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22[1] = static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000192B0;
    *&aBlock = a1;
    type metadata accessor for MADownloadResult(0);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    v14 = sub_10000C674();
    *(v10 + 64) = v14;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + 16);

      v27 = sub_1000025DC(0, &qword_1000254B8, MAAsset_ptr);
      v28 = sub_100003D00(&qword_1000254D0, &qword_1000254B8, MAAsset_ptr);
      *&aBlock = v16;
      sub_10000D128(&aBlock, v10 + 72);
    }

    else
    {
      *(v10 + 96) = &type metadata for String;
      *(v10 + 104) = v14;
      *(v10 + 72) = 0x296C696E28;
      *(v10 + 80) = 0xE500000000000000;
    }

    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v28 = nullsub_1;
    v29 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v26 = sub_10000F608;
    v27 = &unk_1000211D8;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
  }

  else
  {
    static os_log_type_t.info.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    v28 = sub_10000B844;
    v29 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v26 = sub_10000F608;
    v27 = &unk_100021200;
    v19 = _Block_copy(&aBlock);
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
  }

  sub_10000C6DC(&qword_100025348, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003BE0(&unk_100025830, &qword_100019378);
  sub_100006204(&qword_100025350, &unk_100025830, &qword_100019378);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v24 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v23);
}

uint64_t sub_10000B85C(uint64_t (*a1)(void))
{
  if (qword_100025160 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return a1();
}

uint64_t sub_10000B8C4()
{
  v1 = *(v0 + 32);

  sub_1000041E8(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___localURL, &qword_1000254D8, &qword_1000194C8);
  v2 = *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 16);
  v3 = *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 24);
  v4 = *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 32);
  v5 = *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 40);
  v6 = *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 48);
  v7 = *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 56);
  sub_10000D390(*(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info), *(v0 + OBJC_IVAR____TtC3tzd8TZSAsset____lazy_storage___info + 8));
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v8, v9);
}

uint64_t type metadata accessor for TZSAsset()
{
  result = qword_100025398;
  if (!qword_100025398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B9C0()
{
  sub_10000BA7C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000BA7C()
{
  if (!qword_1000253A8)
  {
    sub_100006110(&qword_1000252B0, &qword_100019308);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000253A8);
    }
  }
}

uint64_t sub_10000BAE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003BE0(&unk_100025880, &unk_100019510);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_10000D140(v23, v38);
      }

      else
      {
        sub_100006040(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_10000D140(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_10000BDC4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

_OWORD *sub_10000BE70(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100012ECC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10000C018();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10000BAE0(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_100012ECC(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for FileAttributeKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_10000D1A8(v20);

    return sub_10000D140(a1, v20);
  }

  else
  {
    sub_10000BFB0(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_10000BFB0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10000D140(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id sub_10000C018()
{
  v1 = v0;
  sub_100003BE0(&unk_100025880, &unk_100019510);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100006040(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10000D140(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void sub_10000C19C(void (*a1)(void, void, uint64_t), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v5 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v6 = objc_allocWithZone(MAAssetQuery);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithType:v7];

  if (v8)
  {
    if (qword_1000251B0 != -1)
    {
      swift_once();
    }

    if (qword_100026480)
    {
      v9 = String._bridgeToObjectiveC()();
      v10 = String._bridgeToObjectiveC()();
      [v8 addKeyValuePair:v9 with:v10];

      [v8 returnTypes:2];
      static os_log_type_t.info.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100019340;
      *(v11 + 56) = sub_1000025DC(0, &qword_1000254A8, MAAssetQuery_ptr);
      *(v11 + 64) = sub_100003D00(&qword_1000254B0, &qword_1000254A8, MAAssetQuery_ptr);
      *(v11 + 32) = v8;
      v12 = v8;
      v13 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      v14 = swift_allocObject();
      v14[2] = v12;
      v14[3] = sub_10000C5F0;
      v14[4] = v4;
      v20[4] = sub_10000C650;
      v20[5] = v14;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1107296256;
      v20[2] = sub_100009320;
      v20[3] = &unk_100020FD0;
      v15 = _Block_copy(v20);
      v16 = v12;

      [v16 queryMetaData:v15];
      _Block_release(v15);

      return;
    }
  }

  static os_log_type_t.fault.getter();
  v17 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10000C5F8();
  v18 = swift_allocError();
  *v19 = 0;
  *(v19 + 8) = 3;
  swift_errorRetain();
  a1(0, 0, v18);
}

uint64_t sub_10000C5B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000C5F8()
{
  result = qword_1000254A0;
  if (!qword_1000254A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000254A0);
  }

  return result;
}

uint64_t sub_10000C65C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000C674()
{
  result = qword_100025740;
  if (!qword_100025740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025740);
  }

  return result;
}

uint64_t sub_10000C6DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C72C(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10000C800(uint64_t a1, void **a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v28 - v12;
  if (a1)
  {
    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    aBlock = a2;
    v30 = a3;
    v28[0] = v14;
    v28[1] = v15;
    v16 = type metadata accessor for Locale();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_100004194();

    v17 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_1000041E8(v13, &unk_100025840, &unk_1000194B0);

    if (v17 != 1)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = a5;

      static os_log_type_t.debug.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100019340;
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_10000C674();
      *(v26 + 32) = 0x65736C6166;
      *(v26 + 40) = 0xE500000000000000;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v27 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_10000C19C(sub_10000D0BC, v25);
    }
  }

  static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100019340;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10000C674();
  *(v18 + 32) = 1702195828;
  *(v18 + 40) = 0xE400000000000000;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();
  if (qword_100025148 != -1)
  {
    swift_once();
  }

  v22 = qword_1000263C8;
  v33 = sub_100009328;
  v34 = 0;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10000F768;
  v32 = &unk_100021138;
  v23 = _Block_copy(&aBlock);
  [v20 startCatalogDownload:v21 options:v22 then:v23];
  _Block_release(v23);

  return a4(0);
}

void sub_10000CC2C(void **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;

  static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v11 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v12 = objc_allocWithZone(MAAssetQuery);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithType:v13];

  if (v14)
  {
    if (qword_1000251B0 != -1)
    {
      swift_once();
    }

    if (qword_100026480)
    {
      v15 = String._bridgeToObjectiveC()();
      v16 = String._bridgeToObjectiveC()();
      [v14 addKeyValuePair:v15 with:v16];

      [v14 returnTypes:2];
      static os_log_type_t.info.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100019340;
      *(v17 + 56) = sub_1000025DC(0, &qword_1000254A8, MAAssetQuery_ptr);
      *(v17 + 64) = sub_100003D00(&qword_1000254B0, &qword_1000254A8, MAAssetQuery_ptr);
      *(v17 + 32) = v14;
      v18 = v14;
      v19 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      v20 = swift_allocObject();
      v20[2] = v18;
      v20[3] = sub_10000D070;
      v20[4] = v10;
      v24[4] = sub_10000E670;
      v24[5] = v20;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 1107296256;
      v24[2] = sub_100009320;
      v24[3] = &unk_100021110;
      v21 = _Block_copy(v24);
      v22 = v18;

      [v22 queryMetaData:v21];
      _Block_release(v21);

      return;
    }
  }

  static os_log_type_t.fault.getter();
  v23 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10000C800(0, a1, a2, a4, a5);
}

uint64_t sub_10000D030()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D07C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a3);
}

uint64_t sub_10000D0E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D128(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_10000D140(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000D150()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return _swift_deallocObject(v0, 74, 7);
}

uint64_t sub_10000D1A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_10000D1F4()
{
  result = qword_100025528;
  if (!qword_100025528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025528);
  }

  return result;
}

uint64_t sub_10000D248(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BE0(&qword_1000252B0, &qword_100019308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D2B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003BE0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000D320(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BE0(&qword_1000254D8, &qword_1000194C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D390(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_10000D3A0(a1, a2);
  }

  return a1;
}

uint64_t sub_10000D3A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_10000D404()
{
  v0 = type metadata accessor for CocoaError.Code();
  v121 = *(v0 - 1);
  v1 = *(v121 + 64);
  __chkstk_darwin(v0);
  v3 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v116 = *(v4 - 1);
  v5 = *(v116 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v111 = &v105 - v10;
  __chkstk_darwin(v9);
  v119 = &v105 - v11;
  v12 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v105 - v14;
  static os_log_type_t.info.getter();
  v112 = 0;
  v16 = sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v17 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_1000037D8(&v126);
  v18 = v127;
  v19 = (v127 >> 56) & 0xF;
  v122 = v126;
  if ((v127 & 0x2000000000000000) == 0)
  {
    v19 = v126 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    sub_100003CD0(&v126);
    static os_log_type_t.fault.getter();
    v52 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  v108 = v8;
  static os_log_type_t.debug.getter();
  v114 = sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v20 = swift_allocObject();
  v113 = xmmword_100019340;
  *(v20 + 16) = xmmword_100019340;
  v21 = sub_1000029F0();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_10000C674();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v115 = v16;
  v24 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v117 = objc_opt_self();
  v25 = [v117 defaultManager];
  if (qword_1000251A8 != -1)
  {
    goto LABEL_77;
  }

  while (2)
  {
    v110 = qword_100026468;
    v109 = qword_100026470;
    v26 = String._bridgeToObjectiveC()();
    v131 = 0;
    v27 = [v25 contentsOfDirectoryAtPath:v26 error:&v131];

    v25 = v131;
    if (!v27)
    {
      v53 = v131;
      sub_100003CD0(&v126);
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      static CocoaError.fileReadNoSuchFile.getter();
      sub_10000C6DC(&qword_100025530, &type metadata accessor for CocoaError.Code);
      v54 = static _ErrorCodeProtocol.~= infix(_:_:)();

      (*(v121 + 8))(v3, v0);
      if (v54)
      {

        v112 = 0;
        v118 = _swiftEmptyArrayStorage;
        goto LABEL_53;
      }

      goto LABEL_74;
    }

    v107 = v4;
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v25;

    v30 = *(v28 + 16);
    if (!v30)
    {
      v118 = _swiftEmptyArrayStorage;
      goto LABEL_52;
    }

    v31 = 0;
    if (v122)
    {
      v32 = 0;
    }

    else
    {
      v32 = v18 == 0xE000000000000000;
    }

    v33 = v32;
    LODWORD(v121) = v33;
    v34 = v28 + 40;
    v120 = v30;
    v105 = (v30 - 1);
    v118 = _swiftEmptyArrayStorage;
    v106 = v28 + 40;
    do
    {
      v4 = (v34 + 16 * v31);
      v0 = v31;
      while (1)
      {
        if (v0 >= *(v28 + 16))
        {
          __break(1u);
          goto LABEL_76;
        }

        v38 = *(v4 - 1);
        v3 = *v4;
        v40 = v128;
        v39 = v129;
        if ((v130 & 1) == 0)
        {
          break;
        }

        if ((v121 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v40 && v39 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {

          v41 = 0;
          v42 = 0xE000000000000000;
        }

        else if (!v40 && v39 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v41 = v122;
          v42 = v18;
        }

        else
        {
          v131 = v122;
          v132 = v18;

          v45._countAndFlagsBits = 46;
          v45._object = 0xE100000000000000;
          String.append(_:)(v45);
          v46._countAndFlagsBits = v40;
          v46._object = v39;
          String.append(_:)(v46);
          v41 = v131;
          v42 = v132;
        }

        v131 = v38;
        v132 = v3;
        v123 = v41;
        v124 = v42;
        v47 = type metadata accessor for Locale();
        (*(*(v47 - 8) + 56))(v15, 1, 1, v47);
        v103 = sub_100004194();
        v104 = v103;
        v25 = StringProtocol.compare<A>(_:options:range:locale:)();
        sub_1000041E8(v15, &unk_100025840, &unk_1000194B0);

        if (v25 != 1)
        {
          goto LABEL_42;
        }

LABEL_17:
        v0 = (v0 + 1);

        v4 += 2;
        if (v120 == v0)
        {
          goto LABEL_52;
        }
      }

      if ((v121 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v40 && v39 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {

        v35 = 0;
        v36 = 0xE000000000000000;
      }

      else if (!v40 && v39 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v35 = v122;
        v36 = v18;
      }

      else
      {
        v131 = v122;
        v132 = v18;

        v43._countAndFlagsBits = 46;
        v43._object = 0xE100000000000000;
        String.append(_:)(v43);
        v44._countAndFlagsBits = v40;
        v44._object = v39;
        String.append(_:)(v44);
        v35 = v131;
        v36 = v132;
      }

      v131 = v38;
      v132 = v3;
      v123 = v35;
      v124 = v36;
      v37 = type metadata accessor for Locale();
      (*(*(v37 - 8) + 56))(v15, 1, 1, v37);
      v103 = sub_100004194();
      v104 = v103;
      v25 = StringProtocol.compare<A>(_:options:range:locale:)();
      sub_1000041E8(v15, &unk_100025840, &unk_1000194B0);

      if (v25 != -1)
      {
        goto LABEL_17;
      }

LABEL_42:
      v25 = v118;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000536C(0, *(v25 + 2) + 1, 1);
        v25 = v125;
      }

      v50 = *(v25 + 2);
      v49 = *(v25 + 3);
      if (v50 >= v49 >> 1)
      {
        sub_10000536C((v49 > 1), v50 + 1, 1);
        v25 = v125;
      }

      v31 = v0 + 1;
      *(v25 + 2) = v50 + 1;
      v118 = v25;
      v51 = (v25 + 16 * v50);
      v51[4] = v38;
      v51[5] = v3;
      v34 = v106;
    }

    while (v105 != v0);
LABEL_52:
    sub_100003CD0(&v126);

    v4 = v107;
LABEL_53:
    v0 = static os_log_type_t.debug.getter();
    v55 = swift_allocObject();
    *(v55 + 16) = v113;
    v56 = v118;
    v57 = *(v118 + 2);
    *(v55 + 56) = &type metadata for Int;
    *(v55 + 64) = &protocol witness table for Int;
    *(v55 + 32) = v57;
    v25 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    URL.init(fileURLWithPath:)();
    v58 = v56;
    v18 = v56[2];
    if (v18)
    {
      v15 = 0;
      v3 = (v116 + 8);
      v59 = v58 + 5;
      v60 = v111;
      while (v15 < v58[2])
      {
        v62 = *(v59 - 1);
        v61 = *v59;

        URL.appendingPathComponent(_:)();

        v63 = [v117 defaultManager];
        URL._bridgeToObjectiveC()(v64);
        v66 = v65;
        v131 = 0;
        v67 = [v63 removeItemAtURL:v65 error:&v131];

        v0 = v131;
        if (!v67)
        {
          v86 = v131;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v87 = *v3;
          (*v3)(v60, v4);
          v87(v119, v4);
          goto LABEL_74;
        }

        ++v15;
        v25 = *v3;
        v68 = v131;
        v25(v60, v4);
        v59 += 2;
        v58 = v118;
        if (v18 == v15)
        {
          goto LABEL_58;
        }
      }

LABEL_76:
      __break(1u);
LABEL_77:
      swift_once();
      continue;
    }

    break;
  }

LABEL_58:
  v69 = [v117 defaultManager];
  if (qword_100025188 != -1)
  {
    swift_once();
  }

  v70 = String._bridgeToObjectiveC()();
  v131 = 0;
  v71 = [v69 destinationOfSymbolicLinkAtPath:v70 error:&v131];

  v72 = v131;
  v73 = v108;
  if (v71)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v72;

    URL.init(fileURLWithPath:)();

    v75 = URL.lastPathComponent.getter();
    v77 = v76;
    v78 = v73;
    v79 = *(v116 + 8);
    v80 = v4;
    v81 = v79(v78, v4);
    v131 = v75;
    v132 = v77;
    __chkstk_darwin(v81);
    v103 = &v131;
    LOBYTE(v75) = sub_10000BDC4(sub_10000E4A4, (&v105 - 4), v118);

    if (v75)
    {
      v82 = [v117 defaultManager];
      v83 = String._bridgeToObjectiveC()();
      v131 = 0;
      v84 = [v82 removeItemAtPath:v83 error:&v131];

      if (!v84)
      {
        v98 = v131;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v79(v119, v4);
        goto LABEL_74;
      }

      v85 = v131;
    }
  }

  else
  {
    v80 = v4;
    v88 = v131;

    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v89 = [v117 defaultManager];
  if (qword_100025190 != -1)
  {
    swift_once();
  }

  v90 = String._bridgeToObjectiveC()();
  v91 = [v89 fileExistsAtPath:v90];

  if (!v91)
  {
    (*(v116 + 8))(v119, v80);
    return;
  }

  v92 = [v117 defaultManager];
  v93 = String._bridgeToObjectiveC()();
  v131 = 0;
  v94 = [v92 removeItemAtPath:v93 error:&v131];

  if (v94)
  {
    v95 = *(v116 + 8);
    v96 = v131;
    v95(v119, v80);
    return;
  }

  v97 = v131;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v116 + 8))(v119, v80);
LABEL_74:
  static os_log_type_t.error.getter();
  v99 = swift_allocObject();
  *(v99 + 16) = v113;
  v100 = _convertErrorToNSError(_:)();
  *(v99 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
  *(v99 + 64) = sub_100003D00(&qword_1000257A0, &qword_1000252D0, NSError_ptr);
  *(v99 + 32) = v100;
  v101 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v102 = _convertErrorToNSError(_:)();
  v131 = v102;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 2;
  sub_10000E698(&v131);
}

uint64_t sub_10000E4A4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t getEnumTagSinglePayload for TemporaryDirectoryError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TemporaryDirectoryError(_WORD *result, int a2, int a3)
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

unint64_t sub_10000E5F0()
{
  result = qword_100025538;
  if (!qword_100025538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025538);
  }

  return result;
}

void sub_10000E698(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 32);
  if (v2 <= 1)
  {
    v4 = a1[1];
    v3 = a1[2];
    v5 = a1[3];
    sub_100003BE0(&qword_100025540, &qword_100019640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000192B0;
    *(inited + 32) = 0x6973726556646C6FLL;
    *(inited + 40) = 0xEA00000000006E6FLL;
    *(inited + 48) = String._bridgeToObjectiveC()();
    *(inited + 56) = 0x697372655677656ELL;
    *(inited + 64) = 0xEA00000000006E6FLL;
    *(inited + 72) = String._bridgeToObjectiveC()();
    sub_100013408(inited);
    swift_setDeallocating();
    sub_100003BE0(&qword_100025548, &qword_100019648);
    swift_arrayDestroy();
    v34 = String._bridgeToObjectiveC()();
    sub_1000025DC(0, &qword_100025500, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();

    return;
  }

  if (v2 != 3)
  {
    if (v2 != 2)
    {
      return;
    }

    v6 = *a1;
    v7 = sub_10000EE10();
    v8 = v7;
    if (v7 >> 62)
    {
      goto LABEL_32;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (v9 >= 1)
      {
        sub_100003BE0(&qword_100025550, &qword_100019650);
        v10 = 0;
        while (1)
        {
          v11 = (v8 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v8 + 8 * v10 + 32);
          v12 = v11;
          v61 = 0x726F727265;
          v62 = 0xE500000000000000;
          v13 = [v11 domain];
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v65 = v14;
          v66 = v16;
          v17._countAndFlagsBits = 58;
          v17._object = 0xE100000000000000;
          String.append(_:)(v17);
          v64 = [v12 code];
          v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v18);

          v19 = String._bridgeToObjectiveC()();

          v63 = v19;
          v20 = static _DictionaryStorage.allocate(capacity:)();

          v21 = v61;
          v22 = v62;
          v23 = v63;

          v24 = v23;
          v25 = sub_100012E54(v21, v22);
          if (v26)
          {
            break;
          }

          v20[(v25 >> 6) + 8] |= 1 << v25;
          v27 = (v20[6] + 16 * v25);
          *v27 = v21;
          v27[1] = v22;
          *(v20[7] + 8 * v25) = v24;
          v28 = v20[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_30;
          }

          ++v10;
          v20[2] = v30;

          sub_10000F45C(&v61);
          v31 = String._bridgeToObjectiveC()();
          sub_1000025DC(0, &qword_100025500, NSObject_ptr);
          v32 = Dictionary._bridgeToObjectiveC()().super.isa;

          AnalyticsSendEvent();

          if (v9 == v10)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v9 = _CocoaArrayWrapper.endIndex.getter();
        if (!v9)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v36 = *a1;
  v37 = sub_10000EE10();
  v8 = v37;
  if (v37 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
    if (v38)
    {
      goto LABEL_18;
    }

LABEL_35:

    return;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
    goto LABEL_35;
  }

LABEL_18:
  if (v38 < 1)
  {
LABEL_39:
    __break(1u);
    return;
  }

  sub_100003BE0(&qword_100025550, &qword_100019650);
  v39 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v40 = *(v8 + 8 * v39 + 32);
    }

    v41 = v40;
    v67 = 0x726F727265;
    v68 = 0xE500000000000000;
    v42 = [v40 domain];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v65 = v43;
    v66 = v45;
    v46._countAndFlagsBits = 58;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v64 = [v41 code];
    v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v47);

    v48 = String._bridgeToObjectiveC()();

    v69 = v48;
    v49 = static _DictionaryStorage.allocate(capacity:)();

    v50 = v67;
    v51 = v68;
    v52 = v69;

    v53 = v52;
    v54 = sub_100012E54(v50, v51);
    if (v55)
    {
      goto LABEL_29;
    }

    v49[(v54 >> 6) + 8] |= 1 << v54;
    v56 = (v49[6] + 16 * v54);
    *v56 = v50;
    v56[1] = v51;
    *(v49[7] + 8 * v54) = v53;
    v57 = v49[2];
    v29 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v29)
    {
      goto LABEL_31;
    }

    ++v39;
    v49[2] = v58;

    sub_10000F45C(&v67);
    v59 = String._bridgeToObjectiveC()();
    sub_1000025DC(0, &qword_100025500, NSObject_ptr);
    v60 = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }

  while (v38 != v39);
LABEL_26:
}

uint64_t sub_10000EE10()
{
  v1 = v0;
  v2 = [v0 userInfo];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_6;
  }

  v6 = sub_100012E54(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_100006040(*(v3 + 56) + 32 * v6, v15);

  sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_100003BE0(&qword_100025558, &qword_100019658);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100019630;
    *(v11 + 32) = v1;
    v12 = v1;
    return v11;
  }

  sub_100003BE0(&qword_100025558, &qword_100019658);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100019630;
  *(v9 + 32) = v1;
  v10 = sub_10000EE10(v1);
  v15[0] = v9;
  sub_10000EFC0(v10);

  return v15[0];
}

uint64_t sub_10000EFC0(unint64_t a1)
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
  sub_10000F1A4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10000F244(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t sub_10000F0B0(uint64_t result)
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

  result = sub_100015478(result, v11, 1, v3);
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

uint64_t sub_10000F1A4(uint64_t a1)
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

uint64_t sub_10000F244(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000F4C4();
          for (i = 0; i != v6; ++i)
          {
            sub_100003BE0(&qword_100025560, &qword_100019660);
            v9 = sub_10000F3D4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_10000F3D4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10000F454;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F45C(uint64_t a1)
{
  v2 = sub_100003BE0(&qword_100025548, &qword_100019648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000F4C4()
{
  result = qword_100025568;
  if (!qword_100025568)
  {
    sub_100006110(&qword_100025560, &qword_100019660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025568);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TZError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TZError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TZError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10000F5C8(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_10000F5E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10000F608(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000F64C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000142A8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000142A8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000131E4(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1000142A8(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_10000F768(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_10000F7BC()
{
  result = [objc_allocWithZone(type metadata accessor for Daemon()) init];
  qword_1000263E0 = result;
  return result;
}

void sub_10000F7EC()
{
  v1 = objc_allocWithZone(IDSService);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithService:v2];

  if (v3)
  {
    *&v0[OBJC_IVAR____TtC3tzd6Daemon_companionService] = v3;
    v4 = objc_allocWithZone(UNUserNotificationCenter);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithBundleIdentifier:v5];

    *&v0[OBJC_IVAR____TtC3tzd6Daemon_notificationCenter] = v6;
    v7 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:@"com.apple.timezoneupdates.tzd.server"];
    *&v0[OBJC_IVAR____TtC3tzd6Daemon_listener] = v7;
    *&v0[OBJC_IVAR____TtC3tzd6Daemon_assetDetectedType] = 0;
    v18.receiver = v0;
    v18.super_class = type metadata accessor for Daemon();
    v8 = objc_msgSendSuper2(&v18, "init");
    v9 = *&v8[OBJC_IVAR____TtC3tzd6Daemon_listener];
    v10 = v8;
    [v9 setDelegate:v10];
    v11 = OBJC_IVAR____TtC3tzd6Daemon_notificationCenter;
    [*&v10[OBJC_IVAR____TtC3tzd6Daemon_notificationCenter] setDelegate:v10];
    [*&v10[v11] setWantsNotificationResponsesDelivered];
    static os_log_type_t.debug.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100019340;
    if (qword_100025150 != -1)
    {
      swift_once();
    }

    v13 = byte_1000263D0;
    v14 = sub_10000C674();
    v15 = 29545;
    if (!v13)
    {
      v15 = 0x746F6E207369;
    }

    v16 = 0xE600000000000000;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v14;
    if (v13)
    {
      v16 = 0xE200000000000000;
    }

    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10000FAA0(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v32 = a2;
    v33 = v10;
    v34 = v9;
    v35 = v5;
    v14 = String.init(cString:)();
    v16 = v15;
    static os_log_type_t.debug.getter();
    v31[1] = sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000192B0;
    type = xpc_get_type(a1);
    *(v17 + 56) = &type metadata for OpaquePointer;
    *(v17 + 64) = &protocol witness table for OpaquePointer;
    *(v17 + 32) = type;
    *(v17 + 96) = &type metadata for String;
    v19 = sub_10000C674();
    *(v17 + 104) = v19;
    *(v17 + 72) = v14;
    *(v17 + 80) = v16;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

    v20 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    if (v14 == 0xD00000000000003FLL && 0x800000010001AE30 == v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
      v21 = static OS_dispatch_queue.main.getter();
      v22 = swift_allocObject();
      v23 = v32;
      *(v22 + 16) = v32;
      v40 = sub_100015074;
      v41 = v22;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v24 = &unk_1000216E0;
LABEL_6:
      v38 = sub_10000F608;
      v39 = v24;
      v25 = _Block_copy(&aBlock);
      v26 = v23;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000061AC();
      sub_100003BE0(&unk_100025830, &qword_100019378);
      sub_100014338();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v25);

      (*(v35 + 8))(v8, v4);
      (*(v33 + 8))(v13, v34);
      return;
    }

    if (v14 == 0xD00000000000003BLL && 0x800000010001AE70 == v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
      v21 = static OS_dispatch_queue.main.getter();
      v28 = swift_allocObject();
      v23 = v32;
      *(v28 + 16) = v32;
      v40 = sub_100015050;
      v41 = v28;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v24 = &unk_100021690;
      goto LABEL_6;
    }

    static os_log_type_t.fault.getter();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100019340;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = v19;
    *(v29 + 32) = v14;
    *(v29 + 40) = v16;
    v35 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    v30 = v35;
  }

  else
  {
    static os_log_type_t.fault.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    *(swift_allocObject() + 16) = xmmword_100019340;
    aBlock = a1;
    swift_unknownObjectRetain();
    sub_100003BE0(&unk_1000258F0, &qword_100019700);
    sub_100003BE0(&qword_100025508, &qword_1000194F8);
    swift_dynamicCast();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v27 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_1000100F4(char a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v2;
  swift_unknownObjectRetain();
  v6 = v2;
  static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100019340;
  v8 = sub_10000C674();
  v9 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v9 = 0x65736C6166;
  }

  v10 = 0xE500000000000000;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = v8;
  if (a1)
  {
    v10 = 0xE400000000000000;
  }

  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v11 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  if (a1)
  {
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    if (qword_100025148 != -1)
    {
      swift_once();
    }

    v14 = qword_1000263C8;
    v18[4] = sub_100009328;
    v18[5] = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_10000F768;
    v18[3] = &unk_100021460;
    v15 = _Block_copy(v18);
    [v12 startCatalogDownload:v13 options:v14 then:v15];
    _Block_release(v15);

    static os_log_type_t.debug.getter();
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    sub_10000C19C(sub_1000150F0, v5);
  }
}

void sub_1000103AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100019340;
    v6 = _convertErrorToNSError(_:)();
    *(v5 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    *(v5 + 64) = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr);
    *(v5 + 32) = v6;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    if (!a2)
    {
      return;
    }
  }

  else
  {
    static os_log_type_t.debug.getter();
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    if (!a2)
    {
      return;
    }
  }

  sub_100012694(a1, a2);
}

uint64_t sub_100010574()
{
  static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v1 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v2 = os_transaction_create();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = v0;
  swift_unknownObjectRetain();
  static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100019340;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10000C674();
  *(v5 + 32) = 0x65736C6166;
  *(v5 + 40) = 0xE500000000000000;
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10000C19C(sub_1000150F0, v3);
  swift_unknownObjectRelease();
}

uint64_t sub_10001070C()
{
  static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v1 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v2 = os_transaction_create();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = v0;
  swift_unknownObjectRetain();
  static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100019340;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10000C674();
  *(v5 + 32) = 0x65736C6166;
  *(v5 + 40) = 0xE500000000000000;
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_10000C19C(sub_1000146C0, v3);
  swift_unknownObjectRelease();
}

uint64_t sub_1000108A4(void (*a1)(uint64_t (*)(), uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  swift_unknownObjectRetain();
  a1(nullsub_1, v5);
}

uint64_t sub_10001098C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v21 = *(v9 - 8);
  v22 = v9;
  v10 = *(v21 + 64);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v13 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v14 = os_transaction_create();
  sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = v20;
  v16[5] = v14;
  aBlock[4] = sub_100014304;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F608;
  aBlock[3] = &unk_1000213C0;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  sub_100014328(a1);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000061AC();
  sub_100003BE0(&unk_100025830, &qword_100019378);
  sub_100014338();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  swift_unknownObjectRelease();

  (*(v23 + 8))(v8, v5);
  return (*(v21 + 8))(v12, v22);
}

uint64_t sub_100010CB8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  result = sub_100014504();
  if (a2)
  {
    a2(result & 1);
    return sub_1000100F4(1, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

xpc_activity_state_t sub_100010E24(_xpc_activity_s *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    static os_log_type_t.info.getter();
    v22 = v5;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    v16 = os_transaction_create();
    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = v16;
    aBlock[4] = sub_100015024;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F608;
    aBlock[3] = &unk_100021640;
    v19 = _Block_copy(aBlock);
    v20 = a2;
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000061AC();
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100014338();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    swift_unknownObjectRelease();

    (*(v22 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

xpc_activity_state_t sub_100011150(_xpc_activity_s *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    static os_log_type_t.info.getter();
    v19 = v3;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    v14 = os_transaction_create();
    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    aBlock[4] = sub_100014FE0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F608;
    aBlock[3] = &unk_1000215F0;
    v17 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000061AC();
    sub_100003BE0(&unk_100025830, &qword_100019378);
    sub_100014338();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    swift_unknownObjectRelease();

    (*(v19 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

void sub_100011470()
{
  v1 = v0;
  sub_1000025DC(0, &qword_100025908, &off_1000206E0);
  v2 = [swift_getObjCClassFromMetadata() options];
  if (v2)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v14 = 0x496567617373654DLL;
    *(&v14 + 1) = 0xE900000000000044;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16))
    {
      v5 = sub_100012E10(v13);
      if (v6)
      {
        sub_100006040(*(v4 + 56) + 32 * v5, v12);

        sub_10000C7AC(v13);
        sub_10000D140(v12, &v14);
        swift_dynamicCast();
        *(v1 + OBJC_IVAR____TtC3tzd6Daemon_assetDetectedType) = v11;
        v7 = OBJC_IVAR____TtC3tzd6Daemon_companionService;
        [*(v1 + OBJC_IVAR____TtC3tzd6Daemon_companionService) setProtobufAction:"handleAssetDetectedMsg:" forIncomingRequestsOfType:?];
        v8 = *(v1 + v7);
        sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
        v9 = v8;
        v10 = static OS_dispatch_queue.main.getter();
        [v9 addDelegate:v1 queue:v10];

        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100011624(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  sub_100003BE0(&qword_100025750, &qword_100019388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100019340;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  v8 = sub_10001404C(inited);
  swift_setDeallocating();
  sub_1000141B4(inited + 32);
  v9 = OBJC_IVAR____TtC3tzd6Daemon_companionService;
  v10 = [*(v4 + OBJC_IVAR____TtC3tzd6Daemon_companionService) accounts];
  if (!v10)
  {
    __break(1u);
  }

  v11 = v10;
  sub_1000025DC(0, &qword_100025758, IDSAccount_ptr);
  sub_100014208(&qword_100025760, &qword_100025758, IDSAccount_ptr);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_10000F64C(v12);

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = objc_allocWithZone(IDSProtobuf);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithProtobufData:isa type:a3 isResponse:0];

  if (!v16)
  {

LABEL_8:

    return;
  }

  v17 = *(v4 + v9);
  v18 = v16;
  v19 = v13;
  sub_100011CF4(v8);
  v20 = Set._bridgeToObjectiveC()().super.isa;

  sub_100003BE0(&qword_100025768, &qword_1000196C8);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_100019340;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42[1] = v22;
  AnyHashable.init<A>(_:)();
  *(v21 + 96) = &type metadata for Double;
  *(v21 + 72) = 0x410FA40000000000;
  sub_100013C34(v21);
  swift_setDeallocating();
  sub_1000041E8(v21 + 32, &unk_100025770, &qword_1000196D0);
  v23 = Dictionary._bridgeToObjectiveC()().super.isa;

  v41 = 0;
  v42[0] = 0;
  v24 = [v17 sendProtobuf:v18 fromAccount:v19 toDestinations:v20 priority:a4 options:v23 identifier:v42 error:&v41];

  v40 = v18;
  v25 = v42[0];
  if (v24)
  {
    v26 = v41;
    v27 = v25;
    static os_log_type_t.debug.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000192B0;
    v29 = Data._bridgeToObjectiveC()().super.isa;
    *(v28 + 56) = sub_1000025DC(0, &qword_100025500, NSObject_ptr);
    *(v28 + 64) = sub_100014208(&qword_100025780, &qword_100025500, NSObject_ptr);
    *(v28 + 32) = v29;
    if (v27)
    {
      v30 = v27;

      *(v28 + 96) = sub_1000025DC(0, &qword_100025510, NSString_ptr);
      *(v28 + 104) = sub_100014208(&unk_100025790, &qword_100025510, NSString_ptr);
      *(v28 + 72) = v30;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v31 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v32 = v41;
  v33 = v25;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  static os_log_type_t.info.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000192A0;
  v35 = Data._bridgeToObjectiveC()().super.isa;
  *(v34 + 56) = sub_1000025DC(0, &qword_100025500, NSObject_ptr);
  *(v34 + 64) = sub_100014208(&qword_100025780, &qword_100025500, NSObject_ptr);
  *(v34 + 32) = v35;
  if (!v33)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v36 = v33;

  *(v34 + 96) = sub_1000025DC(0, &qword_100025510, NSString_ptr);
  *(v34 + 104) = sub_100014208(&unk_100025790, &qword_100025510, NSString_ptr);
  *(v34 + 72) = v36;
  v37 = _convertErrorToNSError(_:)();
  *(v34 + 136) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
  *(v34 + 144) = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr);
  *(v34 + 112) = v37;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v38 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_100011CF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003BE0(&qword_1000257B0, &qword_1000196E0);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v21 = *v13;
    v22 = v13[1];

    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v7[8 * (v15 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v16];
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*&v7[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v5 &= v5 - 1;
    v11 = v2[6] + 40 * v10;
    *(v11 + 32) = v25;
    *v11 = v23;
    *(v11 + 16) = v24;
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1000120D4(void *a1)
{
  v2 = os_transaction_create();
  if (a1 && (v3 = [a1 assetVersion]) != 0)
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

  v22 = type metadata accessor for TZSAsset();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  swift_unknownObjectRetain();
  static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100019340;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_10000C674();
  *(v9 + 64) = v10;
  v11 = 0x29656E6F6E28;
  if (v7)
  {
    v11 = v5;
  }

  v12 = 0xE600000000000000;
  if (v7)
  {
    v12 = v7;
  }

  *(v9 + 32) = v11;
  *(v9 + 40) = v12;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

  v13 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  if (v7)
  {

    sub_10000CC2C(v5, v7, v22, sub_100014F08, v8);
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    static os_log_type_t.debug.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100019340;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = v10;
    *(v14 + 32) = 1702195828;
    *(v14 + 40) = 0xE400000000000000;
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    v16 = objc_opt_self();
    v17 = String._bridgeToObjectiveC()();
    if (qword_100025148 != -1)
    {
      swift_once();
    }

    v18 = qword_1000263C8;
    aBlock[4] = sub_100009328;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F768;
    aBlock[3] = &unk_100021500;
    v19 = _Block_copy(aBlock);
    [v16 startCatalogDownload:v17 options:v18 then:v19];
    _Block_release(v19);

    static os_log_type_t.info.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100019340;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = v10;
    *(v20 + 32) = 1701736302;
    *(v20 + 40) = 0xE400000000000000;
    v21 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
    swift_unknownObjectRelease();
  }
}

void sub_1000124D4(uint64_t a1)
{
  static os_log_type_t.info.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = xmmword_100019340;
  if (a1)
  {
    v4 = _convertErrorToNSError(_:)();
    v7 = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    v8 = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr);
    *&v6 = v4;
    sub_10000D128(&v6, v3 + 32);
  }

  else
  {
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_10000C674();
    *(v3 + 32) = 1701736302;
    *(v3 + 40) = 0xE400000000000000;
  }

  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v5 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();
}

void sub_100012694(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v10 = [objc_allocWithZone(TZDAssetDetectedMsg) init];
    if (v10)
    {
      v4 = String._bridgeToObjectiveC()();
      [v10 setAssetVersion:v4];

      v5 = [v10 data];
      if (v5)
      {
        v6 = v5;
        v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        sub_100011624(v7, v9, *(v2 + OBJC_IVAR____TtC3tzd6Daemon_assetDetectedType), 300);
        sub_100012B40(v7, v9);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_1000127AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Daemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100012860(void *a1, void (**a2)(void))
{
  static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100019340;
  v5 = [a1 actionIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10000C674();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v10 = [a1 actionIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0xD00000000000004ALL && 0x800000010001A890 == v13)
  {

LABEL_5:
    v15 = objc_allocWithZone(FBSShutdownOptions);
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 initWithReason:v16];

    [v17 setRebootType:1];
    v18 = [objc_opt_self() sharedService];
    [v18 shutdownWithOptions:v17];

    goto LABEL_6;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_5;
  }

LABEL_6:
  a2[2](a2);
  _Block_release(a2);
}

uint64_t sub_100012B40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100012B94(uint64_t a1)
{
  static os_log_type_t.debug.getter();
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v2 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100019340;
    v4 = _convertErrorToNSError(_:)();
    *(v3 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    *(v3 + 64) = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr);
    *(v3 + 32) = v4;
    v5 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

id sub_100012D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100012E10(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100012F60(a1, v4);
}

unint64_t sub_100012E54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100013028(a1, a2, v6);
}

unint64_t sub_100012ECC(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000130E0(a1, v4);
}

unint64_t sub_100012F60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001424C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000C7AC(v8);
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

unint64_t sub_100013028(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000130E0(uint64_t a1, uint64_t a2)
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

void sub_1000131E4(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000025DC(0, &qword_100025758, IDSAccount_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000025DC(0, &qword_100025758, IDSAccount_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

unint64_t sub_100013408(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BE0(&qword_100025550, &qword_100019650);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100012E54(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10001350C()
{
  v0 = objc_opt_self();
  v1 = &off_100024000;
  v2 = [v0 defaultManager];
  if (qword_100025198 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = String.init(contentsOfFile:)();
    v7 = v6;
    v8 = objc_allocWithZone(NSRegularExpression);
    v9 = sub_100012D34(0xD000000000000041, 0x800000010001AF20, 0);

    v10 = String.UTF16View.count.getter();

    v11 = String._bridgeToObjectiveC()();
    v36 = v9;
    v12 = [v9 matchesInString:v11 options:0 range:{0, v10}];

    sub_1000025DC(0, &qword_100025900, NSTextCheckingResult_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() != 1)
      {
        goto LABEL_10;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_10;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;
    [v14 rangeAtIndex:1];

    Range<>.init(_:in:)();
    v1 = &off_100024000;
    if ((v16 & 1) == 0)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v13 + 32);
      }

      v28 = v27;

      [v28 rangeAtIndex:2];

      Range<>.init(_:in:)();
      v1 = &off_100024000;
      if ((v29 & 1) == 0)
      {
        String.subscript.getter();
        v35 = static String._fromSubstring(_:)();
        v31 = v30;

        String.subscript.getter();

        v32 = static String._fromSubstring(_:)();
        v34 = v33;

        v38[0] = v35;
        v38[1] = v31;
        v38[2] = v32;
        v38[3] = v34;
        v39 = 0;
        sub_10000E698(v38);

        v1 = &off_100024000;

LABEL_12:
        v19 = [v0 v1[300]];
        v20 = String._bridgeToObjectiveC()();
        v37[0] = 0;
        v21 = [v19 removeItemAtPath:v20 error:v37];

        if (v21)
        {
          v22 = v37[0];
        }

        else
        {
          v23 = v37[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          static os_log_type_t.error.getter();
          sub_100003BE0(&qword_1000252B8, &qword_100019310);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_100019340;
          v25 = _convertErrorToNSError(_:)();
          *(v24 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
          *(v24 + 64) = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr);
          *(v24 + 32) = v25;
          sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
          v26 = static OS_os_log.default.getter();
          os_log(_:dso:log:type:_:)();
        }

        return;
      }

LABEL_11:
      static os_log_type_t.fault.getter();
      sub_100003BE0(&qword_1000252B8, &qword_100019310);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100019340;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = sub_10000C674();
      *(v17 + 32) = v5;
      *(v17 + 40) = v7;
      sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
      v18 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      goto LABEL_12;
    }

LABEL_10:

    goto LABEL_11;
  }
}

unint64_t sub_100013B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BE0(&unk_100025880, &unk_100019510);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D2B8(v4, &v11, &qword_1000254F0, &qword_1000194E8);
      v5 = v11;
      result = sub_100012ECC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000D140(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100013C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BE0(&qword_1000257A8, &qword_1000196D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D2B8(v4, v13, &unk_100025770, &qword_1000196D0);
      result = sub_100012E10(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000D140(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100013D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.utf8CString.getter();
  v15 = os_transaction_create();

  sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v15;
  aBlock[4] = sub_100014FD4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F608;
  aBlock[3] = &unk_100021578;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000061AC();
  sub_100003BE0(&unk_100025830, &qword_100019378);
  sub_100014338();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v21);
}

Swift::Int sub_10001404C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BE0(&qword_1000257B8, qword_1000196E8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100014208(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000025DC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000142A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000142B4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014310(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014328(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100014338()
{
  result = qword_100025350;
  if (!qword_100025350)
  {
    sub_100006110(&unk_100025830, &qword_100019378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025350);
  }

  return result;
}

BOOL sub_10001439C(void *a1)
{
  v3 = [a1 valueForEntitlement:@"com.apple.private.timezoneupdates.tzd.access"];
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000041E8(v8, &qword_1000252D8, &qword_100019318);
    [a1 setExportedObject:v1];
    v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___TZUpdateProtocol];
    [a1 setExportedInterface:v4];

    sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
    v5 = static OS_dispatch_queue.main.getter();
    [a1 _setQueue:v5];

    v6 = &selRef_resume;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_1000041E8(v8, &qword_1000252D8, &qword_100019318);
    v6 = &selRef_invalidate;
  }

  [a1 *v6];
  return v3 != 0;
}

BOOL sub_100014504()
{
  v0 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v13 - v2;
  sub_100003D50(&v14);
  if (!v15)
  {
    return 0;
  }

  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22[0] = v17[0];
  *(v22 + 10) = *(v17 + 10);
  v4 = sub_1000029F0();
  v6 = v5;
  sub_1000041E8(&v14, &qword_100025300, qword_100019328);
  sub_1000037D8(v18);
  v7 = sub_1000029F0();
  v9 = v8;
  sub_100003CD0(v18);
  v13[2] = v7;
  v13[3] = v9;
  v13[0] = v4;
  v13[1] = v6;
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_100004194();
  v11 = StringProtocol.compare<A>(_:options:range:locale:)();
  sub_1000041E8(v3, &unk_100025840, &unk_1000194B0);

  return v11 == -1;
}

void sub_1000146C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1000103AC(a1, a2, a3);
}

uint64_t sub_1000146C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100014708(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    static os_log_type_t.info.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000192B0;
    if (a2)
    {
      v11 = v10;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_10000C674();
      v11[4] = a1;
      v11[5] = a2;
      if (a4)
      {

        v12 = _convertErrorToNSError(_:)();
        v11[12] = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
        v11[13] = sub_100014208(&qword_1000257A0, &qword_1000252D0, NSError_ptr);
        v11[9] = v12;
        sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
        v8 = static OS_os_log.default.getter();
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  static os_log_type_t.debug.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100019340;
  if (!a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10000C674();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

  v8 = static OS_os_log.default.getter();
LABEL_7:
  v13 = v8;
  os_log(_:dso:log:type:_:)();
}

void sub_10001491C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  static os_log_type_t.info.getter();
  sub_100003BE0(&qword_1000252B8, &qword_100019310);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000192A0;
  if (!a2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  *(v8 + 56) = sub_1000025DC(0, &qword_100025860, IDSProtobuf_ptr);
  v9[8] = sub_100014208(&qword_100025868, &qword_100025860, IDSProtobuf_ptr);
  v9[4] = a2;
  if (!a4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9[12] = &type metadata for String;
  v9[13] = sub_10000C674();
  v9[9] = a3;
  v9[10] = a4;
  if (!a1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9[17] = sub_1000025DC(0, &qword_100025758, IDSAccount_ptr);
  v9[18] = sub_100014208(&unk_100025870, &qword_100025758, IDSAccount_ptr);
  v9[14] = a1;
  sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
  v10 = a2;

  v11 = a1;
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_100014AF4(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 data];
  if (v10)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    sub_100014E7C(v12, v14);
    v15.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100012B40(v12, v14);
  }

  else
  {
    v15.super.isa = 0;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  v16 = [objc_allocWithZone(TZDAssetDetectedMsg) initWithData:v15.super.isa];

  sub_1000025DC(0, &qword_1000257C0, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  aBlock[4] = sub_100014E60;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F608;
  aBlock[3] = &unk_1000214B0;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000061AC();
  sub_100003BE0(&unk_100025830, &qword_100019378);
  sub_100014338();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  sub_100014E68(v12, v14);
  (*(v25 + 8))(v5, v2);
  return (*(v23 + 8))(v9, v24);
}

uint64_t sub_100014E28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014E68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100012B40(a1, a2);
  }

  return a1;
}

uint64_t sub_100014E7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100014ED0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014F34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100014F44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014F94()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014FE4()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015024()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1000100F4(1, v1);
}

uint64_t sub_1000150F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(BOOL), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static os_log_type_t.fault.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100019340;
    v15 = _convertErrorToNSError(_:)();
    *(v14 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    *(v14 + 64) = sub_1000172A0();
    *(v14 + 32) = v15;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    a3(0);
  }

  else
  {
    sub_100003BE0(&qword_100025750, &qword_100019388);
    inited = swift_initStackObject();
    v27 = xmmword_100019340;
    *(inited + 16) = xmmword_100019340;
    static TimeZone.current.getter();
    v19 = TimeZone.identifier.getter();
    v21 = v20;
    (*(v10 + 8))(v13, v9);
    *(inited + 32) = v19;
    *(inited + 40) = v21;
    v28 = a1;

    sub_10000F0B0(inited);
    v22 = v28;
    static os_log_type_t.debug.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v23 = swift_allocObject();
    *(v23 + 16) = v27;
    *(v23 + 56) = sub_100003BE0(&qword_100025338, &qword_100019370);
    *(v23 + 64) = sub_100006204(&qword_100025340, &qword_100025338, &qword_100019370);
    *(v23 + 32) = v22;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    v25 = sub_100016138(v22, a5);

    v26 = *(v25 + 16);

    return a3(v26 != 0);
  }
}

char *sub_100015478(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BE0(&qword_100025750, &qword_100019388);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100015584(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100015934(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000156D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003BE0(&qword_1000257B8, qword_1000196E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100015934(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000156D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100015AB4();
      goto LABEL_16;
    }

    sub_100015C10(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100015AB4()
{
  v1 = v0;
  sub_100003BE0(&qword_1000257B8, qword_1000196E8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100015C10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003BE0(&qword_1000257B8, qword_1000196E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t *sub_100015E48(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_100016A5C(v9, a2, a3, a4, a5);

    swift_bridgeObjectRelease_n();
    return v10;
  }

  return result;
}

uint64_t sub_100015EF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003BE0(&unk_100025920, &unk_100019710);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100016138(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1000162D8(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_100017308(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_1000162D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v14 = Hasher._finalize()();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_1000164B8(v26, a2, v25, a4);
}

uint64_t sub_1000164B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100003BE0(&qword_1000257B8, qword_1000196E8);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1000166DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for TimeZone();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static os_log_type_t.fault.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100019340;
    v16 = _convertErrorToNSError(_:)();
    *(v15 + 56) = sub_1000025DC(0, &qword_1000252D0, NSError_ptr);
    *(v15 + 64) = sub_1000172A0();
    *(v15 + 32) = v16;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    a4();
  }

  else
  {
    sub_100003BE0(&qword_100025750, &qword_100019388);
    inited = swift_initStackObject();
    v27 = xmmword_100019340;
    *(inited + 16) = xmmword_100019340;
    static TimeZone.current.getter();
    v19 = TimeZone.identifier.getter();
    v21 = v20;
    (*(v11 + 8))(v14, v10);
    *(inited + 32) = v19;
    *(inited + 40) = v21;
    v28 = a1;

    sub_10000F0B0(inited);
    v22 = v28;
    static os_log_type_t.debug.getter();
    sub_100003BE0(&qword_1000252B8, &qword_100019310);
    v23 = swift_allocObject();
    *(v23 + 16) = v27;
    *(v23 + 56) = sub_100003BE0(&qword_100025338, &qword_100019370);
    *(v23 + 64) = sub_100006204(&qword_100025340, &qword_100025338, &qword_100019370);
    *(v23 + 32) = v22;
    sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    v25 = sub_100016138(v22, a3);

    v26 = *(v25 + 16);

    sub_100004B58(v26 != 0, a4, a5);
  }
}

uint64_t sub_100016A5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a2;
  v37 = a4;
  v34 = a1;
  v7 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v36 = &v33 - v9;
  v38 = a3;
  v39 = a5;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;

  v35 = 0;
  v18 = 0;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_11:
    v22 = v19 | (v18 << 6);
    v23 = (*(v38 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = v22;
    v27 = *(*(v38 + 56) + 8 * v22);
    v42 = v37;
    v43 = v39;
    v40 = v24;
    v41 = v25;
    v28 = type metadata accessor for Locale();
    v29 = v36;
    (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
    sub_100004194();

    v30 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_10001733C(v29);

    v15 = v44;
    if (v30 == -1)
    {
      *(v34 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
LABEL_15:
        v32 = sub_100015EF4(v34, v33, v35, v38);

        return v32;
      }
    }
  }

  v20 = v18;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
      goto LABEL_15;
    }

    v21 = *(v11 + 8 * v18);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100016CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v12 = sub_100015E48(v13, v9, a1, a2, a3);

      goto LABEL_7;
    }
  }

  __chkstk_darwin(v11);
  bzero(&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_100016A5C((&v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_7:
  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t sub_100016E9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100015584(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_100016F34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  if (*(a1 + 56))
  {

    sub_100004B58(1, a4, a5);
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {

      v8 = sub_100016CE0(v5, a2, a3);

      v9 = 1 << *(v8 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(v8 + 64);
      v12 = (v9 + 63) >> 6;

      v13 = 0;
      v14 = _swiftEmptyArrayStorage;
      while (v11)
      {
LABEL_15:
        v16 = (v13 << 9) | (8 * __clz(__rbit64(v11)));
        v17 = *(*(v8 + 56) + v16);
        v18 = *(v17 + 16);
        v19 = *(v14 + 2);
        v20 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          goto LABEL_31;
        }

        v21 = *(*(v8 + 56) + v16);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v20 > *(v14 + 3) >> 1)
        {
          if (v19 <= v20)
          {
            v23 = v19 + v18;
          }

          else
          {
            v23 = v19;
          }

          v14 = sub_100015478(isUniquelyReferenced_nonNull_native, v23, 1, v14);
        }

        v11 &= v11 - 1;
        if (*(v17 + 16))
        {
          if ((*(v14 + 3) >> 1) - *(v14 + 2) < v18)
          {
            goto LABEL_33;
          }

          swift_arrayInitWithCopy();

          if (v18)
          {
            v24 = *(v14 + 2);
            v25 = __OFADD__(v24, v18);
            v26 = v24 + v18;
            if (v25)
            {
              goto LABEL_34;
            }

            *(v14 + 2) = v26;
          }
        }

        else
        {

          if (v18)
          {
            goto LABEL_32;
          }
        }
      }

      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v12)
        {

          v27 = sub_100016E9C(v14);

          static os_log_type_t.debug.getter();
          sub_100003BE0(&qword_1000252B8, &qword_100019310);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_100019340;
          *(v28 + 56) = sub_100003BE0(&qword_100025910, &qword_100019708);
          *(v28 + 64) = sub_100006204(&qword_100025918, &qword_100025910, &qword_100019708);
          *(v28 + 32) = v27;
          sub_1000025DC(0, &qword_1000251C0, OS_os_log_ptr);

          v29 = static OS_os_log.default.getter();
          os_log(_:dso:log:type:_:)();

          sub_1000057F4(v27, a4, a5);

          return;
        }

        v11 = *(v8 + 64 + 8 * v15);
        ++v13;
        if (v11)
        {
          v13 = v15;
          goto LABEL_15;
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
    }

    else
    {
      a4();
    }
  }
}

unint64_t sub_1000172A0()
{
  result = qword_1000257A0;
  if (!qword_1000257A0)
  {
    sub_1000025DC(255, &qword_1000252D0, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000257A0);
  }

  return result;
}

uint64_t sub_100017308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1000162D8(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10001733C(uint64_t a1)
{
  v2 = sub_100003BE0(&unk_100025840, &unk_1000194B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000173A4()
{
  v0._countAndFlagsBits = 0x656E6F7A656D6974;
  v0._object = 0xE90000000000002FLL;
  String.append(_:)(v0);
  qword_1000263E8 = 0x2F62642F7261762FLL;
  unk_1000263F0 = 0xE800000000000000;
}

void sub_100017410()
{
  v0._object = 0x800000010001B070;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  qword_1000263F8 = 0x6168732F7273752FLL;
  unk_100026400 = 0xEB000000002F6572;
}

void sub_100017484()
{
  v0._countAndFlagsBits = 7693161;
  v0._object = 0xE300000000000000;
  String.append(_:)(v0);
  qword_100026408 = 0x6168732F7273752FLL;
  unk_100026410 = 0xEB000000002F6572;
}

uint64_t sub_1000174EC()
{
  if (qword_100025178 != -1)
  {
    swift_once();
  }

  v2 = qword_100026408;
  v3 = unk_100026410;
  swift_bridgeObjectRetain_n();
  v0._object = 0x800000010001B050;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);

  qword_100026418 = v2;
  unk_100026420 = v3;
  return result;
}

uint64_t sub_1000175EC()
{
  if (qword_100025168 != -1)
  {
    swift_once();
  }

  v2 = qword_1000263E8;
  v3 = unk_1000263F0;
  swift_bridgeObjectRetain_n();
  v0._object = 0x800000010001B090;
  v0._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v0);

  qword_100026448 = v2;
  unk_100026450 = v3;
  return result;
}

uint64_t sub_1000176D4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  if (qword_100025168 != -1)
  {
    swift_once();
  }

  v11 = qword_1000263E8;
  v12 = unk_1000263F0;
  swift_bridgeObjectRetain_n();
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  String.append(_:)(v9);

  *a4 = v11;
  *a5 = v12;
  return result;
}

uint64_t sub_100017788()
{
  result = sub_1000177AC();
  qword_100026478 = result;
  qword_100026480 = v1;
  return result;
}

uint64_t sub_1000177AC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100025180 != -1)
  {
    swift_once();
  }

  URL.init(fileURLWithPath:)();
  v5 = String.init(contentsOf:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_1000179BC()
{
  result = qword_100025780;
  if (!qword_100025780)
  {
    sub_1000025DC(255, &qword_100025500, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025780);
  }

  return result;
}
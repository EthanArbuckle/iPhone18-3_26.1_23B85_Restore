void _LNMetadataProviderDirect.examplePhrases(forBundleIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_100016DF0();
}

void _LNMetadataProviderDirect.suggestionPhrases(forQueries:)()
{
  v1 = v0;
  sub_1000B6398();
  sub_10001D60C();
  sub_10000C900();
  sub_1000AB0B4();
}

void _LNMetadataProviderDirect.openActions(forTypeIdentifier:bundleIdentifier:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000B6398();

  sub_1000064A4();
  sub_10000C900();
  sub_1000288D0();
}

void _LNMetadataProviderDirect.openCollectionActions(forEntityTypeIdentifier:capabilities:bundleIdentifier:)()
{
  sub_100004DF0();
  v85 = v1;
  v3 = v2;
  v5 = v4;
  v74 = v7;
  v75 = v6;
  v76 = v8;
  v70 = type metadata accessor for LNActionRecord();
  v9 = sub_100002944(v70);
  v69 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v64 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v73 = &v61 - v15;
  v16 = *(v0 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE80;
  *(inited + 32) = [objc_opt_self() openEntitySystemProtocol];
  if (sub_1000232FC(inited))
  {
    v18 = sub_1000B5720(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1000B3138();
    v18 = &_swiftEmptySetSingleton;
  }

  sub_100017580(v82);
  v19 = v83;
  v20 = v84;
  sub_1000034B4(v82, v83);
  if (qword_100198148 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    *&v79 = v5;
    *(&v79 + 1) = v3;
    v21 = == infix<A>(_:_:)();
    v71 = v5;
    v23 = v22;
    v24 = v3;
    v26 = v25;
    v80 = v19;
    v81 = v20;
    sub_100013234(&v79);
    QueryType.filter(_:)(v21, v23, v26, v19, v20);

    sub_1000034F8(v82);
    sub_10001A798(&v79, v82);
    v27 = sub_10001DF8C(v82);
    if (v85)
    {

      sub_1000034F8(v82);
      goto LABEL_46;
    }

    v3 = v27;
    v61 = 0;
    v62 = v24;
    v5 = 0x746567726174;
    sub_1000034F8(v82);
    sub_100063EA0(v18, 2, v3);
    v19 = v28;

    v29 = 0;
    v63 = _swiftEmptyArrayStorage;
    v66 = *(v19 + 16);
    v20 = v71;
    v65 = v19;
LABEL_8:
    if (v29 == v66)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v57 = sub_1000077D8();
      v59 = sub_1000A1138(v57, v58, KeyPath, v63);

      v60 = sub_1000A0FE0(v20, v62, v59);

      if (v60)
      {
        sub_1000A1FC8(v60);
      }

      goto LABEL_46;
    }

    if (v29 < *(v19 + 16))
    {
      break;
    }

    __break(1u);
LABEL_48:
    swift_once();
  }

  v30 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v31 = *(v69 + 72);
  v72 = v29 + 1;
  v68 = v30;
  v67 = v31;
  v32 = v73;
  sub_10001E984();
  v33 = [*(v32 + *(v70 + 24)) parameters];
  sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1000232FC(v34);
  v18 = 0;
  v35 = v34 & 0xC000000000000001;
  v85 = v34 & 0xFFFFFFFFFFFFFF8;
  v77 = v3;
  v78 = v34;
  while (1)
  {
    if (v3 == v18)
    {

      sub_10001E9DC(v73, type metadata accessor for LNActionRecord);
      v29 = v72;
      v20 = v71;
LABEL_36:
      v19 = v65;
      goto LABEL_8;
    }

    if (v35)
    {
      sub_10001209C();
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *(v85 + 16))
      {
        goto LABEL_45;
      }

      v36 = *(v34 + 8 * v18 + 32);
    }

    v37 = v36;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    v38 = sub_1000237B0(v36);
    if (!v39)
    {
      goto LABEL_32;
    }

    v40 = v38 == 0x746567726174 && v39 == 0xE600000000000000;
    if (v40)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v42 = [v37 valueType];
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (!v43)
    {
      v50 = v37;
      v37 = v42;
LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

    v44 = v43;
    sub_100003D44(0, &qword_100199300, NSObject_ptr);
    v45 = [v44 memberValueType];
    v46 = objc_allocWithZone(LNEntityValueType);
    v47 = String._bridgeToObjectiveC()();
    v48 = [v46 initWithIdentifier:v47];

    LOBYTE(v47) = static NSObject.== infix(_:_:)();
    if ((v47 & 1) == 0)
    {
      v50 = v42;
      v5 = 0x746567726174;
      v3 = v77;
      v34 = v78;
      goto LABEL_31;
    }

    v49 = [v44 capabilities];

    v40 = (v74 & ~v49) == 0;
    v5 = 0x746567726174;
    v3 = v77;
    v34 = v78;
    if (v40)
    {

      sub_1000113A8();
      sub_1000B5FF4();
      v51 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v51;
      v82[0] = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000B35D4(0, v51[2] + 1, 1);
        v53 = v82[0];
      }

      v20 = v71;
      v55 = v53[2];
      v54 = v53[3];
      v3 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        sub_1000B35D4(v54 > 1, v55 + 1, 1);
        v53 = v82[0];
      }

      v53[2] = v3;
      v63 = v53;
      sub_1000113A8();
      sub_1000B5FF4();
      v29 = v72;
      goto LABEL_36;
    }

LABEL_33:
    ++v18;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_1000248C0();
  sub_100004674();
}

uint64_t _LNMetadataProviderDirect.__allocating_init(connection:options:)()
{
  sub_100018460();
  v1 = objc_allocWithZone(v0);
  v2 = sub_10001209C();
  return _LNMetadataProviderDirect.init(connection:options:)(v2, v3);
}

uint64_t _LNMetadataProviderDirect.init(connection:options:)(id a1, uint64_t a2)
{
  v56 = a2;
  ObjectType = swift_getObjectType();
  v3 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v4 = sub_10000482C(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v53 - v7;
  v9 = type metadata accessor for URL();
  v10 = sub_100002944(v9);
  v59 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v55 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v58 = v53 - v15;
  v16 = swift_allocBox();
  v18 = v17;
  v60 = v9;
  sub_1000075C4(v17, 1, 1, v9);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = (v19 + 16);
  v69 = sub_1000B58F0;
  v70 = v19;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_1000A10D0;
  v68 = &unk_10018E8E8;
  v21 = _Block_copy(&aBlock);

  v22 = [a1 synchronousRemoteObjectProxyWithErrorHandler:v21];
  _Block_release(v21);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002EB80(&qword_10019B0E0, &qword_1001503E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v28 = objc_allocWithZone(NSError);
    v29 = sub_1000077D8();
    sub_1000B2C68(v29, v30, 9003, 0);
    swift_willThrow();

LABEL_10:

    goto LABEL_11;
  }

  v54 = a1;
  v23 = v64;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = v16;
  v69 = sub_1000B58F8;
  v70 = v24;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_1000A3D1C;
  v68 = &unk_10018E938;
  v25 = _Block_copy(&aBlock);

  v53[2] = v23;
  [v23 fetchDatabaseURL:v25];
  _Block_release(v25);
  swift_beginAccess();
  sub_1000077D8();
  sub_100009F38();
  v26 = v60;
  if (sub_1000032C4(v8, 1, v60) == 1)
  {
    sub_1000B6240(v8, &qword_1001990C0);
    swift_beginAccess();
    v18 = *v20;
    if (*v20)
    {
      v27 = *v20;
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100002714();
      v37 = objc_allocWithZone(NSError);
      v38 = sub_1000077D8();
      sub_1000B2C68(v38, v39, 9003, 0);
      v18 = 0;
    }

    a1 = v54;
    swift_willThrow();
    swift_errorRetain();

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v53[1] = v16;
  v31 = v58;
  v32 = v59;
  v53[0] = *(v59 + 32);
  (v53[0])(v58, v8, v26);
  URL.startAccessingSecurityScopedResource()();
  URL.absoluteString.getter();
  sub_100002714();
  type metadata accessor for Connection();
  swift_allocObject();
  v33 = sub_1000077D8();
  v34 = v57;
  v36 = Connection.init(_:readonly:)(v33, v35, 1);
  if (!v34)
  {
    v41 = v36;

    Connection.busyTimeout.setter(0.5);
    v42 = *(v32 + 16);
    v43 = v55;
    v44 = sub_1000B659C();
    v45(v44);
    v46 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v47 = swift_allocObject();
    v48 = v47 + v46;
    v49 = v60;
    (v53[0])(v48, v43, v60);
    swift_beginAccess();
    v50 = *(v41 + 24);
    v51 = *(v41 + 32);
    *(v41 + 24) = sub_1000B5900;
    *(v41 + 32) = v47;
    sub_10002CCE0(v50);
    v52 = v62;
    *&v62[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection] = v41;
    v52[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion] = (v56 & 2) != 0;
    v63.receiver = v52;
    v63.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v63, "init");
    swift_unknownObjectRelease();

    (*(v32 + 8))(v31, v49);

    return v18;
  }

  URL.stopAccessingSecurityScopedResource()();
  swift_willThrow();
  swift_unknownObjectRelease();

  (*(v32 + 8))(v31, v26);

LABEL_11:
  swift_deallocPartialClassInstance();
  return v18;
}

uint64_t sub_1000A3B88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return swift_errorRetain();
}

uint64_t sub_1000A3BDC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16[-v8];
  v10 = swift_projectBox();
  v11 = 1;
  swift_beginAccess();
  v12 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_errorRetain();

  if (a1)
  {
    v13 = [a1 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = 0;
  }

  v14 = type metadata accessor for URL();
  sub_1000075C4(v9, v11, 1, v14);
  swift_beginAccess();
  return sub_100060D78(v9, v10);
}

void sub_1000A3D1C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_1000A3E30()
{
  sub_100018D28();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection] = v0;
  v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion] = 0;
  v4.receiver = v1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1000A3F48()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v60 = v8;
  v61 = v9;
  v10 = sub_100018AD4(__stack_chk_guard);
  v11 = sub_100002944(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100005284();
  sub_1000B6590(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v41 || (v14 = objc_opt_self(), v15 = sub_1000B65EC(v14), v16 = [v15 isApplication], v15, !v16))
  {
    v26 = *&v60[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v27 = sub_100005D34();
    v30 = sub_100063CD8(v27, v28, v5, v3, v29);
    if (v0)
    {

LABEL_25:

      goto LABEL_26;
    }

    v31 = v30;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000B6584();
    sub_1000A1138(v32, v33, v34, v31);

    goto LABEL_10;
  }

  v17 = [objc_opt_self() *(v1 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v18 + 32) = sub_100002C28();
  v19 = objc_allocWithZone(RBSAssertion);
  sub_1000088E4();
  sub_1000B645C();
  v63 = 0;
  v59 = sub_1000B2D18(v20, v21, v22);
  if ([v59 acquireWithError:&v63])
  {
    v23 = *&v60[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v24 = v63;
    v25 = sub_100063CD8(v61, v7, v5, v3, v23);
    if (v0)
    {
      [v59 invalidate];
      goto LABEL_12;
    }

    v54 = v25;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000B6584();
    sub_1000A1138(v55, v56, v57, v54);

    [v59 invalidate];

LABEL_10:

LABEL_26:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v35 = v63;
  sub_1000B63E4();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_12:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_100009A40();
  if (!sub_100016CD8())
  {
LABEL_24:

    goto LABEL_25;
  }

  v36 = [v62 domain];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010664();
  v41 = v41 && v39 == v40;
  if (v41)
  {
  }

  else
  {
    sub_1000B6450();
    sub_1000B6538();
    sub_1000B65D4();

    if ((v36 & 1) == 0)
    {

      goto LABEL_24;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_100018D28();

    Logger.init(_:)();
    v42 = v62;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      sub_100007764();
      v45 = sub_100011A08();
      sub_10002131C(v45);
      *v37 = 136315138;
      v58 = v44;
      v46 = [v42 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = sub_100005D34();
      v50 = sub_100004C50(v47, v48, v49);

      *(v37 + 4) = v50;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v58);
      sub_1000034F8(v3);
      sub_1000036AC();
      sub_100012770();
    }

    v51 = sub_1000B6374();
    v52(v51, v10);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v53 = objc_allocWithZone(NSError);
    sub_100004F30();
    sub_100013A10();

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A44FC()
{
  sub_100004DF0();
  sub_1000046C8();
  v2 = sub_100018AD4(__stack_chk_guard);
  v3 = sub_100002944(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002958();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v31 || (v8 = [objc_opt_self() currentProcess], v9 = objc_msgSend(v8, "isApplication"), v8, !v9))
  {
    v20 = *&v0[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    sub_100017580(v59);
    v21 = sub_10001DF8C(v59);
    if (!v1)
    {
      v22 = v21;
      sub_1000034F8(v59);
      swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000B6584();
      sub_1000A1138(v23, v24, v25, v22);

LABEL_26:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    sub_1000034F8(v59);
LABEL_25:

    goto LABEL_26;
  }

  v10 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v11 + 32) = sub_100002C28();
  v12 = objc_allocWithZone(RBSAssertion);
  v13 = sub_100012090();
  v15 = sub_1000B2D18(v13, v14, v10);
  v59[0] = 0;
  if ([v15 acquireWithError:v59])
  {
    v16 = *&v0[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v17 = v59[0];
    sub_100017580(v59);
    v18 = sub_10001DF8C(v59);
    v19 = v1;
    if (!v1)
    {
      v50 = v18;
      sub_1000034F8(v59);
      KeyPath = swift_getKeyPath();
      v52 = swift_getKeyPath();
      v53 = swift_getKeyPath();
      sub_1000A1138(KeyPath, v52, v53, v50);

      [v15 invalidate];

      goto LABEL_26;
    }

    sub_1000034F8(v59);
    [v15 invalidate];
  }

  else
  {
    v26 = v59[0];
    sub_10000C920();
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v59[0] = v19;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  if (!sub_1000B6508())
  {

    goto LABEL_24;
  }

  v55 = v5;
  v56 = v15;
  v27 = [v57 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010664();
  v31 = v31 && v29 == v30;
  if (v31)
  {
  }

  else
  {
    sub_1000B6450();
    v32 = sub_1000B6538();

    if ((v32 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v33 = v57;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      sub_100007764();
      v54 = sub_100013148();
      v58 = v54;
      *v27 = 136315138;
      v36 = [v33 localizedDescription];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = sub_100004C50(v37, v39, &v58);

      *(v27 + 1) = v40;
      sub_100011B24();
      sub_1000B64F0(v41, v42, v43, v44);
      sub_1000034F8(v54);
      sub_1000036AC();
      sub_1000105CC();
    }

    v45 = *(v55 + 8);
    v46 = sub_10001209C();
    v47(v46);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10002879C();
    v48 = objc_allocWithZone(NSError);
    v49 = sub_1000079EC();
    sub_1000B6340(v49, v2);
    sub_100013A10();

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A4AE0()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_100018AD4(__stack_chk_guard);
  v9 = sub_100002944(v8);
  v61 = v10;
  v62 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100002958();
  v15 = v14 - v13;
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v44 || (v16 = objc_opt_self(), v17 = sub_100016634(v16), v18 = [v17 isApplication], v17, !v18))
  {
    v33 = sub_1000B63C8();
    sub_1000ACAF8(v33, v34, v35, v36, v3, v37);
    if (v1)
    {

LABEL_26:

      goto LABEL_27;
    }

    goto LABEL_10;
  }

  v19 = [objc_opt_self() *(v0 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v20 + 32) = sub_100002C28();
  v21 = objc_allocWithZone(RBSAssertion);
  v22 = sub_10001AB30();
  v25 = sub_1000B2D18(v22, v23, v24);
  v64 = 0;
  if ([v25 acquireWithError:&v64])
  {
    v26 = v64;
    v27 = sub_1000B63C8();
    sub_1000ACAF8(v27, v28, v29, v30, v3, v31);
    sub_10000C0D0();
    if (v1)
    {
      sub_1000B661C(v32);
      goto LABEL_12;
    }

    sub_1000B661C(v32);

LABEL_10:

LABEL_27:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v38 = v64;
  sub_100018D28();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_12:
  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_10001115C();
  if (!sub_100016CD8())
  {
LABEL_24:

    goto LABEL_25;
  }

  v60 = v25;
  v39 = [v63 domain];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v44 = v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43;
  if (v44)
  {
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v45 & 1) == 0)
    {

LABEL_25:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    Logger.init(_:)();
    v46 = v63;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      sub_100007764();
      v49 = sub_100013148();
      sub_1000B6564(v49);
      *v40 = 136315138;
      v50 = [v46 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = sub_1000106AC();
      v54 = sub_100004C50(v51, v52, v53);

      *(v40 + 4) = v54;
      sub_100011B24();
      sub_1000B64F0(v55, v56, v57, v58);
      sub_100012908();
      sub_1000036AC();
      sub_1000105CC();
    }

    (*(v61 + 8))(v15, v62);
    v25 = v60;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v59 = objc_allocWithZone(NSError);
    sub_100004F30();
    sub_100013A10();

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A4FB4()
{
  sub_100004DF0();
  v2 = v0;
  v4 = v3;
  sub_1000B63BC();
  v5 = sub_100018AD4(__stack_chk_guard);
  v6 = sub_100002944(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100005284();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v33 || (v9 = [objc_opt_self() currentProcess], v10 = objc_msgSend(v9, "isApplication"), v9, !v10))
  {
    v20 = *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v21 = sub_100063624(v4);
    if (v0)
    {
LABEL_27:

      goto LABEL_28;
    }

    v22 = v21;
    v23 = *(v21 + 2);
    if (v23 != sub_1000232F4(v4))
    {
      sub_1000AD400(v22, v4);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = sub_100011528();
    sub_1000A1138(v24, v25, v26, v22);

    goto LABEL_11;
  }

  v11 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v12 + 32) = sub_100002C28();
  v13 = objc_allocWithZone(RBSAssertion);
  v14 = sub_100012090();
  v16 = sub_1000B2D18(v14, v15, v11);
  v60 = 0;
  if ([v16 acquireWithError:&v60])
  {
    v17 = *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v18 = v60;
    v19 = sub_100063624(v4);
    if (v0)
    {
      [v16 invalidate];
      goto LABEL_13;
    }

    v51 = v19;
    v52 = *(v19 + 2);
    if (v52 != sub_1000232F4(v4))
    {
      sub_1000AD400(v51, v4);
    }

    KeyPath = swift_getKeyPath();
    v54 = swift_getKeyPath();
    v55 = swift_getKeyPath();
    sub_1000A1138(KeyPath, v54, v55, v51);

    [v16 invalidate];

LABEL_11:

LABEL_28:
    sub_100004674();
    return;
  }

  v27 = v60;
  v2 = _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_13:
  v60 = v2;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_100009A40();
  if (!swift_dynamicCast())
  {

    goto LABEL_26;
  }

  v58 = v16;
  v28 = [v59 domain];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v33 = v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32;
  if (v33)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {

LABEL_26:

      goto LABEL_27;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v35 = v59;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v56 = sub_100007764();
      v57 = sub_1000056E4();
      v61 = v57;
      *v56 = 136315138;
      v38 = [v35 localizedDescription];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_100004C50(v39, v41, &v61);

      *(v56 + 4) = v42;
      sub_100011B24();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      sub_1000034F8(v57);
      sub_1000036AC();
      sub_1000036AC();
    }

    v48 = sub_1000B6374();
    v49(v48, v5);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v50 = objc_allocWithZone(NSError);
    sub_100011870();
    swift_willThrow();

    goto LABEL_26;
  }

  __break(1u);
}

void sub_1000A55D8()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  v6 = sub_100018AD4(__stack_chk_guard);
  v7 = sub_100002944(v6);
  v48 = v8;
  v49 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100002958();
  v50 = v12 - v11;
  sub_1000B6590(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v36 || (v13 = objc_opt_self(), v14 = sub_1000B65EC(v13), v15 = [v14 isApplication], v14, !v15))
  {
    v27 = *&v5[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v28 = sub_1000B6420();
    v3(v28);
    if (v0)
    {
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_9;
  }

  v16 = [objc_opt_self() *(v1 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v17 + 32) = sub_100002C28();
  v18 = objc_allocWithZone(RBSAssertion);
  sub_100012090();
  sub_1000B645C();
  v22 = sub_1000B2D18(v19, v20, v21);
  v52 = 0;
  if ([v22 acquireWithError:&v52])
  {
    v23 = *&v5[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v24 = v52;
    v25 = sub_1000B6420();
    v3(v25);
    sub_10000C0D0();
    if (v0)
    {
      sub_10000DE54(v26);
      goto LABEL_11;
    }

    sub_10000DE54(v26);

LABEL_9:

LABEL_28:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v29 = v52;
  sub_1000B63E4();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_100009A40();
  if (!sub_100016CD8())
  {

LABEL_26:

    goto LABEL_27;
  }

  v47 = v22;
  v30 = v51;
  v31 = [v51 domain];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v36 = v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35;
  if (v36)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000B65D4();

    if ((v31 & 1) == 0)
    {
LABEL_25:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_100018D28();

    Logger.init(_:)();
    v30 = v51;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = sub_100007764();
      v40 = sub_1000056E4();
      v53 = v40;
      *v39 = 136315138;
      v41 = [v30 localizedDescription];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_100004C50(v42, v44, &v53);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to acquire assertions: %s", v39, 0xCu);
      sub_1000034F8(v40);
      sub_1000105CC();
      sub_1000036AC();
    }

    (*(v48 + 8))(v50, v49);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v46 = objc_allocWithZone(NSError);
    sub_100004F30();
    sub_100013A10();
    goto LABEL_25;
  }

  __break(1u);
}

id sub_1000A5ACC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void *a7, uint64_t a8)
{
  v82 = a5;
  v83 = a7;
  v84 = a4;
  v14 = type metadata accessor for Logger();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = *(v80 + 64);
  __chkstk_darwin(v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v18 = [objc_opt_self() currentProcess], v19 = objc_msgSend(v18, "isApplication"), v18, !v19))
  {
    v30 = *&a2[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    sub_100012C78(a3, v84, v90);
    if (v8)
    {
      v31 = type metadata accessor for MetadataError();
      sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, enum case for MetadataError.cacheLookupFailed(_:), v31);

      v34 = *a6;
      *a6 = v32;

LABEL_37:
    }

    if (v91)
    {
      sub_1000B6240(v90, &unk_10019B428);
      sub_10004BF80();
      if (!v35)
      {
        v36 = type metadata accessor for MetadataError();
        sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
        v37 = swift_allocError();
        (*(*(v36 - 8) + 104))(v38, enum case for MetadataError.cacheLookupFailed(_:), v36);
        v39 = *a6;
        *a6 = v37;

        goto LABEL_37;
      }

      v52 = sub_10006AF24(1000, v35);

      v53 = *v82;
      *v82 = v52;
    }

    else
    {
      v51 = *v82;
      *v82 = _swiftEmptyArrayStorage;
    }

    goto LABEL_37;
  }

  v79 = a8;
  v20 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v21 + 32) = sub_1000AB530();
  v22 = objc_allocWithZone(RBSAssertion);
  v23 = sub_1000B2D18(0xD000000000000010, 0x8000000100156700, v20);
  v86 = 0;
  if ([v23 acquireWithError:&v86])
  {
    v24 = *&a2[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v25 = v86;
    sub_100012C78(a3, v84, v88);
    if (v8)
    {
      v26 = type metadata accessor for MetadataError();
      sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
      v27 = swift_allocError();
      (*(*(v26 - 8) + 104))(v28, enum case for MetadataError.cacheLookupFailed(_:), v26);

      v29 = *a6;
      *a6 = v27;

LABEL_36:
      [v23 invalidate];

      goto LABEL_37;
    }

    if (v89)
    {
      sub_1000B6240(v88, &unk_10019B428);
      sub_10004BF80();
      if (!v54)
      {
        v55 = type metadata accessor for MetadataError();
        sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
        v56 = swift_allocError();
        (*(*(v55 - 8) + 104))(v57, enum case for MetadataError.cacheLookupFailed(_:), v55);
        v58 = *a6;
        *a6 = v56;

        goto LABEL_36;
      }

      v77 = sub_10006AF24(1000, v54);

      v78 = *v82;
      *v82 = v77;
    }

    else
    {
      v76 = *v82;
      *v82 = _swiftEmptyArrayStorage;
    }

    goto LABEL_36;
  }

  v83 = v23;
  v40 = v86;
  v41 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v86 = v41;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v42 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
  }

  v43 = v85;
  v44 = [v85 domain];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v47 == v48)
  {
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v50 & 1) == 0)
    {

      goto LABEL_31;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    Logger.init(_:)();
    v60 = v43;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v87 = v64;
      *v63 = 136315138;
      v65 = [v60 localizedDescription];
      v82 = v60;
      v66 = v65;
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = v67;
      v42 = a2;
      v71 = sub_100004C50(v70, v69, &v87);

      *(v63 + 4) = v71;
      v60 = v82;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed to acquire assertions: %s", v63, 0xCu);
      sub_1000034F8(v64);
    }

    (*(v80 + 8))(v17, v81);
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;
    v75 = objc_allocWithZone(NSError);
    sub_1000B2C68(v72, v74, 9006, 0);
    swift_willThrow();

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

void sub_1000A649C(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v52 = a4;
  v12 = type metadata accessor for Logger();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  __chkstk_darwin(v12);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v15 = [objc_opt_self() currentProcess], v16 = objc_msgSend(v15, "isApplication"), v15, !v16))
  {
    sub_1000B1990(a2, a3, v52, a5, a6);
    if (v6)
    {
LABEL_27:

      return;
    }

    goto LABEL_8;
  }

  v48 = a2;
  v17 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v18 + 32) = sub_1000AB530();
  v19 = objc_allocWithZone(RBSAssertion);
  v20 = sub_1000B2D18(0xD000000000000010, 0x8000000100156700, v17);
  v54 = 0;
  if ([v20 acquireWithError:&v54])
  {
    v21 = v54;
    a2 = v48;
    sub_1000B1990(v48, a3, v52, a5, a6);
    v22 = v6;
    if (v6)
    {
      [v20 invalidate];
      goto LABEL_10;
    }

    [v20 invalidate];

LABEL_8:

    return;
  }

  v23 = v20;
  v24 = v54;
  v22 = _convertNSErrorToError(_:)();

  v20 = v23;
  swift_willThrow();
  a2 = v48;
LABEL_10:
  v54 = v22;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  if (!swift_dynamicCast())
  {

LABEL_26:

    goto LABEL_27;
  }

  v48 = v20;
  v25 = v53;
  v26 = [v53 domain];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
LABEL_25:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    v33 = v51;
    Logger.init(_:)();
    v25 = v25;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = v37;
      *v36 = 136315138;
      v38 = [v25 localizedDescription];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_100004C50(v39, v41, &v55);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to acquire assertions: %s", v36, 0xCu);
      sub_1000034F8(v37);

      (*(v49 + 8))(v51, v50);
    }

    else
    {

      (*(v49 + 8))(v33, v50);
    }

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
    v46 = objc_allocWithZone(NSError);
    sub_1000B2C68(v43, v45, 9006, 0);
    swift_willThrow();
    goto LABEL_25;
  }

  __break(1u);
}

void sub_1000A6B98()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1000046C8();
  v8 = sub_100018AD4(__stack_chk_guard);
  v9 = sub_100002944(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100003B7C();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v26 || (v12 = [objc_opt_self() currentProcess], v13 = objc_msgSend(v12, "isApplication"), v12, !v13))
  {
    v3(v7, v5, *&v0[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection]);
    if (v1)
    {
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v14 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v15 + 32) = sub_100002C28();
  v16 = objc_allocWithZone(RBSAssertion);
  v17 = sub_10001AB30();
  v20 = sub_1000B2D18(v17, v18, v19);
  v37[0] = 0;
  if ([v20 acquireWithError:v37])
  {
    v21 = *&v0[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v22 = v37[0];
    v3(v7, v5, v21);
    if (v1)
    {
      [v20 invalidate];
      goto LABEL_11;
    }

    [v20 invalidate];

LABEL_9:

LABEL_26:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v23 = v37[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_100009A40();
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v24 = [v36 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v26 = v26 && v1 == v25;
  if (v26)
  {
  }

  else
  {
    v27 = sub_100006AC4();

    if ((v27 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v28 = v36;
    v29 = sub_1000B6520();
    v30 = static os_log_type_t.error.getter();

    if (sub_100010424())
    {
      sub_100007764();
      v37[1] = sub_100011A08();
      *v7 = 136315138;
      v35 = v30;
      v31 = [v20 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000263E0();
      sub_100017268();
      sub_1000B6604();
      *(v7 + 4) = v31;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v35);
      sub_10001E11C();
      sub_100012770();
    }

    v32 = sub_100018344();
    v33(v32);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v34 = objc_allocWithZone(NSError);
    sub_100011870();
    sub_100013A10();

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A70F4()
{
  sub_100004DF0();
  v3 = v2;
  sub_1000B63BC();
  v4 = sub_100018AD4(__stack_chk_guard);
  v5 = sub_100002944(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100003B7C();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v22 || (v8 = [objc_opt_self() currentProcess], v9 = objc_msgSend(v8, "isApplication"), v8, !v9))
  {
    sub_1000B64CC();
    if (v0)
    {
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_9;
  }

  v10 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v11 + 32) = sub_100002C28();
  v12 = objc_allocWithZone(RBSAssertion);
  v13 = sub_1000088E4();
  v15 = sub_1000B2D18(v13, v14, v10);
  v40 = 0;
  if ([v15 acquireWithError:&v40])
  {
    v16 = v40;
    sub_1000B64CC();
    sub_10000C0D0();
    if (v0)
    {
      sub_100016D4C(v17);
      goto LABEL_11;
    }

    sub_100016D4C(v17);

LABEL_9:

LABEL_28:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v18 = v40;
  sub_10000C920();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_100019AC8();
  v19 = sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_10001115C();
  if (!sub_1000B6508())
  {

    goto LABEL_26;
  }

  v38 = v15;
  v20 = [v39 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v22 = v22 && v3 == v21;
  if (v22)
  {
  }

  else
  {
    v19 = sub_100006AC4();

    if ((v19 & 1) == 0)
    {

LABEL_26:

      goto LABEL_27;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v23 = v39;
    v24 = sub_1000B6520();
    v25 = static os_log_type_t.error.getter();

    if (sub_1000B64B4())
    {
      sub_100007764();
      v26 = sub_100011A08();
      sub_10002131C(v26);
      *v20 = 136315138;
      v27 = v19;
      v28 = [v19 localizedDescription];
      v37 = v25;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_100004C50(v29, v31, &v41);

      *(v20 + 1) = v32;
      v19 = v27;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v37);
      sub_10001E11C();
      sub_100012770();

      v33 = sub_100018344();
    }

    else
    {

      v33 = sub_100018344();
      v34 = v4;
    }

    v35(v33, v34);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v36 = objc_allocWithZone(NSError);
    sub_100011870();
    sub_100013A10();

    goto LABEL_26;
  }

  __break(1u);
}

void sub_1000A7648()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1000B63BC();
  v8 = sub_100018AD4(__stack_chk_guard);
  v9 = sub_100002944(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100003B7C();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v26 || (v12 = [objc_opt_self() currentProcess], v13 = objc_msgSend(v12, "isApplication"), v12, !v13))
  {
    v3(v7, v5, *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection]);
    if (v0)
    {
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v14 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v15 + 32) = sub_100002C28();
  v16 = objc_allocWithZone(RBSAssertion);
  v17 = sub_10001AB30();
  v20 = sub_1000B2D18(v17, v18, v19);
  v41 = 0;
  if ([v20 acquireWithError:&v41])
  {
    v21 = *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v22 = v41;
    v3(v7, v5, v21);
    if (v0)
    {
      [v20 invalidate];
      goto LABEL_11;
    }

    [v20 invalidate];

LABEL_9:

LABEL_26:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v23 = v41;
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_100009A40();
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v39 = v20;
  v24 = [v40 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v26 = v26 && v0 == v25;
  if (v26)
  {
  }

  else
  {
    v27 = sub_100006AC4();

    if ((v27 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v28 = v40;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (sub_100010424())
    {
      sub_100007764();
      v42 = sub_100011A08();
      *v7 = 136315138;
      v38 = v30;
      v31 = [v28 localizedDescription];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      sub_100004C50(v32, v34, &v42);
      sub_1000B6604();
      *(v7 + 4) = v31;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v38);
      sub_10001E11C();
      sub_100012770();
    }

    v35 = sub_100018344();
    v36(v35);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v37 = objc_allocWithZone(NSError);
    sub_100011870();
    sub_100013A10();

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A7B00()
{
  sub_100004DF0();
  sub_1000B63BC();
  v3 = sub_100018AD4(__stack_chk_guard);
  v4 = sub_100002944(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100005284();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v29 || (v7 = objc_opt_self(), v8 = sub_100016634(v7), v9 = [v8 isApplication], v8, !v9))
  {
    v20 = sub_100005D34();
    sub_100019A70(v20, v21, v22);
    if (v1)
    {

LABEL_26:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    goto LABEL_25;
  }

  v47 = v2;
  v10 = [objc_opt_self() *(v0 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v11 + 32) = sub_100002C28();
  v12 = objc_allocWithZone(RBSAssertion);
  v13 = sub_100012090();
  v49 = 0;
  v46 = sub_1000B2D18(v13, v14, v10);
  if ([v46 acquireWithError:&v49])
  {
    v15 = v49;
    v16 = sub_1000B659C();
    sub_100019A70(v16, v17, v18);
    sub_10000C0D0();
    if (v1)
    {
      [v46 *(v19 + 3536)];
      goto LABEL_10;
    }

    v2 = v46;
    [v46 *(v19 + 3536)];

LABEL_25:

    goto LABEL_26;
  }

  v23 = v49;
  sub_100018D28();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_10:
  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_10001115C();
  if (!sub_100016CD8())
  {

    goto LABEL_23;
  }

  v24 = [v48 domain];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010664();
  v29 = v29 && v27 == v28;
  if (v29)
  {
  }

  else
  {
    sub_1000B6450();
    v30 = sub_1000B6538();

    if ((v30 & 1) == 0)
    {

LABEL_23:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v31 = v48;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      sub_100007764();
      v50 = sub_100011A08();
      *v25 = 136315138;
      v34 = [v31 localizedDescription];
      v35 = v31;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = v36;
      v31 = v35;
      v40 = sub_100004C50(v39, v38, &v50);

      *(v25 + 4) = v40;
      sub_1000B65B4(&_mh_execute_header, v41, v42, "Failed to acquire assertions: %s");
      sub_100012908();
      sub_1000036AC();
      sub_100012770();
    }

    v43 = sub_1000B6374();
    v44(v43);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v45 = objc_allocWithZone(NSError);
    sub_100004F30();
    sub_100013A10();

    goto LABEL_23;
  }

  __break(1u);
}

void sub_1000A8038()
{
  sub_100004DF0();
  v3 = v2;
  sub_1000046C8();
  v4 = sub_100018AD4(__stack_chk_guard);
  v5 = sub_100002944(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002958();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v28 || (v10 = [objc_opt_self() currentProcess], v11 = objc_msgSend(v10, "isApplication"), v10, !v11))
  {
    v21 = sub_10000E200();
    v3(v21);
    if (!v1)
    {

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v47 = v7;
  v12 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v13 + 32) = sub_100002C28();
  v14 = objc_allocWithZone(RBSAssertion);
  v15 = sub_100012090();
  v17 = sub_1000B2D18(v15, v16, v12);
  v49 = 0;
  if ([v17 acquireWithError:&v49])
  {
    v18 = v49;
    v19 = sub_10000E200();
    v3(v19);
    sub_10000C0D0();
    if (!v1)
    {
      [v17 *(v20 + 3536)];

      goto LABEL_26;
    }

    [v17 *(v20 + 3536)];
  }

  else
  {
    v22 = v49;
    sub_10000C920();
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_10001115C();
  if (!sub_1000B6508())
  {
LABEL_24:

LABEL_25:

LABEL_26:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v23 = v48;
  v24 = [v48 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010664();
  v28 = v28 && v26 == v27;
  if (v28)
  {
  }

  else
  {
    sub_1000B6450();
    v29 = sub_1000B6538();

    if ((v29 & 1) == 0)
    {
LABEL_23:

      goto LABEL_24;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v23 = v48;
    v30 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_1000B64B4())
    {
      sub_100007764();
      v45 = sub_100013148();
      v50 = v45;
      *v24 = 136315138;
      v46 = v23;
      v31 = [v23 localizedDescription];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = sub_100004C50(v32, v34, &v50);

      *(v24 + 1) = v35;
      v23 = v46;
      sub_100011B24();
      sub_1000B64F0(v36, v37, v38, v39);
      sub_1000034F8(v45);
      sub_1000036AC();
      sub_1000105CC();
    }

    v40 = *(v47 + 8);
    v41 = sub_10001209C();
    v42(v41);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10002879C();
    v43 = objc_allocWithZone(NSError);
    v44 = sub_1000079EC();
    sub_1000B6340(v44, v4);
    sub_100013A10();
    goto LABEL_23;
  }

  __break(1u);
}

void sub_1000A8518()
{
  sub_100004DF0();
  v3 = v2;
  v63 = v4;
  v6 = v5;
  v7 = sub_100018AD4(__stack_chk_guard);
  v8 = sub_100002944(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100005284();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v36 || (v11 = objc_opt_self(), v12 = sub_100016634(v11), v13 = [v12 isApplication], v12, !v13))
  {
    v24 = *&v6[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v22 = v63;
    sub_1000B63F0();
    sub_10011712C();
    if (v1)
    {
LABEL_8:

LABEL_9:
LABEL_12:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    v26 = v25;
    swift_getKeyPath();
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    v28 = sub_1000B659C();
    sub_1000A14E0(v28, v29, KeyPath, v26);

    goto LABEL_11;
  }

  v14 = [objc_opt_self() *(v0 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v15 + 32) = sub_100002C28();
  v16 = objc_allocWithZone(RBSAssertion);
  v17 = sub_100012090();
  v19 = sub_1000B2D18(v17, v18, v14);
  v65 = 0;
  if ([v19 acquireWithError:&v65])
  {
    v20 = *&v6[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v21 = v65;
    v22 = v63;
    sub_10011712C();
    if (v1)
    {
      [v19 invalidate];
      goto LABEL_14;
    }

    v56 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000B6584();
    sub_1000A14E0(v57, v58, v59, v56);

    [v19 invalidate];

LABEL_11:
    goto LABEL_12;
  }

  v30 = v65;
  sub_100018D28();
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v22 = v63;
LABEL_14:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_100009A40();
  if (!sub_100016CD8())
  {

    goto LABEL_8;
  }

  v61 = v19;
  v31 = [v64 domain];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v36 = v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35;
  if (v36)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {

      goto LABEL_9;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v38 = v64;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v60 = sub_100007764();
      v62 = sub_1000056E4();
      v66 = v62;
      *v60 = 136315138;
      v41 = [v38 localizedDescription];
      v42 = v38;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = v43;
      v38 = v42;
      v47 = sub_100004C50(v46, v45, &v66);

      *(v60 + 4) = v47;
      sub_100011B24();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      sub_1000034F8(v62);
      sub_1000105CC();
      sub_1000036AC();
    }

    v53 = sub_1000B6374();
    v54(v53, v7);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v55 = objc_allocWithZone(NSError);
    sub_100004F30();
    sub_100013A10();

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000A8B34()
{
  sub_100004DF0();
  sub_1000B63BC();
  v3 = sub_100018AD4(__stack_chk_guard);
  v4 = sub_100002944(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100005284();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v27 || (v7 = objc_opt_self(), v8 = sub_100016634(v7), v9 = [v8 isApplication], v8, !v9))
  {
    v19 = sub_100005D34();
    sub_1000AF694(v19, v20);
    if (v1)
    {

LABEL_9:

LABEL_26:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    goto LABEL_25;
  }

  v44 = v2;
  v10 = [objc_opt_self() *(v0 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v11 + 32) = sub_100002C28();
  v12 = objc_allocWithZone(RBSAssertion);
  v13 = sub_100012090();
  v46[0] = 0;
  v2 = sub_1000B2D18(v13, v14, v10);
  if ([v2 acquireWithError:v46])
  {
    v15 = v46[0];
    v16 = sub_1000B659C();
    sub_1000AF694(v16, v17);
    sub_10000C0D0();
    if (v1)
    {
      sub_10000DE54(v18);
      goto LABEL_11;
    }

    sub_10000DE54(v18);

LABEL_25:

    goto LABEL_26;
  }

  v21 = v46[0];
  sub_100018D28();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_10001115C();
  if (!sub_100016CD8())
  {

    goto LABEL_9;
  }

  v22 = [v45 domain];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100010664();
  v27 = v27 && v25 == v26;
  if (v27)
  {
  }

  else
  {
    sub_1000B6450();
    v28 = sub_1000B6538();

    if ((v28 & 1) == 0)
    {

      goto LABEL_9;
    }
  }

  if (getLNLogCategoryMetadata())
  {

    Logger.init(_:)();
    v29 = v45;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      sub_100007764();
      v32 = sub_100011A08();
      sub_1000B6564(v32);
      *v23 = 136315138;
      v33 = [v29 localizedDescription];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v29;
      v37 = v36;

      v38 = sub_100004C50(v34, v37, &v47);
      v29 = v35;

      *(v23 + 4) = v38;
      sub_1000B65B4(&_mh_execute_header, v39, v40, "Failed to acquire assertions: %s");
      sub_100012908();
      sub_1000036AC();
      sub_100012770();
    }

    v41 = sub_1000B6374();
    v42(v41);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v43 = objc_allocWithZone(NSError);
    sub_100004F30();
    sub_100013A10();

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000A90A4()
{
  sub_100004DF0();
  sub_100018BB4(v4, v5, v6, v7, v8, v9);
  v10 = sub_100018AD4(__stack_chk_guard);
  v11 = sub_100002944(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100005284();
  sub_1000B6590(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v33 || (v14 = objc_opt_self(), v0 = sub_1000B65EC(v14), v15 = [v0 isApplication], v0, !v15))
  {
    sub_100019D60();
    sub_100018774();
    v3();
    if (v1)
    {

LABEL_26:
      sub_1000248C0();
      sub_100004674();
      return;
    }

LABEL_10:
    sub_1000113FC();

    goto LABEL_26;
  }

  v16 = [objc_opt_self() *(v2 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v17 + 32) = sub_100002C28();
  v18 = objc_allocWithZone(RBSAssertion);
  sub_1000088E4();
  sub_1000B645C();
  v50[0] = 0;
  v47 = sub_1000B2D18(v19, v20, v21);
  v22 = [v47 acquireWithError:v50];
  v23 = v50[0];
  if (v22)
  {
    v24 = v50[0];
    sub_100019D60();
    sub_100018774();
    v3();
    sub_10000C0D0();
    if (v1)
    {
      v26 = v47;
      [v47 *(v25 + 3536)];
      goto LABEL_12;
    }

    [v47 *(v25 + 3536)];

    goto LABEL_10;
  }

  v27 = v50[0];
  sub_1000B63E4();
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v26 = v47;
LABEL_12:
  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_10001115C();
  if (!sub_100016CD8())
  {
LABEL_24:

    goto LABEL_25;
  }

  v28 = [v49 domain];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v33 = v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32;
  if (v33)
  {
  }

  else
  {
    sub_10001D3C8();
    sub_1000B65D4();

    if ((v28 & 1) == 0)
    {

LABEL_25:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_100018D28();

    Logger.init(_:)();
    v34 = v49;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (sub_1000B64B4())
    {
      sub_100007764();
      v37 = sub_100013148();
      sub_1000B6564(v37);
      *v29 = 136315138;
      v38 = [v34 localizedDescription];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v34;
      v42 = v41;

      v43 = sub_100004C50(v39, v42, &v51);
      v34 = v40;

      *(v29 + 4) = v43;
      sub_1000B64F0(&_mh_execute_header, v35, v36, "Failed to acquire assertions: %s");
      sub_100012908();
      v26 = v47;
      sub_1000036AC();
      sub_1000105CC();
    }

    v44 = sub_1000B6374();
    v45(v44);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v46 = objc_allocWithZone(NSError);
    sub_100004F30();
    sub_100013A10();

    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000A967C()
{
  sub_100004DF0();
  v55 = v1;
  v3 = v2;
  v57 = v4;
  v5 = sub_100018AD4(__stack_chk_guard);
  v6 = sub_100002944(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100005284();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v31 || (v9 = [objc_opt_self() currentProcess], v10 = objc_msgSend(v9, "isApplication"), v9, !v10))
  {
    v22 = *&v57[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];

    v23 = sub_100017FA0();
    v3(v23);
    if (v0)
    {

LABEL_13:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    if (v24)
    {
    }

    else
    {
      v33 = sub_100017FA0();
      v55(v33);
      v50 = v34;

      if (!v50)
      {
        goto LABEL_12;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v54 = v5;
  v11 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v12 + 32) = sub_100002C28();
  v13 = objc_allocWithZone(RBSAssertion);
  v14 = sub_100012090();
  v16 = sub_1000B2D18(v14, v15, v11);
  v59 = 0;
  if ([v16 acquireWithError:&v59])
  {
    v17 = v57;
    v18 = *&v57[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v19 = v59;

    v20 = sub_100017FA0();
    v3(v20);
    if (v0)
    {

      [v16 invalidate];
      goto LABEL_15;
    }

    if (v21)
    {
    }

    else
    {
      v51 = sub_100017FA0();
      v55(v51);
      v53 = v52;

      if (!v53)
      {
        goto LABEL_32;
      }
    }

LABEL_32:
    [v16 invalidate];

    goto LABEL_12;
  }

  v25 = v59;
  sub_100018D28();
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v17 = v57;
LABEL_15:
  sub_1000B6480();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_100009A40();
  if (!sub_100016CD8())
  {

    goto LABEL_13;
  }

  v26 = [v58 domain];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v31 = v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30;
  if (v31)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {

      goto LABEL_13;
    }
  }

  v35 = getLNLogCategoryMetadata();
  if (v35)
  {
    v36 = v35;

    Logger.init(_:)();
    v37 = v58;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (sub_100010424())
    {
      v40 = sub_100007764();
      v56 = v16;
      v41 = sub_1000056E4();
      v60 = v41;
      *v40 = 136315138;
      v42 = [v37 localizedDescription];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v36 = sub_100004C50(v43, v45, &v60);

      *(v40 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to acquire assertions: %s", v40, 0xCu);
      sub_1000034F8(v41);
      v16 = v56;
      sub_1000036AC();
      sub_1000036AC();
    }

    v46 = sub_1000B6374();
    v47(v46);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10002879C();
    v48 = objc_allocWithZone(NSError);
    v49 = sub_1000079EC();
    sub_1000B6340(v49, v36);
    sub_100013A10();

    goto LABEL_13;
  }

  __break(1u);
}

void sub_1000A9CF4()
{
  sub_100004DF0();
  sub_1000B63BC();
  v2 = type metadata accessor for Logger();
  v3 = sub_100002944(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100003B7C();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v30 || (v6 = [objc_opt_self() currentProcess], v7 = objc_msgSend(v6, "isApplication"), v6, !v7))
  {
    v19 = *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    if (qword_100198450 != -1)
    {
      sub_100007FFC();
    }

    memcpy(v54, &unk_10019C518, 0xB0uLL);
    v52 = &type metadata for Table;
    v53 = &protocol witness table for Table;
    v51[0] = swift_allocObject();
    memcpy((v51[0] + 16), &unk_10019C518, 0xB0uLL);
    sub_1000196B0(v54, v50);
    v20 = sub_100111F6C(v51);
    if (!v0)
    {
      v21 = v20;
      sub_1000034F8(v51);
      KeyPath = swift_getKeyPath();
      v23 = swift_getKeyPath();
      v24 = swift_getKeyPath();
      sub_1000A1BD0(KeyPath, v23, v24, v21);

LABEL_30:
      sub_1000248C0();
      sub_100004674();
      return;
    }

    sub_1000034F8(v51);
LABEL_29:

    goto LABEL_30;
  }

  v8 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v9 + 32) = sub_100002C28();
  v10 = objc_allocWithZone(RBSAssertion);
  v11 = sub_10001AB30();
  v14 = sub_1000B2D18(v11, v12, v13);
  v54[0] = 0;
  if ([v14 acquireWithError:v54])
  {
    v15 = *&v1[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v9 = qword_100198450;
    v16 = v54[0];
    if (v9 != -1)
    {
      sub_100007FFC();
    }

    memcpy(v54, &unk_10019C518, 0xB0uLL);
    v52 = &type metadata for Table;
    v53 = &protocol witness table for Table;
    v51[0] = swift_allocObject();
    memcpy((v51[0] + 16), &unk_10019C518, 0xB0uLL);
    sub_1000196B0(v54, v50);
    v17 = sub_100111F6C(v51);
    v18 = v0;
    if (!v0)
    {
      v42 = v17;
      sub_1000034F8(v51);
      swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      v43 = sub_100011528();
      sub_1000A1BD0(v43, v44, v45, v42);
      sub_1000B6604();

      [v14 invalidate];

      goto LABEL_30;
    }

    sub_1000034F8(v51);
    [v14 invalidate];
  }

  else
  {
    v25 = v54[0];
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v54[0] = v18;
  swift_errorRetain();
  v26 = sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  if (!sub_1000B6508())
  {

    goto LABEL_28;
  }

  v49 = v14;
  v27 = v50[0];
  v28 = [v50[0] domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v30 = v30 && v9 == v29;
  if (v30)
  {
  }

  else
  {
    v26 = sub_100006AC4();

    if ((v26 & 1) == 0)
    {

LABEL_28:

      goto LABEL_29;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v31 = v27;
    v32 = sub_1000B6520();
    v33 = static os_log_type_t.error.getter();

    if (sub_1000B64B4())
    {
      sub_100007764();
      v47 = sub_100011A08();
      v51[0] = v47;
      *v28 = 136315138;
      v48 = v26;
      v34 = [v26 localizedDescription];
      v46 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_100004C50(v35, v37, v51);

      *(v28 + 1) = v38;
      v26 = v48;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v46);
      sub_1000034F8(v47);
      sub_1000036AC();
      sub_100012770();
    }

    v39 = sub_100018344();
    v40(v39, v2);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v41 = objc_allocWithZone(NSError);
    sub_100011870();
    sub_100013A10();

    goto LABEL_28;
  }

  __break(1u);
}

id sub_1000AA3EC(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for Logger();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v13 = [objc_opt_self() currentProcess], v14 = objc_msgSend(v13, "isApplication"), v13, !v14))
  {
    sub_1000B0748(a2, a5, &v56);
    if (v5)
    {
LABEL_24:

      return a2;
    }

    goto LABEL_8;
  }

  v51 = a2;
  v15 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v16 + 32) = sub_1000AB530();
  v17 = objc_allocWithZone(RBSAssertion);
  v18 = sub_1000B2D18(0xD000000000000010, 0x8000000100156700, v15);
  v55 = 0;
  if ([v18 acquireWithError:&v55])
  {
    v19 = v55;
    a2 = v51;
    sub_1000B0748(v51, a5, &v56);
    v20 = v5;
    if (v5)
    {
      [v18 invalidate];
      goto LABEL_10;
    }

    [v18 invalidate];

LABEL_8:
    a2 = v56;

    return a2;
  }

  v21 = v55;
  v20 = _convertNSErrorToError(_:)();

  swift_willThrow();
  a2 = v51;
LABEL_10:
  v55 = v20;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  if (!swift_dynamicCast())
  {

    goto LABEL_23;
  }

  v51 = v18;
  v22 = v54;
  v23 = [v54 domain];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {

LABEL_23:

      goto LABEL_24;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    Logger.init(_:)();
    v31 = v22;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v57 = v50;
      *v34 = 136315138;
      v35 = [v31 localizedDescription];
      HIDWORD(v49) = v33;
      v36 = v35;
      v37 = a2;
      v38 = v31;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v39;
      v31 = v38;
      a2 = v37;
      v43 = sub_100004C50(v42, v41, &v57);

      *(v34 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v32, BYTE4(v49), "Failed to acquire assertions: %s", v34, 0xCu);
      sub_1000034F8(v50);
    }

    (*(v52 + 8))(v12, v53);
    v44 = v51;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
    v48 = objc_allocWithZone(NSError);
    sub_1000B2C68(v45, v47, 9006, 0);
    swift_willThrow();

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

char *sub_1000AA9C0(uint64_t a1, char *a2, uint64_t a3, char *a4)
{
  v9 = type metadata accessor for Logger();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion) != 1 || (v13 = [objc_opt_self() currentProcess], v14 = objc_msgSend(v13, "isApplication"), v13, !v14))
  {
    v22 = *&a2[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    sub_100012C78(a3, a4, &v61);
    if (v4)
    {
LABEL_25:

      return v12;
    }

    if (v62)
    {
      v12 = v63;
      v55[0] = v61;
      v55[1] = v62;
      sub_10001D368(v55);
    }

    else
    {

      v12 = 0;
    }

    goto LABEL_30;
  }

  v51 = a4;
  v15 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v16 + 32) = sub_1000AB530();
  v17 = objc_allocWithZone(RBSAssertion);
  v18 = sub_1000B2D18(0xD000000000000010, 0x8000000100156700, v15);
  v54 = 0;
  if ([v18 acquireWithError:&v54])
  {
    v19 = *&a2[OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection];
    v20 = v54;
    sub_100012C78(a3, v51, &v58);
    v21 = v4;
    if (v4)
    {
      [v18 invalidate];
      goto LABEL_10;
    }

    if (v59)
    {
      v12 = v60;
      v56[0] = v58;
      v56[1] = v59;
      sub_10001D368(v56);
    }

    else
    {
      v12 = 0;
    }

    [v18 invalidate];

LABEL_30:

    return v12;
  }

  v23 = v54;
  v21 = _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_10:
  v54 = v21;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v51 = v18;
  v24 = v53;
  v25 = [v53 domain];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  result = getLNLogCategoryMetadata();
  if (result)
  {

    Logger.init(_:)();
    v33 = v24;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v57 = v49;
      *v36 = 136315138;
      v37 = [v33 localizedDescription];
      v50 = v33;
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      HIDWORD(v48) = v35;
      v40 = v39;
      v42 = v41;

      v43 = sub_100004C50(v40, v42, &v57);

      *(v36 + 4) = v43;
      v33 = v50;
      _os_log_impl(&_mh_execute_header, v34, BYTE4(v48), "Failed to acquire assertions: %s", v36, 0xCu);
      sub_1000034F8(v49);
    }

    (*(v52 + 8))(v12, v9);
    v12 = v51;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
    v47 = objc_allocWithZone(NSError);
    sub_1000B2C68(v44, v46, 9006, 0);
    swift_willThrow();

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_1000AB0B4()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  sub_1000046C8();
  v6 = sub_100018AD4(__stack_chk_guard);
  v7 = sub_100002944(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100003B7C();
  sub_10001A898(OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_requiresAssertion);
  if (!v26 || (v10 = [objc_opt_self() currentProcess], v11 = objc_msgSend(v10, "isApplication"), v10, !v11))
  {
    v21 = sub_10000E200();
    v3(v21, v5);
    if (v1)
    {
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_9;
  }

  v12 = [objc_opt_self() currentProcess];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v13 + 32) = sub_100002C28();
  v14 = objc_allocWithZone(RBSAssertion);
  v15 = sub_1000088E4();
  v17 = sub_1000B2D18(v15, v16, v12);
  v44 = 0;
  if ([v17 acquireWithError:&v44])
  {
    v18 = v44;
    v19 = sub_10000E200();
    v3(v19, v5);
    sub_10000C0D0();
    if (v1)
    {
      sub_100016D4C(v20);
      goto LABEL_11;
    }

    sub_100016D4C(v20);

LABEL_9:
    sub_1000113FC();
LABEL_28:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v22 = v44;
  sub_10000C920();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_100019AC8();
  v23 = sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_10001115C();
  if (!sub_1000B6508())
  {

    goto LABEL_26;
  }

  v42 = v17;
  v24 = [v43 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v26 = v26 && v1 == v25;
  if (v26)
  {
  }

  else
  {
    v23 = sub_100006AC4();

    if ((v23 & 1) == 0)
    {

LABEL_26:

      goto LABEL_27;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v27 = v43;
    v28 = sub_1000B6520();
    v29 = static os_log_type_t.error.getter();

    if (sub_1000B64B4())
    {
      sub_100007764();
      v30 = sub_100011A08();
      sub_10002131C(v30);
      *v24 = 136315138;
      v31 = v23;
      v32 = [v23 localizedDescription];
      v41 = v29;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_100004C50(v33, v35, &v45);

      *(v24 + 1) = v36;
      v23 = v31;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v41);
      sub_10001E11C();
      sub_100012770();

      v37 = sub_100018344();
    }

    else
    {

      v37 = sub_100018344();
      v38 = v6;
    }

    v39(v37, v38);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v40 = objc_allocWithZone(NSError);
    sub_100011870();
    sub_100013A10();

    goto LABEL_26;
  }

  __break(1u);
}

id sub_1000AB530()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = String._bridgeToObjectiveC()();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

void sub_1000AB644()
{
  sub_1000046A0();
  v1 = v0;
  v3 = _Block_copy(v2);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  _Block_copy(v3);
  v7 = v1;
  sub_1000A2170(v4, v6, v7, v3);

  _Block_release(v3);

  sub_100017F88();
}

id sub_1000AB7C0()
{
  sub_1000046A0();
  v6 = sub_10001D9E4();
  v7 = v1;
  v8 = sub_1000B6438();
  v9 = v4(v8);

  if (v6)
  {
    if (v0)
    {
      _convertErrorToNSError(_:)();
      sub_10001A5F8();

      v10 = v9;
      sub_10000E7EC();
    }

    else
    {
    }
  }

  else
  {
    sub_100003D44(0, v3, v2);
    Dictionary._bridgeToObjectiveC()();
    sub_10000D34C();
  }

  sub_100017F88();

  return v11;
}

uint64_t sub_1000ABA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_100017580(v31);
  if (a3)
  {
    v34 = v4;
    v9 = v32;
    v10 = v33;
    sub_1000034B4(v31, v32);
    if (qword_100198148 != -1)
    {
      swift_once();
    }

    *&v28 = a2;
    *(&v28 + 1) = a3;
    v11 = a2;
    v12 = == infix<A>(_:_:)();
    v14 = v13;
    v16 = v15;
    v29 = v9;
    v30 = v10;
    sub_100013234(&v28);
    v17 = v12;
    a2 = v11;
    QueryType.filter(_:)(v17, v14, v16, v9, v10);

    sub_1000034F8(v31);
    sub_10001A798(&v28, v31);
    v5 = v34;
  }

  v18 = sub_10001DF8C(v31);
  result = sub_1000034F8(v31);
  if (!v5)
  {
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();
    v22 = swift_getKeyPath();
    v23 = sub_1000A1138(KeyPath, v21, v22, v18);

    v24 = sub_1000921C4(a2, a3);
    v25 = sub_1000ABCAC(v24);
    v26 = sub_1000ABF38(v25, v23);

    *a4 = v26;
  }

  return result;
}

void *sub_1000ABCAC(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v34 = *(a1 + 16);
  for (i = (a1 + 72); ; i += 6)
  {
    if (v34 == v2)
    {

      return _swiftEmptyDictionarySingleton;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v5 = *(i - 5);
    v4 = *(i - 4);
    v6 = *(i - 2);
    v35 = v2;
    v36 = *(i - 3);
    v7 = *i;
    v37 = *(i - 1);
    swift_bridgeObjectRetain_n();

    v9 = sub_10000C2A0(v5, v4);
    v10 = _swiftEmptyDictionarySingleton[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_19;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      sub_100047038(v12, 1);
      v14 = sub_10000C2A0(v5, v4);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_21;
      }

      v9 = v14;
    }

    if (v13)
    {

      v16 = _swiftEmptyDictionarySingleton[7];
      v17 = *(v16 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v9) = v17;
      v32 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = *(v17 + 16);
        sub_100070AF0();
        v17 = v29;
        *(v16 + 8 * v9) = v29;
      }

      v19 = *(v17 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v17 + 24) >> 1)
      {
        sub_100070AF0();
        v20 = v19 + 1;
        v17 = v30;
        *(v32 + 8 * v9) = v30;
      }

      *(v17 + 16) = v20;
      v21 = (v17 + 48 * v19);
      v21[4] = v5;
      v21[5] = v4;
      v22 = v35;
      v21[6] = v36;
      v21[7] = v6;
      v21[8] = v37;
      v21[9] = v7;
      v1 = a1;
    }

    else
    {
      sub_10002EB80(&unk_10019B4E0, &qword_10014F260);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10014CE90;
      *(v23 + 32) = v5;
      *(v23 + 40) = v4;
      *(v23 + 48) = v36;
      *(v23 + 56) = v6;
      *(v23 + 64) = v37;
      *(v23 + 72) = v7;
      _swiftEmptyDictionarySingleton[(v9 >> 6) + 8] |= 1 << v9;
      v24 = (_swiftEmptyDictionarySingleton[6] + 16 * v9);
      *v24 = v5;
      v24[1] = v4;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v9) = v23;
      v25 = _swiftEmptyDictionarySingleton[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_20;
      }

      _swiftEmptyDictionarySingleton[2] = v27;
      v22 = v35;
    }

    v2 = v22 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000ABF38(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptyDictionarySingleton;
  v55 = a1;
LABEL_4:
  while (2)
  {
    while (2)
    {
      v10 = v8;
      v56 = v9;
      if (!v6)
      {
        goto LABEL_6;
      }

      while (1)
      {
        v8 = v10;
        v11 = __clz(__rbit64(v6)) | (v8 << 6);
        v12 = (*(a2 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        v15 = *(*(a2 + 56) + 8 * v11);
        v16 = *(a1 + 16);

        if (!v16)
        {
          goto LABEL_12;
        }

LABEL_9:
        v17 = sub_1000106AC();
        v19 = sub_10000C2A0(v17, v18);
        if (v20)
        {
          v21 = *(*(a1 + 56) + 8 * v19);

          sub_1000B129C(v22);
        }

        else
        {
LABEL_12:
          sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
          sub_100084294(&qword_10019ABB0, &qword_100199040, LNSystemProtocol_ptr);

          Dictionary.init(dictionaryLiteral:)();
        }

        v6 &= v6 - 1;
        v23 = objc_allocWithZone(LNBundleActionsMetadata);
        v24 = sub_1000B2E4C();
        if (v24)
        {
          break;
        }

        v25 = sub_1000106AC();
        v9 = v56;
        v27 = sub_10000C2A0(v25, v26);
        if (v28)
        {
          v41 = v27;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = v56[3];
          sub_10002EB80(&qword_10019B4D0, &qword_1001507C8);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43);
          v9 = v56;
          v44 = *(v56[6] + 16 * v41 + 8);

          v45 = *(v56[7] + 8 * v41);
          sub_100003D44(0, &unk_10019ABA0, LNBundleActionsMetadata_ptr);
          _NativeDictionary._delete(at:)();

          a1 = v55;
          goto LABEL_4;
        }

        v10 = v8;
        a1 = v55;
        if (!v6)
        {
LABEL_6:
          while (1)
          {
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v8 >= v7)
            {

              return v9;
            }

            v6 = *(v3 + 8 * v8);
            ++v10;
            if (v6)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          goto LABEL_29;
        }
      }

      v29 = v24;
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      v59 = v56;
      v30 = sub_1000106AC();
      v53 = sub_10000C2A0(v30, v31);
      v32 = v56[2];
      v57 = v33;
      v34 = (v33 & 1) == 0;
      v35 = v32 + v34;
      if (__OFADD__(v32, v34))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      sub_10002EB80(&qword_10019B4D0, &qword_1001507C8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v35))
      {
        v36 = sub_1000106AC();
        v38 = sub_10000C2A0(v36, v37);
        v40 = v57;
        if ((v57 & 1) != (v39 & 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v38 = v53;
        v40 = v57;
      }

      if (v40)
      {
        v46 = v59[7];
        v47 = *(v46 + 8 * v38);
        *(v46 + 8 * v38) = v29;

        a1 = v55;
        v9 = v59;
        continue;
      }

      break;
    }

    v59[(v38 >> 6) + 8] |= 1 << v38;
    v48 = (v59[6] + 16 * v38);
    *v48 = v13;
    v48[1] = v14;
    *(v59[7] + 8 * v38) = v29;
    v49 = v59[2];
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (!v50)
    {
      v9 = v59;
      v59[2] = v51;

      a1 = v55;
      continue;
    }

    break;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000AC480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v38 = a6;
  v41 = type metadata accessor for LNActionRecord();
  v12 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002EB80(&qword_100199EE0, &qword_1001507C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v35 - v20;
  result = sub_100028F9C(a2, a3, a4, a5, *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection));
  if (!v6)
  {
    v36._countAndFlagsBits = a4;
    v36._object = a5;
    v37._countAndFlagsBits = a2;
    v37._object = a3;
    sub_100065300(result);

    sub_100009F38();
    v23 = v41;
    if (sub_1000032C4(v19, 1, v41) == 1)
    {
      sub_1000B6240(v19, &qword_100199EE0);
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      sub_10002EB80(&qword_10019B0D0, &unk_100150350);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014CE90;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v28;
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v39 = 0xD000000000000020;
      v40 = 0x80000001001567A0;
      String.append(_:)(v36);
      v29._countAndFlagsBits = 0x646E7562206E6920;
      v29._object = 0xEC000000203A656CLL;
      String.append(_:)(v29);
      String.append(_:)(v37);
      v30 = v39;
      v31 = v40;
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v30;
      *(inited + 56) = v31;
      v32 = Dictionary.init(dictionaryLiteral:)();
      v33 = objc_allocWithZone(NSError);
      sub_1000B2C68(v24, v26, 9004, v32);
      swift_willThrow();
      return sub_1000B6240(v21, &qword_100199EE0);
    }

    else
    {
      sub_1000B6240(v21, &qword_100199EE0);
      sub_1000B5FF4();
      v34 = *&v14[*(v23 + 24)];
      result = sub_10001E9DC(v14, type metadata accessor for LNActionRecord);
      *v38 = v34;
    }
  }

  return result;
}

uint64_t sub_1000AC804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v36 = a6;
  v11 = sub_10002EB80(&qword_100199EE0, &qword_1001507C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  __chkstk_darwin(v18);
  v20 = &v33 - v19;
  v21 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);

  v22 = v37;
  v23 = sub_100028F9C(a2, a3, a4, a5, v21);
  v37 = v22;
  if (v22)
  {
  }

  v34 = v14;
  v35 = v20;
  sub_100065300(v23);

  v25 = type metadata accessor for LNActionRecord();
  if (sub_1000032C4(v17, 1, v25) == 1)
  {
    v28 = v35;
    v29 = v37;
    sub_1000638E0(a2, a3, a4, a5, v21, v26, v27, v35);
    if (v29)
    {

      result = sub_1000032C4(v17, 1, v25);
      if (result != 1)
      {
        return sub_1000B6240(v17, &qword_100199EE0);
      }

      return result;
    }

    if (sub_1000032C4(v17, 1, v25) != 1)
    {
      sub_1000B6240(v17, &qword_100199EE0);
    }
  }

  else
  {

    v28 = v35;
    sub_1000B5FF4();
    sub_1000075C4(v28, 0, 1, v25);
  }

  v30 = v28;
  v31 = v34;
  sub_1000B6294(v30, v34);
  if (sub_1000032C4(v31, 1, v25) == 1)
  {
    result = sub_1000B6240(v31, &qword_100199EE0);
    v32 = 0;
  }

  else
  {
    v32 = *(v31 + *(v25 + 24));
    result = sub_10001E9DC(v31, type metadata accessor for LNActionRecord);
  }

  *v36 = v32;
  return result;
}

uint64_t sub_1000ACAF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v13 = type metadata accessor for LNActionRecord();
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  __chkstk_darwin(v13 - 8);
  v65 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v78 = &v59 - v17;
  v18 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  inited = swift_initStackObject();
  inited[1] = xmmword_10014CE80;
  *(inited + 4) = a2;
  if (!sub_1000232FC(inited))
  {
    swift_setDeallocating();
    v36 = a2;
    sub_1000B3138();
    v27 = &_swiftEmptySetSingleton;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_100064440(v27, v18, v21, v22, v23, v24, v25, v26, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, *(&v69 + 1), v70, v71, v72, v73[0], v73[1], v73[2], v74, v75, v76, v77);
    if (!v6)
    {
      v27 = v37;
      v60 = 0;
      v61 = a6;
      goto LABEL_11;
    }
  }

  v20 = a2;
  v27 = sub_1000B5720(inited);
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_3:
  v68 = v6;
  v61 = a6;
  sub_100017580(v73);
  v28 = v74;
  inited = v75;
  sub_1000034B4(v73, v74);
  if (qword_100198148 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    *&v69 = a3;
    *(&v69 + 1) = a4;
    v29 = == infix<A>(_:_:)();
    v31 = v30;
    a3 = v32;
    v71 = v28;
    v72 = inited;
    sub_100013234(&v69);
    QueryType.filter(_:)(v29, v31, a3, v28, inited);

    sub_1000034F8(v73);
    sub_10001A798(&v69, v73);
    v33 = v68;
    v34 = sub_10001DF8C(v73);
    if (v33)
    {
      break;
    }

    a4 = v34;
    v60 = 0;
    sub_1000034F8(v73);
    sub_100063EA0(v27, 2, a4);
    v27 = v38;

LABEL_11:

    v39 = 0;
    v63 = v27[2];
    v28 = _swiftEmptyArrayStorage;
    v62 = v27;
    while (1)
    {
LABEL_12:
      if (v39 == v63)
      {

        KeyPath = swift_getKeyPath();
        v56 = swift_getKeyPath();
        v57 = swift_getKeyPath();
        v58 = sub_1000A1138(KeyPath, v56, v57, v28);

        *v61 = v58;
        return result;
      }

      if (v39 >= v27[2])
      {
        break;
      }

      v40 = *(v64 + 72);
      v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v68 = v39 + 1;
      v66 = v40;
      sub_10001E984();
      v41 = 1 << *(a5 + 32);
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v43 = v42 & *(a5 + 64);
      v27 = ((v41 + 63) >> 6);

      v44 = 0;
      while (v43)
      {
        v45 = v44;
LABEL_24:
        v46 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v47 = v46 | (v45 << 6);
        v48 = (*(a5 + 48) + 16 * v47);
        v49 = *v48;
        a3 = v48[1];
        v50 = *(*(a5 + 56) + 8 * v47);

        inited = v50;
        sub_1000AD0C0(v49, a3, inited, v78);
        a4 = v51;

        if ((a4 & 1) == 0)
        {

          sub_10001E9DC(v78, type metadata accessor for LNActionRecord);
          v39 = v68;
          v27 = v62;
          goto LABEL_12;
        }
      }

      while (1)
      {
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
          goto LABEL_33;
        }

        if (v45 >= v27)
        {
          break;
        }

        v43 = *(a5 + 64 + 8 * v45);
        ++v44;
        if (v43)
        {
          v44 = v45;
          goto LABEL_24;
        }
      }

      sub_1000B5FF4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000B35D4(0, v28[2] + 1, 1);
        v28 = v73[0];
      }

      v27 = v62;
      v54 = v28[2];
      v53 = v28[3];
      a4 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        sub_1000B35D4(v53 > 1, v54 + 1, 1);
        v28 = v73[0];
      }

      v28[2] = a4;
      sub_1000B5FF4();
      v39 = v68;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  return sub_1000034F8(v73);
}

void sub_1000AD0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a4 + *(type metadata accessor for LNActionRecord() + 24)) parameters];
  sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1000232FC(v7);
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
LABEL_18:

      return;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = sub_1000237B0(v10);
    if (!v13)
    {
      goto LABEL_13;
    }

    if (v12 == a1 && v13 == a2)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
LABEL_13:

        continue;
      }
    }

    sub_100003D44(0, &qword_100199300, NSObject_ptr);
    v16 = [v11 valueType];
    v17 = static NSObject.== infix(_:_:)();

    if (v17)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1000AD400(char *a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_10019BB70, &qword_10014F850);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v108 - v6;
  v8 = type metadata accessor for LNActionRecord();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1001982F8 != -1)
  {
LABEL_52:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000347C(v13, qword_10019E020);

  v120 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = sub_1000232F4(a2);

    *(v17 + 12) = 2048;
    *(v17 + 14) = *(a1 + 2);

    _os_log_impl(&_mh_execute_header, v15, v16, "Received request for %ld actions but found %ld, running diagnostic", v17, 0x16u);
  }

  else
  {
  }

  v114 = v7;
  v18 = *(a1 + 2);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v121 = a2;
    v124[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v20 = &a1[(*(v9 + 80) + 32) & ~*(v9 + 80)];
    v21 = *(v9 + 72);
    do
    {
      sub_10001E984();
      v22 = [*(&v12->flags + *(v8 + 24)) identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = *&v12->flags;
      v24 = *&v12->ivar_base_size;
      v25 = objc_allocWithZone(LNFullyQualifiedActionIdentifier);

      sub_10006500C();
      sub_10001E9DC(v12, type metadata accessor for LNActionRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v26 = *(v124[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v20 += v21;
      --v18;
    }

    while (v18);
    v19 = v124[0];
  }

  sub_1000C2D60(v27);
  v29 = v28;
  sub_1000C2D60(v19);
  a2 = sub_1000C5408(v30, v29);

  v7 = 0;
  sub_1000A08E4(a2);
  a1 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v124[0] = v35;
    *v34 = 136446210;
    v123[0] = a1;
    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    v36 = a2;
    sub_10009153C();
    v37 = BidirectionalCollection<>.joined(separator:)();
    v39 = v38;

    v40 = sub_100004C50(v37, v39, v124);
    a2 = v36;

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "Missing: %{public}s", v34, 0xCu);
    sub_1000034F8(v35);
  }

  else
  {
  }

  v123[2] = &_swiftEmptySetSingleton;
  if ((a2 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
    sub_100084294(&unk_10019BC40, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
    Set.Iterator.init(_cocoa:)();
    a2 = v124[0];
    v42 = v124[1];
    v43 = v124[2];
    v44 = v124[3];
    v9 = v124[4];
  }

  else
  {
    v44 = 0;
    v45 = -1 << *(a2 + 32);
    v42 = a2 + 56;
    v43 = ~v45;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v9 = v47 & *(a2 + 56);
  }

  v111 = v43;
  v48 = (v43 + 64) >> 6;
  v12 = &TableBuilder;
  *&v41 = 136446210;
  v113 = v41;
  *&v41 = 136446466;
  v112 = v41;
  v8 = v114;
  v115 = v48;
  v116 = v42;
  v117 = a2;
  while ((a2 & 0x8000000000000000) == 0)
  {
    v49 = v44;
    v50 = v9;
    if (!v9)
    {
      while (1)
      {
        v44 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v44 >= v48)
        {
          goto LABEL_50;
        }

        v50 = *(v42 + 8 * v44);
        ++v49;
        if (v50)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_24:
    v121 = (v50 - 1) & v50;
    v51 = *(*(a2 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v50)))));
    if (!v51)
    {
      goto LABEL_50;
    }

LABEL_28:
    v53 = *(v118 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
    v54 = [v51 v12[30].base_props];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100109F48();
    if (v7)
    {

      v55 = type metadata accessor for LNBundleRecord();
      sub_1000075C4(v8, 1, 1, v55);
      v7 = 0;
    }

    else
    {
    }

    v56 = [v51 v12[30].base_props];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100027678();

    v57 = type metadata accessor for LNBundleRecord();
    LODWORD(v56) = sub_1000032C4(v8, 1, v57);
    v58 = v51;
    v59 = Logger.logObject.getter();
    a1 = static os_log_type_t.default.getter();

    v60 = os_log_type_enabled(v59, a1);
    if (v56 == 1)
    {
      v119 = v58;
      if (v60)
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v123[0] = v62;
        *v61 = v113;
        v12 = &TableBuilder;
        v63 = [v58 bundleIdentifier];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67 = sub_100004C50(v64, v66, v123);

        *(v61 + 4) = v67;
        v58 = v119;
        _os_log_impl(&_mh_execute_header, v59, a1, "Bundle %{public}s is missing from linkd", v61, 0xCu);
        sub_1000034F8(v62);
      }

      else
      {

        v12 = &TableBuilder;
      }

      sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);
      v81 = [v58 bundleIdentifier];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v85 = sub_1000FEC40(v82, v84, 1);
      v95 = v85;
      if (v85)
      {
        v96 = v119;
        v97 = v95;
        v86 = Logger.logObject.getter();
        v98 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v86, v98))
        {
          v99 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v123[0] = v110;
          *v99 = v112;
          v100 = [v96 bundleIdentifier];
          v119 = v96;
          v101 = v100;
          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v103;

          v104 = sub_100004C50(v102, a1, v123);

          *(v99 + 4) = v104;
          *(v99 + 12) = 2114;
          *(v99 + 14) = v97;
          v105 = v109;
          *v109 = v95;
          v106 = v97;
          _os_log_impl(&_mh_execute_header, v86, v98, "Bundle %{public}s has LS record %{public}@", v99, 0x16u);
          sub_1000B6240(v105, &unk_10019A260);

          sub_1000034F8(v110);

          v12 = &TableBuilder;

          goto LABEL_47;
        }
      }

      else
      {
        a1 = v119;
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v123[0] = v89;
          *v88 = v113;
          v90 = [a1 bundleIdentifier];
          v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = v92;

          v94 = sub_100004C50(v91, v93, v123);
          v12 = &TableBuilder;

          *(v88 + 4) = v94;
          _os_log_impl(&_mh_execute_header, v86, v87, "Bundle %{public}s has no LS Record", v88, 0xCu);
          sub_1000034F8(v89);

LABEL_47:
          v8 = v114;
          goto LABEL_48;
        }
      }

      goto LABEL_47;
    }

    if (!v60)
    {

      v42 = v116;
      a2 = v117;
      v48 = v115;
      v12 = &TableBuilder;
      goto LABEL_49;
    }

    v68 = swift_slowAlloc();
    v123[0] = swift_slowAlloc();
    *v68 = v112;
    v12 = &TableBuilder;
    v69 = [v58 bundleIdentifier];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = 0;
    v71 = v58;
    v72 = v70;
    v74 = v73;

    v75 = sub_100004C50(v72, v74, v123);

    *(v68 + 4) = v75;
    *(v68 + 12) = 2082;
    v76 = [v71 actionIdentifier];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    v80 = sub_100004C50(v77, v79, v123);
    v8 = v114;

    *(v68 + 14) = v80;
    _os_log_impl(&_mh_execute_header, v59, a1, "Bundle %{public}s exists, action %{public}s is missing", v68, 0x16u);
    swift_arrayDestroy();

    v7 = v119;
LABEL_48:
    v42 = v116;
    a2 = v117;
    v48 = v115;
LABEL_49:
    v9 = v121;
    sub_1000B6240(v8, &qword_10019BB70);
  }

  v52 = __CocoaSet.Iterator.next()();
  if (v52)
  {
    v122 = v52;
    sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
    swift_dynamicCast();
    v51 = v123[0];
    v121 = v9;
    if (v123[0])
    {
      goto LABEL_28;
    }
  }

LABEL_50:

  return sub_100014464();
}

void *sub_1000AE23C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v59 = a5;
  v52 = a4;
  v11 = type metadata accessor for LNActionRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v48 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE80;
  *(inited + 32) = [objc_opt_self() openEntitySystemProtocol];
  v20 = sub_1000232FC(inited);
  v47 = a6;
  v51 = v6;
  if (v20)
  {
    v50 = sub_1000B5720(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1000B3138();
    v50 = &_swiftEmptySetSingleton;
  }

  sub_100017580(v56);
  v21 = v57;
  v22 = v58;
  sub_1000034B4(v56, v57);
  v49 = v18;
  if (qword_100198148 != -1)
  {
LABEL_22:
    swift_once();
  }

  *&v53 = a2;
  *(&v53 + 1) = a3;
  v46 = a3;
  a3 = a2;
  v23 = == infix<A>(_:_:)();
  v25 = v24;
  v27 = v26;
  v54 = v21;
  v55 = v22;
  sub_100013234(&v53);
  QueryType.filter(_:)(v23, v25, v27, v21, v22);

  sub_1000034F8(v56);
  sub_10001A798(&v53, v56);
  v28 = v51;
  v29 = sub_10001DF8C(v56);
  if (v28)
  {

    return sub_1000034F8(v56);
  }

  else
  {
    v31 = v29;
    v51 = a3;
    sub_1000034F8(v56);
    sub_100063EA0(v50, 2, v31);
    v33 = v32;

    v22 = 0;
    a2 = *(v33 + 16);
    v21 = _swiftEmptyArrayStorage;
    while (a2 != v22)
    {
      if (v22 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      a3 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v34 = *(v12 + 72);
      sub_10001E984();
      sub_1000AE75C(v17, v52, v59);
      if (v35)
      {
        sub_1000B5FF4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56[0] = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000B35D4(0, v21[2] + 1, 1);
          v21 = v56[0];
        }

        v38 = v21[2];
        v37 = v21[3];
        v39 = (v38 + 1);
        if (v38 >= v37 >> 1)
        {
          v49 = v21[2];
          v50 = (v38 + 1);
          sub_1000B35D4(v37 > 1, v38 + 1, 1);
          v39 = v50;
          v21 = v56[0];
        }

        ++v22;
        v21[2] = v39;
        sub_1000B5FF4();
      }

      else
      {
        sub_10001E9DC(v17, type metadata accessor for LNActionRecord);
        ++v22;
      }
    }

    KeyPath = swift_getKeyPath();
    v41 = swift_getKeyPath();
    v42 = swift_getKeyPath();
    v43 = sub_1000A1138(KeyPath, v41, v42, v21);

    v44 = sub_1000A0FE0(v51, v46, v43);

    if (v44)
    {
      result = sub_1000A1FC8(v44);
    }

    else
    {
      result = _swiftEmptyArrayStorage;
    }

    *v47 = result;
  }

  return result;
}

void sub_1000AE75C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v37 = a3;
  v36 = a2;
  v3 = [*(a1 + *(type metadata accessor for LNActionRecord() + 24)) parameters];
  sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1000232FC(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v9 = sub_1000237B0(v7);
    if (v10)
    {
      break;
    }

LABEL_13:
  }

  if (v9 != 0x746567726174 || v10 != 0xE600000000000000)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_17:

  v13 = [v8 valueType];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = &selRef_identifier;
LABEL_21:
    v16 = [v14 *v15];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 != v36 || v19 != v37)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = &selRef_enumerationIdentifier;
    goto LABEL_21;
  }

  v21 = [v8 valueType];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v35 = v21;
    sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10014DD60;
    sub_100003D44(0, &unk_10019B460, LNEntityValueType_ptr);

    *(v24 + 32) = sub_1000AEC0C();
    sub_100003D44(0, &qword_10019AE40, LNLinkEnumerationValueType_ptr);

    *(v24 + 40) = sub_1000954A4();
    v25 = [v23 memberValueTypes];
    sub_100003D44(0, &unk_10019BBF0, LNValueType_ptr);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = sub_1000232FC(v26);
    v36 = v26 & 0xC000000000000001;
    v37 = v26;
    v28 = v24;

    v29 = 0;
    do
    {
      if (v27 == v29)
      {
        break;
      }

      if (v36)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v30 = *(v37 + 8 * v29 + 32);
      }

      v31 = v30;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_42;
      }

      v39 = v30;
      __chkstk_darwin(v30);
      v34[2] = &v39;
      v32 = v38;
      v33 = sub_100057384(sub_1000B6174, v34, v28);
      v38 = v32;

      ++v29;
    }

    while ((v33 & 1) == 0);

    swift_bridgeObjectRelease_n();
  }

  else
  {
  }
}

id sub_1000AEC0C()
{
  sub_10000D34C();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10001A5F8();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithIdentifier:v2];

  return v3;
}

id sub_1000AEC90()
{
  sub_1000046A0();
  sub_100012B70();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v1;
  v5 = sub_1000132DC();
  v6 = v2(v5);

  if (v1)
  {
    if (v0)
    {
      _convertErrorToNSError(_:)();
      sub_10001A5F8();

      v7 = v6;
      sub_10000E7EC();
    }

    else
    {
    }
  }

  else
  {
    sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
    sub_10001AAC8();
    Array._bridgeToObjectiveC()();
    sub_10000D34C();
  }

  sub_100017F88();

  return v8;
}

uint64_t sub_1000AEEA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for LNBundleRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100109A8C(*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection), v8);
  if (!v2)
  {
    v12 = result;
    v13 = *(result + 16);
    if (v13)
    {
      v23[2] = 0;
      v24 = a2;
      v25 = _swiftEmptyArrayStorage;
      sub_100011438(0, v13, 0);
      v14 = v25;
      v15 = *(v6 + 80);
      v23[1] = v12;
      v16 = v12 + ((v15 + 32) & ~v15);
      v17 = *(v6 + 72);
      do
      {
        sub_10001E984();
        v18 = *v10;
        v19 = v10[1];

        sub_10001E9DC(v10, type metadata accessor for LNBundleRecord);
        v25 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          sub_100011438(v20 > 1, v21 + 1, 1);
          v14 = v25;
        }

        v14[2] = v21 + 1;
        v22 = &v14[2 * v21];
        v22[4] = v18;
        v22[5] = v19;
        v16 += v17;
        --v13;
      }

      while (v13);

      a2 = v24;
    }

    else
    {

      v14 = _swiftEmptyArrayStorage;
    }

    *a2 = v14;
  }

  return result;
}

uint64_t sub_1000AF148@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for LNBundleRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100109A8C(*(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection), v8);
  if (!v2)
  {
    v12 = result;
    v13 = *(result + 16);
    if (v13)
    {
      v26[1] = 0;
      v27 = a2;
      v29 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v14 = *(v6 + 80);
      v26[0] = v12;
      v15 = v12 + ((v14 + 32) & ~v14);
      v28 = *(v6 + 72);
      do
      {
        sub_10001E984();
        v16 = *v10;
        v17 = v10[1];
        v18 = (v10 + *(v5 + 24));
        v19 = v5;
        v20 = *v18;
        v21 = v18[1];
        v22 = objc_allocWithZone(LNRegisteredBundleMetadata);

        sub_1000098F0(v20, v21);
        v23 = v21;
        v5 = v19;
        sub_1000B2DC0(v16, v17, v20, v23);
        sub_10001E9DC(v10, type metadata accessor for LNBundleRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = v29[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v15 += v28;
        --v13;
      }

      while (v13);

      v25 = v29;
      a2 = v27;
    }

    else
    {

      v25 = _swiftEmptyArrayStorage;
    }

    *a2 = v25;
  }

  return result;
}

uint64_t sub_1000AF434@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  if (qword_100198490 != -1)
  {
    swift_once();
  }

  memcpy(v14, &unk_10019C710, sizeof(v14));
  v13[3] = &type metadata for Table;
  v13[4] = &protocol witness table for Table;
  v13[0] = swift_allocObject();
  memcpy((v13[0] + 16), &unk_10019C710, 0xB0uLL);
  sub_1000196B0(v14, &v12);
  Connection.prepareRowIterator(_:)(v13);
  result = sub_1000034F8(v13);
  if (!v2)
  {
    __chkstk_darwin(result);

    RowIterator.compactMap<A>(_:)();
    v7 = v6;

    KeyPath = swift_getKeyPath();
    v9 = swift_getKeyPath();
    v10 = swift_getKeyPath();
    v11 = sub_1000A14E0(KeyPath, v9, v10, v7);

    *a2 = v11;
  }

  return result;
}

void sub_1000AF694(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_100115E08();
  if (!v2)
  {
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v8 = 48;
      do
      {
        v9 = *(v6 + v8);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 += 24;
        --v7;
      }

      while (v7);
    }

    *a2 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1000AF8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v12 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);

  sub_100116D80();
  if (v6)
  {
  }

  if (!v13)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    sub_10002EB80(&qword_10019B0D0, &unk_100150350);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v21;
    _StringGuts.grow(_:)(44);

    v22._countAndFlagsBits = a4;
    v22._object = a5;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 0x646E7562206E6920;
    v23._object = 0xEC000000203A656CLL;
    String.append(_:)(v23);
    v24._countAndFlagsBits = a2;
    v24._object = a3;
    String.append(_:)(v24);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD00000000000001CLL;
    *(inited + 56) = 0x8000000100156780;
    v25 = Dictionary.init(dictionaryLiteral:)();
    v26 = objc_allocWithZone(NSError);
    sub_1000B2C68(v17, v19, 9004, v25);
    swift_willThrow();
  }

  v16 = v14;

  *a6 = v16;
}

id sub_1000AFAE4()
{
  sub_1000046A0();
  sub_100012B70();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v1;
  v5 = sub_1000132DC();
  v2(v5);

  if (v1)
  {
    if (v0)
    {
      v6 = _convertErrorToNSError(_:)();

      v7 = v6;
      *v0 = v6;
    }

    else
    {
    }
  }

  sub_100017F88();

  return v8;
}

uint64_t sub_1000AFCC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  if (qword_100198470 != -1)
  {
    swift_once();
  }

  memcpy(v14, &unk_10019C610, sizeof(v14));
  v13[3] = &type metadata for Table;
  v13[4] = &protocol witness table for Table;
  v13[0] = swift_allocObject();
  memcpy((v13[0] + 16), &unk_10019C610, 0xB0uLL);
  sub_1000196B0(v14, &v12);
  Connection.prepareRowIterator(_:)(v13);
  result = sub_1000034F8(v13);
  if (!v2)
  {
    __chkstk_darwin(result);

    RowIterator.compactMap<A>(_:)();
    v7 = v6;

    KeyPath = swift_getKeyPath();
    v9 = swift_getKeyPath();
    v10 = swift_getKeyPath();
    v11 = sub_1000A1858(KeyPath, v9, v10, v7);

    *a2 = v11;
  }

  return result;
}

id sub_1000AFF4C()
{
  sub_1000046A0();
  v6 = sub_10001D9E4();
  v7 = v1;
  v8 = sub_1000B6438();
  v9 = v4(v8);

  if (v6)
  {
    if (v0)
    {
      _convertErrorToNSError(_:)();
      sub_10001A5F8();

      v10 = v9;
      sub_10000E7EC();
    }

    else
    {
    }
  }

  else
  {
    sub_100003D44(0, v3, v2);
    sub_10001AAC8();
    Array._bridgeToObjectiveC()();
    sub_10000D34C();
  }

  sub_100017F88();

  return v11;
}

id sub_1000B0038()
{
  sub_1000046A0();
  v1 = v0;
  v3 = v2;
  v1();

  v4 = sub_10001209C();
  sub_10002EB80(v4, v5);
  Dictionary._bridgeToObjectiveC()();
  sub_10000D34C();

  sub_100017F88();

  return v6;
}

uint64_t sub_1000B010C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  if (qword_100198450 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_10019C518, sizeof(__dst));
  if (qword_100198458 != -1)
  {
    swift_once();
  }

  __src[0] = a2;
  v9 = == infix<A>(_:_:)();
  v11 = v10;
  v13 = v12;
  memcpy(v25, __dst, sizeof(v25));
  QueryType.filter(_:)(v9, v11, v13, &type metadata for Table, &protocol witness table for Table, v14, v15, v16, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19], v25[20], v25[21], __src[0], a3, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v28, __src, sizeof(v28));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v28, 0xB0uLL);
  v17 = sub_100111F6C(__src);
  result = sub_1000034F8(__src);
  if (!v4)
  {
    v19 = *(v17 + 16);
    if (v19)
    {
      __src[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v20 = 48;
      do
      {
        v21 = *(v17 + v20);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = *(__src[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 += 24;
        --v19;
      }

      while (v19);

      v23 = __src[0];
    }

    else
    {

      v23 = _swiftEmptyArrayStorage;
    }

    *a4 = v23;
  }

  return result;
}

uint64_t sub_1000B0390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);

  sub_10011159C();
  if (v6)
  {
  }

  v17 = v14;
  v18 = v15;
  v42 = a2;
  v43 = a6;
  if (v14)
  {
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v15;
  }

  else
  {
    v41 = v13;
    v23 = a3;
    v24 = a3;
    v25 = a4;
    v26 = a5;
    v27 = sub_100111820(v42, v24, a4, a5, v12);
    v20 = v29;
    if (!v29)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
      sub_10002EB80(&qword_10019B0D0, &unk_100150350);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014CE90;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v35;
      _StringGuts.grow(_:)(45);

      v36._countAndFlagsBits = v25;
      v36._object = v26;
      String.append(_:)(v36);
      v37._countAndFlagsBits = 0x646E7562206E6920;
      v37._object = 0xEC000000203A656CLL;
      String.append(_:)(v37);
      v38._countAndFlagsBits = v42;
      v38._object = v23;
      String.append(_:)(v38);
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = 0xD00000000000001DLL;
      *(inited + 56) = 0x8000000100156760;
      v39 = Dictionary.init(dictionaryLiteral:)();
      v40 = objc_allocWithZone(NSError);
      sub_1000B2C68(v31, v33, 9004, v39);
      swift_willThrow();
    }

    v19 = v27;
    v30 = v28;

    v21 = v30;
    v22 = v30;
    v13 = v41;
  }

  sub_1000B6194(v13, v17, v18);
  sub_1000B61D8(v19, v20, v21);

  *v43 = v22;
  return result;
}

id sub_1000B0654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a1;
  a5(v7, v9);

  Array._bridgeToObjectiveC()();
  sub_10000D34C();

  return 0;
}

void sub_1000B0748(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v7 = sub_10002EB80(&qword_10019BB70, &qword_10014F850);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_100109F48();
  if (!v3)
  {
    v12 = type metadata accessor for LNBundleRecord();
    if (sub_1000032C4(v10, 1, v12) == 1)
    {
      sub_1000B6240(v10, &qword_10019BB70);
      if (a2)
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
        v16 = objc_allocWithZone(NSError);
        v17 = sub_1000B2C68(v13, v15, 9004, 0);
        v18 = 0;
        *a2 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = *&v10[*(v12 + 32)];
      sub_10001E9DC(v10, type metadata accessor for LNBundleRecord);
    }

    *a3 = v18;
  }
}

uint64_t sub_1000B0A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_1000FE3F8(v26);
  v9 = v27;
  v10 = v28;
  sub_1000034B4(v26, v27);
  if (qword_100198378 != -1)
  {
    swift_once();
  }

  *&v23 = a2;
  *(&v23 + 1) = a3;
  v11 = == infix<A>(_:_:)();
  v13 = v12;
  v15 = v14;
  v24 = v9;
  v25 = v10;
  sub_100013234(&v23);
  QueryType.filter(_:)(v11, v13, v15, v9, v10);

  sub_1000034F8(v26);
  sub_10001A798(&v23, v26);
  v16 = sub_1000FE93C(v26);
  result = sub_1000034F8(v26);
  if (!v4)
  {
    v18 = *(v16 + 16);
    if (v18)
    {
      v26[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v19 = 48;
      do
      {
        v20 = *(v16 + v19);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v21 = *(v26[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v19 += 24;
        --v18;
      }

      while (v18);

      v22 = v26[0];
    }

    else
    {

      v22 = _swiftEmptyArrayStorage;
    }

    *a4 = v22;
  }

  return result;
}

void sub_1000B0C48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_10002D41C(a2);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = v7;
    if (qword_1001982F8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000347C(v9, qword_10019E020);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v52 = a3;
    v53 = isUniquelyReferenced_nonNull_native;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v56 = v13;
      *v12 = 134218242;
      *(v12 + 4) = *(isUniquelyReferenced_nonNull_native + 16);

      *(v12 + 12) = 2080;
      v14 = *(isUniquelyReferenced_nonNull_native + 16);
      if (v14)
      {
        v50 = v13;
        v51 = v11;
        v54 = v10;
        sub_100011438(0, v14, 0);
        v15 = (isUniquelyReferenced_nonNull_native + 40);
        do
        {
          v16 = *v15;
          v17 = *(v15 - 1);
          v18 = v16;
          v19 = [v18 phrase];
          v20 = [v19 key];

          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          v25 = _swiftEmptyArrayStorage[2];
          v24 = _swiftEmptyArrayStorage[3];
          if (v25 >= v24 >> 1)
          {
            sub_100011438(v24 > 1, v25 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v25 + 1;
          v26 = &_swiftEmptyArrayStorage[2 * v25];
          v26[4] = v21;
          v26[5] = v23;
          v15 += 2;
          --v14;
        }

        while (v14);
        isUniquelyReferenced_nonNull_native = v53;
        v10 = v54;
        v11 = v51;
        v13 = v50;
      }

      v27 = Array.description.getter();
      v29 = v28;

      a3 = sub_100004C50(v27, v29, &v56);

      *(v12 + 14) = a3;
      _os_log_impl(&_mh_execute_header, v10, v11, "retrieved - suggestionPhrases - count - %ld with template keys - %s", v12, 0x16u);
      sub_1000034F8(v13);
    }

    else
    {
    }

    v30 = 0;
    v31 = _swiftEmptyDictionarySingleton;
    v55 = *(isUniquelyReferenced_nonNull_native + 16);
    for (i = (isUniquelyReferenced_nonNull_native + 40); ; i += 2)
    {
      if (v55 == v30)
      {

        *v52 = v31;
        return;
      }

      if (v30 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v33 = *i;
      a3 = *(i - 1);
      v34 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v31;
      sub_100045BCC();
      v37 = v31[2];
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_29;
      }

      v40 = v35;
      v41 = v36;
      sub_10002EB80(&unk_10019B470, &unk_100150628);
      if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = sub_100003D44(0, &unk_10019AB30, LNAssistantSuggestionPhraseQuery_ptr);
      v31 = v56;
      sub_100045BCC();
      if ((v41 & 1) != (v43 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v40 = v42;
      if ((v41 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_23:
      v48 = (v31[7] + 8 * v40);
      v49 = v34;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      ++v30;
      isUniquelyReferenced_nonNull_native = v53;
    }

    v31 = v56;
    if (v41)
    {
      goto LABEL_23;
    }

LABEL_21:
    v31[(v40 >> 6) + 8] |= 1 << v40;
    *(v31[6] + 8 * v40) = a3;
    *(v31[7] + 8 * v40) = _swiftEmptyArrayStorage;
    v44 = v31[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_30;
    }

    v31[2] = v46;
    v47 = a3;
    goto LABEL_23;
  }
}

id _LNMetadataProviderDirect.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1000B129C(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 72;
  v3 = *(a1 + 16);
  v29 = a1 + 72;
  while (2)
  {
    for (i = (v2 + 48 * v1); ; i += 6)
    {
      if (v3 == v1)
      {
        return _swiftEmptyDictionarySingleton;
      }

      if (v1 >= v3)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (__OFADD__(v1, 1))
      {
        goto LABEL_19;
      }

      v30 = v1 + 1;
      v6 = *(i - 1);
      v5 = *i;
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 4);

      v10 = String._bridgeToObjectiveC()();
      v11 = [objc_opt_self() protocolOrNilWithIdentifier:v10];

      if (v11)
      {
        break;
      }

      ++v1;
    }

    isUnique = swift_isUniquelyReferenced_nonNull_native();
    sub_100045C10();
    v14 = _swiftEmptyDictionarySingleton[2];
    v15 = (v13 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      break;
    }

    v17 = v12;
    v18 = v13;
    sub_10002EB80(&qword_10019B4D8, &unk_1001507D0);
    if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v16))
    {
      goto LABEL_12;
    }

    sub_100045C10();
    if ((v18 & 1) == (v20 & 1))
    {
      v17 = v19;
LABEL_12:
      if (v18)
      {
        v21 = (_swiftEmptyDictionarySingleton[7] + 16 * v17);
        v22 = v21[1];
        *v21 = v6;
        v21[1] = v5;

LABEL_16:
        v2 = v29;
        v1 = v30;
        continue;
      }

      _swiftEmptyDictionarySingleton[(v17 >> 6) + 8] |= 1 << v17;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v17) = v11;
      v23 = (_swiftEmptyDictionarySingleton[7] + 16 * v17);
      *v23 = v6;
      v23[1] = v5;

      v24 = _swiftEmptyDictionarySingleton[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        _swiftEmptyDictionarySingleton[2] = v26;
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    break;
  }

  sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000B1500(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (**a6)(void, void, void))
{
  v15 = 0;
  v16 = 0;
  v11 = a5;

  sub_1000A5ACC(v11, v11, a1, a2, &v16, &v15, a3, a4);
  v12 = v15;
  if (v16)
  {
    sub_100003D44(0, &unk_10019B290, LNAutoShortcut_ptr);
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (v12)
    {
LABEL_3:
      v14 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v13.super.isa = 0;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  (a6)[2](a6, v13.super.isa, v14);

  _Block_release(a6);
}

uint64_t _LNMetadataProviderDirect.autoShortcuts(forBundleIdentifier:localeIdentifier:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v11 = v5;

  v12 = sub_1000186AC();
  v16 = sub_1000A5ACC(v12, v13, a1, a2, v14, v15, a3, a4);
  v24 = sub_1000B6570(v16, v17, v18, v19, v20, v21, v22, v23, v26, v27, 0, 0);
  a5(v24);
}

void sub_1000B17BC(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void, void))
{
  v11 = 0;
  v12 = 0;
  v7 = a3;

  sub_1000A649C(v7, v7, a1, a2, &v11, &v12);
  v8 = v11;
  if (v12)
  {
    sub_10002EB80(&unk_10019BBB0, &unk_10014E220);
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (v8)
    {
LABEL_3:
      v10 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v9.super.isa = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  (a4)[2](a4, v9.super.isa, v10);

  _Block_release(a4);
}

uint64_t _LNMetadataProviderDirect.autoShortcuts(forLocaleIdentifier:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = v3;
  sub_10001A5F8();

  v8 = sub_1000186AC();
  sub_1000A649C(v8, v9, a1, a2, v10, v11);
  v20 = sub_1000B6570(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, 0, 0);
  a3(v20);
}

uint64_t sub_1000B1990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_10004C5A8();
  if (v5)
  {

LABEL_3:
    v10 = type metadata accessor for MetadataError();
    sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, enum case for MetadataError.cacheLookupFailed(_:), v10);
    v13 = *a4;
    *a4 = v11;
  }

  v15 = v9;
  if (!v9)
  {
    goto LABEL_3;
  }

  v37 = a5;
  sub_10002EB80(&qword_10019B420, &qword_1001505F8);
  result = static _DictionaryStorage.copy(original:)();
  v16 = 0;
  v17 = v15 + 64;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v15 + 64);
  v21 = (v18 + 63) >> 6;
  v38 = result + 64;
  v39 = result;
  if (v20)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_14:
      v25 = v22 | (v16 << 6);
      v26 = v15;
      v27 = (*(v15 + 48) + 16 * v25);
      v28 = v27[1];
      v40 = *v27;
      v29 = *(*(v15 + 56) + 8 * v25);

      v30 = sub_10006AF24(1000, v29);

      result = v39;
      *(v38 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v31 = (v39[6] + 16 * v25);
      *v31 = v40;
      v31[1] = v28;
      *(v39[7] + 8 * v25) = v30;
      v32 = v39[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v39[2] = v34;
      v15 = v26;
      if (!v20)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        v35 = result;

        v36 = *v37;
        *v37 = v35;
      }

      v24 = *(v17 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void _LNMetadataProviderDirect.autoShortcuts(forLocaleIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_100016DF0();
}

uint64_t sub_1000B1CF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_10004C5A8();
  if (v2)
  {

LABEL_3:
    v6 = type metadata accessor for MetadataError();
    sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for MetadataError.cacheLookupFailed(_:), v6);
    return swift_willThrow();
  }

  v9 = v5;
  if (!v5)
  {
    goto LABEL_3;
  }

  v30 = a2;
  sub_10002EB80(&qword_10019B420, &qword_1001505F8);
  result = static _DictionaryStorage.copy(original:)();
  v10 = 0;
  v11 = v9 + 64;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 64);
  v15 = (v12 + 63) >> 6;
  v31 = result + 64;
  v32 = result;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = v9;
      v21 = (*(v9 + 48) + 16 * v19);
      v22 = v21[1];
      v33 = *v21;
      v23 = *(*(v9 + 56) + 8 * v19);

      v24 = sub_10006AF24(1000, v23);

      result = v32;
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v25 = (v32[6] + 16 * v19);
      *v25 = v33;
      v25[1] = v22;
      *(v32[7] + 8 * v19) = v24;
      v26 = v32[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v32[2] = v28;
      v9 = v20;
      if (!v14)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
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
        v29 = result;

        *v30 = v29;
        return result;
      }

      v18 = *(v11 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void _LNMetadataProviderDirect.properties(forIdentifiers:)()
{
  v1 = v0;
  sub_1000B6398();
  sub_10000C900();
  sub_1000AB0B4();
}

uint64_t sub_1000B20CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for UUID();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  __chkstk_darwin(v3);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LNAppShortcutParameterRecord();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002EB80(&qword_10019B410, &unk_10014E360);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v56 - v17;
  v19 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  v20 = v72;
  sub_10006821C();
  if (v20)
  {

    v22 = type metadata accessor for MetadataError();
    sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for MetadataError.cacheLookupFailed(_:), v22);
    return swift_willThrow();
  }

  else
  {
    v62 = v3;
    v71 = v12;
    v72 = v18;
    v66 = v15;
    v70 = *(v21 + 16);
    if (v70)
    {
      v61 = v6;
      v56[1] = 0;
      v25 = 0;
      v69 = v21 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v65 = (v57 + 16);
      v26 = _swiftEmptyDictionarySingleton;
      v27 = &unk_10014E360;
      v58 = v7;
      v59 = (v57 + 8);
      v28 = v66;
      v29 = v63;
      v60 = v10;
      v68 = v21;
      while (v25 < *(v21 + 16))
      {
        v30 = v72;
        v31 = *(v71 + 72);
        sub_100009F38();
        sub_100009F38();
        if (sub_1000032C4(v28, 1, v7) == 1)
        {
          sub_1000B6240(v30, &qword_10019B410);
          sub_1000B6240(v28, &qword_10019B410);
        }

        else
        {
          v32 = v27;
          sub_1000B5FF4();
          v33 = v61;
          v34 = v62;
          v64 = *v65;
          v64(v61, v10);
          v67 = *&v10[*(v7 + 36)];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = v26;
          v36 = v33;
          sub_100045A18();
          v39 = v26[2];
          v40 = (v38 & 1) == 0;
          v41 = v39 + v40;
          if (__OFADD__(v39, v40))
          {
            goto LABEL_24;
          }

          v42 = v37;
          v43 = v38;
          sub_10002EB80(&qword_10019B418, &qword_1001505F0);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v41))
          {
            v44 = v36;
            sub_100045A18();
            v47 = v34;
            if ((v43 & 1) != (v46 & 1))
            {
              goto LABEL_26;
            }

            v42 = v45;
          }

          else
          {
            v47 = v34;
            v44 = v36;
          }

          v28 = v66;
          v27 = v32;
          v26 = v73;
          if (v43)
          {
            v48 = v73[7];
            v49 = *(v48 + 8 * v42);
            *(v48 + 8 * v42) = v67;
            v50 = v47;

            (*v59)(v44, v50);
            v10 = v60;
            sub_10001E9DC(v60, type metadata accessor for LNAppShortcutParameterRecord);
            sub_1000B6240(v72, &qword_10019B410);
          }

          else
          {
            v73[(v42 >> 6) + 8] |= 1 << v42;
            v51 = v57;
            v52 = v47;
            (v64)(v26[6] + *(v57 + 72) * v42, v44, v47);
            *(v26[7] + 8 * v42) = v67;
            (*(v51 + 8))(v44, v52);
            v10 = v60;
            sub_10001E9DC(v60, type metadata accessor for LNAppShortcutParameterRecord);
            sub_1000B6240(v72, &qword_10019B410);
            v53 = v26[2];
            v54 = __OFADD__(v53, 1);
            v55 = v53 + 1;
            if (v54)
            {
              goto LABEL_25;
            }

            v26[2] = v55;
            v28 = v66;
          }

          v29 = v63;
          v7 = v58;
        }

        v21 = v68;
        if (v70 == ++v25)
        {

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    else
    {

      v26 = _swiftEmptyDictionarySingleton;
      v29 = v63;
LABEL_21:
      *v29 = v26;
    }
  }

  return result;
}

uint64_t sub_1000B2828()
{
  v1 = type metadata accessor for MetadataError();
  sub_1000B5D94(&qword_10019B0F0, &type metadata accessor for MetadataError);
  sub_10001AAC8();
  v2 = swift_allocError();
  v4 = sub_100013DA0(v2, v3);
  (*(*(v1 - 8) + 104))(v4, enum case for MetadataError.recordNotFound(_:), v1);
  swift_willThrow();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000B29A8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000B2A60;

  return _LNMetadataProviderDirect.diagnoseBundleIdentifier(_:)();
}

uint64_t sub_1000B2A60()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = 0;
    v10 = v8;
  }

  else
  {
    v9 = String._bridgeToObjectiveC()();

    v8 = 0;
    v10 = v9;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

void sub_1000B2C10(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1000B2C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

id sub_1000B2D18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();

  sub_100003D44(0, &qword_10019B408, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:isa];

  return v7;
}

id sub_1000B2DC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v4 initWithBundleIdentifier:v7 installIdentifier:isa];

  sub_100009B18(a3, a4);
  return v9;
}

id sub_1000B2E4C()
{
  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
  sub_100084294(&qword_10019ABB0, &qword_100199040, LNSystemProtocol_ptr);
  v2 = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = [v0 initWithActions:isa systemProtocolDefaults:v2];

  return v3;
}

Swift::Int sub_1000B2F4C(uint64_t a1, uint64_t a2)
{
  sub_100013DA0(a1, a2);
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v5 = Hasher._finalize()();
  sub_100009B18(v2, v4);
  return v5;
}

Swift::Int sub_1000B2FC0(uint64_t a1, uint64_t a2)
{
  sub_100013DA0(a1, a2);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000B3030()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_10000EEA4();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_1000B306C()
{
  v1 = *(*(sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  v3 = sub_10000EEA4();

  return _swift_deallocClassInstance(v3, v4, v5);
}

uint64_t sub_1000B30FC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_10000EEA4();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_1000B3138()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void *sub_1000B3180(uint64_t a1, uint64_t a2)
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

  sub_10002EB80(&qword_10019B398, &qword_1001505A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 48);
  return v4;
}

void *sub_1000B3278(uint64_t a1, uint64_t a2)
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

  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  v4 = sub_10001A85C();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1000B333C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002EB80(a3, a4);
  v10 = sub_10002EB80(a5, a6);
  sub_10000D33C(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = j__malloc_size(v15);
  if (v12)
  {
    if ((result - v14) != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000B345C()
{
  v1 = *v0;
  sub_1000B3F1C();
  *v0 = v2;
}

void *sub_1000B34AC(void *a1, int64_t a2, char a3)
{
  result = sub_1000B39B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000B34CC()
{
  v1 = *v0;
  sub_1000B52C4();
  *v0 = v2;
}

char *sub_1000B3518(char *a1, int64_t a2, char a3)
{
  result = sub_1000B3AD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000B3538(void *a1, int64_t a2, char a3)
{
  result = sub_1000B3BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3558(char *a1, int64_t a2, char a3)
{
  result = sub_1000B3DDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000B3578()
{
  v1 = *v0;
  sub_1000B6380();
  sub_1000B3F1C();
  *v0 = v2;
}

char *sub_1000B35B4(char *a1, int64_t a2, char a3)
{
  result = sub_1000B40C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B362C(char *a1, int64_t a2, char a3)
{
  result = sub_1000B41E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000B364C()
{
  v1 = *v0;
  sub_1000B52C4();
  *v0 = v2;
}

void sub_1000B3698()
{
  v1 = *v0;
  sub_1000B52C4();
  *v0 = v2;
}

void *sub_1000B36E4(void *a1, int64_t a2, char a3)
{
  result = sub_1000B4518(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3704(char *a1, int64_t a2, char a3)
{
  result = sub_1000B4630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3724(char *a1, int64_t a2, char a3)
{
  result = sub_1000B4740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000B3744(size_t a1, int64_t a2, char a3)
{
  result = sub_1000B4848(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3764(char *a1, int64_t a2, char a3)
{
  result = sub_1000B4A14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B3784(char *a1, int64_t a2, char a3)
{
  result = sub_1000B4B0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B37A4(char *a1, int64_t a2, char a3)
{
  result = sub_1000B4C1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000B37C4(char *a1, int64_t a2, char a3)
{
  result = sub_1000B4D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000B37E4()
{
  v1 = *v0;
  sub_1000B52C4();
  *v0 = v2;
}

void sub_1000B3888()
{
  v1 = *v0;
  sub_1000B52C4();
  *v0 = v2;
}

void *sub_1000B392C(void *a1, int64_t a2, char a3)
{
  result = sub_1000B4FE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000B394C(size_t a1, int64_t a2, char a3)
{
  result = sub_1000B50F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000B396C()
{
  v1 = *v0;
  sub_1000B52C4();
  *v0 = v2;
}

void *sub_1000B39B8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A380, &qword_1001507E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_100071698(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&unk_10019B4F0, &qword_10014F268);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B3AD0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B3D0, &qword_1001505D0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10002CCB8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B3D8, &qword_1001505D8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1000B3BE8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&unk_10019B220, &unk_100150460);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_100071698(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019A470, &qword_10014F1B8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1000B3D00(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_7;
  }

  sub_1000079A4();
  if (v8 == v9)
  {
LABEL_7:
    sub_100006778(v7);
    if (v4)
    {
      sub_10002EB80(&qword_10019A4E8, &qword_10014F228);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      sub_1000B6550(v11);
      if (a1)
      {
LABEL_9:
        v12 = sub_1000B6410();
        sub_10000E2B8(v12, v13, v14);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    sub_10002EB80(&unk_10019B370, &unk_100150580);
    sub_1000B6498();
    goto LABEL_12;
  }

  sub_100006A88();
  if (!v8)
  {
    sub_100007164();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_1000B3DDC(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_100199EC0, &unk_10014ECF0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_100071024((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&unk_10019B380, &unk_100150590);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1000B3F1C()
{
  sub_10001A7C4();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  sub_1000079A4();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_10002EB80(v4, v5);
      v12 = sub_10001A85C();
      v13 = j__malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_100020880();
    goto LABEL_15;
  }

  sub_100006A88();
  if (!v8)
  {
    sub_100007164();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1000B3FEC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_7;
  }

  sub_1000079A4();
  if (v8 == v9)
  {
LABEL_7:
    sub_100006778(v7);
    if (v4)
    {
      sub_10002EB80(&qword_10019B398, &qword_1001505A8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      sub_1000B6550(v11);
      if (a1)
      {
LABEL_9:
        v12 = sub_1000B6410();
        sub_10007105C(v12, v13, v14);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    sub_10002EB80(&unk_10019B3A0, &qword_1001505B0);
    sub_1000B6498();
    goto LABEL_12;
  }

  sub_100006A88();
  if (!v8)
  {
    sub_100007164();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_1000B40C8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&unk_10019B450, &unk_10014ED30);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10000E2B8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B41E0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B248, &qword_100150488);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10000E2B8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1000B42E8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B258, &qword_100150498);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10007169C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B260, &qword_1001504A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1000B4400(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B268, &qword_1001504A8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10007169C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B270, &qword_1001504B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1000B4518(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B358, &qword_100150568);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10007169C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&unk_10019B360, &unk_100150570);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4630(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&unk_10019B300, &unk_100150520);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_100071004((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019A4C8, &qword_10014F208);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4740(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A4D8, &qword_10014F218);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 104);
      if (v5)
      {
LABEL_13:
        sub_1000710D4((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1000B4848(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_10002EB80(&unk_10019B310, &unk_100150530);
  v10 = *(sub_10002EB80(&qword_100199C70, &unk_10014EE60) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10002EB80(&qword_100199C70, &unk_10014EE60) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1000710FC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000B4A14(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A4A0, &qword_10014F1E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10002CD38((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4B0C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019B2F0, &unk_100150510);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10002CD38((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B2F8, &qword_1001508A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4C1C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A4F8, &unk_100150170);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_10007109C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000B4D1C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A4F0, &unk_100150160);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10000E2B8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B390, &qword_1001505A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1000B4E34(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    sub_1000079A4();
    if (v13 != v14)
    {
      sub_100006A88();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_10002EB80(a5, a6);
  v17 = a7(0);
  sub_10000D33C(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(a7(0) - 8);
  if (a1)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    a8(a4 + v26, v15, v22 + v26);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1000B4FE0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10002EB80(&qword_10019A478, &qword_10014F1C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_100071698(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10002EB80(&qword_10019B200, &qword_100150440);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1000B50F8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_10002EB80(&unk_10019B210, &unk_100150450);
  v10 = *(sub_10002EB80(&qword_10019A480, &qword_100150FE0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10002EB80(&qword_10019A480, &qword_100150FE0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10007114C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1000B52C4()
{
  sub_10001A7C4();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  sub_1000079A4();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_10002EB80(v4, v5);
      v12 = swift_allocObject();
      v13 = j__malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 24);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_100020880();
    goto LABEL_15;
  }

  sub_100006A88();
  if (!v8)
  {
    sub_100007164();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1000B53A4(uint64_t a1)
{
  if (*(a1 + 16) && (sub_10002EB80(&unk_10019BB30, &unk_10014DFA0), sub_10001AAC8(), v2 = static _SetStorage.allocate(capacity:)(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = (a1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      v10 = v3[5];
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._finalize()();
      sub_1000B6400();
      v13 = ~v12;
      while (1)
      {
        v14 = v11 & v13;
        v15 = (v11 & v13) >> 6;
        v16 = *(v6 + 8 * v15);
        v17 = 1 << (v11 & v13);
        if ((v17 & v16) == 0)
        {
          break;
        }

        v18 = (v3[6] + 16 * v14);
        v19 = *v18 == v9 && v18[1] == v8;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_16;
        }

        v11 = v14 + 1;
      }

      *(v6 + 8 * v15) = v17 | v16;
      v20 = (v3[6] + 16 * v14);
      *v20 = v9;
      v20[1] = v8;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_19;
      }

      v3[2] = v23;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

void sub_1000B5528(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_10002EB80(&unk_10019B1F0, &unk_100150430), sub_10001AAC8(), v2 = static _SetStorage.allocate(capacity:)(), v3 = v2, (v27 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v25 = v1;
    v26 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v26 + 8 * v4++);
      v7 = v3[5];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v28 = v6;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      sub_1000B6400();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = *(v5 + 8 * v12);
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        v15 = *(v3[6] + 8 * v11);
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

          goto LABEL_17;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      *(v5 + 8 * v12) = v14 | v13;
      *(v3[6] + 8 * v11) = v28;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v3[2] = v24;
LABEL_17:
      v1 = v25;
      if (v4 == v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

Swift::Int sub_1000B5720(unint64_t a1)
{
  v1 = a1;
  if (sub_1000232F4(a1))
  {
    sub_10002EB80(&unk_100199360, &qword_100150620);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v20 = sub_1000232FC(v1);
  if (v20)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_10003818C(v3, v19 == 0, v1);
      result = v19 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = NSObject._rawHashValue(seed:)(v2[5]);
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *&v4[8 * v10];
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
        v13 = *(v2[6] + 8 * v9);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *&v4[8 * v10] = v12 | v11;
      *(v2[6] + 8 * v9) = v6;
      v15 = v2[2];
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

void sub_1000B5900()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  URL.stopAccessingSecurityScopedResource()();
}

void sub_1000B5980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100012650(a1, a2, a3, a4);
  if (!v10)
  {
    v12 = 0;
LABEL_17:
    sub_10000E1A0(v12);
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    sub_100012868();
    v15 = (v14 - v7) >> 6;
    while (v13 < v11)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v8 = *(v6 + 8 * v17);
          ++v12;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_12:
      sub_100006A34();
      v19 = v18 | (v17 << 6);
      v20 = *(v4 + 48) + 32 * v19;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = *(*(v4 + 56) + 16 * v19);
      *v5 = *v20;
      *(v5 + 16) = v22;
      *(v5 + 24) = v21;
      *(v5 + 32) = v23;
      if (v16 == v11)
      {

        v12 = v17;
        goto LABEL_17;
      }

      v5 += 48;

      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000B5A94(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B5BF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000B5CA0;
  v6 = sub_1000B63E4();

  return v7(v6, v3, v4);
}

uint64_t sub_1000B5CA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000B5D94(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_10001AAC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000B5DF0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100003D44(0, &unk_100198C10, LNAppNotificationEvent_ptr);
    sub_100084294(&qword_10019B340, &unk_100198C10, LNAppNotificationEvent_ptr);
    Set.Iterator.init(_cocoa:)();
    v4 = v25;
    v8 = v26;
    v9 = v27;
    v10 = v28;
    v11 = v29;
  }

  else
  {
    v10 = 0;
    sub_1000B6400();
    v8 = v4 + 56;
    v9 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(v12 << v14);
    }

    else
    {
      v15 = v12;
    }

    v11 = v15 & *(v4 + 56);
  }

  v23 = a1;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v22 = v9;
      v17 = (v9 + 64) >> 6;
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v4 < 0)
        {
          if (!__CocoaSet.Iterator.next()() || (sub_100003D44(0, &unk_100198C10, LNAppNotificationEvent_ptr), swift_dynamicCast(), (v21 = v24) == 0))
          {
LABEL_26:
            v9 = v22;
            goto LABEL_27;
          }
        }

        else
        {
          if (!v11)
          {
            while (1)
            {
              v19 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                break;
              }

              if (v19 >= v17)
              {
                v11 = 0;
                goto LABEL_26;
              }

              v11 = *(v8 + 8 * v19);
              ++v10;
              if (v11)
              {
                v10 = v19;
                goto LABEL_18;
              }
            }

            __break(1u);
            break;
          }

LABEL_18:
          sub_100023340();
          v21 = *(*(v4 + 48) + ((v10 << 9) | (8 * v20)));
          if (!v21)
          {
            goto LABEL_26;
          }
        }

        *a2++ = v21;
        ++v16;
        if (v18 == a3)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_27:
    *v23 = v4;
    v23[1] = v8;
    v23[2] = v9;
    v23[3] = v10;
    v23[4] = v11;
  }
}

uint64_t sub_1000B5FF4()
{
  sub_1000046C8();
  v2 = v1(0);
  sub_10000482C(v2);
  v4 = *(v3 + 32);
  v5 = sub_1000077D8();
  v6(v5);
  return v0;
}

void sub_1000B604C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100012650(a1, a2, a3, a4);
  if (!v10)
  {
    v12 = 0;
LABEL_17:
    sub_10000E1A0(v12);
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    sub_100012868();
    v15 = (v14 - v7) >> 6;
    while (v13 < v11)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v8 = *(v6 + 8 * v17);
          ++v12;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_12:
      sub_100006A34();
      v19 = *(*(v4 + 56) + ((v17 << 9) | (8 * v18)));
      *v5 = v19;
      if (v16 == v11)
      {
        v21 = v19;
        v12 = v17;
        goto LABEL_17;
      }

      ++v5;
      v20 = v19;
      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000B6150(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000F5A38() & 1;
}

void sub_1000B6194(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

void sub_1000B61D8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1000B6240(uint64_t a1, uint64_t a2)
{
  v3 = sub_100013DA0(a1, a2);
  v5 = sub_10002EB80(v3, v4);
  sub_10000482C(v5);
  (*(v6 + 8))(v2);
  return v2;
}

uint64_t sub_1000B6294(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_100199EE0, &qword_1001507C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000B6340(uint64_t a1, uint64_t a2)
{

  return sub_1000B2C68(a1, a2, 9006, 0);
}

uint64_t sub_1000B6398()
{
}

uint64_t sub_1000B63C8()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t sub_1000B6420()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t sub_1000B6480()
{
  *(v1 - 104) = v0;

  return swift_errorRetain();
}

uint64_t sub_1000B6498()
{

  return swift_arrayInitWithCopy();
}

BOOL sub_1000B64B4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000B64CC()
{

  return sub_1000ABA6C(v1, v2, v0, (v3 - 104));
}

void sub_1000B64F0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1000B6508()
{

  return swift_dynamicCast();
}

uint64_t sub_1000B6520()
{

  return Logger.logObject.getter();
}

uint64_t sub_1000B6538()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000B6550(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_1000B6564(uint64_t result)
{
  *(v1 - 168) = result;
  *(v1 - 96) = result;
  return result;
}

void sub_1000B65B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000B65D4()
{
}

id sub_1000B65EC(void *a1)
{

  return [a1 currentProcess];
}

uint64_t sub_1000B6604()
{
}

id sub_1000B661C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 3536);

  return [v1 v3];
}

uint64_t sub_1000B6654()
{
  v1 = *(v0[2] + 112);

  v0[3] = sub_100084BE4();

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1000B6750;

  return sub_1000C4814();
}

uint64_t sub_1000B6750()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000B6860, v2, 0);
}

uint64_t sub_1000B6860()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1000B6908()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000B6998;

  return sub_1000B6634();
}

uint64_t sub_1000B6998(char a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1 & 1);
  }
}

void *sub_1000B6AC8(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      sub_100011438(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v4 = 0;
      v50 = v2 & 0xC000000000000001;
      v5 = _swiftEmptyArrayStorage;
      v47 = v2 & 0xFFFFFFFFFFFFFF8;
      v48 = v3;
      v49 = v2;
      while (!__OFADD__(v4, 1))
      {
        v54 = v4 + 1;
        if (v50)
        {
          v6 = v2;
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v47 + 16))
          {
            goto LABEL_28;
          }

          v6 = v2;
          v7 = *(v2 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = [v7 key];
        v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        v12 = *a2;
        if (*(*a2 + 16) && (v13 = sub_10000C2A0(v2, v11), (v14 & 1) != 0))
        {
          v15 = (v12[7] + 16 * v13);
          v16 = v8;
          v17 = *v15;
          v18 = v15[1];

          v2 = v6;
        }

        else
        {
          v51 = v4;
          v53 = v5;
          v19 = String._bridgeToObjectiveC()();
          v52 = v8;
          v20 = [v8 localizedStringForLocaleIdentifier:v19];

          v21 = v11;
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v23;

          v24 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = *a2;
          v26 = v2;
          v27 = v21;
          v28 = sub_10000C2A0(v2, v21);
          v30 = v56[2];
          v31 = (v29 & 1) == 0;
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_27;
          }

          v2 = v28;
          v33 = v29;
          sub_10002EB80(&qword_100199670, &unk_10014E370);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v32))
          {
            v34 = sub_10000C2A0(v26, v27);
            if ((v33 & 1) != (v35 & 1))
            {
              goto LABEL_34;
            }

            v2 = v34;
          }

          v17 = v22;
          if (v33)
          {
            v36 = (v56[7] + 16 * v2);
            v37 = v36[1];
            *v36 = v22;
            v36[1] = v18;
          }

          else
          {
            v56[(v2 >> 6) + 8] |= 1 << v2;
            v38 = (v56[6] + 16 * v2);
            *v38 = v26;
            v38[1] = v27;
            v39 = (v56[7] + 16 * v2);
            *v39 = v22;
            v39[1] = v18;
            v40 = v56[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_29;
            }

            v56[2] = v42;
          }

          *a2 = v56;

          v3 = v48;
          v2 = v49;
          v5 = v53;
          v4 = v51;
        }

        v44 = v5[2];
        v43 = v5[3];
        if (v44 >= v43 >> 1)
        {
          sub_100011438(v43 > 1, v44 + 1, 1);
        }

        v5[2] = v44 + 1;
        v45 = &v5[2 * v44];
        v45[4] = v17;
        v45[5] = v18;
        ++v4;
        if (v54 == v3)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_34:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_31:

    return _swiftEmptyArrayStorage;
  }

  return result;
}
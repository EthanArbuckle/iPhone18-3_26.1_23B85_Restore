uint64_t sub_100002030(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;

  v8 = sub_100002094(v7, v6);

  return v8 & 1;
}

uint64_t sub_100002094(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *v3;
  v54[0] = swift_isaMask & *v3;
  v7 = *((swift_isaMask & v6) + 0x50);
  sub_10000518C();
  v54[1] = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v13 = v54 - v12;
  v57 = type metadata accessor for Logger();
  sub_10000518C();
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v7;
  v58 = v7;
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  v21 = String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v23 = a2;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    v26 = os_log_type_enabled(v24, v25);
    v54[2] = ObjectType;
    v55 = v15;
    if (v26)
    {
      swift_slowAlloc();
      v27 = v20;
      v28 = sub_100003C08();
      v58 = v28;
      *v21 = 136446210;
      v29 = sub_100004924(v23);
      v31 = sub_100004C50(v29, v30, &v58);

      *(v21 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Incoming %{public}s", v21, 0xCu);
      sub_1000034F8(v28);
      v20 = v27;
      sub_1000036AC();
      sub_1000036AC();
    }

    v32 = v3[15];
    sub_100002794(v13);
    v33 = v56;
    v34 = *(v54[0] + 88);
    (*(v34 + 16))(v23, v56, v34);
    v35 = (*(v34 + 24))(v23, v33, v34);
    v36 = sub_10000386C();
    v37(v36);
    v38 = v23;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    v41 = os_log_type_enabled(v39, v40);
    if (v35)
    {
      if (v41)
      {
        swift_slowAlloc();
        v42 = sub_100003C08();
        v58 = v42;
        *v35 = 136446210;
        v43 = sub_100004924(v38);
        v45 = sub_100004C50(v43, v44, &v58);

        *(v35 + 4) = v45;
        sub_100004F98(&_mh_execute_header, v46, v47, "Accepting %{public}s");
        sub_1000034F8(v42);
        sub_1000036AC();
        sub_1000036AC();
      }

      (*(v55 + 8))(v20, v57);
      return 1;
    }

    else
    {
      if (v41)
      {
        swift_slowAlloc();
        v48 = sub_100003C08();
        v58 = v48;
        *v35 = 136446210;
        v49 = sub_100004924(v38);
        v51 = sub_100004C50(v49, v50, &v58);

        *(v35 + 4) = v51;
        sub_100004F98(&_mh_execute_header, v52, v53, "Rejecting %{public}s");
        sub_1000034F8(v48);
        sub_1000036AC();
        sub_1000036AC();
      }

      (*(v55 + 8))(v20, v57);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100002688()
{

  return swift_slowAlloc();
}

void sub_1000026A4(void *a1@<X8>)
{
  v3 = *(v2 + 512);
  *a1 = *(v2 + 536);
  a1[1] = v3;
  v4 = *(v1 + 24);
}

uint64_t sub_1000026B8()
{

  return sub_10002EB80(v0, v1);
}

void sub_1000026E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void sub_100002704()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t *sub_100002770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a2 + 8);
  a13 = a1;
  a14 = v15;

  return sub_100013234(&a10);
}

uint64_t sub_100002794@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_100002C9C();
  v5 = v4;
  v7 = *(v6 + 80);
  sub_100002C9C();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for Result();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v16 - v12);
  sub_100002F80();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v7 - 8) + 32))(a1, v13, v7);
  }

  v14 = *v13;
  if (*(v1 + 40) == 1)
  {
    sub_100003354(sub_1000BB634, v1, v5, &type metadata for () + 8, &off_10018EBD0);
  }

  return swift_willThrow();
}

uint64_t sub_100002920(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t sub_100002968(uint64_t result)
{
  *(result + 16) = *(v2 - 72);
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10000299C()
{

  return swift_once();
}

uint64_t sub_100002A28()
{

  return swift_once();
}

uint64_t sub_100002A70()
{

  return swift_once();
}

uint64_t sub_100002ACC()
{

  return swift_once();
}

uint64_t sub_100002AEC()
{

  return swift_once();
}

uint64_t sub_100002B1C()
{

  return swift_once();
}

uint64_t sub_100002B3C()
{

  return swift_once();
}

uint64_t sub_100002BA8()
{

  return swift_once();
}

uint64_t sub_100002BC8()
{

  return swift_once();
}

void sub_100002C04(unint64_t a1@<X8>)
{

  sub_100070514(a1 > 1, v1, 1, v2);
}

id sub_100002C28()
{

  return sub_1000AB530();
}

uint64_t sub_100002C58()
{

  return swift_dynamicCast();
}

uint64_t sub_100002C7C()
{

  return swift_once();
}

uint64_t sub_100002CBC()
{

  return swift_once();
}

uint64_t sub_100002D58()
{

  return swift_once();
}

uint64_t sub_100002D78()
{

  return swift_once();
}

uint64_t sub_100002D98()
{

  return swift_once();
}

uint64_t sub_100002DCC()
{

  return swift_once();
}

uint64_t sub_100002E40()
{

  return Character.write<A>(to:)();
}

uint64_t sub_100002E7C(void *a1)
{
  sub_1000034B4(a1, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t sub_100002F00()
{

  return swift_once();
}

uint64_t sub_100002F40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v3 = *(a2 + 88);
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return a1;
}

void sub_100002F80()
{
  v1 = *v0;
  sub_100002C9C();
  v3 = v2;
  v5 = *(v4 + 80);
  sub_100002C9C();
  v7 = *(v6 + 88);
  sub_100002C9C();
  v9 = *(v8 + 96);
  v10 = type metadata accessor for Result();
  sub_100003354(sub_100003460, v0, v3, v10, &off_10018EBD0);
}

uint64_t sub_100003048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v7 = type metadata accessor for LazyTask.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  v15 = *(v3 + 128);
  swift_beginAccess();
  (*(v8 + 16))(v14, a1 + v15, v7);
  v16 = type metadata accessor for Result();
  if (sub_1000032C4(v14, 1, v16) != 1)
  {
    return (*(*(v16 - 8) + 32))(v21, v14, v16);
  }

  v17 = a1[4];
  v18 = v21;
  (a1[3])();
  (*(*(v16 - 8) + 16))(v12, v18, v16);
  sub_1000075C4(v12, 0, 1, v16);
  swift_beginAccess();
  (*(v8 + 40))(a1 + v15, v12, v7);
  return swift_endAccess();
}

void sub_1000032EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 8))(a2, a4);
  [v4 unlock];
}

void sub_100003354(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = (*(a5 + 8))(a3, a5);
  [v11 lock];

  a1();
  sub_1000032EC(v6, a3, a4, a5);
}

uint64_t sub_10000347C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_1000034B4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000034F8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003554(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000035B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000035C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000035D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000035E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000035F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003614(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003624(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003668(uint64_t a1)
{
  *(a1 + 8) = sub_1000307F0;
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[13];
  v5 = v1[11];
  return v1[8];
}

uint64_t sub_1000036AC()
{
}

uint64_t sub_1000036F0()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100003748()
{

  return swift_slowAlloc();
}

void sub_1000037BC()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  v3 = *(v1 + 8) + **(v1 + 8);
}

uint64_t sub_1000037F8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10000381C(uint64_t a1)
{
  *(v2 - 88) = a1;
  *v1 = *(v2 - 176);
  v4 = *(v2 - 104);

  return Notification.description.getter();
}

uint64_t sub_100003840()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 112);
  return result;
}

uint64_t sub_100003880(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_100108488(a11, a2, sub_1000232F4, a4, a5);
}

uint64_t sub_1000038C4(unint64_t *a1)
{

  return sub_100013EBC(a1, v1, v2);
}

void sub_10000390C()
{

  Row.get<A>(_:)();
}

uint64_t sub_100003934(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = (2 * ((result - 32) / 8)) | 1;
  return result;
}

double sub_100003968()
{
  *(v0 + 264) = 0;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  return result;
}

uint64_t sub_1000039CC()
{

  return swift_beginAccess();
}

uint64_t sub_100003A00()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100003A0C()
{
}

uint64_t sub_100003A60()
{

  return swift_allocObject();
}

uint64_t sub_100003A78(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t sub_100003A8C@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  return result;
}

uint64_t sub_100003AF8(uint64_t result)
{
  *(result + 8) = sub_100073774;
  v2 = *(v1 + 128);
  v3 = *(v1 + 112);
  return result;
}

uint64_t sub_100003B30(uint64_t result)
{
  *(result + 8) = sub_100085C94;
  v2 = *(v1 + 104);
  return result;
}

uint64_t sub_100003B94()
{

  return sub_1000075C4(v0, 1, 1, v1);
}

uint64_t sub_100003BB4()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 160);
}

uint64_t sub_100003BD8()
{

  return static _ErrorCodeProtocol.~= infix(_:_:)(v3, v1, v2, v0);
}

uint64_t sub_100003C08()
{

  return swift_slowAlloc();
}

uint64_t sub_100003C24()
{

  return swift_arrayInitWithCopy();
}

void sub_100003C44()
{

  RowIterator.compactMap<A>(_:)();
}

void sub_100003C6C()
{

  v3._countAndFlagsBits = v1 | 4;
  v3._object = (v0 | 0x8000000000000000);
  String.append(_:)(v3);
}

uint64_t sub_100003C88()
{

  return __CocoaSet.count.getter();
}

void sub_100003CC8()
{
  v2 = v0[2] + 1;

  sub_10001A80C(0, v2, 1, v0);
}

uint64_t sub_100003D44(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100003D84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 valueForEntitlement:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_100003E9C(v13, &qword_1001992F0, &qword_10014E000);
    goto LABEL_9;
  }

  sub_1000047D0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  if (a3)
  {
    v7 = a3;
    v8 = static NSObject.== infix(_:_:)();
  }

  else
  {

    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_100003E9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10002EB80(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003EFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10002EB80(a2, a3);
  sub_10000482C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

id sub_100003F54(void *a1)
{
  v3 = sub_100004250();
  v4 = sub_1000045F4();
  if (v3)
  {
    if (v4)
    {
      if (qword_100198128 != -1)
      {
        sub_100002A70();
      }

      v5 = type metadata accessor for Logger();
      sub_10000347C(v5, qword_10019DA38);
      v6 = a1;
      v7 = sub_10006112C();
      v8 = static os_log_type_t.debug.getter();
      if (sub_10001135C(v8))
      {
        v9 = sub_100006418();
        *v9 = 67109120;
        v9[1] = [v1 processIdentifier];

        sub_100007AFC();
        _os_log_impl(v10, v11, v12, v13, v14, 8u);
        sub_100013468();
      }

      else
      {

        v7 = v1;
      }

      v45 = LNTranscriptXPCPrivilegedObservingInterface();
    }

    else
    {
      if (qword_100198128 != -1)
      {
        sub_100002A70();
      }

      v25 = type metadata accessor for Logger();
      sub_10000347C(v25, qword_10019DA38);
      v26 = a1;
      v27 = sub_10006112C();
      v28 = static os_log_type_t.debug.getter();
      if (sub_10001135C(v28))
      {
        v29 = sub_100006418();
        *v29 = 67109120;
        v29[1] = [v1 processIdentifier];

        sub_100007AFC();
        _os_log_impl(v30, v31, v32, v33, v34, 8u);
        sub_100013468();
      }

      else
      {

        v27 = v1;
      }

      v45 = LNTranscriptXPCPrivilegedInterface();
    }
  }

  else if (v4)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v15 = type metadata accessor for Logger();
    sub_10000347C(v15, qword_10019DA38);
    v16 = a1;
    v17 = sub_10006112C();
    v18 = static os_log_type_t.debug.getter();
    if (sub_10001135C(v18))
    {
      v19 = sub_100006418();
      *v19 = 67109120;
      v19[1] = [v1 processIdentifier];

      sub_100007AFC();
      _os_log_impl(v20, v21, v22, v23, v24, 8u);
      sub_100013468();
    }

    else
    {

      v17 = v1;
    }

    v45 = LNTranscriptXPCObservingInterface();
  }

  else
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70();
    }

    v35 = type metadata accessor for Logger();
    sub_10000347C(v35, qword_10019DA38);
    v36 = a1;
    v37 = sub_10006112C();
    v38 = static os_log_type_t.debug.getter();
    if (sub_10001135C(v38))
    {
      v39 = sub_100006418();
      *v39 = 67109120;
      v39[1] = [v1 processIdentifier];

      sub_100007AFC();
      _os_log_impl(v40, v41, v42, v43, v44, 8u);
      sub_100013468();
    }

    else
    {

      v37 = v1;
    }

    v45 = LNTranscriptXPCInterface();
  }

  return v45;
}

uint64_t sub_100004250()
{
  sub_100003D44(0, &qword_100198E20, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v1 = sub_100003D84(0xD000000000000025, 0x8000000100154E50, isa);

  return v1 & 1;
}

void sub_1000042F4(void *a1)
{
  swift_getObjectType();
  v2 = [a1 processIdentifier];
  v3 = sub_100003F54(a1);
  [a1 setExportedInterface:v3];

  sub_100004738(aBlock);
  v4 = v18;
  if (v18)
  {
    v5 = sub_1000034B4(aBlock, v18);
    v6 = *(v4 - 1);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v10 = 0;
  }

  [a1 setExportedObject:v10];
  swift_unknownObjectRelease();
  v11 = sub_100004794();
  if (v11)
  {
    v12 = v11;
    [a1 setRemoteObjectInterface:v11];
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  v19 = sub_10000C608;
  v20 = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v18 = &unk_10018FDF0;
  v16 = _Block_copy(aBlock);

  [a1 setInvalidationHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1000045AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000045F4()
{
  sub_100003D44(0, &qword_100198E20, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v1 = sub_100003D84(0xD000000000000024, 0x8000000100154E20, isa);

  return v1 & 1;
}

uint64_t sub_1000046E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, __int16 a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return sub_100127828(v31 - 112, v30, v29, a17 & 1, 0, 0, v31 - 152, &a29, &a19, 0, 3uLL, a15, a13, a14);
}

uint64_t sub_100004738@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(LNWeakProxy) initWithValue:v1];
  result = sub_10002EB80(&qword_100198E28, &unk_10014EF50);
  a1[3] = result;
  *a1 = v3;
  return result;
}

id sub_100004794()
{
  if (sub_1000045F4())
  {
    return LNNextActionObserverXPCInterface();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000047D0()
{
  result = qword_100199300;
  if (!qword_100199300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100199300);
  }

  return result;
}

uint64_t sub_100004868()
{

  return swift_allocObject();
}

uint64_t sub_1000048F8()
{

  return type metadata accessor for Expression();
}

unint64_t sub_100004924(void *a1)
{
  _StringGuts.grow(_:)(43);

  [a1 processIdentifier];
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x72657320726F6620;
  v4._object = 0xEE00222065636976;
  String.append(_:)(v4);
  v5 = *(v1 + 80);
  v6._countAndFlagsBits = (*(*(v1 + 88) + 8))();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0xD000000000000018;
}

unint64_t sub_100004A3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000A758(a5, a6);
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

uint64_t sub_100004B3C()
{

  return swift_slowAlloc();
}

uint64_t sub_100004B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;

  return sub_10000C2A0(a3, a4);
}

uint64_t sub_100004B9C()
{
  v2 = sub_1000034B4(v0, v0[3]);

  return sub_100083CC0(v1, v2);
}

uint64_t sub_100004C0C()
{

  return swift_allocObject();
}

uint64_t sub_100004C24()
{
  sub_1000034F8((v0 - 144));

  return sub_1000034F8((v0 - 104));
}

uint64_t sub_100004C50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004A3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100004D14(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000034F8(v11);
  return v7;
}

uint64_t sub_100004D14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004D70()
{
}

uint64_t sub_100004D8C()
{
}

uint64_t sub_100004DA8(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t sub_100004E38()
{
  *(v1 - 224) = v0;
  *(v1 - 112) = v0 + 32;
  *(v1 - 104) = v0 & 0xFFFFFFFFFFFFFF8;

  return swift_bridgeObjectRetain_n();
}

BOOL sub_100004E68()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_100004E88(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = *(v2 + 16);
  return result;
}

uint64_t sub_100004EB8()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[17];
  v7 = v0[18];
  return 1;
}

id sub_100004F30()
{

  return sub_1000B2C68(v0, v1, 9006, 0);
}

uint64_t sub_100004F6C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_100004F98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void *sub_100004FD4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char __src)
{
  a32 = a1;

  return memcpy(&__dst, &__src, 0xB0uLL);
}

uint64_t sub_100005014(uint64_t a1)
{
  *(v4 + 4) = a1;
  *(v4 + 12) = 2080;

  return sub_100004C50(v3, v1, (v2 + 88));
}

uint64_t sub_10000503C(uint64_t a1)
{

  return ExpressionType.init(_:)(v2, v1, v3, a1);
}

uint64_t sub_100005064()
{
  result = v0;
  v3 = *(v1 - 224);
  return result;
}

uint64_t sub_100005090()
{

  return swift_getWitnessTable();
}

uint64_t sub_1000050CC()
{
}

uint64_t sub_10000513C()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

void sub_1000051B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

size_t sub_1000051D8(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t sub_100005200()
{
  sub_1000034F8(v0);
}

uint64_t sub_100005308()
{
}

void sub_10000536C(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2[5] = a2;
  v2[6] = a2;
  v2[7] = a2;
  v2[8].n128_u64[0] = 0;
  v2[8].n128_u64[1] = a1;
  v2[9].n128_u64[0] = 0;
  v2[9].n128_u64[1] = 0;
  v2[10].n128_u16[0] = 256;
  v2[10].n128_u64[1] = a1;
}

uint64_t sub_10000538C()
{

  return swift_dynamicCast();
}

uint64_t sub_1000053AC()
{
}

uint64_t sub_1000053F4()
{

  return dispatch thunk of Encodable.encode(to:)();
}

void sub_100005418()
{
  sub_100018D28();
  ObjectType = swift_getObjectType();
  v2 = [v0 processIdentifier];
  v3 = LNDaemonApplicationXPCInterface();
  [v0 setExportedInterface:v3];

  sub_100005718(v0, aBlock);
  v4 = v14;
  if (v14)
  {
    v5 = sub_1000034B4(aBlock, v14);
    v6 = *(v4 - 1);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v10 = 0;
  }

  [v0 setExportedObject:v10];
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = ObjectType;
  v15 = sub_10000E540;
  v16 = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v14 = &unk_10018E0A0;
  v12 = _Block_copy(aBlock);

  [v0 setInvalidationHandler:v12];
  _Block_release(v12);
}

char *sub_100005660()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10002EB80(&qword_10019B7B8, &unk_100150CF0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100005690()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10002EB80(&qword_10019B978, &qword_100150D78);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1000056E4()
{

  return swift_slowAlloc();
}

void sub_100005718(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 auditToken];
  v5 = token.val[0];
  v6 = token.val[1];
  v7 = token.val[3];
  v8 = token.val[5];
  v10 = token.val[6];
  v9 = token.val[7];
  v32 = token.val[4];
  v33 = token.val[2];
  v11 = SecTaskCreateWithAuditToken(0, &token);
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v30 = v2;
  v13 = SecTaskCopySigningIdentifier(v11, 0);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  objc_opt_self();
  sub_10001AAC8();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_11;
  }

  *token.val = 0;
  *&token.val[2] = 0;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!*&token.val[2])
  {
LABEL_9:
    v14 = v12;
LABEL_11:

LABEL_12:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v26 = v6;
  v29 = *&token.val[2];
  v28 = *token.val;
  if (qword_100198220 != -1)
  {
    sub_100002B94();
    swift_once();
  }

  v27 = v5;
  v15 = type metadata accessor for Logger();
  sub_10000347C(v15, qword_10019DD28);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    log = v16;
    v18 = sub_100007764();
    v19 = sub_1000056E4();
    *token.val = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_100004C50(v28, v29, &token);
    _os_log_impl(&_mh_execute_header, log, v17, "Created AppShortcutClient with bundleId: %{public}s", v18, 0xCu);
    sub_1000034F8(v19);
    sub_1000036AC();
    sub_1000036AC();
  }

  else
  {
  }

  v20 = v30;
  v21 = *(v30 + 120);

  v31 = [a1 processIdentifier];
  v22 = *(v20 + 112);
  v23 = type metadata accessor for ApplicationServiceInstance();
  objc_allocWithZone(v23);

  v24 = sub_100005A00(v27 | (v26 << 32), v33 | (v7 << 32), v32 | (v8 << 32), v10 | (v9 << 32), v28, v29, v21, v31, v22);
  *(a2 + 24) = v23;

  *a2 = v24;
}

uint64_t type metadata accessor for ApplicationServiceInstance()
{
  result = qword_10019AC80;
  if (!qword_10019AC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100005A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v10 = v9;
  ObjectType = swift_getObjectType();
  UUID.init()();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v19 = &v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken];
    *v19 = a1;
    *(v19 + 1) = a2;
    *(v19 + 2) = a3;
    *(v19 + 3) = a4;
    v20 = &v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_sourceBundleIdentifier];
    *v20 = a5;
    v20[1] = a6;
    *&v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_observationStatusRegistrySource] = a7;
    *&v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_processID] = a8;
    *&v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_registrySource] = a9;
    v21 = objc_allocWithZone(LSApplicationExtensionRecord);
    sub_100016628();

    swift_bridgeObjectRetain_n();
    v22 = sub_100005C3C(a5, a6, 1, &selRef_initWithBundleIdentifier_requireValid_error_);
    v23 = LSApplicationExtensionRecord.attributionBundleIdentifier.getter();
    if (v24)
    {
      v25 = v23;
      v26 = v24;

      a5 = v25;
      a6 = v26;
    }

    else
    {
      v27 = [v22 containingBundleRecord];
      if (v27 && (v28 = v27, v29 = [v27 bundleIdentifier], v28, v29))
      {
        a5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        a6 = v31;
      }

      else
      {
      }
    }

    v32 = &v10[OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier];
    *v32 = a5;
    v32[1] = a6;
    v35.receiver = v10;
    v35.super_class = ObjectType;
    objc_msgSendSuper2(&v35, "init");
    sub_100016628();

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100005C3C(uint64_t a1, uint64_t a2, char a3, SEL *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v12 = 0;
  v8 = [v4 *a4];

  if (v8)
  {
    v9 = v12;
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_100005D18()
{

  return swift_slowAlloc();
}

uint64_t sub_100005D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33)
{

  return sub_10001A798(&a33, &a17);
}

uint64_t sub_100005D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{

  return sub_10012DAB0(a1, a2, a3, a4, a5, a6, a7, a8, a9, v9 & 0xFFFF00000000FFFFLL | 0x3F203D0000, v10);
}

uint64_t sub_100005DA0()
{
  if (qword_100198228 != -1)
  {
    swift_once();
  }

  return sub_1000077D8();
}

uint64_t sub_100005E1C(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;
  v7 = sub_1000077D8();

  return sub_100006240(v7, v8);
}

uint64_t sub_100005EB0()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_100005F54()
{
  sub_1000070C8();
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_sourceBundleIdentifier);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1000208D0;
  v5 = *(v0 + 16);

  return sub_100006004();
}

uint64_t sub_100006004()
{
  sub_1000036A0();
  v1[32] = v2;
  v1[33] = v0;
  v1[31] = v3;

  return _swift_task_switch(sub_100006CAC, 0, 0);
}

uint64_t sub_100006094(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000BFAC;

  return v8();
}

uint64_t sub_10000617C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_100004DC8(v7);
  *v8 = v9;
  v8[1] = sub_10000BEC4;

  return sub_100006094(a1, v3, v4, v6);
}

uint64_t sub_100006240(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_1000075C4(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_100151CC0;
  v10[5] = v9;
  sub_100109754(0, 0, v7, &unk_100151CD0, v10);
}

uint64_t sub_100006358()
{
  sub_1000070C8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004DC8(v3);
  *v4 = v5;
  v6 = sub_1000070A8(v4);

  return v7(v6);
}

uint64_t sub_1000063EC()
{

  return swift_slowAlloc();
}

uint64_t sub_100006418()
{

  return swift_slowAlloc();
}

uint64_t sub_10000643C()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_10000645C()
{

  return swift_errorRetain();
}

uint64_t sub_100006474()
{

  return swift_errorRetain();
}

uint64_t sub_1000064F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000BEC4;

  return sub_1000065B8(v2, v3, v5);
}

uint64_t sub_1000065B8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000BEC4;

  return v7();
}

unint64_t sub_1000066A0(char a1)
{

  return sub_1000379A0(v2, a1 & 1, v1);
}

uint64_t sub_100006704()
{

  return swift_once();
}

uint64_t sub_100006734()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_100006778(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_100006788(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 64);
  return v2;
}

uint64_t sub_1000067A0()
{
}

void *sub_100006800(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __dst, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char __src)
{

  return memcpy(&__dst, &__src, 0xB0uLL);
}

uint64_t sub_100006860()
{
}

void *sub_1000068AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x258], 0xB0uLL);
}

uint64_t sub_1000068F4()
{

  return swift_once();
}

uint64_t sub_100006920()
{
  sub_1000069B8(v0);
}

uint64_t sub_100006978()
{
  result = *(v0 - 96);
  v2 = *(*(v0 - 88) - 8);
  return result;
}

uint64_t sub_1000069B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100006A1C()
{

  sub_10009D608();
}

uint64_t sub_100006A60(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return QueryType.filter(_:)(a1, a2, a3, v3, v4);
}

void sub_100006AA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100006AC4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100006B00(unint64_t *a1)
{

  return sub_10010900C(a1, v1, v2);
}

void sub_100006B34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

void sub_100006B88(unint64_t a1@<X8>)
{

  sub_10001A80C(a1 > 1, v2, 1, v1);
}

uint64_t *sub_100006BC4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[3].n128_u64[1] = v2;
  a1[4].n128_u64[0] = *(v3 + 8);
  v5 = &a1[2];

  return sub_100013234(v5);
}

uint64_t sub_100006BE8()
{

  return swift_allocObject();
}

uint64_t sub_100006C04(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100020A58;

  return sub_100005F40();
}

uint64_t sub_100006CAC()
{
  v2 = *(*(v0 + 264) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_registrySource);
  v3 = sub_100007F78();
  v4 = sub_100010DC0(v3, sub_10011D0D0);
  *(v0 + 272) = v4;
  v5 = v4;
  v6 = *(v4 + OBJC_IVAR____TtC10LinkDaemon8Registry_store);
  sub_100012BBC(*(v0 + 248), *(v0 + 256), v0 + 144);
  v7 = *(v0 + 152);
  if (v7 && (v8 = *(v0 + 144), *(v0 + 224) = *(v0 + 160), *(v0 + 208) = v8, *(v0 + 216) = v7, sub_10001D368(v0 + 208), *(v0 + 232)))
  {
    v9 = *(v0 + 224);
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 policyWithBundleIdentifier:v13];

    *(v0 + 240) = 0;
    v15 = [v14 connectionWithError:v0 + 240];
    *(v0 + 280) = v15;

    v16 = *(v0 + 240);
    if (v15)
    {
      v17 = v16;
      v18 = String._bridgeToObjectiveC()();
      *(v0 + 288) = v18;
      sub_100003EFC(v0 + 224, &unk_100199100, &qword_10014E230);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 184;
      *(v0 + 24) = sub_1000147CC;
      v19 = swift_continuation_init();
      *(v0 + 136) = sub_10002EB80(&qword_10019AD18, &qword_10014FDC0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100016440;
      *(v0 + 104) = &unk_10018E460;
      *(v0 + 112) = v19;
      [v15 fetchAppShortcutParametersForMangledName:v18 withCompletionHandler:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    v32 = v16;
    sub_100003EFC(v0 + 224, &unk_100199100, &qword_10014E230);
    _convertNSErrorToError(_:)();
  }

  else
  {
    v21 = *(v0 + 256);
    v20 = *(v0 + 264);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (sub_100012824())
    {
      v25 = *(v0 + 248);
      v24 = *(v0 + 256);
      sub_100007764();
      sub_10001DD04();
      *v1 = 136315138;
      v26 = sub_10000485C();
      *(v1 + 4) = sub_100004C50(v26, v27, v28);
      sub_1000132C0(&_mh_execute_header, v29, v23, "Unable to find AppShortcutProvider for %s");
      sub_10001AA00();
      sub_100003A0C();
    }

    sub_1000910C0();
    sub_100007978();
    *v30 = 2;
  }

  swift_willThrow();

  sub_100003A00();

  return v31();
}

uint64_t sub_1000070A8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100007130()
{

  return swift_once();
}

uint64_t sub_100007174()
{

  return swift_once();
}

uint64_t sub_100007194(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2080;
  v4 = *(v3 + 8);
  return v1;
}

uint64_t sub_1000071FC()
{

  return swift_once();
}

uint64_t sub_10000721C()
{
  *(v1 - 88) = *v0;

  return sub_100068CEC();
}

uint64_t sub_10000729C(uint64_t a1)
{
  *(v1 + 80) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_1000072C4()
{

  return swift_once();
}

uint64_t sub_100007314()
{

  return swift_once();
}

uint64_t sub_100007348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[18] = v2;
  v3[19] = a2;
  v5 = v3[16];
  v6 = v3[13];
  v7 = __clz(__rbit64(v2)) | (a2 << 6);
  v8 = (*(a1 + 48) + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(*(a1 + 56) + 8 * v7);

  return swift_bridgeObjectRetain_n();
}

void sub_10000739C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100007418()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

void *sub_100007484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = a2;
  a1[3] = a2;
  a1[4] = v3;
  v4 = v2[4];
  return sub_1000034B4(v2, v2[3]);
}

uint64_t sub_1000074B8()
{

  return swift_once();
}

uint64_t sub_1000074D8()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t sub_100007528()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000754C()
{

  return sub_10001970C(v0 - 256);
}

void sub_10000756C()
{

  v3._countAndFlagsBits = v0 + 21;
  v3._object = (v1 | 0x8000000000000000);
  String.append(_:)(v3);
}

double sub_100007588()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void sub_100007598(uint64_t a1, ...)
{
  va_start(va, a1);

  sub_100013640(v1, va);
}

uint64_t sub_1000075EC(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007654(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BEC8;

  return v7(a1);
}

uint64_t sub_100007764()
{

  return swift_slowAlloc();
}

void sub_10000777C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_1000077B8()
{
  v3 = (*(v1 + 56) + 16 * v0);
  v4 = *(v2 - 192);
  *v3 = *(v2 - 200);
  v3[1] = v4;
  v5 = **(v2 - 248);
  result = *(v2 - 184);
  v7 = *(v2 - 176);
  return result;
}

void *sub_1000077F8@<X0>(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t __dst)
{
  v56 = *a1;
  v57 = a1[1];
  v58 = a1[2];

  return memcpy(&__dst, &STACK[0x258], 0xB0uLL);
}

uint64_t sub_100007874()
{

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000789C(uint64_t a1)
{
  *(a1 + 8) = sub_1000CEBF8;
  v2 = *(v1 + 464);
  return v1 + 248;
}

uint64_t sub_1000078D0()
{

  return sub_10002EB80(v0, v1);
}

uint64_t sub_100007940()
{
}

void sub_10000795C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_100007978()
{

  return swift_allocError();
}

uint64_t sub_1000079B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_100004C50(a1, a2, va);
}

uint64_t sub_1000079D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return a1;
}

uint64_t sub_100007A44(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100007A88()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100007AC0()
{

  return swift_once();
}

uint64_t sub_100007AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  *(v36 - 96) = a1;
  *v35 = a35;
  return *(v36 - 120);
}

uint64_t sub_100007B38()
{

  return swift_once();
}

uint64_t sub_100007B80(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100007BD0()
{

  return Set.init(minimumCapacity:)();
}

uint64_t sub_100007C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;

  return type metadata accessor for UUID();
}

uint64_t sub_100007C48(unint64_t *a1)
{

  return sub_100013EBC(a1, v1, v2);
}

uint64_t sub_100007CB0()
{

  return swift_once();
}

uint64_t sub_100007CD0()
{

  return swift_once();
}

uint64_t sub_100007D04(void *a1)
{
  sub_1000034B4(a1, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t sub_100007D64()
{

  return swift_unexpectedError();
}

uint64_t sub_100007DB8()
{

  return swift_once();
}

id sub_100007E4C()
{

  return sub_1000B2C68(v0, v1, 9010, 0);
}

uint64_t sub_100007E74()
{

  return swift_once();
}

uint64_t sub_100007ED0()
{

  return swift_once();
}

uint64_t sub_100007F18()
{

  return swift_once();
}

void sub_100007F38(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2080;
}

uint64_t sub_100007F90()
{

  return swift_once();
}

uint64_t sub_100007FC0()
{

  return swift_once();
}

uint64_t sub_100007FFC()
{

  return swift_once();
}

uint64_t sub_10000801C()
{

  return swift_once();
}

uint64_t sub_10000803C()
{
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6 = *(v3 + 72);
  *(v4 - 96) = v0;
  v7 = *(v3 + 16);
  return v2;
}

uint64_t sub_100008068()
{
  *(v2 - 144) = v1;
  *(v2 - 136) = v0;
  return v2 - 128;
}

uint64_t sub_1000080C0(uint64_t result)
{
  v1 = *(result + 64);
  *(result + 32);
  return result;
}

uint64_t sub_1000080E8@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_100008120(uint64_t result)
{
  v1[25] = result;
  v1[22] = v2;
  v1[18] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100008144()
{

  return swift_once();
}

uint64_t sub_100008164@<X0>(uint64_t a1@<X8>)
{
  if (v1 < 0)
  {
    return v1;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100008170()
{

  return swift_once();
}

uint64_t sub_1000081B0()
{

  return swift_once();
}

uint64_t sub_1000081EC()
{

  return swift_once();
}

uint64_t sub_100008234()
{

  return swift_once();
}

uint64_t sub_1000082A0(void *a1)
{
  sub_1000034B4(a1, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t sub_1000082CC()
{

  return swift_once();
}

void sub_1000082EC(Swift::String a1)
{

  String.append(_:)(a1);
}

void sub_10000836C(void *a1)
{
  v2 = [a1 processIdentifier];
  v3 = LNDaemonRegistryXPCInterface();
  [a1 setExportedInterface:v3];

  sub_10000860C(a1, v4, v5, v6, v7, v8, v9, v10, aBlock, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v11 = v25;
  if (v25)
  {
    v12 = sub_1000034B4(&aBlock, v25);
    v13 = *(v11 - 1);
    v14 = *(v13 + 64);
    __chkstk_darwin(v12);
    v16 = &aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v16, v11);
    sub_1000034F8(&aBlock);
  }

  else
  {
    v17 = 0;
  }

  [a1 setExportedObject:v17];
  swift_unknownObjectRelease();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = v18;
  *(v20 + 32) = v19;
  v26 = sub_100029784;
  v27 = v20;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10000C13C;
  v25 = &unk_10018FF58;
  v21 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler:v21];
  _Block_release(v21);
}

void sub_10000860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A04();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for Logger();
  v28 = sub_100002944(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  v33 = &a9 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v34 = sub_10000347C(v27, qword_10019E100);
  (*(v30 + 16))(&a9 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v27);
  v35 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v36 = (v32 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v30 + 32))(v37 + v35, v33, v27);
  *(v37 + v36) = v24;
  objc_allocWithZone(LNWeakProxy);
  v38 = v24;
  v39 = sub_1000089E4(v20, sub_1000F8390, v37);
  v26[3] = sub_10002EB80(&qword_100198E28, &unk_10014EF50);
  *v26 = v39;
  sub_1000069EC();
}

uint64_t sub_1000087AC()
{
  v1 = type metadata accessor for Logger();
  sub_10000482C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100008858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1000034F8(va);
}

void sub_100008874()
{
  *(v1 + 16) = v3;
  v7 = (v1 + 24 * v2);
  v7[4] = v5;
  v7[5] = v6;
  v7[6] = v4;
  v8 = *(v0 + 512);
}

uint64_t sub_1000088C4()
{

  return swift_once();
}

id sub_1000088F8(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

uint64_t sub_100008910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  return Connection.prepareRowIterator(_:)(&a32);
}

uint64_t sub_100008938(float a1)
{
  *v2 = a1;

  return sub_100004C50(v4, v3, (v1 + 88));
}

uint64_t sub_100008988()
{

  return Connection.init(_:readonly:)(v2, v1, v0);
}

uint64_t sub_1000089C0()
{

  return type metadata accessor for SQLiteEncoder();
}

id sub_1000089E4(void *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000F4FD0;
  v8[3] = &unk_10018EEA8;
  v5 = _Block_copy(v8);
  v6 = [v3 initWithValue:a1 wrapper:v5];

  _Block_release(v5);

  return v6;
}

uint64_t sub_100008AA0(void *a1)
{
  v2 = type metadata accessor for RegistryError(0);
  v3 = sub_10000482C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002958();
  v8 = v7 - v6;
  if ((sub_100008D64() & 1) == 0)
  {
    v28 = sub_10000B484();
    v10 = v9;
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000347C(v11, qword_10019E100);
    sub_100008840();

    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      sub_100010D80();
      v29 = swift_slowAlloc();
      *v15 = 136315650;
      if (v10)
      {
        v16 = v28;
      }

      else
      {
        v16 = 0x646E7542206C696ELL;
      }

      if (!v10)
      {
        v10 = 0xED0000444920656CLL;
      }

      sub_100004C50(v16, v10, &v29);
      sub_100008840();

      *(v15 + 4) = a1;
      *(v15 + 12) = 1024;
      v17 = [v12 processIdentifier];

      *(v15 + 14) = v17;
      *(v15 + 18) = 2080;
      swift_storeEnumTagMultiPayload();
      sub_100027F58();
      sub_100002714();
      sub_100002CF0();
      sub_100027240(v8, v18);
      v19 = sub_1000077D8();
      sub_100004C50(v19, v20, v21);
      sub_100018D28();

      *(v15 + 20) = v17;
      sub_1000FD674();
      _os_log_impl(v22, v23, v24, v25, v26, 0x1Cu);
      swift_arrayDestroy();
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {
    }
  }

  [a1 resume];
  return 1;
}

uint64_t sub_100008D64()
{
  sub_100003D44(0, &qword_100198E20, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v1 = sub_100003D84(0xD000000000000018, 0x80000001001562F0, isa);

  return v1 & 1;
}

uint64_t sub_100008DE4()
{
  if (qword_100198360 != -1)
  {
    swift_once();
  }

  return sub_1000077D8();
}

uint64_t sub_100008E60(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008E98(char *a1, void (**a2)(void, void, void))
{
  v4 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v79 = &v70 - v6;
  v7 = type metadata accessor for String.Encoding();
  v80 = *(v7 - 8);
  v8 = *(v80 + 64);
  __chkstk_darwin(v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v70 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v78 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v77 = &v70 - v21;
  v22 = __chkstk_darwin(v20);
  v82 = &v70 - v23;
  __chkstk_darwin(v22);
  v83 = &v70 - v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  v26 = objc_opt_self();
  _Block_copy(a2);
  v27 = [v26 currentConnection];
  if (!v27)
  {
    goto LABEL_4;
  }

  v28 = v27;
  v81 = v25;
  v76 = a1;
  v29 = *&a1[OBJC_IVAR____TtC10LinkDaemon8Registry_store];
  v30 = OBJC_IVAR____TtC10LinkDaemon13MetadataStore_URL;
  swift_beginAccess();
  sub_100009E90(v29 + v30, v14, &qword_1001990C0, &unk_10014E200);
  if (sub_1000032C4(v14, 1, v15) == 1)
  {

    sub_1000FC404(v14, &qword_1001990C0);
LABEL_4:
    type metadata accessor for RegistryError(0);
    sub_1000098AC(&unk_10019ACB8);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v31 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v31);

    goto LABEL_7;
  }

  v32 = v16;
  (*(v16 + 32))(v83, v14, v15);
  v33 = v82;
  URL.deletingLastPathComponent()();
  sub_10000A92C(v33, 0);
  static String.Encoding.utf8.getter();
  v34 = String.data(using:allowLossyConversion:)();
  v36 = v35;

  (*(v80 + 8))(v10, v7);
  if (v36 >> 60 == 15)
  {
    type metadata accessor for RegistryError(0);
    sub_1000098AC(&unk_10019ACB8);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v37 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v37);

    v38 = *(v32 + 8);
    v38(v82, v15);
    v38(v83, v15);
  }

  else
  {
    v80 = v36;
    if (qword_100198350 != -1)
    {
      swift_once();
    }

    v73 = v34;
    v39 = type metadata accessor for Logger();
    sub_10000347C(v39, qword_10019E100);
    v40 = v77;
    v71 = *(v32 + 16);
    v71(v77, v82, v15);
    v41 = v28;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v42, v43);
    v75 = v41;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v84 = v70;
      *v45 = 67240450;
      *(v45 + 4) = [v41 processIdentifier];

      *(v45 + 8) = 2080;
      sub_1000098AC(&qword_100198D68);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = *(v32 + 8);
      v74 = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v77 = v49;
      (v49)(v40, v15);
      v50 = sub_100004C50(v46, v48, &v84);

      *(v45 + 10) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Granting %{public}d read access to %s", v45, 0x12u);
      sub_1000034F8(v70);
    }

    else
    {

      v51 = *(v32 + 8);
      v74 = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v77 = v51;
      (v51)(v40, v15);
    }

    v52 = v15;
    v53 = v76;
    v72 = v52;
    v71(v78, v83, v52);
    v54 = objc_allocWithZone(NSSecurityScopedURLWrapper);
    v55 = v73;
    v56 = v80;
    sub_1000098F0(v73, v80);
    sub_10000AD5C();
    v58 = v57;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v75;
    v62 = sub_100003D84(v59, v61, 0);

    v63 = type metadata accessor for TaskPriority();
    v64 = v79;
    sub_1000075C4(v79, 1, 1, v63);
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = v62 & 1;
    *(v65 + 40) = v53;
    *(v65 + 48) = sub_10000D4AC;
    *(v65 + 56) = v81;
    *(v65 + 64) = v58;
    v66 = v53;

    v67 = v58;
    sub_10003A6C0(0, 0, v64, &unk_100151620, v65);

    sub_10000D4DC(v55, v56);

    v68 = v72;
    v69 = v77;
    (v77)(v82, v72);
    v69(v83, v68);
  }

LABEL_7:

  _Block_release(a2);
}

uint64_t sub_100009780()
{
  _Block_release(*(v0 + 16));
  sub_1000FD988();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000097B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100009868(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000098AC(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000098F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100009948()
{
  *(v2 + 16) = v1;
  v5 = v2 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t sub_100009960()
{
  *(v0 + 24) = sub_10003306C;

  return swift_continuation_init();
}

uint64_t sub_1000099E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_10001DF8C(va);
}

uint64_t sub_100009A0C(uint64_t result)
{
  *(result + 8) = sub_10008B194;
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[11];
  return result;
}

void sub_100009A70()
{

  sub_1000B5DF0((v2 + 16), (v1 + 32), v3, v0);
}

void sub_100009AA4(uint64_t *a1@<X8>)
{

  sub_100013640(v1, a1);
}

uint64_t sub_100009AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{

  return sub_10001859C(v7, v8, v9, 0, 0xE000000000000000, a6, a7);
}

uint64_t sub_100009B18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100009B70()
{
  sub_1000070C8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004DC8(v3);
  *v4 = v5;
  v6 = sub_1000070A8(v4);

  return v7(v6);
}

uint64_t sub_100009C24()
{
  result = *(v0 + 128);
  v2 = *(v0 + 112);
  return result;
}

uint64_t sub_100009C34()
{

  return swift_slowAlloc();
}

uint64_t sub_100009C64()
{
}

uint64_t sub_100009CD8()
{
  if (qword_100198130 != -1)
  {
    swift_once();
  }

  return sub_1000077D8();
}

id sub_100009D54()
{
  v0 = [objc_opt_self() currentConnection];
  if (!v0)
  {
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000347C(v1, qword_10019DA38);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No current XPC connection.", v4, 2u);
    }

    sub_100060730();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_100009E90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100013294(a1, a2, a3, a4);
  sub_10000482C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000077D8();
  v9(v8);
  return v4;
}

uint64_t sub_100009EDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10002EB80(a3, a4);
  sub_10000482C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000077D8();
  v9(v8);
  return a2;
}

uint64_t sub_100009F38()
{
  sub_1000046C8();
  v3 = sub_10002EB80(v1, v2);
  sub_10000482C(v3);
  v5 = *(v4 + 16);
  v6 = sub_1000077D8();
  v7(v6);
  return v0;
}

NSObject *sub_10000A01C(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v59 = a1;
  v7 = type metadata accessor for String.Encoding();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v51 - v12;
  v14 = type metadata accessor for URL();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  v16 = __chkstk_darwin(v14);
  v53 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  if (qword_100198128 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_10000347C(v20, qword_10019DA38);

  v54 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v51 = v14;
    v52 = v3;
    v58 = v19;
    v25 = v24;
    v26 = swift_slowAlloc();
    v61 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100004C50(v59, a2, &v61);
    _os_log_impl(&_mh_execute_header, v22, v23, "Creating sandbox exception for %s...", v25, 0xCu);
    sub_1000034F8(v26);

    v14 = v51;
    v4 = v52;
    v19 = v58;
  }

  v27 = *(&v5->isa + OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager);
  sub_10000AF04(v13);
  if (sub_1000032C4(v13, 1, v14) == 1)
  {
    sub_100003EFC(v13, &qword_1001990C0, &unk_10014E200);
    sub_100060730();
    swift_allocError();
    *v28 = 4;
    swift_willThrow();
    return v27;
  }

  (*(v60 + 32))(v19, v13, v14);
  v27 = v5;
  v29 = sub_100009D54();
  if (v4)
  {
LABEL_8:
    (*(v60 + 8))(v19, v14);
    return v27;
  }

  v30 = v29;
  v32 = sub_10000A92C(v19, 0);
  v34 = v33;

  v35 = v55;
  static String.Encoding.utf8.getter();
  v36 = String.data(using:allowLossyConversion:)();
  v38 = v37;
  (*(v56 + 8))(v35, v57);
  if (v38 >> 60 == 15)
  {

    v27 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v27, v39, "Failed to issue sandbox extension: data conversion failed.", v40, 2u);
    }

    sub_100060730();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v58 = v19;
  v59 = v36;

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v45;
    *v44 = 136315138;
    v46 = sub_100004C50(v32, v34, &v61);

    *(v44 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v42, v43, "Sandbox exception token issued: %s", v44, 0xCu);
    sub_1000034F8(v45);
  }

  else
  {
  }

  v47 = v60;
  v48 = v58;
  (*(v60 + 16))(v53, v58, v14);
  v49 = objc_allocWithZone(NSSecurityScopedURLWrapper);
  sub_10000AD5C();
  v27 = v50;
  (*(v47 + 8))(v48, v14);
  return v27;
}

void sub_10000A674(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = sub_10000A01C(a1, a2);
  (a4)[2](a4, v5, 0);

  _Block_release(a4);
}

char *sub_10000A758(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000A814(a1, a2);
  sub_10000AE20(&off_10018B278);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

void *sub_10000A7A4(uint64_t a1, uint64_t a2)
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

  sub_10002EB80(&qword_100198D58, &unk_100152B60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000A814(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10000A7A4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10000A92C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &APP_SANDBOX_READ;
  if (a2)
  {
    v11 = &APP_SANDBOX_READ_WRITE;
  }

  v12 = *v11;
  URL.path.getter();
  [v3 auditToken];
  String.utf8CString.getter();

  v13 = sandbox_extension_issue_file_to_process();

  if (v13)
  {
    v14 = String.init(cString:)();
    free(v13);
  }

  else
  {
    v15 = v3;
    v16 = errno.getter();
    v17 = v16;
    if (v16 == 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    LODWORD(v45) = v18;
    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000347C(v19, qword_10019E008);
    v20 = v7;
    v21 = *(v7 + 16);
    v22 = v10;
    v23 = v6;
    v21(v10, a1, v6);
    v24 = v15;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v17;
      v43 = v26;
      v28 = v17 == 2;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v29 = 138412802;
      sub_100078B8C();
      swift_allocError();
      *v31 = v45;
      *(v31 + 4) = v28;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      *(v29 + 12) = 2080;
      [v24 auditToken];
      type metadata accessor for audit_token_t(0);
      v33 = String.init<A>(describing:)();
      v35 = sub_100004C50(v33, v34, &v46);

      *(v29 + 14) = v35;
      *(v29 + 22) = 2080;
      v36 = URL.path.getter();
      v38 = v37;
      (*(v20 + 8))(v22, v23);
      v39 = sub_100004C50(v36, v38, &v46);

      *(v29 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v25, v43, "Failed to issue sandbox extension: %@. auditToken %s, path %s", v29, 0x20u);
      sub_100003E9C(v30, &unk_10019A260, &unk_10014D030);
      sub_100004DE4();

      swift_arrayDestroy();
      sub_100004DE4();

      sub_100004DE4();
    }

    else
    {

      (*(v20 + 8))(v22, v6);
      v27 = v17;
    }

    v14 = v27 == 2;
    sub_100078B8C();
    swift_allocError();
    *v40 = v45;
    *(v40 + 4) = v14;
    swift_willThrow();
  }

  return v14;
}

void sub_10000AD5C()
{
  sub_1000FDCA4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  sub_100004F8C();
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v1 initWithURL:v8 readonly:v3 & 1 scope:isa];

  v10 = sub_100004F8C();
  sub_100009B18(v10, v11);
  v12 = type metadata accessor for URL();
  sub_10000482C(v12);
  (*(v13 + 8))(v5);
  sub_1000FDC90();
}

uint64_t sub_10000AE20(uint64_t result)
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

    result = sub_10003C820(result, v8, 1, v3);
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

uint64_t sub_10000AF04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20[-v5];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 16) == 1)
  {
    v12 = qword_10019E598;
    swift_beginAccess();
    sub_100009E90(v1 + v12, v6, &qword_1001990C0, &unk_10014E200);
    if (sub_1000032C4(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v11, v6, v7);
      URL.appendingPathComponent(_:)();
      (*(v8 + 8))(v11, v7);
      v18 = 0;
      return sub_1000075C4(a1, v18, 1, v7);
    }

    sub_100003EFC(v6, &qword_1001990C0, &unk_10014E200);
  }

  if (qword_100198128 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000347C(v13, qword_10019DA38);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100004C50(0x3A726F66284C5255, 0xE900000000000029, &v21);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s not executed due to failed initialization - nil directory", v16, 0xCu);
    sub_1000034F8(v17);
  }

  v18 = 1;
  return sub_1000075C4(a1, v18, 1, v7);
}

uint64_t sub_10000B238()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000B274(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setBundleIdentifier:v4];
}

uint64_t sub_10000B2D8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1000077D8();
}

uint64_t sub_10000B338(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10002EB80(&qword_100199D28, &qword_10014E830);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10014CE90;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 48) = a3;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v8 == a2)
  {

    v21 = a3;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = a3;

    if ((v10 & 1) == 0)
    {
      v12 = *(v3 + OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = sub_10000B5E4(v13, v14);
      v17 = v16;
      v19 = v18;

      if (v17)
      {
        sub_10000EE00(1, 2, 1, v7);
        v7 = v20;
        v20[2] = 2;
        v20[7] = v15;
        v20[8] = v17;
        v20[9] = v19;
      }
    }
  }

  return v7;
}

uint64_t sub_10000B484()
{
  [v0 auditToken];
  if (!CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000347C(v1, qword_10019E008);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "CPCopyBundleIdentifierAndTeamFromAuditToken returned false", v4, 2u);
      sub_100004DE4();
    }
  }

  return 0;
}

uint64_t sub_10000B5E4(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = qword_10019E598;
  swift_beginAccess();
  sub_100009E90(v2 + v14, v13, &qword_1001990C0, &unk_10014E200);
  if (sub_1000032C4(v13, 1, v5))
  {
    sub_100003EFC(v13, &qword_1001990C0, &unk_10014E200);
    return 0;
  }

  (*(v6 + 16))(v9, v13, v5);
  sub_100003EFC(v13, &qword_1001990C0, &unk_10014E200);
  v16 = URL.path.getter();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v19 == a2)
  {

    goto LABEL_12;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_12:
    sub_100003D44(0, &qword_100199BA8, BMStoreConfig_ptr);
    result = NSPageSize();
    if ((result * 10) >> 64 == (10 * result) >> 63)
    {
      result = sub_10005FE98(v16, v18, 10 * result, 4);
      goto LABEL_14;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  sub_100003D44(0, &qword_100199BA8, BMStoreConfig_ptr);
  result = NSPageSize();
  if ((result * 10) >> 64 != (10 * result) >> 63)
  {
    goto LABEL_16;
  }

  result = sub_10000B8DC(v16, v18, 10 * result);
  if (result)
  {
LABEL_14:
    v22 = result;

    return sub_10000B958(a1, a2, v22);
  }

  return result;
}

id sub_10000B8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithStoreBasePath:v5 segmentSize:a3];

  return v6;
}

uint64_t sub_10000B958(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  sub_100008254();
  if (!v12)
  {
    goto LABEL_14;
  }

  v56[0] = v55;
  v56[1] = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10000BE0C();
  v13 = StringProtocol.trimmingCharacters(in:)();
  v15 = v14;
  (*(v8 + 8))(v11, v7);

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v55;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v18 stringByStandardizingPath];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v20 == v17 && v22 == a2)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_10000BE60(a3);
  if (v25)
  {

    goto LABEL_22;
  }

LABEL_14:
  if (qword_100198128 != -1)
  {
    sub_100002A70();
  }

  v26 = type metadata accessor for Logger();
  sub_10000347C(v26, qword_10019DA38);
  v27 = a3;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v30 = 136315394;
    v31 = sub_10000BE60(v27);
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v31 = v3;
      v33 = 0xE90000000000003ELL;
    }

    v3 = &type metadata for Any;
    v34 = sub_100004C50(v31, v33, v56);

    *(v30 + 4) = v34;
    sub_100008254();
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_100004C50(v55, a2, v56);
    sub_10000739C(&_mh_execute_header, v35, v36, "Invalid identifier detected: path:%s identifier:%s");
    swift_arrayDestroy();
    sub_1000036AC();
    sub_1000036AC();
  }

LABEL_22:
  v37 = qword_100198128;
  v38 = a3;

  if (v37 != -1)
  {
    sub_100002A70();
  }

  v39 = type metadata accessor for Logger();
  sub_10000347C(v39, qword_10019DA38);
  v40 = v38;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v43 = 136446466;
    v44 = sub_100004C50(v55, a2, v56);

    *(v43 + 4) = v44;
    *(v43 + 12) = 2080;
    v45 = sub_10000BE60(v40);
    v47 = v46;

    if (v47)
    {
      v48 = v45;
    }

    else
    {
      v48 = v3;
    }

    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0xE90000000000003ELL;
    }

    v50 = sub_100004C50(v48, v49, v56);

    *(v43 + 14) = v50;
    sub_10000739C(&_mh_execute_header, v51, v52, "Created StreamReference %{public}s at %s");
    swift_arrayDestroy();
    sub_1000036AC();
    sub_1000036AC();
  }

  else
  {
  }

  return v55;
}

unint64_t sub_10000BE0C()
{
  result = qword_1001990C8;
  if (!qword_1001990C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001990C8);
  }

  return result;
}

uint64_t sub_10000BE60(void *a1)
{
  v1 = [a1 datastorePath];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10000BEC8()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  sub_100003A00();

  return v5();
}

uint64_t sub_10000BFAC()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  sub_100003A00();

  return v5();
}

id sub_10000C0A8(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

uint64_t sub_10000C0DC(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_100004C50(v12, v11, &a10);
}

void sub_10000C124(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  sub_100013640(a1, a2);
}

uint64_t sub_10000C13C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000C20C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t sub_10000C2CC(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_10000C380(int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[0] = type metadata accessor for Transcript();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16[0] = v10;
      *v9 = 67109378;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2080;
      if (qword_100198130 != -1)
      {
        swift_once();
      }

      *(v9 + 10) = sub_100004C50(qword_10019DA50, *algn_10019DA58, v16);
      _os_log_impl(&_mh_execute_header, v7, v8, "Invalidated XPC connection from PID %d for service %s", v9, 0x12u);
      sub_1000034F8(v10);
    }

    (*(v3 + 8))(v6, v2);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      swift_beginAccess();
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        sub_10000C638(v13);

        v12 = v14;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10000C608()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_10000C380(*(v0 + 16));
}

uint64_t sub_10000C638(void *a1)
{
  v3 = v1;
  v5 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  sub_100004B70(v5);
  v7 = *(v6 + 64);
  sub_100003A54();
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  if (qword_100198128 != -1)
  {
    sub_100002A70();
  }

  v11 = type metadata accessor for Logger();
  sub_10000347C(v11, qword_10019DA38);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (sub_100010424())
  {
    sub_100007764();
    v15 = sub_100024674();
    *v2 = 138412290;
    *(v2 + 4) = v12;
    *v15 = v12;
    v16 = v12;
    sub_100011AD0(&_mh_execute_header, v17, v14, "invalidatedConnection for %@");
    sub_100003EFC(v15, &unk_10019A260, &unk_10014D030);
    sub_100003A0C();
    sub_100004D70();
  }

  __chkstk_darwin(v18);
  *(&v36 - 2) = v12;
  sub_10000C99C();
  result = sub_10000B484();
  if (v20)
  {
    v21 = *&v3[OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager];
    v22 = sub_10000B5E4(result, v20);
    v24 = v23;
    v26 = v25;

    if (v24)
    {
      type metadata accessor for TaskPriority();
      sub_100007E2C();
      sub_1000075C4(v27, v28, v29, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v3;
      v31[5] = v22;
      v31[6] = v24;
      v31[7] = v26;
      v32 = v3;
      v33 = sub_10000EE44();
      sub_10003A6C0(v33, v34, v10, v35, v31);
    }
  }

  return result;
}

uint64_t sub_10000C860()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10000C8B0()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_10000C8E8()
{
  v2 = *(v0 + 48);

  return type metadata accessor for Logger();
}

uint64_t sub_10000C99C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionLock);

  os_unfair_lock_lock(v1 + 4);
  sub_10000CAE0();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_10000CA20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000CA64(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionObserverConnections;
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

uint64_t sub_10000CB18(uint64_t *a1, uint64_t a2)
{
  v45 = a2;
  v48 = sub_10002EB80(&unk_100199BB0, &unk_10014E7A0);
  v3 = *(*(v48 - 8) + 64);
  v4 = __chkstk_darwin(v48);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v44 = &v38 - v8;
  __chkstk_darwin(v7);
  v40 = &v38 - v9;
  v47 = type metadata accessor for UUID();
  v10 = *(*(v47 - 8) + 64);
  v11 = __chkstk_darwin(v47);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v39 = &v38 - v14;
  v41 = a1;
  v15 = *a1;
  v16 = *a1 + 64;
  v17 = 1 << *(*a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(*a1 + 64);
  v20 = (v17 + 63) >> 6;
  v46 = v13;
  v43 = v13 + 16;
  v49 = v15;

  v22 = 0;
  v42 = v16;
  v23 = v44;
  if (v19)
  {
    while (1)
    {
      v24 = v22;
LABEL_8:
      v25 = __clz(__rbit64(v19)) | (v24 << 6);
      v26 = v49;
      (*(v46 + 16))(v23, *(v49 + 48) + *(v46 + 72) * v25, v47);
      v27 = *(*(v26 + 56) + 8 * v25);
      v28 = v48;
      *(v23 + *(v48 + 48)) = v27;
      sub_10005644C(v23, v6, &unk_100199BB0, &unk_10014E7A0);
      sub_100003D44(0, &qword_100199300, NSObject_ptr);
      v29 = *&v6[*(v28 + 48)];
      v30 = v27;
      if (static NSObject.== infix(_:_:)())
      {
        break;
      }

      v19 &= v19 - 1;
      result = sub_100003EFC(v6, &unk_100199BB0, &unk_10014E7A0);
      v22 = v24;
      v16 = v42;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    v31 = v40;
    sub_10005644C(v6, v40, &unk_100199BB0, &unk_10014E7A0);

    v32 = v46;
    v33 = *(v46 + 32);
    v34 = v38;
    v35 = v31;
    v36 = v47;
    v33(v38, v35, v47);
    v37 = v39;
    v33(v39, v34, v36);

    return (*(v32 + 8))(v37, v36);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
      }

      v19 = *(v16 + 8 * v24);
      ++v22;
      if (v19)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000CEB0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000CEF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = sub_100004DC8(v7);
  *v8 = v9;
  v8[1] = sub_10000BFAC;
  sub_10001298C();
  sub_100003AB4();

  return sub_10000D014(v10, v11, v12, v13, v14, v15, v5);
}

uint64_t sub_10000CFAC()
{
  sub_1000036A0();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager);
  sub_10000D15C();
  sub_100003A00();

  return v5();
}

uint64_t sub_10000D014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10000CFAC, 0, 0);
}

uint64_t sub_10000D038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_10019C860;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = sub_10000C2A0(a2, a3);
  if (v9)
  {
    v10 = v8;
    v11 = *(a1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a1 + v6);
    v13 = v17[3];
    sub_10002EB80(&qword_100199B90, &qword_10014E788);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v13);
    v14 = *(v17[6] + 16 * v10 + 8);

    v15 = *(v17[7] + 8 * v10);
    sub_10002EB80(&unk_100199B98, &unk_10014E790);
    _NativeDictionary._delete(at:)();
    *(a1 + v6) = v17;
  }

  return swift_endAccess();
}

uint64_t sub_10000D15C()
{
  v1 = *(v0 + qword_10019C868);

  os_unfair_lock_lock(v1 + 4);
  sub_10000CA20();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_10000D228(int a1, int a2, int a3, int a4, void *a5)
{
  v8 = sub_100012B48(a1, a2, a3, a4, a5);
  sub_1000046B8();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v8;
  v9[5] = v7;
  v10 = v6;
  v11 = v5;
  v12 = v7;
  v13 = sub_1000077D8();

  return sub_100006240(v13, v14);
}

uint64_t sub_10000D290()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_10000D364()
{
  v1[18] = 0;
  v1[19] = 0x4C4C554E20544F4ELL;
  v1[20] = 0xE800000000000000;
  v1[21] = v0;
}

uint64_t sub_10000D384(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4[5] = v11;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_10000DFEC;

  return sub_10000D490(v7, v9, a2, v11);
}

uint64_t sub_10000D490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_100003B20();
}

uint64_t sub_10000D4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10000DD50, 0, 0);
}

uint64_t sub_10000D4DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009B18(a1, a2);
  }

  return a1;
}

uint64_t sub_10000D500()
{
  sub_1000FDBDC();
  sub_100004884();
  sub_1000FD3FC();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = swift_task_alloc();
  v7 = sub_100004DC8(v6);
  *v7 = v8;
  v7[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_1000FDC4C();

  return sub_100011BB4(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10000D5D8()
{
  sub_1000036A0();
  if (*(v0 + 64) == 1 && (v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10LinkDaemon8Registry_ready), (*(v0 + 48) = v1) != 0))
  {
    v2 = async function pointer to Task<>.value.getter[1];

    v3 = swift_task_alloc();
    v4 = sub_1000FDABC(v3);
    *v4 = v5;
    v4[1] = sub_1000D2E98;
    sub_10001278C();

    return Task<>.value.getter();
  }

  else
  {
    v6 = *(v0 + 32);
    (*(v0 + 24))(*(v0 + 40), 0);
    sub_100003A00();

    return v7();
  }
}

void sub_10000D6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v4 = *(a3 + 16);
  v5 = sub_1000077D8();
  v8 = v6;
  v7(v5);
}

uint64_t sub_10000D750()
{
  sub_1000070C8();
  if (*(v0[6] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_observationStatusRegistrySource))
  {
    v0[7] = sub_100010DC0(sub_100010EE8, sub_10011D0D0);
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_10000DE78;
    v2 = v0[4];
    v3 = v0[5];
    v4 = v0[3];
    v5 = sub_10001313C(v0[2]);

    return sub_10000D4B4(v5, v6, v7, v8);
  }

  else
  {
    sub_1000910C0();
    v10 = sub_100007978();
    sub_100091D90(v10, v11);
    sub_1000105C0();

    return v12(0);
  }
}

void sub_10000D88C(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  if (qword_100198308 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000347C(v11, qword_10019E050);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v32 = a1;
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100004C50(a2, a3, &v35);
    *(v14 + 12) = 2080;
    v34[0] = a4;
    v34[1] = a5;

    sub_10002EB80(&unk_100199100, &qword_10014E230);
    v15 = String.init<A>(describing:)();
    v17 = sub_100004C50(v15, v16, &v35);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "Requesting isObserved for %s/%s'", v14, 0x16u);
    swift_arrayDestroy();

    a1 = v32;
  }

  v18 = sub_10000E898(a2, a3, *a1);
  if (!v18)
  {
    goto LABEL_19;
  }

  if (*(v18 + 16))
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = a2;
      v25 = v23;
      v34[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100004C50(v24, a3, v34);
      _os_log_impl(&_mh_execute_header, v20, v21, "isObserved true for %s", v22, 0xCu);
      sub_1000034F8(v25);
    }

    goto LABEL_10;
  }

  if (!a5)
  {

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v27 = sub_1000A0E7C(a4, a5, v19);

  if (!v27 || (v28 = *(v27 + 16), , , !v28))
  {
    v26 = 0;
    goto LABEL_20;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_100004C50(a2, a3, v34);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_100004C50(a4, a5, v34);
    _os_log_impl(&_mh_execute_header, v29, v30, "isObserved true for %s/%s", v31, 0x16u);
    swift_arrayDestroy();
  }

LABEL_10:
  v26 = 1;
LABEL_20:
  *a6 = v26;
}

uint64_t sub_10000DD50()
{
  v10 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v8 = *(v0 + 16);
  v3 = *(*(v0 + 48) + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  v4 = swift_task_alloc();
  *(v4 + 16) = v8;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  os_unfair_lock_lock((v3 + 24));
  sub_10000E878((v3 + 16), v9);
  os_unfair_lock_unlock((v3 + 24));
  v5 = v9[0];

  v6 = *(v0 + 8);

  return v6(v5);
}

void sub_10000DE40()
{
  *(v1 + 16) = v4;
  v7 = (v1 + v6 * v5);
  v7[4] = v3;
  v7[5] = v0;
  v7[6] = v2;
}

id sub_10000DE54@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 3536);

  return [v1 v3];
}

uint64_t sub_10000DE78()
{
  sub_1000070C8();
  v3 = v2;
  sub_1000036D0();
  v5 = v4;
  sub_10000788C();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;
  *(v5 + 72) = v0;

  if (v0)
  {
    v11 = sub_10008D924;
  }

  else
  {
    *(v5 + 80) = v3 & 1;
    v11 = sub_10000DF8C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10000DF8C()
{
  sub_1000036A0();

  sub_1000105C0();
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_10000DFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  v12 = v10;
  v14 = v13;
  v15 = *v11;
  v16 = *v11;
  sub_10000298C();
  *v17 = v16;
  v18 = v15[6];
  v19 = v15[4];
  v20 = v15[2];
  v21 = *v11;
  *v17 = *v11;

  v22 = v15[5];
  v23 = v15[3];

  if (v12)
  {
    _convertErrorToNSError(_:)();
    sub_100091E9C();

    v24 = sub_100011138();
    v25(v24, 0, v14);
  }

  else
  {
    (*(v23 + 16))(v23, v14 & 1, 0);
  }

  _Block_release(v16[3]);
  v26 = v21[1];
  sub_100091FC0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_10000E1A0@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

void sub_10000E1F0()
{
  v1 = v0[11];
  v3 = v0[10];
  v2 = v0[9];
}

uint64_t sub_10000E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_10001859C(a1, a2, a3, a4, a5, v6, v5);
}

uint64_t sub_10000E230()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1000046B8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000E278()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_10000E2B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

uint64_t sub_10000E2E0(int a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2;
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 67109378;
      *(v12 + 4) = a1;
      *(v12 + 8) = 2080;
      if (qword_100198228 != -1)
      {
        swift_once();
      }

      *(v12 + 10) = sub_100004C50(qword_10019DD40, *algn_10019DD48, &v15);
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalidated XPC connection from PID %d for service %s", v12, 0x12u);
      sub_1000034F8(v13);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000E54C()
{
  ObjectType = swift_getObjectType();
  v2 = ObjectType;
  if (qword_100198230 != -1)
  {
    ObjectType = sub_1000088C4();
  }

  v3 = qword_10019DD50;
  __chkstk_darwin(ObjectType);

  os_unfair_lock_lock((v3 + 24));
  sub_10000E524((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10000E624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_100045ADC(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56);
    v8 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
    sub_10000482C(v8);
    v10 = *(v9 + 72);
    sub_100009F38();
    v11 = a4;
    v12 = 0;
    v13 = 1;
    v14 = v8;
  }

  else
  {
    sub_10002EB80(&qword_100199C70, &unk_10014EE60);
    v11 = sub_10001A9BC();
  }

  return sub_1000075C4(v11, v12, v13, v14);
}

BOOL sub_10000E7D4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id sub_10000E80C()
{

  return v0;
}

uint64_t sub_10000E858(uint64_t a1)
{

  return sub_1000075C4(v2, v1, 1, a1);
}

uint64_t sub_10000E898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_10000C2A0(a1, a2), (v5 & 1) != 0))
  {
    v6 = (*(a3 + 56) + 24 * v4);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
  }

  else
  {
    sub_1000B65A8();
  }

  return sub_1000077D8();
}

void sub_10000E934(void *a1)
{
  v2 = [a1 processIdentifier];
  v3 = LNDaemonExtensionXPCInterface();
  [a1 setExportedInterface:v3];

  sub_100004738(aBlock);
  v4 = v16;
  if (v16)
  {
    v5 = sub_1000034B4(aBlock, v16);
    v6 = *(v4 - 1);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v10 = 0;
  }

  [a1 setExportedObject:v10];
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  v17 = sub_100107618;
  v18 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v16 = &unk_10018FFD0;
  v14 = _Block_copy(aBlock);

  [a1 setInvalidationHandler:v14];
  _Block_release(v14);
}

uint64_t sub_10000EBB4()
{
  if (qword_1001983A8 != -1)
  {
    swift_once();
  }

  v0 = qword_10019E328;

  return v0;
}

uint64_t sub_10000ECBC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10000ED04(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    sub_1000079A4();
    if (v9 != v10)
    {
      sub_100006A88();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_10002EB80(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[24 * v11] <= v15)
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_10000EE1C()
{

  return swift_slowAlloc();
}

uint64_t sub_10000EE54(uint64_t a1)
{
  v4 = *(v2 + 56) + 32 * a1;

  return sub_100004D14(v4, v1 + 752);
}

uint64_t sub_10000EE80()
{

  return Error.localizedDescription.getter();
}

uint64_t sub_10000EEB4()
{

  return sub_100003D84(v0, v1, 0);
}

void sub_10000EF08(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  sub_100013640(a1, a2);
}

uint64_t *sub_10000EF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = a1;
  a12 = a2;
  a8 = v16;
  a9 = v15;
  a10 = v14;
  v18 = *(v12 + 8);
  a6 = v13;
  a7 = v18;

  return sub_100013234(&a3);
}

uint64_t (*sub_10000EF60())(void *a1)
{
  v4 = type metadata accessor for UUID();
  v5 = sub_100007A70(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100007DD8();
  __chkstk_darwin(v10);
  sub_1000036DC();
  __chkstk_darwin(v11);
  sub_10001174C();
  if (v12)
  {
    switch([v0 type])
    {
      case 0uLL:

        v13 = [v0 executionUUID];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = sub_1000066CC();
        (v14)(v15);
        (v14)(v2, v3, v1);
        v16 = (*(v7 + 48) + 16) & ~*(v7 + 48);
        v17 = swift_allocObject();
        v18 = sub_1000050FC(v17);
        (v14)(v18);
        return sub_100039A50;
      case 1uLL:
        v34 = [v0 entityIdentifier];
        if (!v34)
        {
          goto LABEL_12;
        }

        v35 = v34;
        v36 = swift_allocObject();
        *(sub_100002968(v36) + 32) = v35;
        return sub_1000399C8;
      case 2uLL:
        v20 = sub_10000F2A0(v0, &selRef_actionType);
        if (!v21)
        {
          goto LABEL_12;
        }

        v22 = v20;
        v23 = v21;
        v24 = [v0 entityIdentifier];
        if (v24)
        {
          v25 = v24;
          v26 = swift_allocObject();
          v27 = sub_100002968(v26);
          v27[4] = v22;
          v27[5] = v23;
          v27[6] = v25;
          return sub_100039958;
        }

        else
        {
          sub_10000709C();
          v40 = swift_allocObject();
          v41 = sub_100002968(v40);
          *(v41 + 32) = v22;
          *(v41 + 40) = v23;
          return sub_10000F494;
        }

      case 3uLL:
        v28 = sub_10000F2A0(v0, &selRef_entityType);
        if (!v29)
        {
          goto LABEL_12;
        }

        v30 = v28;
        v31 = v29;
        sub_10000709C();
        v32 = swift_allocObject();
        v33 = sub_100002968(v32);
        *(v33 + 32) = v30;
        *(v33 + 40) = v31;
        return sub_100039904;
      default:
LABEL_12:

        break;
    }
  }

  sub_100039858();
  v37 = swift_allocError();
  return sub_100004DA8(v37, v38);
}

uint64_t sub_10000F2A0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_10000F300()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_10000F32C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 eventBody];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = a3();

  return v6 & 1;
}

uint64_t sub_10000F39C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000F2A0(a1, &selRef_bundleID);
  if (!v11)
  {
    goto LABEL_16;
  }

  if (v10 == a2 && v11 == a3)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
LABEL_16:
      v18 = 0;
      return v18 & 1;
    }
  }

  v14 = [a1 resolvedAction];
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = sub_10000F4A0(v14);
  if (!v16)
  {
    goto LABEL_16;
  }

  if (v15 == a4 && v16 == a5)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

uint64_t sub_10000F4A0(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10000F510(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!a1)
  {
    return 1;
  }

  v4 = a1;
  LOBYTE(a3) = a3();

  return a3 & 1;
}

uint64_t sub_10000F57C(void *a1, uint64_t (*a2)(void), uint64_t a3, char a4, uint64_t *a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 eventBody];
  if (result)
  {
    v15 = result;
    if (a2())
    {
      if (a4)
      {
        v16 = [v15 executionUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100010164();
        v17 = *(*a5 + 16);
        sub_10001014C(v17);

        v18 = *a5;
        *(v18 + 16) = v17 + 1;
        (*(v10 + 32))(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v13, v9);
      }

      else
      {
      }

      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10000F708(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000F294(a1);
  if (!v11)
  {
    goto LABEL_7;
  }

  if (v10 == a2 && v11 == a3)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
LABEL_7:
      v14 = 0;
      return v14 & 1;
    }
  }

  v15 = [a1 resolvedAction];
  v16 = [v15 identifier];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == a4 && v19 == a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

void sub_10000F828(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  if (*(v6 + 16) == 1)
  {
    v13 = sub_100010054();
    v15 = v14;
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000347C(v16, qword_10019DA38);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      osloga = a6;
      v19 = swift_slowAlloc();
      v34 = a4;
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      v21 = sub_100004C50(v13, v15, aBlock);
      v22 = a5;
      v23 = v21;

      *(v19 + 4) = v23;
      a5 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Pruning %s", v19, 0xCu);
      sub_1000034F8(v20);
      a4 = v34;

      a6 = osloga;
    }

    else
    {
    }

    v28 = objc_allocWithZone(BMStoreStream);

    v29 = a3;
    v30 = sub_10000FC88(a1, a2, a3, 0);
    v31 = swift_allocObject();
    *(v31 + 16) = a5;
    *(v31 + 24) = a6;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_10000F564;
    *(v32 + 24) = v31;
    aBlock[4] = sub_1000610B8;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000610C8;
    aBlock[3] = &unk_10018CE88;
    v33 = _Block_copy(aBlock);

    [v30 pruneWithReason:a4 usingPredicateBlock:v33];

    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000347C(v24, qword_10019DA38);
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100004C50(0xD000000000000021, 0x8000000100154E80, aBlock);
      _os_log_impl(&_mh_execute_header, oslog, v25, "%s not executed due to failed initialization - not initialized", v26, 0xCu);
      sub_1000034F8(v27);
    }

    else
    {
    }
  }
}

id sub_10000FC88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = [v4 initWithPrivateStreamIdentifier:v7 storeConfig:a3 eventDataClass:ObjCClassFromMetadata];

  return v9;
}

uint64_t (*sub_10000FD10())(uint64_t a1)
{
  v4 = type metadata accessor for UUID();
  v5 = sub_100007A70(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100007DD8();
  __chkstk_darwin(v10);
  sub_1000036DC();
  __chkstk_darwin(v11);
  sub_10001174C();
  if (v12)
  {
    switch([v0 type])
    {
      case 0uLL:

        v13 = [v0 executionUUID];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = sub_1000066CC();
        (v14)(v15);
        (v14)(v2, v3, v1);
        v16 = (*(v7 + 48) + 16) & ~*(v7 + 48);
        v17 = swift_allocObject();
        v18 = sub_1000050FC(v17);
        (v14)(v18);
        return sub_1000398DC;
      case 1uLL:
        v34 = [v0 entityIdentifier];
        if (!v34)
        {
          goto LABEL_12;
        }

        v35 = v34;
        v36 = swift_allocObject();
        *(sub_100002968(v36) + 32) = v35;
        return sub_1000398D0;
      case 2uLL:
        v20 = sub_10000F2A0(v0, &selRef_actionType);
        if (!v21)
        {
          goto LABEL_12;
        }

        v22 = v20;
        v23 = v21;
        v24 = [v0 entityIdentifier];
        if (v24)
        {
          v25 = v24;
          v26 = swift_allocObject();
          v27 = sub_100002968(v26);
          v27[4] = v22;
          v27[5] = v23;
          v27[6] = v25;
          return sub_1000398B8;
        }

        else
        {
          sub_10000709C();
          v40 = swift_allocObject();
          v41 = sub_100002968(v40);
          *(v41 + 32) = v22;
          *(v41 + 40) = v23;
          return sub_10000F81C;
        }

      case 3uLL:
        v28 = sub_10000F2A0(v0, &selRef_entityType);
        if (!v29)
        {
          goto LABEL_12;
        }

        v30 = v28;
        v31 = v29;
        sub_10000709C();
        v32 = swift_allocObject();
        v33 = sub_100002968(v32);
        *(v33 + 32) = v30;
        *(v33 + 40) = v31;
        return sub_1000398AC;
      default:
LABEL_12:

        break;
    }
  }

  sub_100039858();
  v37 = swift_allocError();
  return sub_100004DA8(v37, v38);
}

void *sub_1000100E0(uint64_t a1, uint64_t a2, void *a3, objc_class *a4, objc_class *a5, char a6)
{
  v10 = _swiftEmptyArrayStorage;
  v7[2].isa = a4;
  v7[3].isa = a5;
  v8 = a6;
  v9 = &v10;
  sub_10000F828(a1, a2, a3, 2, sub_10000F56C, v7);
  return v10;
}

void sub_1000101BC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    sub_1000079A4();
    if (v12 != v13)
    {
      sub_100006A88();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_100010464(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1000102B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  sub_10002EB80(a3, a4);
  v8 = a5(0);
  sub_10000D33C(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1000103CC()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t *sub_1000103F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v36 = *(v33 + 8);
  a32 = v34;
  a33 = v36;

  return sub_100013234(&a29);
}

BOOL sub_100010424()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100010464(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_10000C8D4();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = sub_100007828();

      return _swift_arrayInitWithTakeBackToFront(v10);
    }
  }

  else
  {
    a4(0);
    v11 = sub_100007828();

    return _swift_arrayInitWithTakeFrontToBack(v11);
  }

  return result;
}

uint64_t sub_100010520()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_10000709C();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10001055C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000105CC()
{
}

uint64_t sub_1000105E8()
{

  return swift_allocError();
}

void sub_10001062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  sub_100013640(v32, &a32);
}

uint64_t *sub_100010670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v38 = *(v35 + 8);
  a34 = v36;
  a35 = v38;

  return sub_100013234(&a31);
}

void sub_10001068C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

id sub_1000106D0(uint64_t *a1, uint64_t a2)
{
  v58 = a1;
  v3 = type metadata accessor for UUID();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  __chkstk_darwin(v3);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002EB80(&qword_10019AD20, &qword_10014D1D8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v48 - v8;
  v10 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v56 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - v15;
  __chkstk_darwin(v14);
  v57 = &v48 - v17;
  v18 = sub_10002EB80(&qword_10019A0B8, &qword_10014EE58);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v51 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v48 - v23;
  __chkstk_darwin(v22);
  v26 = &v48 - v25;
  v27 = objc_opt_self();
  v28 = *(a2 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken + 16);
  v60[0] = *(a2 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken);
  v60[1] = v28;
  result = [v27 if_dataWithAuditToken:v60];
  if (result)
  {
    v30 = result;
    v52 = v6;
    v53 = a2;
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = *v58;
    v54 = v31;
    v55 = v33;
    v35 = v31;
    v36 = v26;
    sub_10000E624(v35, v33, v34, v26);
    sub_100009E90(v26, v24, &qword_10019A0B8, &qword_10014EE58);
    v37 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
    v38 = sub_1000032C4(v24, 1, v37);
    v49 = v37;
    if (v38 == 1)
    {
      sub_100003EFC(v24, &qword_10019A0B8, &qword_10014EE58);
      v39 = 1;
      v40 = v59;
      v41 = v57;
    }

    else
    {

      v40 = v59;
      v41 = v57;
      (*(v59 + 32))(v57, v24, v3);
      v39 = 0;
    }

    sub_1000075C4(v41, v39, 1, v3);
    (*(v40 + 16))(v16, v53 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_identifier, v3);
    sub_1000075C4(v16, 0, 1, v3);
    v42 = *(v52 + 48);
    sub_100009E90(v41, v9, &qword_100199C90, &qword_10014D060);
    sub_100009E90(v16, &v9[v42], &qword_100199C90, &qword_10014D060);
    if (sub_1000032C4(v9, 1, v3) == 1)
    {
      sub_100003EFC(v16, &qword_100199C90, &qword_10014D060);
      sub_100003EFC(v41, &qword_100199C90, &qword_10014D060);
      if (sub_1000032C4(&v9[v42], 1, v3) == 1)
      {
        sub_100003EFC(v9, &qword_100199C90, &qword_10014D060);
LABEL_13:
        v47 = v51;
        sub_1000075C4(v51, 1, 1, v49);
        sub_1000666EC(v47, v54, v55);
        return sub_100003EFC(v36, &qword_10019A0B8, &qword_10014EE58);
      }
    }

    else
    {
      v43 = v56;
      sub_100009E90(v9, v56, &qword_100199C90, &qword_10014D060);
      if (sub_1000032C4(&v9[v42], 1, v3) != 1)
      {
        v44 = v59;
        v45 = v50;
        (*(v59 + 32))(v50, &v9[v42], v3);
        sub_100009868(&qword_1001992E0, &type metadata accessor for UUID);
        v57 = v36;
        LODWORD(v53) = dispatch thunk of static Equatable.== infix(_:_:)();
        v46 = *(v44 + 8);
        v46(v45, v3);
        sub_100003EFC(v16, &qword_100199C90, &qword_10014D060);
        sub_100003EFC(v41, &qword_100199C90, &qword_10014D060);
        v36 = v57;
        v46(v43, v3);
        sub_100003EFC(v9, &qword_100199C90, &qword_10014D060);
        if (v53)
        {
          goto LABEL_13;
        }

LABEL_11:
        sub_100003EFC(v36, &qword_10019A0B8, &qword_10014EE58);
        return sub_100009B18(v54, v55);
      }

      sub_100003EFC(v16, &qword_100199C90, &qword_10014D060);
      sub_100003EFC(v41, &qword_100199C90, &qword_10014D060);
      (*(v59 + 8))(v43, v3);
    }

    sub_100003EFC(v9, &qword_10019AD20, &qword_10014D1D8);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100010D28()
{
}

uint64_t sub_100010D40(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 14) = v6;
  *(v3 + 22) = v4;

  return sub_100004C50(v5, a2, va);
}

uint64_t sub_100010D8C(uint64_t a1)
{

  return sub_100003E9C(a1, v1, v2);
}

uint64_t sub_100010DC0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  sub_100018D28();

  v6 = v2(v5, v3);
  if (v7)
  {
    if (*(v3 + 40) == 1)
    {

      a2(v8, v3);
    }

    swift_willThrow();
  }

  return v6;
}

void (*sub_100010E2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  v10 = *(a1 + 16);
  [v10 lock];
  v11 = sub_100010F3C(a2, a3, a4, a5);
  if (!v5)
  {
    a4 = v11;
  }

  [v10 unlock];

  return a4;
}

uint64_t sub_100010F3C(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v8 = swift_beginAccess();
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v10 == 255)
  {
    v20 = a3;
    v12 = *(a1 + 32);
    (*(a1 + 24))(&v18, v8);
    v11 = v18;
    v13 = v19;
    v14 = a2;
    v15 = *(a1 + 48);
    *(a1 + 48) = v18;
    v16 = *(a1 + 56);
    *(a1 + 56) = v13;
    v14(v11, v13);
    v20(v15, v16);
  }

  else
  {
    v11 = *(a1 + 48);
  }

  a4(v9, v10);
  return v11;
}

id sub_100011038(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_100011050(result, a2 & 1);
  }

  return result;
}

id sub_100011050(void *a1, char a2)
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

uint64_t sub_100011078()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void *sub_1000110F0()
{
  v2 = *(v0 + 136);

  return sub_1000034B4((v0 + 112), v2);
}

uint64_t sub_100011118(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_100004C50(v6, v5, va);
}

uint64_t sub_100011184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_100037A2C(va, v12, v13);
}

uint64_t sub_1000111B4(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2048;
  return result;
}

uint64_t sub_100011208()
{

  return swift_beginAccess();
}

uint64_t sub_100011224@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v5;
  v4[8] = v5;
  v4[9] = a4;
  v4[4] = a4;
  v4[5] = result;
  v4[6] = a2;
  v4[7] = a3;
  return result;
}

uint64_t sub_10001124C()
{

  return sub_1000198BC(34, 0xE100000000000000);
}

void *sub_100011278(void *a1)
{

  return memcpy(a1, v1, 0x68uLL);
}

id sub_100011290(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t sub_1000112AC()
{

  return swift_beginAccess();
}

uint64_t sub_100011318()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1000077D8();
}

uint64_t sub_100011344()
{

  return swift_slowAlloc();
}

BOOL sub_10001135C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100011388(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *v8 = a1;

  return sub_100004C50(v7, v6, va);
}

uint64_t sub_1000113FC()
{
  v2 = *(v0 - 104);
}

void sub_100011414()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void sub_100011458(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  sub_1000079A4();
  if (v9 == v10)
  {
LABEL_7:
    sub_100006778(v8);
    if (v5)
    {
      sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
      v11 = sub_10001A85C();
      j__malloc_size(v11);
      sub_1000182D0();
      v11[2] = v4;
      v11[3] = v12;
      if (a1)
      {
LABEL_9:
        v13 = sub_1000B6410();
        sub_100071004(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    sub_1000B6498();
    goto LABEL_12;
  }

  sub_100006A88();
  if (!v9)
  {
    sub_100007164();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100011548(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_100127828(a1, a2, a3, a4, 0, 0, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100011560()
{

  return swift_arrayInitWithCopy();
}

void sub_100011578(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_1000115D0()
{
  v2 = *(v0 - 192);
  v1 = *(v0 - 184);
  v4 = *(v0 - 208);
  v3 = *(v0 - 200);
  v5 = *(v0 - 216);
  v6 = *(v0 - 120);
}

void *sub_1000115E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __dst, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char __src)
{

  return memcpy(&__dst, &__src, 0xB0uLL);
}

uint64_t sub_100011600()
{

  return swift_allocObject();
}

uint64_t sub_10001161C()
{
  v2 = *(v0 + 48);

  return swift_slowAlloc();
}

uint64_t sub_100011638(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_100011654()
{
  v2 = *(v1 + 120);
  v3 = *(v2 + 16);
  v2 += 16;
  v4 = v0 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
  v5 = *(v2 + 56);
}

void sub_100011680(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t sub_1000116A0()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_100011704()
{
}

uint64_t sub_100011734()
{
  v2 = *(v1 + 176);
  result = v0 + 32;
  *(v1 + 200) = *(v0 + 32);
  return result;
}

uint64_t sub_10001174C()
{

  return sub_10000F294(v0);
}

uint64_t sub_100011794(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

BOOL sub_1000117F4()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

id sub_100011870()
{

  return sub_1000B2C68(v0, v1, 9006, 0);
}

uint64_t sub_1000118AC@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 128) = *(a1 + 8);
  return result;
}

uint64_t sub_1000118C0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  return v1;
}

uint64_t sub_100011904()
{
  v1 = *(*(v0 - 136) + 8);
  result = *(v0 - 96);
  v3 = *(v0 - 224);
  return result;
}

uint64_t sub_100011918@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 152) = v2;
  *(v5 - 144) = v3;
  *(v5 - 136) = v4;
  *(v5 - 128) = result;
  *(v5 - 120) = a2;
  return result;
}

uint64_t sub_100011928(uint64_t *a1)
{
  sub_1000034F8(a1);
  sub_1000034F8((v2 - 120));
  return v1;
}

uint64_t sub_100011968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_10013AEE0(a12, a13, a14, 1, v14);
}

uint64_t sub_1000119EC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 120);
  return *(v2 + 112);
}

uint64_t sub_100011A08()
{

  return swift_slowAlloc();
}

void sub_100011AD0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_100011AF8()
{

  return swift_retain_n();
}

void sub_100011B40()
{

  v3._countAndFlagsBits = v0 | 5;
  v3._object = (v1 | 0x8000000000000000);
  String.append(_:)(v3);
}

uint64_t sub_100011B98(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for Optional();
}

uint64_t sub_100011BB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 64) = a4;
  return _swift_task_switch(sub_10000D5D8, 0, 0);
}

uint64_t sub_100011BDC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v25 = &v25 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - v16;
  v18 = *(v11 - 8);
  v19 = *(v18 + 64);
  result = __chkstk_darwin(v15);
  v22 = &v25 - v21;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_100011F4C();
  sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  if (swift_dynamicCast())
  {
    sub_1000075C4(v17, 0, 1, v11);
    (*(v18 + 32))(v22, v17, v11);
    (*(a4 + 48))(v22, a3, a4);
    (*(v18 + 8))(v22, v11);
    v23 = v27;
    v24 = swift_dynamicCast() ^ 1;
  }

  else
  {
    v24 = 1;
    sub_1000075C4(v17, 1, 1, v11);
    (*(v13 + 8))(v17, v12);
    v23 = v27;
  }

  return sub_1000075C4(v23, v24, 1, a3);
}

uint64_t sub_100011EE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10002EB80(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011F4C()
{
  sub_1000046C8();
  v4 = sub_10002EB80(v2, v3);
  sub_1000073F4(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100011FBC()
{
}

void sub_100011FD8()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t sub_100012020()
{
  v2 = *(v0 - 368);
}

uint64_t sub_100012038()
{

  return swift_allocObject();
}

uint64_t sub_100012058()
{

  return swift_errorRetain();
}

uint64_t sub_100012074()
{

  return swift_slowAlloc();
}

uint64_t sub_1000120BC()
{

  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_1000120DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{

  QueryType.filter(_:)(a1, a2, a3, v46, v47, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_100012154()
{

  return swift_setDeallocating();
}

uint64_t sub_100012174@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = String.datatypeValue.getter();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000121C8()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_100012258(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10001D558;

  return sub_100012300();
}

uint64_t sub_100012314()
{
  v33 = v0;
  v1 = *(v0 + 72);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (sub_1000103CC())
  {
    v4 = *(v0 + 72);
    v5 = sub_100007764();
    v6 = sub_1000056E4();
    v32 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100004C50(*(v4 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier), *(v4 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8), &v32);
    sub_1000129B0();
    _os_log_impl(v7, v8, v9, v10, v5, 0xCu);
    sub_1000034F8(v6);
    sub_100004D8C();
    sub_1000036AC();
  }

  v11 = *(*(v0 + 72) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_registrySource);
  v12 = sub_100007F78();
  sub_100010DC0(v12, sub_10011D0D0);
  if (sub_100092198())
  {
    v13 = *&v3[OBJC_IVAR____TtC10LinkDaemon8Registry_store];
    sub_100012BBC(*(*(v0 + 72) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier), *(*(v0 + 72) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8), v0 + 16);

    v14 = *(v0 + 24);
    if (v14)
    {
      v15 = *(v0 + 32);
      v16 = *(v0 + 40);
      *(v0 + 56) = *(v0 + 16);
      *(v0 + 64) = v14;
      sub_10001D368(v0 + 56);
    }

    v29 = *(v0 + 8);
    v30 = sub_1000077D8();

    return v31(v30);
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (sub_100091E74(v18))
    {
      v19 = sub_100011344();
      sub_10001043C(v19);
      sub_100012858();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      sub_100004D8C();
    }

    type metadata accessor for RegistryError(0);
    sub_100005258();
    sub_100009868(v25, v26);
    sub_10001AAC8();
    sub_100007978();
    sub_1000155FC();
    swift_willThrow();

    sub_100003A00();

    return v27();
  }
}

uint64_t sub_1000125D0()
{

  return type metadata accessor for Expression();
}

BOOL sub_100012638()
{

  return os_log_type_enabled(v0, v1);
}

void sub_100012650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -1 << *(a4 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a4 + 64);
}

uint64_t sub_1000126D8()
{

  return sub_10013E890(v0, 19);
}

uint64_t sub_1000126F4()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id sub_100012738()
{
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];

  return v1;
}

BOOL sub_100012750()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_100012770()
{
}

uint64_t sub_1000127B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return sub_100003E9C(&a31, v31, v32);
}

uint64_t sub_1000127E8()
{

  return sub_100011F4C();
}

BOOL sub_100012824()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_10001283C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10001287C(uint64_t result)
{
  *(result + 8) = sub_1000CE778;
  v2 = *(v1 + 464);
  return result;
}

uint64_t sub_1000128B0()
{
}

uint64_t *sub_100012908()
{
  v1 = *(v0 - 168);
  sub_1000034F8(v1);
  return v1;
}

void sub_10001296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_100013640(v7, va);
}

uint64_t sub_100012998()
{
}

void *sub_1000129D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char __dst, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

void sub_1000129F4(uint64_t a1@<X8>)
{
  v1[8] = a1;
  v1[4] = 42;
  v1[5] = 0xE100000000000000;
}

uint64_t sub_100012A28(float a1)
{
  *v1 = a1;

  return sub_100004C50(v2, v3, (v4 - 72));
}

uint64_t sub_100012A64()
{
  v0[95] = v1;
  v0[81] = 31524;
  v0[82] = 0xE200000000000000;
}

uint64_t sub_100012A8C(unint64_t *a1)
{

  return sub_100013EBC(a1, v1, v2);
}

uint64_t sub_100012AC4()
{

  return sub_10000C2A0(v0, v1);
}

void *sub_100012B48(int a1, int a2, int a3, int a4, void *aBlock)
{

  return _Block_copy(aBlock);
}

uint64_t sub_100012B70()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100012BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  result = sub_100012C78(a1, a2, v11);
  if (v4)
  {
    type metadata accessor for Schema.RuntimeError();
    sub_100002B5C();
    sub_100084084(v8, v9);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }

  else
  {
    v10 = v11[1];
    *a3 = v11[0];
    *(a3 + 16) = v10;
    *(a3 + 32) = v12;
  }

  return result;
}

uint64_t sub_100012C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1001983E0 != -1)
  {
    sub_100008170();
  }

  memcpy(__dst, &unk_10019E430, sizeof(__dst));
  if (qword_1001983E8 != -1)
  {
    sub_100002D98();
  }

  __src[0] = a1;
  v7 = == infix<A>(_:_:)();
  v9 = v8;
  v11 = v10;
  memcpy(v28, __dst, sizeof(v28));
  QueryType.filter(_:)(v7, v9, v11, &type metadata for Table, &protocol witness table for Table, v12, v13, v14, v22, v24, v25, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15], v28[16], v28[17], v28[18], v28[19], v28[20], v28[21], __src[0], a2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);

  memcpy(v33, __src, sizeof(v33));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v33, 0xB0uLL);
  v15 = Connection.pluck(_:)(__src);
  v17 = v16;
  result = sub_1000034F8(__src);
  if (!v3)
  {
    if (v15)
    {
      sub_10001D13C(v15, v17, v30);
      v23 = v30[1];
      v26 = v30[0];
      v19 = v31;

      v21 = v23;
      v20 = v26;
    }

    else
    {
      v19 = 0;
      v20 = 0uLL;
      v21 = 0uLL;
    }

    *a3 = v20;
    *(a3 + 16) = v21;
    *(a3 + 32) = v19;
  }

  return result;
}

uint64_t sub_100012E6C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t == infix<A>(_:_:)()
{
  sub_10000472C();
  return sub_100012FCC();
}

{
  sub_100012AF8();
  return sub_10001D890();
}

{
  sub_100012AF8();
  return sub_10012BD28();
}

{
  sub_100012AF8();
  return sub_10012BEAC();
}

{
  sub_100012AF8();
  return sub_10012C034();
}

{
  sub_10012E858();
  return sub_10012C1B4(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
}

{
  sub_10012E858();
  return sub_10012C818(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
}

uint64_t sub_100012F30()
{

  return swift_beginAccess();
}

uint64_t sub_100012F50()
{

  return static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
}

void sub_100012F74(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_100012FB0()
{

  sub_100017D44();
}

uint64_t sub_100013148()
{

  return swift_slowAlloc();
}

uint64_t sub_100013188()
{
}

uint64_t sub_1000131B8@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v3 + 80);
  v6 = (*(v2 + 48) + ((a1 << 10) | (16 * __clz(__rbit64(v1)))));
  v7 = *v6;
  *(v3 + 176) = v6[1];
}

uint64_t sub_10001320C()
{

  return type metadata accessor for Expression();
}

uint64_t *sub_100013234(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100013294(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10002EB80(a3, a4);
}

void sub_1000132C0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_100013334(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100013398(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;
}

uint64_t sub_1000133C4()
{
}

uint64_t sub_100013400(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

void sub_100013448()
{

  sub_10007029C(0, 1, 1, v0);
}

uint64_t sub_100013468()
{
}

uint64_t sub_1000134B0()
{
  v2 = *(v0 - 288);

  return Logger.logObject.getter();
}

void sub_1000134C8(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void sub_1000134D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100013550()
{
}

uint64_t sub_100013570()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  return v1;
}

uint64_t sub_1000135A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  return sub_1000034F8(&a32);
}

__n128 *sub_1000135CC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x4554414C4C4F43;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_100013608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return ExpressionType.init<A>(_:)(&a9, v9, v10, v11, a1);
}

void sub_100013640(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    v4 = &_swiftEmptyArrayStorage;
    v5 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v6 = v3[3];
      v7 = v3[4];
      sub_1000034B4(v3, v6);
      v8 = (*(v7 + 8))(v6, v7);
      v10 = v9;
      v12 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = v4[2];
        sub_100013A60();
        v4 = v23;
      }

      v13 = v4[2];
      if (v13 >= v4[3] >> 1)
      {
        sub_100013A60();
        v4 = v24;
      }

      v4[2] = v13 + 1;
      v14 = &v4[2 * v13];
      *(v14 + 4) = v8;
      *(v14 + 5) = v10;
      v15 = *(v12 + 16);
      v16 = v5[2];
      if (__OFADD__(v16, v15))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = v5[3] >> 1, v17 < v16 + v15))
      {
        sub_100013B2C();
        v5 = v18;
        v17 = v18[3] >> 1;
      }

      if (*(v12 + 16))
      {
        if (v17 - v5[2] < v15)
        {
          goto LABEL_23;
        }

        sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = v5[2];
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_24;
          }

          v5[2] = v21;
        }
      }

      else
      {

        if (v15)
        {
          goto LABEL_22;
        }
      }

      v3 += 5;
      if (!--v2)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
LABEL_20:
    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    sub_100013EBC(&qword_10019BB00, &unk_10019ACC0, &qword_1001507B0);
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    a2[3] = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    a2[4] = &protocol witness table for Expression<A>;
    *a2 = v25;
    a2[1] = v27;
    a2[2] = v5;
  }
}

uint64_t sub_1000138F4()
{
  swift_getWitnessTable();

  return ExpressionType.expression.getter();
}

uint64_t ExpressionType.expression.getter()
{
  sub_100007D40();
  v3 = (*(v2 + 24))();
  (*(v0 + 32))(v1, v0);
  return v3;
}

uint64_t sub_1000139BC()
{

  return swift_dynamicCast();
}

void sub_1000139F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100013A10()
{

  return swift_willThrow();
}

uint64_t sub_100013A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return sub_100003E9C(&a29, v29, v30);
}

void sub_100013A60()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006778(v6);
  if (v3)
  {
    sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
    v9 = sub_10001A85C();
    sub_100011820(v9);
    sub_100011108(v10);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100013B2C()
{
  sub_1000088A4();
  if (v5)
  {
    sub_1000079A4();
    if (v7 != v8)
    {
      sub_100006A88();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006778(v6);
  if (v3)
  {
    sub_10002EB80(&unk_10019B450, &unk_10014ED30);
    v9 = swift_allocObject();
    sub_100011820(v9);
    sub_10000DE6C(v10 / 40);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || &v0[40 * v2 + 32] <= v3 + 32)
    {
      memmove(v3 + 32, v0 + 32, 40 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_100013C4C()
{
}

void sub_100013C90()
{
  if (*(v0 + 16) > v1)
  {
    v2 = *(v0 + 16);
  }
}

void sub_100013CB4()
{
  *(v0 + 16) = v4;
  v6 = (v0 + 24 * v5);
  v6[4] = v2;
  v6[5] = v3;
  v6[6] = v1;
}

double sub_100013D10()
{
  *(v0 + 304) = 0;
  result = 0.0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  return result;
}

void sub_100013DAC()
{
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v5 = (v0[58] + 200);

  os_unfair_lock_lock(v5);
}

uint64_t sub_100013DDC()
{
}

uint64_t sub_100013E08(uint64_t a1, uint64_t a2)
{
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10014CE90;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = &protocol witness table for String;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return 63;
}

uint64_t sub_100013E90()
{
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
}

uint64_t sub_100013EBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002EC70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013F04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002EC70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013F58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002EC70(a2, a3);
    sub_10001AAC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void RowIterator.compactMap<A>(_:)()
{
  sub_100004DF0();
  v2 = v1;
  v31 = v3;
  v32 = v4;
  v30 = v5;
  v29 = type metadata accessor for Optional();
  sub_10000518C();
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003A54();
  __chkstk_darwin(v10);
  sub_10001891C();
  sub_10000518C();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v15);
  v28 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v25 - v18;
  Array.init()();
  v26 = (v12 + 16);
  v27 = (v12 + 32);
  v20 = (v12 + 8);
  while (1)
  {
    v21 = Statement.failableNext()();
    if (v22)
    {
      break;
    }

    v23 = v21;
    if (!v21)
    {
      goto LABEL_8;
    }

    v30(v24, v23);

    if (sub_1000032C4(v0, 1, v2) == 1)
    {
      (*(v7 + 8))(v0, v29);
    }

    else
    {
      (*v27)(v19, v0, v2);
      (*v26)(v28, v19, v2);
      type metadata accessor for Array();
      Array.append(_:)();
      (*v20)(v19, v2);
    }
  }

LABEL_8:
  sub_100004674();
}

void *sub_100014224(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1000142A0(*(a1 + 16), 0);
  v5 = sub_100021620(v3, v4);
  sub_100014464();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

void *sub_1000142A0(uint64_t a1, uint64_t a2)
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

  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v4 = sub_10001A85C();
  j__malloc_size(v4);
  sub_1000182D0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t sub_100014308(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

uint64_t sub_10001446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v30[-v12];
  v14 = type metadata accessor for LNActionRecord();
  v15 = *(v14 + 20);
  v16 = type metadata accessor for URL();
  sub_1000075C4(a5 + v15, 1, 1, v16);
  *a5 = a1;
  a5[1] = a2;

  sub_100014EE4(a3, a5 + v15);
  v17 = [a4 effectiveBundleIdentifiers];
  v18 = [v17 array];

  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = *(v19 + 16);

  if (v20)
  {
  }

  else
  {
    sub_100009EDC(a3, v13, &qword_1001990C0, &unk_10014E200);
    v21 = objc_allocWithZone(LNEffectiveBundleIdentifier);

    v22 = sub_100064EC0(0, a1, a2, v13);
    v31[3] = sub_100003D44(0, &qword_10019A720, LNEffectiveBundleIdentifier_ptr);
    v31[0] = v22;
    v23 = objc_allocWithZone(NSOrderedSet);
    v24 = sub_100064FA0(v31);
    sub_10002EB80(&qword_100199EC0, &unk_10014ECF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = LNActionMetadata._mangledTypeNameForAppIntentsOnly.getter();
    *(inited + 56) = v26;
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v28 = [a4 metadataByAddingEffectiveBundleIdentifiers:v24 mangledTypeNameByBundleIdentifier:isa];

    a4 = v28;
  }

  result = sub_100003EFC(a3, &qword_1001990C0, &unk_10014E200);
  *(a5 + *(v14 + 24)) = a4;
  return result;
}

uint64_t sub_100014738(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
    v9 = a1 + *(a3 + 20);

    return sub_1000032C4(v9, a2, v8);
  }
}

uint64_t sub_1000147CC()
{
  sub_1000036A0();
  v1 = *v0;
  sub_1000050EC();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 296) = v5;
  if (v5)
  {
    v6 = sub_10008781C;
  }

  else
  {
    v6 = sub_1000148FC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000148FC()
{
  sub_1000921B0();
  sub_1000036C4();
  v1 = v0[36];
  v2 = v0[24];
  v0[38] = v0[23];
  v0[39] = v2;
  v0[40] = v0[25];

  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_100020660;
  v4 = v0[33];
  sub_100091D5C();
  sub_10009206C();

  return sub_100016564();
}

uint64_t sub_1000149DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v24 - v12;
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198148 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v17 = v27;
  v16 = v28;
  if (qword_1001983C0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019E400, *algn_10019E408, a1, a2, &type metadata for String, &protocol witness table for String, &v27);
  v25 = v17;
  v26 = v16;
  if (v28)
  {

    URL.init(fileURLWithPath:)();
    swift_bridgeObjectRelease_n();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = type metadata accessor for URL();
  sub_1000075C4(v15, v18, 1, v19);
  v20 = objc_autoreleasePoolPush();
  if (qword_100198158 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v24 = v20;
  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  sub_1000075C4(v13, 1, 1, v19);
  v23 = static LNActionMetadata.fromJSON(_:bundleMetadataVersion:bundleURL:effectiveBundleIdentifier:)();
  sub_100003EFC(v13, &qword_1001990C0, &unk_10014E200);

  objc_autoreleasePoolPop(v24);
  sub_100009EDC(v15, v10, &qword_1001990C0, &unk_10014E200);
  sub_10001446C(v25, v26, v10, v23, a3);
  sub_100003EFC(v15, &qword_1001990C0, &unk_10014E200);
  v21 = type metadata accessor for LNActionRecord();
  return sub_1000075C4(a3, 0, 1, v21);
}

uint64_t sub_100014E20(uint64_t *a1, Swift::String a2)
{
  v2 = *a1;
  v3 = a1[1];
  String.append(_:)(a2);
  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  LOBYTE(v2) = String.hasSuffix(_:)(v4);

  return v2 & 1;
}

uint64_t type metadata accessor for LNActionRecord()
{
  result = qword_100199E80;
  if (!qword_100199E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014F68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
    v8 = v5 + *(a4 + 20);

    return sub_1000075C4(v8, a2, a2, v7);
  }

  return result;
}

void sub_100014FF4(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);

  swift_beginAccess();
  v6 = 0;
  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v9 = &_swiftEmptyArrayStorage + 32;
  v10 = a2 & ~(a2 >> 63);
  v28 = v5;
  if (v10)
  {
    while (1)
    {
      v11 = v7 + 1;
      *v5 = v7 + 1;
      Cursor.subscript.getter(v7, a1, v29);
      if (!v6)
      {
        v12 = v8[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v13 = a1;
        v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_10002EB80(&unk_10019B450, &unk_10014ED30);
        v16 = swift_allocObject();
        v17 = (j__malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = (v16 + 4);
        v19 = v8[3];
        v20 = v19 >> 1;
        if (v8[2])
        {
          if (v16 != v8 || v18 >= &v8[5 * v20 + 4])
          {
            memmove(v16 + 4, v8 + 4, 40 * v20);
          }

          v8[2] = 0;
        }

        v9 = (v18 + 40 * v20);
        v6 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v8 = v16;
        a1 = v13;
        v5 = v28;
      }

      v22 = __OFSUB__(v6--, 1);
      if (v22)
      {
        break;
      }

      v23 = v29[0];
      v24 = v29[1];
      *(v9 + 4) = v30;
      *v9 = v23;
      *(v9 + 1) = v24;
      v9 += 40;
      --v10;
      v7 = v11;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  v25 = v8[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v22 = __OFSUB__(v26, v6);
    v27 = v26 - v6;
    if (v22)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v8[2] = v27;
  }
}

void Cursor.subscript.getter(uint64_t iCol@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (iCol > 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  switch(sqlite3_column_type(a2, iCol))
  {
    case 1:
      v6 = sqlite3_column_int64(a2, iCol);
      v7 = &type metadata for Int64;
      v8 = &protocol witness table for Int64;
      goto LABEL_9;
    case 2:
      v11 = sqlite3_column_double(a2, iCol);
      *(a3 + 24) = &type metadata for Double;
      *(a3 + 32) = &protocol witness table for Double;
      *a3 = v11;
      return;
    case 3:
      if (!sqlite3_column_text(a2, iCol))
      {
        goto LABEL_14;
      }

      v9 = String.init(cString:)();
      *(a3 + 24) = &type metadata for String;
      *(a3 + 32) = &protocol witness table for String;
      *a3 = v9;
      *(a3 + 8) = v10;
      return;
    case 4:
      v6 = Cursor.subscript.getter(iCol, a2);
      v7 = &type metadata for Blob;
      v8 = &protocol witness table for Blob;
LABEL_9:
      *(a3 + 24) = v7;
      *(a3 + 32) = v8;
      *a3 = v6;
      return;
    case 5:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    default:
      break;
  }

LABEL_15:
  _StringGuts.grow(_:)(27);

  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  sub_100007418();
  __break(1u);
  JUMPOUT(0x1000153BCLL);
}

void Row.get<A>(_:)()
{
  sub_100004DF0();
  v32 = v1;
  v33 = v2;
  v4 = v3;
  v30 = v6;
  v31 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for Optional();
  sub_10000518C();
  v29 = v14;
  v16 = *(v15 + 64);
  sub_100003A54();
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  v20 = type metadata accessor for Expression();
  v34[0] = v12;
  v34[1] = v10;
  v34[2] = v8;
  v21 = type metadata accessor for Expression();

  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  ExpressionType.init<A>(_:)(v34, v20, v21, WitnessTable, v23);
  Row.get<A>(_:)(v34[3], v34[4], v31, v32, v4, v33, v19);

  if (!v0)
  {
    v25 = v29;
    v24 = v30;
    if (sub_1000032C4(v19, 1, v4) == 1)
    {
      (*(v25 + 8))(v19, v13);
      sub_100133A50();
      swift_allocError();
      *v26 = v12;
      *(v26 + 8) = v10;
      *(v26 + 16) = 0;
      *(v26 + 24) = 3;
      swift_willThrow();
    }

    else
    {
      sub_1000073F4(v4);
      (*(v27 + 32))(v24, v19, v4);
    }
  }

  sub_100004674();
}

uint64_t sub_1000155FC()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t ExpressionType.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 24))(a3, a5);
  v12 = v11;
  v13 = (*(a5 + 32))(a3, a5);
  (*(a4 + 40))(v10, v12, v13, a2, a4);
  sub_1000073F4(a3);
  v15 = *(v14 + 8);

  return v15(a1, a3);
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.failableNext()()
{
  v2 = *(v0 + 24);

  v4 = sub_1000157D4(v2, v0);
  v5 = 0;
  if (!v1 && v4)
  {
    v6 = Statement.row.getter();
    sub_100014FF4(v6, v7);
  }

  result.value._rawValue = v5;
  result.is_nil = v3;
  return result;
}

BOOL sub_1000157D4(uint64_t a1, uint64_t a2)
{
  sub_100015918();
  if (qword_10019CA08 != -1)
  {
    sub_1000082CC();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  v5 = sub_100015D94();
  if ((v13 & 1) != 0 || v12 != v5)
  {
    v10 = *(a1 + 104);
    OS_dispatch_queue.sync<A>(execute:)();

    if (!v2)
    {
      return v14;
    }
  }

  else
  {
    v6 = *(a2 + 24);
    swift_beginAccess();
    v7 = sqlite3_step(*(a2 + 16));
    v8 = v7;
    sub_100015DD4(v7, 0);

    if (!v2)
    {
      return v8 == 100;
    }
  }

  return v9;
}

unint64_t sub_100015918()
{
  result = qword_10019BAF0;
  if (!qword_10019BAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019BAF0);
  }

  return result;
}

const char *sub_10001595C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *(a1 + 24);
  sub_100002ECC();
  swift_beginAccess();
  v6 = sqlite3_step(*(a1 + 16));
  result = sub_100015DD4(v6, 0);
  if (!v2)
  {
    *a2 = result == 100;
  }

  return result;
}

uint64_t sub_1000159C8(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    v6 = static Hasher._hash(seed:bytes:count:)();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 4 * v8) != a1);
  }

  return v2;
}

uint64_t sub_100015A58@<X0>(uint64_t *a1@<X8>)
{
  result = static Int64.fromDatatypeValue(_:)();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void Row.get<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  swift_bridgeObjectRetain_n();
  v48 = a1;
  v14 = sub_100015D3C(a1, a2, a3);
  if ((v15 & 1) == 0)
  {
    v28 = v14;
    swift_bridgeObjectRelease_n();
    v29 = a7;
    v30 = v28;
    v31 = a4;
    v32 = a5;
LABEL_19:
    sub_100011BDC(v30, v31, v32, a6, v29);
    return;
  }

  v41 = a4;
  v42 = a7;
  v46 = a2;

  v43 = a3;
  v17 = sub_100014224(v16);
  v18 = 0;
  v47 = v17[2];
  v19 = v17 + 5;
  v20 = _swiftEmptyArrayStorage;
  v44 = a6;
  v45 = a5;
  while (v47 != v18)
  {
    if (v18 >= v17[2])
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v22 = *(v19 - 1);
    v21 = *v19;
    v49[0] = v22;
    v49[1] = v21;

    v51._countAndFlagsBits = v48;
    v51._object = v46;
    if (sub_100014E20(v49, v51))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100011438(0, v20[2] + 1, 1);
        v20 = v50;
      }

      v25 = v20[2];
      v24 = v20[3];
      if (v25 >= v24 >> 1)
      {
        v27 = sub_100005150(v24);
        sub_100011438(v27, v25 + 1, 1);
        v20 = v50;
      }

      v20[2] = v25 + 1;
      v26 = &v20[2 * v25];
      v26[4] = v22;
      v26[5] = v21;
      a6 = v44;
    }

    else
    {
    }

    v19 += 2;
    ++v18;
  }

  v33 = v20[2];

  if (!v33)
  {

    v20 = sub_1001335F4(v43);
    v39 = 1;
LABEL_22:
    sub_100133A50();
    swift_allocError();
    *v40 = v48;
    *(v40 + 8) = v46;
    *(v40 + 16) = v20;
    *(v40 + 24) = v39;
    swift_willThrow();
    return;
  }

  if (v33 != 1)
  {
    v39 = 2;
    goto LABEL_22;
  }

  if (!v20[2])
  {
    goto LABEL_24;
  }

  v34 = v20[4];
  v35 = v20[5];

  v36 = sub_100015D3C(v34, v35, v43);
  v38 = v37;

  if ((v38 & 1) == 0)
  {

    v29 = v42;
    v30 = v36;
    v31 = v41;
    v32 = v45;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_100015D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10000C2A0(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100015D94()
{
  result = v0;
  if (*(v0 + 120) != 1)
  {
    return *(v0 + 112);
  }

  *(v0 + 112) = v0;
  *(v0 + 120) = 0;
  return result;
}

const char *sub_100015DD4(uint64_t a1, uint64_t a2)
{
  if (qword_10019CA20 != -1)
  {
    swift_once();
  }

  if (sub_1000159C8(a1, qword_10019D410))
  {
    return a1;
  }

  v4 = Connection.handle.getter();
  result = sqlite3_errmsg(v4);
  if (result)
  {
    v6 = String.init(cString:)();
    v8 = v7;
    sub_10002EC1C();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    swift_willThrow();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t Statement.row.getter()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[8];
    return v1;
  }

  sub_100002ECC();
  result = swift_beginAccess();
  v1 = v0[2];
  if (v1)
  {
    v4 = Statement.columnCount.getter();
    v0[7] = v1;
    v0[8] = v4;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100015F0C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015F4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  sub_100009B18(*(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 64);
  swift_unknownObjectRelease();
  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100015FAC()
{
  sub_1000070C8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BFAC;

  return sub_10001605C(v2, v3, v4);
}

uint64_t sub_10001605C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10010951C;

  return sub_100016130(v5, v7);
}

uint64_t sub_100016130(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  return _swift_task_switch(sub_100016154, 0, 0);
}

uint64_t sub_100016154()
{
  v1 = v0;
  v2 = v0 + 18;
  v3 = v1 + 26;
  v4 = v1[31];
  v5 = v1[32];
  v6 = v1[30];
  v7 = sub_100016334();
  v9 = v1[30];
  v8 = v1[31];
  if (v7)
  {
    v10 = v1 + 2;
    v11 = objc_opt_self();
    v12 = String._bridgeToObjectiveC()();
    v1[35] = v12;
    v1[2] = v1;
    v1[7] = v3;
    v1[3] = sub_100109204;
    swift_continuation_init();
    v13 = sub_10002EB80(&qword_10019C0F8, &qword_100151CF8);
    sub_100008120(v13);
    v1[19] = 1107296256;
    v14 = &unk_100190130;
  }

  else
  {
    v10 = v1 + 10;
    v11 = objc_opt_self();
    v12 = String._bridgeToObjectiveC()();
    v1[33] = v12;
    v1[10] = v1;
    v1[15] = v3;
    v1[11] = sub_100109090;
    swift_continuation_init();
    v15 = sub_10002EB80(&qword_10019C0F8, &qword_100151CF8);
    sub_100008120(v15);
    v1[19] = 1107296256;
    v14 = &unk_100190158;
  }

  v1[20] = sub_100109448;
  v1[21] = v14;
  [v11 getConnectionHostInterfaceForBundleIdentifier:v12 completionHandler:v2];

  return _swift_continuation_await(v10);
}

BOOL sub_100016334()
{
  sub_1000163FC();

  v0 = sub_100016398();
  v1 = v0;
  if (v0)
  {
  }

  return v1 == 0;
}

id sub_100016398()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() daemonRecordWithBundleIdentifier:v0];

  return v1;
}

unint64_t sub_1000163FC()
{
  result = qword_10019C100;
  if (!qword_10019C100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019C100);
  }

  return result;
}

uint64_t sub_100016440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *sub_1000034B4((a1 + 32), *(a1 + 56));
  if (a5)
  {
    v7 = a5;

    return sub_100038184(v6, v7);
  }

  else
  {
    sub_100003D44(0, &qword_10019ACF0, LNAutoShortcutSubstitution_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003D44(0, &qword_10019ACF8, LNAppShortcutSpanData_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_100016540(v6, v9, v10, v11);
  }
}

uint64_t sub_100016540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 64) + 40);
  *v4 = a2;
  v4[1] = a3;
  v4[2] = a4;
  return _swift_continuation_throwingResume();
}

uint64_t sub_100016564()
{
  sub_1000036A0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = *(*(sub_10002EB80(&qword_10019AC90, &qword_10014FB80) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v6 = type metadata accessor for LSLinkBundleRecord(0);
  v1[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = sub_10001E094();

  return _swift_task_switch(v8, v9, v10);
}

id sub_100016634(void *a1)
{

  return [a1 currentProcess];
}

double sub_100016658()
{
  result = 0.0;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[5] = 0u;
  return result;
}

uint64_t sub_10001668C()
{
  sub_100027014();
  sub_1000036C4();
  v2 = (v1[10] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier);
  v1[14] = *v2;
  v1[15] = v2[1];
  v3 = objc_allocWithZone(LSApplicationRecord);
  sub_1000128FC();

  sub_100011B14();
  v1[16] = sub_100005C3C(v4, v5, v6, v7);
  if (v0)
  {
    sub_100021304();

    sub_100003A00();
    sub_100091EFC();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v8 = *(v1[10] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_registrySource);
    v9 = sub_100007F78();
    v1[17] = sub_100010DC0(v9, sub_10011D0D0);
    v19 = swift_task_alloc();
    v1[18] = v19;
    *v19 = v1;
    v19[1] = sub_10001F7A0;
    sub_100091EFC();

    return sub_1000167F4(v20, v21);
  }
}

uint64_t sub_1000167F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100003B20();
}

uint64_t sub_10001680C()
{
  sub_1000070C8();
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_opt_self();
  v4 = v2;

  sub_1000FD1B8([v3 currentConnection]);
  v5 = swift_task_alloc();
  v6 = sub_1000FD0C8(v5);
  *v6 = v7;
  v6[1] = sub_10001F054;
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  v11 = sub_10000687C();

  return sub_100016920(v11, v12, v13, v14, v15, v16, v17);
}

void sub_1000168DC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_1000168F4()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
}

uint64_t sub_100016900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *(v13 + 16) = v16;

  return sub_10001A798(&a13, v13 + v15 * v14 + 32);
}

uint64_t sub_100016920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for RegistryError(0);
  v7[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000169CC, 0, 0);
}

uint64_t sub_100016CD8()
{

  return swift_dynamicCast();
}

uint64_t sub_100016CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100004C50(v9, v10, &a9);
}

uint64_t sub_100016D30(uint64_t result)
{
  *(v5 - 96) = result;
  *(v5 - 88) = v4;
  *(v5 - 120) = v3;
  *(v5 - 112) = v2;
  *(v5 - 104) = v1;
  return result;
}

id sub_100016D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 3536);

  return [v1 v3];
}

void sub_100016D64()
{

  sub_100011438(0, v0, 0);
}

void sub_100016DF0()
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
  if (!v24 || (v10 = [objc_opt_self() currentProcess], v11 = objc_msgSend(v10, "isApplication"), v10, !v11))
  {
    sub_10000E200();
    sub_1000B63F0();
    v3();
    if (v1)
    {
LABEL_25:

      goto LABEL_26;
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
  v15 = sub_10001AB30();
  v18 = sub_1000B2D18(v15, v16, v17);
  v36 = 0;
  if ([v18 acquireWithError:&v36])
  {
    v19 = v36;
    sub_1000B63F0();
    v3();
    sub_10000C0D0();
    if (v1)
    {
      sub_1000B661C(v20);
      goto LABEL_11;
    }

    sub_1000B661C(v20);

LABEL_9:
    sub_1000113FC();
LABEL_26:
    sub_1000248C0();
    sub_100004674();
    return;
  }

  v21 = v36;
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_11:
  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  sub_10001115C();
  if (!swift_dynamicCast())
  {

    goto LABEL_24;
  }

  v22 = [v35 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000125B4();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000B63B0();
  v24 = v24 && v1 == v23;
  if (v24)
  {
  }

  else
  {
    v25 = sub_100006AC4();

    if ((v25 & 1) == 0)
    {

LABEL_24:

      goto LABEL_25;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_10000C920();

    sub_100028F5C();
    v26 = v35;
    v27 = sub_1000B6520();
    v28 = static os_log_type_t.error.getter();

    if (sub_100010424())
    {
      sub_100007764();
      v29 = sub_100011A08();
      sub_10002131C(v29);
      *v5 = 136315138;
      v34 = v28;
      v30 = [v18 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000263E0();
      sub_100017268();
      sub_1000B6604();
      *(v5 + 4) = v30;
      sub_100011680(&_mh_execute_header, "Failed to acquire assertions: %s", v34);
      sub_10001E11C();
      sub_100012770();
    }

    v31 = sub_100018344();
    v32(v31);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001D684();
    v33 = objc_allocWithZone(NSError);
    sub_100011870();
    sub_100013A10();

    goto LABEL_24;
  }

  __break(1u);
}

void sub_100017244(uint64_t a1@<X8>)
{
  v3 = v1 + 16 * a1;
  *(v2 + 192) = *(v3 + 32);
  *(v2 + 200) = *(v3 + 40);
}

uint64_t sub_100017268()
{

  return sub_100004C50(v0, v1, (v2 - 96));
}

void sub_10001728C(uint64_t *a1@<X8>)
{

  sub_100013640(v1, a1);
}

uint64_t sub_1000172BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a4;
  v7 = type metadata accessor for LNActionRecord();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection);
  sub_100017580(v34);
  v13 = v35;
  v12 = v36;
  sub_1000034B4(v34, v35);
  if (qword_100198148 != -1)
  {
    swift_once();
  }

  *&v31 = a2;
  *(&v31 + 1) = a3;
  v14 = == infix<A>(_:_:)();
  v16 = v15;
  v18 = v17;
  v32 = v13;
  v33 = v12;
  sub_100013234(&v31);
  QueryType.filter(_:)(v14, v16, v18, v13, v12);

  sub_1000034F8(v34);
  sub_10001A798(&v31, v34);
  v19 = v37;
  v20 = sub_10001DF8C(v34);
  result = sub_1000034F8(v34);
  if (!v19)
  {
    v22 = *(v20 + 16);
    if (v22)
    {
      v34[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v23 = *(v29 + 80);
      v37 = v20;
      v24 = v20 + ((v23 + 32) & ~v23);
      v25 = *(v29 + 72);
      do
      {
        sub_10001E984();
        v26 = *&v10[*(v7 + 24)];
        sub_10001E9DC(v10, type metadata accessor for LNActionRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v27 = *(v34[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v24 += v25;
        --v22;
      }

      while (v22);

      v28 = v34[0];
    }

    else
    {

      v28 = _swiftEmptyArrayStorage;
    }

    *v30 = v28;
  }

  return result;
}

uint64_t sub_100017580@<X0>(uint64_t a1@<X8>)
{
  if (qword_100198140 != -1)
  {
    sub_100006744();
    swift_once();
  }

  memcpy(__dst, &unk_10019DA70, sizeof(__dst));
  if (qword_1001983B0 != -1)
  {
    swift_once();
  }

  memcpy(v142, &unk_10019E338, sizeof(v142));
  memcpy(v143, __dst, 0xB0uLL);
  if (qword_100198148 != -1)
  {
    sub_100002A90();
    swift_once();
  }

  v1 = *algn_10019DB28;
  v2 = qword_10019DB30;
  memcpy(__src, __dst, sizeof(__src));
  v92 = qword_10019DB20;
  v3 = sub_100013484();
  QueryType.namespace<A>(_:)(v3, v4, v5, v6, v7, v8, v9, v10, v73, v82, v92, a1, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v134[3] = v17;
  v134[4] = &protocol witness table for Expression<A>;
  v134[0] = v12;
  v134[1] = v14;
  v134[2] = v16;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  sub_100003A98();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10014ECA0;
  if (qword_100198150 != -1)
  {
    sub_100007EAC();
    swift_once();
  }

  v19 = sub_1000077F8(&qword_10019DB38, v74, v83, v93, v103, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11], v134[12], v134[13], v134[14], v134[15], v134[16], v134[17], v134[18], v134[19], v134[20], v134[21], v135, v136, v137, v138, v139, __src[0]);
  sub_100019CFC(v19, v20, v21, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v22, v23, v75, v84, v94, v104, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  *(v18 + 56) = v17;
  *(v18 + 64) = &protocol witness table for Expression<A>;
  *(v18 + 32) = v24;
  *(v18 + 40) = v25;
  *(v18 + 48) = v26;
  if (qword_100198158 != -1)
  {
    sub_100007B0C();
    swift_once();
  }

  v27 = sub_1000077F8(&qword_10019DB50, v76, v85, v95, v105, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11], v134[12], v134[13], v134[14], v134[15], v134[16], v134[17], v134[18], v134[19], v134[20], v134[21], v135, v136, v137, v138, v139, __src[0]);
  sub_100019CFC(v27, v28, v29, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v30, v31, v77, v86, v96, v106, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  *(v18 + 96) = v17;
  *(v18 + 104) = &protocol witness table for Expression<A>;
  *(v18 + 72) = v32;
  *(v18 + 80) = v33;
  *(v18 + 88) = v34;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  v35 = qword_10019E428;
  sub_10002483C(__src);
  v36 = sub_100012014();
  QueryType.namespace<A>(_:)(v36, v37, v35, &type metadata for Table, v38, &protocol witness table for Table, v39, v40, v78, v87, v97, v107, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  *(v18 + 136) = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  *(v18 + 144) = &protocol witness table for Expression<A>;
  *(v18 + 112) = v42;
  *(v18 + 120) = v44;
  *(v18 + 128) = v46;
  if (qword_1001983C0 != -1)
  {
    swift_once();
  }

  v47 = qword_10019E400;
  v48 = *algn_10019E408;
  v49 = qword_10019E410;
  sub_10002483C(__src);
  v50 = sub_10002EB80(&unk_100199100, &qword_10014E230);
  QueryType.namespace<A>(_:)(v47, v48, v49, &type metadata for Table, v50, &protocol witness table for Table, v51, v52, v79, v88, v98, v108, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  *(v18 + 176) = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  *(v18 + 184) = &protocol witness table for Expression<A>;
  *(v18 + 152) = v54;
  *(v18 + 160) = v56;
  *(v18 + 168) = v58;
  SchemaType.select(_:_:)(v134, v18, &type metadata for Table, &protocol witness table for Table);
  swift_setDeallocating();
  sub_100018898();
  sub_1000034F8(v134);
  memcpy(v143, __src, 0xB0uLL);
  v138 = &type metadata for Table;
  v139 = &protocol witness table for Table;
  sub_100003A98();
  v135 = swift_allocObject();
  sub_10002483C((v135 + 16));
  memcpy(v134, __dst, sizeof(v134));
  sub_1000196B0(v142, &v112);
  QueryType.namespace<A>(_:)(v99, v1, v2, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v59, v60, v80, v89, v99, v109, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  if (qword_1001983B8 != -1)
  {
    swift_once();
  }

  v61 = qword_10019E3E8;
  v62 = unk_10019E3F0;
  v63 = qword_10019E3F8;
  sub_10002483C(v134);
  QueryType.namespace<A>(_:)(v61, v62, v63, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v64, v65, v81, v90, v100, v110, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);
  v66 = == infix<A>(_:_:)();
  v68 = v67;
  v70 = v69;

  v111[3] = &type metadata for Table;
  v111[4] = &protocol witness table for Table;
  sub_100003A98();
  *v111 = swift_allocObject();
  memcpy(v134, v143, sizeof(v134));
  QueryType.join(_:_:on:)(1, &v135, v66, v68, v70, &type metadata for Table, &protocol witness table for Table, v71, &protocol witness table for String, v91, v101, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v134[10], v134[11]);

  sub_10001970C(v143);
  return sub_1000034F8(&v135);
}

uint64_t sub_100017B24()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  if (v0[13])
  {

    v6 = v0[14];
  }

  if (v0[15])
  {

    if (v0[17])
    {

      v7 = v0[18];
    }
  }

  v8 = v0[19];

  v9 = v0[23];

  sub_100003A98();

  return _swift_deallocObject(v10, v11, v12);
}

void QueryType.namespace<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_100134208();
  a45 = v47;
  a46 = v48;
  sub_100002764();
  v50 = v49;
  v52 = v51;
  v53 = type metadata accessor for Expression();
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  sub_100004F8C();
  sub_100017FF8();
  sub_100012FB0();
  *(inited + 96) = v53;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v52;
  *(inited + 80) = v50;
  *(inited + 88) = v46;

  sub_100013640(inited, &a27);
  swift_setDeallocating();
  sub_100018898();
  v55 = a30;
  v56 = a31;
  sub_1000034B4(&a27, a30);
  sub_1000126CC(v56);
  a10 = v57(v55, v56);
  a11 = v58;
  a12 = v59;
  v60 = sub_10001317C();
  v62 = sub_10002EB80(v60, v61);
  WitnessTable = swift_getWitnessTable();
  sub_1000111FC();
  v66 = sub_1001340D0(v64, v65);
  ExpressionType.init<A>(_:)(&a10, v53, v62, WitnessTable, v66);
  sub_1000034F8(&a27);
  sub_100018D9C();
}

void sub_100017D44()
{
  sub_100006A04();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v1 + 16);
  v10 = sub_1000FDAEC(v5, v3);
  v9(v10);
  v11 = v29;

  sub_100018C3C(v28);
  if (v11)
  {
    if (v6)
    {
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10014E1F0;
      v13 = sub_100004F8C();
      v9(v13);
      v27 = v8;
      v14 = v33;
      v15 = v34;

      sub_100018C3C(v32);
      v16 = sub_100004F8C();
      v9(v16);
      sub_100018C3C(v35);
      sub_100018000(v14, v15, v35[64], v4, v2);

      v17 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
      *(v12 + 104) = &protocol witness table for Expression<A>;
      *(v12 + 72) = 21313;
      *(v12 + 80) = 0xE200000000000000;
      *(v12 + 88) = &_swiftEmptyArrayStorage;
      *(v12 + 96) = v17;
      *(v12 + 136) = v17;
      *(v12 + 144) = &protocol witness table for Expression<A>;
      v18 = sub_100012BA4();
      sub_1000198BC(v18, v19);
      sub_1000064BC();

      *(v12 + 112) = v0;
      *(v12 + 120) = v2;
      *(v12 + 128) = &_swiftEmptyArrayStorage;
      sub_10000EF08(v12, v27);
      swift_setDeallocating();
      sub_100018898();
      goto LABEL_8;
    }
  }

  v20 = sub_100004F8C();
  v9(v20);
  v21 = v31;

  sub_100018C3C(v30);
  if (!v21)
  {
    v22 = sub_100004F8C();
    v9(v22);

    sub_100018C3C(v32);
  }

  v23 = sub_100004F8C();
  v9(v23);
  sub_100018C3C(v35);
  v24 = sub_10000485C();
  sub_100018000(v24, v25, v26, v4, v2);

LABEL_8:
  sub_1000069EC();
}

uint64_t sub_100017FA0()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t sub_100017FB0()
{
  v1 = v0[9];
  v2 = v0[10];
  result = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  return result;
}

uint64_t sub_100018000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000C984();
  v9 = v8;
  if (v10)
  {
    v11 = sub_100012BA4();
    v6 = sub_1000198BC(v11, v12);
    v5 = v13;
  }

  else
  {
  }

  v14 = *(a5 + 16);
  v15 = sub_10000485C();
  v16(v15);
  v17 = v27;

  sub_100018C3C(v26);
  if (v17)
  {
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v19 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(inited + 56) = v19;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v20 = sub_100012BA4();
    v22 = sub_1000198BC(v20, v21);
    v24 = v23;

    *(inited + 32) = v22;
    *(inited + 40) = v24;
    *(inited + 48) = &_swiftEmptyArrayStorage;
    *(inited + 96) = v19;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v6;
    *(inited + 80) = v5;
    *(inited + 88) = &_swiftEmptyArrayStorage;
    sub_100013640(inited, v9);
    swift_setDeallocating();
    return sub_100018898();
  }

  else
  {
    result = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    v9[4] = &protocol witness table for Expression<A>;
    *v9 = v6;
    v9[1] = v5;
    v9[2] = &_swiftEmptyArrayStorage;
    v9[3] = result;
  }

  return result;
}

uint64_t sub_100018194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_100002764();
  v9 = v8;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v10 = sub_100004C0C();
  *(v10 + 16) = xmmword_10014CE90;
  sub_10001C4A4(v9, v10 + 32);

  sub_100018274(v11);
  sub_10001D6A8(a5, v10, v6, v6, *(v5 + 8), *(v5 + 8));
}
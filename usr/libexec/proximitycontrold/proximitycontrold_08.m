uint64_t sub_1000B40C4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033F178);
  sub_100003078(v0, qword_10033F178);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B4144(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100339828, &unk_100270300);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = PassthroughSubject.init()();
  *(v1 + 64) = 0;
  *(v1 + 72) = &_swiftEmptySetSingleton;
  *(v1 + 80) = _swiftEmptyDictionarySingleton;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  v16 = *a1;
  v17 = v16;
  v8 = a1[2];
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = a1[4];
  *(v1 + 16) = v9;
  *(v1 + 32) = v10;
  *(v1 + 48) = v11;
  *(v1 + 56) = v7;
  swift_allocObject();
  swift_weakInit();

  sub_1000B5A50(&v17, v15);

  sub_100035D04(&qword_100339838, &qword_100271F10);
  sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10);
  v12 = Publisher<>.sink(receiveValue:)();

  sub_1000097E8(&v17, &qword_100339838, &qword_100271F10);

  sub_1000097E8(&v17, &qword_100339838, &qword_100271F10);
  v13 = *(v2 + 64);
  *(v2 + 64) = v12;

  return v2;
}

uint64_t sub_1000B42E8(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000B4348(v1);
  }

  return result;
}

void sub_1000B4348(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  __chkstk_darwin(v4);
  v77 = v6;
  v78 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v63 - v9;
  v70 = sub_100035D04(&qword_10033F2F0, &qword_100276020);
  v69 = *(v70 - 8);
  v11 = *(v69 + 64);
  __chkstk_darwin(v70);
  v68 = v63 - v12;
  v73 = sub_100035D04(&qword_10033F2F8, &qword_100276028);
  v72 = *(v73 - 8);
  v13 = *(v72 + 64);
  __chkstk_darwin(v73);
  v71 = v63 - v14;
  v15 = sub_100035D04(&qword_10033F300, &qword_100276030);
  v75 = *(v15 - 8);
  v76 = v15;
  v16 = *(v75 + 64);
  __chkstk_darwin(v15);
  v74 = v63 - v17;
  if (qword_100338EE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_10033F178);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v80 = v4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v85[0] = v23;
    *v22 = 136315138;
    v24 = sub_1000092A0();
    v26 = v10;
    v27 = sub_100017494(v24, v25, v85);

    *(v22 + 4) = v27;
    v10 = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Observing device: %s", v22, 0xCu);
    sub_10000903C(v23);
  }

  v28 = *(v1 + 48);
  (*(v2 + 40))(&v83, a1);
  if (v84)
  {
    sub_10000E754(&v83, v85);
    v29 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    swift_beginAccess();
    v30 = *(*(v2 + 80) + 16);
    v67 = v2;
    v66 = v29;
    if (v30)
    {

      sub_100019110(a1 + v29);
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v40 = *sub_10000EBC0(v85, v85[3]);

    v65 = sub_1000D8CC0(&off_100300A68, a1, v32 & 1);
    v81 = v65;
    sub_100035CB8();
    v41 = static OS_dispatch_queue.main.getter();
    v82 = v41;
    v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v43 = *(v42 - 8);
    v64 = *(v43 + 56);
    v63[1] = v43 + 56;
    v64(v10, 1, 1, v42);
    sub_100035D04(&qword_10033F310, &unk_100276040);
    sub_10000E244(&qword_10033F318, &qword_10033F310, &unk_100276040);
    sub_1000B5984(&qword_10034B420, 255, sub_100035CB8);
    v44 = v68;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v10, &qword_10034C680, &qword_100270390);

    sub_100035D04(&qword_10033D6D0, &unk_10027C120);
    sub_10000E244(&qword_10033F320, &qword_10033F2F0, &qword_100276020);
    v45 = v71;
    v46 = v70;
    Publisher.map<A>(_:)();
    (*(v69 + 8))(v44, v46);
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v47 = qword_10038B5B8;
    v81 = qword_10038B5B8;
    v64(v10, 1, 1, v42);
    sub_10000E244(&qword_10033F328, &qword_10033F2F8, &qword_100276028);
    v48 = v47;
    v49 = v74;
    v50 = v73;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v10, &qword_10034C680, &qword_100270390);

    (*(v72 + 8))(v45, v50);
    v51 = swift_allocObject();
    v52 = v67;
    swift_weakInit();
    v54 = v78;
    v53 = v79;
    v55 = v66;
    v56 = v80;
    (*(v79 + 16))(v78, a1 + v66, v80);
    v57 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v51;
    *(v58 + 24) = a1;
    (*(v53 + 32))(v58 + v57, v54, v56);
    sub_10000E244(&qword_10033F330, &qword_10033F300, &qword_100276030);
    swift_retain_n();
    v59 = v76;
    v60 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v75 + 8))(v49, v59);
    swift_beginAccess();
    v61 = *(v52 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v52 + 80);
    *(v52 + 80) = 0x8000000000000000;
    sub_10004CE14(v60, a1 + v55, isUniquelyReferenced_nonNull_native);
    *(v52 + 80) = v82;
    swift_endAccess();

    sub_10000903C(v85);
  }

  else
  {
    sub_1000097E8(&v83, &qword_10033F308, &qword_100276038);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v85[0] = v36;
      *v35 = 136315138;
      v37 = sub_1000092A0();
      v39 = sub_100017494(v37, v38, v85);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Transport link not found for %s. Ignoring observation request.", v35, 0xCu);
      sub_10000903C(v36);
    }
  }
}

uint64_t sub_1000B4D9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = qword_100339180;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_10038B4E8;
    v8 = sub_1001C5784(v5);
    v10 = v9;
    v11 = ~v9;

    if (v11)
    {
      if (qword_100338EE0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100003078(v12, qword_10033F178);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Found local call routed to device - enriching remote call activity with info from local call", v15, 2u);
      }

      v16 = objc_allocWithZone(PCTelephonyActivity);
      if (v10)
      {
        v17 = [v16 initFromKnownConversation:v8];
      }

      else
      {
        v17 = [v16 initFromKnownCall:v8];
      }

      v19 = v17;
      sub_100036718(v8, v10);
      result = swift_unknownObjectRelease();
      *a2 = v19;
      return result;
    }

    swift_unknownObjectRelease();
  }

  *a2 = v3;

  return swift_unknownObjectRetain();
}

uint64_t sub_1000B4F94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    if (qword_100338EE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_10033F178);
    swift_errorRetain();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    v18 = os_log_type_enabled(v16, v17);
    v36 = a3;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v34 = v8;
      v20 = v19;
      v33 = swift_slowAlloc();
      v37 = v12;
      v38[0] = v33;
      *v20 = 136315394;
      swift_errorRetain();
      sub_100035D04(&qword_10033F338, qword_100276050);
      v21 = String.init<A>(describing:)();
      v23 = sub_100017494(v21, v22, v38);
      v35 = v7;
      v24 = a4;
      v25 = v23;

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v26 = sub_1000092A0();
      v28 = sub_100017494(v26, v27, v38);

      *(v20 + 14) = v28;
      a4 = v24;
      v7 = v35;
      _os_log_impl(&_mh_execute_header, v16, v17, "remoteActivityPublisher finished: completion=%s, device=%s", v20, 0x16u);
      swift_arrayDestroy();

      v8 = v34;
    }

    (*(v8 + 16))(v11, a4, v7);
    swift_beginAccess();
    sub_1001CF58C(0, v11);
    swift_endAccess();
    if (!v12)
    {
      v29 = *(v14 + 32);
      v30 = v36;
      if ((*(v14 + 24))(v36))
      {
        sub_1000B4348(v30);
      }

      v31 = *(v14 + 56);
      v38[0] = v30;

      PassthroughSubject.send(_:)();
    }

    sub_10007306C();
  }

  return result;
}

void sub_1000B52DC(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 isValid];
  if (qword_100338EE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033F178);
  swift_unknownObjectRetain();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v8 = 136315650;
    v9 = [v3 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100017494(v10, v12, &v39);

    *(v8 + 4) = v13;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4;
    *(v8 + 18) = 2080;
    v14 = sub_1000092A0();
    v16 = sub_100017494(v14, v15, &v39);

    *(v8 + 20) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "remoteActivityPublisher published activity: %s, isValid=%{BOOL}d, device=%s", v8, 0x1Cu);
    swift_arrayDestroy();
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = *(a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
    if (v4)
    {
      v19 = v17;
      swift_unknownObjectRetain();
    }

    else
    {
      v19 = 0;
    }

    v23 = *(v18 + 16);
    *(v18 + 16) = v19;
    swift_unknownObjectRetain();
    v38 = v19;

    sub_1001F0504(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = *(a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
      if (v4)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      else
      {
        v22 = 0;
      }

      v27 = *(v21 + 32);
      v28 = v22;
      swift_unknownObjectRetain();

      sub_1001C12DC(v22);
    }

    else
    {
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v25 = *(a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
        if (v4)
        {
          v26 = v24;
          swift_unknownObjectRetain();
        }

        else
        {
          v26 = 0;
        }

        v32 = *(v25 + 40);
        v28 = v26;
        swift_unknownObjectRetain();

        sub_1001C12B4(v26);
      }

      else
      {
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29)
        {
          v30 = *(a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
          if (v4)
          {
            v31 = v29;
            swift_unknownObjectRetain();
          }

          else
          {
            v31 = 0;
          }

          v36 = *(v30 + 48);
          v28 = v31;
          swift_unknownObjectRetain();

          sub_1001C0488(v31);
        }

        else
        {
          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (!v33)
          {
            return;
          }

          v34 = *(a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
          if (v4)
          {
            v35 = v33;
            swift_unknownObjectRetain();
          }

          else
          {
            v35 = 0;
          }

          v37 = *(v34 + 56);
          v28 = v35;
          swift_unknownObjectRetain();

          sub_1001C12C8(v35);
        }
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000B5778()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  return swift_deallocClassInstance();
}

__n128 sub_1000B5824(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B5838(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000B5880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B58D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_1000B592C(uint64_t a1, uint64_t a2)
{
  result = sub_1000B5984(&qword_10033F2E8, a2, type metadata accessor for PeerActivityObserver);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B5984(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B59CC(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000B4F94(a1, v4, v5, v6);
}

uint64_t sub_1000B5A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100339838, &qword_100271F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B5B20()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033F340);
  sub_100003078(v0, qword_10033F340);
  return Logger.init(subsystem:category:)();
}

id sub_1000B5BA0()
{
  ObjectType = swift_getObjectType();
  if (qword_100338EE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033F340);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = *&v3[qword_10033F360];
    v9 = *&v3[qword_10033F360 + 8];

    v10 = sub_100017494(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s-Deinit", v6, 0xCu);
    sub_10000903C(v7);
  }

  v11 = *&v3[qword_10033F358];
  v12 = *&v3[qword_10033F360];
  v13 = *&v3[qword_10033F360 + 8];
  v14 = v3;
  v15 = v11;

  v16 = String._bridgeToObjectiveC()();

  [v15 removeObserver:v14 forKeyPath:v16 context:0];

  v19.receiver = v14;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "dealloc");
}

uint64_t sub_1000B5DCC(uint64_t a1)
{
  v2 = *(a1 + qword_10033F360 + 8);

  v3 = *(a1 + qword_10033F368 + 8);
}

uint64_t sub_1000B5E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v14 = a5;
    v15 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1000B6578();
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_1000B5F7C(v8, v10, v17, v13);

  return sub_1000B6510(v17);
}

void sub_1000B5F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v45 = a2;
  v6 = *((swift_isaMask & *v4) + 0x50);
  v7 = type metadata accessor for Optional();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v7);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = *(v6 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v41 = &v39 - v16;
  if (qword_100338EE8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_10033F340);

  v18 = v4;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v46 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v39 = v14;
    v48[0] = v23;
    *v22 = 136315650;
    v24 = v18;
    *(v22 + 4) = sub_100017494(*(v18 + qword_10033F360), *(v18 + qword_10033F360 + 8), v48);
    v40 = v7;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100017494(0xD00000000000002BLL, 0x800000010029AEC0, v48);
    *(v22 + 22) = 2080;
    v47[0] = v46;

    sub_100035D04(&qword_10033F3F0, &unk_1002760E0);
    v25 = String.init<A>(describing:)();
    v27 = sub_100017494(v25, v26, v48);
    v7 = v40;

    *(v22 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s-%s: change=%s", v22, 0x20u);
    swift_arrayDestroy();
    v14 = v39;

    a4 = v46;
  }

  else
  {
    v24 = v18;
  }

  if (a4 && v45 && (*(v24 + qword_10033F360) == v44 && *(v24 + qword_10033F360 + 8) == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (*(a4 + 16))
    {
      v28 = sub_10008CE90(NSKeyValueChangeNewKey);
      if (v29)
      {
        v30 = v24;
        sub_10001766C(*(a4 + 56) + 32 * v28, v48);
        sub_10001766C(v48, v47);
        v31 = swift_dynamicCast();
        v32 = *(v14 + 56);
        if (v31)
        {
          v32(v13, 0, 1, v6);
          v33 = v41;
          (*(v14 + 32))(v41, v13, v6);
          v34 = v42;
          (*(v14 + 16))(v42, v33, v6);
          v32(v34, 0, 1, v6);
          v35 = *(v30 + qword_10033F368 + 8);
          (*(v30 + qword_10033F368))(v34);
          (*(v43 + 8))(v34, v7);
          (*(v14 + 8))(v33, v6);
        }

        else
        {
          v32(v13, 1, 1, v6);
          v36 = *(v43 + 8);
          v36(v13, v7);
          v37 = v42;
          v32(v42, 1, 1, v6);
          v38 = *(v30 + qword_10033F368 + 8);
          (*(v30 + qword_10033F368))(v37);
          v36(v37, v7);
        }

        sub_10000903C(v48);
      }
    }
  }
}

uint64_t sub_1000B6510(uint64_t a1)
{
  v2 = sub_100035D04(&unk_100339680, &qword_100278390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B6578()
{
  result = qword_100339C10;
  if (!qword_100339C10)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100339C10);
  }

  return result;
}

uint64_t sub_1000B65D0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033F3F8);
  sub_100003078(v0, qword_10033F3F8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B6650()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000B66C4(void (**a1)(uint64_t, void (*)(void, void), uint64_t))
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000B6F90(v1, 0x6000000000000000uLL);
  }

  return result;
}

uint64_t sub_1000B6728(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000B6F90(v1, 0x8000000000000000);
  }

  return result;
}

uint64_t sub_1000B678C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2 == 4)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_1000B67BC(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000B6F90(a2, a1 | 0x4000000000000000);
  }

  return result;
}

uint64_t sub_1000B6830()
{
  v1 = v0;
  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033F3F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 16);

  v7 = OBJC_IVAR____TtC17proximitycontrold21HandoffSessionManager__session;
  v8 = sub_100035D04(&qword_10033F5A0, &qword_100276200);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC17proximitycontrold21HandoffSessionManager_tasks);

  return v1;
}

uint64_t sub_1000B6974()
{
  sub_1000B6830();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandoffSessionManager()
{
  result = qword_10033F448;
  if (!qword_10033F448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B6A20()
{
  sub_1000B8F18();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

Swift::UInt64 sub_1000B6F90(void (*a1)(uint64_t, void (*)(void, void), uint64_t), unint64_t a2)
{
  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033F3F8);
  sub_100097D54(a1, a2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  sub_1000983A8(a1, a2);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_100017494(0x7228657461647075, 0xEF293A6E6F736165, &v62);
    *(v8 + 12) = 2080;
    v9 = sub_10023FE1C(a1, a2);
    v11 = a1;
    v12 = sub_100017494(v9, v10, &v62);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2080;
    v14 = sub_1000B6ACC(v13);
    v16 = sub_100017494(v14, v15, &v62);

    *(v8 + 24) = v16;
    a1 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: reason=%s, state=%s", v8, 0x20u);
    swift_arrayDestroy();
  }

  v17 = UpTicks()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v62;
  if (v62)
  {
  }

  if (*(*(*(*(v2 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_screenOnMonitor) + 16) + 24) == 1)
  {
    result = sub_1000B7768();
    if (result)
    {
      if (a2 >> 61 == 2)
      {
        v19 = a2 & 0x1FFFFFFFFFFFFFFFLL;
        sub_100097D54(a1, a2);
        if (!sub_1000B9CF0())
        {
          return sub_1000983A8(a1, a2);
        }
      }

      else
      {
        result = sub_1000B7C40();
        if (!result)
        {
          return result;
        }

        v19 = result;
      }

      v20 = *(v2 + 16);
      v21 = type metadata accessor for HandoffSession();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();

      sub_100097D54(a1, a2);

      v25 = sub_100094D34(v24, v19, a1, a2);
      v26 = a1;
      v27 = v25;
      sub_1000983A8(v26, a2);

      swift_weakAssign();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v58 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v58 = 136315394;
        v62 = 60;
        v63 = 0xE100000000000000;
        v64 = v61;
        log = v28;
        UUID.uuidString.getter();
        sub_10000B584(8);
        v59 = v29;

        v30 = static String._fromSubstring(_:)();
        v32 = v31;

        v33._countAndFlagsBits = v30;
        v33._object = v32;
        String.append(_:)(v33);

        v34._countAndFlagsBits = 32;
        v34._object = 0xE100000000000000;
        String.append(_:)(v34);
        v35 = *(v27 + 24);
        v36._countAndFlagsBits = sub_1000092A0();
        String.append(_:)(v36);

        v37._countAndFlagsBits = 62;
        v37._object = 0xE100000000000000;
        String.append(_:)(v37);
        v38 = sub_100017494(v62, v63, &v64);

        *(v58 + 4) = v38;
        *(v58 + 12) = 2080;
        v40 = sub_1001EE1E4(v39);
        v42 = v41;

        v43 = sub_100017494(v40, v42, &v64);

        *(v58 + 14) = v43;
        _os_log_impl(&_mh_execute_header, log, v59, "Starting new session! %s, %s", v58, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v44 = swift_allocObject();
      swift_weakInit();
      v45 = (v27 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
      v46 = *(v27 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
      v47 = *(v27 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler + 8);
      *v45 = sub_1000BABFC;
      v45[1] = v44;

      sub_10002689C(v46);

      swift_getKeyPath();
      swift_getKeyPath();
      v62 = v27;

      static Published.subscript.setter();
      sub_100091044();
      if (qword_1003390F0 != -1)
      {
        swift_once();
      }

      if (qword_10038B2F0)
      {
        sub_1001706E8(v27);
      }

      v48 = UpTicks()();
      v49 = v48 >= v17;
      result = v48 - v17;
      if (v49)
      {
        v50 = UpTicksToSecondsF(_:)(result);
        v51 = sub_100110CA8(v50);
        v53 = v52;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v56 = 136315394;
          *(v56 + 4) = sub_100017494(0x7228657461647075, 0xEF293A6E6F736165, &v62);
          *(v56 + 12) = 2080;
          v57 = sub_100017494(v51, v53, &v62);

          *(v56 + 14) = v57;
          _os_log_impl(&_mh_execute_header, v54, v55, "%s ran in %s", v56, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1000B7768()
{
  if (*(*(*(v0 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled) + 24) != 1)
  {
    if (qword_100338EF0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_10033F3F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_15;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "### Handoff user setting is disabled (Settings > General > AirPlay & Continuity > Transfer To HomePod)";
    goto LABEL_14;
  }

  if (qword_100339290 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10038B600 + 16);
  v2 = *(v1 + 24);

  CurrentValueSubject.value.getter();
  if (v28 == 2)
  {
    v3 = *(v1 + 16);
    CurrentValueSubject.value.getter();

    if (LOBYTE(v27[0]) != 1)
    {
LABEL_6:
      if (qword_100338EF0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100003078(v4, qword_10033F3F8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_15;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "### Local device setup not complete";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);

LABEL_15:

      return 0;
    }
  }

  else
  {

    if ((v28 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  type metadata accessor for ApplicationBlocker();
  swift_initStaticObject();
  if ((sub_100208048() & 1) == 0)
  {
    if (qword_100338EF0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_10033F3F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_15;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "### Foreground application doesn't allow Handoff";
    goto LABEL_14;
  }

  if (qword_1003391C0 != -1)
  {
    swift_once();
  }

  v11 = *(*(qword_10038B5A0 + 40) + 16);
  v12 = *(v11 + 16);
  v13 = *(v12 + 24);

  CurrentValueSubject.value.getter();
  v14 = v28;
  if (v28)
  {
  }

  else
  {
    v16 = *(v12 + 16);
    CurrentValueSubject.value.getter();

    v14 = v27[0];
  }

  v17 = *(v14 + 16);

  if (v17)
  {
    if (qword_100338EF0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003078(v18, qword_10033F3F8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      v27[3] = type metadata accessor for HandoffSuppressionManagerState();
      v27[0] = v11;

      v23 = sub_1000CF338(v27);
      v25 = v24;
      sub_10000903C(v27);
      v26 = sub_100017494(v23, v25, &v28);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "### Handoff is suppressed: %s", v21, 0xCu);
      sub_10000903C(v22);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000B7C40()
{
  v3 = sub_100035D04(&qword_10033F5F0, &qword_1002762C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v59 - v5);
  v7 = *(*(v1 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
  v63 = type metadata accessor for HandoffDevice();
  v64 = type metadata accessor for UUID();
  v65 = sub_1000BAC04(&qword_100339848, &type metadata accessor for UUID);
  swift_getKeyPath();
  v8 = v7 + qword_100346AF8;

  os_unfair_lock_lock(v8);
  v67 = *(v8 + 8);

  swift_getAtKeyPath();

  v9 = v68;
  os_unfair_lock_unlock(v8);

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_100009194(*(v9 + 16), 0);
    v12 = sub_100009A04(&v67, v11 + 32, v10, v9);
    sub_100004F98();
    if (v12 != v10)
    {
      __break(1u);
      goto LABEL_91;
    }
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v67 = _swiftEmptyArrayStorage;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    goto LABEL_51;
  }

  for (i = *(v11 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = 0;
    v62 = v11 & 0xC000000000000001;
    *&v13 = 136315138;
    v59 = v13;
    v60 = v6;
    v61 = i;
    while (v62)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_49;
      }

LABEL_14:
      v18 = *(v16 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);
      v19 = *(v18 + 24);

      CurrentValueSubject.value.getter();
      v20 = v66;
      if (v66 == 6)
      {
        v21 = *(v18 + 16);
        CurrentValueSubject.value.getter();

        v20 = v68;
        v22 = v68 >= 2u;
        if (v68 <= 2u)
        {
          goto LABEL_20;
        }
      }

      else
      {

        v22 = v20 >= 2;
        if (v20 <= 2)
        {
LABEL_20:
          v23 = !v22;
          v24 = 1;
          goto LABEL_24;
        }
      }

      if (v20 != 3 && v20 != 4)
      {
        goto LABEL_9;
      }

      v23 = 0;
      v24 = 0;
LABEL_24:
      sub_10006F838();
      v25 = sub_1001DF2A4();

      if (v25)
      {
        if (v24)
        {
          goto LABEL_9;
        }
      }

      else if (v23)
      {
        goto LABEL_9;
      }

      sub_10006F430(v6);
      v26 = _s8CardInfoOMa();
      v27 = (*(*(v26 - 8) + 48))(v6, 1, v26);
      sub_1000097E8(v6, &qword_10033F5F0, &qword_1002762C0);
      if (v27 == 1)
      {
        if (qword_100338EF0 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_100003078(v28, qword_10033F3F8);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "### Blocking handoff session - device does not have sufficient details to build CardInfo", v31, 2u);
          i = v61;
        }

        goto LABEL_10;
      }

      if ((sub_10006F8C8() & 1) == 0)
      {
        if (qword_100338EF0 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_100003078(v34, qword_10033F3F8);

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v68 = v38;
          *v37 = v59;
          v39 = sub_1000092A0();
          v41 = sub_100017494(v39, v40, &v68);

          *(v37 + 4) = v41;
          _os_log_impl(&_mh_execute_header, v35, v36, "### Handoff not ready on %s", v37, 0xCu);
          sub_10000903C(v38);
          v6 = v60;
        }

        i = v61;
        goto LABEL_10;
      }

      if (sub_1000B9918())
      {
        if (qword_100338F70 != -1)
        {
          swift_once();
        }

        v32 = *(qword_10038B100 + 32);
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (v68 == 1)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v33 = v67[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_10;
        }
      }

LABEL_9:

LABEL_10:
      ++v15;
      if (v17 == i)
      {
        v0 = v67;
        goto LABEL_53;
      }
    }

    if (v15 >= *(v11 + 16))
    {
      goto LABEL_50;
    }

    v16 = *(v11 + 8 * v15 + 32);

    v17 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_14;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v0 = _swiftEmptyArrayStorage;
LABEL_53:

  if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
  {
    v11 = *(v0 + 16);
    if (v11)
    {
      goto LABEL_56;
    }

LABEL_88:

    return 0;
  }

LABEL_87:
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = result;
  if (!result)
  {
    goto LABEL_88;
  }

LABEL_56:
  v2 = v0 & 0xC000000000000001;
  if ((v0 & 0xC000000000000001) == 0)
  {
    if (!*(v0 + 16))
    {
      __break(1u);
      return result;
    }

    v43 = *(v0 + 32);

    if (v11 == 1)
    {
      goto LABEL_83;
    }

    goto LABEL_59;
  }

LABEL_91:
  v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (v11 == 1)
  {
    goto LABEL_83;
  }

LABEL_59:
  v44 = 1;
  while (2)
  {
    v45 = v43;
    v46 = v44;
    while (1)
    {
      if (v2)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v44 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_85;
        }

        if (v46 >= *(v0 + 16))
        {
          goto LABEL_86;
        }

        v43 = *(v0 + 8 * v46 + 32);

        v44 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }
      }

      v47 = *(v43 + 24);
      v48 = *(v47 + 24);

      CurrentValueSubject.value.getter();
      if (BYTE5(v67))
      {
        v49 = *(v47 + 16);
        CurrentValueSubject.value.getter();

        v50 = *&v68;
        v51 = BYTE4(v68);
      }

      else
      {
        v52 = BYTE4(v67);
        v50 = *&v67;

        v51 = v52 & 1;
      }

      if (v51)
      {
        v50 = 3.4028e38;
      }

      v53 = *(v45 + 24);
      v54 = *(v53 + 24);

      CurrentValueSubject.value.getter();
      if (BYTE5(v67))
      {
        v55 = *(v53 + 16);
        CurrentValueSubject.value.getter();

        if ((v68 & 0x100000000) == 0)
        {
          v56 = *&v68;
          goto LABEL_79;
        }
      }

      else
      {
        v57 = *&v67;
        v58 = v67 | (BYTE4(v67) << 32);

        if ((v58 & 0x100000000) == 0)
        {
          v56 = v57;
          goto LABEL_79;
        }
      }

      v56 = 3.4028e38;
LABEL_79:
      if (v50 < v56)
      {
        break;
      }

      ++v46;
      if (v44 == v11)
      {
        v43 = v45;
        goto LABEL_83;
      }
    }

    if (v44 != v11)
    {
      continue;
    }

    break;
  }

LABEL_83:

  return v43;
}

uint64_t sub_1000B84B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000B8518(a1);
  }

  return result;
}

void sub_1000B8518(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v68 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 1);
  v6 = *(v67 + 64);
  __chkstk_darwin(v69);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10033F3F8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v65 = v3;
    v12 = v11;
    v64 = swift_slowAlloc();
    v76 = v64;
    *v12 = 136315650;
    *(v12 + 4) = sub_100017494(0xD000000000000014, 0x800000010029AF70, &v76);
    *(v12 + 12) = 2080;
    aBlock = 60;
    v71 = 0xE100000000000000;
    v63 = v10;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v62 = v9;

    v13 = static String._fromSubstring(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18 = *(a1 + 24);
    v19._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 62;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = sub_100017494(aBlock, v71, &v76);

    *(v12 + 14) = v21;
    *(v12 + 22) = 2080;
    v23 = sub_1001EE1E4(v22);
    v25 = sub_100017494(v23, v24, &v76);

    *(v12 + 24) = v25;
    v26 = v62;
    _os_log_impl(&_mh_execute_header, v62, v63, "%s: session=%s, %s", v12, 0x20u);
    swift_arrayDestroy();

    v3 = v65;
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = aBlock;
  if (aBlock && (, v27 == a1))
  {
    v51 = (a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
    v52 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
    v53 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler + 8);
    *v51 = 0;
    v51[1] = 0;
    sub_10002689C(v52);
    v54 = *(a1 + 24);
    swift_weakAssign();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = 0;

    static Published.subscript.setter();
    if (qword_1003390F0 != -1)
    {
      swift_once();
    }

    if (qword_10038B2F0)
    {
      sub_100170A30(a1);
    }

    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v55 = swift_allocObject();
    swift_weakInit();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = a1;
    v74 = sub_1000BABF4;
    v75 = v56;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_100018AB8;
    v73 = &unk_100305768;
    v57 = _Block_copy(&aBlock);

    v58 = v66;
    static DispatchQoS.unspecified.getter();
    v76 = _swiftEmptyArrayStorage;
    sub_1000BAC04(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
    v59 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v57);
    (*(v3 + 8))(v59, v2);
    (*(v67 + 8))(v58, v69);
  }

  else
  {

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v76 = v69;
      *v30 = 136315394;
      aBlock = 60;
      v71 = 0xE100000000000000;
      UUID.uuidString.getter();
      sub_10000B584(8);

      v31 = static String._fromSubstring(_:)();
      v33 = v32;

      v34._countAndFlagsBits = v31;
      v34._object = v33;
      String.append(_:)(v34);

      v35._countAndFlagsBits = 32;
      v35._object = 0xE100000000000000;
      String.append(_:)(v35);
      v36 = *(a1 + 24);
      v37._countAndFlagsBits = sub_1000092A0();
      String.append(_:)(v37);

      v38._countAndFlagsBits = 62;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      v39 = sub_100017494(aBlock, v71, &v76);

      *(v30 + 4) = v39;
      *(v30 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v40 = aBlock;
      if (aBlock)
      {
        aBlock = 60;
        v71 = 0xE100000000000000;
        UUID.uuidString.getter();
        sub_10000B584(8);

        v41 = static String._fromSubstring(_:)();
        v43 = v42;

        v44._countAndFlagsBits = v41;
        v44._object = v43;
        String.append(_:)(v44);

        v45._countAndFlagsBits = 32;
        v45._object = 0xE100000000000000;
        String.append(_:)(v45);
        v46 = *(v40 + 24);
        v47._countAndFlagsBits = sub_1000092A0();
        String.append(_:)(v47);

        v48._countAndFlagsBits = 62;
        v48._object = 0xE100000000000000;
        String.append(_:)(v48);

        v49 = aBlock;
        v50 = v71;
      }

      else
      {
        v50 = 0xE300000000000000;
        v49 = 7104878;
      }

      v60 = sub_100017494(v49, v50, &v76);

      *(v30 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v28, v29, "### Session finished while not the current session? session=%s, self.session=%s", v30, 0x16u);
      swift_arrayDestroy();
    }
  }
}

void sub_1000B8F18()
{
  if (!qword_10033F458)
  {
    sub_100035D4C(&unk_10033F460, qword_100276138);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10033F458);
    }
  }
}

uint64_t sub_1000B8F7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000B6F90(a2, 0xA000000000000000);
  }

  return result;
}

uint64_t sub_1000B9388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1000B9408(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000B9484()
{
  v0 = sub_100035D04(&qword_10033F5F0, &qword_1002762C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = (&v14 - v2);
  v4 = sub_100070EF4();
  if (v4 == 4)
  {
    return 0;
  }

  v5 = v4;
  sub_10006F838();
  v6 = sub_1001DF2A4();

  if (v6)
  {
    if (v5 < 2u)
    {
      return 0;
    }
  }

  else if (!v5)
  {
    return 0;
  }

  sub_10006F430(v3);
  v7 = _s8CardInfoOMa();
  v8 = (*(*(v7 - 8) + 48))(v3, 1, v7);
  sub_1000097E8(v3, &qword_10033F5F0, &qword_1002762C0);
  result = 1;
  if (v8 != 1)
  {
    return result;
  }

  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_10033F3F8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "### Blocking handoff session - device does not have sufficient details to build CardInfo", v13, 2u);
  }

  return 0;
}

uint64_t sub_1000B967C()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 1544);
  sub_10005F048();
  v2 = v1;

  if (!v2)
  {
    return 1;
  }

  v3 = String.lowercased()();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000C868();

  v4 = String.lowercased()();

  v13 = v3;
  sub_10001369C();
  v5 = StringProtocol.contains<A>(_:)();

  if (v5)
  {

    return 1;
  }

  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10033F3F8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13._countAndFlagsBits = v11;
    *v10 = 136315138;
    v12 = sub_100017494(v4._countAndFlagsBits, v4._object, &v13._countAndFlagsBits);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "### RangingNameFilter doesn't contain substring %s", v10, 0xCu);
    sub_10000903C(v11);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000B9918()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 1528);
  v1 = sub_1000031CC();

  if (v1)
  {
    v2 = sub_100010FF4();
    if (qword_100339130 != -1)
    {
      v13 = v2;
      swift_once();
      v2 = v13;
    }

    v3 = 8;
    if (*(off_10034A1A8 + 24))
    {
      v3 = 10;
    }

    if ((v3 & v2) != 0)
    {
      return 1;
    }

    else
    {
      if (qword_100338EF0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100003078(v5, qword_10033F3F8);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v14 = v9;
        *v8 = 136315138;
        v10 = sub_1000092A0();
        v12 = sub_100017494(v10, v11, &v14);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "### Device %s is not Handoff ranging-capable", v8, 0xCu);
        sub_10000903C(v9);
      }

      return 0;
    }
  }

  else
  {

    return sub_1000B967C();
  }
}

uint64_t sub_1000B9B60()
{
  if (sub_10006F8C8())
  {

    return sub_1000B9918();
  }

  else
  {
    if (qword_100338EF0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003078(v1, qword_10033F3F8);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      v6 = sub_1000092A0();
      v8 = sub_100017494(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "### Handoff not ready on %s", v4, 0xCu);
      sub_10000903C(v5);
    }

    return 0;
  }
}

BOOL sub_1000B9CF0()
{
  if ((sub_1000B9484() & 1) == 0 || (sub_1000B9B60() & 1) == 0)
  {
    return 0;
  }

  if (qword_100338F70 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B100 + 32);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v2 == 1;
}

uint64_t sub_1000B9DD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10033F568, &qword_1002761C0);
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  __chkstk_darwin(v4);
  v73 = v60 - v6;
  v7 = sub_100035D04(&qword_10033F570, &qword_1002761C8);
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = *(v77 + 64);
  __chkstk_darwin(v7);
  v74 = v60 - v9;
  v10 = sub_100035D04(&qword_10033F578, &qword_1002761D0);
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  __chkstk_darwin(v10);
  v79 = v60 - v12;
  v68 = sub_100035D04(&qword_10033F580, &qword_1002761D8);
  v67 = *(v68 - 8);
  v13 = *(v67 + 64);
  __chkstk_darwin(v68);
  v66 = v60 - v14;
  v15 = sub_100035D04(&qword_10033F588, &unk_1002761E0);
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  __chkstk_darwin(v15);
  v69 = v60 - v17;
  v18 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v60 - v20;
  v63 = sub_100035D04(&qword_10033F590, &qword_1002761F0);
  v22 = *(v63 - 1);
  v23 = *(v22 + 64);
  __chkstk_darwin(v63);
  v25 = v60 - v24;
  v65 = sub_100035D04(&qword_10033F598, &qword_1002761F8);
  v64 = *(v65 - 1);
  v26 = *(v64 + 64);
  __chkstk_darwin(v65);
  v28 = v60 - v27;
  v29 = sub_100035D04(&qword_10033F5A0, &qword_100276200);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = v60 - v32;
  v34 = OBJC_IVAR____TtC17proximitycontrold21HandoffSessionManager__session;
  v87 = 0;
  sub_100035D04(&unk_10033F460, qword_100276138);
  Published.init(initialValue:)();
  (*(v30 + 32))(v2 + v34, v33, v29);
  v72 = v2 + OBJC_IVAR____TtC17proximitycontrold21HandoffSessionManager_tasks;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold21HandoffSessionManager_tasks) = &_swiftEmptySetSingleton;
  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003078(v35, qword_10033F3F8);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Init", v38, 2u);
  }

  *(v2 + 16) = a1;
  v87 = *(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_orientationPublisher);

  sub_100035D04(&qword_10033F5A8, &qword_100276208);
  sub_10000E244(&qword_10033F5B0, &qword_10033F5A8, &qword_100276208);
  Publisher.dropFirst(_:)();
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v39 = qword_10038B5B8;
  v87 = qword_10038B5B8;
  v85 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v40 = *(v85 - 8);
  v62 = *(v40 + 56);
  v82 = v40 + 56;
  v62(v21, 1, 1, v85);
  v84 = sub_100035CB8();
  v60[1] = &protocol conformance descriptor for Publishers.Drop<A>;
  sub_10000E244(&qword_10033F5B8, &qword_10033F590, &qword_1002761F0);
  v83 = sub_1000BAC04(&qword_10034B420, sub_100035CB8);
  v60[0] = v39;
  v41 = v63;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v21, &qword_10034C680, &qword_100270390);
  (*(v22 + 8))(v25, v41);
  swift_allocObject();
  swift_weakInit();
  v63 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000E244(&qword_10033F5C0, &qword_10033F598, &qword_1002761F8);

  v42 = v65;
  Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v28, v42);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v87 = sub_1001412EC();
  v61 = v2;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  v65 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210);
  v43 = v66;
  Publisher.dropFirst(_:)();

  v64 = a1;
  v44 = v60[0];
  v87 = v60[0];
  v45 = v62;
  v62(v21, 1, 1, v85);
  sub_10000E244(&qword_1003436F0, &qword_10033F580, &qword_1002761D8);
  v46 = v69;
  v47 = v68;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v21, &qword_10034C680, &qword_100270390);

  (*(v67 + 8))(v43, v47);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033F5C8, &qword_10033F588, &unk_1002761E0);
  v48 = v71;
  Publisher<>.sink(receiveValue:)();

  (*(v70 + 8))(v46, v48);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v49 = sub_100140FF4();
  v86 = v44;
  v87 = v49;
  v45(v21, 1, 1, v85);
  sub_100035D04(&qword_10033B360, &qword_100271F28);
  sub_10000E244(&qword_10033B370, &qword_10033B360, &qword_100271F28);
  v50 = v73;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v21, &qword_10034C680, &qword_100270390);

  sub_100035D04(&qword_10033F5D0, &unk_100276220);
  sub_10000E244(&qword_10033F5D8, &qword_10033F568, &qword_1002761C0);
  v51 = v74;
  v52 = v76;
  Publisher.map<A>(_:)();
  (*(v75 + 8))(v50, v52);
  sub_10000E244(&qword_10033F5E0, &qword_10033F570, &qword_1002761C8);
  v53 = v78;
  v54 = v79;
  Publisher.filter(_:)();
  (*(v77 + 8))(v51, v53);
  v55 = swift_allocObject();
  v56 = v61;
  swift_weakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = sub_1000BABB8;
  *(v57 + 24) = v55;
  sub_10000E244(&qword_10033F5E8, &qword_10033F578, &qword_1002761D0);
  v58 = v81;
  Publisher<>.sink(receiveValue:)();

  (*(v80 + 8))(v54, v58);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1000B6F90(0, 0xC000000000000000);
  return v56;
}

uint64_t sub_1000BABC0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_1000BAC04(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000BAC4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000BAC60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_1000BACBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000BAD2C(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10033F608, &qword_1002763B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000BB458();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v19[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = *(v3 + 32);
  v19[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = *(v3 + 9);
  v18 = *(v3 + 40);
  v19[12] = 3;
  v19[8] = v18;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000BAEFC()
{
  v1 = 0x444955556C6C6163;
  v2 = 0x6F656469567369;
  if (*v0 != 2)
  {
    v2 = 0x65636976726573;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000BAF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BB078(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BAFA4(uint64_t a1)
{
  v2 = sub_1000BB458();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BAFE0(uint64_t a1)
{
  v2 = sub_1000BB458();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000BB01C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000BB1E4(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1000BB078(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010029AF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F656469567369 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000BB1E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100035D04(&qword_10033F5F8, &qword_1002763B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000BB458();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000903C(a1);
  }

  else
  {
    v28 = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v14 = v11;
    v27 = 1;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v16;
    v23 = v15;
    v26 = 2;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = 3;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = *(v6 + 8);
    v22 = v18;
    v19(v9, v5);
    result = sub_10000903C(a1);
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v23;
    *(a2 + 24) = v17;
    *(a2 + 32) = v24 & 1;
    v21 = BYTE4(v22);
    *(a2 + 36) = v22;
    *(a2 + 40) = v21 & 1;
  }

  return result;
}

unint64_t sub_1000BB458()
{
  result = qword_10033F600;
  if (!qword_10033F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F600);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UXRegion(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UXRegion(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000BB600()
{
  result = qword_10033F610;
  if (!qword_10033F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F610);
  }

  return result;
}

unint64_t sub_1000BB658()
{
  result = qword_10033F618;
  if (!qword_10033F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F618);
  }

  return result;
}

unint64_t sub_1000BB6B0()
{
  result = qword_10033F620;
  if (!qword_10033F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F620);
  }

  return result;
}

uint64_t sub_1000BB704()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [v1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v27 = v8;
  v28[0] = v10;
  v11 = [v1 deviceIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = 0;
  v28[1] = v12;
  v28[2] = v14;
  v16 = _swiftEmptyArrayStorage;
LABEL_2:
  v17 = &v28[2 * v15];
  while (++v15 != 3)
  {
    v18 = v17 + 2;
    v19 = *v17;
    v17 += 2;
    if (v19)
    {
      v20 = *(v18 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100009088(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_100009088((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v23 = &v16[16 * v22];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      goto LABEL_2;
    }
  }

  sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  swift_arrayDestroy();
  v24 = sub_100008F34(v16);

  return v24;
}

uint64_t sub_1000BB924(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  sub_100009848(a1, &v18, &unk_10034B540, qword_100270E60);
  if (v19)
  {
    sub_10000E754(&v18, v20);
    v12 = v21;
    v13 = v22;
    sub_10000EBC0(v20, v21);
    (*(v13 + 24))(v12, v13);
    v14 = [v2 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = static UUID.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v9, v4);
    v16(v11, v4);
    sub_10000903C(v20);
  }

  else
  {
    sub_1000097E8(&v18, &unk_10034B540, qword_100270E60);
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_1000BBAF4()
{
  v18[3] = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
  v18[4] = &off_100302540;
  v18[0] = v0;
  sub_100009848(v18, &v13, &unk_10034B540, qword_100270E60);
  if (v14)
  {
    sub_10000E754(&v13, v15);
    v1 = v16;
    v2 = v17;
    sub_10000EBC0(v15, v16);
    v3 = *(v2 + 8);
    v4 = *(v3 + 8);
    v5 = v0;
    v6 = v4(v1, v3);
    sub_1000104F8();
    v8 = sub_1000089FC(v7, v6);

    v9 = *(v8 + 16);

    v10 = v9 != 0;
    sub_10000903C(v15);
  }

  else
  {
    v11 = v0;
    sub_1000097E8(&v13, &unk_10034B540, qword_100270E60);
    v10 = 0;
  }

  sub_1000097E8(v18, &unk_10034B540, qword_100270E60);
  return v10;
}

BOOL sub_1000BBC48(uint64_t a1)
{
  sub_100009848(a1, v8, &qword_10033FA50, &qword_100276820);
  v1 = v9;
  if (v9)
  {
    v2 = v10;
    sub_10000EBC0(v8, v9);
    v3 = (*(*(v2 + 8) + 8))(v1);
    v4 = sub_1000BB704();
    v5 = sub_1000089FC(v4, v3);

    sub_10000903C(v8);
  }

  else
  {
    sub_1000097E8(v8, &qword_10033FA50, &qword_100276820);
    v5 = &_swiftEmptySetSingleton;
  }

  v6 = v5[2];

  return v6 != 0;
}

uint64_t sub_1000BBD2C()
{
  v1 = v0;
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v39[-v7];
  if (([v1 isLocallyPaired] & 1) != 0 || (v9 = objc_msgSend(v1, "uniqueID")) == 0)
  {
    v11 = 0;
    v13 = 0;
  }

  else
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  v40 = v11;
  v41 = v13;
  v14 = [v1 uniqueIDOverride];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v42 = v16;
  v43 = v18;
  v19 = [v1 nsuuid];
  if (v19)
  {
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  }

  else
  {
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  }

  sub_100008FCC(v6, v8);
  type metadata accessor for UUID();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v8, 1, v21) == 1)
  {
    result = sub_1000097E8(v8, &unk_100348F30, &unk_100272540);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = UUID.uuidString.getter();
    v25 = v26;
    result = (*(v22 + 8))(v8, v21);
  }

  v27 = 0;
  v44 = v24;
  v45 = v25;
  v28 = _swiftEmptyArrayStorage;
LABEL_15:
  if (v27 <= 3)
  {
    v29 = 3;
  }

  else
  {
    v29 = v27;
  }

  v30 = v29 + 1;
  v31 = 16 * v27 + 40;
  while (1)
  {
    if (v27 == 3)
    {
      sub_100035D04(&qword_10033A238, &qword_10027D3E0);
      swift_arrayDestroy();
      v38 = sub_100008F34(v28);

      return v38;
    }

    if (v30 == ++v27)
    {
      break;
    }

    v32 = v31 + 16;
    v33 = *&v39[v31];
    v31 += 16;
    if (v33)
    {
      v34 = *&v39[v32 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100009088(0, *(v28 + 2) + 1, 1, v28);
        v28 = result;
      }

      v36 = *(v28 + 2);
      v35 = *(v28 + 3);
      if (v36 >= v35 >> 1)
      {
        result = sub_100009088((v35 > 1), v36 + 1, 1, v28);
        v28 = result;
      }

      *(v28 + 2) = v36 + 1;
      v37 = &v28[16 * v36];
      *(v37 + 4) = v34;
      *(v37 + 5) = v33;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1000BC0D8(uint64_t a1)
{
  sub_100009848(a1, &v9, &unk_10034B540, qword_100270E60);
  if (v10)
  {
    sub_10000E754(&v9, v11);
    v2 = v12;
    v1 = v13;
    sub_10000EBC0(v11, v12);
    v3 = (*(*(v1 + 8) + 8))(v2);
    v4 = sub_1000BBD2C();
    v5 = sub_1000089FC(v4, v3);

    v6 = *(v5 + 16);

    v7 = v6 != 0;
    sub_10000903C(v11);
  }

  else
  {
    sub_1000097E8(&v9, &unk_10034B540, qword_100270E60);
    return 0;
  }

  return v7;
}

uint64_t sub_1000BC1C8(uint64_t a1)
{
  sub_100009848(a1, &v9, &qword_10033FA50, &qword_100276820);
  if (v10)
  {
    sub_10000E754(&v9, v12);
    v2 = v13;
    v3 = v14;
    sub_10000EBC0(v12, v13);
    v10 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v11 = &off_100303480;
    *&v9 = v1;
    v4 = *(v3 + 8);
    v5 = *(v4 + 32);
    v6 = v1;
    v7 = v5(&v9, v2, v4);
    sub_1000097E8(&v9, &qword_10033A240, &unk_100272E70);
    sub_10000903C(v12);
  }

  else
  {
    sub_1000097E8(&v9, &qword_10033FA50, &qword_100276820);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1000BC2D8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033F628);
  sub_100003078(v0, qword_10033F628);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BC398@<X0>(char *a1@<X8>)
{
  v77 = a1;
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v75 = &v72 - v8;
  v9 = __chkstk_darwin(v7);
  v76 = &v72 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v72 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v72 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v72 - v18;
  v20 = __chkstk_darwin(v17);
  v80 = &v72 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v72 - v23;
  __chkstk_darwin(v22);
  v26 = &v72 - v25;
  v27 = OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice;
  v78 = v1;
  v28 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  v73 = v6;
  if (v28)
  {
    v29 = v28;
    if (([v29 isLocallyPaired] & 1) != 0 || (v30 = objc_msgSend(v29, "uniqueID")) == 0)
    {
    }

    else
    {
      v31 = v30;
      v79 = v26;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();

      v32 = type metadata accessor for UUID();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v24, 1, v32) != 1)
      {
        v67 = *(v33 + 32);
        v68 = v79;
        v67(v79, v24, v32);
        v69 = *(v33 + 56);
        v69(v68, 0, 1, v32);
        v70 = v77;
        v67(v77, v68, v32);
        return (v69)(v70, 0, 1, v32);
      }

      sub_1000097E8(v24, &unk_100348F30, &unk_100272540);
      v26 = v79;
    }
  }

  v74 = v13;
  v79 = v16;
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  v36 = v35[7];
  v36(v26, 1, 1, v34);
  v37 = *(v78 + v27);
  v38 = v80;
  if (!v37)
  {
LABEL_12:
    v36(v38, 1, 1, v34);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v44 = v81;
    if (v81)
    {
      v45 = [v81 idsDeviceIdentifier];

      if (v45)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v46 = v74;
        UUID.init(uuidString:)();

        v43 = v35[6];
        if (v43(v46, 1, v34) != 1)
        {
          v60 = v35[4];
          v61 = v79;
          v60(v79, v46, v34);
          v36(v61, 0, 1, v34);
          v62 = v77;
          v60(v77, v61, v34);
          v36(v62, 0, 1, v34);
          v56 = v80;
LABEL_32:
          if (v43(v56, 1, v34) != 1)
          {
            sub_1000097E8(v56, &unk_100348F30, &unk_100272540);
          }

          goto LABEL_34;
        }

        sub_1000097E8(v46, &unk_100348F30, &unk_100272540);
      }
    }

    v36(v79, 1, 1, v34);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v47 = v81;
    if (v81)
    {
      v48 = [v81 idsDeviceIdentifier];

      if (v48)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = v75;
        UUID.init(uuidString:)();

        v43 = v35[6];
        if (v43(v49, 1, v34) != 1)
        {
          v63 = v35[4];
          v64 = v76;
          v63(v76, v49, v34);
          v36(v64, 0, 1, v34);
          v65 = v77;
          v63(v77, v64, v34);
          v36(v65, 0, 1, v34);
          v55 = v79;
          v56 = v80;
LABEL_30:
          if (v43(v55, 1, v34) != 1)
          {
            sub_1000097E8(v55, &unk_100348F30, &unk_100272540);
          }

          goto LABEL_32;
        }

        sub_1000097E8(v49, &unk_100348F30, &unk_100272540);
      }
    }

    v50 = v76;
    v36(v76, 1, 1, v34);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v51 = v81;
    if (v81)
    {
      v52 = [v81 idsDeviceID];

      if (v52)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v53 = v73;
        UUID.init(uuidString:)();

        v43 = v35[6];
        if (v43(v53, 1, v34) != 1)
        {
          v71 = v77;
          (v35[4])(v77, v53, v34);
          v36(v71, 0, 1, v34);
LABEL_25:
          v54 = v43(v50, 1, v34);
          v55 = v79;
          v56 = v80;
          if (v54 != 1)
          {
            sub_1000097E8(v50, &unk_100348F30, &unk_100272540);
          }

          goto LABEL_30;
        }

        sub_1000097E8(v53, &unk_100348F30, &unk_100272540);
      }
    }

    v36(v77, 1, 1, v34);
    v43 = v35[6];
    goto LABEL_25;
  }

  v39 = v37;
  v40 = [v39 uniqueIDOverride];
  if (!v40)
  {

    goto LABEL_12;
  }

  v41 = v26;
  v42 = v40;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v43 = v35[6];
  if (v43(v19, 1, v34) == 1)
  {
    sub_1000097E8(v19, &unk_100348F30, &unk_100272540);
    v38 = v80;
    goto LABEL_12;
  }

  v57 = v35[4];
  v58 = v80;
  v57(v80, v19, v34);
  v36(v58, 0, 1, v34);
  v59 = v77;
  v57(v77, v58, v34);
  v36(v59, 0, 1, v34);
  v26 = v41;
LABEL_34:
  result = (v43)(v26, 1, v34);
  if (result != 1)
  {
    return sub_1000097E8(v26, &unk_100348F30, &unk_100272540);
  }

  return result;
}

uint64_t sub_1000BCDE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000BCE54()
{
  v0._countAndFlagsBits = sub_10000C868();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9 && (v2 = [v9 identifier], v9, v2))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000B584(8);
  }

  else
  {
    Substring.init(_:)();
  }

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 60;
}

void *sub_1000BCFD0()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25)
  {
    v2 = sub_10000F0CC();

    sub_1000BD314(v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25)
  {
    v3 = sub_1000BB704();

    sub_1000BD314(v3);
  }

  v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1000BBD2C();

    sub_1000BD314(v6);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25)
  {
    sub_100008574();
    v8 = v7;

    sub_1000BD314(v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25)
  {
    sub_100008574();
    v10 = v9;

    sub_1000BD314(v10);
  }

  v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  if (!v11)
  {
    return &_swiftEmptySetSingleton;
  }

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
LABEL_24:
    v21 = _swiftEmptyArrayStorage[2];
    if (v21)
    {
      v22 = &_swiftEmptyArrayStorage[4];
      do
      {
        v23 = *v22++;

        sub_1000BD314(v24);
        --v21;
      }

      while (v21);
    }

    return &_swiftEmptySetSingleton;
  }

  result = sub_1000CE0E4(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v11 + 8 * i + 32);
      }

      v16 = v15;
      sub_1000104F8();
      v18 = v17;

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_1000CE0E4((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      _swiftEmptyArrayStorage[v20 + 4] = v18;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BD314(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100008DE4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000BD468()
{
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode + 8);
    goto LABEL_26;
  }

  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 enclosureColor];
    if (v5)
    {
      v6 = v5;
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (qword_100338EF8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100003078(v9, qword_10033F628);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_24;
      }

      v12 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = sub_1000BCE54();
      v15 = sub_100017494(v13, v14, &v51);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_100017494(v1, v8, &v51);
      v16 = "%s ColorCode=%s from IDS";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v10, v11, v16, v12, 0x16u);
      swift_arrayDestroy();

LABEL_24:

LABEL_25:
      goto LABEL_26;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v51;
  if (v51)
  {
    v17 = [v51 deviceColor];
    if (v17)
    {
      v18 = v17;
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (qword_100338EF8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100003078(v21, qword_10033F628);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_24;
      }

      v12 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v12 = 136315394;
      v22 = sub_1000BCE54();
      v24 = sub_100017494(v22, v23, &v51);

      *(v12 + 4) = v24;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_100017494(v1, v20, &v51);
      v16 = "%s ColorCode=%s from Rapport";
      goto LABEL_23;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v51;
  if (v51)
  {
    v25 = [v51 deviceColor];
    if (v25)
    {
      v26 = v25;
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (qword_100338EF8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100003078(v29, qword_10033F628);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_24;
      }

      v12 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v12 = 136315394;
      v30 = sub_1000BCE54();
      v32 = sub_100017494(v30, v31, &v51);

      *(v12 + 4) = v32;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_100017494(v1, v28, &v51);
      v16 = "%s ColorCode=%s from Rapport BT";
      goto LABEL_23;
    }
  }

  v34 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode + 8);
  if (v34)
  {
    v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
    v35 = qword_100338EF8;
    v36 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode + 8);

    if (v35 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100003078(v37, qword_10033F628);

    v4 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v38))
    {
      v39 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v39 = 136315394;
      v40 = sub_1000BCE54();
      v42 = sub_100017494(v40, v41, &v51);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_100017494(v1, v34, &v51);
      _os_log_impl(&_mh_execute_header, v4, v38, "%s ColorCode=%s from Ranging Token sync", v39, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_25;
  }

  if (qword_100338EF8 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100003078(v43, qword_10033F628);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = v47;
    *v46 = 136315138;
    v48 = sub_1000BCE54();
    v50 = sub_100017494(v48, v49, &v51);

    *(v46 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s Unable to determine color code for remote device", v46, 0xCu);
    sub_10000903C(v47);
  }

  v1 = 0;
LABEL_26:

  return v1;
}

uint64_t sub_1000BDC5C()
{
  v1 = v0;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 1168);
  v3 = sub_10005FFC0();
  v5 = v4;

  if (v5)
  {
    v6 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset);
    if (*(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset + 8) != 1)
    {
      return *v6;
    }

    if (qword_100338EF8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10033F628);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v82 = v11;
      *v10 = 136315138;
      v12 = sub_1000BCE54();
      v14 = sub_100017494(v12, v13, &v82);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s Generating device asset", v10, 0xCu);
      sub_10000903C(v11);
    }

    v15 = sub_1000BD468();
    if (v16 && (v17 = sub_1001AEEBC(v15, v16), v17 != 11))
    {
      v22 = v17;
      v21 = 1;
    }

    else
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "### Failed to determine color", v20, 2u);
      }

      v21 = 0;
      v22 = 11;
    }

    v33 = sub_10000A0B4();
    if (!v34)
    {
      v38 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v38, v43))
      {
LABEL_35:

        return 0;
      }

      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v38, v43, "### No model code", v44, 2u);
LABEL_27:

      goto LABEL_35;
    }

    v35 = v33;
    v36 = v34;

    v37 = sub_100011F00(v35, v36);

    if (v37 == 7)
    {

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v38, v39))
      {

        goto LABEL_35;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v82 = v41;
      *v40 = 136315138;
      v42 = sub_100017494(v35, v36, &v82);

      *(v40 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "### Failed to get AppleDevice from model code: %s", v40, 0xCu);
      sub_10000903C(v41);

      goto LABEL_27;
    }

    v45 = 7104878;

    if (v37 != 2)
    {
      if (v37 != 1)
      {
        v3 = 0;
        v51 = 0xE300000000000000;
LABEL_59:

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          *v76 = 136315394;
          v77 = sub_1000BCE54();
          v79 = sub_100017494(v77, v78, &v82);

          *(v76 + 4) = v79;
          *(v76 + 12) = 2080;
          v80 = sub_100017494(v45, v51, &v82);

          *(v76 + 14) = v80;
          _os_log_impl(&_mh_execute_header, v74, v75, "%s Device asset = %s", v76, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return v3;
      }

      if (v22 == 11 || (v22 - 1) >= 0xAu || ((0x273u >> (v22 - 1)) & 1) == 0)
      {
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v82 = v55;
          *v54 = 136315138;
          if (v22 == 11)
          {
            v56 = 0xE300000000000000;
          }

          else
          {
            v45 = String.init<A>(describing:)();
            v56 = v57;
          }

          v58 = sub_100017494(v45, v56, &v82);

          *(v54 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v52, v53, "Color not recognized (%s): falling back to light", v54, 0xCu);
          sub_10000903C(v55);
        }

        v3 = 2;
      }

      else
      {
        v3 = qword_100276850[(v22 - 1)];
      }

LABEL_54:
      if (v21)
      {

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          *v63 = 136315394;
          v64 = sub_1000BCE54();
          v66 = sub_100017494(v64, v65, &v82);

          *(v63 + 4) = v66;
          *(v63 + 12) = 2080;
          v67 = sub_1000C06B0(v3);
          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v70 = v69;

          v71 = sub_100017494(v68, v70, &v82);

          *(v63 + 14) = v71;
          _os_log_impl(&_mh_execute_header, v61, v62, "%s Caching device asset = %s", v63, 0x16u);
          swift_arrayDestroy();
        }

        *v6 = v3;
        v6[8] = 0;
      }

      v72 = sub_1000C06B0(v3);
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v73;

      goto LABEL_59;
    }

    if (v22 == 11)
    {
      goto LABEL_39;
    }

    if (v22 == 1)
    {
      v3 = 7;
      goto LABEL_54;
    }

    if (v22 != 2)
    {
LABEL_39:
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v82 = v49;
        *v48 = 136315138;
        if (v22 == 11)
        {
          v50 = 0xE300000000000000;
        }

        else
        {
          v45 = String.init<A>(describing:)();
          v50 = v59;
        }

        v60 = sub_100017494(v45, v50, &v82);

        *(v48 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v46, v47, "Color not recognized (%s): falling back to light", v48, 0xCu);
        sub_10000903C(v49);
      }
    }

    v3 = 8;
    goto LABEL_54;
  }

  if (qword_100338EF8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100003078(v23, qword_10033F628);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v82 = v27;
    *v26 = 136315138;
    v28 = sub_1000C06B0(v3);
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_100017494(v29, v31, &v82);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "Using forcedAssetType: %s", v26, 0xCu);
    sub_10000903C(v27);
  }

  return v3;
}

void sub_1000BE6D8()
{
  sub_1000BE870(319, &qword_10033F698, &qword_10033D5D0, &unk_100273240);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000BE870(319, &qword_10033F6A0, &qword_10033F6A8, &qword_100276540);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1000BE870(319, &unk_10033F6B0, &qword_10033D608, &unk_100273250);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000BE870(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100035D4C(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Identity.SourceType(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Identity.SourceType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Identity.SourceType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1000BE924(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BE940(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1000BE970@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Identity();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_1000BE9F8(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11)
  {
    Hasher._combine(_:)(1u);
    v4 = v11;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11)
  {
    Hasher._combine(_:)(1u);
    v5 = v11;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v6)
  {
    Hasher._combine(_:)(1u);
    v7 = v6;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11)
  {
    Hasher._combine(_:)(1u);
    v8 = v11;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  if (v9)
  {
    Hasher._combine(_:)(1u);

    sub_1000BEF9C(a1, v9);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11)
  {
    Hasher._combine(_:)(1u);
    v10 = v11;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000BECB4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000BE9F8(v3);
  return Hasher._finalize()();
}

Swift::Int sub_1000BED1C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  sub_1000BE9F8(v3);
  return Hasher._finalize()();
}

BOOL sub_1000BED5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  Hasher.init(_seed:)();
  sub_1000BE9F8(v6);
  v4 = Hasher._finalize()();
  Hasher.init(_seed:)();
  sub_1000BE9F8(v6);
  return v4 == Hasher._finalize()();
}

unint64_t sub_1000BEDDC()
{
  result = qword_10033FA20;
  if (!qword_10033FA20)
  {
    type metadata accessor for Identity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033FA20);
  }

  return result;
}

uint64_t sub_1000BEE98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1000BEF28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

void sub_1000BEF9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    Hasher._combine(_:)(v8);
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      NSObject.hash(into:)();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      NSObject.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1000BF08C(void *a1, void *a2)
{
  v42[3] = sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
  v42[4] = &off_100316108;
  v42[0] = a2;
  sub_10007E790(v42, v41);
  v4 = a2;
  sub_100035D04(&qword_10033F040, qword_100275EC0);
  sub_100003118(0, &unk_10034A340, CBDevice_ptr);
  if (!swift_dynamicCast())
  {
    sub_10007E790(v42, v40);
    sub_100035D04(&qword_10033FA40, &unk_100276808);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v37, v41);
      sub_10007E790(v41, v40);
      sub_100009848(v40, &v37, &unk_10034B540, qword_100270E60);
      v13 = *(&v38 + 1);
      if (*(&v38 + 1))
      {
        v14 = v39;
        sub_10000EBC0(&v37, *(&v38 + 1));
        sub_100008574();
        v12 = sub_10015A19C(v15, v13, *(v14 + 8));

        v16 = &unk_10034B540;
        v17 = qword_100270E60;
LABEL_7:
        sub_1000097E8(v40, v16, v17);
        sub_10000903C(v41);
        sub_10000903C(&v37);
        goto LABEL_22;
      }

      v24 = &unk_10034B540;
      v25 = qword_100270E60;
      sub_1000097E8(v40, &unk_10034B540, qword_100270E60);
      sub_10000903C(v41);
      v26 = &v37;
      goto LABEL_14;
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1000097E8(&v37, &unk_10034B540, qword_100270E60);
    sub_10007E790(v42, v41);
    if (swift_dynamicCast())
    {
      v18 = v40[0];
      sub_100003118(0, &qword_100344730, NSObject_ptr);
      v19 = v18;
      if (static NSObject.== infix(_:_:)())
      {

        v12 = 1;
        goto LABEL_22;
      }

      sub_100008574();
      v30 = v29;
      sub_100008574();
      v23 = sub_1000089FC(v31, v30);
    }

    else
    {
      sub_10007E790(v42, v41);
      sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
      if (!swift_dynamicCast())
      {
        sub_10007E790(v42, v40);
        sub_100035D04(&qword_10033FA48, &qword_100276818);
        if (!swift_dynamicCast())
        {
          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          v27 = &qword_10033FA50;
          v28 = &qword_100276820;
          v26 = &v37;
          goto LABEL_21;
        }

        sub_10000E754(&v37, v41);
        sub_10007E790(v41, v40);
        sub_100009848(v40, &v35, &qword_10033FA50, &qword_100276820);
        if (v36)
        {
          sub_10000E754(&v35, &v37);
          v32 = *(&v38 + 1);
          v33 = v39;
          sub_10000EBC0(&v37, *(&v38 + 1));
          v12 = (*(*(v33 + 8) + 40))(a1, v32);
          v16 = &qword_10033FA50;
          v17 = &qword_100276820;
          goto LABEL_7;
        }

        v24 = &qword_10033FA50;
        v25 = &qword_100276820;
        sub_1000097E8(v40, &qword_10033FA50, &qword_100276820);
        sub_10000903C(v41);
        v26 = &v35;
LABEL_14:
        v27 = v24;
        v28 = v25;
LABEL_21:
        sub_1000097E8(v26, v27, v28);
        v12 = 0;
        goto LABEL_22;
      }

      v19 = v40[0];
      sub_1000104F8();
      v21 = v20;
      sub_100008574();
      v23 = sub_1000089FC(v22, v21);
    }

    v11 = *(v23 + 16);
    goto LABEL_3;
  }

  v5 = v40[0];
  v6 = a1;
  sub_100008574();
  v8 = v7;
  v9 = sub_10000F0CC();
  v10 = sub_1000089FC(v9, v8);

  v11 = *(v10 + 16);
LABEL_3:

  v12 = v11 != 0;
LABEL_22:
  sub_10000903C(v42);
  return v12 & 1;
}

uint64_t sub_1000BF550(void *a1, void *a2)
{
  v4 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
  v39[3] = v4;
  v39[4] = &off_1003034A8;
  v39[0] = a2;
  sub_10007E790(v39, v38);
  v5 = a2;
  sub_100035D04(&qword_10033F040, qword_100275EC0);
  sub_100003118(0, &unk_10034A340, CBDevice_ptr);
  if (!swift_dynamicCast())
  {
    sub_10007E790(v39, v35);
    sub_100035D04(&qword_10033FA40, &unk_100276808);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v32, v38);
      sub_10007E790(v38, v35);
      v17 = sub_1000BC0D8(v35);
      v18 = &unk_10034B540;
      v19 = qword_100270E60;
LABEL_6:
      sub_1000097E8(v35, v18, v19);
      sub_10000903C(v38);
      goto LABEL_14;
    }

    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_1000097E8(&v32, &unk_10034B540, qword_100270E60);
    sub_10007E790(v39, v38);
    sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    if (swift_dynamicCast())
    {
      v20 = v35[0];
      sub_100008574();
      v22 = v21;
      v23 = sub_1000BBD2C();
      v24 = sub_1000089FC(v23, v22);
    }

    else
    {
      sub_10007E790(v39, v38);
      sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
      if (!swift_dynamicCast())
      {
        sub_10007E790(v39, v35);
        sub_100035D04(&qword_10033FA48, &qword_100276818);
        if (!swift_dynamicCast())
        {
          v34 = 0;
          v32 = 0u;
          v33 = 0u;
          sub_1000097E8(&v32, &qword_10033FA50, &qword_100276820);
          v17 = 0;
          goto LABEL_14;
        }

        sub_10000E754(&v32, v38);
        sub_10007E790(v38, v35);
        v17 = sub_1000BC1C8(v35);
        v18 = &qword_10033FA50;
        v19 = &qword_100276820;
        goto LABEL_6;
      }

      v20 = v35[0];
      sub_1000104F8();
      v28 = v27;
      v29 = sub_1000BBD2C();
      v24 = sub_1000089FC(v29, v28);
    }

    v30 = *(v24 + 16);

    v17 = v30 != 0;
    goto LABEL_14;
  }

  v6 = v35[0];
  v38[3] = v4;
  v38[4] = &off_100303480;
  v38[0] = a1;
  sub_100009848(v38, &v32, &qword_10033A240, &unk_100272E70);
  if (*(&v33 + 1))
  {
    sub_10000E754(&v32, v35);
    v7 = v36;
    v8 = v37;
    sub_10000EBC0(v35, v36);
    v9 = *(v8 + 8);
    v10 = *(v9 + 8);
    v11 = v6;
    v12 = a1;
    v13 = v10(v7, v9);
    v14 = sub_10000F0CC();
    v15 = sub_1000089FC(v14, v13);

    v16 = *(v15 + 16);

    v17 = v16 != 0;
    sub_10000903C(v35);
  }

  else
  {
    v25 = v6;
    v26 = a1;
    sub_1000097E8(&v32, &qword_10033A240, &unk_100272E70);
    v17 = 0;
  }

  sub_1000097E8(v38, &qword_10033A240, &unk_100272E70);

LABEL_14:
  sub_10000903C(v39);
  return v17 & 1;
}

uint64_t sub_1000BF998(void *a1, void *a2)
{
  v4 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
  v39[3] = v4;
  v39[4] = &off_100302560;
  v39[0] = a2;
  sub_10007E790(v39, v36);
  v5 = a2;
  sub_100035D04(&qword_10033F040, qword_100275EC0);
  sub_100003118(0, &unk_10034A340, CBDevice_ptr);
  if (swift_dynamicCast())
  {
    v6 = v33[0];
    v37 = v4;
    v38 = &off_100302540;
    v36[0] = a1;
    sub_100009848(v36, &v30, &unk_10034B540, qword_100270E60);
    if (*(&v31 + 1))
    {
      sub_10000E754(&v30, v33);
      v7 = v34;
      v8 = v35;
      sub_10000EBC0(v33, v34);
      v9 = *(v8 + 8);
      v10 = *(v9 + 8);
      v11 = v6;
      v12 = a1;
      v13 = v10(v7, v9);
      v14 = sub_10000F0CC();
      v16 = sub_1000089FC(v14, v13);

      v15 = *(v16 + 16);

      LOBYTE(v16) = v15 != 0;
      sub_10000903C(v33);
    }

    else
    {
      v24 = v6;
      v25 = a1;
      sub_1000097E8(&v30, &unk_10034B540, qword_100270E60);
      LOBYTE(v16) = 0;
    }

    sub_1000097E8(v36, &unk_10034B540, qword_100270E60);

    goto LABEL_12;
  }

  sub_10007E790(v39, v33);
  sub_100035D04(&qword_10033FA40, &unk_100276808);
  if (swift_dynamicCast())
  {
    sub_10000E754(&v30, v36);
    sub_10007E790(v36, v33);
    LOBYTE(v16) = sub_1000BB924(v33);
    v17 = &unk_10034B540;
    v18 = qword_100270E60;
LABEL_6:
    sub_1000097E8(v33, v17, v18);
    sub_10000903C(v36);
    goto LABEL_12;
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1000097E8(&v30, &unk_10034B540, qword_100270E60);
  sub_10007E790(v39, v36);
  sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
  if (!swift_dynamicCast())
  {
    sub_10007E790(v39, v36);
    sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
    if (swift_dynamicCast())
    {
      v27 = v33[0];
      LOBYTE(v16) = sub_1000BBAF4();

      goto LABEL_12;
    }

    sub_10007E790(v39, v33);
    sub_100035D04(&qword_10033FA48, &qword_100276818);
    if (!swift_dynamicCast())
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_1000097E8(&v30, &qword_10033FA50, &qword_100276820);
      LOBYTE(v16) = 0;
      goto LABEL_12;
    }

    sub_10000E754(&v30, v36);
    sub_10007E790(v36, v33);
    LOBYTE(v16) = sub_1000BBC48(v33);
    v17 = &qword_10033FA50;
    v18 = &qword_100276820;
    goto LABEL_6;
  }

  v19 = v33[0];
  v37 = v4;
  v38 = &off_100302540;
  v36[0] = a1;
  sub_100009848(v36, v33, &unk_10034B540, qword_100270E60);
  v16 = v34;
  if (v34)
  {
    v20 = v35;
    sub_10000EBC0(v33, v34);
    v21 = a1;
    v22 = v19;
    sub_100008574();
    LOBYTE(v16) = sub_10015A19C(v23, v16, *(v20 + 8));

    sub_10000903C(v33);
  }

  else
  {
    v28 = a1;
    v29 = v19;
    sub_1000097E8(v33, &unk_10034B540, qword_100270E60);
  }

  sub_1000097E8(v36, &unk_10034B540, qword_100270E60);

LABEL_12:
  sub_10000903C(v39);
  return v16 & 1;
}

BOOL sub_1000BFE34(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return (a2 & 0x100000000) != 0 && a2 == 3;
      }

      else if (a1 == 4)
      {
        return (a2 & 0x100000000) != 0 && a2 == 4;
      }

      else
      {
        return (a2 & 0x100000000) != 0 && a2 > 4;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        return (a2 & 0x100000000) != 0 && a2 == 1;
      }

      else
      {
        return (a2 & 0x100000000) != 0 && a2 == 2;
      }
    }

    else
    {
      return (a2 & 0x100000000) != 0 && !a2;
    }
  }

  else
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

uint64_t sub_1000BFEE8(void *a1)
{
  v36 = a1;
  v2 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v5 = &v34 - v4;
  v6 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  *(v1 + 16) = 0;
  *(v1 + 20) = 256;
  v16 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v37 = 0;
  sub_100035D04(&qword_10033D5D0, &unk_100273240);
  Published.init(initialValue:)();
  (*(v12 + 32))(v1 + v16, v15, v11);
  v17 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v37 = 0;
  sub_100035D04(&qword_10033F6A8, &qword_100276540);
  Published.init(initialValue:)();
  (*(v7 + 32))(v1 + v17, v10, v6);
  v18 = OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
  v19 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  *v20 = 0;
  v20[1] = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
  v21 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v37 = 0;
  sub_100035D04(&qword_10033D608, &unk_100273250);
  Published.init(initialValue:)();
  v22 = v35;
  v23 = *(v34 + 32);
  v23(v1 + v21, v5, v35);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
  v24 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
  v37 = 0;
  Published.init(initialValue:)();
  v23(v1 + v24, v5, v22);
  v25 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
  *v28 = 0;
  v28[1] = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
  v29 = v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = *(v1 + v18);
  v31 = v36;
  *(v1 + v18) = v36;
  v32 = v31;

  *(v1 + 16) = 2;
  *(v1 + 20) = 1;
  return v1;
}

uint64_t sub_1000C02A8(void *a1)
{
  v37 = a1;
  v2 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v5 = &v35 - v4;
  v6 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  *(v1 + 16) = 0;
  *(v1 + 20) = 256;
  v16 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v38 = 0;
  sub_100035D04(&qword_10033D5D0, &unk_100273240);
  Published.init(initialValue:)();
  (*(v12 + 32))(v1 + v16, v15, v11);
  v17 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v38 = 0;
  sub_100035D04(&qword_10033F6A8, &qword_100276540);
  Published.init(initialValue:)();
  (*(v7 + 32))(v1 + v17, v10, v6);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
  v18 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  *v19 = 0;
  v19[1] = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
  v20 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v38 = 0;
  sub_100035D04(&qword_10033D608, &unk_100273250);
  Published.init(initialValue:)();
  v21 = v36;
  v22 = *(v35 + 32);
  v22(v1 + v20, v5, v36);
  v23 = OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
  v24 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
  v38 = 0;
  Published.init(initialValue:)();
  v22(v1 + v24, v5, v21);
  v25 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
  *v28 = 0;
  v28[1] = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
  v29 = v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1002764E0;
  v31 = v37;
  *(v30 + 32) = v37;
  v32 = *(v1 + v23);
  *(v1 + v23) = v30;
  v33 = v31;

  *(v1 + 16) = [v33 type];
  *(v1 + 20) = 0;
  return v1;
}

__CFString *sub_1000C06B0(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        v1 = @"FPO_O";
      }

      else
      {
        v1 = @"miniBasalt";
      }

      goto LABEL_18;
    }

    if (a1 == 7)
    {
      v1 = @"b620Dark";
      goto LABEL_18;
    }

    if (a1 == 8)
    {
      v1 = @"b620Light";
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v1 = @"FPO_B";
      }

      else
      {
        v1 = @"FPO_Y";
      }

      goto LABEL_18;
    }

    if (a1 == 1)
    {
      v1 = @"miniDark";
      goto LABEL_18;
    }

    if (a1 == 2)
    {
      v1 = @"miniLight";
LABEL_18:
      v2 = v1;
      goto LABEL_19;
    }
  }

  v1 = [NSString stringWithFormat:@"? (%ld)", a1];
LABEL_19:

  return v1;
}

void sub_1000C07D8()
{
  type metadata accessor for SharingDefaults();
  v0 = swift_allocObject();
  if (qword_100339098 != -1)
  {
    swift_once();
  }

  v1 = qword_10038B250;
  *(v0 + 16) = qword_10038B250;
  v2 = objc_allocWithZone(sub_100035D04(&qword_1003422D8, &qword_100277650));
  v3 = v1;
  v4 = sub_1000C7160(1, 0x656C62616E456863, 0xE900000000000064, v1);

  *(v0 + 24) = v4;
  qword_10038B0A0 = v0;
}

uint64_t sub_1000C08B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000C09DC()
{
  sub_1000C094C();

  return swift_deallocClassInstance();
}

void *sub_1000C0A34()
{
  v1 = v0;
  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B240;
  v3 = sub_100035D04(&qword_1003422F0, &qword_100277668);
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v0[2] = sub_1000C7668(0xD000000000000011, 0x800000010029E810, v2, &qword_1003422F0, &qword_100277668, 1.0);
  v6 = objc_allocWithZone(v3);
  v7 = v5;
  v8 = sub_1000C7668(0xD00000000000001ALL, 0x800000010029E830, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[3] = v8;
  v9 = objc_allocWithZone(v3);
  v10 = v7;
  v11 = sub_1000C7668(0xD000000000000012, 0x800000010029E850, v2, &qword_1003422F0, &qword_100277668, 0.48669);

  v1[4] = v11;
  v12 = objc_allocWithZone(v3);
  v13 = v10;
  v14 = sub_1000C7668(0xD00000000000001BLL, 0x800000010029E870, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[5] = v14;
  v15 = objc_allocWithZone(v3);
  v16 = v13;
  v17 = sub_1000C7668(0xD000000000000019, 0x800000010029E890, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[6] = v17;
  v18 = objc_allocWithZone(v3);
  v19 = v16;
  v20 = sub_1000C7668(0xD000000000000012, 0x800000010029E8B0, v2, &qword_1003422F0, &qword_100277668, 0.88);

  v1[7] = v20;
  v21 = objc_allocWithZone(v3);
  v22 = v19;
  v23 = sub_1000C7668(0xD00000000000001BLL, 0x800000010029E8D0, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[8] = v23;
  v24 = objc_allocWithZone(v3);
  v25 = v22;
  v26 = sub_1000C7668(0xD000000000000013, 0x800000010029E8F0, v2, &qword_1003422F0, &qword_100277668, 0.6);

  v1[9] = v26;
  v27 = objc_allocWithZone(v3);
  v28 = v25;
  v29 = sub_1000C7668(0xD00000000000001CLL, 0x800000010029E910, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[10] = v29;
  v30 = objc_allocWithZone(v3);
  v31 = v28;
  v32 = sub_1000C7668(0xD00000000000001ALL, 0x800000010029E930, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[11] = v32;
  v33 = objc_allocWithZone(v3);
  v34 = v31;
  v35 = sub_1000C7668(0xD000000000000019, 0x800000010029E950, v2, &qword_1003422F0, &qword_100277668, 0.88);

  v1[12] = v35;
  v36 = objc_allocWithZone(v3);
  v37 = v34;
  v38 = sub_1000C7668(0xD000000000000022, 0x800000010029E970, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[13] = v38;
  v39 = objc_allocWithZone(v3);
  v40 = v37;
  v41 = sub_1000C7668(0xD00000000000001ALL, 0x800000010029E9A0, v2, &qword_1003422F0, &qword_100277668, 0.6);

  v1[14] = v41;
  v42 = objc_allocWithZone(v3);
  v43 = sub_1000C7668(0xD000000000000023, 0x800000010029E9C0, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[15] = v43;
  v44 = objc_allocWithZone(v3);
  v45 = sub_1000C7668(0xD000000000000021, 0x800000010029E9F0, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[16] = v45;
  return v1;
}

uint64_t sub_1000C0FEC()
{
  sub_1000C0F94();

  return swift_deallocClassInstance();
}

void *sub_1000C1044()
{
  v1 = v0;
  v0[2] = 0x3EA0C6F7A0B5ED8DLL;
  if (qword_100339090 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B248;
  v0[3] = qword_10038B248;
  v3 = sub_100035D04(&qword_1003422F0, &qword_100277668);
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v0[4] = sub_1000C7668(0xD00000000000001CLL, 0x800000010029E710, v2, &qword_1003422F0, &qword_100277668, -1.0);
  v6 = objc_allocWithZone(v3);
  v7 = v5;
  v8 = sub_1000C7668(0xD00000000000001BLL, 0x800000010029E730, v2, &qword_1003422F0, &qword_100277668, -1.0);

  v1[5] = v8;
  v9 = objc_allocWithZone(v3);
  v10 = v7;
  v11 = sub_1000C7668(0xD000000000000027, 0x800000010029E750, v2, &qword_1003422F0, &qword_100277668, -1.0);

  v1[6] = v11;
  v12 = objc_allocWithZone(v3);
  v13 = v10;
  v14 = sub_1000C7668(0xD000000000000019, 0x800000010029E780, v2, &qword_1003422F0, &qword_100277668, -1.0);

  v1[7] = v14;
  v15 = sub_100035D04(&qword_100342378, &qword_1002776F0);
  v16 = objc_allocWithZone(v15);
  v17 = v13;
  v18 = sub_1000C83F4(0, 1, 0xD00000000000001ALL, 0x800000010029E7A0, v2, &qword_100342378, &qword_1002776F0);

  v1[8] = v18;
  v19 = objc_allocWithZone(sub_100035D04(&qword_1003422D8, &qword_100277650));
  v20 = sub_1000C7160(0, 0xD00000000000001CLL, 0x800000010029E7C0, v2);

  v1[9] = v20;
  v21 = objc_allocWithZone(v15);
  v22 = sub_1000C83F4(0, 1, 0xD000000000000022, 0x800000010029E7E0, v2, &qword_100342378, &qword_1002776F0);

  v1[10] = v22;
  return v1;
}

uint64_t sub_1000C1350(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  a2();
  v7 = swift_allocObject();
  result = a4();
  *a5 = v7;
  return result;
}

uint64_t sub_1000C13A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74756F656D6974;
  }

  else
  {
    v4 = 0x6E6F74747562;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x74756F656D6974;
  }

  else
  {
    v6 = 0x6E6F74747562;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
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

Swift::Int sub_1000C1448()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C14C8()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C1534()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C15BC(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F74747562;
  if (*v1)
  {
    v2 = 0x74756F656D6974;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1000C16C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C17A8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C1878()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C1958@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7FA0(*a1);
  *a2 = result;
  return result;
}

void sub_1000C1988(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7974697669746361;
  v5 = 0x8000000100297200;
  v6 = 0xD000000000000012;
  v7 = 0xE500000000000000;
  v8 = 0x7974706D65;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000100297220;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656369766564;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1000C1AE8()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0xD000000000000012;
  v4 = 0x7974706D65;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C1B84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x737569646172;
  }

  else
  {
    v4 = 0x656C797473;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x737569646172;
  }

  else
  {
    v6 = 0x656C797473;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
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

Swift::Int sub_1000C1C24()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C1CA0()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C1D08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C1D8C(uint64_t *a1@<X8>)
{
  v2 = 0x656C797473;
  if (*v1)
  {
    v2 = 0x737569646172;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1000C1E90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C1F5C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C2014()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C20DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7FEC(*a1);
  *a2 = result;
  return result;
}

void sub_1000C210C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952870259;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0x7976616568;
  if (v2 != 3)
  {
    v7 = 0x6469676972;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x746867696CLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1000C2254()
{
  v1 = *v0;
  v2 = 1952870259;
  v3 = 0x6D756964656DLL;
  v4 = 0x7976616568;
  if (v1 != 3)
  {
    v4 = 0x6469676972;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746867696CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C2998()
{
  sub_1000C22D8();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for Region(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Region(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000C2BA4()
{
  result = qword_100342288;
  if (!qword_100342288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342288);
  }

  return result;
}

unint64_t sub_1000C2C2C()
{
  result = qword_1003422A0;
  if (!qword_1003422A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003422A0);
  }

  return result;
}

unint64_t sub_1000C2CB4()
{
  result = qword_1003422B8;
  if (!qword_1003422B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003422B8);
  }

  return result;
}

unint64_t sub_1000C2D3C()
{
  result = qword_1003422D0;
  if (!qword_1003422D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003422D0);
  }

  return result;
}

void *sub_1000C2D90()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v706 = (&v703 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v707 = (&v703 - v6);
  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v7 = qword_10038B240;
  v8 = sub_100035D04(&qword_1003422D8, &qword_100277650);
  v9 = objc_allocWithZone(v8);
  v10 = v7;
  v11 = sub_1000C7160(0, 0xD000000000000014, 0x800000010029D0B0, v7);

  v1[2] = v11;
  v12 = objc_allocWithZone(v8);
  v13 = v10;
  v14 = sub_1000C7160(0, 0xD00000000000001ELL, 0x800000010029D0D0, v7);

  v1[3] = v14;
  v15 = objc_allocWithZone(v8);
  v16 = v13;
  v17 = sub_1000C7160(1, 0xD000000000000020, 0x800000010029D0F0, v7);

  v1[4] = v17;
  v18 = objc_allocWithZone(v8);
  v19 = v16;
  v20 = sub_1000C7160(0, 0xD000000000000023, 0x800000010029D120, v7);

  v1[5] = v20;
  v21 = objc_allocWithZone(v8);
  v22 = v19;
  v23 = sub_1000C7160(1, 0xD00000000000001FLL, 0x800000010029D150, v7);

  v1[6] = v23;
  v24 = objc_allocWithZone(v8);
  v25 = v22;
  v713 = 0xD000000000000010;
  v26 = sub_1000C7160(1, 0xD000000000000010, 0x800000010029D170, v7);

  v1[7] = v26;
  v27 = objc_allocWithZone(v8);
  v28 = v25;
  v29 = sub_1000C7160(0, 0xD000000000000014, 0x800000010029D190, v7);

  v1[8] = v29;
  v30 = objc_allocWithZone(sub_100035D04(&qword_1003422E0, &qword_100277658));
  v31 = v28;
  v32 = sub_1000C7AF8(1, 0x69746F4E746E6968, 0xEF656C7974536563, v7, &qword_1003422E0, &qword_100277658);

  v1[9] = v32;
  v33 = objc_allocWithZone(v8);
  v34 = v31;
  v35 = sub_1000C7160(1, 0xD000000000000023, 0x800000010029D1B0, v7);

  v1[10] = v35;
  v36 = objc_allocWithZone(v8);
  v37 = v34;
  v38 = sub_1000C7160(1, 0xD000000000000021, 0x800000010029D1E0, v7);

  v1[11] = v38;
  v39 = objc_allocWithZone(v8);
  v40 = v37;
  v41 = sub_1000C7160(0, 0x62616E45746E6968, 0xEB0000000064656CLL, v7);

  v1[12] = v41;
  v42 = sub_100035D04(&qword_1003422E8, &qword_100277660);
  v43 = objc_allocWithZone(v42);
  v44 = v40;
  v45 = sub_1000C8654(0, 0x6E6E6142746E6968, 0xEE00657079547265, v7, &qword_1003422E8, &qword_100277660);

  v1[13] = v45;
  v46 = objc_allocWithZone(v8);
  v47 = v44;
  v715 = 0xD000000000000011;
  v48 = sub_1000C7160(0, 0xD000000000000011, 0x800000010029D210, v7);

  v1[14] = v48;
  v49 = v8;
  v50 = objc_allocWithZone(v8);
  v51 = v47;
  v52 = sub_1000C7160(0, 0xD000000000000014, 0x800000010029D230, v7);

  v1[15] = v52;
  v53 = objc_allocWithZone(v8);
  v54 = v51;
  v55 = sub_1000C7160(1, 0x616E456C6C657764, 0xEC00000064656C62, v7);

  v1[16] = v55;
  v56 = objc_allocWithZone(v42);
  v57 = v54;
  v58 = sub_1000C8654(2, 0x6E61426C6C657764, 0xEF6570795472656ELL, v7, &qword_1003422E8, &qword_100277660);

  v1[17] = v58;
  v59 = sub_100035D04(&qword_1003422F0, &qword_100277668);
  v60 = objc_allocWithZone(v59);
  v61 = v57;
  v62 = sub_1000C7668(0xD000000000000016, 0x800000010029D250, v7, &qword_1003422F0, &qword_100277668, 1.0);

  v1[18] = v62;
  v63 = objc_allocWithZone(v59);
  v64 = v61;
  v65 = v713;
  v66 = sub_1000C7668(v713, 0x800000010029D270, v7, &qword_1003422F0, &qword_100277668, 0.9);

  v1[19] = v66;
  v67 = objc_allocWithZone(v59);
  v68 = v64;
  v69 = sub_1000C7668(v65, 0x800000010029D290, v7, &qword_1003422F0, &qword_100277668, 3.0);

  v1[20] = v69;
  v70 = objc_allocWithZone(v49);
  v71 = v68;
  v716 = 0xD000000000000012;
  v72 = sub_1000C7160(0, 0xD000000000000012, 0x800000010029D2B0, v7);

  v1[21] = v72;
  v73 = objc_allocWithZone(v49);
  v74 = v71;
  v75 = sub_1000C7160(0, 0xD000000000000015, 0x800000010029D2D0, v7);

  v1[22] = v75;
  v76 = objc_allocWithZone(v49);
  v77 = v74;
  v78 = sub_1000C7160(1, 0xD000000000000022, 0x800000010029D2F0, v7);

  v1[23] = v78;
  v79 = objc_allocWithZone(v49);
  v80 = v77;
  v81 = sub_1000C7160(1, 0xD000000000000017, 0x800000010029D320, v7);

  v1[24] = v81;
  v82 = objc_allocWithZone(sub_100035D04(&qword_1003422F8, &qword_100277670));
  v83 = v80;
  v84 = sub_1000C819C(0, 0xF000000000000000, 0xD000000000000018, 0x800000010029D340, v7, &qword_1003422F8, &qword_100277670);

  v1[25] = v84;
  v85 = objc_allocWithZone(v49);
  v86 = v83;
  v87 = sub_1000C7160(0, 0xD00000000000001FLL, 0x800000010029D360, v7);

  v1[26] = v87;
  v88 = v59;
  v89 = objc_allocWithZone(v59);
  v90 = v86;
  v91 = sub_1000C7668(0xD000000000000019, 0x800000010029D380, v7, &qword_1003422F0, &qword_100277668, 0.1);

  v1[27] = v91;
  v92 = objc_allocWithZone(v49);
  v93 = v90;
  v94 = sub_1000C7160(1, 0xD000000000000016, 0x800000010029D3A0, v7);

  v1[28] = v94;
  v95 = objc_allocWithZone(v59);
  v96 = v93;
  v97 = sub_1000C7668(0x446572756C696166, 0xEF6E6F6974617275, v7, &qword_1003422F0, &qword_100277668, 5.0);

  v1[29] = v97;
  v98 = objc_allocWithZone(v59);
  v99 = v96;
  v100 = sub_1000C7668(0xD00000000000001ELL, 0x800000010029D3C0, v7, &qword_1003422F0, &qword_100277668, 8.0);

  v1[30] = v100;
  v101 = v49;
  v102 = objc_allocWithZone(v49);
  v103 = v99;
  v104 = sub_1000C7160(1, 0xD000000000000017, 0x800000010029D3E0, v7);

  v1[31] = v104;
  v105 = objc_allocWithZone(v49);
  v106 = v103;
  v107 = sub_1000C7160(0, 0xD000000000000016, 0x800000010029D400, v7);

  v1[32] = v107;
  v108 = objc_allocWithZone(v59);
  v109 = v106;
  v110 = sub_1000C7668(0xD000000000000021, 0x800000010029D420, v7, &qword_1003422F0, &qword_100277668, 300.0);

  v1[33] = v110;
  v111 = objc_allocWithZone(v49);
  v112 = v109;
  v113 = sub_1000C7160(0, 0xD000000000000017, 0x800000010029D450, v7);

  v1[34] = v113;
  v114 = objc_allocWithZone(v49);
  v115 = v112;
  v116 = sub_1000C7160(1, 0xD00000000000001DLL, 0x800000010029D470, v7);

  v1[35] = v116;
  v117 = objc_allocWithZone(v49);
  v118 = v115;
  v119 = sub_1000C7160(1, 0xD00000000000002ALL, 0x800000010029D490, v7);

  v1[36] = v119;
  v120 = objc_allocWithZone(v49);
  v121 = v118;
  v122 = sub_1000C7160(0, v716, 0x800000010029D4C0, v7);

  v1[37] = v122;
  v123 = objc_allocWithZone(v49);
  v124 = v121;
  v125 = v715;
  v126 = sub_1000C7160(0, v715, 0x800000010029D4E0, v7);

  v1[38] = v126;
  v127 = objc_allocWithZone(v49);
  v128 = v124;
  v129 = sub_1000C7160(1, v125, 0x800000010029D500, v7);

  v1[39] = v129;
  v130 = objc_allocWithZone(v49);
  v131 = v128;
  v132 = sub_1000C7160(0, 0x646F4D6775626564, 0xEE00737265696669, v7);

  v1[40] = v132;
  v133 = objc_allocWithZone(v49);
  v134 = v131;
  v135 = sub_1000C7160(1, v713, 0x800000010029D520, v7);

  v1[41] = v135;
  v136 = objc_allocWithZone(v49);
  v137 = v134;
  v138 = sub_1000C7160(1, 0xD000000000000016, 0x800000010029D540, v7);

  v1[42] = v138;
  v139 = objc_allocWithZone(v88);
  v140 = v137;
  v141 = sub_1000C7668(0xD000000000000020, 0x800000010029D560, v7, &qword_1003422F0, &qword_100277668, 8.0);

  v1[43] = v141;
  v711 = sub_100035D04(&qword_100342300, &qword_100277678);
  v142 = objc_allocWithZone(v711);
  v143 = v140;
  v144 = sub_1000C78B4(2, 0xD000000000000019, 0x800000010029D590, v7, &qword_100342300, &qword_100277678);

  v1[44] = v144;
  v145 = objc_allocWithZone(v88);
  v146 = v143;
  v712 = 0xD000000000000013;
  v147 = sub_1000C7668(0xD000000000000013, 0x800000010029D5B0, v7, &qword_1003422F0, &qword_100277668, 1.0);

  v1[45] = v147;
  v148 = objc_allocWithZone(v88);
  v149 = v146;
  v150 = sub_1000C7668(0xD000000000000018, 0x800000010029D5D0, v7, &qword_1003422F0, &qword_100277668, 30.0);

  v1[46] = v150;
  v717 = v88;
  v151 = objc_allocWithZone(v88);
  v152 = v149;
  v153 = sub_1000C7668(0xD000000000000016, 0x800000010029D5F0, v7, &qword_1003422F0, &qword_100277668, 10.0);

  v1[47] = v153;
  v154 = objc_allocWithZone(v88);
  v155 = v152;
  v156 = sub_1000C7668(0xD00000000000001ELL, 0x800000010029D610, v7, &qword_1003422F0, &qword_100277668, 0.0);

  v1[48] = v156;
  v157 = objc_allocWithZone(v49);
  v158 = v155;
  v159 = sub_1000C7160(1, 0xD00000000000001ALL, 0x800000010029D630, v7);

  v1[49] = v159;
  v160 = objc_allocWithZone(v49);
  v161 = v158;
  v162 = sub_1000C7160(0, v716, 0x800000010029D650, v7);

  v1[50] = v162;
  v163 = objc_allocWithZone(sub_100035D04(&qword_100342308, &qword_100277680));
  v164 = v161;
  v165 = sub_1000C8654(2, v713, 0x800000010029D670, v7, &qword_100342308, &qword_100277680);

  v1[51] = v165;
  v166 = sub_100035D04(&qword_100342310, &qword_100277688);
  v167 = objc_allocWithZone(v166);
  v168 = v164;
  v169 = sub_1000C8654(2, 0xD000000000000022, 0x800000010029D690, v7, &qword_100342310, &qword_100277688);

  v1[52] = v169;
  v170 = objc_allocWithZone(v166);
  v171 = v168;
  v172 = sub_1000C8654(2, 0xD000000000000017, 0x800000010029D6C0, v7, &qword_100342310, &qword_100277688);

  v1[53] = v172;
  v708 = v166;
  v173 = objc_allocWithZone(v166);
  v174 = v171;
  v175 = sub_1000C8654(2, 0xD000000000000019, 0x800000010029D6E0, v7, &qword_100342310, &qword_100277688);

  v1[54] = v175;
  v176 = objc_allocWithZone(v166);
  v177 = v174;
  v178 = sub_1000C8654(2, 0xD000000000000020, 0x800000010029D700, v7, &qword_100342310, &qword_100277688);

  v1[55] = v178;
  v179 = objc_allocWithZone(v101);
  v180 = v177;
  v181 = sub_1000C7160(0, 0xD00000000000001BLL, 0x800000010029D730, v7);

  v1[56] = v181;
  v182 = objc_allocWithZone(v101);
  v183 = v180;
  v184 = sub_1000C7160(1, 0xD000000000000020, 0x800000010029D750, v7);

  v1[57] = v184;
  v714 = v101;
  v185 = objc_allocWithZone(v101);
  v186 = v183;
  v187 = sub_1000C7160(0, 0xD000000000000024, 0x800000010029D780, v7);

  v1[58] = v187;
  v188 = objc_allocWithZone(v101);
  v189 = v186;
  v190 = sub_1000C7160(0, 0xD00000000000001CLL, 0x800000010029D7B0, v7);

  v1[59] = v190;
  v191 = objc_allocWithZone(sub_100035D04(&qword_100342318, &qword_100277690));
  v192 = v189;
  v193 = sub_1000C7AF8(0, 0x65756E69746E6F63, 0xEF72656767697254, v7, &qword_100342318, &qword_100277690);

  v1[60] = v193;
  v194 = objc_allocWithZone(v711);
  v195 = v192;
  v196 = sub_1000C78B4(28, 0xD000000000000021, 0x800000010029D7D0, v7, &qword_100342300, &qword_100277678);

  v1[61] = v196;
  v197 = sub_10024CC14(&_swiftEmptyArrayStorage);
  v198 = sub_100035D04(&qword_100342320, &qword_100277698);
  v199 = objc_allocWithZone(v198);
  v200 = v195;
  v201 = sub_1000C78B4(v197, 0x6761735564726163, 0xEA00000000007365, v7, &qword_100342320, &qword_100277698);

  v1[62] = v201;
  v202 = sub_10024CC14(&_swiftEmptyArrayStorage);
  v203 = objc_allocWithZone(v198);
  v204 = v200;
  v205 = sub_1000C78B4(v202, 0x67617355746E6968, 0xEA00000000007365, v7, &qword_100342320, &qword_100277698);

  v1[63] = v205;
  v206 = sub_10024CC14(&_swiftEmptyArrayStorage);
  v207 = objc_allocWithZone(v198);
  v208 = v204;
  v209 = sub_1000C78B4(v206, 0xD000000000000014, 0x800000010029D800, v7, &qword_100342320, &qword_100277698);

  v1[64] = v209;
  v210 = sub_10024CC14(&_swiftEmptyArrayStorage);
  v211 = objc_allocWithZone(v198);
  v212 = v208;
  v213 = sub_1000C78B4(v210, 0x726566736E617274, 0xEE00736567617355, v7, &qword_100342320, &qword_100277698);

  v1[65] = v213;
  v214 = v714;
  v215 = objc_allocWithZone(v714);
  v216 = v212;
  v217 = sub_1000C7160(0, 0xD000000000000016, 0x800000010029D820, v7);

  v1[66] = v217;
  v218 = objc_allocWithZone(v214);
  v219 = v216;
  v220 = sub_1000C7160(0, 0xD000000000000016, 0x800000010029D840, v7);

  v1[67] = v220;
  v221 = objc_allocWithZone(v214);
  v222 = v219;
  v223 = sub_1000C7160(0, 0xD000000000000019, 0x800000010029D860, v7);

  v1[68] = v223;
  v224 = objc_allocWithZone(v214);
  v225 = v222;
  v226 = v7;
  v703 = v7;
  v227 = sub_1000C7160(0, v716, 0x800000010029D880, v7);

  v1[69] = v227;
  v228 = type metadata accessor for Date();
  v229 = *(v228 - 1);
  v704 = *(v229 + 56);
  v705 = v229 + 56;
  v230 = v707;
  v704(v707, 1, 1, v228);
  v231 = v706;
  sub_10006C4AC(v230, v706);
  v232 = sub_100035D04(&qword_100342328, &qword_1002776A0);
  v709 = v232;
  v233 = objc_allocWithZone(v232);
  v234 = v225;
  v235 = sub_1000C73A4(v231, 0xD000000000000015, 0x800000010029D8A0, v226);

  sub_1000C7600(v230);
  v1[70] = v235;
  v710 = v228;
  v236 = v704;
  v704(v230, 1, 1, v228);
  sub_10006C4AC(v230, v231);
  v237 = objc_allocWithZone(v232);
  v238 = v234;
  v239 = v703;
  v240 = sub_1000C73A4(v231, 0xD000000000000016, 0x800000010029D8C0, v703);

  sub_1000C7600(v230);
  v1[71] = v240;
  v236(v230, 1, 1, v228);
  sub_10006C4AC(v230, v231);
  v241 = v709;
  v242 = objc_allocWithZone(v709);
  v243 = v238;
  v244 = sub_1000C73A4(v231, v715, 0x800000010029D8E0, v239);

  sub_1000C7600(v230);
  v1[72] = v244;
  v236(v230, 1, 1, v710);
  sub_10006C4AC(v230, v231);
  v245 = objc_allocWithZone(v241);
  v246 = v243;
  v247 = sub_1000C73A4(v231, 0xD000000000000023, 0x800000010029D900, v239);

  sub_1000C7600(v230);
  v1[73] = v247;
  v248 = objc_allocWithZone(v717);
  v249 = v246;
  v250 = sub_1000C7668(0xD00000000000001FLL, 0x800000010029D930, v239, &qword_1003422F0, &qword_100277668, 86400.0);

  v1[74] = v250;
  v236(v230, 1, 1, v710);
  sub_10006C4AC(v230, v231);
  v251 = objc_allocWithZone(v709);
  v252 = v249;
  v253 = sub_1000C73A4(v231, 0xD00000000000001ELL, 0x800000010029D950, v239);

  sub_1000C7600(v230);
  v1[75] = v253;
  v254 = objc_allocWithZone(v711);
  v255 = v252;
  v256 = sub_1000C78B4(0, 0xD00000000000001DLL, 0x800000010029D970, v239, &qword_100342300, &qword_100277678);

  v1[76] = v256;
  v257 = objc_allocWithZone(v708);
  v258 = v255;
  v259 = sub_1000C8654(1, 0xD00000000000001ALL, 0x800000010029D990, v239, &qword_100342310, &qword_100277688);

  v1[77] = v259;
  v260 = v717;
  v261 = objc_allocWithZone(v717);
  v262 = v258;
  v263 = sub_1000C7668(v712, 0x800000010029D9B0, v239, &qword_1003422F0, &qword_100277668, -1.0);

  v1[78] = v263;
  v264 = objc_allocWithZone(v260);
  v265 = v262;
  v266 = sub_1000C7668(0xD000000000000014, 0x800000010029D9D0, v239, &qword_1003422F0, &qword_100277668, -1.0);

  v1[79] = v266;
  v267 = sub_100035D04(&qword_100342330, &qword_1002776A8);
  v268 = objc_allocWithZone(v267);
  v269 = v265;
  v270 = sub_1000C8654(0, 0xD000000000000017, 0x800000010029D9F0, v239, &qword_100342330, &qword_1002776A8);

  v1[80] = v270;
  v271 = objc_allocWithZone(v267);
  v272 = v269;
  v273 = sub_1000C8654(1, 0xD000000000000018, 0x800000010029DA10, v239, &qword_100342330, &qword_1002776A8);

  v1[81] = v273;
  v274 = objc_allocWithZone(v267);
  v275 = v272;
  v276 = sub_1000C8654(2, 0xD000000000000017, 0x800000010029DA30, v239, &qword_100342330, &qword_1002776A8);

  v1[82] = v276;
  v277 = sub_100035D04(&qword_100342338, &qword_1002776B0);
  v278 = objc_allocWithZone(v277);
  v279 = v275;
  v280 = v715;
  v281 = sub_1000C819C(0, 0, v715, 0x800000010029DA50, v239, &qword_100342338, &qword_1002776B0);

  v1[83] = v281;
  v710 = v277;
  v282 = objc_allocWithZone(v277);
  v283 = v279;
  v284 = sub_1000C819C(0, 0, 0xD000000000000016, 0x800000010029DA70, v239, &qword_100342338, &qword_1002776B0);

  v1[84] = v284;
  v285 = objc_allocWithZone(v277);
  v286 = v283;
  v287 = sub_1000C819C(0, 0, 0xD000000000000017, 0x800000010029DA90, v239, &qword_100342338, &qword_1002776B0);

  v1[85] = v287;
  v288 = v714;
  v289 = objc_allocWithZone(v714);
  v290 = v286;
  v291 = sub_1000C7160(0, 0xD000000000000025, 0x800000010029DAB0, v239);

  v1[86] = v291;
  v292 = objc_allocWithZone(v288);
  v293 = v290;
  v294 = sub_1000C7160(0, 0xD00000000000001CLL, 0x800000010029DAE0, v239);

  v1[87] = v294;
  v295 = objc_allocWithZone(v288);
  v296 = v293;
  v297 = sub_1000C7160(0, 0xD00000000000001FLL, 0x800000010029DB00, v239);

  v1[88] = v297;
  v298 = v288;
  v299 = objc_allocWithZone(v288);
  v300 = v296;
  v301 = sub_1000C7160(0, v280, 0x800000010029DB20, v239);

  v1[89] = v301;
  v302 = objc_allocWithZone(v288);
  v303 = v300;
  v304 = sub_1000C7160(0, 0x656D6F4870696B73, 0xEC00000064726143, v239);

  v1[90] = v304;
  v305 = v717;
  v306 = objc_allocWithZone(v717);
  v307 = v303;
  v308 = sub_1000C7668(v712, 0x800000010029DB40, v239, &qword_1003422F0, &qword_100277668, 8.0);

  v1[91] = v308;
  v309 = objc_allocWithZone(v298);
  v310 = v307;
  v311 = sub_1000C7160(0, 0xD00000000000001BLL, 0x800000010029DB60, v239);

  v1[92] = v311;
  v312 = objc_allocWithZone(v305);
  v313 = v310;
  v314 = sub_1000C7668(0xD00000000000001ELL, 0x800000010029DB80, v239, &qword_1003422F0, &qword_100277668, 0.5);

  v1[93] = v314;
  v315 = sub_100035D04(&qword_100342340, &qword_1002776B8);
  v316 = objc_allocWithZone(v315);
  v317 = v313;
  v318 = sub_1000C7668(0xD00000000000001CLL, 0x800000010029DBA0, v239, &qword_100342340, &qword_1002776B8, 0.1);

  v1[94] = v318;
  v319 = objc_allocWithZone(v315);
  v320 = v317;
  v321 = sub_1000C7668(0xD00000000000001DLL, 0x800000010029DBC0, v239, &qword_100342340, &qword_1002776B8, 0.1);

  v1[95] = v321;
  v322 = objc_allocWithZone(v315);
  v323 = v320;
  v324 = sub_1000C7668(0xD000000000000022, 0x800000010029DBE0, v239, &qword_100342340, &qword_1002776B8, 1.2);

  v1[96] = v324;
  v325 = objc_allocWithZone(v315);
  v326 = v323;
  v327 = sub_1000C7668(0xD000000000000023, 0x800000010029DC10, v239, &qword_100342340, &qword_1002776B8, -1.25);

  v1[97] = v327;
  v328 = objc_allocWithZone(v315);
  v329 = v326;
  v330 = sub_1000C7668(0xD000000000000021, 0x800000010029DC40, v239, &qword_100342340, &qword_1002776B8, 25.0);

  v1[98] = v330;
  v331 = objc_allocWithZone(v315);
  v332 = v329;
  v333 = sub_1000C7668(0xD000000000000022, 0x800000010029DC70, v239, &qword_100342340, &qword_1002776B8, 25.0);

  v1[99] = v333;
  v334 = objc_allocWithZone(v315);
  v335 = v332;
  v336 = sub_1000C7668(0xD000000000000015, 0x800000010029DCA0, v239, &qword_100342340, &qword_1002776B8, 0.0);

  v1[100] = v336;
  v337 = objc_allocWithZone(sub_100035D04(&qword_100342348, &qword_1002776C0));
  v338 = v335;
  v339 = sub_1000C7AF8(1, v713, 0x800000010029DCC0, v239, &qword_100342348, &qword_1002776C0);

  v1[101] = v339;
  v340 = objc_allocWithZone(v711);
  v341 = v338;
  v342 = sub_1000C78B4(11, 0x72756C4264726163, 0xED0000656C797453, v239, &qword_100342300, &qword_100277678);

  v1[102] = v342;
  v343 = objc_allocWithZone(v315);
  v344 = v341;
  v345 = sub_1000C7668(0x72756C4264726163, 0xEE00737569646152, v239, &qword_100342340, &qword_1002776B8, 16.0);

  v1[103] = v345;
  v346 = v714;
  v347 = objc_allocWithZone(v714);
  v348 = v344;
  v349 = sub_1000C7160(0, 0xD000000000000018, 0x800000010029DCE0, v239);

  v1[104] = v349;
  v706 = v315;
  v350 = objc_allocWithZone(v315);
  v351 = v348;
  v352 = sub_1000C7668(0xD000000000000014, 0x800000010029DD00, v239, &qword_100342340, &qword_1002776B8, 20.0);

  v1[105] = v352;
  v353 = objc_allocWithZone(v315);
  v354 = v351;
  v355 = sub_1000C7668(0xD000000000000016, 0x800000010029DD20, v239, &qword_100342340, &qword_1002776B8, 20.0);

  v1[106] = v355;
  v356 = objc_allocWithZone(v346);
  v357 = v354;
  v358 = sub_1000C7160(1, 0xD000000000000019, 0x800000010029DD40, v239);

  v1[107] = v358;
  v359 = v717;
  v360 = objc_allocWithZone(v717);
  v361 = v357;
  v362 = v716;
  v363 = sub_1000C7668(v716, 0x800000010029DD60, v239, &qword_1003422F0, &qword_100277668, 0.3);

  v1[108] = v363;
  v364 = objc_allocWithZone(v359);
  v365 = v361;
  v366 = sub_1000C7668(0x617078456C6C6970, 0xEF656C616353646ELL, v239, &qword_1003422F0, &qword_100277668, 1.3);

  v1[109] = v366;
  v367 = objc_allocWithZone(sub_100035D04(&qword_100342350, &qword_1002776C8));
  v368 = v365;
  v369 = kCAMediaTimingFunctionEaseOut;
  v370 = sub_1000C78B4(kCAMediaTimingFunctionEaseOut, 0xD00000000000001CLL, 0x800000010029DD80, v239, &qword_100342350, &qword_1002776C8);

  v1[110] = v370;
  v371 = objc_allocWithZone(sub_100035D04(&qword_100342358, &qword_1002776D0));
  v372 = v368;
  v373 = sub_1000C7AF8(0, 0xD00000000000001CLL, 0x800000010029DDA0, v239, &qword_100342358, &qword_1002776D0);

  v1[111] = v373;
  v374 = objc_allocWithZone(sub_100035D04(&qword_100342360, &qword_1002776D8));
  v375 = v372;
  v376 = sub_1000C7AF8(0, 0xD000000000000019, 0x800000010029DDC0, v239, &qword_100342360, &qword_1002776D8);

  v1[112] = v376;
  v377 = v714;
  v378 = objc_allocWithZone(v714);
  v379 = v375;
  v380 = sub_1000C7160(1, 0xD000000000000018, 0x800000010029DDE0, v239);

  v1[113] = v380;
  v381 = objc_allocWithZone(v359);
  v382 = v379;
  v383 = sub_1000C7668(0xD000000000000014, 0x800000010029DE00, v239, &qword_1003422F0, &qword_100277668, 0.0);

  v1[114] = v383;
  v384 = objc_allocWithZone(v377);
  v385 = v382;
  v386 = sub_1000C7160(0, 0xD00000000000001FLL, 0x800000010029DE20, v239);

  v1[115] = v386;
  v387 = objc_allocWithZone(v377);
  v388 = v385;
  v389 = sub_1000C7160(1, v362, 0x800000010029DE40, v239);

  v1[116] = v389;
  v390 = objc_allocWithZone(v377);
  v391 = v388;
  v392 = sub_1000C7160(1, v712, 0x800000010029DE60, v239);

  v1[117] = v392;
  v393 = sub_100035D04(&qword_100342368, &qword_1002776E0);
  v709 = v393;
  v394 = objc_allocWithZone(v393);
  v395 = v391;
  v396 = sub_1000C7D40(0xD000000000000014, 0x800000010029DE80, v239, 0.15);

  v1[118] = v396;
  v397 = objc_allocWithZone(v393);
  v398 = v395;
  v399 = sub_1000C7D40(0xD000000000000014, 0x800000010029DEA0, v239, 0.0);

  v1[119] = v399;
  v400 = sub_100035D04(&qword_100342370, &qword_1002776E8);
  v401 = objc_allocWithZone(v400);
  v402 = v398;
  v403 = v715;
  v404 = sub_1000C8654(4, v715, 0x800000010029DEC0, v239, &qword_100342370, &qword_1002776E8);

  v1[120] = v404;
  v405 = v706;
  v406 = objc_allocWithZone(v706);
  v407 = v402;
  v408 = sub_1000C7668(0xD000000000000015, 0x800000010029DEE0, v239, &qword_100342340, &qword_1002776B8, 1.0);

  v1[121] = v408;
  v409 = objc_allocWithZone(v400);
  v410 = v407;
  v411 = sub_1000C8654(3, v403, 0x800000010029DF00, v239, &qword_100342370, &qword_1002776E8);

  v1[122] = v411;
  v412 = objc_allocWithZone(v405);
  v413 = v410;
  v414 = sub_1000C7668(0xD000000000000015, 0x800000010029DF20, v239, &qword_100342340, &qword_1002776B8, 1.0);

  v1[123] = v414;
  v415 = v714;
  v416 = objc_allocWithZone(v714);
  v417 = v413;
  v418 = sub_1000C7160(0, 0xD000000000000027, 0x800000010029DF40, v239);

  v1[124] = v418;
  v419 = objc_allocWithZone(v415);
  v420 = v417;
  v421 = sub_1000C7160(0, 0xD000000000000032, 0x800000010029DF70, v239);

  v1[125] = v421;
  v422 = objc_allocWithZone(v415);
  v423 = v420;
  v424 = sub_1000C7160(0, 0xD000000000000019, 0x800000010029DFB0, v239);

  v1[126] = v424;
  v425 = objc_allocWithZone(v415);
  v426 = v423;
  v427 = sub_1000C7160(1, 0xD000000000000017, 0x800000010029DFD0, v239);

  v1[127] = v427;
  v428 = objc_allocWithZone(v415);
  v429 = v426;
  v430 = sub_1000C7160(0, 0xD000000000000015, 0x800000010029DFF0, v239);

  v1[128] = v430;
  v431 = objc_allocWithZone(v415);
  v432 = v429;
  v433 = sub_1000C7160(1, 0xD00000000000001ELL, 0x800000010029E010, v239);

  v1[129] = v433;
  v434 = objc_allocWithZone(v415);
  v435 = v432;
  v436 = sub_1000C7160(0, 0xD00000000000001BLL, 0x800000010029E030, v239);

  v1[130] = v436;
  v437 = objc_allocWithZone(v415);
  v438 = v435;
  v439 = sub_1000C7160(0, 0xD000000000000017, 0x800000010029E050, v239);

  v1[131] = v439;
  v440 = v717;
  v441 = objc_allocWithZone(v717);
  v442 = v438;
  v443 = sub_1000C7668(v403, 0x800000010029E070, v239, &qword_1003422F0, &qword_100277668, 0.0);

  v1[132] = v443;
  v444 = objc_allocWithZone(v415);
  v445 = v442;
  v446 = sub_1000C7160(0, 0xD00000000000001ALL, 0x800000010029E090, v239);

  v1[133] = v446;
  v447 = objc_allocWithZone(v415);
  v448 = v445;
  v449 = sub_1000C7160(0, 0xD000000000000016, 0x800000010029E0B0, v239);

  v1[134] = v449;
  v450 = objc_allocWithZone(v415);
  v451 = v448;
  v452 = sub_1000C7160(0, v403, 0x800000010029E0D0, v239);

  v1[135] = v452;
  v453 = objc_allocWithZone(v405);
  v454 = v451;
  v455 = sub_1000C7668(0x706C416567646162, 0xEF6E696765426168, v239, &qword_100342340, &qword_1002776B8, 0.0);

  v1[136] = v455;
  v456 = objc_allocWithZone(v405);
  v457 = v454;
  v458 = sub_1000C7668(0x706C416567646162, 0xED0000646E456168, v239, &qword_100342340, &qword_1002776B8, 1.0);

  v1[137] = v458;
  v459 = objc_allocWithZone(v440);
  v460 = v457;
  v461 = sub_1000C7668(0x6C65446567646162, 0xEA00000000007961, v239, &qword_1003422F0, &qword_100277668, 1.0);

  v1[138] = v461;
  v462 = objc_allocWithZone(v440);
  v463 = v460;
  v464 = sub_1000C7668(0x7275446567646162, 0xED00006E6F697461, v239, &qword_1003422F0, &qword_100277668, 1.0);

  v1[139] = v464;
  v465 = objc_allocWithZone(v405);
  v466 = v463;
  v467 = sub_1000C7668(0x6163536567646162, 0xEF6E69676542656CLL, v239, &qword_100342340, &qword_1002776B8, 0.8);

  v1[140] = v467;
  v468 = objc_allocWithZone(v405);
  v469 = v466;
  v470 = sub_1000C7668(0x6163536567646162, 0xED0000646E45656CLL, v239, &qword_100342340, &qword_1002776B8, 1.0);

  v1[141] = v470;
  v471 = objc_allocWithZone(v405);
  v472 = v469;
  v473 = sub_1000C7668(0x68706C4172756C62, 0xEE006E6967654261, v239, &qword_100342340, &qword_1002776B8, 0.0);

  v1[142] = v473;
  v474 = objc_allocWithZone(v405);
  v475 = v472;
  v476 = sub_1000C7668(0x68706C4172756C62, 0xEC000000646E4561, v239, &qword_100342340, &qword_1002776B8, 0.5);

  v1[143] = v476;
  v477 = objc_allocWithZone(v405);
  v478 = v475;
  v479 = sub_1000C7668(0x6772614D72756C62, 0xEA00000000006E69, v239, &qword_100342340, &qword_1002776B8, 15.0);

  v1[144] = v479;
  v480 = objc_allocWithZone(v405);
  v481 = v478;
  v482 = sub_1000C7668(0x6964615272756C62, 0xEA00000000007375, v239, &qword_100342340, &qword_1002776B8, 0.5);

  v1[145] = v482;
  v707 = sub_100035D04(&qword_100342378, &qword_1002776F0);
  v483 = objc_allocWithZone(v707);
  v484 = v481;
  v485 = sub_1000C83F4(0, 1, 0xD00000000000001BLL, 0x800000010029E0F0, v239, &qword_100342378, &qword_1002776F0);

  v1[146] = v485;
  v486 = objc_allocWithZone(v710);
  v487 = v484;
  v488 = sub_1000C819C(0, 0, 0xD000000000000016, 0x800000010029E110, v239, &qword_100342338, &qword_1002776B0);

  v1[147] = v488;
  v489 = objc_allocWithZone(v405);
  v490 = v487;
  v491 = sub_1000C7668(0x706C416569766F6DLL, 0xEF6E696765426168, v239, &qword_100342340, &qword_1002776B8, 0.0);

  v1[148] = v491;
  v492 = objc_allocWithZone(v405);
  v493 = v490;
  v494 = sub_1000C7668(0x706C416569766F6DLL, 0xED0000646E456168, v239, &qword_100342340, &qword_1002776B8, 1.0);

  v1[149] = v494;
  v495 = objc_allocWithZone(v717);
  v496 = v493;
  v497 = v716;
  v498 = sub_1000C7668(v716, 0x800000010029E130, v239, &qword_1003422F0, &qword_100277668, 0.5);

  v1[150] = v498;
  v499 = objc_allocWithZone(v405);
  v500 = v496;
  v501 = sub_1000C7668(0x6163536569766F6DLL, 0xEF6E69676542656CLL, v239, &qword_100342340, &qword_1002776B8, 0.1);

  v1[151] = v501;
  v502 = objc_allocWithZone(v405);
  v503 = v500;
  v504 = sub_1000C7668(0x6163536569766F6DLL, 0xED0000646E45656CLL, v239, &qword_100342340, &qword_1002776B8, 1.0);

  v1[152] = v504;
  v505 = objc_allocWithZone(v405);
  v506 = v503;
  v507 = sub_1000C7668(v497, 0x800000010029E150, v239, &qword_100342340, &qword_1002776B8, 10.0);

  v1[153] = v507;
  v508 = objc_allocWithZone(v405);
  v509 = v506;
  v510 = sub_1000C7668(0x6461506569766F6DLL, 0xEF706F54676E6964, v239, &qword_100342340, &qword_1002776B8, -25.0);

  v1[154] = v510;
  v511 = v717;
  v512 = objc_allocWithZone(v717);
  v513 = v509;
  v514 = sub_1000C7668(0xD000000000000016, 0x800000010029E170, v239, &qword_1003422F0, &qword_100277668, 1.0);

  v1[155] = v514;
  v515 = objc_allocWithZone(v405);
  v516 = v513;
  v517 = sub_1000C7668(0xD000000000000016, 0x800000010029E190, v239, &qword_100342340, &qword_1002776B8, 50.0);

  v1[156] = v517;
  v518 = objc_allocWithZone(v405);
  v519 = v516;
  v520 = sub_1000C7668(0xD000000000000014, 0x800000010029E1B0, v239, &qword_100342340, &qword_1002776B8, 0.0);

  v1[157] = v520;
  v521 = objc_allocWithZone(v511);
  v522 = v519;
  v523 = sub_1000C7668(v715, 0x800000010029E1D0, v239, &qword_1003422F0, &qword_100277668, 5.0);

  v1[158] = v523;
  v524 = v714;
  v525 = objc_allocWithZone(v714);
  v526 = v522;
  v527 = sub_1000C7160(0, 0x49556775626564, 0xE700000000000000, v239);

  v1[159] = v527;
  v528 = objc_allocWithZone(v524);
  v529 = v526;
  v530 = sub_1000C7160(0, 0x655265726F6E6769, 0xEA00000000006C61, v239);

  v1[160] = v530;
  v531 = objc_allocWithZone(v405);
  v532 = v529;
  v533 = sub_1000C7668(0xD000000000000014, 0x800000010029E1F0, v239, &qword_100342340, &qword_1002776B8, 1.2);

  v1[161] = v533;
  v534 = objc_allocWithZone(v405);
  v535 = v532;
  v536 = sub_1000C7668(0xD000000000000015, 0x800000010029E210, v239, &qword_100342340, &qword_1002776B8, 50.0);

  v1[162] = v536;
  v537 = v710;
  v538 = objc_allocWithZone(v710);
  v539 = v535;
  v540 = sub_1000C819C(0, 0, 0x497070416F6D6544, 0xEB000000006E6F63, v239, &qword_100342338, &qword_1002776B0);

  v1[163] = v540;
  v541 = objc_allocWithZone(v707);
  v542 = v539;
  v543 = sub_1000C83F4(0, 1, 0x67616D496F6D6544, 0xE900000000000065, v239, &qword_100342378, &qword_1002776F0);

  v1[164] = v543;
  v544 = objc_allocWithZone(v537);
  v545 = v542;
  v546 = sub_1000C819C(0, 0, 0x656D614E6F6D6544, 0xE800000000000000, v239, &qword_100342338, &qword_1002776B0);

  v1[165] = v546;
  v547 = objc_allocWithZone(v537);
  v548 = v545;
  v549 = sub_1000C819C(0, 0, 0x746275536F6D6544, 0xEB00000000747865, v239, &qword_100342338, &qword_1002776B0);

  v1[166] = v549;
  v550 = objc_allocWithZone(v524);
  v551 = v548;
  v552 = sub_1000C7160(0, 0xD000000000000024, 0x800000010029E230, v239);

  v1[167] = v552;
  v553 = objc_allocWithZone(v537);
  v554 = v551;
  v555 = sub_1000C819C(0, 0, 0xD000000000000022, 0x800000010029E260, v239, &qword_100342338, &qword_1002776B0);

  v1[168] = v555;
  v556 = objc_allocWithZone(v711);
  v557 = v554;
  v558 = sub_1000C78B4(0, 0x7543636974706168, 0xEB00000000657672, v239, &qword_100342300, &qword_100277678);

  v1[169] = v558;
  v559 = objc_allocWithZone(v524);
  v560 = v557;
  v561 = v716;
  v562 = sub_1000C7160(1, v716, 0x800000010029E290, v239);

  v1[170] = v562;
  v563 = v717;
  v564 = objc_allocWithZone(v717);
  v565 = v560;
  v566 = sub_1000C7668(0x7246636974706168, 0xEF79636E65757165, v239, &qword_1003422F0, &qword_100277668, 60.0);

  v1[171] = v566;
  v567 = v709;
  v568 = objc_allocWithZone(v709);
  v569 = v565;
  v570 = sub_1000C7D40(v561, 0x800000010029E2B0, v239, 0.65);

  v1[172] = v570;
  v571 = objc_allocWithZone(v567);
  v572 = v569;
  v573 = sub_1000C7D40(v561, 0x800000010029E2D0, v239, 0.0);

  v1[173] = v573;
  v574 = v567;
  v575 = objc_allocWithZone(v567);
  v576 = v572;
  v577 = v713;
  v578 = sub_1000C7D40(v713, 0x800000010029E2F0, v239, 0.15);

  v1[174] = v578;
  v579 = objc_allocWithZone(v574);
  v580 = v576;
  v581 = sub_1000C7D40(v577, 0x800000010029E310, v239, 0.15);

  v1[175] = v581;
  v582 = objc_allocWithZone(v563);
  v583 = v580;
  v584 = sub_1000C7668(0x664F636974706168, 0xEC00000074657366, v239, &qword_1003422F0, &qword_100277668, 0.3);

  v1[176] = v584;
  v585 = objc_allocWithZone(v563);
  v586 = v583;
  v587 = sub_1000C7668(v712, 0x800000010029E330, v239, &qword_1003422F0, &qword_100277668, 0.8425);

  v1[177] = v587;
  v588 = objc_allocWithZone(v563);
  v589 = v586;
  v590 = sub_1000C7668(0xD00000000000001CLL, 0x800000010029E350, v239, &qword_1003422F0, &qword_100277668, 0.0625);

  v1[178] = v590;
  v591 = objc_allocWithZone(v563);
  v592 = v589;
  v593 = sub_1000C7668(0xD000000000000014, 0x800000010029E370, v239, &qword_1003422F0, &qword_100277668, 0.4);

  v1[179] = v593;
  v594 = objc_allocWithZone(v563);
  v595 = v592;
  v596 = sub_1000C7668(0xD00000000000001DLL, 0x800000010029E390, v239, &qword_1003422F0, &qword_100277668, 0.125);

  v1[180] = v596;
  v597 = objc_allocWithZone(v563);
  v598 = v595;
  v599 = sub_1000C7668(0xD00000000000001BLL, 0x800000010029E3B0, v239, &qword_1003422F0, &qword_100277668, 0.0);

  v1[181] = v599;
  v600 = v714;
  v601 = objc_allocWithZone(v714);
  v602 = v598;
  v603 = sub_1000C7160(0, v716, 0x800000010029E3D0, v239);

  v1[182] = v603;
  v604 = objc_allocWithZone(v600);
  v605 = v602;
  v606 = sub_1000C7160(1, 0x6D53676E69727073, 0xEF676E6968746F6FLL, v239);

  v1[183] = v606;
  v607 = objc_allocWithZone(v600);
  v608 = v605;
  v609 = sub_1000C7160(0, 0xD000000000000017, 0x800000010029E3F0, v239);

  v1[184] = v609;
  v610 = v711;
  v611 = objc_allocWithZone(v711);
  v612 = v608;
  v613 = sub_1000C78B4(-60, 0xD000000000000014, 0x800000010029E410, v239, &qword_100342300, &qword_100277678);

  v1[185] = v613;
  v614 = v709;
  v615 = objc_allocWithZone(v709);
  v616 = v612;
  v617 = sub_1000C7D40(0xD000000000000018, 0x800000010029E430, v239, 4.0);

  v1[186] = v617;
  v618 = objc_allocWithZone(v614);
  v619 = v616;
  v620 = sub_1000C7D40(v712, 0x800000010029E450, v239, 0.3);

  v1[187] = v620;
  v621 = v708;
  v622 = objc_allocWithZone(v708);
  v623 = v619;
  v624 = sub_1000C8654(2, 0x7365526563726F66, 0xEE007265646E6F70, v239, &qword_100342310, &qword_100277688);

  v1[188] = v624;
  v625 = objc_allocWithZone(v600);
  v626 = v623;
  v627 = sub_1000C7160(0, 0xD000000000000018, 0x800000010029E470, v239);

  v1[189] = v627;
  v628 = objc_allocWithZone(v600);
  v629 = v626;
  v630 = sub_1000C7160(1, 0xD000000000000014, 0x800000010029E490, v239);

  v1[190] = v630;
  v631 = objc_allocWithZone(v600);
  v632 = v629;
  v633 = sub_1000C7160(1, 0x45676E69676E6172, 0xEF646563726F666ELL, v239);

  v1[191] = v633;
  v634 = objc_allocWithZone(v621);
  v635 = v632;
  v636 = sub_1000C8654(2, 0xD00000000000001BLL, 0x800000010029E4B0, v239, &qword_100342310, &qword_100277688);

  v1[192] = v636;
  v637 = objc_allocWithZone(v710);
  v638 = v635;
  v639 = sub_1000C819C(0, 0, v715, 0x800000010029E4D0, v239, &qword_100342338, &qword_1002776B0);

  v1[193] = v639;
  v640 = objc_allocWithZone(v600);
  v641 = v638;
  v642 = sub_1000C7160(1, 0x746552776F6C6C61, 0xEC00000073656972, v239);

  v1[194] = v642;
  v643 = objc_allocWithZone(v610);
  v644 = v641;
  v645 = sub_1000C78B4(0, 0xD000000000000018, 0x800000010029E4F0, v239, &qword_100342300, &qword_100277678);

  v1[195] = v645;
  v646 = objc_allocWithZone(v610);
  v647 = v644;
  v648 = sub_1000C78B4(0, 0xD000000000000016, 0x800000010029E510, v239, &qword_100342300, &qword_100277678);

  v1[196] = v648;
  v649 = objc_allocWithZone(v717);
  v650 = v647;
  v651 = sub_1000C7668(0xD00000000000001DLL, 0x800000010029E530, v239, &qword_1003422F0, &qword_100277668, 0.0);

  v1[197] = v651;
  v652 = objc_allocWithZone(v600);
  v653 = v650;
  v654 = sub_1000C7160(0, 0x44676E69676E6172, 0xEF64656C62617369, v239);

  v1[198] = v654;
  v655 = v709;
  v656 = objc_allocWithZone(v709);
  v657 = v653;
  v658 = sub_1000C7D40(v715, 0x800000010029E550, v239, 10.0);

  v1[199] = v658;
  v659 = objc_allocWithZone(v655);
  v660 = v657;
  v661 = sub_1000C7D40(0x6E61747369447462, 0xEF656772614C6563, v239, 10.0);

  v1[200] = v661;
  v662 = objc_allocWithZone(v655);
  v663 = v660;
  v664 = sub_1000C7D40(0x6E61747369447462, 0xEF726568744F6563, v239, 10.0);

  v1[201] = v664;
  v665 = objc_allocWithZone(v655);
  v666 = v663;
  v667 = sub_1000C7D40(0xD000000000000018, 0x800000010029E570, v239, 0.5);

  v1[202] = v667;
  v668 = objc_allocWithZone(v655);
  v669 = v666;
  v670 = sub_1000C7D40(0xD000000000000016, 0x800000010029E590, v239, 0.075);

  v1[203] = v670;
  v671 = objc_allocWithZone(v655);
  v672 = v669;
  v673 = sub_1000C7D40(0xD000000000000014, 0x800000010029E5B0, v239, 0.13);

  v1[204] = v673;
  v674 = objc_allocWithZone(v655);
  v675 = v672;
  v676 = sub_1000C7D40(0xD000000000000014, 0x800000010029E5D0, v239, 0.16);

  v1[205] = v676;
  v677 = objc_allocWithZone(v655);
  v678 = v675;
  v679 = sub_1000C7D40(0xD00000000000001ALL, 0x800000010029E5F0, v239, 2.0);

  v1[206] = v679;
  v680 = objc_allocWithZone(v655);
  v681 = v678;
  v682 = sub_1000C7D40(0xD000000000000018, 0x800000010029E610, v239, 2.0);

  v1[207] = v682;
  v683 = objc_allocWithZone(v655);
  v684 = v681;
  v685 = sub_1000C7D40(0xD000000000000018, 0x800000010029E630, v239, 2.0);

  v1[208] = v685;
  v686 = objc_allocWithZone(v655);
  v687 = v684;
  v688 = sub_1000C7D40(0xD00000000000001BLL, 0x800000010029E650, v239, 1.25);

  v1[209] = v688;
  v689 = objc_allocWithZone(v655);
  v690 = v687;
  v691 = sub_1000C7D40(0xD000000000000019, 0x800000010029E670, v239, 1.25);

  v1[210] = v691;
  v692 = objc_allocWithZone(v655);
  v693 = v690;
  v694 = sub_1000C7D40(0xD000000000000019, 0x800000010029E690, v239, 1.25);

  v1[211] = v694;
  v695 = objc_allocWithZone(v655);
  v696 = v693;
  v697 = sub_1000C7D40(0xD000000000000016, 0x800000010029E6B0, v239, 0.3);

  v1[212] = v697;
  v698 = objc_allocWithZone(v655);
  v699 = sub_1000C7D40(0xD000000000000014, 0x800000010029E6D0, v239, 0.36);

  v1[213] = v699;
  v700 = objc_allocWithZone(v655);
  v701 = sub_1000C7D40(0xD000000000000014, 0x800000010029E6F0, v239, 0.36);

  v1[214] = v701;
  return v1;
}

id sub_1000C7160(char a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  *(v5 + *((swift_isaMask & *v5) + 0x60)) = a1;
  v15 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v15 = a2;
  v15[1] = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a4;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v21, "UserDefault-");
  HIBYTE(v21[6]) = 0;
  v21[7] = -5120;
  v16 = a4;

  v17._countAndFlagsBits = a2;
  v17._object = a3;
  String.append(_:)(v17);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v14, v10);
  v18 = sub_100035D04(&qword_1003422D8, &qword_100277650);
  v20.receiver = v5;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, "init");
}

id sub_1000C73A4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  sub_10006C4AC(a1, v5 + *((swift_isaMask & *v5) + 0x60));
  v15 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v15 = a2;
  v15[1] = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a4;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v22, "UserDefault-");
  HIBYTE(v22[6]) = 0;
  v22[7] = -5120;
  v16 = a4;

  v17._countAndFlagsBits = a2;
  v17._object = a3;
  String.append(_:)(v17);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v14, v10);
  v18 = sub_100035D04(&qword_100342328, &qword_1002776A0);
  v21.receiver = v5;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, "init");
  sub_1000C7600(a1);
  return v19;
}

uint64_t sub_1000C7600(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000C7668(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5, double a6)
{
  v24 = a5;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a6;
  v18 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v18 = a1;
  v18[1] = a2;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v26, "UserDefault-");
  HIBYTE(v26[6]) = 0;
  v26[7] = -5120;
  v19 = a3;

  v20._countAndFlagsBits = a1;
  v20._object = a2;
  String.append(_:)(v20);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v17, v13);
  v21 = sub_100035D04(a4, v24);
  v25.receiver = v8;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, "init");
}

id sub_1000C78B4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v24 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1;
  v18 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v18 = a2;
  v18[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v26, "UserDefault-");
  HIBYTE(v26[6]) = 0;
  v26[7] = -5120;
  v19 = a4;

  v20._countAndFlagsBits = a2;
  v20._object = a3;
  String.append(_:)(v20);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v17, v13);
  v21 = sub_100035D04(a5, v24);
  v25.receiver = v8;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, "init");
}

id sub_1000C7AF8(char a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v24 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1 & 1;
  v18 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v18 = a2;
  v18[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v26, "UserDefault-");
  HIBYTE(v26[6]) = 0;
  v26[7] = -5120;
  v19 = a4;

  v20._countAndFlagsBits = a2;
  v20._object = a3;
  String.append(_:)(v20);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v17, v13);
  v21 = sub_100035D04(a5, v24);
  v25.receiver = v8;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, "init");
}

id sub_1000C7D40(uint64_t a1, void *a2, void *a3, float a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  *(v5 + *((swift_isaMask & *v5) + 0x60)) = a4;
  v15 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v15 = a1;
  v15[1] = a2;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v21, "UserDefault-");
  HIBYTE(v21[6]) = 0;
  v21[7] = -5120;
  v16 = a3;

  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.append(_:)(v17);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v14, v10);
  v18 = sub_100035D04(&qword_100342368, &qword_1002776E0);
  v20.receiver = v5;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, "init");
}

unint64_t sub_1000C7FA0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100300AB8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C7FEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100300BF0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C8038()
{
  result = qword_100342380;
  if (!qword_100342380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342380);
  }

  return result;
}

unint64_t sub_1000C808C()
{
  result = qword_100342388;
  if (!qword_100342388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342388);
  }

  return result;
}

unint64_t sub_1000C80E0()
{
  result = qword_100342390;
  if (!qword_100342390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342390);
  }

  return result;
}

unint64_t sub_1000C8134()
{
  result = qword_100342398;
  if (!qword_100342398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342398);
  }

  return result;
}

id sub_1000C819C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v25 = a6;
  v26 = a7;
  v8 = v7;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  v19 = (v8 + *((swift_isaMask & *v8) + 0x60));
  *v19 = a1;
  v19[1] = a2;
  v20 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v20 = a3;
  v20[1] = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a5;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v28, "UserDefault-");
  HIBYTE(v28[6]) = 0;
  v28[7] = -5120;
  v21 = a5;

  v22._countAndFlagsBits = a3;
  v22._object = a4;
  String.append(_:)(v22);

  Logger.init(subsystem:category:)();
  (*(v15 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v18, v14);
  v23 = sub_100035D04(v25, v26);
  v27.receiver = v8;
  v27.super_class = v23;
  return objc_msgSendSuper2(&v27, "init");
}

id sub_1000C83F4(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v25 = a6;
  v26 = a7;
  v8 = v7;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  v19 = v8 + *((swift_isaMask & *v8) + 0x60);
  *v19 = a1;
  v19[8] = a2 & 1;
  v20 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v20 = a3;
  v20[1] = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a5;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v28, "UserDefault-");
  HIBYTE(v28[6]) = 0;
  v28[7] = -5120;
  v21 = a5;

  v22._countAndFlagsBits = a3;
  v22._object = a4;
  String.append(_:)(v22);

  Logger.init(subsystem:category:)();
  (*(v15 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v18, v14);
  v23 = sub_100035D04(v25, v26);
  v27.receiver = v8;
  v27.super_class = v23;
  return objc_msgSendSuper2(&v27, "init");
}

id sub_1000C8654(char a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v24 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1;
  v18 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v18 = a2;
  v18[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v26, "UserDefault-");
  HIBYTE(v26[6]) = 0;
  v26[7] = -5120;
  v19 = a4;

  v20._countAndFlagsBits = a2;
  v20._object = a3;
  String.append(_:)(v20);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v17, v13);
  v21 = sub_100035D04(a5, v24);
  v25.receiver = v8;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, "init");
}

uint64_t sub_1000C88A0(void *a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v50 = a2;
  v51 = sub_100035D04(&qword_1003423C0, &qword_100277870);
  v49 = *(v51 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v51);
  v48 = &v39 - v5;
  v6 = sub_100035D04(&qword_1003423C8, &qword_100277878);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v45 = &v39 - v8;
  v9 = sub_100035D04(&qword_1003423D0, &qword_100277880);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v42 = &v39 - v11;
  v12 = sub_100035D04(&qword_1003423D8, &qword_100277888);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  __chkstk_darwin(v12);
  v39 = &v39 - v14;
  v15 = sub_100035D04(&qword_1003423E0, &qword_100277890);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v19 = sub_100035D04(&qword_1003423E8, &qword_100277898);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v39 - v22;
  v24 = sub_100035D04(&qword_1003423F0, &qword_1002778A0);
  v53 = *(v24 - 8);
  v54 = v24;
  v25 = *(v53 + 64);
  __chkstk_darwin(v24);
  v27 = &v39 - v26;
  v28 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000C995C();
  v29 = v55;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v29 > 1)
  {
    switch(v29)
    {
      case 2:
        v58 = 2;
        sub_1000C9AAC();
        v30 = v39;
        v31 = v54;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v33 = v40;
        v32 = v41;
        goto LABEL_11;
      case 3:
        v59 = 3;
        sub_1000C9A58();
        v30 = v42;
        v31 = v54;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v33 = v43;
        v32 = v44;
        goto LABEL_11;
      case 4:
        v60 = 4;
        sub_1000C9A04();
        v30 = v45;
        v31 = v54;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v33 = v46;
        v32 = v47;
LABEL_11:
        (*(v33 + 8))(v30, v32);
        return (*(v53 + 8))(v27, v31);
    }

LABEL_15:
    v61 = 5;
    sub_1000C99B0();
    v36 = v48;
    v37 = v54;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = v51;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v49 + 8))(v36, v38);
    return (*(v53 + 8))(v27, v37);
  }

  v34 = v52;
  if (!v29)
  {
    v56 = 0;
    sub_1000C9B54();
    v31 = v54;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v23, v19);
    return (*(v53 + 8))(v27, v31);
  }

  if (v29 != 1)
  {
    goto LABEL_15;
  }

  v57 = 1;
  sub_1000C9B00();
  v31 = v54;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v34 + 8))(v18, v15);
  return (*(v53 + 8))(v27, v31);
}

uint64_t sub_1000C8F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000C8F9C(uint64_t a1)
{
  v2 = sub_1000C99B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C8FD8(uint64_t a1)
{
  v2 = sub_1000C99B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9014()
{
  v1 = *v0;
  v2 = 0x656D697465636166;
  v3 = 0x746E6F43786F7270;
  v4 = 0x697261666173;
  if (v1 != 4)
  {
    v4 = 0x4449656C646E7562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x636973756DLL;
  if (v1 != 1)
  {
    v5 = 0x6979616C50776F6ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C90D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000C9BA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000C910C(uint64_t a1)
{
  v2 = sub_1000C995C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C9148(uint64_t a1)
{
  v2 = sub_1000C995C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9184(uint64_t a1)
{
  v2 = sub_1000C9B54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C91C0(uint64_t a1)
{
  v2 = sub_1000C9B54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C91FC(uint64_t a1)
{
  v2 = sub_1000C9B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C9238(uint64_t a1)
{
  v2 = sub_1000C9B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9274(uint64_t a1)
{
  v2 = sub_1000C9AAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C92B0(uint64_t a1)
{
  v2 = sub_1000C9AAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C92EC(uint64_t a1)
{
  v2 = sub_1000C9A58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C9328(uint64_t a1)
{
  v2 = sub_1000C9A58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9364(uint64_t a1)
{
  v2 = sub_1000C9A04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C93A0(uint64_t a1)
{
  v2 = sub_1000C9A04();

  return CodingKey.debugDescription.getter(a1, v2);
}

char *sub_1000C93DC@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_1000C9DAC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1000C9424()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0x656D695465636146;
      goto LABEL_13;
    }

    if (v2 == 1)
    {
      v3 = 0x636973754DLL;
      goto LABEL_13;
    }

LABEL_12:
    v3 = *v0;
    goto LABEL_13;
  }

  if (v2 == 2)
  {
    v3 = 0x79616C5020776F4ELL;
    goto LABEL_13;
  }

  if (v2 == 3)
  {
    v3 = 0x746E6F43786F7250;
    goto LABEL_13;
  }

  if (v2 != 4)
  {
    goto LABEL_12;
  }

  v3 = 0x697261666153;
LABEL_13:
  sub_10009D534(v1, v2);
  return v3;
}

uint64_t sub_1000C9518(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C9530(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C9588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_1000C95D8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1000C960C()
{
  result = qword_1003423B8;
  if (!qword_1003423B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003423B8);
  }

  return result;
}

uint64_t sub_1000C9660(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 <= 1)
  {
    if (!v5)
    {
      return !v6;
    }

    if (v5 == 1)
    {
      return v6 == 1;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        return v6 == 2;
      case 3:
        return v6 == 3;
      case 4:
        return v6 == 4;
    }
  }

  if (v6 < 5)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == v6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

Swift::Int sub_1000C9708()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(5uLL);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_12;
  }

  if (v2 == 3)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (v2 != 4)
  {
    goto LABEL_14;
  }

  v3 = 4;
LABEL_12:
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1000C97D4()
{
  v1 = v0[1];
  if (v1 <= 1)
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 1)
    {
      v2 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        v2 = 2;
        goto LABEL_12;
      case 3:
        v2 = 3;
        goto LABEL_12;
      case 4:
        v2 = 4;
LABEL_12:
        Hasher._combine(_:)(v2);
        return;
    }
  }

  v3 = *v0;
  Hasher._combine(_:)(5uLL);

  String.hash(into:)();
}

Swift::Int sub_1000C9894()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(5uLL);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_12;
  }

  if (v2 == 3)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (v2 != 4)
  {
    goto LABEL_14;
  }

  v3 = 4;
LABEL_12:
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t sub_1000C995C()
{
  result = qword_1003423F8;
  if (!qword_1003423F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003423F8);
  }

  return result;
}

unint64_t sub_1000C99B0()
{
  result = qword_100342400;
  if (!qword_100342400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342400);
  }

  return result;
}

unint64_t sub_1000C9A04()
{
  result = qword_100342408;
  if (!qword_100342408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342408);
  }

  return result;
}

unint64_t sub_1000C9A58()
{
  result = qword_100342410;
  if (!qword_100342410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342410);
  }

  return result;
}

unint64_t sub_1000C9AAC()
{
  result = qword_100342418;
  if (!qword_100342418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342418);
  }

  return result;
}

unint64_t sub_1000C9B00()
{
  result = qword_100342420;
  if (!qword_100342420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342420);
  }

  return result;
}

unint64_t sub_1000C9B54()
{
  result = qword_100342428;
  if (!qword_100342428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342428);
  }

  return result;
}

uint64_t sub_1000C9BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D697465636166 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636973756DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E6F43786F7270 && a2 == 0xEF6F6D65446C6F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697261666173 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

char *sub_1000C9DAC(uint64_t *a1)
{
  v54 = sub_100035D04(&qword_100342430, &qword_1002778A8);
  v56 = *(v54 - 8);
  v2 = *(v56 + 64);
  __chkstk_darwin(v54);
  v57 = &v44 - v3;
  v55 = sub_100035D04(&qword_100342438, &qword_1002778B0);
  v53 = *(v55 - 8);
  v4 = *(v53 + 64);
  __chkstk_darwin(v55);
  v60 = &v44 - v5;
  v52 = sub_100035D04(&qword_100342440, &qword_1002778B8);
  v49 = *(v52 - 8);
  v6 = *(v49 + 64);
  __chkstk_darwin(v52);
  v59 = &v44 - v7;
  v8 = sub_100035D04(&qword_100342448, &qword_1002778C0);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v58 = &v44 - v10;
  v11 = sub_100035D04(&qword_100342450, &qword_1002778C8);
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = sub_100035D04(&qword_100342458, &qword_1002778D0);
  v46 = *(v15 - 8);
  v16 = *(v46 + 64);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = sub_100035D04(&qword_100342460, &unk_1002778D8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v44 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v62 = a1;
  sub_10000EBC0(a1, v24);
  sub_1000C995C();
  v26 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v26)
  {
    v27 = v18;
    v44 = v15;
    v45 = v14;
    v28 = v58;
    v29 = v59;
    v30 = v60;
    v61 = v20;
    v31 = KeyedDecodingContainer.allKeys.getter();
    v32 = (2 * *(v31 + 16)) | 1;
    v63 = v31;
    v64 = v31 + 32;
    v65 = 0;
    v66 = v32;
    v33 = sub_100218010();
    if (v33 == 6 || v65 != v66 >> 1)
    {
      v18 = type metadata accessor for DecodingError();
      swift_allocError();
      v37 = v36;
      v38 = v19;
      v39 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v37 = &type metadata for LaunchAppService.App;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v18 - 1) + 104))(v37, enum case for DecodingError.typeMismatch(_:), v18);
      swift_willThrow();
      (*(v61 + 8))(v23, v38);
      swift_unknownObjectRelease();
    }

    else if (v33 > 2u)
    {
      v41 = v61;
      if (v33 == 3)
      {
        v67 = 3;
        sub_1000C9A58();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v49 + 8))(v29, v52);
        (*(v41 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v18 = 0;
      }

      else if (v33 == 4)
      {
        v67 = 4;
        sub_1000C9A04();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v53 + 8))(v30, v55);
        (*(v41 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v18 = 0;
      }

      else
      {
        v67 = 5;
        sub_1000C99B0();
        v42 = v57;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = v54;
        v18 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v56 + 8))(v42, v43);
        (*(v41 + 8))(v23, v19);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v34 = v61;
      if (v33)
      {
        if (v33 == 1)
        {
          v67 = 1;
          sub_1000C9B00();
          v35 = v45;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v47 + 8))(v35, v48);
        }

        else
        {
          v67 = 2;
          sub_1000C9AAC();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v50 + 8))(v28, v51);
        }

        (*(v34 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v18 = 0;
      }

      else
      {
        v67 = 0;
        sub_1000C9B54();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v46 + 8))(v27, v44);
        (*(v34 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v18 = 0;
      }
    }
  }

  sub_10000903C(v62);
  return v18;
}

unint64_t sub_1000CA75C()
{
  result = qword_100342468;
  if (!qword_100342468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342468);
  }

  return result;
}

unint64_t sub_1000CA7B4()
{
  result = qword_100342470;
  if (!qword_100342470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342470);
  }

  return result;
}

unint64_t sub_1000CA80C()
{
  result = qword_100342478;
  if (!qword_100342478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342478);
  }

  return result;
}

unint64_t sub_1000CA864()
{
  result = qword_100342480;
  if (!qword_100342480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342480);
  }

  return result;
}

unint64_t sub_1000CA8BC()
{
  result = qword_100342488;
  if (!qword_100342488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342488);
  }

  return result;
}

unint64_t sub_1000CA914()
{
  result = qword_100342490;
  if (!qword_100342490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342490);
  }

  return result;
}

unint64_t sub_1000CA96C()
{
  result = qword_100342498;
  if (!qword_100342498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342498);
  }

  return result;
}

unint64_t sub_1000CA9C4()
{
  result = qword_1003424A0;
  if (!qword_1003424A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424A0);
  }

  return result;
}

unint64_t sub_1000CAA1C()
{
  result = qword_1003424A8;
  if (!qword_1003424A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424A8);
  }

  return result;
}

unint64_t sub_1000CAA74()
{
  result = qword_1003424B0;
  if (!qword_1003424B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424B0);
  }

  return result;
}

unint64_t sub_1000CAACC()
{
  result = qword_1003424B8;
  if (!qword_1003424B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424B8);
  }

  return result;
}

unint64_t sub_1000CAB24()
{
  result = qword_1003424C0;
  if (!qword_1003424C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424C0);
  }

  return result;
}

unint64_t sub_1000CAB7C()
{
  result = qword_1003424C8;
  if (!qword_1003424C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424C8);
  }

  return result;
}

unint64_t sub_1000CABD4()
{
  result = qword_1003424D0;
  if (!qword_1003424D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424D0);
  }

  return result;
}

unint64_t sub_1000CAC2C()
{
  result = qword_1003424D8;
  if (!qword_1003424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424D8);
  }

  return result;
}

unint64_t sub_1000CAC84()
{
  result = qword_1003424E0;
  if (!qword_1003424E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424E0);
  }

  return result;
}

unint64_t sub_1000CACF8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CB020(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CADE4()
{
  v1 = *v0;
  v2 = 1701602409;
  v3 = 0x6F69746163756465;
  v4 = 1953393000;
  if (v1 != 3)
  {
    v4 = 1819047270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D726177657270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000CAE9C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CB030(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CAF88()
{
  v1 = 1701602409;
  v2 = 1953393000;
  if (*v0 != 2)
  {
    v2 = 1819047270;
  }

  if (*v0)
  {
    v1 = 0x6F69746163756465;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000CB020(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1000CB030(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1000CB040()
{
  result = qword_100342508;
  if (!qword_100342508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342508);
  }

  return result;
}

unint64_t sub_1000CB094()
{
  result = qword_100342510;
  if (!qword_100342510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342510);
  }

  return result;
}

id sub_1000CB104(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  *&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = type metadata accessor for BannerViewControllerBase();
  v26 = v14;
  sub_100035D04(&qword_100342570, &qword_1002782D0);
  v15 = String.init<A>(describing:)();
  v16 = &v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_className];
  *v16 = v15;
  v16[1] = v17;

  Logger.init(subsystem:category:)();
  (*(v6 + 32))(&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_log], v12, v5);
  v25.receiver = v2;
  v25.super_class = v14;
  v18 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  (*(v6 + 16))(v10, v18 + OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_log, v5);
  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Init", v22, 2u);
  }

  (*(v6 + 8))(v10, v5);
  return v19;
}

id sub_1000CB400()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_log, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Deinit", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for BannerViewControllerBase();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_1000CB70C(void *a1)
{
  v2 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0xD00000000000001FLL, 0x8000000100298670, v27);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v8 = [a1 requestIdentifier];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == *&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID] && v12 == *&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID + 8])
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
LABEL_10:
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28 = v17;
        *v16 = 136315138;
        v18 = [a1 requestIdentifier];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v27[0] = v20;
        v27[1] = v22;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v23 = String.init<A>(describing:)();
        v25 = sub_100017494(v23, v24, &v28);

        *(v16 + 4) = v25;
        _os_log_impl(&_mh_execute_header, oslog, v15, "### Unrecognized requestID %s", v16, 0xCu);
        sub_10000903C(v17);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v2, 3uLL, 0, 3);

    swift_unknownObjectRelease();
  }
}

void sub_1000CBA70(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0xD00000000000002DLL, 0x8000000100298640, v30);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100017494(v5, v7, v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s reason=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v11 = [a1 requestIdentifier];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID] && v15 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID + 8])
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_13:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;
        v21 = [a1 requestIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v30[0] = v23;
        v30[1] = v25;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v26 = String.init<A>(describing:)();
        v28 = sub_100017494(v26, v27, &v31);

        *(v19 + 4) = v28;
        _os_log_impl(&_mh_execute_header, oslog, v18, "### Unrecognized requestID %s", v19, 0xCu);
        sub_10000903C(v20);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 2);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1000CBE90(void *a1)
{
  v2 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0xD000000000000020, 0x8000000100298610, v27);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v8 = [a1 requestIdentifier];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == *&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID] && v12 == *&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID + 8])
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
LABEL_10:
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28 = v17;
        *v16 = 136315138;
        v18 = [a1 requestIdentifier];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v27[0] = v20;
        v27[1] = v22;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v23 = String.init<A>(describing:)();
        v25 = sub_100017494(v23, v24, &v28);

        *(v16 + 4) = v25;
        _os_log_impl(&_mh_execute_header, oslog, v15, "### Unrecognized requestID %s", v16, 0xCu);
        sub_10000903C(v17);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v2, 2uLL, 0, 3);

    swift_unknownObjectRelease();
  }
}

void sub_1000CC1F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_1000CC26C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985E0, v30);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100017494(v5, v7, v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s reason=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v11 = [a1 requestIdentifier];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID] && v15 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID + 8])
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_13:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;
        v21 = [a1 requestIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v30[0] = v23;
        v30[1] = v25;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v26 = String.init<A>(describing:)();
        v28 = sub_100017494(v26, v27, &v31);

        *(v19 + 4) = v28;
        _os_log_impl(&_mh_execute_header, oslog, v18, "### Unrecognized requestID %s", v19, 0xCu);
        sub_10000903C(v20);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 1);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1000CC68C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985B0, v30);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100017494(v5, v7, v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s reason=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v11 = [a1 requestIdentifier];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID] && v15 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID + 8])
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_13:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;
        v21 = [a1 requestIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v30[0] = v23;
        v30[1] = v25;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v26 = String.init<A>(describing:)();
        v28 = sub_100017494(v26, v27, &v31);

        *(v19 + 4) = v28;
        _os_log_impl(&_mh_execute_header, oslog, v18, "### Unrecognized requestID %s", v19, 0xCu);
        sub_10000903C(v20);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 0);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1000CCAAC(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
}

void sub_1000CCB58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1000CCE24(a4);
  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for BannerViewControllerBase()
{
  result = qword_100342560;
  if (!qword_100342560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CCC94()
{
  _StringGuts.grow(_:)(17);

  String.append(_:)(*(v0 + OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_className));
  v1._countAndFlagsBits = 0x7473657571657220;
  v1._object = 0xEB000000003D4449;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID));
  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 60;
}

uint64_t sub_1000CCD7C()
{
  result = type metadata accessor for Logger();
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

void sub_1000CCE24(const char *a1)
{
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, a1, v3, 2u);
  }
}

uint64_t sub_1000CCEF4(uint64_t a1, uint64_t a2)
{
  v8[3] = a1;
  v5 = sub_10000F798(v8);
  (*(*(a1 - 8) + 16))(v5, v2, a1);
  v6 = sub_1000CCFC4(v8, 2, a1, a2);
  sub_10000903C(v8);
  return v6;
}

uint64_t sub_1000CCFC4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v6 = a1;
    v7 = (*(a4 + 16))(a3, a4);
    a1 = v6;
    if ((v7 & 1) == 0)
    {
LABEL_3:

      return sub_1000CD06C(a1, a3, a4);
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_3;
  }

  return sub_1000CD24C(a1, a3, a4);
}

uint64_t sub_1000CD06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000CD6AC(a1, a2, a3);
  v4 = v3[2];
  if (v4)
  {
    sub_1000CDF40(0, v4, 0);
    v5 = (v3 + 7);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v20 = *(v5 - 3);
      v22 = *(v5 - 2);
      swift_bridgeObjectRetain_n();

      v8._countAndFlagsBits = 8250;
      v8._object = 0xE200000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = v6;
      v9._object = v7;
      String.append(_:)(v9);

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_1000CDF40((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v11];
      *(v12 + 4) = v20;
      *(v12 + 5) = v22;
      v5 += 4;
      --v4;
    }

    while (v4);
  }

  swift_getMetatypeMetadata();
  v21 = String.init<A>(describing:)();
  v13._countAndFlagsBits = 40;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  return v21;
}

uint64_t sub_1000CD24C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v57._countAndFlagsBits = a2;
  swift_getMetatypeMetadata();
  v6 = String.init<A>(describing:)();
  v8 = v7;
  v55 = v6;
  v56 = v7;
  sub_10000EBC0(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (swift_isClassType())
  {
    v10 = DynamicType == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = a1[3];
    v12 = sub_10000EBC0(a1, v11);
    v13 = *(v11 - 8);
    v14 = *(v13 + 64);
    __chkstk_darwin(v12);
    v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v16, v11);
    swift_unknownObjectRelease();
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v53 = v17;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v57);

    v6 = v55;
    v8 = v56;
  }

  v57._countAndFlagsBits = 60;
  v57._object = 0xE100000000000000;
  v19._countAndFlagsBits = v6;
  v19._object = v8;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 62;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  countAndFlagsBits = v57._countAndFlagsBits;
  object = v57._object;
  v23 = sub_1000CD6AC(a1, v4, a3);
  v24 = v23[2];
  if (v24)
  {
    v42 = countAndFlagsBits;
    v43 = object;
    v44 = v4;
    v45 = a3;
    v57._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_1000CDF20(0, v24, 0);
    v25 = v57._countAndFlagsBits;
    v41[1] = v23;
    v26 = v23 + 7;
    v46 = xmmword_1002725A0;
    do
    {
      v27 = *(v26 - 3);
      v28 = *(v26 - 2);
      v29 = *(v26 - 1);
      v30 = *v26;
      sub_100035D04(&unk_10033D890, &qword_100275EB0);
      v31 = swift_allocObject();
      *(v31 + 16) = v46;
      *(v31 + 32) = v27;
      *(v31 + 40) = v28;
      *(v31 + 48) = v29;
      *(v31 + 56) = v30;
      v57._countAndFlagsBits = v25;
      v32 = v25[2];
      v33 = v25[3];

      if (v32 >= v33 >> 1)
      {
        sub_1000CDF20((v33 > 1), v32 + 1, 1);
        v25 = v57._countAndFlagsBits;
      }

      v25[2] = v32 + 1;
      v25[v32 + 4] = v31;
      v26 += 4;
      --v24;
    }

    while (v24);

    v4 = v44;
    a3 = v45;
    countAndFlagsBits = v42;
    object = v43;
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  v57._countAndFlagsBits = countAndFlagsBits;
  v57._object = object;
  v58 = 0;
  v59 = v25;
  v60 = 0;
  v34 = (*(a3 + 24))(v4, a3);
  v36 = sub_1000B1898(v34, v35, 0, 1);
  v38 = v37;

  v51 = v36;
  v52 = v38;
  v49 = 10;
  v50 = 0xE100000000000000;
  v53 = 10;
  v54 = 0xE100000000000000;
  v39._countAndFlagsBits = (*(a3 + 32))(v4, a3);
  String.append(_:)(v39);

  v47 = v53;
  v48 = v54;
  sub_100058C0C();
  sub_100058C60();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  return v53;
}
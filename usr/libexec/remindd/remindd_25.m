id NSURL.rd_isExcludedFromBackup.setter(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getObjectType();
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLResourceValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  *&v12 = __chkstk_darwin(v9).n128_u64[0];
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 rd_isExcludedFromBackup];
  if (result != v3)
  {
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    URL.setResourceValues(_:)();
    (*(v10 + 8))(v14, v9);
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_10028F22C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10028F288()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093FD20);
  v1 = sub_100006654(v0, qword_10093FD20);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10028F350(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000032;
  }

  else
  {
    v4 = 0xD000000000000021;
  }

  if (v3)
  {
    v5 = "store did change";
  }

  else
  {
    v5 = "hangeNotification";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000032;
  }

  else
  {
    v7 = 0xD000000000000021;
  }

  if (*a2)
  {
    v8 = "hangeNotification";
  }

  else
  {
    v8 = "store did change";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int sub_10028F3FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10028F47C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10028F4E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10028F564@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E29B0, *a1);

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

void sub_10028F5C4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000032;
  }

  else
  {
    v2 = 0xD000000000000021;
  }

  if (*v1)
  {
    v3 = "hangeNotification";
  }

  else
  {
    v3 = "store did change";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_10028F604(void *a1, char a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 36) = -1;
  v5 = a2 & 1;
  *(v3 + 32) = a2 & 1;
  out_token = -1;
  if (a2)
  {
    v6 = 0xD000000000000032;
  }

  else
  {
    v6 = 0xD000000000000021;
  }

  if (a2)
  {
    v7 = "hangeNotification";
  }

  else
  {
    v7 = "store did change";
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  aBlock[4] = sub_100290390;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004D4ECC;
  aBlock[3] = &unk_1008EC7D0;
  v10 = _Block_copy(aBlock);
  v11 = a1;

  v12 = String.utf8CString.getter();

  v13 = notify_register_dispatch((v12 + 32), &out_token, v11, v10);

  _Block_release(v10);

  if (v13 || out_token == -1)
  {
    if (qword_100935DC0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10093FD20);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315394;
      v25 = sub_10000668C(v6, v7 | 0x8000000000000000, aBlock);

      *(v23 + 4) = v25;
      *(v23 + 12) = 1024;
      *(v23 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to register for notifyd notification {notificationName: %s, status: %u}", v23, 0x12u);
      sub_10000607C(v24);
    }
  }

  else
  {
    if (qword_100935DC0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10093FD20);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = sub_10000668C(v6, v7 | 0x8000000000000000, aBlock);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Registered notifyd notification {notificationName: %s}", v17, 0xCu);
      sub_10000607C(v18);
    }

    *(v3 + 36) = out_token;
  }

  return v3;
}

void sub_10028F9F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for REM_os_activity.Options();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_allocObject();
    *(v11 + 16) = a3 & 1;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10029039C;
    *(v12 + 24) = v11;
    aBlock[4] = sub_1000529DC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F160;
    aBlock[3] = &unk_1008EC848;
    v13 = _Block_copy(aBlock);
    sub_1000F5104(&unk_10094D920, &unk_1007B3300);
    v14 = *(v5 + 72);
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100791300;

    static REM_os_activity.Options.ifNonePresent.getter();
    v25 = v16;
    sub_1002903A8();
    sub_1000F5104(&unk_10094D930, &qword_10079EE00);
    sub_100290400();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    static REM_os_activity.initiate(_:dso:options:execute:)();
    _Block_release(v13);

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    if (qword_100935DC0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_10093FD20);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      if (a3)
      {
        v22 = 0xD000000000000032;
      }

      else
      {
        v22 = 0xD000000000000021;
      }

      if (a3)
      {
        v23 = "hangeNotification";
      }

      else
      {
        v23 = "store did change";
      }

      v24 = sub_10000668C(v22, v23 | 0x8000000000000000, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received notifyd notification after event stream was deallocated {name: %s}", v20, 0xCu);
      sub_10000607C(v21);
    }
  }
}

void sub_10028FDB4(char a1)
{
  if (qword_100935DC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093FD20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 0xD000000000000032;
    }

    else
    {
      v7 = 0xD000000000000021;
    }

    if (a1)
    {
      v8 = "hangeNotification";
    }

    else
    {
      v8 = "store did change";
    }

    v9 = sub_10000668C(v7, v8 | 0x8000000000000000, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received notifyd notification {name: %s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  sub_100290138();
}

uint64_t sub_10028FF34()
{
  v1 = v0;
  if (qword_100935DC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093FD20);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (*(v1 + 32))
    {
      v7 = 0xD000000000000032;
    }

    else
    {
      v7 = 0xD000000000000021;
    }

    if (*(v1 + 32))
    {
      v8 = "hangeNotification";
    }

    else
    {
      v8 = "store did change";
    }

    v9 = sub_10000668C(v7, v8 | 0x8000000000000000, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deallocating notifyd stream {notificationName: %s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  v10 = *(v1 + 36);
  if (v10 != -1)
  {
    notify_cancel(v10);
    *(v1 + 36) = -1;
  }

  sub_1000FDA80(*(v1 + 16), *(v1 + 24));
  return v1;
}

uint64_t sub_1002900E0()
{
  sub_10028FF34();

  return swift_deallocClassInstance();
}

void sub_100290138()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v1 + 24);

    v2(v5);

    sub_1000FDA80(v2, v3);
  }

  else
  {
    if (qword_100935DC0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10093FD20);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      if (*(v1 + 32))
      {
        v10 = 0xD000000000000032;
      }

      else
      {
        v10 = 0xD000000000000021;
      }

      if (*(v1 + 32))
      {
        v11 = "hangeNotification";
      }

      else
      {
        v11 = "store did change";
      }

      v12 = sub_10000668C(v10, v11 | 0x8000000000000000, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Dropped notification because we don't have an event handler {notificationName: %s}", v8, 0xCu);
      sub_10000607C(v9);
    }
  }
}

unint64_t sub_100290328()
{
  result = qword_10093FE20;
  if (!qword_10093FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FE20);
  }

  return result;
}

uint64_t sub_10029037C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1000FDA80(v3, v4);
}

unint64_t sub_1002903A8()
{
  result = qword_10093FE28;
  if (!qword_10093FE28)
  {
    type metadata accessor for REM_os_activity.Options();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FE28);
  }

  return result;
}

unint64_t sub_100290400()
{
  result = qword_10093FE30;
  if (!qword_10093FE30)
  {
    sub_1000F514C(&unk_10094D930, &qword_10079EE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FE30);
  }

  return result;
}

uint64_t sub_10029046C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093FE40);
  v1 = sub_100006654(v0, qword_10093FE40);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100290534(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (qword_100935DC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10093FE40);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "os_transaction INIT {name: com.apple.remindd.RDContactInteractionAlarmProducer.didReceiveContactEvent", v6, 2u);
  }

  os_transaction_create();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDContactInteractionAlarmProducer received contact event", v9, 2u);
  }

  sub_1002906BC(v2);
  sub_100293410();

  return swift_unknownObjectRelease();
}

void sub_1002906BC(unint64_t a1)
{
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v91 = *(v2 - 8);
  v92 = v2;
  v3 = *(v91 + 64);
  __chkstk_darwin(v2);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v80 - v14;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      v89 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v90 = v12;
      v94 = v11;
      v16 = Date.init()();
      __chkstk_darwin(v16);
      *(&v80 - 2) = v95;
      *(&v80 - 1) = v15;
      v93 = v15;

      v17 = sub_100759CB4(sub_1002934F8, &v80 - 4, a1);
      v18 = v17;
      v19 = v17 >> 62;
      if (v17 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_5:
          v20 = *sub_10000F61C((&v95->isa + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource), *(&v95[3].isa + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource));
          v21 = sub_1004121E4(a1);
          if (v21[2])
          {
            v88 = v19;
            v84 = v10;
            if (qword_100935DC8 != -1)
            {
              swift_once();
            }

            v22 = type metadata accessor for Logger();
            v23 = sub_100006654(v22, qword_10093FE40);

            v24 = v21;
            v25 = Logger.logObject.getter();
            v26 = static os_log_type_t.default.getter();
            v27 = os_log_type_enabled(v25, v26);
            v83 = v24;
            if (v27)
            {
              v28 = swift_slowAlloc();
              *v28 = 134217984;
              *(v28 + 4) = v24[2];

              _os_log_impl(&_mh_execute_header, v25, v26, "DataSource returned alarms for contact interaction. {count: %ld}", v28, 0xCu);
            }

            else
            {
            }

            v82 = v23;
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&_mh_execute_header, v38, v39, "os_transaction INIT {name: com.apple.remindd.RDContactInteractionAlarmProducer.contactStoreQuery}", v40, 2u);
            }

            v41 = os_transaction_create();
            v42 = *(&v95->isa + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_queue);
            v43 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
            v85 = "cer.contactStoreQuery";
            v86 = v43;
            v87 = v42;
            static DispatchQoS.unspecified.getter();
            v96[0] = _swiftEmptyArrayStorage;
            sub_100293518(&qword_100936EE0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
            v10 = sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
            sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*(v91 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v92);
            OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            v44 = type metadata accessor for REMContactsProvider();
            v45 = *(v44 + 48);
            v46 = *(v44 + 52);
            swift_allocObject();
            REMContactsProvider.init(contactStoreCreator:queue:backgroundQueue:)();
            if (v88)
            {
              v47 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v47 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v48 = _swiftEmptyArrayStorage;
            if (!v47)
            {
              goto LABEL_27;
            }

            v96[0] = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            if ((v47 & 0x8000000000000000) == 0)
            {
              v49 = 0;
              do
              {
                if ((v18 & 0xC000000000000001) != 0)
                {
                  v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v50 = *(v18 + 8 * v49 + 32);
                }

                v51 = v50;
                ++v49;
                REMContactsProvider.name(for:)();
                Promise.errorAsNil()();

                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v52 = *(v96[0] + 16);
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              while (v47 != v49);
              v48 = v96[0];
LABEL_27:

              v53 = Logger.logObject.getter();
              v54 = static os_log_type_t.default.getter();

              v55 = os_log_type_enabled(v53, v54);
              v81 = v41;
              if (v55)
              {
                v56 = swift_slowAlloc();
                v57 = swift_slowAlloc();
                v96[0] = v57;
                *v56 = 136315138;
                sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
                v58 = Array.description.getter();
                v60 = sub_10000668C(v58, v59, v96);

                *(v56 + 4) = v60;
                _os_log_impl(&_mh_execute_header, v53, v54, "Resolving contact names for newlySeenContactReps {newlySeenContactReps: %s}", v56, 0xCu);
                sub_10000607C(v57);
              }

              v61 = v84;
              sub_1000F5104(&qword_10093FEF0, &qword_10079EEC8);
              v96[0] = v48;
              sub_1000F5104(&qword_10093FEF8, qword_10079EED0);
              sub_10000CB48(&qword_10093FF00, &qword_10093FEF8, qword_10079EED0);
              static Promise.all<A>(_:)();

              v63 = v93;
              v62 = v94;
              v64 = v89;
              (*(v94 + 16))(v89, v93, v61);
              v65 = (*(v62 + 80) + 40) & ~*(v62 + 80);
              v66 = (v90 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
              v67 = swift_allocObject();
              v68 = v83;
              *(v67 + 2) = v18;
              *(v67 + 3) = v68;
              v69 = v95;
              *(v67 + 4) = v95;
              (*(v62 + 32))(&v67[v65], v64, v61);
              *&v67[v66] = v81;
              v70 = v69;
              swift_unknownObjectRetain();
              v71 = zalgo.getter();
              dispatch thunk of Promise.then<A>(on:closure:)();
              swift_unknownObjectRelease();

              (*(v62 + 8))(v63, v61);
              return;
            }

            __break(1u);
          }

          else
          {

            if (qword_100935DC8 == -1)
            {
LABEL_11:
              v29 = type metadata accessor for Logger();
              sub_100006654(v29, qword_10093FE40);

              v30 = Logger.logObject.getter();
              v31 = static os_log_type_t.default.getter();

              if (!os_log_type_enabled(v30, v31))
              {
LABEL_44:

                (*(v94 + 8))(v93, v10);
                return;
              }

              v32 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v96[0] = v33;
              *v32 = 136315138;
              sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
              v34 = Array.description.getter();
              v36 = sub_10000668C(v34, v35, v96);

              *(v32 + 4) = v36;
              v37 = "DataSource returned no alarms for contact interaction. Done {contacts: %s}";
LABEL_43:
              _os_log_impl(&_mh_execute_header, v30, v31, v37, v32, 0xCu);
              sub_10000607C(v33);

              goto LABEL_44;
            }
          }

          swift_once();
          goto LABEL_11;
        }
      }

      else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

      if (qword_100935DC8 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_100006654(v76, qword_10093FE40);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_44;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v96[0] = v33;
      *v32 = 136315138;
      sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
      v77 = Array.description.getter();
      v79 = sub_10000668C(v77, v78, v96);

      *(v32 + 4) = v79;
      v37 = "All contactReps interacted with are recently-checkedIn already. Not producing anything. {contactRepresentation: %s}";
      goto LABEL_43;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (qword_100935DC8 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_100006654(v72, qword_10093FE40);
  v95 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v95, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v95, v73, "didInteract.contacts is empty. Skipping", v74, 2u);
  }

  v75 = v95;
}

id sub_100291340()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken;
  if (notify_is_valid_token(*&v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken]))
  {
    notify_cancel(*&v0[v2]);
    *&v0[v2] = -1;
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL sub_100291494(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v18 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *sub_10000F61C((a2 + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_userInteractionSessionManager), *(a2 + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_userInteractionSessionManager + 24));
  sub_100453F50(v13, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
    return 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    Date.timeIntervalSince(_:)();
    v17 = v16;
    (*(v9 + 8))(v12, v8);
    return v17 >= 10800.0;
  }
}

id sub_100291678()
{
  v0 = objc_allocWithZone(CNContactStore);

  return [v0 init];
}

void sub_1002916B0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = *a1;
  v26[2] = a2;
  v26[3] = v7;
  v26[4] = a4;
  v26[5] = a5;
  v26[6] = a2;

  sub_10024D2B0(sub_100293610, v26, a3);
  v9 = v8;

  if (qword_100935DC8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093FE40);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = 0;
    v15 = 0;
    *v13 = 134218240;
    v16 = *(v9 + 16);
    while (2)
    {
      v17 = 40 * v15 + 65;
      do
      {
        if (v16 == v15)
        {
          *(v13 + 4) = v14;
          *(v13 + 12) = 2048;
          *(v13 + 14) = v16;
          v21 = v13;

          _os_log_impl(&_mh_execute_header, v11, v12, "Producing alarms for contact interaction {activeCount: %ld, totalCount: %ld}", v21, 0x16u);

          goto LABEL_14;
        }

        if (v15 >= v16)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_18;
        }

        v19 = *(v9 + v17);
        ++v15;
        v17 += 40;
      }

      while ((v19 & 1) != 0);
      v15 = v18;
      if (!__OFADD__(v14++, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
  }

LABEL_14:
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100292644(a4, v9, Strong);
  swift_unknownObjectRelease();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "os_transaction RELEASE {name: com.apple.remindd.RDContactInteractionAlarmProducer.contactStoreQuery}", v25, 2u);
  }
}

void sub_100291938(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  if (a2 >> 62)
  {
    goto LABEL_24;
  }

  v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v35 = v8;
  v38 = v7;
  if (v9)
  {
    v10 = 0;
    v7 = (a3 + 40);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v9 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v11 = *(a2 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = *(a3 + 16);
      if (v10 == v13)
      {

        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v15 = *(v7 - 1);
      v14 = *v7;

      v16 = [v38 contactHandles];
      if (v16)
      {
        v8 = v16;
        v17 = [v16 matchesContactRepresentation:v12];

        if (v17)
        {
          v29 = *sub_10000F61C((a4 + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_userInteractionSessionManager), *(a4 + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_userInteractionSessionManager + 24));
          v30 = v35;
          sub_100453970(v12, a5);

          v31 = 0;
          v32 = a6;
          *a6 = v38;
          a6[1] = v35;
          a6[2] = v15;
          a6[3] = v14;
          goto LABEL_21;
        }
      }

      ++v10;

      v7 += 2;
    }

    while (v9 != v10);
  }

  if (qword_100935DC8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10093FE40);
  v19 = v38;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v22 = 138412546;
    v25 = [v19 objectID];
    *(v22 + 4) = v25;
    *v23 = v25;
    *(v22 + 12) = 2080;
    sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
    v26 = Array.description.getter();
    v28 = sub_10000668C(v26, v27, &v39);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "dataSource returned alarms that don't match any input contactReps {reminderID: %@, newlySeenContactReps: %s}", v22, 0x16u);
    sub_1000050A4(v23, &unk_100938E70, &unk_100797230);

    sub_10000607C(v24);
  }

  v32 = a6;
  *a6 = v19;
  a6[1] = v35;
  v31 = 1;
  a6[2] = 0;
  a6[3] = 0;
LABEL_21:
  *(v32 + 32) = 3;
  *(v32 + 33) = v31;
  *(v32 + 34) = 0;
}

void sub_100291CD0(char a1)
{
  v2 = OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople;
  if (v1[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople] == (a1 & 1))
  {
    return;
  }

  v3 = v1;
  if (qword_100935DC8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10093FE40);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v1[v2];

    _os_log_impl(&_mh_execute_header, v7, v8, "shouldNotifyOfInteractionWithPeople value changed. Updating state {previousValue: %{BOOL}d, value: %{BOOL}d}", v9, 0xEu);
  }

  else
  {

    v7 = v6;
  }

  v10 = OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken;
  if (notify_is_valid_token(*(&v6->isa + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken)))
  {
    v11 = notify_set_state(*(&v6->isa + v10), v1[v2]);
    v12 = notify_post(_REMStoreShouldNotifyOfInteractionWithPeopleNotificationName);
    if (!(v11 | v12))
    {
      return;
    }

    v16 = v12;
    v17 = v6;
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(oslog, v18))
    {

      v20 = v17;
      goto LABEL_17;
    }

    v19 = swift_slowAlloc();
    *v19 = 67109632;
    *(v19 + 4) = v11;
    *(v19 + 8) = 1024;
    *(v19 + 10) = v16;
    *(v19 + 14) = 1024;
    *(v19 + 16) = v3[v2];

    _os_log_impl(&_mh_execute_header, oslog, v18, "Failed to update or post update to _REMStoreShouldNotifyOfInteractionWithPeopleNotificationName {notifySetStateStatus: %u,  notifyPostStatus: %u, value: %{BOOL}d}", v19, 0x14u);
  }

  else
  {
    v13 = v6;
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v14))
    {

      v20 = v13;
      goto LABEL_17;
    }

    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = *(&v6->isa + v10);
    *(v15 + 8) = 1024;
    *(v15 + 10) = v3[v2];

    _os_log_impl(&_mh_execute_header, oslog, v14, "shouldNotifyOfInteractionWithPeopleNotifyToken is invalid. Failed to update state {token: %d, value: %{BOOL}d}", v15, 0xEu);
  }

  v20 = oslog;
LABEL_17:
}

void sub_100292020()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    if (qword_100935DC8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10093FE40);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315138;
    v15 = [v10 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10000668C(v16, v18, &v26);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting people interaction alarm producer {producer: %s}", v13, 0xCu);
    sub_10000607C(v14);
  }

  v20 = *sub_10000F61C(&v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource], *&v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource + 24]);

  v22 = sub_100412154(v21);

  v23 = *(v22 + 16);

  v24 = v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople];
  v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople] = v23 != 0;
  sub_100291CD0(v24);
}

uint64_t sub_1002922DC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = &v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource];
    v11 = *sub_10000F61C(&v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource], *&v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource + 24]);

    v13 = sub_100412154(v12);

    v14 = *(v13 + 16);

    v15 = v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople];
    v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople] = v14 != 0;
    sub_100291CD0(v15);
    v16 = *sub_10000F61C(v10, v10[3]);

    v18 = sub_100412154(v17);

    v19 = *(v18 + 16);
    if (v19)
    {
      v31 = v0;
      v32 = _swiftEmptyArrayStorage;
      sub_100253968(0, v19, 0);
      v20 = v32;
      v30[1] = v18;
      v21 = (v18 + 40);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        v32 = v20;
        v25 = v20[2];
        v24 = v20[3];
        v26 = v22;
        v27 = v23;
        if (v25 >= v24 >> 1)
        {
          sub_100253968((v24 > 1), v25 + 1, 1);
          v20 = v32;
        }

        v20[2] = v25 + 1;
        v28 = &v20[5 * v25];
        v28[4] = v26;
        v28[5] = v23;
        v28[6] = 0;
        v28[7] = 0;
        *(v28 + 32) = 259;
        *(v28 + 66) = 0;
        v21 += 3;
        --v19;
      }

      while (v19);

      v0 = v31;
    }

    else
    {

      v20 = _swiftEmptyArrayStorage;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100292644(v0, v20, Strong);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002925EC(uint64_t a1, uint64_t a2)
{
  result = sub_100293518(&qword_10093FEB0, a2, type metadata accessor for RDContactInteractionAlarmProducer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100292644(void *a1, uint64_t a2, uint64_t a3)
{
  v30[3] = type metadata accessor for RDContactInteractionAlarmProducer();
  v30[4] = sub_100293518(&qword_10093FEB8, v6, type metadata accessor for RDContactInteractionAlarmProducer);
  v30[0] = a1;
  v7 = qword_100936828;
  v8 = a1;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100951780);
  sub_10000A87C(v30, v27);
  swift_bridgeObjectRetain_n();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315394;
    v14 = [*sub_10000F61C(v27 v28)];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    sub_10000607C(v27);
    v18 = sub_10000668C(v15, v17, &v26);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2048;
    v19 = *(a2 + 16);

    *(v12 + 14) = v19;

    _os_log_impl(&_mh_execute_header, v10, v11, "Producer did produce alarms {producer: %s, alarms.count: %ld}", v12, 0x16u);
    sub_10000607C(v13);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v27);
  }

  v20 = *(a3 + 24);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + 32;

    do
    {
      sub_10000A87C(v22, v27);
      v23 = v28;
      v24 = v29;
      sub_10000F61C(v27, v28);
      (*(v24 + 8))(a2, v30, v23, v24);
      sub_10000607C(v27);
      v22 += 40;
      --v21;
    }

    while (v21);
  }

  return sub_10000607C(v30);
}

uint64_t sub_1002928F8(void *a1, uint64_t a2, uint64_t a3)
{
  v29[3] = type metadata accessor for RDTimeAlarmProducer();
  v29[4] = sub_100293518(&qword_10093FEC0, 255, type metadata accessor for RDTimeAlarmProducer);
  v29[0] = a1;
  v6 = qword_100936828;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100951780);
  sub_10000A87C(v29, v26);
  swift_bridgeObjectRetain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315394;
    v13 = [*sub_10000F61C(v26 v27)];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10000607C(v26);
    v17 = sub_10000668C(v14, v16, &v25);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2048;
    v18 = *(a2 + 16);

    *(v11 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v9, v10, "Producer did produce alarms {producer: %s, alarms.count: %ld}", v11, 0x16u);
    sub_10000607C(v12);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v26);
  }

  v19 = *(a3 + 24);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 32;

    do
    {
      sub_10000A87C(v21, v26);
      v22 = v27;
      v23 = v28;
      sub_10000F61C(v26, v27);
      (*(v23 + 8))(a2, v29, v22, v23);
      sub_10000607C(v26);
      v21 += 40;
      --v20;
    }

    while (v20);
  }

  return sub_10000607C(v29);
}

uint64_t sub_100292BB4(void *a1, uint64_t a2, uint64_t a3)
{
  v29[3] = type metadata accessor for RDDueDateDeltaAlarmProducer();
  v29[4] = sub_100293518(&qword_10093FEC8, 255, type metadata accessor for RDDueDateDeltaAlarmProducer);
  v29[0] = a1;
  v6 = qword_100936828;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100951780);
  sub_10000A87C(v29, v26);
  swift_bridgeObjectRetain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315394;
    v13 = [*sub_10000F61C(v26 v27)];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10000607C(v26);
    v17 = sub_10000668C(v14, v16, &v25);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2048;
    v18 = *(a2 + 16);

    *(v11 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v9, v10, "Producer did produce alarms {producer: %s, alarms.count: %ld}", v11, 0x16u);
    sub_10000607C(v12);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v26);
  }

  v19 = *(a3 + 24);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 32;

    do
    {
      sub_10000A87C(v21, v26);
      v22 = v27;
      v23 = v28;
      sub_10000F61C(v26, v27);
      (*(v23 + 8))(a2, v29, v22, v23);
      sub_10000607C(v26);
      v21 += 40;
      --v20;
    }

    while (v20);
  }

  return sub_10000607C(v29);
}

uint64_t sub_100292E70(void *a1, uint64_t a2, uint64_t a3)
{
  v29[3] = type metadata accessor for RDVehicleAlarmProducer();
  v29[4] = sub_100293518(&qword_10093FED0, 255, type metadata accessor for RDVehicleAlarmProducer);
  v29[0] = a1;
  v6 = qword_100936828;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100951780);
  sub_10000A87C(v29, v26);
  swift_bridgeObjectRetain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315394;
    v13 = [*sub_10000F61C(v26 v27)];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10000607C(v26);
    v17 = sub_10000668C(v14, v16, &v25);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2048;
    v18 = *(a2 + 16);

    *(v11 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v9, v10, "Producer did produce alarms {producer: %s, alarms.count: %ld}", v11, 0x16u);
    sub_10000607C(v12);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v26);
  }

  v19 = *(a3 + 24);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 32;

    do
    {
      sub_10000A87C(v21, v26);
      v22 = v27;
      v23 = v28;
      sub_10000F61C(v26, v27);
      (*(v23 + 8))(a2, v29, v22, v23);
      sub_10000607C(v26);
      v21 += 40;
      --v20;
    }

    while (v20);
  }

  return sub_10000607C(v29);
}

uint64_t sub_10029312C(void *a1, uint64_t a2, uint64_t a3)
{
  v29[3] = type metadata accessor for RDLocationAlarmProducer();
  v29[4] = sub_100293518(&qword_10093FED8, 255, type metadata accessor for RDLocationAlarmProducer);
  v29[0] = a1;
  v6 = qword_100936828;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100951780);
  sub_10000A87C(v29, v26);
  swift_bridgeObjectRetain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315394;
    v13 = [*sub_10000F61C(v26 v27)];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10000607C(v26);
    v17 = sub_10000668C(v14, v16, &v25);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2048;
    v18 = *(a2 + 16);

    *(v11 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v9, v10, "Producer did produce alarms {producer: %s, alarms.count: %ld}", v11, 0x16u);
    sub_10000607C(v12);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v26);
  }

  v19 = *(a3 + 24);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 32;

    do
    {
      sub_10000A87C(v21, v26);
      v22 = v27;
      v23 = v28;
      sub_10000F61C(v26, v27);
      (*(v23 + 8))(a2, v29, v22, v23);
      sub_10000607C(v26);
      v21 += 40;
      --v20;
    }

    while (v20);
  }

  return sub_10000607C(v29);
}

void sub_100293410()
{
  if (qword_100935DC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10093FE40);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.RDContactInteractionAlarmProducer.didReceiveContactEvent", v2, 2u);
  }
}

uint64_t sub_100293518(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_100293560(uint64_t *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1002916B0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4);
}

void *sub_100293638(uint64_t a1)
{
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_100010D04(0, v2 & ~(v2 >> 63), 0);
    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v6 = -1 << *(a1 + 32);
      v4 = _HashTable.startBucket.getter();
      v5 = *(a1 + 36);
    }

    v35 = v4;
    v36 = v5;
    v37 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (v7 < v2)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_36;
        }

        v11 = v35;
        v10 = v36;
        v12 = v37;
        sub_100030F8C(v35, v36, v37, a1);
        v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v14)
        {
          goto LABEL_43;
        }

        v15 = v13;
        v16 = v14;
        v34 = &type metadata for String;

        *&v33 = v15;
        *(&v33 + 1) = v16;
        v17 = v32;
        v38 = v32;
        v19 = v32[2];
        v18 = v32[3];
        if (v19 >= v18 >> 1)
        {
          sub_100010D04((v18 > 1), v19 + 1, 1);
          v17 = v38;
        }

        v17[2] = v19 + 1;
        v32 = v17;
        sub_100005EE0(&v33, &v17[4 * v19 + 4]);
        if (v31)
        {
          if (!v12)
          {
            goto LABEL_41;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(&qword_10093FF08, qword_10079EF20);
          v8 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v8(&v33, 0);
          if (v7 == v2)
          {
LABEL_33:
            sub_100010E34(v35, v36, v37);
            return v32;
          }
        }

        else
        {
          if (v12)
          {
            goto LABEL_42;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v20 = 1 << *(a1 + 32);
          if (v11 >= v20)
          {
            goto LABEL_37;
          }

          v21 = v11 >> 6;
          v22 = *(a1 + 56 + 8 * (v11 >> 6));
          if (((v22 >> v11) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_39;
          }

          v23 = v22 & (-2 << (v11 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (a1 + 64 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_100010E34(v11, v10, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_32;
              }
            }

            sub_100010E34(v11, v10, 0);
          }

LABEL_32:
          v29 = *(a1 + 36);
          v35 = v20;
          v36 = v29;
          v37 = 0;
          if (v7 == v2)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v30._object = 0x80000001007EC120;
    v30._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v30);
    sub_1000F5104(&qword_100943980, &unk_10079EF10);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100293A54@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 accountID];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_100293AF8(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10018E470(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setAccountID:isa];
}

uint64_t sub_100293C24()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  result = swift_getKeyPath();
  *(v0 + 32) = result;
  qword_100974D10 = v0;
  return result;
}

unint64_t sub_100293C88()
{
  result = qword_10093F430;
  if (!qword_10093F430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093F430);
  }

  return result;
}

uint64_t sub_100293CE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v41 = a2;
  v43 = a3;
  v39 = a4;
  v5 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for REMRemindersListDataView.Diff();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  v42 = a1;
  v24 = v44;
  result = sub_100294100(a1);
  if (!v24)
  {
    v33 = v20;
    v34 = v17;
    v35 = v12;
    v36 = v15;
    v37 = v16;
    v44 = result;
    v26 = [v40 fetchResultTokenToDiffAgainst];
    v27 = v23;
    sub_100534D44(v26, v23);

    v43 = 0;
    v28 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
    v29 = v36;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v30 = v38;
    (*(v38 + 16))(v35, v29, v9);
    v31 = v34;
    (*(v34 + 16))(v33, v27, v37);
    sub_10029443C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel);
    sub_10029443C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v30 + 8))(v29, v9);
    return (*(v31 + 8))(v27, v37);
  }

  return result;
}

uint64_t sub_1002940A8(uint64_t a1)
{
  result = sub_10029443C(&unk_10093FF30, &type metadata accessor for REMRemindersListDataView.DEBUG_PhantomRemindersInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100294100(uint64_t a1)
{
  v24 = a1;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v1 = *(Subtasks - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(Subtasks);
  v4 = &Subtasks - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &Subtasks - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9UtilitiesO12SortingStyleOMa();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &Subtasks - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s10PredicatesOMa(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &Subtasks - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v18 = sub_100043AA8();
  sub_1001A4F3C(v17, _s10PredicatesOMa);
  v19 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v20 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v20 - 8) + 104))(v13, v19, v20);
  v21 = Subtasks;
  swift_storeEnumTagMultiPayload();
  (*(v6 + 104))(v9, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v5);
  (*(v1 + 104))(v4, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), v21);
  v25 = sub_100536D54(v24, v18, v13, v9, v4, _swiftEmptyArrayStorage, 0);

  (*(v1 + 8))(v4, v21);
  (*(v6 + 8))(v9, v5);
  sub_1001A4F3C(v13, _s9UtilitiesO12SortingStyleOMa);
  return v25;
}

uint64_t sub_10029443C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100294484()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093FF40);
  v1 = sub_100006654(v0, qword_10093FF40);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10029454C(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = *a2;
  if (qword_100935DD8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093FF40);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v11, v12, "RDFirstUnlockManager: Received hasUnlockedSinceBoot published value {hasUnlockedSinceBoot: %{BOOL}d}", v13, 8u);
  }

  sub_10000F61C(a3, a3[3]);
  type metadata accessor for _MobileKeybagStateProvider();
  v14 = sub_1003478A4();
  if (v9 != (v14 & 1))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109376;
      *(v17 + 4) = v14 & 1;
      *(v17 + 8) = 1024;
      *(v17 + 10) = v9;
    }
  }

  if (v14)
  {
    if (*(a1 + 24))
    {
      v18 = *(a1 + 24);

      AnyCancellable.cancel()();

      v19 = *(a1 + 24);
    }

    *(a1 + 24) = 0;

    if (!*(a4 + 24))
    {
      if (qword_100935FC8 != -1)
      {
        swift_once();
      }

      v26 = xmmword_10079EFA0;
      v28 = 0;
      v29[0] = 0;
      v27 = 0;
      *(v29 + 6) = 0;
      sub_1000081D8(&v26, 0x6E755F7473726966, 0xEC0000006B636F6CLL);
    }

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "RDFirstUnlockManager: Received first unlock event. Executing unlockHandler.", v24, 2u);
    }

    a5(1);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
    }
  }
}

uint64_t sub_100294910()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100294974(uint64_t a1, char *a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  a3(a1, &v8);
  v7 = *(a5 + 48);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_100294A20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = a3;
  v76 = a1;
  v12 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v70 = &v62 - v14;
  v69 = sub_1000F5104(&qword_100940038, &qword_10079EFE0);
  v68 = *(v69 - 8);
  v15 = *(v68 + 64);
  __chkstk_darwin(v69);
  v17 = &v62 - v16;
  v18 = sub_1000F5104(&qword_100940040, &unk_10079EFE8);
  v73 = *(v18 - 8);
  v74 = v18;
  v19 = *(v73 + 64);
  __chkstk_darwin(v18);
  v72 = &v62 - v20;
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v21 - 8);
  v22 = *(v67 + 8);
  __chkstk_darwin(v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v65 = *(v66 - 8);
  v25 = *(v65 + 64);
  __chkstk_darwin(v66);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v63 = a4;
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  type metadata accessor for RDKeybagStateProviderFactory();
  swift_unknownObjectRetain();
  v64 = a5;

  v71 = a2;
  sub_10034672C(a2, v84);
  sub_10000F61C(v84, v85);
  v29 = type metadata accessor for _MobileKeybagStateProvider();
  if (sub_1003478A4())
  {
    if (qword_100935DD8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_10093FF40);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "RDFirstUnlockManager: Device is in after first unlock state in the 1st check. Executing unlockHandler.", v33, 2u);
    }

    v34 = swift_allocObject();
    *(v34 + 16) = sub_100295558;
    *(v34 + 24) = v28;
    v80 = sub_100295658;
    v81 = v34;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v78 = sub_100019200;
    v79 = &unk_1008EC9B0;
    v35 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&v82[0] = _swiftEmptyArrayStorage;
    sub_100295684(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);
    (*(v67 + 1))(v24, v21);
    (*(v65 + 8))(v27, v66);

LABEL_18:
    v60 = 2;
    goto LABEL_19;
  }

  if (qword_100935DD8 != -1)
  {
    swift_once();
  }

  v67 = sub_1003478A4;
  v36 = type metadata accessor for Logger();
  v66 = sub_100006654(v36, qword_10093FF40);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "RDFirstUnlockManager: Device is in before first unlock state in the 1st check. Registering with RDKeybagStateProvider.hasUnlockedSinceBootPublisher.", v39, 2u);
  }

  v40 = v75;
  v41 = *(v75 + 16);
  sub_10000F61C(v84, v85);
  *&aBlock = sub_100347814();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = 1;

  sub_1000F5104(&qword_100940048, &qword_10079EFF8);
  sub_10000CB48(&unk_100940050, &qword_100940048, &qword_10079EFF8);
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  *&aBlock = v76;
  v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v44 = v70;
  (*(*(v43 - 8) + 56))(v70, 1, 1, v43);
  sub_100007F54();
  sub_10000CB48(&qword_100940060, &qword_100940038, &qword_10079EFE0);
  sub_100295684(&qword_10093CD40, sub_100007F54);
  v45 = v72;
  v76 = v29;
  v46 = v69;
  Publisher.receive<A>(on:options:)();
  sub_100295564(v44);
  v47 = v40;
  (*(v68 + 8))(v17, v46);
  sub_10000A87C(v84, &aBlock);
  sub_1002955CC(v71, v82);
  v48 = swift_allocObject();
  sub_100054B6C(&aBlock, v48 + 16);
  v49 = v82[1];
  *(v48 + 56) = v82[0];
  *(v48 + 72) = v49;
  *(v48 + 88) = v83;
  *(v48 + 96) = sub_100295558;
  *(v48 + 104) = v28;
  v50 = swift_allocObject();
  v50[2] = sub_10029563C;
  v50[3] = v48;
  v50[4] = v41;
  type metadata accessor for RDFirstUnlockManager();
  sub_10000CB48(&qword_100940068, &qword_100940040, &unk_10079EFE8);

  v51 = v74;
  v52 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v73 + 8))(v45, v51);
  v53 = *(v47 + 24);
  *(v47 + 24) = v52;

  v54 = *sub_10000F61C(v84, v85);
  sub_10034739C();
  sub_10000F61C(v84, v85);
  if ((v67)(v76))
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "RDFirstUnlockManager: Device has transitioned to after first unlock state in the 2nd check. Executing unlockHandler and ignoring notifications.", v57, 2u);
    }

    if (*(v47 + 24))
    {
      v58 = *(v47 + 24);

      AnyCancellable.cancel()();

      v59 = *(v47 + 24);
    }

    *(v47 + 24) = 0;

    sub_1000FBC64(1, v63);
    goto LABEL_18;
  }

  v60 = 0;
LABEL_19:
  sub_10000607C(v84);

  return v60;
}

uint64_t sub_100295564(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002955CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100936E80, qword_10079F000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100295658()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(2);
}

uint64_t sub_100295684(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002956CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940070);
  v1 = sub_100006654(v0, qword_100940070);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100295794(void *a1)
{
  v68 = a1;
  v2 = *v1;
  v3 = type metadata accessor for Date();
  v67 = *(v3 - 8);
  v4 = v67[8];
  __chkstk_darwin(v3);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v59 - v7;
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  if (qword_100935DE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100940070);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v65 = v8;
  v63 = v2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v70[0] = v17;
    *v16 = 136315138;
    *&v71 = v2;
    swift_getMetatypeMetadata();
    v18 = String.init<A>(describing:)();
    v20 = v3;
    v21 = sub_10000668C(v18, v19, v70);

    *(v16 + 4) = v21;
    v3 = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: Start execution", v16, 0xCu);
    sub_10000607C(v17);
  }

  Date.init()();
  type metadata accessor for REMCDPublicTemplate();
  v22 = [swift_getObjCClassFromMetadata() fetchRequest];
  v23 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v22];
  [v23 setResultType:1];
  v69 = 0;
  v24 = [v68 executeRequest:v23 error:&v69];
  v25 = v69;
  if (v24)
  {
    v26 = v24;
    *(&v72 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
    *&v71 = v26;
    sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
    v27 = v25;
    v28 = v66;
    throwingCast<A>(_:as:failureMessage:)();
    if (v28)
    {

      (v67[1])(v11, v3);
      return sub_10000607C(&v71);
    }

    else
    {
      sub_10000607C(&v71);
      v31 = v70[0];
      if ([v70[0] result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(v70, &v71);
      }

      else
      {
        v71 = 0u;
        v72 = 0u;
      }

      v32 = sub_1000F5104(&qword_100937028, &qword_100791C10);
      throwingCast<A>(_:as:failureMessage:)();
      v62 = v31;
      sub_1000050A4(&v71, &qword_100939ED0, &qword_100791B10);
      v33 = v69;
      v61 = objc_opt_self();
      sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *&v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v71 + 1) = v35;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = v32;
      v60 = v33;
      *(inited + 72) = v33;

      sub_10038ED74(inited);
      v66 = v3;
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1007953F0;
      v38 = v68;
      *(v37 + 32) = v68;
      sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
      v39 = v38;
      v40 = Array._bridgeToObjectiveC()().super.isa;
      v41 = v60;

      [v61 mergeChangesFromRemoteContextSave:isa intoContexts:v40];

      v42 = v66;
      v43 = v67;
      v44 = v65;
      (v67[2])(v65, v11, v66);

      v45 = Logger.logObject.getter();
      LODWORD(v68) = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v68))
      {
        v61 = v45;
        v46 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v70[0] = v59;
        *v46 = 136315650;
        *&v71 = v63;
        swift_getMetatypeMetadata();
        v47 = String.init<A>(describing:)();
        v49 = sub_10000668C(v47, v48, v70);

        *(v46 + 4) = v49;
        *(v46 + 12) = 2048;
        if (v41 >> 62)
        {
          v50 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v50 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v46 + 14) = v50;

        *(v46 + 22) = 2048;
        v51 = v64;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v53 = v52;
        v54 = v67[1];
        v67 = v54;
        v55 = v51;
        v56 = v66;
        (v54)(v55, v66);
        (v54)(v44, v56);
        *(v46 + 24) = v53;
        v57 = v61;
        _os_log_impl(&_mh_execute_header, v61, v68, "%s: Finished execution {deletionCount: %ld, elapsedSeconds: %f}", v46, 0x20u);
        sub_10000607C(v59);

        return (v67)(v11, v56);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v58 = v43[1];
        v58(v44, v42);
        return (v58)(v11, v42);
      }
    }
  }

  else
  {
    v30 = v69;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (v67[1])(v11, v3);
  }
}

uint64_t sub_1002960BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10029613C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940140);
  v1 = sub_100006654(v0, qword_100940140);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10029621C()
{
  sub_1002962C4();

  sub_1000536E0(v0 + 32);
  sub_10000607C((v0 + 48));
  sub_10000607C((v0 + 88));

  sub_1000536E0(v0 + 136);
  v1 = *(v0 + 152);

  v2 = *(v0 + 160);
  swift_unknownObjectRelease();
  sub_10000CC4C(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208) | (*(v0 + 212) << 32));
  v3 = *(v0 + 224);

  sub_10000607C((v0 + 232));
  sub_1000050A4(v0 + 272, &unk_100940320, qword_10079F2F0);
  return v0;
}

void sub_1002962C4()
{
  if (*(v0 + 152))
  {
    *(v0 + 152) = 0;

    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_100940140);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "RDICCloudExtraneousAlarmsCollector: stopped.", v3, 2u);
    }
  }
}

uint64_t sub_1002963CC()
{
  sub_10029621C();

  return swift_deallocClassInstance();
}

void sub_100296400()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v100 = *(v0 - 8);
  v101 = v0;
  v1 = *(v100 + 64);
  __chkstk_darwin(v0);
  v99 = v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v102 = (v80 - v5);
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  __chkstk_darwin(v6);
  v94 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v97 = *(v9 - 8);
  v10 = *(v97 + 64);
  __chkstk_darwin(v9);
  v12 = v80 - v11;
  v13 = sub_1000F5104(&qword_100940378, &qword_10079FBF0);
  v98 = *(v13 - 8);
  v14 = *(v98 + 64);
  __chkstk_darwin(v13);
  v16 = v80 - v15;
  v17 = sub_1000F5104(&qword_100940380, &qword_10079FBF8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v80 - v20;
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  if (!v103[19])
  {
    v81 = v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v82 = v31;
    v83 = v26;
    v84 = v29;
    v85 = v23;
    v86 = v22;
    v88 = v12;
    v87 = v9;
    v89 = v16;
    v90 = v13;
    v91 = v21;
    v92 = v18;
    v93 = v17;
    v32 = v103;
    swift_beginAccess();
    v33 = v32[14];
    v34 = v32[15];
    sub_10000F61C(v32 + 11, v33);
    v35 = (*(v34 + 8))(v33, v34);
    swift_endAccess();
    v36 = v102;
    if ((v35 & 1) == 0)
    {
      if (qword_100935DE8 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_100940140);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v86;
      v42 = v85;
      if (v40)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "os_transaction INIT {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.runHandlerOnInit}", v43, 2u);
      }

      v44 = os_transaction_create();
      v80[1] = v32[3];
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      *(v46 + 24) = v44;
      aBlock[4] = sub_10029EB3C;
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008ECB68;
      v47 = _Block_copy(aBlock);

      v80[2] = v44;
      swift_unknownObjectRetain();
      v48 = v81;
      static DispatchQoS.unspecified.getter();
      v104 = _swiftEmptyArrayStorage;
      sub_100054604(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
      v49 = v83;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v47);
      (*(v42 + 8))(v49, v41);
      (*(v82 + 8))(v48, v84);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v50 = v32[18];
        ObjectType = swift_getObjectType();
        (*(v50 + 16))(ObjectType, v50);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      v36 = v102;
    }

    sub_10029E464(0x20000000000001uLL);
    v52 = v32[9];
    v53 = v32[10];
    sub_10000F61C(v32 + 6, v52);
    (*(v53 + 16))(v52, v53);
    v54 = v32[16];
    if (qword_100935DF0 != -1)
    {
      swift_once();
    }

    v55 = v94;
    NSNotificationCenter.publisher(for:object:)();
    aBlock[0] = v32[3];
    v56 = aBlock[0];
    v57 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v102 = *(*(v57 - 8) + 56);
    v102(v36, 1, 1, v57);
    v86 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    sub_100054604(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher);
    sub_100006CA4();
    v58 = v56;
    v59 = v88;
    v60 = v96;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v36, &qword_100939980, &unk_10079ADA0);
    (*(v95 + 8))(v55, v60);
    swift_allocObject();
    swift_weakInit();
    sub_10000CB48(&qword_100936F10, &unk_100936ED0, &unk_100791AF0);
    v61 = v89;
    v62 = v87;
    Publisher.filter(_:)();

    (*(v97 + 8))(v59, v62);
    v63 = v99;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    aBlock[0] = v58;
    v102(v36, 1, 1, v57);
    sub_10000CB48(&qword_100940388, &qword_100940378, &qword_10079FBF0);
    v64 = v91;
    v65 = v90;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_1000050A4(v36, &qword_100939980, &unk_10079ADA0);

    (*(v100 + 8))(v63, v101);
    v66 = v103;
    (*(v98 + 8))(v61, v65);
    swift_allocObject();
    swift_weakInit();
    sub_10000CB48(&qword_100940390, &qword_100940380, &qword_10079FBF8);
    v67 = v93;
    v68 = Publisher<>.sink(receiveValue:)();

    (*(v92 + 8))(v64, v67);
    v69 = v66[19];
    v66[19] = v68;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v70 = v66[18];
      v71 = swift_getObjectType();
      (*(v70 + 8))(v71, v70);
      swift_unknownObjectRelease();
    }

    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_100006654(v72, qword_100940140);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v75 = 136315138;
      v77 = Double.description.getter();
      v79 = sub_10000668C(v77, v78, aBlock);

      *(v75 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v73, v74, "RDICCloudExtraneousAlarmsCollector: started, subscribed to DidMarkExtraneousAlarmsPendingToSyncUpDelete {debounceInterval(randomized): %s}", v75, 0xCu);
      sub_10000607C(v76);
    }
  }
}

void sub_100297134()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100297248();
  }

  if (qword_100935DE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100940140);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "os_transaction RELEASE {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.runHandlerOnInit}", v3, 2u);
  }
}

uint64_t sub_100297248()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  __chkstk_darwin(v5);
  v9 = v28 - v8 + 56;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 56);
  v15 = *(v1 + 24);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v28[3] = v2;
    v28[4] = &off_1008ECA90;
    v28[0] = v1;

    sub_1006E3F2C(v28);
    return sub_10000607C(v28);
  }

  else
  {
    __break(1u);
    swift_once();
    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_100940140);
    sub_100010364(v9, v7, &unk_100938850, qword_100795AE0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136446210;
      v22 = Optional.descriptionOrNil.getter();
      v24 = v23;
      sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
      v25 = sub_10000668C(v22, v24, v28);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "RDICCloudExtraneousAlarmsCollector THROTTLED, skipping {lastExecuted: %{public}s}", v20, 0xCu);
      sub_10000607C(v21);
    }

    else
    {

      sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
    }

    return sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
  }
}

uint64_t sub_10029779C()
{
  v0 = Notification.userInfo.getter();
  if (v0)
  {
    v1 = v0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_10001B0D8(v11), (v3 & 1) != 0))
    {
      sub_100005EF0(*(v1 + 56) + 32 * v2, v12);
      sub_10001B2CC(v11);

      if (swift_dynamicCast())
      {
        v4._object = 0x800000010079F130;
        v4._countAndFlagsBits = 0xD000000000000022;
        v5 = String.hasPrefix(_:)(v4);

        if (v5)
        {
          if (qword_100935DE8 != -1)
          {
            swift_once();
          }

          v6 = type metadata accessor for Logger();
          sub_100006654(v6, qword_100940140);
          v7 = Logger.logObject.getter();
          v8 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v7, v8))
          {
            v9 = swift_slowAlloc();
            *v9 = 0;
            _os_log_impl(&_mh_execute_header, v7, v8, "RDICCloudExtraneousAlarmsCollector: Should not be producing DidMarkExtraneousAlarmsPendingToSyncUpDelete notification from transactions of RDICCloudExtraneousAlarmsCollector", v9, 2u);
          }

          return 0;
        }
      }
    }

    else
    {

      sub_10001B2CC(v11);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1002979D0(0);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100297B14();
  }

  return 1;
}

void sub_1002979D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  sub_10000C9DC(v1 + 88, v3);
  (*(v4 + 16))(a1, v3, v4);
  swift_endAccess();
  if (qword_100935DE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100940140);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
  }
}

uint64_t sub_100297B14()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[3];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  v9 = v1[14];
  v10 = v1[15];
  sub_10000F61C(v1 + 11, v9);
  v11 = (*(v10 + 8))(v9, v10);
  result = swift_endAccess();
  if ((v11 & 1) != 0 || v1[20])
  {
    return result;
  }

  if (qword_100935DE8 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100940140);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "os_transaction INIT {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.handleEvent}", v16, 2u);
  }

  v17 = os_transaction_create();
  v18 = v1[20];
  v1[20] = v17;
  swift_unknownObjectRelease();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = v1[18];
    ObjectType = swift_getObjectType();
    (*(v19 + 24))(ObjectType, v19);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100297D88()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100297248();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100297E10();
  }

  return result;
}

uint64_t sub_100297E10()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[3];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  result = v1[20];
  if (!result)
  {
    return result;
  }

  v1[20] = 0;
  swift_unknownObjectRelease();
  if (qword_100935DE8 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100940140);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "os_transaction RELEASE {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.handleEvent}", v13, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = v1[18];
    ObjectType = swift_getObjectType();
    (*(v14 + 32))(ObjectType, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100298018()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[3];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    swift_beginAccess();
    v11 = v1[14];
    v12 = v1[15];
    sub_10000F61C(v1 + 11, v11);
    v13 = (*(v12 + 8))(v11, v12);
    result = swift_endAccess();
    if ((v13 & 1) == 0)
    {
      v14 = sub_1002982C4();
      if (*(v14 + 16))
      {
        sub_1002985A8();
        type metadata accessor for Analytics();
        if (static Analytics.isEventUsed(_:)())
        {
          sub_1000F5104(&unk_100939240, &unk_100798990);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100791300;
          *(inited + 32) = 0x746E756F63;
          *(inited + 40) = 0xE500000000000000;
          v16 = *(v14 + 16);
          *(inited + 48) = Int._bridgeToObjectiveC()();
          sub_10038D880(inited);
          swift_setDeallocating();
          sub_1000050A4(inited + 32, &unk_100939250, &unk_100795D30);
          static Analytics.postEvent(_:payload:duration:)();
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = v1[18];
        ObjectType = swift_getObjectType();
        (*(v17 + 40))(v14, ObjectType, v17);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002982C4()
{
  v1 = v0;
  v13 = 0;
  v2 = *(v0 + 16);
  v3 = cloudKitAccountTypes();
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1001A61BC(v4);

  sub_1003950D0(v5);

  isa = Set._bridgeToObjectiveC()().super.isa;

  v7 = [v2 storesForAccountTypes:isa];

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = *(v1 + 184);
  v14 = *(v1 + 168);
  v15[0] = v9;
  *(v15 + 14) = *(v1 + 198);
  v12[2] = v1;
  v12[3] = v8;
  v12[4] = &v13;
  v10 = sub_100400578(&v14, sub_10029E59C, v12);

  if (v13 == 1)
  {
    sub_1002979D0(1);
  }

  return v10;
}

void sub_1002985A8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  isa = v3[8].isa;
  __chkstk_darwin(v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v29 = v8;
    v30 = v7;
    v31 = v3;
    v14 = v1[5];
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100940140);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction INIT {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.syncUp}", v18, 2u);
    }

    v19 = os_transaction_create();
    v28[1] = v1[3];
    v20 = swift_allocObject();
    v20[2] = v13;
    v20[3] = v14;
    v20[4] = v19;
    aBlock[4] = sub_10029E4F0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008ECAF0;
    v21 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_100054604(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    v28[0] = v13;
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (v31[1].isa)(v6, v2);
    (*(v29 + 8))(v11, v30);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = v1[18];
      ObjectType = swift_getObjectType();
      (*(v22 + 48))(ObjectType, v22);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100940140);
    v31 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v31, v25, "RDICCloudExtraneousAlarmsCollector: Unexpected nil RDICCloudExtraneousAlarmsSyncPerformer (ICCloudContext), bailing out from syncUp()", v26, 2u);
    }

    v27 = v31;
  }
}

void sub_100298A90(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X3>, NSObject *a5@<X8>)
{
  v11 = a2[9];
  v12 = a2[10];
  sub_10000F61C(a2 + 6, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_55;
  }

  v14 = sub_10029E5BC(v13 + 1);
  if (v5)
  {
    return;
  }

  a3 = v14;
  v6 = v14 >> 62;
  if (v14 >> 62)
  {
LABEL_55:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
LABEL_5:
    v51 = a4;
    p_isa = &a5->isa;
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_100940140);

    a5 = Logger.logObject.getter();
    a4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a5, a4))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      if (v6)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v18 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v17 + 4) = v18;

      *(v17 + 12) = 2048;
      *(v17 + 14) = v13;
      _os_log_impl(&_mh_execute_header, a5, a4, "RDICCloudExtraneousAlarmsCollector: fetched extraneous alarm triggers {triggers.count: %ld, deleteLimit: %ld}", v17, 0x16u);
    }

    else
    {
    }

    v54 = _swiftEmptyArrayStorage;
    if (v13 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v15 >= v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = v15;
      }

      if (v15 < 0)
      {
        v19 = v13;
      }

      if (v13)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v6)
      {
        if (_CocoaArrayWrapper.endIndex.getter() < 0)
        {
          __break(1u);
        }

        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v21 >= v20)
      {
        if ((a3 & 0xC000000000000001) != 0 && v20)
        {
          sub_1000060C8(0, &unk_100940330, off_1008D4148);

          v22 = 0;
          do
          {
            v23 = v22 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v22);
            v22 = v23;
          }

          while (v20 != v23);
          if (!v6)
          {
            goto LABEL_32;
          }
        }

        else
        {

          if (!v6)
          {
LABEL_32:
            v24 = 0;
            v25 = (a3 & 0xFFFFFFFFFFFFFF8) + 32;
            v26 = (2 * v20) | 1;
            goto LABEL_35;
          }
        }

        _CocoaArrayWrapper.subscript.getter();
        v25 = v27;
        v24 = v28;
        v26 = v29;
LABEL_35:
        sub_10029E4FC(v25, v24, v26, &v54);
        swift_unknownObjectRelease();
        v30 = v54;
        if (v54[2])
        {
          v53 = 0;
          if (![a1 save:&v53])
          {
            v46 = v53;

            _convertNSErrorToError(_:)();

            swift_willThrow();

            return;
          }

          v31 = v53;
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v32, v33))
          {
LABEL_42:

            if (v6)
            {
              if (v13 >= _CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_44;
              }
            }

            else if (v13 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_44:

              *v51 = 1;
LABEL_53:
              *p_isa = v30;
              return;
            }

            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              *v44 = 134218240;
              if (v6)
              {
                v45 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v45 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v44 + 4) = v45;

              *(v44 + 12) = 2048;
              *(v44 + 14) = v13;
              _os_log_impl(&_mh_execute_header, v42, v43, "RDICCloudExtraneousAlarmsCollector: leaving noOutstandingExtraneousItems=false because fetched triggers.count=%ld > deleteLimit=%ld", v44, 0x16u);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            goto LABEL_53;
          }

          v34 = swift_slowAlloc();
          *v34 = 134217984;
          *(v34 + 4) = *(v30 + 16);
          v35 = "RDICCloudExtraneousAlarmsCollector: applied and saved REMCDObjectDirtyFlagsNeedDelete dirty flags to %ld alarm and triggers.";
          v36 = v33;
          v37 = v32;
          v38 = v34;
          v39 = 12;
        }

        else
        {
          v32 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v32, v40))
          {
            goto LABEL_42;
          }

          v41 = swift_slowAlloc();
          *v41 = 0;
          v35 = "RDICCloudExtraneousAlarmsCollector: none of the fetched alarm triggers should apply REMCDObjectDirtyFlagsNeedDelete.";
          v36 = v40;
          v37 = v32;
          v38 = v41;
          v39 = 2;
        }

        _os_log_impl(&_mh_execute_header, v37, v36, v35, v38, v39);

        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

LABEL_56:

  if (qword_100935DE8 != -1)
  {
LABEL_63:
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100006654(v47, qword_100940140);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "RDICCloudExtraneousAlarmsCollector: fetched 0 extraneous alarm triggers.", v50, 2u);
  }

  *a4 = 1;
  a5->isa = _swiftEmptyArrayStorage;
}

void sub_1002990FC(void **a1, size_t *a2)
{
  v88 = a2;
  v87 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(*(v87 - 1) + 64);
  __chkstk_darwin(v87);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v82 - v8;
  v10 = type metadata accessor for UUID();
  v89 = *(v10 - 8);
  v11 = *(v89 + 64);
  __chkstk_darwin(v10);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v82 - v15;
  __chkstk_darwin(v17);
  v19 = &v82 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v82 - v22;
  v24 = *a1;
  if (![v24 isTemporal])
  {
    return;
  }

  v86 = v10;
  v25 = [v24 alarm];
  if (!v25)
  {
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_100940140);
    v49 = v24;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v90 = v53;
      *v52 = 136315138;
      v54 = [v49 remObjectID];
      if (v54)
      {
        v55 = v54;
        v56 = [v54 description];

        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;
      }

      else
      {
        v59 = 0xE300000000000000;
        v57 = 7104878;
      }

      v80 = sub_10000668C(v57, v59, &v90);

      *(v52 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v50, v51, "RDICCloudExtraneousAlarmsCollector: fetched an extraneous trigger without an alarm, skipping {triggerID: %s}", v52, 0xCu);
      sub_10000607C(v53);

      return;
    }

LABEL_30:

    return;
  }

  v26 = v25;
  v27 = [v24 identifier];
  v85 = v2;
  if (!v27)
  {
LABEL_20:
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_100940140);
    v61 = v24;
    v62 = v26;
    v50 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v63))
    {
      LODWORD(v88) = v63;
      v64 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v90 = v84;
      *v64 = 136315394;
      v65 = [v61 identifier];
      if (v65)
      {
        v66 = v65;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v67 = 0;
      }

      else
      {
        v67 = 1;
      }

      v68 = *(v89 + 56);
      v69 = 1;
      v89 += 56;
      v68(v9, v67, 1, v86);
      v70 = Optional.descriptionOrNil.getter();
      v72 = v71;
      sub_1000050A4(v9, &unk_100939D90, "8\n\r");
      v73 = sub_10000668C(v70, v72, &v90);

      *(v64 + 4) = v73;
      *(v64 + 12) = 2080;
      v74 = [v62 identifier];
      if (v74)
      {
        v75 = v74;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = 0;
      }

      v68(v6, v69, 1, v86);
      v76 = Optional.descriptionOrNil.getter();
      v78 = v77;
      sub_1000050A4(v6, &unk_100939D90, "8\n\r");
      v79 = sub_10000668C(v76, v78, &v90);

      *(v64 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v50, v88, "RDICCloudExtraneousAlarmsCollector: fetched an extraneous trigger/alarm without identifier, skipping {triggerID: %s, alarmID: %s}", v64, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_30;
  }

  v28 = v27;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = [v26 identifier];
  if (!v29)
  {
    (*(v89 + 8))(v23, v86);
    goto LABEL_20;
  }

  v30 = v29;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  [v24 setShouldSyncUpDeleteIfNeeded];
  v83 = *(v89 + 16);
  v83(v16, v23, v86);
  v31 = v88;
  v32 = *v88;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_100366328(0, v32[2] + 1, 1, v32);
    *v88 = v32;
  }

  v35 = v32[2];
  v34 = v32[3];
  if (v35 >= v34 >> 1)
  {
    v32 = sub_100366328(v34 > 1, v35 + 1, 1, v32);
    *v88 = v32;
  }

  v32[2] = v35 + 1;
  v36 = *(v89 + 32);
  v84 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v82 = *(v89 + 72);
  v37 = v16;
  v38 = v86;
  v87 = v36;
  v36(v32 + v84 + v82 * v35, v37, v86);
  [v26 setShouldSyncUpDeleteIfNeeded];
  v83(v13, v19, v38);
  v39 = v88;
  v40 = *v88;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  *v39 = v40;
  if ((v41 & 1) == 0)
  {
    v40 = sub_100366328(0, v40[2] + 1, 1, v40);
    *v88 = v40;
  }

  v43 = v40[2];
  v42 = v40[3];
  if (v43 >= v42 >> 1)
  {
    v81 = sub_100366328(v42 > 1, v43 + 1, 1, v40);
    *v88 = v81;
  }

  v44 = *(v89 + 8);
  v45 = v19;
  v46 = v86;
  v44(v45, v86);
  v44(v23, v46);
  v47 = *v88;
  *(v47 + 16) = v43 + 1;
  v87(v47 + v84 + v43 * v82, v13, v46);
}

void sub_100299950(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(1, @"ExtraneousAlarmsCollector", 0, 0, ObjectType, a2);
  if (qword_100935DE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100940140);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "os_transaction RELEASE {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.syncUp}", v6, 2u);
  }
}

uint64_t sub_100299A78@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  sub_100010364((v1 + 34), &v11, &unk_100940320, qword_10079F2F0);
  if (v12)
  {
    return sub_100054B6C(&v11, a1);
  }

  sub_1000050A4(&v11, &unk_100940320, qword_10079F2F0);
  v6 = v1[9];
  v7 = v1[10];
  sub_10000F61C(v1 + 6, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v12 = v4;
  v13 = &off_1008ECA70;
  *&v11 = v1;
  v9 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v10 = swift_allocObject();
  sub_100054B6C(&v11, v10 + 16);
  *(v10 + 56) = v8;
  a1[3] = v9;
  a1[4] = &off_1008F5B28;
  *a1 = v10;
  sub_10000A87C(a1, &v11);
  swift_beginAccess();

  sub_10029A4F8(&v11, (v2 + 34));
  return swift_endAccess();
}

uint64_t sub_100299C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v23);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDICCloudExtraneousAlarmsCollector();
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    sub_10000A87C(v2 + 16, v19);
    v5 = v20;
    v6 = v21;
    sub_10000F61C(v19, v20);
    (*(v6 + 32))(v5, v6);
    sub_10000607C(v19);
    return sub_10000607C(v23);
  }

  else
  {
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100940140);
    sub_10000A87C(a1, v19);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      sub_10000A87C(v19, &v18);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      sub_10000607C(v19);
      v16 = sub_10000668C(v13, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDICCloudExtraneousAlarmsCollectorExecutionDateStorage.lastExecutedDate(for:) must work with RDICCloudExtraneousAlarmsCollector only {executable: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }

    else
    {

      sub_10000607C(v19);
    }

    sub_10000607C(v23);
    v17 = type metadata accessor for Date();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_100299E88(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v23 - v7;
  sub_10000A87C(a1, v26);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDICCloudExtraneousAlarmsCollector();
  if (swift_dynamicCast())
  {

    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a2, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    swift_beginAccess();
    v11 = *(v2 + 40);
    v12 = *(v2 + 48);
    sub_10000C9DC(v2 + 16, v11);
    (*(v12 + 40))(v8, v11, v12);
    swift_endAccess();
  }

  else
  {
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100940140);
    sub_10000A87C(a1, v25);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446210;
      sub_10000A87C(v25, v23);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      sub_10000607C(v25);
      v21 = sub_10000668C(v18, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "RDICCloudExtraneousAlarmsCollectorExecutionDateStorage.updateLastExecutedDate(for:) must work with RDICCloudExtraneousAlarmsCollector only {executable: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      sub_10000607C(v25);
    }
  }

  return sub_10000607C(v26);
}

uint64_t sub_10029A1FC()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 224);

  return v1;
}

unint64_t sub_10029A280()
{
  result = [*v0 extraneousAlarmsDeleteCountLimit];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10029A308@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 lastExtraneousAlarmsCollectorExecutionDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_10029A3AC(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
    v7 = isa;
  }

  v9 = v7;
  [v3 setLastExtraneousAlarmsCollectorExecutionDate:?];
}

uint64_t sub_10029A4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100940320, qword_10079F2F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10029A568(uint64_t a1, uint64_t a2)
{

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5._object = 0x800000010079F840;
  v5._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000023;
  v7._object = 0x80000001007F2430;
  String.append(_:)(v7);

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100791320;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 88) = &type metadata for String;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  v9 = rem_currentRuntimeVersion();
  *(v8 + 120) = &type metadata for Int;
  *(v8 + 96) = v9;
  v10 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [objc_opt_self() predicateWithFormat:v10 argumentArray:isa];

  return v12;
}

uint64_t sub_10029A758(char a1)
{
  sub_1000F5104(&qword_100940358, &qword_10079FBE0);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    __chkstk_darwin(inited);
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    KeyPath = swift_getKeyPath();
    v4 = sub_1003F71F4(KeyPath);

    *(inited + 32) = v4;
    __chkstk_darwin(v5);
    v6 = swift_getKeyPath();
    v7 = sub_1003F71F4(v6);

    *(inited + 40) = v7;
    return sub_10000C2B0(inited);
  }

  else
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_100791340;
    __chkstk_darwin(v9);
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v10 = swift_getKeyPath();
    v11 = sub_1003EDE80(v10);

    *(v9 + 32) = v11;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100791300;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = 0xD000000000000017;
    *(v12 + 40) = 0x800000010079F910;
    v13 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [objc_opt_self() predicateWithFormat:v13 argumentArray:isa];

    *(v9 + 40) = v15;
    return sub_100025060(v9);
  }
}

uint64_t sub_10029A9E8(char a1)
{
  sub_1000F5104(&qword_100939F28, &qword_100797310);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    __chkstk_darwin(inited);
    sub_1000060C8(0, &unk_100940330, off_1008D4148);
    KeyPath = swift_getKeyPath();
    v4 = sub_1003F71FC(KeyPath);

    *(inited + 32) = v4;
    __chkstk_darwin(v5);
    v6 = swift_getKeyPath();
    v7 = sub_1003F71FC(v6);

    *(inited + 40) = v7;
    return sub_10000C2B0(inited);
  }

  else
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_100791340;
    __chkstk_darwin(v9);
    sub_1000060C8(0, &unk_100940330, off_1008D4148);
    v10 = swift_getKeyPath();
    v11 = sub_1003EF200(v10);

    *(v9 + 32) = v11;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100791300;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = 0xD000000000000017;
    *(v12 + 40) = 0x800000010079F910;
    v13 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [objc_opt_self() predicateWithFormat:v13 argumentArray:isa];

    *(v9 + 40) = v15;
    return sub_100025060(v9);
  }
}

uint64_t sub_10029AC78(char a1)
{
  sub_1000F5104(&qword_100940368, &qword_10079FBE8);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    __chkstk_darwin(inited);
    sub_1000060C8(0, &qword_100940370, off_1008D4150);
    KeyPath = swift_getKeyPath();
    v4 = sub_1003F71F8(KeyPath);

    *(inited + 32) = v4;
    __chkstk_darwin(v5);
    v6 = swift_getKeyPath();
    v7 = sub_1003F71F8(v6);

    *(inited + 40) = v7;
    return sub_10000C2B0(inited);
  }

  else
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_100791340;
    __chkstk_darwin(v9);
    sub_1000060C8(0, &qword_100940370, off_1008D4150);
    v10 = swift_getKeyPath();
    v11 = sub_1003EE11C(v10);

    *(v9 + 32) = v11;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100791300;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = 0xD000000000000017;
    *(v12 + 40) = 0x800000010079F910;
    v13 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [objc_opt_self() predicateWithFormat:v13 argumentArray:isa];

    *(v9 + 40) = v15;
    return sub_100025060(v9);
  }
}

uint64_t sub_10029AF08(char a1)
{
  sub_1000F5104(&qword_100940348, &qword_10079FBD8);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    __chkstk_darwin(inited);
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    KeyPath = swift_getKeyPath();
    v4 = sub_1003F7204(KeyPath);

    *(inited + 32) = v4;
    __chkstk_darwin(v5);
    v6 = swift_getKeyPath();
    v7 = sub_1003F7204(v6);

    *(inited + 40) = v7;
    return sub_10000C2B0(inited);
  }

  else
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_100791340;
    __chkstk_darwin(v9);
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    v10 = swift_getKeyPath();
    v11 = sub_1003EFC5C(v10);

    *(v9 + 32) = v11;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100791300;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = 0xD000000000000017;
    *(v12 + 40) = 0x800000010079F910;
    v13 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [objc_opt_self() predicateWithFormat:v13 argumentArray:isa];

    *(v9 + 40) = v15;
    return sub_100025060(v9);
  }
}

uint64_t sub_10029B198(void *a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v80 - v6;
  v81 = _swiftEmptyArrayStorage;
  v8 = a2 >> 5;
  if (v8 <= 2)
  {
    if (v8 - 1 >= 2)
    {
      sub_1000F5104(&qword_100940358, &qword_10079FBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791320;
      __chkstk_darwin(inited);
      v19 = sub_1000060C8(0, &qword_100940360, off_1008D4138);
      *&v80[-1] = v19;
      KeyPath = swift_getKeyPath();
      v21 = sub_10004FAEC(a1);
      v22 = sub_1003EDE30(KeyPath, v21);

      *(inited + 32) = v22;
      __chkstk_darwin(v23);
      *&v80[-1] = v19;
      v24 = swift_getKeyPath();
      v25 = sub_1003EDE54(v24);

      *(inited + 40) = v25;
      __chkstk_darwin(v26);
      *&v80[-1] = v19;
      v27 = swift_getKeyPath();
      v28 = sub_100391908(v27, 0);

      *(inited + 48) = v28;
    }

    else
    {
      sub_1000F5104(&qword_100940358, &qword_10079FBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      __chkstk_darwin(inited);
      *&v80[-1] = sub_1000060C8(0, &qword_100940360, off_1008D4138);
      v10 = swift_getKeyPath();
      v11 = sub_10004FAEC(a1);
      v12 = sub_1003EDE30(v10, v11);

      *(inited + 32) = v12;
    }

    sub_100272138(inited);
    v17 = 0;
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    sub_1000F5104(&qword_100940358, &qword_10079FBE0);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_100791340;
    __chkstk_darwin(v52);
    v32 = sub_1000060C8(0, &qword_100940360, off_1008D4138);
    *&v80[-1] = v32;
    v53 = swift_getKeyPath();
    v54 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = type metadata accessor for UUID();
    v29 = 1;
    (*(*(v55 - 8) + 56))(v7, 0, 1, v55);
    v56 = sub_10039191C(v53, v7);

    *(v52 + 32) = v56;
    v57 = sub_10029A758(a2 & 1);
    v38 = v52;
    v17 = 0;
    *(v52 + 40) = v57;
    goto LABEL_11;
  }

  if (v8 == 4)
  {
    sub_1000F5104(&qword_100940358, &qword_10079FBE0);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_100791300;
    __chkstk_darwin(v13);
    *&v80[-1] = sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v14 = swift_getKeyPath();
    v15 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for UUID();
    v17 = 1;
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    v18 = sub_10039191C(v14, v7);

    *(v13 + 32) = v18;
    sub_100272138(v13);
LABEL_9:
    v29 = 1;
LABEL_10:
    sub_1000F5104(&qword_100940358, &qword_10079FBE0);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_100791320;
    *(v30 + 32) = sub_10001035C(0);
    *(v30 + 40) = sub_10029A568(0x6D72616C61, 0xE500000000000000);
    *(v30 + 48) = sub_10029A568(0x65722E6D72616C61, 0xEE007265646E696DLL);
    sub_100272138(v30);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_100791340;
    __chkstk_darwin(v31);
    v32 = sub_1000060C8(0, &qword_100940360, off_1008D4138);
    *&v80[-1] = v32;
    v33 = swift_getKeyPath();
    v34 = sub_1003F71F4(v33);

    *(v31 + 32) = v34;
    __chkstk_darwin(v35);
    *&v80[-1] = v32;
    v36 = swift_getKeyPath();
    v37 = sub_1003F71F4(v36);

    v38 = v31;
    *(v31 + 40) = v37;
    goto LABEL_11;
  }

  if (__PAIR128__(-96, 2) < __PAIR128__(a2, a1))
  {
    if (a2 == 160 && a1 == 3)
    {
      v29 = 0;
      v17 = 1;
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (__PAIR128__(((a1 != 0) + a2 + 95), a1 - 1) < 2)
  {
LABEL_26:
    v17 = 1;
    goto LABEL_9;
  }

  sub_1000F5104(&qword_100940358, &qword_10079FBE0);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_100792CE0;
  __chkstk_darwin(v58);
  v32 = sub_1000060C8(0, &qword_100940360, off_1008D4138);
  *&v80[-1] = v32;
  v59 = swift_getKeyPath();
  v60 = sub_1003EDE80(v59);

  *(v58 + 32) = v60;
  __chkstk_darwin(v61);
  *&v80[-1] = v32;
  v62 = swift_getKeyPath();
  v63 = sub_1003EDE80(v62);

  *(v58 + 40) = v63;
  __chkstk_darwin(v64);
  *&v80[-1] = v32;
  v65 = swift_getKeyPath();
  v66 = sub_1003EDE94(v65);

  *(v58 + 48) = v66;
  __chkstk_darwin(v67);
  *&v80[-1] = v32;
  v68 = swift_getKeyPath();
  v69 = sub_1003EDE94(v68);

  *(v58 + 56) = v69;
  sub_100272138(v58);
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_100791320;
  __chkstk_darwin(v70);
  *&v80[-1] = v32;
  v71 = swift_getKeyPath();
  v72 = sub_1003EDE54(v71);

  *(v70 + 32) = v72;
  __chkstk_darwin(v73);
  *&v80[-1] = v32;
  v74 = swift_getKeyPath();
  v75 = sub_100391908(v74, 0);

  *(v70 + 40) = v75;
  __chkstk_darwin(v76);
  *&v80[-1] = v32;
  v77 = swift_getKeyPath();
  v78 = sub_100391908(v77, 0);

  v38 = v70;
  v17 = 0;
  *(v70 + 48) = v78;
  v29 = 1;
LABEL_11:
  sub_100272138(v38);
  sub_1000F5104(&qword_100940358, &qword_10079FBE0);
  v39 = swift_initStackObject();
  v80[0] = xmmword_100791300;
  *(v39 + 16) = xmmword_100791300;
  __chkstk_darwin(v39);
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  *&v80[-1] = v32;
  v40 = swift_getKeyPath();
  v41 = sub_1003F71F4(v40);

  *(v39 + 32) = v41;
  sub_100272138(v39);
  if (v29)
  {
    v42 = swift_initStackObject();
    *(v42 + 16) = v80[0];
    __chkstk_darwin(v42);
    *&v80[-1] = v32;
    v43 = swift_getKeyPath();
    v44 = [objc_opt_self() localInternalAccountID];
    v45 = [v44 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = type metadata accessor for UUID();
    (*(*(v46 - 8) + 56))(v7, 0, 1, v46);
    v47 = sub_1003EDEC0(v43, v7);

    *(v42 + 32) = v47;
    sub_100272138(v42);
  }

  if (v17)
  {
    v48 = swift_initStackObject();
    *(v48 + 16) = v80[0];
    __chkstk_darwin(v48);
    *&v80[-1] = v32;
    v49 = swift_getKeyPath();
    v50 = sub_1003F71F4(v49);

    *(v48 + 32) = v50;
    sub_100272138(v48);
  }

  return sub_10000C2B0(v81);
}

uint64_t sub_10029BD74(void *a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v80 - v6;
  v81 = _swiftEmptyArrayStorage;
  v8 = a2 >> 5;
  if (v8 <= 2)
  {
    if (v8 - 1 >= 2)
    {
      sub_1000F5104(&qword_100939F28, &qword_100797310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791320;
      __chkstk_darwin(inited);
      v19 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
      *&v80[-1] = v19;
      KeyPath = swift_getKeyPath();
      v21 = sub_10004FAEC(a1);
      v22 = sub_1003EF1B0(KeyPath, v21);

      *(inited + 32) = v22;
      __chkstk_darwin(v23);
      *&v80[-1] = v19;
      v24 = swift_getKeyPath();
      v25 = sub_1003EF1D4(v24);

      *(inited + 40) = v25;
      __chkstk_darwin(v26);
      *&v80[-1] = v19;
      v27 = swift_getKeyPath();
      v28 = sub_100392264(v27, 0);

      *(inited + 48) = v28;
    }

    else
    {
      sub_1000F5104(&qword_100939F28, &qword_100797310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      __chkstk_darwin(inited);
      *&v80[-1] = sub_1000060C8(0, &unk_100940330, off_1008D4148);
      v10 = swift_getKeyPath();
      v11 = sub_10004FAEC(a1);
      v12 = sub_1003EF1B0(v10, v11);

      *(inited + 32) = v12;
    }

    sub_100272178(inited);
    v17 = 0;
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    sub_1000F5104(&qword_100939F28, &qword_100797310);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_100791340;
    __chkstk_darwin(v52);
    v32 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
    *&v80[-1] = v32;
    v53 = swift_getKeyPath();
    v54 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = type metadata accessor for UUID();
    v29 = 1;
    (*(*(v55 - 8) + 56))(v7, 0, 1, v55);
    v56 = sub_100392278(v53, v7);

    *(v52 + 32) = v56;
    v57 = sub_10029A9E8(a2 & 1);
    v38 = v52;
    v17 = 0;
    *(v52 + 40) = v57;
    goto LABEL_11;
  }

  if (v8 == 4)
  {
    sub_1000F5104(&qword_100939F28, &qword_100797310);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_100791300;
    __chkstk_darwin(v13);
    *&v80[-1] = sub_1000060C8(0, &unk_100940330, off_1008D4148);
    v14 = swift_getKeyPath();
    v15 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for UUID();
    v17 = 1;
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    v18 = sub_100392278(v14, v7);

    *(v13 + 32) = v18;
    sub_100272178(v13);
LABEL_9:
    v29 = 1;
LABEL_10:
    sub_1000F5104(&qword_100939F28, &qword_100797310);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_100791320;
    *(v30 + 32) = sub_10001035C(0);
    *(v30 + 40) = sub_10029A568(0x6D72616C61, 0xE500000000000000);
    *(v30 + 48) = sub_10029A568(0x65722E6D72616C61, 0xEE007265646E696DLL);
    sub_100272178(v30);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_100791340;
    __chkstk_darwin(v31);
    v32 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
    *&v80[-1] = v32;
    v33 = swift_getKeyPath();
    v34 = sub_1003F71FC(v33);

    *(v31 + 32) = v34;
    __chkstk_darwin(v35);
    *&v80[-1] = v32;
    v36 = swift_getKeyPath();
    v37 = sub_1003F71FC(v36);

    v38 = v31;
    *(v31 + 40) = v37;
    goto LABEL_11;
  }

  if (__PAIR128__(-96, 2) < __PAIR128__(a2, a1))
  {
    if (a2 == 160 && a1 == 3)
    {
      v29 = 0;
      v17 = 1;
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (__PAIR128__(((a1 != 0) + a2 + 95), a1 - 1) < 2)
  {
LABEL_26:
    v17 = 1;
    goto LABEL_9;
  }

  sub_1000F5104(&qword_100939F28, &qword_100797310);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_100792CE0;
  __chkstk_darwin(v58);
  v32 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
  *&v80[-1] = v32;
  v59 = swift_getKeyPath();
  v60 = sub_1003EF200(v59);

  *(v58 + 32) = v60;
  __chkstk_darwin(v61);
  *&v80[-1] = v32;
  v62 = swift_getKeyPath();
  v63 = sub_1003EF200(v62);

  *(v58 + 40) = v63;
  __chkstk_darwin(v64);
  *&v80[-1] = v32;
  v65 = swift_getKeyPath();
  v66 = sub_1003EF214(v65);

  *(v58 + 48) = v66;
  __chkstk_darwin(v67);
  *&v80[-1] = v32;
  v68 = swift_getKeyPath();
  v69 = sub_1003EF214(v68);

  *(v58 + 56) = v69;
  sub_100272178(v58);
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_100791320;
  __chkstk_darwin(v70);
  *&v80[-1] = v32;
  v71 = swift_getKeyPath();
  v72 = sub_1003EF1D4(v71);

  *(v70 + 32) = v72;
  __chkstk_darwin(v73);
  *&v80[-1] = v32;
  v74 = swift_getKeyPath();
  v75 = sub_100392264(v74, 0);

  *(v70 + 40) = v75;
  __chkstk_darwin(v76);
  *&v80[-1] = v32;
  v77 = swift_getKeyPath();
  v78 = sub_100392264(v77, 0);

  v38 = v70;
  v17 = 0;
  *(v70 + 48) = v78;
  v29 = 1;
LABEL_11:
  sub_100272178(v38);
  sub_1000F5104(&qword_100939F28, &qword_100797310);
  v39 = swift_initStackObject();
  v80[0] = xmmword_100791300;
  *(v39 + 16) = xmmword_100791300;
  __chkstk_darwin(v39);
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  *&v80[-1] = v32;
  v40 = swift_getKeyPath();
  v41 = sub_1003F71FC(v40);

  *(v39 + 32) = v41;
  sub_100272178(v39);
  if (v29)
  {
    v42 = swift_initStackObject();
    *(v42 + 16) = v80[0];
    __chkstk_darwin(v42);
    *&v80[-1] = v32;
    v43 = swift_getKeyPath();
    v44 = [objc_opt_self() localInternalAccountID];
    v45 = [v44 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = type metadata accessor for UUID();
    (*(*(v46 - 8) + 56))(v7, 0, 1, v46);
    v47 = sub_1003EF240(v43, v7);

    *(v42 + 32) = v47;
    sub_100272178(v42);
  }

  if (v17)
  {
    v48 = swift_initStackObject();
    *(v48 + 16) = v80[0];
    __chkstk_darwin(v48);
    *&v80[-1] = v32;
    v49 = swift_getKeyPath();
    v50 = sub_1003F71FC(v49);

    *(v48 + 32) = v50;
    sub_100272178(v48);
  }

  return sub_10000C2B0(v81);
}

uint64_t sub_10029C950(void *a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v80 - v6;
  v81 = _swiftEmptyArrayStorage;
  v8 = a2 >> 5;
  if (v8 <= 2)
  {
    if (v8 - 1 >= 2)
    {
      sub_1000F5104(&qword_100940368, &qword_10079FBE8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791320;
      __chkstk_darwin(inited);
      v19 = sub_1000060C8(0, &qword_100940370, off_1008D4150);
      *&v80[-1] = v19;
      KeyPath = swift_getKeyPath();
      v21 = sub_10004FAEC(a1);
      v22 = sub_1003EE0CC(KeyPath, v21);

      *(inited + 32) = v22;
      __chkstk_darwin(v23);
      *&v80[-1] = v19;
      v24 = swift_getKeyPath();
      v25 = sub_1003EE0F0(v24);

      *(inited + 40) = v25;
      __chkstk_darwin(v26);
      *&v80[-1] = v19;
      v27 = swift_getKeyPath();
      v28 = sub_100391958(v27, 0);

      *(inited + 48) = v28;
    }

    else
    {
      sub_1000F5104(&qword_100940368, &qword_10079FBE8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      __chkstk_darwin(inited);
      *&v80[-1] = sub_1000060C8(0, &qword_100940370, off_1008D4150);
      v10 = swift_getKeyPath();
      v11 = sub_10004FAEC(a1);
      v12 = sub_1003EE0CC(v10, v11);

      *(inited + 32) = v12;
    }

    sub_100272410(inited);
    v17 = 0;
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    sub_1000F5104(&qword_100940368, &qword_10079FBE8);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_100791340;
    __chkstk_darwin(v52);
    v32 = sub_1000060C8(0, &qword_100940370, off_1008D4150);
    *&v80[-1] = v32;
    v53 = swift_getKeyPath();
    v54 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = type metadata accessor for UUID();
    v29 = 1;
    (*(*(v55 - 8) + 56))(v7, 0, 1, v55);
    v56 = sub_10039196C(v53, v7);

    *(v52 + 32) = v56;
    v57 = sub_10029AC78(a2 & 1);
    v38 = v52;
    v17 = 0;
    *(v52 + 40) = v57;
    goto LABEL_11;
  }

  if (v8 == 4)
  {
    sub_1000F5104(&qword_100940368, &qword_10079FBE8);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_100791300;
    __chkstk_darwin(v13);
    *&v80[-1] = sub_1000060C8(0, &qword_100940370, off_1008D4150);
    v14 = swift_getKeyPath();
    v15 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for UUID();
    v17 = 1;
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    v18 = sub_10039196C(v14, v7);

    *(v13 + 32) = v18;
    sub_100272410(v13);
LABEL_9:
    v29 = 1;
LABEL_10:
    sub_1000F5104(&qword_100940368, &qword_10079FBE8);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_100791320;
    *(v30 + 32) = sub_10001035C(0);
    *(v30 + 40) = sub_10029A568(0x6D72616C61, 0xE500000000000000);
    *(v30 + 48) = sub_10029A568(0x65722E6D72616C61, 0xEE007265646E696DLL);
    sub_100272410(v30);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_100791340;
    __chkstk_darwin(v31);
    v32 = sub_1000060C8(0, &qword_100940370, off_1008D4150);
    *&v80[-1] = v32;
    v33 = swift_getKeyPath();
    v34 = sub_1003F71F8(v33);

    *(v31 + 32) = v34;
    __chkstk_darwin(v35);
    *&v80[-1] = v32;
    v36 = swift_getKeyPath();
    v37 = sub_1003F71F8(v36);

    v38 = v31;
    *(v31 + 40) = v37;
    goto LABEL_11;
  }

  if (__PAIR128__(-96, 2) < __PAIR128__(a2, a1))
  {
    if (a2 == 160 && a1 == 3)
    {
      v29 = 0;
      v17 = 1;
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (__PAIR128__(((a1 != 0) + a2 + 95), a1 - 1) < 2)
  {
LABEL_26:
    v17 = 1;
    goto LABEL_9;
  }

  sub_1000F5104(&qword_100940368, &qword_10079FBE8);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_100792CE0;
  __chkstk_darwin(v58);
  v32 = sub_1000060C8(0, &qword_100940370, off_1008D4150);
  *&v80[-1] = v32;
  v59 = swift_getKeyPath();
  v60 = sub_1003EE11C(v59);

  *(v58 + 32) = v60;
  __chkstk_darwin(v61);
  *&v80[-1] = v32;
  v62 = swift_getKeyPath();
  v63 = sub_1003EE11C(v62);

  *(v58 + 40) = v63;
  __chkstk_darwin(v64);
  *&v80[-1] = v32;
  v65 = swift_getKeyPath();
  v66 = sub_1003EE130(v65);

  *(v58 + 48) = v66;
  __chkstk_darwin(v67);
  *&v80[-1] = v32;
  v68 = swift_getKeyPath();
  v69 = sub_1003EE130(v68);

  *(v58 + 56) = v69;
  sub_100272410(v58);
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_100791320;
  __chkstk_darwin(v70);
  *&v80[-1] = v32;
  v71 = swift_getKeyPath();
  v72 = sub_1003EE0F0(v71);

  *(v70 + 32) = v72;
  __chkstk_darwin(v73);
  *&v80[-1] = v32;
  v74 = swift_getKeyPath();
  v75 = sub_100391958(v74, 0);

  *(v70 + 40) = v75;
  __chkstk_darwin(v76);
  *&v80[-1] = v32;
  v77 = swift_getKeyPath();
  v78 = sub_100391958(v77, 0);

  v38 = v70;
  v17 = 0;
  *(v70 + 48) = v78;
  v29 = 1;
LABEL_11:
  sub_100272410(v38);
  sub_1000F5104(&qword_100940368, &qword_10079FBE8);
  v39 = swift_initStackObject();
  v80[0] = xmmword_100791300;
  *(v39 + 16) = xmmword_100791300;
  __chkstk_darwin(v39);
  sub_1000060C8(0, &qword_100940370, off_1008D4150);
  *&v80[-1] = v32;
  v40 = swift_getKeyPath();
  v41 = sub_1003F71F8(v40);

  *(v39 + 32) = v41;
  sub_100272410(v39);
  if (v29)
  {
    v42 = swift_initStackObject();
    *(v42 + 16) = v80[0];
    __chkstk_darwin(v42);
    *&v80[-1] = v32;
    v43 = swift_getKeyPath();
    v44 = [objc_opt_self() localInternalAccountID];
    v45 = [v44 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = type metadata accessor for UUID();
    (*(*(v46 - 8) + 56))(v7, 0, 1, v46);
    v47 = sub_1003EE15C(v43, v7);

    *(v42 + 32) = v47;
    sub_100272410(v42);
  }

  if (v17)
  {
    v48 = swift_initStackObject();
    *(v48 + 16) = v80[0];
    __chkstk_darwin(v48);
    *&v80[-1] = v32;
    v49 = swift_getKeyPath();
    v50 = sub_1003F71F8(v49);

    *(v48 + 32) = v50;
    sub_100272410(v48);
  }

  return sub_10000C2B0(v81);
}

uint64_t sub_10029D52C(void *a1, unsigned __int8 a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v80 - v6;
  v81 = _swiftEmptyArrayStorage;
  v8 = a2 >> 5;
  if (v8 <= 2)
  {
    if (v8 - 1 >= 2)
    {
      sub_1000F5104(&qword_100940348, &qword_10079FBD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791320;
      __chkstk_darwin(inited);
      v19 = sub_1000060C8(0, &qword_100940350, off_1008D4130);
      *&v80[-1] = v19;
      KeyPath = swift_getKeyPath();
      v21 = sub_10004FAEC(a1);
      v22 = sub_1003EF758(KeyPath, v21);

      *(inited + 32) = v22;
      __chkstk_darwin(v23);
      *&v80[-1] = v19;
      v24 = swift_getKeyPath();
      v25 = sub_1003EF800(v24);

      *(inited + 40) = v25;
      __chkstk_darwin(v26);
      *&v80[-1] = v19;
      v27 = swift_getKeyPath();
      v28 = sub_100392868(v27, 0);

      *(inited + 48) = v28;
    }

    else
    {
      sub_1000F5104(&qword_100940348, &qword_10079FBD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      __chkstk_darwin(inited);
      *&v80[-1] = sub_1000060C8(0, &qword_100940350, off_1008D4130);
      v10 = swift_getKeyPath();
      v11 = sub_10004FAEC(a1);
      v12 = sub_1003EF758(v10, v11);

      *(inited + 32) = v12;
    }

    sub_100272900(inited);
    v17 = 0;
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    sub_1000F5104(&qword_100940348, &qword_10079FBD8);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_100791340;
    __chkstk_darwin(v52);
    v32 = sub_1000060C8(0, &qword_100940350, off_1008D4130);
    *&v80[-1] = v32;
    v53 = swift_getKeyPath();
    v54 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = type metadata accessor for UUID();
    v29 = 1;
    (*(*(v55 - 8) + 56))(v7, 0, 1, v55);
    v56 = sub_10039287C(v53, v7);

    *(v52 + 32) = v56;
    v57 = sub_10029AF08(a2 & 1);
    v38 = v52;
    v17 = 0;
    *(v52 + 40) = v57;
    goto LABEL_11;
  }

  if (v8 == 4)
  {
    sub_1000F5104(&qword_100940348, &qword_10079FBD8);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_100791300;
    __chkstk_darwin(v13);
    *&v80[-1] = sub_1000060C8(0, &qword_100940350, off_1008D4130);
    v14 = swift_getKeyPath();
    v15 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for UUID();
    v17 = 1;
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    v18 = sub_10039287C(v14, v7);

    *(v13 + 32) = v18;
    sub_100272900(v13);
LABEL_9:
    v29 = 1;
LABEL_10:
    sub_1000F5104(&qword_100940348, &qword_10079FBD8);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_100791320;
    *(v30 + 32) = sub_10001035C(0);
    *(v30 + 40) = sub_10029A568(0x6D72616C61, 0xE500000000000000);
    *(v30 + 48) = sub_10029A568(0x65722E6D72616C61, 0xEE007265646E696DLL);
    sub_100272900(v30);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_100791340;
    __chkstk_darwin(v31);
    v32 = sub_1000060C8(0, &qword_100940350, off_1008D4130);
    *&v80[-1] = v32;
    v33 = swift_getKeyPath();
    v34 = sub_1003F7204(v33);

    *(v31 + 32) = v34;
    __chkstk_darwin(v35);
    *&v80[-1] = v32;
    v36 = swift_getKeyPath();
    v37 = sub_1003F7204(v36);

    v38 = v31;
    *(v31 + 40) = v37;
    goto LABEL_11;
  }

  if (__PAIR128__(-96, 2) < __PAIR128__(a2, a1))
  {
    if (a2 == 160 && a1 == 3)
    {
      v29 = 0;
      v17 = 1;
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (__PAIR128__(((a1 != 0) + a2 + 95), a1 - 1) < 2)
  {
LABEL_26:
    v17 = 1;
    goto LABEL_9;
  }

  sub_1000F5104(&qword_100940348, &qword_10079FBD8);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_100792CE0;
  __chkstk_darwin(v58);
  v32 = sub_1000060C8(0, &qword_100940350, off_1008D4130);
  *&v80[-1] = v32;
  v59 = swift_getKeyPath();
  v60 = sub_1003EFC5C(v59);

  *(v58 + 32) = v60;
  __chkstk_darwin(v61);
  *&v80[-1] = v32;
  v62 = swift_getKeyPath();
  v63 = sub_1003EFC5C(v62);

  *(v58 + 40) = v63;
  __chkstk_darwin(v64);
  *&v80[-1] = v32;
  v65 = swift_getKeyPath();
  v66 = sub_1003F07AC(v65);

  *(v58 + 48) = v66;
  __chkstk_darwin(v67);
  *&v80[-1] = v32;
  v68 = swift_getKeyPath();
  v69 = sub_1003F07AC(v68);

  *(v58 + 56) = v69;
  sub_100272900(v58);
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_100791320;
  __chkstk_darwin(v70);
  *&v80[-1] = v32;
  v71 = swift_getKeyPath();
  v72 = sub_1003EF800(v71);

  *(v70 + 32) = v72;
  __chkstk_darwin(v73);
  *&v80[-1] = v32;
  v74 = swift_getKeyPath();
  v75 = sub_100392868(v74, 0);

  *(v70 + 40) = v75;
  __chkstk_darwin(v76);
  *&v80[-1] = v32;
  v77 = swift_getKeyPath();
  v78 = sub_100392868(v77, 0);

  v38 = v70;
  v17 = 0;
  *(v70 + 48) = v78;
  v29 = 1;
LABEL_11:
  sub_100272900(v38);
  sub_1000F5104(&qword_100940348, &qword_10079FBD8);
  v39 = swift_initStackObject();
  v80[0] = xmmword_100791300;
  *(v39 + 16) = xmmword_100791300;
  __chkstk_darwin(v39);
  sub_1000060C8(0, &qword_100940350, off_1008D4130);
  *&v80[-1] = v32;
  v40 = swift_getKeyPath();
  v41 = sub_1003F7204(v40);

  *(v39 + 32) = v41;
  sub_100272900(v39);
  if (v29)
  {
    v42 = swift_initStackObject();
    *(v42 + 16) = v80[0];
    __chkstk_darwin(v42);
    *&v80[-1] = v32;
    v43 = swift_getKeyPath();
    v44 = [objc_opt_self() localInternalAccountID];
    v45 = [v44 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = type metadata accessor for UUID();
    (*(*(v46 - 8) + 56))(v7, 0, 1, v46);
    v47 = sub_1003EF884(v43, v7);

    *(v42 + 32) = v47;
    sub_100272900(v42);
  }

  if (v17)
  {
    v48 = swift_initStackObject();
    *(v48 + 16) = v80[0];
    __chkstk_darwin(v48);
    *&v80[-1] = v32;
    v49 = swift_getKeyPath();
    v50 = sub_1003F7204(v49);

    *(v48 + 32) = v50;
    sub_100272900(v48);
  }

  return sub_10000C2B0(v81);
}

id sub_10029E108@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

void sub_10029E15C(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

void sub_10029E298(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 originalAlarmUID];
  if (v3)
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

  *a2 = v5;
  a2[1] = v7;
}

void sub_10029E300(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setOriginalAlarmUID:?];
}

uint64_t sub_10029E370@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

id sub_10029E414@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 list];
  *a2 = result;
  return result;
}

unint64_t sub_10029E464(unint64_t result)
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

void sub_10029E4FC(uint64_t a1, uint64_t a2, unint64_t a3, size_t *a4)
{
  v5 = a3 >> 1;
  v6 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    if (a2 > v5)
    {
      v5 = a2;
    }

    v8 = v5 - a2;
    v9 = (a1 + 8 * a2);
    while (v8)
    {
      v11 = *v9;
      v10 = v11;
      sub_1002990FC(&v11, a4);

      if (!v4)
      {
        --v8;
        ++v9;
        if (--v6)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_10029E5BC(uint64_t a1)
{
  v2 = sub_10029BD74(0, 0xA0u);
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setAffectedStores:0];
  [v3 setPredicate:v2];

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 setAffectedStores:isa];

  [v3 setFetchLimit:a1];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v6 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v7 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setSortDescriptors:v7];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v36 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 1, 0);
  v9 = _swiftEmptyArrayStorage;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v10 = *(inited + 32);
  }

  v11 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v12)
  {
LABEL_18:
    *&v34 = 0;
    *(&v34 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v33._object = 0x80000001007EC120;
    v33._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v33);
    sub_1000F5104(&qword_100940340, &unk_10079F3A0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = v11;
  v14 = v12;
  v35 = &type metadata for String;

  *&v34 = v13;
  *(&v34 + 1) = v14;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_100010D04((v15 > 1), v16 + 1, 1);
    v9 = v36;
  }

  v9[2] = v16 + 1;
  sub_100005EE0(&v34, &v9[4 * v16 + 4]);
  swift_setDeallocating();
  v17 = *(inited + 16);
  swift_arrayDestroy();
  v18 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setPropertiesToFetch:v18];

  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1007953F0;
  *(v19 + 32) = swift_getKeyPath();
  v36 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v20 = v36;
  if ((v19 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = *(v19 + 32);

LABEL_12:
  v22 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = v22;
  v25 = v23;

  v27 = v20[2];
  v26 = v20[3];
  if (v27 >= v26 >> 1)
  {
    sub_100026EF4((v26 > 1), v27 + 1, 1);
    v20 = v36;
  }

  v20[2] = v27 + 1;
  v28 = &v20[2 * v27];
  v28[4] = v24;
  v28[5] = v25;
  swift_setDeallocating();
  v29 = *(v19 + 16);
  swift_arrayDestroy();
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setRelationshipKeyPathsForPrefetching:v30];

  v31 = NSManagedObjectContext.fetch<A>(_:)();
  return v31;
}

void sub_10029EB3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100297134();
}

uint64_t sub_10029EB68()
{
  v1 = [v0 activityTypeRawValue];
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return (0x20504030100uLL >> (8 * v1));
  }
}

uint64_t sub_10029EBB0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940398);
  v1 = sub_100006654(v0, qword_100940398);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_10029EC9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10079FF06[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10029ED24()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10079FF06[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10029ED70@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002A0D94(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10029EDB4()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000018;
  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6579297;
  if (v1 != 1)
  {
    v5 = 0x6574656C706D6F63;
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

id sub_10029EE80()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v71 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v71 - v12;
  v14 = [v0 accountIdentifier];
  if (!v14)
  {
    v23 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __chkstk_darwin(ObjCClassFromMetadata);
    swift_getKeyPath();
    sub_1003AB82C();

    v25 = String._bridgeToObjectiveC()();

    v26 = [v23 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v25];
LABEL_7:
    v26;

    swift_willThrow();
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [v0 activityDate];
  if (!v16)
  {

    v27 = objc_opt_self();
    v28 = swift_getObjCClassFromMetadata();
    __chkstk_darwin(v28);
    swift_getKeyPath();
    sub_1003AB82C();

    v25 = String._bridgeToObjectiveC()();

    v26 = [v27 unexpectedNilPropertyWithClass:v28 property:v25];
    goto LABEL_7;
  }

  v17 = v16;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_10029EB68();
  if (v18 == 6 || (v29 = v18, (v30 = [v1 authorUserRecordIDString]) == 0))
  {

    v19 = objc_opt_self();
    v20 = swift_getObjCClassFromMetadata();
    __chkstk_darwin(v20);
    swift_getKeyPath();
    sub_1003AB82C();

    v21 = String._bridgeToObjectiveC()();

    v22 = [v19 unexpectedNilPropertyWithClass:v20 property:v21];
  }

  else
  {
    v31 = v30;
    v32 = [v1 ckIdentifier];
    if (v32)
    {
      v78 = v32;
      v33 = [v1 sharedEntityName];
      if (v33)
      {
        v77 = v33;
        (*(v7 + 16))(v11, v13, v6);
        v76 = qword_10079FEC8[v29];
        v34 = [v1 ckParentCloudObjectEntityName];
        if (v34)
        {
          v35 = v34;
          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v36;
        }

        else
        {
          v72 = 0;
          v75 = 0;
        }

        v53 = [v1 ckParentCloudObjectIdentifier];
        if (v53)
        {
          v54 = v53;
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v55;
        }

        else
        {
          v71 = 0;
          v74 = 0;
        }

        v56 = [v1 uuidForChangeTracking];
        if (v56)
        {
          v57 = v56;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v58 = 0;
        }

        else
        {
          v58 = 1;
        }

        v59 = type metadata accessor for UUID();
        v60 = *(v59 - 8);
        (*(v60 + 56))(v5, v58, 1, v59);
        isa = Date._bridgeToObjectiveC()().super.isa;
        if (v75)
        {
          v72 = String._bridgeToObjectiveC()();

          if (v74)
          {
LABEL_32:
            v75 = String._bridgeToObjectiveC()();

LABEL_35:
            if ((*(v60 + 48))(v5, 1, v59) == 1)
            {
              v61 = 0;
            }

            else
            {
              v61 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v60 + 8))(v5, v59);
            }

            v74 = v61;
            v62 = objc_allocWithZone(REMSharedEntitySyncActivity);
            v70 = v61;
            v63 = v78;
            v65 = v72;
            v64 = isa;
            v66 = v31;
            v67 = v31;
            v68 = v75;
            v76 = [v62 initWithAccountIdentifier:v15 activityDate:isa activityType:v76 authorUserRecordIDString:v66 ckParentCloudObjectEntityName:v72 ckParentCloudObjectIdentifier:v75 ckIdentifier:v78 sharedEntityName:v77 uuidForChangeTracking:v70];

            v69 = *(v7 + 8);
            v69(v11, v6);
            v69(v13, v6);
            return v76;
          }
        }

        else
        {
          v72 = 0;
          if (v74)
          {
            goto LABEL_32;
          }
        }

        v75 = 0;
        goto LABEL_35;
      }

      v39 = objc_opt_self();
      v40 = swift_getObjCClassFromMetadata();
      __chkstk_darwin(v40);
      swift_getKeyPath();
      sub_1003AB82C();

      v21 = String._bridgeToObjectiveC()();

      v22 = [v39 unexpectedNilPropertyWithClass:v40 property:v21];
    }

    else
    {

      v37 = objc_opt_self();
      v38 = swift_getObjCClassFromMetadata();
      __chkstk_darwin(v38);
      swift_getKeyPath();
      sub_1003AB82C();

      v21 = String._bridgeToObjectiveC()();

      v22 = [v37 unexpectedNilPropertyWithClass:v38 property:v21];
    }
  }

  v22;

  swift_willThrow();
  (*(v7 + 8))(v13, v6);
LABEL_17:
  if (qword_100935DF8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100006654(v41, qword_100940398);
  swift_errorRetain();
  v42 = v1;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v79[0] = swift_slowAlloc();
    *v45 = 136315650;
    *(v45 + 4) = sub_10000668C(0xD000000000000014, 0x80000001007F34A0, v79);
    *(v45 + 12) = 2082;
    swift_getErrorValue();
    v46 = Error.rem_errorDescription.getter();
    v48 = sub_10000668C(v46, v47, v79);

    *(v45 + 14) = v48;
    *(v45 + 22) = 2082;
    v49 = sub_10029FB20();
    v51 = sub_10000668C(v49, v50, v79);

    *(v45 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v43, v44, "📓 %s: An unexpected error occurred {description: %{public}s, activityObject: %{public}s}", v45, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10029F930@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 activityDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10029F9D4(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10012F78C(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setActivityDate:isa];
}

uint64_t sub_10029FB20()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v45 - v10;
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100792CF0;
  v13 = [v0 accountIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *(v12 + 56) = &type metadata for String;
  v18 = sub_100006600();
  *(v12 + 64) = v18;
  if (v17)
  {
    v19 = v15;
  }

  else
  {
    v19 = 7104878;
  }

  v20 = 0xE300000000000000;
  if (v17)
  {
    v20 = v17;
  }

  *(v12 + 32) = v19;
  *(v12 + 40) = v20;
  v21 = sub_10029EB68();
  if (v21 <= 2)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        v23 = 0xE300000000000000;
        v24 = 6579297;
      }

      else
      {
        v23 = 0xE800000000000000;
        v24 = 0x6574656C706D6F63;
      }
    }

    else
    {
      v23 = 0xE700000000000000;
      v24 = 0x6E776F6E6B6E75;
    }

    goto LABEL_22;
  }

  if (v21 <= 4)
  {
    if (v21 == 3)
    {
      v22 = "titleMayHaveDirtyHashtag";
    }

    else
    {
      v22 = "notesMayHaveDirtyHashtag";
    }

    v23 = (v22 - 32) | 0x8000000000000000;
    v24 = 0xD000000000000018;
    goto LABEL_22;
  }

  if (v21 == 5)
  {
    v23 = 0x80000001007F3370;
    v24 = 0xD00000000000001BLL;
LABEL_22:
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v18;
    *(v12 + 72) = v24;
    goto LABEL_23;
  }

  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v18;
  v23 = 0xE300000000000000;
  *(v12 + 72) = 7104878;
LABEL_23:
  *(v12 + 80) = v23;
  v25 = [v0 ckIdentifier];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = (v12 + 112);
    *(v12 + 136) = &type metadata for String;
    *(v12 + 144) = v18;
    if (v29)
    {
      *v30 = v27;
      goto LABEL_28;
    }
  }

  else
  {
    v30 = (v12 + 112);
    *(v12 + 136) = &type metadata for String;
    *(v12 + 144) = v18;
  }

  *v30 = 7104878;
  v29 = 0xE300000000000000;
LABEL_28:
  *(v12 + 120) = v29;
  v31 = [v0 sharedEntityName];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = (v12 + 152);
    *(v12 + 176) = &type metadata for String;
    *(v12 + 184) = v18;
    if (v35)
    {
      *v36 = v33;
      goto LABEL_33;
    }
  }

  else
  {
    v36 = (v12 + 152);
    *(v12 + 176) = &type metadata for String;
    *(v12 + 184) = v18;
  }

  *v36 = 7104878;
  v35 = 0xE300000000000000;
LABEL_33:
  *(v12 + 160) = v35;
  v37 = [v0 uuidForChangeTracking];
  if (v37)
  {
    v38 = v37;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 56))(v9, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v9, 1, 1, v1);
  }

  sub_100100FB4(v9, v11);
  if ((*(v2 + 48))(v11, 1, v1))
  {
    sub_1000050A4(v11, &unk_100939D90, "8\n\r");
    v39 = (v12 + 192);
    *(v12 + 216) = &type metadata for String;
    *(v12 + 224) = v18;
  }

  else
  {
    v41 = v46;
    (*(v2 + 16))(v46, v11, v1);
    sub_1000050A4(v11, &unk_100939D90, "8\n\r");
    v42 = UUID.uuidString.getter();
    v40 = v43;
    (*(v2 + 8))(v41, v1);
    v39 = (v12 + 192);
    *(v12 + 216) = &type metadata for String;
    *(v12 + 224) = v18;
    if (v40)
    {
      *v39 = v42;
      goto LABEL_41;
    }
  }

  *v39 = 7104878;
  v40 = 0xE300000000000000;
LABEL_41:
  *(v12 + 200) = v40;
  return String.init(format:_:)();
}

void sub_1002A0038(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 accountIdentifier];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v2 setAccountIdentifier:v9];

  v10 = [a1 activityDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v2 setActivityDate:isa];

  [v2 setActivityTypeRawValue:{word_10079FF06[sub_1002A0DC0(objc_msgSend(a1, "activityType"))]}];
  v12 = [a1 authorUserRecordIDString];
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  [v2 setAuthorUserRecordIDString:v12];

  v13 = [a1 ckParentCloudObjectEntityName];
  [v2 setCkParentCloudObjectEntityName:v13];

  v14 = [a1 ckParentCloudObjectIdentifier];
  [v2 setCkParentCloudObjectIdentifier:v14];

  v15 = [a1 ckIdentifier];
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v2 setCkIdentifier:v15];

  v16 = [a1 sharedEntityName];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v2 setSharedEntityName:v16];
}

void sub_1002A03A0(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for REMCKSharedEntitySyncActivity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata entity];
  v10 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v9 insertIntoManagedObjectContext:a1];
  v11 = a2;
  v12 = v10;
  [a1 assignObject:v12 toPersistentStore:v11];

  sub_1002A0038(a3);
  *a4 = v12;
}

id sub_1002A0464()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  *&v10 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v12 = &v17 - v11;
  v13 = [v1 uuidForChangeTracking];
  if (v13)
  {
    v14 = v13;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v12, v7, v3);
    (*(v4 + 56))(v12, 0, 1, v3);
    sub_1000050A4(v12, &unk_100939D90, "8\n\r");
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3);
    sub_1000050A4(v12, &unk_100939D90, "8\n\r");
    UUID.init()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v3);
    [v1 setUuidForChangeTracking:isa];
  }

  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "willSave");
}

id sub_1002A0758()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 uuidForChangeTracking];
  if (v9)
  {
    v10 = v9;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23[1] = ObjectType;
    sub_1000F5104(&unk_10093E750, qword_10079FC30);
    String.init<A>(describing:)();
    v11 = objc_allocWithZone(REMObjectID);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v13 = String._bridgeToObjectiveC()();

    v14 = [v11 initWithUUID:isa entityName:v13];

    (*(v4 + 8))(v8, v3);
  }

  else
  {
    if (qword_100935DF8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100940398);
    v16 = v1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v16 objectID];
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cannot return a -remObjectID because REMCKSharedEntitySyncActivity does not have a UUID for change tracking {%@}", v19, 0xCu);
      sub_1000050A4(v20, &unk_100938E70, &unk_100797230);
    }

    return 0;
  }

  return v14;
}

uint64_t *sub_1002A0A50(void *a1, id a2)
{
  v3 = [a2 storeController];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 accountIdentifier];
    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    v6 = [v4 storeForAccountIdentifier:v5];

    if (v6)
    {
      __chkstk_darwin(v7);
      type metadata accessor for REMCKSharedEntitySyncActivity();
      NSManagedObjectContext.rem_performAndWait<A>(_:)();

      return v18;
    }

    if (qword_100935DF8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100940398);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000668C(0xD000000000000022, 0x80000001007F3470, &v18);
      _os_log_impl(&_mh_execute_header, v14, v15, "📓 REMCKSharedEntitySyncActivity:%s | Unable to get persistentStore for accountIdentifier.", v16, 0xCu);
      sub_10000607C(v17);
    }
  }

  else
  {
    if (qword_100935DF8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100940398);
    v4 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10000668C(0xD000000000000022, 0x80000001007F3470, &v18);
      _os_log_impl(&_mh_execute_header, v4, v10, "📓 REMCKSharedEntitySyncActivity:%s | Unable to get storeController from RDStoreControllerManagedObjectContext", v11, 0xCu);
      sub_10000607C(v12);
    }
  }

  return 0;
}

uint64_t sub_1002A0D94(unsigned __int16 a1)
{
  if (a1 >= 6u)
  {
    return 6;
  }

  else
  {
    return (0x20504030100uLL >> (8 * a1));
  }
}

unint64_t sub_1002A0DC0(unint64_t a1)
{
  if (a1 < 6)
  {
    return 0x20504030100uLL >> (8 * a1);
  }

  v10[7] = v1;
  v10[8] = v2;
  if (qword_100935DF8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100940398);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v10[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000668C(0xD000000000000026, 0x80000001007F3440, v10);
    *(v7 + 12) = 2082;
    v8._countAndFlagsBits = 0x206E776F6E6B6E75;
    v8._object = 0xEF746C7561666564;
    String.append(_:)(v8);

    v9 = sub_10000668C(0, 0xE000000000000000, v10);

    *(v7 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "📓 %s: An unexpected error occurred: unknown activityType: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for REMCKSharedEntitySyncActivity.ActivityType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for REMCKSharedEntitySyncActivity.ActivityType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1002A112C()
{
  result = qword_1009403D8;
  if (!qword_1009403D8)
  {
    sub_1000F514C(&qword_1009403E0, qword_10079FDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009403D8);
  }

  return result;
}

unint64_t sub_1002A1194()
{
  result = qword_1009403E8;
  if (!qword_1009403E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009403E8);
  }

  return result;
}

uint64_t sub_1002A11E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1002A127C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      a1(v16);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1002A13E0(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10018BA8C();
    Set.Iterator.init(_cocoa:)();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v19 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        a1(&v25);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_10001B860();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1002A162C(void (*a1)(void *), uint64_t a2, unint64_t a3, void (*a4)(void))
{
  v5 = v4;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v7 = ~v10;
    v6 = a3 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(a3 + 64);
    v9 = a3;
  }

  v13 = 0;
  v25 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v13;
  v15 = v8;
  v16 = v13;
  if (v8)
  {
LABEL_12:
    v8 = (v15 - 1) & v15;
    v17 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v18 = *(*(v9 + 56) + v17);
    v19 = *(*(v9 + 48) + v17);

    for (; v19; v16 = v13)
    {
      v26[0] = v19;
      v26[1] = v18;
      a1(v26);

      if (v5)
      {
        break;
      }

      v13 = v16;
      v9 = v25;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v20 = __CocoaDictionary.Iterator.next()();
      if (!v20)
      {
        break;
      }

      v22 = v21;
      v27 = v20;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_dynamicCast();
      v19 = v26[0];
      v27 = v22;
      a4(0);
      swift_dynamicCast();
      v18 = v26[0];
    }

LABEL_19:
    sub_10001B860();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002A1878()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009403F0);
  v1 = sub_100006654(v0, qword_1009403F0);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002A1940(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v130 = a4;
  v131 = a3;
  v122 = a2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v121 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v124 = v116 - v10;
  v126 = type metadata accessor for Date();
  v123 = *(v126 - 8);
  v11 = *(v123 + 64);
  __chkstk_darwin(v126);
  v120 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v125 = v116 - v14;
  __chkstk_darwin(v15);
  v17 = v116 - v16;
  v18 = type metadata accessor for RDUserNotificationType();
  v128 = *(v18 - 8);
  v129 = v18;
  v19 = *(v128 + 64);
  __chkstk_darwin(v18);
  v127 = v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for REMNotificationIdentifier();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 1);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = (v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v4 + 32);
  *v31 = v32;
  (*(v27 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v26, v29);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v31, v26);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  v26 = *a1;
  if ([*a1 isCompleted])
  {
    if (qword_100935E00 == -1)
    {
LABEL_4:
      v34 = type metadata accessor for Logger();
      sub_100006654(v34, qword_1009403F0);
      v35 = v26;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_12;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = [v35 objectID];
      *(v38 + 4) = v40;
      *v39 = v40;
      v41 = "Not presenting reminderAlarm banner for completed reminder. {reminderID: %@}";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v36, v37, v41, v38, 0xCu);
      sub_1000050A4(v39, &unk_100938E70, &unk_100797230);

LABEL_12:

      if (v131)
      {
        v131(0);
      }

      return 0;
    }

LABEL_60:
    swift_once();
    goto LABEL_4;
  }

  v119 = v4;
  v42 = [v26 list];
  v43 = [v42 objectID];

  v44 = [objc_opt_self() siriFoundInAppsListID];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  LOBYTE(v42) = static NSObject.== infix(_:_:)();

  if (v42)
  {
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100006654(v45, qword_1009403F0);
    v46 = v26;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_12;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    v47 = [v46 objectID];
    *(v38 + 4) = v47;
    *v39 = v47;
    v41 = "Not presenting reminderAlarm banner for SiriFoundInApps reminder. {reminderID: %@}";
    goto LABEL_11;
  }

  v49 = v26;
  REMNotificationIdentifier.init(reminder:)();
  v116[1] = REMNotificationIdentifier.requestIdentifier.getter();
  v116[2] = v50;
  (*(v22 + 8))(v25, v21);
  *&v139[9] = *(a1 + 17);
  *v139 = *(a1 + 8);
  v51 = v139[24];
  v52 = v49;
  v53 = (v128 + 104);
  sub_1002A6FF8(v139, aBlock);
  if (v51 > 3)
  {
    v54 = &enum case for RDUserNotificationType.dueDateDeltaAlarm(_:);
  }

  else
  {
    v54 = &enum case for RDUserNotificationType.reminderAlarm(_:);
  }

  v55 = v126;
  v56 = v125;
  v57 = v127;
  REMNotificationIdentifier.init(reminder:)();
  (*v53)(v57, *v54, v129);
  Date.init()();
  v58 = sub_1002D833C(v52, 0, 0);
  UNMutableNotificationContent.setFiresBeforeFirstUnlock(_:)(*(a1 + 34));
  sub_1002DA8FC(v58, a1, v17);
  v59 = v123;
  v61 = v123 + 8;
  v60 = *(v123 + 8);
  v60(v17, v55);
  Date.init()();
  v62 = *v139;
  v118 = v61;
  v117 = v60;
  if (v139[24] <= 1u)
  {
    if (!v139[24])
    {
      goto LABEL_23;
    }

LABEL_26:
    sub_1002A7068(v139);
    goto LABEL_27;
  }

  if (v139[24] == 2)
  {
    goto LABEL_26;
  }

  if (v139[24] == 3)
  {

LABEL_27:
    v69 = 2;
    goto LABEL_37;
  }

LABEL_23:
  v116[0] = v58;
  v63 = *(v59 + 56);
  v63(v124, 1, 1, v55);
  v134 = [v62 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if (swift_dynamicCast())
  {
    sub_100054B6C(v132, aBlock);
    v64 = v136;
    v65 = v137;
    sub_10000F61C(aBlock, v136);
    v66 = v121;
    v67 = v64;
    v68 = v123;
    (*(v65 + 3))(v52, v56, v67, v65);
    if ((*(v68 + 48))(v66, 1, v55) == 1)
    {
      sub_1000050A4(v66, &unk_100938850, qword_100795AE0);
    }

    else
    {
      v70 = *(v68 + 32);
      v71 = v120;
      v70(v120, v66, v55);
      UNMutableNotificationContent.setLastRecurringFireDate(_:)();
      v72 = v124;
      sub_1000050A4(v124, &unk_100938850, qword_100795AE0);
      v70(v72, v71, v55);
      v63(v72, 0, 1, v55);
    }

    sub_10000607C(aBlock);
  }

  else
  {
    v133 = 0;
    memset(v132, 0, sizeof(v132));
    sub_1000050A4(v132, &qword_10093A718, &qword_100797B90);
  }

  v69 = sub_1002A6230(v52, v62, v56, v124);
  if (qword_100935E00 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  v74 = sub_100006654(v73, qword_1009403F0);
  v75 = v52;
  v123 = v74;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    aBlock[0] = v80;
    *v78 = 136446466;
    LOBYTE(v132[0]) = v69;
    v81 = String.init<A>(describing:)();
    v83 = sub_10000668C(v81, v82, aBlock);

    *(v78 + 4) = v83;
    v56 = v125;
    *(v78 + 12) = 2114;
    v84 = [v75 objectID];
    *(v78 + 14) = v84;
    *v79 = v84;
    sub_1002A7068(v139);
    _os_log_impl(&_mh_execute_header, v76, v77, "bannerBehavior determined {bannerBehavior: %{public}s, reminderID: %{public}@}", v78, 0x16u);
    sub_1000050A4(v79, &unk_100938E70, &unk_100797230);

    sub_10000607C(v80);
    v55 = v126;
  }

  else
  {
    sub_1002A7068(v139);
  }

  sub_1000050A4(v124, &unk_100938850, qword_100795AE0);
  v58 = v116[0];
  if (!v69)
  {

    v110 = v75;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *v113 = 138543362;
      v115 = [v110 objectID];
      *(v113 + 4) = v115;
      *v114 = v115;
      _os_log_impl(&_mh_execute_header, v111, v112, "notificationCenter.retainNotification will not be called because lastBannerPresentationDate is too recent {reminderID: %{public}@}", v113, 0xCu);
      sub_1000050A4(v114, &unk_100938E70, &unk_100797230);
    }

    if (v131)
    {
      v131(0);
    }

    v117(v56, v55);
    (*(v128 + 8))(v127, v129);
    return 0;
  }

LABEL_37:
  LODWORD(v124) = v69 == 2;
  LODWORD(v123) = v69 != 2;
  v85 = [v52 objectID];
  v86 = [v85 stringRepresentation];

  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v88;

  if (v139[24] <= 1u)
  {
    v121 = 0xE800000000000000;
    if (v139[24])
    {
      v90 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v90 = 0x6C61726F706D6574;
    }
  }

  else if (v139[24] == 2)
  {
    v121 = 0xE700000000000000;
    v90 = 0x656C6369686576;
  }

  else if (v139[24] == 3)
  {
    v121 = 0x80000001007F35B0;
    v90 = 0xD000000000000011;
  }

  else
  {
    v121 = 0xEC00000061746C65;
    v90 = 0x4465746144657564;
  }

  v120 = v90;
  if (qword_100935E00 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  sub_100006654(v91, qword_1009403F0);

  v92 = v58;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v95 = 136446722;
    *(v95 + 4) = sub_10000668C(v87, v89, aBlock);
    *(v95 + 12) = 2082;
    if (v69 == 2)
    {
      v97 = 78;
    }

    else
    {
      v97 = 89;
    }

    v98 = sub_10000668C(v97, 0xE100000000000000, aBlock);

    *(v95 + 14) = v98;
    *(v95 + 22) = 2112;
    *(v95 + 24) = v92;
    *v96 = v92;
    v99 = v92;
    _os_log_impl(&_mh_execute_header, v93, v94, "notificationCenter.retainNotification {reminderID: %{public}s, skipBanner: %{public}s, content: %@}", v95, 0x20u);
    sub_1000050A4(v96, &unk_100938E70, &unk_100797230);
    v55 = v126;

    swift_arrayDestroy();
    v56 = v125;
  }

  v100 = *(v119 + 16);
  v101 = v122[3];
  v102 = v122[4];
  sub_10000F61C(v122, v101);
  (*(v102 + 16))(v101, v102);
  v103 = swift_allocObject();
  v105 = v130;
  v104 = v131;
  *(v103 + 16) = v131;
  *(v103 + 24) = v105;
  *(v103 + 32) = v87;
  *(v103 + 40) = v89;
  *(v103 + 48) = v69;
  v106 = v121;
  *(v103 + 56) = v120;
  *(v103 + 64) = v106;
  sub_10014D92C(v104);
  v107 = String._bridgeToObjectiveC()();

  v108 = String._bridgeToObjectiveC()();

  v137 = sub_1002A7054;
  v138 = v103;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  v136 = &unk_1008ECD98;
  v109 = _Block_copy(aBlock);

  [v100 retainNotificationWithIdentifier:v107 reference:v108 content:v92 skipBanner:v123 completion:v109];
  _Block_release(v109);

  v117(v56, v55);
  (*(v128 + 8))(v127, v129);
  return v124;
}

void sub_1002A2B0C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  v75 = a7;
  v76 = a8;
  v78 = a6;
  v77 = a5;
  v79 = a2;
  v11 = type metadata accessor for DateComponents();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TimeZone();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_1009403F0);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v80[0] = v31;
      *v30 = 136315138;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = a1;
      v35 = sub_10000668C(v32, v33, v80);

      *(v30 + 4) = v35;
      a1 = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "RDAlarmNotificationConsumer: Unable to post Alarm notification {error: %s}", v30, 0xCu);
      sub_10000607C(v31);
    }

    else
    {
    }

    v36 = v79;
  }

  else
  {
    v65 = a4;
    v37 = v77;
    v66 = v24;
    v67 = v23;
    v68 = v20;
    v71 = v17;
    v69 = v16;
    v70 = v15;
    v72 = v12;
    v74 = a3;
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_1009403F0);
    v39 = v37;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v11;
    v44 = v71;
    v73 = 0;
    if (v42)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v80[0] = v46;
      *v45 = 136446210;
      *(v45 + 4) = sub_10000668C(v65, v39, v80);
      _os_log_impl(&_mh_execute_header, v40, v41, "RDAlarmNotificationConsumer: Posted Alarm notification {reminderID: %{public}s}", v45, 0xCu);
      sub_10000607C(v46);
      v36 = v79;

      a1 = v73;

      v47 = v72;
    }

    else
    {

      v47 = v72;
      v36 = v79;
    }

    if (v78 == 2)
    {
      v48 = v36;
      v49 = objc_opt_self();
      Date.init()();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v66 + 8))(v26, v67);
      v51 = v68;
      static TimeZone.current.getter();
      v52 = TimeZone._bridgeToObjectiveC()().super.isa;
      (*(v44 + 8))(v51, v69);
      v53 = [v49 rem_dateComponentsWithDate:isa timeZone:v52 isAllDay:0];

      v54 = v70;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      DateComponents.hour.getter();
      LOBYTE(v52) = v55;
      (*(v47 + 8))(v54, v43);
      if (v52)
      {
        v56 = v76;

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();

        v59 = os_log_type_enabled(v57, v58);
        v60 = v75;
        if (v59)
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v80[0] = v62;
          *v61 = 136315138;
          *(v61 + 4) = sub_10000668C(v60, v56, v80);
          _os_log_impl(&_mh_execute_header, v57, v58, "Failed to compute current hour when posting analytics to event com.apple.reminders.notification with {type: %s}", v61, 0xCu);
          sub_10000607C(v62);
        }
      }

      else
      {
        type metadata accessor for Analytics();
        sub_1000F5104(&unk_100939240, &unk_100798990);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100791340;
        *(inited + 32) = 1701869940;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = String._bridgeToObjectiveC()();
        *(inited + 56) = 0x4872656767697274;
        *(inited + 64) = 0xEB0000000072756FLL;
        *(inited + 72) = Int._bridgeToObjectiveC()();
        sub_10038D880(inited);
        swift_setDeallocating();
        sub_1000F5104(&unk_100939250, &unk_100795D30);
        swift_arrayDestroy();
        static Analytics.postEvent(_:payload:duration:)();
      }

      v36 = v48;
      a1 = v73;
    }
  }

  if (v36)
  {
    v36(a1);
  }
}

void sub_1002A32C8(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = (aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v6 + 32);
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12, v15);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if (v18)
  {
    if (qword_100935E00 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_1009403F0);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_10000668C(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v21, v22, "notificationCenter.releaseNotification {identifier: %{public}s}", v23, 0xCu);
    sub_10000607C(v24);
  }

  v25 = *(v6 + 16);
  v26 = a3[3];
  v27 = a3[4];
  sub_10000F61C(a3, v26);
  (*(v27 + 16))(v26, v27);
  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();

  if (a4)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100042968;
    aBlock[3] = &unk_1008ECD48;
    a4 = _Block_copy(aBlock);
  }

  [v25 releaseNotificationWithIdentifier:v28 reference:v29 completion:a4];
  _Block_release(a4);
}

uint64_t sub_1002A3604()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  sub_10000CC4C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96) | (*(v0 + 100) << 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1002A3694(uint64_t a1, void *a2)
{
  v275 = a2;
  v4 = type metadata accessor for Date();
  v262 = *(v4 - 8);
  v263 = v4;
  v5 = *(v262 + 64);
  __chkstk_darwin(v4);
  v256 = &v254 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v257 = &v254 - v8;
  v255 = v9;
  __chkstk_darwin(v10);
  v274 = &v254 - v11;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v277 = &v254 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  isa = v16[-1].isa;
  v17 = *(isa + 64);
  __chkstk_darwin(v16);
  v273 = &v254 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = type metadata accessor for REMNotificationIdentifier();
  v280 = *(v285 - 1);
  v19 = *(v280 + 8);
  __chkstk_darwin(v285);
  v278 = &v254 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v284 = &v254 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = (&v254 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v271 = v2;
  v29 = v2[4];
  *v28 = v29;
  (*(v24 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v23, v26);
  v261 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v28, v23);
  if ((v29 & 1) == 0)
  {
LABEL_118:
    __break(1u);
LABEL_119:
    swift_once();
    goto LABEL_44;
  }

  v264 = v16;
  v265 = v13;
  v268 = v12;
  v16 = *(a1 + 16);
  v30 = _swiftEmptyArrayStorage;
  v282 = v16;
  v279 = a1;
  if (v16)
  {
    *&v289 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v16, 0);
    v30 = v289;
    v283 = v280 + 8;
    v31 = (a1 + 64);
    v32 = v16;
    do
    {
      v33 = *(v31 - 3);
      v34 = *(v31 - 2);
      v35 = *(v31 - 1);
      v36 = *v31;
      v37 = *(v31 - 4);
      sub_1001A3944(v33, v34, v35, v36);
      v38 = v284;
      REMNotificationIdentifier.init(reminder:)();
      v287 = REMNotificationIdentifier.requestIdentifier.getter();
      *&v286 = v39;
      sub_1001A39AC(v33, v34, v35, v36);

      (*v283)(v38, v285);
      *&v289 = v30;
      v41 = v30[2];
      v40 = v30[3];
      if (v41 >= v40 >> 1)
      {
        sub_100026EF4((v40 > 1), v41 + 1, 1);
        v30 = v289;
      }

      v31 += 40;
      v30[2] = v41 + 1;
      v42 = &v30[2 * v41];
      v43 = v286;
      v42[4] = v287;
      v42[5] = v43;
      v32 = (v32 - 1);
    }

    while (v32);
    v16 = v282;
  }

  v266 = sub_1001A5660(v30);

  if (v16)
  {
    v44 = 0;
    v45 = (v279 + 66);
    v46 = _swiftEmptyArrayStorage;
    v287 = (v279 + 66);
    while (1)
    {
      v281 = v46;
      v47 = &v45[5 * v44];
      v48 = v44;
      while (1)
      {
        if (v48 >= v16)
        {
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        v44 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_117;
        }

        if (*(v47 - 1))
        {
          goto LABEL_12;
        }

        v49 = *(v47 - 26);
        v50 = *(v47 - 18);
        v51 = *(v47 - 10);
        v52 = *(v47 - 2);
        v53 = *v47;
        v54 = *(v47 - 34);
        sub_1001A3944(v49, v50, v51, v52);
        if (![v54 prefersUrgentPresentationStyleForDateAlarms])
        {
          break;
        }

        sub_1001A39AC(v49, v50, v51, v52);
        v16 = v282;
LABEL_12:
        ++v48;
        v47 += 40;
        if (v44 == v16)
        {
          v46 = v281;
          goto LABEL_24;
        }
      }

      v55 = v281;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v289 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100253968(0, v55[2] + 1, 1);
        v55 = v289;
      }

      v58 = v55[2];
      v57 = v55[3];
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        *&v286 = v58 + 1;
        sub_100253968((v57 > 1), v58 + 1, 1);
        v59 = v286;
        v55 = v289;
      }

      v55[2] = v59;
      v60 = &v55[5 * v58];
      v60[4] = v54;
      v60[5] = v49;
      v60[6] = v50;
      v60[7] = v51;
      *(v60 + 64) = v52;
      *(v60 + 65) = 0;
      *(v60 + 66) = v53;
      v16 = v282;
      v46 = v55;
      v45 = v287;
      if (v44 == v282)
      {
LABEL_24:
        v61 = v46[2];
        if (!v61)
        {
          goto LABEL_31;
        }

LABEL_25:
        *&v289 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v61, 0);
        v62 = v289;
        v283 = v280 + 8;
        v281 = v46;
        v63 = (v46 + 8);
        do
        {
          v64 = *(v63 - 3);
          v65 = *(v63 - 2);
          v66 = *(v63 - 1);
          v67 = *v63;
          v68 = *(v63 - 4);
          sub_1001A3944(v64, v65, v66, v67);
          v69 = v284;
          REMNotificationIdentifier.init(reminder:)();
          v287 = REMNotificationIdentifier.requestIdentifier.getter();
          *&v286 = v70;
          sub_1001A39AC(v64, v65, v66, v67);

          (*v283)(v69, v285);
          *&v289 = v62;
          v72 = v62[2];
          v71 = v62[3];
          if (v72 >= v71 >> 1)
          {
            sub_100026EF4((v71 > 1), v72 + 1, 1);
            v62 = v289;
          }

          v63 += 40;
          v62[2] = v72 + 1;
          v73 = &v62[2 * v72];
          v74 = v286;
          v73[4] = v287;
          v73[5] = v74;
          --v61;
        }

        while (v61);

        v16 = v282;
        goto LABEL_32;
      }
    }
  }

  v46 = _swiftEmptyArrayStorage;
  v61 = _swiftEmptyArrayStorage[2];
  if (v61)
  {
    goto LABEL_25;
  }

LABEL_31:

  v62 = _swiftEmptyArrayStorage;
LABEL_32:
  v287 = sub_1001A5660(v62);

  v75 = v275[3];
  v76 = v275[4];
  sub_10000F61C(v275, v75);
  v259 = (*(v76 + 16))(v75, v76);
  v260 = v77;
  v78 = swift_allocObject();
  v270 = v78;
  *(v78 + 16) = 0;
  v272 = (v78 + 16);
  v79 = swift_allocObject();
  v267 = v79;
  *(v79 + 16) = 0;
  v269 = (v79 + 16);
  v80 = v271[5];
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (v80)
  {
    v82 = v271[5];

    v83 = dispatch_group_create();
    v84 = v272;
    v85 = *v272;
    *v272 = v83;

    if (*v84)
    {
      dispatch_group_enter(*v84);
    }

    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_100006654(v86, qword_1009403F0);
    sub_10000A87C(v275, &v289);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v288[0] = v90;
      *v89 = 136446210;
      v91 = v291;
      v92 = v292;
      sub_10000F61C(&v289, v291);
      v93 = v92[2](v91, v92);
      v95 = v94;
      sub_10000607C(&v289);
      v96 = sub_10000668C(v93, v95, v288);

      *(v89 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v87, v88, "os_transaction INIT {name: com.apple.remindd.RDAlarmNotificationConsumer.consumeAlarms, producer: %{public}s}", v89, 0xCu);
      sub_10000607C(v90);
      v16 = v282;
    }

    else
    {

      sub_10000607C(&v289);
    }

    v97 = os_transaction_create();
    v98 = *v272;
    if (*v272)
    {
      sub_10000A87C(v275, v288);
      v99 = swift_allocObject();
      sub_100054B6C(v288, (v99 + 2));
      v99[7] = v97;
      *&v286 = v97;
      v99[8] = v267;
      v99[9] = v80;
      v292 = sub_1002A6220;
      v293 = v99;
      *&v289 = _NSConcreteStackBlock;
      *(&v289 + 1) = 1107296256;
      v290 = sub_100019200;
      v291 = &unk_1008ECD20;
      v100 = _Block_copy(&v289);

      v101 = v98;
      swift_unknownObjectRetain();

      v102 = v273;
      static DispatchQoS.unspecified.getter();
      v296[0] = _swiftEmptyArrayStorage;
      sub_10000AB38();
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000AB90();
      v103 = v277;
      v104 = v268;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v100);
      swift_unknownObjectRelease();

      (*(v265 + 8))(v103, v104);
      v105 = v102;
      p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
      (*(isa + 8))(v105, v264);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  v295 = _swiftEmptyArrayStorage;
  v294 = _swiftEmptySetSingleton;
  if (p_class_meths[448] != -1)
  {
    goto LABEL_119;
  }

LABEL_44:
  v106 = type metadata accessor for Logger();
  v107 = sub_100006654(v106, qword_1009403F0);
  sub_10000A87C(v275, &v289);
  v108 = v266;
  swift_bridgeObjectRetain_n();
  isa = v107;
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *&v288[0] = swift_slowAlloc();
    *v111 = 136446722;
    v112 = v291;
    v113 = v292;
    sub_10000F61C(&v289, v291);
    v114 = v113[2](v112, v113);
    v116 = v115;
    sub_10000607C(&v289);
    v117 = sub_10000668C(v114, v116, v288);

    *(v111 + 4) = v117;
    *(v111 + 12) = 2080;
    v118 = Set.description.getter();
    v120 = sub_10000668C(v118, v119, v288);

    *(v111 + 14) = v120;
    *(v111 + 22) = 2050;
    v121 = *(v108 + 16);

    *(v111 + 24) = v121;

    _os_log_impl(&_mh_execute_header, v109, v110, "RDAlarmNotificationConsumer {identifier: %{public}s allowedSet: %s, count %{public}ld}", v111, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(&v289);
  }

  sub_10000A87C(v275, &v289);
  v122 = v287;
  swift_bridgeObjectRetain_n();
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    *&v288[0] = swift_slowAlloc();
    *v125 = 136446722;
    v126 = v291;
    v127 = v292;
    sub_10000F61C(&v289, v291);
    v128 = v127[2](v126, v127);
    v130 = v129;
    sub_10000607C(&v289);
    v131 = sub_10000668C(v128, v130, v288);

    *(v125 + 4) = v131;
    *(v125 + 12) = 2080;
    v132 = Set.description.getter();
    v134 = sub_10000668C(v132, v133, v288);

    *(v125 + 14) = v134;
    *(v125 + 22) = 2050;
    v135 = v122[2];

    *(v125 + 24) = v135;

    _os_log_impl(&_mh_execute_header, v123, v124, "RDAlarmNotificationConsumer {identifier: %{public}s createSet: %s, count: %{public}ld}", v125, 0x20u);
    swift_arrayDestroy();

    if (v16)
    {
LABEL_49:
      v277 = (v279 + 32);
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v136 = 0;
      v281 = v280 + 8;
      *&v286 = v287 + 7;
      v273 = _swiftEmptyArrayStorage;
      *&v137 = 136446466;
      v258 = v137;
      while (1)
      {
        v283 = v136;
        v143 = &v277[40 * v136];
        v144 = *v143;
        v145 = *(v143 + 1);
        v146 = *(v143 + 2);
        v147 = *(v143 + 3);
        v148 = v143[32];
        v149 = v143[33];
        LOBYTE(v143) = v143[34];
        v296[0] = v144;
        v296[1] = v145;
        v296[2] = v146;
        v296[3] = v147;
        v297 = v148;
        v298 = v149;
        v299 = v143;
        v150 = v144;
        sub_1001A3944(v145, v146, v147, v148);
        v151 = v278;
        REMNotificationIdentifier.init(reminder:)();
        v152 = REMNotificationIdentifier.requestIdentifier.getter();
        v154 = v153;
        v155 = *v281;
        (*v281)(v151, v285);
        if (v287[2])
        {
          v280 = v145;
          LODWORD(v279) = v148;
          v156 = v287;
          v157 = v287[5];
          Hasher.init(_seed:)();
          String.hash(into:)();
          v158 = Hasher._finalize()();
          v159 = -1 << *(v156 + 32);
          v160 = v158 & ~v159;
          if ((*(v286 + ((v160 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v160))
          {
            v161 = ~v159;
            while (1)
            {
              v162 = (v287[6] + 16 * v160);
              v163 = *v162 == v152 && v162[1] == v154;
              if (v163 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v160 = (v160 + 1) & v161;
              if (((*(v286 + ((v160 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v160) & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            v164 = v150;
            v165 = v284;
            REMNotificationIdentifier.init(reminder:)();
            v166 = REMNotificationIdentifier.requestIdentifier.getter();
            v168 = v167;
            v155(v165, v285);
            v169 = v294;

            LOBYTE(v165) = sub_100240BDC(v166, v168, v169);

            if (v165)
            {

              v170 = Logger.logObject.getter();
              v171 = static os_log_type_t.default.getter();

              LODWORD(v268) = v171;
              v172 = os_log_type_enabled(v170, v171);
              v142 = v282;
              v173 = v280;
              if (v172)
              {
                v174 = swift_slowAlloc();
                v264 = v170;
                v175 = v174;
                *&v289 = swift_slowAlloc();
                v265 = v147;
                *v175 = v258;
                v176 = sub_10000668C(v166, v168, &v289);

                *(v175 + 4) = v176;
                *(v175 + 12) = 2082;

                v177 = Set.description.getter();
                v179 = v178;

                v180 = sub_10000668C(v177, v179, &v289);

                *(v175 + 14) = v180;
                v181 = v264;
                _os_log_impl(&_mh_execute_header, v264, v268, "RDAlarmNotificationConsumer skipping retain on alarm because already retained alarm for reminder in this consumeAlarms() run { identifier: %{public}s identifiersPresentedInThisRun:%{public}s }", v175, 0x16u);
                swift_arrayDestroy();

                sub_1001A39AC(v173, v146, v265, v279);
              }

              else
              {

                sub_1001A39AC(v173, v146, v147, v279);
              }
            }

            else
            {
              v142 = v282;
              if (*v272)
              {
                dispatch_group_enter(*v272);
              }

              v182 = v270;
              *v269 = 1;

              v183 = sub_1002A1940(v296, v275, sub_1002A713C, v182);

              v184 = v279;
              if (v183)
              {
                v273 = v164;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v295 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v295 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v273 = v295;
              }

              swift_beginAccess();
              sub_100378434(v288, v166, v168);
              swift_endAccess();

              sub_1001A39AC(v280, v146, v147, v184);
            }

            goto LABEL_52;
          }

LABEL_62:

          v138 = v280;
          v139 = v146;
          v140 = v147;
          v141 = v279;
        }

        else
        {

          v138 = v145;
          v139 = v146;
          v140 = v147;
          v141 = v148;
        }

        sub_1001A39AC(v138, v139, v140, v141);

        v142 = v282;
LABEL_52:
        v136 = v283 + 1;
        if (v283 + 1 == v142)
        {

          v185 = v273;
          goto LABEL_77;
        }
      }
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(&v289);
    if (v16)
    {
      goto LABEL_49;
    }
  }

  v185 = _swiftEmptyArrayStorage;
LABEL_77:
  v186 = v272;
  swift_beginAccess();
  v187 = v266;
  if (*v186)
  {
    dispatch_group_enter(*v186);
  }

  v188 = v271;
  v189 = v271[2];
  sub_10000A87C(v275, &v289);
  v190 = swift_allocObject();
  v190[2] = v187;
  sub_100054B6C(&v289, (v190 + 3));
  v191 = v270;
  v192 = v267;
  v190[8] = v270;
  v190[9] = v192;
  v190[10] = v188;

  sub_1005260B0(v259, v260, sub_1002A6160, v190);

  v193 = *(v191 + 16);
  if (v193)
  {
    dispatch_group_leave(v193);
  }

  if (!(v185 >> 62))
  {
    if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_83;
    }

LABEL_121:

LABEL_122:
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_121;
  }

LABEL_83:
  v285 = [objc_allocWithZone(REMStore) initWithDaemonController:v271[6]];
  Date.init()();
  if (v185 >> 62)
  {
    v194 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v194 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v273 = v185;
  *&v286 = v185 >> 62;
  if (v194)
  {
    *&v289 = _swiftEmptyArrayStorage;

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v194 < 0)
    {
      __break(1u);
      goto LABEL_125;
    }

    v196 = 0;
    do
    {
      if ((v185 & 0xC000000000000001) != 0)
      {
        v197 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v197 = *(v185 + 8 * v196 + 32);
      }

      v198 = v197;
      ++v196;
      v199 = [v197 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v200 = *(v289 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v194 != v196);
    v201 = v289;
  }

  else
  {

    v201 = _swiftEmptyArrayStorage;
  }

  v203 = v262;
  v202 = v263;
  v204 = v257;
  v205 = (v262 + 16);
  v281 = *(v262 + 16);
  (v281)(v257, v274, v263);

  v206 = Logger.logObject.getter();
  v207 = static os_log_type_t.default.getter();

  v208 = os_log_type_enabled(v206, v207);
  v284 = v201;
  v282 = v205;
  if (v208)
  {
    v209 = swift_slowAlloc();
    *&v289 = swift_slowAlloc();
    *v209 = 136446466;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v210 = Array.description.getter();
    v212 = sub_10000668C(v210, v211, &v289);

    *(v209 + 4) = v212;
    *(v209 + 12) = 2082;
    v213 = Date.description.getter();
    v215 = v214;
    v283 = *(v203 + 8);
    (v283)(v204, v202);
    v216 = sub_10000668C(v213, v215, &v289);

    *(v209 + 14) = v216;
    _os_log_impl(&_mh_execute_header, v206, v207, "Updating lastBannerPresentationDate {reminderIDs: %{public}s, lastBannerPresentationDate: %{public}s}", v209, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v283 = *(v203 + 8);
    (v283)(v204, v202);
  }

  v217 = objc_allocWithZone(REMSaveRequest);
  v218 = [v217 initWithStore:v285];
  [v218 setAuthor:RDNotificationConsumerLastBannerPresentationDateAuthor];
  [v218 setUpdateLastModifiedDates:0];
  v287 = v218;
  [v218 setSyncToCloudKit:0];
  v219 = v273;

  if (v286)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v221 = result;
    if (!result)
    {
LABEL_112:

      sub_10000A87C(v275, &v289);
      v233 = Logger.logObject.getter();
      v234 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v233, v234))
      {
        v235 = swift_slowAlloc();
        v236 = swift_slowAlloc();
        *&v288[0] = v236;
        *v235 = 136446210;
        v237 = v291;
        v238 = v292;
        sub_10000F61C(&v289, v291);
        v239 = v238[2](v237, v238);
        v241 = v240;
        sub_10000607C(&v289);
        v242 = sub_10000668C(v239, v241, v288);

        *(v235 + 4) = v242;
        _os_log_impl(&_mh_execute_header, v233, v234, "os_transaction INIT {name: com.apple.remindd.RDAlarmNotificationConsumer.updateLastBannerPresentationDate, producer: %{public}s}", v235, 0xCu);
        sub_10000607C(v236);
      }

      else
      {

        sub_10000607C(&v289);
      }

      v243 = v281;
      v244 = os_transaction_create();
      v245 = v256;
      v246 = v274;
      v247 = v263;
      v243(v256, v274, v263);
      sub_10000A87C(v275, v288);
      v248 = v262;
      v249 = (*(v262 + 80) + 24) & ~*(v262 + 80);
      v250 = (v255 + v249 + 7) & 0xFFFFFFFFFFFFFFF8;
      v251 = swift_allocObject();
      *(v251 + 16) = v284;
      (*(v248 + 32))(v251 + v249, v245, v247);
      sub_100054B6C(v288, v251 + v250);
      *(v251 + ((v250 + 47) & 0xFFFFFFFFFFFFFFF8)) = v244;
      v292 = sub_1002A6174;
      v293 = v251;
      *&v289 = _NSConcreteStackBlock;
      *(&v289 + 1) = 1107296256;
      v290 = sub_100042968;
      v291 = &unk_1008ECCD0;
      v252 = _Block_copy(&v289);
      swift_unknownObjectRetain();

      v253 = v287;
      [v287 saveWithQueue:v261 completion:v252];
      _Block_release(v252);

      swift_unknownObjectRelease();
      (v283)(v246, v247);
      goto LABEL_122;
    }
  }

  else
  {
    v221 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v221)
    {
      goto LABEL_112;
    }
  }

  if (v221 >= 1)
  {
    v222 = 0;
    v223 = v219 & 0xC000000000000001;
    *&v220 = 138543362;
    v286 = v220;
    do
    {
      if (v223)
      {
        v226 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v226 = *(v219 + 8 * v222 + 32);
      }

      v227 = v226;
      if ([v226 isPhantom])
      {
        v227 = v227;
        v228 = Logger.logObject.getter();
        v229 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          v231 = swift_slowAlloc();
          *v230 = v286;
          v232 = [v227 objectID];
          *(v230 + 4) = v232;
          *v231 = v232;
          _os_log_impl(&_mh_execute_header, v228, v229, "Unable to update lastBannerPresentationDate reminder is Phantom {reminderID: %{public}@}", v230, 0xCu);
          sub_1000050A4(v231, &unk_100938E70, &unk_100797230);
          v219 = v273;

          v225.super.isa = v228;
        }

        else
        {
          v225.super.isa = v227;
          v227 = v228;
        }
      }

      else
      {
        v224 = [v287 updateReminder:v227];
        v225.super.isa = Date._bridgeToObjectiveC()().super.isa;
        [v224 setLastBannerPresentationDate:v225.super.isa];
      }

      ++v222;
    }

    while (v221 != v222);
    goto LABEL_112;
  }

LABEL_125:
  __break(1u);
  return result;
}

void sub_1002A53E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a3 + 16) == 1)
  {
    sub_1002FFEA0();
  }

  sub_1002A6E18(a1);
}

void sub_1002A5444(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = _swiftEmptyArrayStorage;
  v62 = a6;
  v63 = a4;
  v64 = a3;
  if (v12)
  {
    v66[0] = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    v60 = a2;
    v61 = a5;
    v14 = 0;
    v13 = v66[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 request];
      v18 = [v17 identifier];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v66[0] = v13;
      v23 = v13[2];
      v22 = v13[3];
      if (v23 >= v22 >> 1)
      {
        sub_100026EF4((v22 > 1), v23 + 1, 1);
        v13 = v66[0];
      }

      ++v14;
      v13[2] = v23 + 1;
      v24 = &v13[2 * v23];
      v24[4] = v19;
      v24[5] = v21;
    }

    while (v12 != v14);
    a3 = v64;
    a2 = v60;
    a5 = v61;
  }

  v25 = sub_1001A5660(v13);

  if (*(a2 + 16) <= v25[2] >> 3)
  {
    v66[0] = v25;

    sub_10019BAF4(a2);
    v26 = v25;
  }

  else
  {

    v26 = sub_10019C4D4(a2, v25);
  }

  if (qword_100935E00 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_1009403F0);
  sub_10000A87C(a3, v66);
  swift_bridgeObjectRetain_n();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v61 = a5 + 16;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v30 = 136446722;
    v31 = v67;
    v32 = v68;
    sub_10000F61C(v66, v67);
    v33 = (*(v32 + 16))(v31, v32);
    v35 = v34;
    sub_10000607C(v66);
    v36 = sub_10000668C(v33, v35, v65);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2080;
    v37 = Set.description.getter();
    v39 = v38;

    v40 = sub_10000668C(v37, v39, v65);

    *(v30 + 14) = v40;
    *(v30 + 22) = 2050;
    v41 = v25[2];

    *(v30 + 24) = v41;

    _os_log_impl(&_mh_execute_header, v28, v29, "RDAlarmNotificationConsumer {identifier: %{public}s currentSet: %s, count: %{public}ld}", v30, 0x20u);
    swift_arrayDestroy();

    a3 = v64;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v66);
  }

  sub_10000A87C(a3, v66);
  swift_bridgeObjectRetain_n();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v44 = 136446722;
    v45 = v67;
    v46 = v68;
    sub_10000F61C(v66, v67);
    v47 = (*(v46 + 16))(v45, v46);
    v49 = v48;
    sub_10000607C(v66);
    v50 = sub_10000668C(v47, v49, v65);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2080;
    v51 = Set.description.getter();
    v53 = sub_10000668C(v51, v52, v65);

    *(v44 + 14) = v53;
    *(v44 + 22) = 2050;
    v54 = v26[2];

    *(v44 + 24) = v54;

    _os_log_impl(&_mh_execute_header, v42, v43, "RDAlarmNotificationConsumer {identifier: %{public}s removeSet: %s, count: %{public}ld}", v44, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v55 = sub_10000607C(v66);
  }

  __chkstk_darwin(v55);
  v56 = v63;
  v59[2] = v63;
  v59[3] = v57;
  v59[4] = v62;
  v59[5] = a3;
  sub_1002A127C(sub_1002A6FBC, v59, v26);

  swift_beginAccess();
  v58 = *(v56 + 16);
  if (v58)
  {
    dispatch_group_leave(v58);
  }
}

uint64_t sub_1002A5A60(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v9 = a1[1];
  swift_beginAccess();
  v10 = *(a2 + 16);
  if (v10)
  {
    dispatch_group_enter(v10);
  }

  swift_beginAccess();
  *a3 = 1;

  sub_1002A32C8(v8, v9, a5, sub_1002A6FDC, a2);
}

void sub_1002A5B2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  if (v3)
  {
    dispatch_group_leave(v3);
  }
}

void sub_1002A5B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_1009403F0);
    swift_errorRetain();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v16 = 136446466;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v17 = Array.description.getter();
      v19 = sub_10000668C(v17, v18, v47);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = sub_10000668C(v20, v21, v47);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to update lastBannerPresentationDate {reminderIDs: %{public}s, error: %s}", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_1009403F0);
    (*(v8 + 16))(v11, a3, v7);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v26 = 136446466;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v27 = Array.description.getter();
      v29 = sub_10000668C(v27, v28, v47);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      v30 = Date.description.getter();
      v32 = v31;
      (*(v8 + 8))(v11, v7);
      v33 = sub_10000668C(v30, v32, v47);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Updated lastBannerPresentationDate {reminderIDs: %{public}s, lastBannerPresentationDate: %{public}s}", v26, 0x16u);
      swift_arrayDestroy();
      p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }

  if (p_class_meths[448] != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_1009403F0);
  sub_10000A87C(a4, v47);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = v38;
    *v37 = 136446210;
    v39 = v48;
    v40 = v49;
    sub_10000F61C(v47, v48);
    v41 = (*(v40 + 16))(v39, v40);
    v43 = v42;
    sub_10000607C(v47);
    v44 = sub_10000668C(v41, v43, &v46);

    *(v37 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "os_transaction RELEASE {name: com.apple.remindd.RDAlarmNotificationConsumer.updateLastBannerPresentationDate, producer: %{public}s}", v37, 0xCu);
    sub_10000607C(v38);
  }

  else
  {

    sub_10000607C(v47);
  }
}

void sub_1002A6174(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 16);

  sub_1002A5B74(a1, v7, v1 + v4, v1 + v5);
}

uint64_t sub_1002A6230(void *a1, void *a2, char *a3, uint64_t a4)
{
  v114 = a3;
  v119 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v113 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v112 = &v109 - v11;
  __chkstk_darwin(v12);
  v116 = &v109 - v13;
  __chkstk_darwin(v14);
  v110 = &v109 - v15;
  __chkstk_darwin(v16);
  v117 = &v109 - v17;
  __chkstk_darwin(v18);
  v118 = &v109 - v19;
  __chkstk_darwin(v20);
  v22 = &v109 - v21;
  __chkstk_darwin(v23);
  v25 = &v109 - v24;
  v26 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v111 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v109 - v30;
  __chkstk_darwin(v32);
  v34 = &v109 - v33;
  __chkstk_darwin(v35);
  v37 = &v109 - v36;
  v39 = __chkstk_darwin(v38);
  v40 = *(v7 + 56);
  v120 = &v109 - v41;
  v115 = v40;
  v40(v39);
  if (([a2 isSnooze] & 1) == 0)
  {
    sub_10012F78C(a4, v37);
    if ((*(v7 + 48))(v37, 1, v6) != 1)
    {
      v44 = v120;
      sub_1000050A4(v120, &unk_100938850, qword_100795AE0);
      v45 = *(v7 + 32);
      v45(v25, v37, v6);
      v45(v44, v25, v6);
      v115(v44, 0, 1, v6);
      goto LABEL_10;
    }

    sub_1000050A4(v37, &unk_100938850, qword_100795AE0);
  }

  v123 = [a2 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if (swift_dynamicCast())
  {
    sub_100054B6C(v121, v124);
    v42 = v125;
    v43 = v126;
    sub_10000F61C(v124, v125);
    (*(v43 + 8))(v119, v42, v43);
    if ((*(v7 + 48))(v34, 1, v6) == 1)
    {
      sub_1000050A4(v34, &unk_100938850, qword_100795AE0);
      sub_10000607C(v124);
      v44 = v120;
    }

    else
    {
      v46 = v120;
      sub_1000050A4(v120, &unk_100938850, qword_100795AE0);
      v47 = *(v7 + 32);
      v47(v22, v34, v6);
      v48 = v22;
      v44 = v46;
      v47(v46, v48, v6);
      v115(v46, 0, 1, v6);
      sub_10000607C(v124);
    }
  }

  else
  {
    v122 = 0;
    memset(v121, 0, sizeof(v121));
    sub_1000050A4(v121, &qword_10093A718, &qword_100797B90);
    v44 = v120;
  }

LABEL_10:
  sub_10012F78C(v44, v31);
  v49 = *(v7 + 48);
  v50 = v49(v31, 1, v6);
  v51 = v116;
  if (v50 == 1)
  {
    sub_1000050A4(v31, &unk_100938850, qword_100795AE0);
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_1009403F0);
    v53 = a2;
    v54 = v119;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();

    v57 = os_log_type_enabled(v55, v56);
    v58 = v120;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v124[0] = v61;
      *v59 = 138412546;
      *(v59 + 4) = v53;
      *v60 = v53;
      *(v59 + 12) = 2080;
      v62 = v53;
      v63 = [v54 description];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = sub_10000668C(v64, v66, v124);

      *(v59 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v55, v56, "Unable to determine fireDate. An alarm without fireDate shouldn't have reached here. {alarm: %@, reminder: %s}", v59, 0x16u);
      sub_1000050A4(v60, &unk_100938E70, &unk_100797230);

      sub_10000607C(v61);
    }

    sub_1000050A4(v58, &unk_100938850, qword_100795AE0);
    return 2;
  }

  else
  {
    v69 = *(v7 + 32);
    v69(v118, v31, v6);
    v70 = [v119 lastBannerPresentationDate];
    if (v70)
    {
      v71 = v110;
      v72 = v70;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = v111;
      v69(v111, v71, v6);
      v115(v73, 0, 1, v6);
      v74 = v117;
      v69(v117, v73, v6);
      v76 = v113;
      v75 = v114;
    }

    else
    {
      v77 = v111;
      v115(v111, 1, 1, v6);
      v74 = v117;
      static Date.distantPast.getter();
      v78 = v49(v77, 1, v6);
      v76 = v113;
      v75 = v114;
      if (v78 != 1)
      {
        sub_1000050A4(v77, &unk_100938850, qword_100795AE0);
      }
    }

    v79 = v118;
    if (static Date.< infix(_:_:)())
    {
      LODWORD(v119) = static Date.< infix(_:_:)();
    }

    else
    {
      LODWORD(v119) = 0;
    }

    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_100006654(v80, qword_1009403F0);
    v81 = *(v7 + 16);
    v81(v51, v74, v6);
    v82 = v51;
    v83 = v112;
    v81(v112, v79, v6);
    v81(v76, v75, v6);
    v84 = v76;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v124[0] = v115;
      *v87 = 136446978;
      LODWORD(v113) = v86;
      v88 = Date.description.getter();
      v90 = v89;
      v91 = v82;
      v92 = *(v7 + 8);
      v92(v91, v6);
      v93 = sub_10000668C(v88, v90, v124);

      *(v87 + 4) = v93;
      *(v87 + 12) = 2082;
      v94 = Date.description.getter();
      v96 = v95;
      v92(v83, v6);
      v97 = sub_10000668C(v94, v96, v124);

      *(v87 + 14) = v97;
      *(v87 + 22) = 2082;
      v98 = Date.description.getter();
      v100 = v99;
      v92(v84, v6);
      v101 = sub_10000668C(v98, v100, v124);

      *(v87 + 24) = v101;
      *(v87 + 32) = 2082;
      v102 = v120;
      if (v119)
      {
        v103 = 89;
      }

      else
      {
        v103 = 78;
      }

      v104 = sub_10000668C(v103, 0xE100000000000000, v124);

      *(v87 + 34) = v104;
      _os_log_impl(&_mh_execute_header, v85, v113, "allowBanner? {lastBannerPresentationDate: %{public}s, fireDate: %{public}s, now: %{public}s, showBanner: %{public}s}", v87, 0x2Au);
      swift_arrayDestroy();

      v79 = v118;
    }

    else
    {

      v105 = v82;
      v92 = *(v7 + 8);
      v92(v84, v6);
      v92(v83, v6);
      v92(v105, v6);
      v102 = v120;
    }

    v106 = v117;
    Date.timeIntervalSince(_:)();
    v108 = v107;
    v92(v106, v6);
    v92(v79, v6);
    sub_1000050A4(v102, &unk_100938850, qword_100795AE0);
    if (v108 >= 10.0)
    {
      if (v119)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }
}

void sub_1002A6E18(uint64_t a1)
{
  if (qword_100935E00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_1009403F0);
  sub_10000A87C(a1, v14);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = v15;
    v8 = v16;
    sub_10000F61C(v14, v15);
    v9 = (*(v8 + 16))(v7, v8);
    v11 = v10;
    sub_10000607C(v14);
    v12 = sub_10000668C(v9, v11, &v13);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "os_transaction RELEASE {name: com.apple.remindd.RDAlarmNotificationConsumer.consumeAlarms, producer: %{public}s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  else
  {

    sub_10000607C(v14);
  }
}

unint64_t sub_1002A70D0()
{
  result = qword_1009404F0;
  if (!qword_1009404F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009404F0);
  }

  return result;
}

id REMCDSavedReminder.parentSavedReminderObjectID.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [v1 parentSavedReminderIdentifier];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v10, v6, v2);
  type metadata accessor for REMCDSavedReminder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = [ObjCClassFromMetadata objectIDWithUUID:isa];

  (*(v3 + 8))(v10, v2);
  return v15;
}

uint64_t static REMCDSavedReminder.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008E2A28);
  sub_100034610(&unk_1008E2A48);
  return v0;
}

Swift::Bool __swiftcall REMCDSavedReminder.isConnected(toAccountObject:)(NSMutableDictionary toAccountObject)
{
  v3 = [v1 remObjectID];
  if (v3)
  {
    v4 = v3;
    if ([(objc_class *)toAccountObject.super.super.isa objectForKeyedSubscript:v3])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {

        LOBYTE(v3) = v12 == 1;
        return v3;
      }
    }

    else
    {
      sub_1000050A4(v15, &qword_100939ED0, &qword_100791B10);
    }

    v5 = v4;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)toAccountObject.super.super.isa setObject:isa forKeyedSubscript:v5];

    v7 = [v1 template];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isConnectedToAccountObject:toAccountObject.super.super.isa];

      *&v15[0] = v9;
      type metadata accessor for REMObjectIsConnectedState(0);
      v10 = v5;
      [(objc_class *)toAccountObject.super.super.isa setObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() forKeyedSubscript:v10];

      swift_unknownObjectRelease();
      LOBYTE(v3) = v9;
    }

    else
    {

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}
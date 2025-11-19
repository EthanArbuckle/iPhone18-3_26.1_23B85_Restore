uint64_t sub_10001C16C()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[13];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10001C1D8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 160) = a2;
  *(v4 + 168) = v3;
  *(v4 + 192) = a3;
  *(v4 + 152) = a1;
  return _swift_task_switch(sub_10001C200, 0, 0);
}

uint64_t sub_10001C200()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = (v0 + 80);
  v4 = *(v1 + 160);
  v5 = *(v1 + 192);
  v6 = *(v1 + 152);
  *(*(v1 + 168) + 48) = v6;
  v7 = [objc_opt_self() sharedManager];
  *(v1 + 176) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5 & 1;
  *(v1 + 112) = sub_10002D484;
  *(v1 + 120) = v8;
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_10001ACA8;
  *(v1 + 104) = &unk_100045BA0;
  v9 = _Block_copy(v3);
  *(v1 + 184) = v9;
  v10 = *(v1 + 120);

  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_10001C3D4;
  v11 = swift_continuation_init();
  *(v1 + 136) = sub_1000061F4(&qword_100049E78, &unk_100038BE0);
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_100019108;
  *(v1 + 104) = &unk_100045BC8;
  *(v1 + 112) = v11;
  [v7 transactionWithBlock:v9 completion:v3];

  return _swift_continuation_await(v2);
}

uint64_t sub_10001C3D4()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10001C4B4, 0, 0);
}

uint64_t sub_10001C4B4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

void sub_10001C524(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v8 = *(v3 + 8);
  v8(v6, v2);
  [a1 setStartDate:isa];

  [a1 totalDuration];
  Date.init(timeIntervalSinceNow:)();
  v9 = Date._bridgeToObjectiveC()().super.isa;
  v8(v6, v2);
  [a1 setEndDate:v9];
}

void sub_10001C65C(void (*a1)(void), const char *a2)
{
  v28 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  a1();
  URL.path(percentEncoded:)(1);
  v10 = *(v4 + 8);
  v10(v7, v3);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v9 fileExistsAtPath:v11];

  if (v12)
  {
    v13 = [v8 defaultManager];
    a1();
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v10(v7, v3);
    v29 = 0;
    v17 = [v13 removeItemAtURL:v16 error:&v29];

    v18 = v29;
    if (v17)
    {

      v19 = v18;
    }

    else
    {
      v27[1] = v29;
      v20 = v29;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100049C18 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100004274(v21, qword_10004C088);
      swift_errorRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, v28, v24, 0xCu);
        sub_100010EB8(v25, &qword_100049E70, &qword_100038FA0);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10001CA24()
{
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 snapshot];

  v3 = [v2 consent];
  if ((v3 - 2) < 2)
  {
    v13 = swift_task_alloc();
    v0[4] = v13;
    *v13 = v0;
    v13[1] = sub_10001CE0C;
    v14 = v0[2];
    v15 = 6;
  }

  else
  {
    if (v3 != 1)
    {
      if (v3)
      {
        if (qword_100049C18 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_100004274(v19, qword_10004C088);
        v5 = Logger.logObject.getter();
        v20 = static os_log_type_t.fault.getter();
        if (!os_log_type_enabled(v5, v20))
        {
          goto LABEL_18;
        }

        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = v3;
        v8 = "Unknown consent: %lu";
        v9 = v20;
        v10 = v5;
        v11 = v21;
        v12 = 12;
      }

      else
      {
        if (qword_100049C18 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_100004274(v4, qword_10004C088);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.fault.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_18;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Collection completed but consent is none";
        v9 = v6;
        v10 = v5;
        v11 = v7;
        v12 = 2;
      }

      _os_log_impl(&_mh_execute_header, v10, v9, v8, v11, v12);

LABEL_18:

      v22 = v0[1];

      return v22();
    }

    v16 = swift_task_alloc();
    v0[3] = v16;
    *v16 = v0;
    v16[1] = sub_10001CD18;
    v17 = v0[2];
    v15 = 5;
  }

  return sub_10001C1D8(v15, 0, 1);
}

uint64_t sub_10001CD18()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001CE0C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001CF00(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = type metadata accessor for Date();
  v2[33] = v3;
  v4 = *(v3 - 8);
  v2[34] = v4;
  v5 = *(v4 + 64) + 15;
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_10001CFC0, 0, 0);
}

uint64_t sub_10001CFC0()
{
  if (qword_100049C18 != -1)
  {
LABEL_17:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004274(v1, qword_10004C088);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    v5 = [objc_opt_self() sharedManager];
    v6 = [v5 snapshot];

    v7 = [v6 retriesRemaining];
    *(v4 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrying bug session; %ld retries remaining", v4, 0xCu);
  }

  v8 = v0[32];

  swift_beginAccess();
  v9 = v8[8];
  v8[8] = &_swiftEmptyDictionarySingleton;

  v10 = v8[19];
  sub_100013C84();
  swift_beginAccess();
  v11 = v8[17];
  v12 = -1;
  v13 = -1 << *(v11 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v11 + 64);
  v15 = (63 - v13) >> 6;
  v16 = v8[17];

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_11:
      v19 = v0[31];
      v20 = *(*(v11 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v14)))));
      sub_10001D5DC(v20, v19);

      v14 &= v14 - 1;
      v17 = v18;
      if (!v14)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v18);
    ++v17;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v21 = [objc_opt_self() sharedManager];
  v0[36] = v21;
  v0[22] = sub_10001D81C;
  v0[23] = 0;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10001ACA8;
  v0[21] = &unk_100045BF0;
  v22 = _Block_copy(v0 + 18);
  v0[37] = v22;
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_10001D3FC;
  v23 = swift_continuation_init();
  v0[17] = sub_1000061F4(&qword_100049E78, &unk_100038BE0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100019108;
  v0[13] = &unk_100045C18;
  v0[14] = v23;
  [v21 transactionWithBlock:v22 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001D3FC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10001D4DC, 0, 0);
}

uint64_t sub_10001D4DC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);

  _Block_release(v1);
  v3 = [v2 endDate];
  if (v3)
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 256);
    v6 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000C1AC(*(v0 + 256), *(v0 + 280));
      swift_unknownObjectRelease();
    }

    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    v9 = *(v0 + 264);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
  }

  v10 = *(v0 + 280);

  v11 = *(v0 + 8);

  return v11();
}

id sub_10001D5DC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (a2 >> 62)
  {
LABEL_17:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
LABEL_3:
      v19 = v3;
      v6 = 0;
      v3 = a2 & 0xC000000000000001;
      v20 = v5;
      do
      {
        if (v3)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(a2 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if ([v7 retry])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v10 = v3;
          v11 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v3 = v10;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v5 = v20;
        }

        else
        {
        }

        ++v6;
      }

      while (v9 != v5);
      v3 = v19;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
    {
      v12 = _swiftEmptyArrayStorage[2];
      if (v12)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

LABEL_34:
  while (1)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      break;
    }

LABEL_21:
    v13 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_33;
        }

        v14 = _swiftEmptyArrayStorage[v13 + 4];
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (sub_10002FA1C(v14))
      {
        v17 = sub_10002FF68(v15);

        if (v3)
        {
        }

        v15 = v17;
      }

      ++v13;
      if (v16 == v12)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

LABEL_35:

  return sub_100030AFC();
}

char *sub_10001D81C(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setStatus:3];
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v8 = *(v3 + 8);
  v8(v6, v2);
  [a1 setStartDate:isa];

  [a1 totalDuration];
  Date.init(timeIntervalSinceNow:)();
  v9 = Date._bridgeToObjectiveC()().super.isa;
  v8(v6, v2);
  [a1 setEndDate:v9];

  result = [a1 retriesRemaining];
  if (!__OFSUB__(result, 1))
  {
    return [a1 setRetriesRemaining:result - 1];
  }

  __break(1u);
  return result;
}

void sub_10001D994()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_100023880(v22), (v5 & 1) == 0))
  {

    sub_10002D5D4(v22);
LABEL_14:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_15;
  }

  sub_10000D268(*(v3 + 56) + 32 * v4, &v23);
  sub_10002D5D4(v22);

  if (!*(&v24 + 1))
  {
LABEL_15:
    sub_100010EB8(&v23, &qword_100049EE8, &qword_100038920);
    goto LABEL_16;
  }

  sub_10001256C(0, &qword_10004A360, ELSSnapshot_ptr);
  if (swift_dynamicCast())
  {
    v6 = v22[0];
    if (qword_100049C18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100004274(v7, qword_10004C088);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22[0] = v12;
      *v11 = 136315138;
      v13 = [objc_opt_self() statusToString:{-[NSObject status](v8, "status")}];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_100031FE8(v14, v16, v22);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "ELS status updated to %s", v11, 0xCu);
      sub_10000D154(v12);
    }

    *(v1 + 48) = [v8 status];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = sub_1000158B0();
      sub_10000BF04(v1, v18);
      swift_unknownObjectRelease();
    }

    sub_100019ADC([v8 status]);
    goto LABEL_20;
  }

LABEL_16:
  if (qword_100049C18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100004274(v19, qword_10004C088);
  v8 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v8, v20, "No snapsnot in ELSDidUpdateStatus notification", v21, 2u);
  }

LABEL_20:
}

void sub_10001DE24()
{
  v0 = type metadata accessor for TargetDevice.DeviceType();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10001DF40();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001DF40()
{
  if (!qword_10004A230)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10004A230);
    }
  }
}

uint64_t sub_10001DF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  *v5 = v4;
  v5[1] = sub_10001E02C;

  return sub_10001E564();
}

uint64_t sub_10001E02C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001E160, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10001E160()
{
  v37 = v0;
  if (qword_100049C18 != -1)
  {
LABEL_24:
    swift_once();
  }

  v1 = *(v0 + 56);
  v35 = type metadata accessor for Logger();
  sub_100004274(v35, qword_10004C088);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to reconnect to bug sessions: %@", v5, 0xCu);
    sub_100010EB8(v6, &qword_100049E70, &qword_100038FA0);
  }

  v8 = *(v0 + 40);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v0 + 56);
    v10 = *(v0 + 40);
    swift_errorRetain();
    sub_10000CAB0(v10, v9, 1);
    swift_unknownObjectRelease();
  }

  v11 = *(v0 + 40);
  v33 = v0;
  swift_beginAccess();
  v12 = *(v11 + 136);
  v13 = v12 + 64;
  v14 = -1;
  v15 = -1 << *(v12 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v0 = v14 & *(v12 + 64);
  v16 = (63 - v15) >> 6;

  v17 = 0;
  v34 = v12;
  while (v0)
  {
LABEL_15:
    v19 = __clz(__rbit64(v0));
    v0 &= v0 - 1;
    v20 = *(*(v12 + 56) + ((v17 << 9) | (8 * v19)));
    v21 = *&v20[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
    if (v21)
    {
      v22 = qword_100049BF8;
      v23 = v20;
      v24 = v21;
      if (v22 != -1)
      {
        swift_once();
      }

      sub_100004274(v35, qword_10004C028);
      v25 = v23;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v36 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_100031FE8(*&v25[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v25[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v36);
        _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s] Canceling bug session", v28, 0xCu);
        sub_10000D154(v29);
      }

      v12 = v34;
      [v24 cancel];
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v18 >= v16)
    {
      break;
    }

    v0 = *(v13 + 8 * v18);
    ++v17;
    if (v0)
    {
      v17 = v18;
      goto LABEL_15;
    }
  }

  v30 = *(v33 + 56);

  v31 = *(v33 + 8);

  return v31();
}

uint64_t sub_10001E584()
{
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 snapshot];

  v3 = [v2 targetDevices];
  if (v3)
  {
    sub_10001256C(0, &qword_100049E88, DEDDevice_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v0[6] = v4;

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_10001E6DC;
    v6 = v0[5];

    return sub_100019F2C(v4);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10001E6DC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10001F208;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10001E7F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10001E7F8()
{
  v46 = v0;
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 136);
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v8 = *(v1 + 136);

  v9 = 0;
  v41 = v2;
  while (v6)
  {
LABEL_11:
    v12 = *(*(v2 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 sharedInstance];
    v16 = *&v14[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id];
    v43 = *&v14[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8];
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 hasRecentlyFinishedSessionWithIdentifier:v17];

    if (v18)
    {
      if (qword_100049C18 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100004274(v19, qword_10004C088);
      v20 = v14;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v42 = v14;
        v24 = swift_slowAlloc();
        v45 = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_100031FE8(v16, v43, &v45);
        _os_log_impl(&_mh_execute_header, v21, v22, "Bug session %{public}s is finished; dropping", v23, 0xCu);
        sub_10000D154(v24);
        v14 = v42;

        v2 = v41;
      }

      v10 = *(v44 + 40);
      sub_10001F26C(v20);
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  v25 = *(v44 + 40);

  if (sub_100015A60())
  {
    v26 = swift_task_alloc();
    *(v44 + 72) = v26;
    *v26 = v44;
    v26[1] = sub_10001EC98;
    v27 = *(v44 + 40);

    sub_10001F490(5.0);
  }

  else
  {
    v28 = *(*(v44 + 40) + 136);
    *(v44 + 80) = v28;
    v29 = *(v28 + 32);
    *(v44 + 128) = v29;
    v30 = -1;
    v31 = -1 << v29;
    if (-(-1 << v29) < 64)
    {
      v30 = ~(-1 << -v31);
    }

    v32 = v30 & *(v28 + 64);

    if (v32)
    {
      v34 = 0;
LABEL_27:
      *(v44 + 88) = v32;
      *(v44 + 96) = v34;
      v36 = *(*(v33 + 56) + ((v34 << 9) | (8 * __clz(__rbit64(v32)))));
      *(v44 + 104) = v36;
      v37 = v36;
      v38 = swift_task_alloc();
      *(v44 + 112) = v38;
      *v38 = v44;
      v38[1] = sub_10001EF34;
      v39 = *(v44 + 40);

      sub_10001F7C0(v37, v39);
    }

    else
    {
      v35 = 0;
      while (((63 - v31) >> 6) - 1 != v35)
      {
        v34 = v35 + 1;
        v32 = *(v33 + 8 * v35++ + 72);
        if (v32)
        {
          goto LABEL_27;
        }
      }

      v40 = *(v44 + 8);

      v40();
    }
  }
}

uint64_t sub_10001EC98()
{
  v2 = *(*v1 + 72);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10001EDC8, 0, 0);
  }
}

uint64_t sub_10001EDC8()
{
  v1 = *(*(v0 + 40) + 136);
  *(v0 + 80) = v1;
  v2 = *(v1 + 32);
  *(v0 + 128) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 88) = v5;
    *(v0 + 96) = v7;
    v9 = *(*(v6 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    *(v0 + 104) = v9;
    v10 = v9;
    v11 = swift_task_alloc();
    *(v0 + 112) = v11;
    *v11 = v0;
    v11[1] = sub_10001EF34;
    v12 = *(v0 + 40);

    return sub_10001F7C0(v10, v12);
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10001EF34()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_10001F19C;
  }

  else
  {
    v3 = sub_10001F048;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10001F048()
{
  v1 = *(v0 + 96);
  v2 = (*(v0 + 88) - 1) & *(v0 + 88);
  if (v2)
  {
    v3 = *(v0 + 80);
LABEL_7:
    *(v0 + 88) = v2;
    *(v0 + 96) = v1;
    v5 = *(*(v3 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v2)))));
    *(v0 + 104) = v5;
    v6 = v5;
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_10001EF34;
    v8 = *(v0 + 40);

    sub_10001F7C0(v6, v8);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 80);
      if (v4 >= (((1 << *(v0 + 128)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 8);

    v9();
  }
}

uint64_t sub_10001F19C()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[15];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10001F208()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

void sub_10001F26C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = *(a1 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id);
  v9 = *(a1 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8);
  swift_beginAccess();
  v10 = sub_100032624(v8, v9);
  swift_endAccess();

  if (!*(*(v2 + 136) + 16))
  {
    if (qword_100049C18 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100004274(v11, qword_10004C088);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Last bug session was dropped", v14, 2u);
    }

    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v2;

    sub_1000155B0(0, 0, v7, &unk_100038D98, v16);
  }
}

uint64_t sub_10001F490(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_10001F4B4, 0, 0);
}

uint64_t sub_10001F4B4()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_10001F5B0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000025, 0x800000010003A170, sub_10002D878, v3, &type metadata for () + 8);
}

uint64_t sub_10001F5B0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_10001F75C;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_10001F6CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001F6CC()
{
  v1 = [objc_opt_self() sharedInstance];
  [v1 stopDiscovery];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001F75C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_10001F7C0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10001F854;

  return sub_10002EA94();
}

uint64_t sub_10001F854()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001F988, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10001F988()
{
  v27 = v0;
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 snapshot];

  v3 = [v2 consent];
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (qword_100049C18 != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    sub_100004274(v5, qword_10004C088);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[2];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100031FE8(*(v9 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id), *(v9 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8), v26);
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to reconnect to %{public}s; dropping", v10, 0xCu);
      sub_10000D154(v11);
    }

    v12 = v0[5];
    v13 = v0[3];
    sub_10001F26C(v0[2]);

    v14 = v0[1];
  }

  else
  {
    if (qword_100049C18 != -1)
    {
      swift_once();
    }

    v15 = v0[2];
    v16 = type metadata accessor for Logger();
    sub_100004274(v16, qword_10004C088);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[2];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_100031FE8(*(v20 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id), *(v20 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8), v26);
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to reconnect to %{public}s", v21, 0xCu);
      sub_10000D154(v22);
    }

    v23 = v0[5];
    swift_willThrow();
    v14 = v0[1];
    v24 = v0[5];
  }

  return v14();
}

uint64_t sub_10001FCB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CFEC;

  return sub_10001C1D8(8, 0, 1);
}

size_t sub_10001FD50(unint64_t a1, void (*a2)(unint64_t *), uint64_t a3)
{
  v22 = type metadata accessor for TargetDevice();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v22);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
LABEL_13:
    a2(v11);
  }

  v21 = a1;
  v23 = &_swiftEmptyArrayStorage;
  result = sub_1000284A8(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v19[1] = a3;
    v20 = a2;
    v13 = 0;
    v11 = v23;
    v14 = v21;
    v15 = v21 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v14 + 8 * v13 + 32);
      }

      sub_100014768(v16, v9);
      v23 = v11;
      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        sub_1000284A8(v17 > 1, v18 + 1, 1);
        v14 = v21;
        v11 = v23;
      }

      ++v13;
      v11[2] = v18 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v9, v22);
    }

    while (v10 != v13);
    a2 = v20;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001FF48(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v77 = a1;
  v6 = type metadata accessor for TargetDevice.DeviceType();
  v85 = *(v6 - 8);
  v7 = v85[8];
  v8 = __chkstk_darwin(v6);
  v97 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v92 = &v75 - v11;
  __chkstk_darwin(v10);
  v13 = &v75 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v95 = result;
  if (!result)
  {
    return result;
  }

  v98 = v13;
  if (qword_100049C18 != -1)
  {
LABEL_43:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100004274(v15, qword_10004C088);
  v16 = v77;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v76 = a3;
  v75 = a4;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v101[0] = v21;
    *v20 = 136315138;
    sub_10001256C(0, &qword_100049E88, DEDDevice_ptr);
    v22 = Array.description.getter();
    v24 = sub_100031FE8(v22, v23, v101);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Discovered devices: %s", v20, 0xCu);
    sub_10000D154(v21);
  }

  v101[0] = &_swiftEmptyArrayStorage;
  if (v16 >> 62)
  {
    a3 = _CocoaArrayWrapper.endIndex.getter();
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_45:
    v46 = &_swiftEmptyArrayStorage;
    if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_46;
  }

  a3 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a3)
  {
    goto LABEL_45;
  }

LABEL_7:
  a4 = 0;
  v90 = v16 & 0xFFFFFFFFFFFFFF8;
  v91 = v16 & 0xC000000000000001;
  v87 = v16 + 32;
  v84 = enum case for TargetDevice.DeviceType.unknown(_:);
  v89 = (v85 + 13);
  v80 = enum case for TargetDevice.DeviceType.reality(_:);
  v83 = enum case for TargetDevice.DeviceType.audioAccessory(_:);
  v79 = enum case for TargetDevice.DeviceType.watch(_:);
  v82 = enum case for TargetDevice.DeviceType.appleTV(_:);
  v81 = enum case for TargetDevice.DeviceType.iOS(_:);
  v88 = (v85 + 4);
  v96 = v85 + 2;
  v99 = (v85 + 1);
  v78 = enum case for TargetDevice.DeviceType.mac(_:);
  v25 = v98;
  v86 = a3;
  do
  {
    while (1)
    {
      if (v91)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a4 >= *(v90 + 16))
        {
          goto LABEL_42;
        }

        v26 = *(v87 + 8 * a4);
      }

      v27 = v26;
      v28 = __OFADD__(a4++, 1);
      if (v28)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v29 = sub_10002B848();
      v30 = [v27 deviceType];
      if (v30 > 3)
      {
        if (v30 > 5)
        {
          v31 = v83;
          if (v30 != 6)
          {
            v31 = v80;
            if (v30 != 7)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          v31 = v82;
          if (v30 != 4)
          {
            v31 = v79;
          }
        }
      }

      else if (v30 > 1)
      {
        v32 = v30 == 2 || v30 == 3;
        v31 = v81;
        if (!v32)
        {
LABEL_28:
          v31 = v84;
        }
      }

      else
      {
        v31 = v84;
        if (v30)
        {
          v31 = v78;
          if (v30 != 1)
          {
            goto LABEL_28;
          }
        }
      }

      v33 = v92;
      (*v89)(v92, v31, v6);
      (*v88)(v25, v33, v6);
      if (v29[2])
      {
        break;
      }

      (*v99)(v25, v6);
      if (a4 == a3)
      {
        goto LABEL_39;
      }
    }

    v93 = v27;
    v94 = a4;
    v34 = v29[5];
    sub_10002D77C(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(v29 + 32);
    v37 = v35 & ~v36;
    if ((*(v29 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
    {
      v38 = ~v36;
      v39 = v85[9];
      v40 = v85[2];
      while (1)
      {
        v41 = v97;
        v40(v97, v29[6] + v39 * v37, v6);
        sub_10002D77C(&qword_10004A3D8, &type metadata accessor for TargetDevice.DeviceType);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        v43 = *v99;
        (*v99)(v41, v6);
        if (v42)
        {
          break;
        }

        v37 = (v37 + 1) & v38;
        v25 = v98;
        if (((*(v29 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v44 = v98;
      v43(v98, v6);
      v25 = v44;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v45 = *(v101[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
LABEL_34:

      (*v99)(v25, v6);
    }

    a3 = v86;
    a4 = v94;
  }

  while (v94 != v86);
LABEL_39:
  v46 = v101[0];
  if ((v101[0] & 0x8000000000000000) != 0)
  {
LABEL_71:
    while (2)
    {
      v47 = _CocoaArrayWrapper.endIndex.getter();
      if (!v47)
      {
        goto LABEL_72;
      }

LABEL_48:
      v48 = 0;
      v98 = v46;
      v99 = (v46 & 0xC000000000000001);
LABEL_51:
      if (v99)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v48 >= *(v46 + 16))
        {
          goto LABEL_70;
        }

        v52 = *(v46 + 8 * v48 + 32);
      }

      v53 = v52;
      v54 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        continue;
      }

      break;
    }

    v46 = v47;
    v55 = [v52 identifier];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = v95;
    swift_beginAccess();
    v60 = v53;
    v61 = *(v59 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = *(v59 + 144);
    v63 = v100;
    *(v59 + 144) = 0x8000000000000000;
    v65 = sub_1000238C4(v56, v58);
    v66 = v63[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_68;
    }

    v69 = v64;
    if (v63[3] >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v64 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        sub_10002609C(&qword_10004A3E0, &qword_100038C60);
        if ((v69 & 1) == 0)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      sub_10002482C(v68, isUniquelyReferenced_nonNull_native, &qword_10004A3E0, &qword_100038C60);
      v70 = sub_1000238C4(v56, v58);
      if ((v69 & 1) != (v71 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v65 = v70;
      if ((v69 & 1) == 0)
      {
LABEL_63:
        v49 = v100;
        v100[(v65 >> 6) + 8] |= 1 << v65;
        v72 = (v49[6] + 16 * v65);
        *v72 = v56;
        v72[1] = v58;
        *(v49[7] + 8 * v65) = v60;
        v73 = v49[2];
        v28 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v28)
        {
          goto LABEL_69;
        }

        v49[2] = v74;
        goto LABEL_50;
      }
    }

    v49 = v100;
    v50 = v100[7];
    v51 = *(v50 + 8 * v65);
    *(v50 + 8 * v65) = v60;

LABEL_50:
    *(v95 + 144) = v49;
    swift_endAccess();

    ++v48;
    v47 = v46;
    v32 = v54 == v46;
    v46 = v98;
    if (v32)
    {
      goto LABEL_72;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((v46 & 0x4000000000000000) != 0)
  {
    goto LABEL_71;
  }

  v47 = *(v46 + 16);
  if (v47)
  {
    goto LABEL_48;
  }

LABEL_72:
  v76(v46);
}

uint64_t sub_100020898(uint64_t a1, uint64_t a2, double a3)
{
  v27 = a2;
  v25 = a1;
  v5 = sub_1000061F4(&qword_10004A478, &qword_100038D78);
  v6 = *(v5 - 8);
  v24 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v26 = &v24 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = *(v6 + 16);
  v15(v8, a1, v5);
  v16 = *(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a3;
  *(v17 + 40) = v13;
  v18 = *(v6 + 32);
  v19 = v5;
  v18(v17 + ((v16 + 48) & ~v16), v8, v5);

  v20 = sub_100011ED0(0, 0, v26, &unk_100038D88, v17);
  v15(v8, v25, v19);
  v21 = (v16 + 32) & ~v16;
  v22 = swift_allocObject();
  *(v22 + 16) = v13;
  *(v22 + 24) = v20;
  v18(v22 + v21, v8, v19);

  sub_100021088(sub_10002DB58, v22);
}

uint64_t sub_100020B6C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  *(v6 + 72) = a1;
  return _swift_task_switch(sub_100020B90, 0, 0);
}

uint64_t sub_100020B90(unint64_t a1)
{
  v3 = *(v1 + 72) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v1 + 96) = v6;
  *v6 = v1;
  v6[1] = sub_100020C78;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100020C78()
{
  v2 = *(*v1 + 96);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100020DA8, 0, 0);
  }
}

uint64_t sub_100020DA8()
{
  if (qword_100049C18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100004274(v1, qword_10004C088);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Device discovery timed out after %f seconds", v5, 0xCu);
  }

  v6 = v0[10];

  swift_beginAccess();
  if ((*(v6 + 16) & 1) == 0)
  {
    v7 = v0[10];
    v8 = v0[11];
    swift_beginAccess();
    *(v7 + 16) = 1;
    v9 = type metadata accessor for SessionError();
    sub_10002D77C(&qword_100049E80, &type metadata accessor for SessionError);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, enum case for SessionError.deviceDiscoveryTimedOut(_:), v9);
    v0[8] = v10;
    sub_1000061F4(&qword_10004A478, &qword_100038D78);
    CheckedContinuation.resume(throwing:)();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100020FC8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a1 + 16) = 1;
    sub_1000061F4(&qword_10004A440, &qword_100038D08);
    Task.cancel()();
    sub_1000061F4(&qword_10004A478, &qword_100038D78);
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

void sub_100021088(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedManager];
  v5 = [v4 snapshot];

  v6 = [v5 targetDevices];
  if (v6)
  {
    sub_10001256C(0, &qword_100049E88, DEDDevice_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v9 = objc_opt_self();

  v10 = [v9 sharedInstance];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = sub_10002DBE0;
  v12[4] = v8;
  v14[4] = sub_100010328;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10000D0E0;
  v14[3] = &unk_100045E20;
  v13 = _Block_copy(v14);

  [v10 discoverDevicesWithCompletion:v13];
  _Block_release(v13);
}

void sub_1000212A4(unint64_t a1, unint64_t a2, void (*a3)(void))
{
  if (a2 >> 62)
  {
    goto LABEL_35;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v5 = 0;
    v6 = a2 & 0xC000000000000001;
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
    v8 = a2 + 32;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = a1 & 0xC000000000000001;
    v11 = a1 >> 62;
    v12 = &selRef_clearPendingFollowUpItems_;
    v36 = v4;
    v37 = a2;
    v34 = a2 & 0xFFFFFFFFFFFFFF8;
    v35 = a2 & 0xC000000000000001;
    v33 = a2 + 32;
    v32 = a1 >> 62;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = a1 & 0xC000000000000001;
LABEL_4:
    if (v6)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v13 = *(v8 + 8 * v5);
    }

    v42 = v13;
    v14 = __OFADD__(v5, 1);
    v15 = v5 + 1;
    if (!v14)
    {
      break;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    v31 = a2;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v31;
    if (!v4)
    {
      goto LABEL_36;
    }
  }

  v39 = v15;
  if (!v11)
  {
    v16 = *(v9 + 16);
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_28:

    return;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_28;
  }

LABEL_10:
  v17 = 0;
  while (2)
  {
    if (v10)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v9 + 16))
      {
        goto LABEL_32;
      }

      v18 = *(a1 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if ([v18 v12[170]] != 1)
    {

LABEL_12:
      ++v17;
      if (v20 == v16)
      {
        goto LABEL_28;
      }

      continue;
    }

    break;
  }

  v21 = a1;
  v22 = [v19 identifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = [v42 identifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v23 != v27 || v25 != v29)
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a1 = v21;
    v9 = v40;
    v10 = v41;
    v12 = &selRef_clearPendingFollowUpItems_;
    if (v30)
    {
      v19 = v42;
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  a1 = v21;
  v9 = v40;
  v10 = v41;
  v12 = &selRef_clearPendingFollowUpItems_;
LABEL_24:

  a2 = v37;
  v5 = v39;
  v7 = v34;
  v6 = v35;
  v11 = v32;
  v8 = v33;
  if (v39 != v36)
  {
    goto LABEL_4;
  }

LABEL_36:
  a3();
}

uint64_t sub_100021558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = swift_task_alloc();
  v3[9] = v4;
  *v4 = v3;
  v4[1] = sub_1000215F0;

  return sub_10002E3C8();
}

uint64_t sub_1000215F0()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100021724, 0, 0);
  }
}

uint64_t sub_100021724()
{
  v1 = v0[7];
  v2 = (v0[6] + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id);
  v4 = *v2;
  v3 = v2[1];
  swift_beginAccess();
  v5 = v1[9];
  v6 = v1[10];
  v8 = v1[11];
  v7 = v1[12];

  v9 = sub_100022F8C(v5, v6, v8, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1000234C8((v10 > 1), v11 + 1, 1, v9);
    }

    v12 = v0[8];
    *(v9 + 16) = v11 + 1;
    v13 = v9 + 16 * v11;
    *(v13 + 32) = v4;
    *(v13 + 40) = v3;
    v0[5] = v9;
    sub_1000061F4(&qword_10004A3B8, &qword_100038C38);
    v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v15 = String._bridgeToObjectiveC()();
    [v7 setObject:v14 forKey:v15];
    swift_endAccess();

    swift_unknownObjectRelease();
    if (v12 >> 62)
    {
      break;
    }

    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_23;
    }

LABEL_6:
    v3 = 0;
    v17 = v12 & 0xC000000000000001;
    v4 = v12 & 0xFFFFFFFFFFFFFF8;
    v18 = v0[8] + 32;
    v19 = v0[10];
    while (1)
    {
      if (v17)
      {
        v20 = v0[8];
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_18;
        }

        v21 = *(v18 + 8 * v3);
      }

      v9 = v21;
      v22 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = v0[6];
      if (sub_10002FA1C(v21))
      {
        v23 = v0[6];
        v7 = sub_10002FF68(v9);

        if (v19)
        {
          v24 = v0[1];
          goto LABEL_24;
        }

        v9 = v7;
      }

      ++v3;
      if (v22 == v16)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v9 = sub_1000234C8(0, *(v9 + 16) + 1, 1, v9);
  }

  if (v0[8] < 0)
  {
    v25 = v0[8];
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (v16)
  {
    goto LABEL_6;
  }

LABEL_23:
  v24 = v0[1];
LABEL_24:

  return v24();
}

void sub_100021998(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000061F4(&qword_10004A020, &qword_100038830);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v90 = &v88 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000061F4(&qword_100049EC8, &unk_100038900);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v88 - v16;
  v91 = type metadata accessor for UploadConsentItem();
  v18 = *(v91 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v91);
  v89 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v88 - v22;
  v24 = *(a1 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_device);
  v25 = sub_10002BF64(a2, v24);
  v26 = [v24 identifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  swift_beginAccess();

  v30 = v3[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = v3[8];
  v3[8] = 0x8000000000000000;
  sub_100025844(v25, v27, v29, isUniquelyReferenced_nonNull_native);

  v3[8] = v93;
  swift_endAccess();
  swift_beginAccess();
  v32 = 0;
  v33 = v3[17];
  v34 = 1 << *(v33 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v33 + 64);
  v37 = (v34 + 63) >> 6;
  while (v36)
  {
    v38 = v32;
LABEL_10:
    v39 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    if ((*(*(*(v33 + 56) + ((v38 << 9) | (8 * v39))) + OBJC_IVAR____TtC16enhancedloggingd10BugSession_didCompleteCollection) & 1) == 0)
    {

      if (qword_100049C18 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100004274(v40, qword_10004C088);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Not all bug sessions have completed collection; waiting for others...", v43, 2u);
      }

      return;
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v38 >= v37)
    {
      break;
    }

    v36 = *(v33 + 64 + 8 * v38);
    ++v32;
    if (v36)
    {
      v32 = v38;
      goto LABEL_10;
    }
  }

  if (qword_100049C18 == -1)
  {
    goto LABEL_17;
  }

LABEL_42:
  swift_once();
LABEL_17:
  v44 = type metadata accessor for Logger();
  sub_100004274(v44, qword_10004C088);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "All bug sessions completed collection!", v47, 2u);
  }

  v48 = [objc_opt_self() sharedManager];
  v49 = [v48 snapshot];

  v50 = [v49 consentHandles];
  if (v50 && (sub_1000061F4(&qword_10004A318, &qword_100038B90), v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v50, v52 = *(v51 + 16), , v52))
  {
    static Date.now.getter();
    v53 = type metadata accessor for Date();
    (*(*(v53 - 8) + 56))(v17, 0, 1, v53);
    sub_10001A9AC(v13);
    sub_1000061F4(&qword_10004A320, &qword_100038B98);
    v54 = *(v10 + 72);
    v55 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v56 = swift_allocObject();
    v88 = xmmword_1000387E0;
    *(v56 + 16) = xmmword_1000387E0;
    sub_10001A9AC(v56 + v55);
    UploadConsentItem.init(titleKey:modificationDate:rootURL:files:)();
    v57 = [objc_opt_self() currentDevice];
    if (!v57)
    {
      __break(1u);
      goto LABEL_47;
    }

    v58 = v57;
    v59 = [v57 identifier];

    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    swift_beginAccess();
    if (*(v3[8] + 16))
    {
      sub_1000238C4(v60, v62);
      if (v63)
      {
        swift_endAccess();
        (*(v18 + 16))(v89, v23, v91);
        swift_beginAccess();
        v64 = v3[8];
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v92 = v3[8];
        v66 = v92;
        v3[8] = 0x8000000000000000;
        v68 = sub_1000238C4(v60, v62);
        v69 = v66[2];
        v70 = (v67 & 1) == 0;
        v71 = v69 + v70;
        if (__OFADD__(v69, v70))
        {
          __break(1u);
          goto LABEL_44;
        }

        v72 = v67;
        if (v66[3] >= v71)
        {
          if ((v65 & 1) == 0)
          {
            v66 = &v92;
            sub_1000261F8();
          }

          v60 = v68;
LABEL_33:
          if (v72)
          {
            v66 = *(v92[7] + 8 * v60);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_35:
              v82 = v66[2];
              v81 = v66[3];
              if (v82 >= v81 >> 1)
              {
                v66 = sub_1000235D4(v81 > 1, v82 + 1, 1, v66, &qword_10004A328, &qword_100038BA0, &type metadata accessor for UploadConsentItem);
              }

              v66[2] = v82 + 1;
              v83 = v91;
              (*(v18 + 32))(v66 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v82, v89, v91);
              v84 = v92;
              *(v92[7] + 8 * v60) = v66;
              v3[8] = v84;
              swift_endAccess();

              (*(v18 + 8))(v23, v83);
              goto LABEL_38;
            }

LABEL_45:
            v66 = sub_1000235D4(0, v66[2] + 1, 1, v66, &qword_10004A328, &qword_100038BA0, &type metadata accessor for UploadConsentItem);
            goto LABEL_35;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        sub_100024AC8(v71, v65);
        v66 = v92;
        v73 = sub_1000238C4(v60, v62);
        if ((v72 & 1) == (v74 & 1))
        {
          v60 = v73;
          goto LABEL_33;
        }

LABEL_47:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    swift_endAccess();

    sub_1000061F4(&qword_10004A328, &qword_100038BA0);
    v75 = *(v18 + 72);
    v76 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v88;
    v78 = v91;
    (*(v18 + 16))(v77 + v76, v23, v91);
    swift_beginAccess();
    v79 = v3[8];
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v3[8];
    v3[8] = 0x8000000000000000;
    sub_100025844(v77, v60, v62, v80);

    v3[8] = v92;
    swift_endAccess();
    (*(v18 + 8))(v23, v78);
  }

  else
  {
  }

LABEL_38:
  if (v3[6] == 3)
  {
    v85 = type metadata accessor for TaskPriority();
    v86 = v90;
    (*(*(v85 - 8) + 56))(v90, 1, 1, v85);
    v87 = swift_allocObject();
    v87[2] = 0;
    v87[3] = 0;
    v87[4] = v3;

    sub_1000155B0(0, 0, v86, &unk_100038B88, v87);
  }
}

uint64_t sub_100022414()
{
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 snapshot];

  LODWORD(v1) = [v2 needsFollowup];
  if (v1)
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_10001CD18;
    v4 = v0[2];

    return sub_10001C1D8(4, 0, 1);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_10001CE0C;
    v7 = v0[2];

    return sub_10001CA04();
  }
}

uint64_t sub_100022574(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000061F4(&qword_10004A3C0, &qword_100038C48);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v10);
        ++v8;
        if (v4)
        {
          v8 = v10;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    sub_10002D578(*(a1 + 48) + 40 * v11, v32);
    sub_10000D268(*(a1 + 56) + 32 * v11, v33 + 8);
    v30[0] = v33[0];
    v30[1] = v33[1];
    v31 = v34;
    v29[0] = v32[0];
    v29[1] = v32[1];
    sub_10002D578(v29, v26);
    type metadata accessor for ELSFollowUpOption(0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v12 = v25;
    sub_10000D268(v30 + 8, v27 + 8);
    sub_100010EB8(v29, &qword_10004A3C8, &qword_100038C50);
    sub_10002D568((v27 + 8), v24);
    v13 = v12;
    sub_10002D568(v24, v28);
    sub_10002D568(v28, v27);
    v14 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v13;
    result = sub_10002D568(v27, (v1[7] + 32 * v9));
    ++v1[2];
  }

  sub_100010EB8(v29, &qword_10004A3C8, &qword_100038C50);

  return 0;
}

uint64_t sub_1000228A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000061F4(&unk_10004A630, &qword_100038A30);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  v16 = OBJC_IVAR____TtC16enhancedloggingd17SessionController____lazy_storage___daemonTemporaryDirectoryURL;
  swift_beginAccess();
  sub_100010BD4(v2 + v16, v15, &unk_10004A630, &qword_100038A30);
  if ((*(v5 + 48))(v15, 1, v4) != 1)
  {
    return (*(v5 + 32))(a1, v15, v4);
  }

  sub_100010EB8(v15, &unk_10004A630, &qword_100038A30);
  v17 = [objc_opt_self() defaultManager];
  v18 = [v17 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:isDirectory:)();
  (*(v5 + 8))(v8, v4);
  (*(v5 + 16))(v13, a1, v4);
  (*(v5 + 56))(v13, 0, 1, v4);
  swift_beginAccess();
  sub_10002D314(v13, v2 + v16);
  return swift_endAccess();
}

void sub_100022B64()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  sub_1000228A0(v4);
  URL.path(percentEncoded:)(1);
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v6 fileExistsAtPath:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [v5 defaultManager];
    sub_1000228A0(v4);
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    v7(v4, v0);
    v18 = 0;
    v14 = [v10 createDirectoryAtURL:v13 withIntermediateDirectories:0 attributes:0 error:&v18];

    if (v14)
    {
      v15 = v18;
    }

    else
    {
      v16 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_100022D9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10002D568(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_1000061F4(&qword_100049EE8, &qword_100038920);
  sub_1000061F4(&qword_100049ED0, &unk_100038DA0);
  if (swift_dynamicCast())
  {
    return v9;
  }

  return v3;
}

uint64_t sub_100022E98()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10002D568(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_1000061F4(&qword_100049EE8, &qword_100038920);
  sub_1000061F4(&qword_100049ED8, &qword_100038910);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100022F8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a4 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10002D568(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_1000061F4(&qword_100049EE8, &qword_100038920);
  sub_1000061F4(&qword_10004A3B8, &qword_100038C38);
  if (swift_dynamicCast())
  {
    return v9;
  }

  return a3;
}

uint64_t sub_100023078(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100023170;

  return v7(a1);
}

uint64_t sub_100023170()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_100023268(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000061F4(&qword_10004A390, &qword_100038C20);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10002336C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000061F4(&qword_10004A410, &qword_100038C88);
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
    sub_1000061F4(&qword_10004A650, &qword_100038C90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000234C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000061F4(&qword_10004A358, &unk_100038FB0);
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

size_t sub_1000235D4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000061F4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1000237B0(uint64_t a1, uint64_t a2)
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

  sub_1000061F4(&qword_10004A110, &qword_100038A38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_100023838(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_100023A64(a1, v4);
}

unint64_t sub_100023880(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100023AD0(a1, v4);
}

unint64_t sub_1000238C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100023B98(a1, a2, v6);
}

unint64_t sub_10002393C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_10002D77C(&qword_10004A3A8, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100023C50(a1, v5);
}

unint64_t sub_1000239D4(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100023E10(a1, v4);
}

unint64_t sub_100023A64(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100023AD0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10002D578(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10002D5D4(v8);
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

unint64_t sub_100023B98(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100023C50(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10002D77C(&qword_10004A3B0, &type metadata accessor for UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100023E10(uint64_t a1, uint64_t a2)
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

uint64_t sub_100023F14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000061F4(qword_10004A480, &qword_100038DB0);
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v33 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v22 = v33;
        swift_unknownObjectRetain();
      }

      v23 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
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
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v33;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100024198(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000061F4(&qword_10004A3A0, &qword_100038C30);
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
      sub_10002D77C(&qword_10004A3A8, &type metadata accessor for UUID);
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

uint64_t sub_100024574(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000061F4(&qword_10004A350, &qword_100038C00);
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_10002D568((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_10002D578(v24, &v37);
        sub_10000D268(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
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
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_10002D568(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10002482C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1000061F4(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
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
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
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

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_100024AC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000061F4(&qword_10004A330, &unk_100038BA8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100024D70(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 4 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:bytes:count:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 4 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100024EE4(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10002D77C(&qword_10004A3A8, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_100025204(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1000253B4(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100023838(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100023F14(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100023838(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100025AF4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(v11 >> 6) + 8] |= 1 << v11;
    *(v22[6] + 4 * v11) = a3;
    v25 = (v22[7] + 16 * v11);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return;
    }

    goto LABEL_15;
  }

  v23 = v22[7] + 16 * v11;
  v24 = *(v23 + 8);
  v28 = *v23;
  *v23 = a1;
  *(v23 + 8) = a2;
  swift_unknownObjectRelease();
}

void sub_10002552C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10002393C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100025C70();
      goto LABEL_7;
    }

    sub_100024198(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_10002393C(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1000259C0(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_1000256F8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100023880(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100025EF8();
      goto LABEL_7;
    }

    sub_100024574(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_100023880(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10002D578(a2, v22);
      return sub_100025A78(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000D154(v17);

  return sub_10002D568(a1, v17);
}

uint64_t sub_100025844(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000238C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100024AC8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000238C4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000261F8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1000259C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
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

_OWORD *sub_100025A78(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10002D568(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_100025AF4()
{
  v1 = v0;
  sub_1000061F4(qword_10004A480, &qword_100038DB0);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        v19 = v18;
        result = swift_unknownObjectRetain();
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

char *sub_100025C70()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000061F4(&qword_10004A3A0, &qword_100038C30);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

void *sub_100025EF8()
{
  v1 = v0;
  sub_1000061F4(&qword_10004A350, &qword_100038C00);
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
        v18 = 40 * v17;
        sub_10002D578(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000D268(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10002D568(v22, (*(v4 + 56) + v17));
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

id sub_10002609C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000061F4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1000261F8()
{
  v1 = v0;
  sub_1000061F4(&qword_10004A330, &unk_100038BA8);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_100026368(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TargetDevice.DeviceType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v59 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v51 - v10;
  __chkstk_darwin(v9);
  i = v51 - v12;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v65[0] = a1;
  v13 = *(a1 + 16);

  v53 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v55 = a1;
  v56 = a1 + ((v17 + 32) & ~v17);
  v62 = *(v15 + 56);
  v63 = v16;
  v60 = a2 + 7;
  v61 = a2;
  v64 = v15;
  v18 = (v15 - 8);
  v52 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v57 = v14 + 1;
    v65[1] = v14 + 1;
    v63(i, v56 + v62 * v14, v4);
    v19 = a2[5];
    v54 = sub_10002D77C(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v57;
    if (v57 == v53)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v63(v11, v61[6] + v22 * v62, v4);
    sub_10002D77C(&qword_10004A3D8, &type metadata accessor for TargetDevice.DeviceType);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) == 0)
    {
      a2 = v61;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v61;
  v30 = *(v61 + 32);
  v51[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v51[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v51[1] = v51;
    __chkstk_darwin(v28);
    v33 = v51 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v60, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v52 = v33;
    v53 = (v34 - 1);
    v35 = *(v55 + 16);
    v36 = v57;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_1000275C4(v52, v51[0], v53, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v55 + 16))
      {
        break;
      }

      v57 = v36;
      v63(v59, v56 + v36 * v62, v4);
      v38 = *(v29 + 40);
      v39 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v60[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v63(v11, v61[6] + v22 * v62, v4);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27(v11, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v60[v22 >> 6]) == 0)
          {
            break;
          }

          v63(v11, v61[6] + v22 * v62, v4);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          v27(v11, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v59, v4);
        v29 = v61;
LABEL_16:
        v37 = v57;
        goto LABEL_17;
      }

LABEL_25:
      v27(v59, v4);
      v44 = v52[v24];
      v52[v24] = v44 & ~v23;
      v29 = v61;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v53 - 1;
      v37 = v57;
      if (__OFSUB__(v53, 1))
      {
        goto LABEL_33;
      }

      --v53;
      if (!v45)
      {

        a2 = &_swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v47 = v31;

    v48 = v47;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v49 = v61;

      v29 = v49;
      continue;
    }

    break;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v60, v48);
  a2 = sub_100026F98(v50, v51[0], v61, v22, v65);

LABEL_30:

  return a2;
}

void *sub_100026A28(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1000278EC(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_10002738C(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_10002D698();
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_100026F98(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = type metadata accessor for TargetDevice.DeviceType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v44 = &v37 - v16;
  result = __chkstk_darwin(v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return sub_1000275C4(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_10002D77C(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType);
    v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      sub_10002D77C(&qword_10004A3D8, &type metadata accessor for TargetDevice.DeviceType);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return &_swiftEmptySetSingleton;
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t *sub_10002738C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_1000278EC(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_1000275C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for TargetDevice.DeviceType();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000061F4(&qword_10004A470, &unk_100038FD0);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_10002D77C(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_1000278EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000061F4(&qword_10004A5F0, &qword_100038C40);
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

uint64_t sub_100027B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for TargetDevice.DeviceType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10002D77C(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_10002D77C(&qword_10004A3D8, &type metadata accessor for TargetDevice.DeviceType);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100033720();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_100027EF4(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_100027DB8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000335C4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1000281FC(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_100027EF4(int64_t a1)
{
  v3 = type metadata accessor for TargetDevice.DeviceType();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_10002D77C(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_1000281FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

size_t sub_1000283C0(size_t a1, int64_t a2, char a3)
{
  result = sub_100028B84(a1, a2, a3, *v3, &qword_10004A370, &qword_100038C08, &type metadata accessor for EnrollConsentItem);
  *v3 = result;
  return result;
}

char *sub_100028404(char *a1, int64_t a2, char a3)
{
  result = sub_1000285D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100028424(size_t a1, int64_t a2, char a3)
{
  result = sub_100028B84(a1, a2, a3, *v3, &qword_10004A408, &qword_100038C80, &type metadata accessor for TargetDevice.DeviceType);
  *v3 = result;
  return result;
}

void *sub_100028468(void *a1, int64_t a2, char a3)
{
  result = sub_1000286DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100028488(char *a1, int64_t a2, char a3)
{
  result = sub_100028804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000284A8(size_t a1, int64_t a2, char a3)
{
  result = sub_100028B84(a1, a2, a3, *v3, &qword_100049EA8, &qword_1000388E0, &type metadata accessor for TargetDevice);
  *v3 = result;
  return result;
}

void *sub_1000284EC(void *a1, int64_t a2, char a3)
{
  result = sub_100028908(a1, a2, a3, *v3, &qword_10004A420, &unk_100038CA8, &qword_100049E90, &qword_100038860);
  *v3 = result;
  return result;
}

void *sub_10002852C(void *a1, int64_t a2, char a3)
{
  result = sub_100028908(a1, a2, a3, *v3, &qword_10004A460, &unk_100038D30, &qword_100049EC0, &qword_1000388F8);
  *v3 = result;
  return result;
}

void *sub_10002856C(void *a1, int64_t a2, char a3)
{
  result = sub_100028A3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10002858C(size_t a1, int64_t a2, char a3)
{
  result = sub_100028B84(a1, a2, a3, *v3, &qword_10004A320, &qword_100038B98, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_1000285D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000061F4(&qword_10004A358, &unk_100038FB0);
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

void *sub_1000286DC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000061F4(&qword_10004A418, &unk_100038C98);
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
    type metadata accessor for ELSPlatform(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100028804(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000061F4(&qword_10004A468, &unk_100038D40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100028908(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000061F4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000061F4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100028A3C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000061F4(&qword_10004A448, &qword_100038D10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000061F4(&qword_10004A450, &qword_100038D18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100028B84(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000061F4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100028D60(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100027DB8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_100028E8C(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1000238C4(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v9[3] < v16)
  {
    sub_10002482C(v16, v5 & 1, &qword_10004A438, &qword_100038D00);
    v18 = *a3;
    v11 = sub_1000238C4(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_10002609C(&qword_10004A438, &qword_100038D00);
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000061F4(&qword_10004A440, &qword_100038D08);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x800000010003A130;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v22[2] = v25;
  if (v42 != 1)
  {
    v17 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v5 = *(v17 - 2);
      v6 = *(v17 - 1);
      v27 = *v17;
      v28 = *a3;

      v10 = v27;
      v29 = sub_1000238C4(v5, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v7 = v30;
      if (v28[3] < v33)
      {
        sub_10002482C(v33, 1, &qword_10004A438, &qword_100038D00);
        v34 = *a3;
        v29 = sub_1000238C4(v5, v6);
        if ((v7 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v7)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v5;
      v37[1] = v6;
      *(v36[7] + 8 * v29) = v10;
      v38 = v36[2];
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v39;
      v17 += 3;
      if (v42 == v26)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100029250(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10002A4B8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000292CC(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1000292CC(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001256C(0, &qword_10004A378, ELSWhitelistEntry_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10002955C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000293E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000293E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 displayNameLocalizationKey];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v9 displayNameLocalizationKey];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10002955C(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_100029D5C((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_10002A1D4(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_10002A148(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_10002A1D4(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 displayNameLocalizationKey];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [v14 displayNameLocalizationKey];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 displayNameLocalizationKey];
          v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = [v26 displayNameLocalizationKey];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_100023268(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_100023268((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_100029D5C((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_10002A1D4(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_10002A148(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 displayNameLocalizationKey];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = [v48 displayNameLocalizationKey];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_100029D5C(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 displayNameLocalizationKey];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = [v36 displayNameLocalizationKey];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 displayNameLocalizationKey];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = [v16 displayNameLocalizationKey];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

uint64_t sub_10002A148(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002A1D4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void (*sub_10002A1E8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10002A268;
  }

  __break(1u);
  return result;
}

void *sub_10002A270(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000237B0(v3, 0);
  sub_10002A304(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10002A304(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10002D6F4(&qword_10004A388, &qword_10004A380, &unk_100038C10);
          for (i = 0; i != v6; ++i)
          {
            sub_1000061F4(&qword_10004A380, &unk_100038C10);
            v9 = sub_10002A1E8(v13, i, a3);
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
        sub_10001256C(0, &qword_10004A378, ELSWhitelistEntry_ptr);
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

unint64_t sub_10002A4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = -1 << *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = a1 + 56;
  result = _HashTable.startBucket.getter();
  if (*(a1 + 36) == v4)
  {
    v7 = -v3;
    while (1)
    {
      if (result == v7)
      {
        v17 = result;
        sub_100010B64(v7, v4, 0);
        result = v17;
        v18 = 1 << *(a1 + 32);
        v4 = *(a1 + 36);
        goto LABEL_18;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      v8 = 1 << *(a1 + 32);
      if (result >= v8)
      {
        goto LABEL_20;
      }

      v9 = result >> 6;
      v10 = *(v5 + 8 * (result >> 6));
      if (((v10 >> result) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(*(*(a1 + 48) + 8 * result) + 16))
      {
        break;
      }

      v11 = v10 & (-2 << (result & 0x3F));
      if (v11)
      {
        v8 = __clz(__rbit64(v11)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a1 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            sub_100010B64(result, v4, 0);
            v8 = __clz(__rbit64(v15)) + v12;
            goto LABEL_4;
          }
        }

        sub_100010B64(result, v4, 0);
      }

LABEL_4:
      result = v8;
      if (*(a1 + 36) != v4)
      {
        goto LABEL_19;
      }
    }

    v18 = result;
LABEL_18:
    *a2 = v18;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = result == v7;
  }

  else
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_10002A674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002A9D4(a2, a1);
  v7 = result;
  if (result)
  {
    v8 = -(-1 << *(a3 + 32));
    v9 = *(a3 + 36);
    v10 = _HashTable.startBucket.getter();
    result = sub_10002AAAC(v8, v9, 0, v10, *(a3 + 36), 0, a3);
  }

  if (*(a1 + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_52;
  }

  v11 = *(a1 + 8);
  v12 = *(a2 + 8);
  if (v11 != v12)
  {
    goto LABEL_47;
  }

  v13 = *a1;
  v14 = *a2;
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  if (v13 == v14)
  {
    if ((v16 | v18))
    {
      return 0;
    }

    sub_10002B7F8(v13, v11, 0, a3);
    v19 = v17 - v15;
    if (!__OFSUB__(v17, v15))
    {
      return v19;
    }

    __break(1u);
  }

  else if (v7)
  {
    result = sub_10002B7F8(v14, v12, 0, a3);
    if (v18)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v20 = *(result + 16);
    v19 = v17 - v20;
    if (__OFSUB__(v17, v20))
    {
      goto LABEL_49;
    }

    v42 = v16;
    v41 = v15;
    v21 = -1;
    v22 = v13;
    v43 = v11;
LABEL_19:
    v24 = sub_10002ABAC(v14, v12, 0, a3);
    v26 = v25;
    v28 = v27;
    result = sub_100010B64(v14, v12, 0);
    if (v28)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v26 != v43)
    {
      goto LABEL_48;
    }

    if (v24 < v22)
    {
      result = v24;
      if ((v24 & 0x8000000000000000) == 0)
      {
        v29 = 1 << *(a3 + 32);
        if (result < v29)
        {
          v30 = v26;
          while (1)
          {
            v31 = result >> 6;
            v32 = *(a3 + 56 + 8 * (result >> 6));
            if (((v32 >> result) & 1) == 0)
            {
              break;
            }

            if (*(a3 + 36) != v30)
            {
              goto LABEL_44;
            }

            v33 = *(*(*(a3 + 48) + 8 * result) + 16) * v21;
            v34 = __OFADD__(v19, v33);
            v19 += v33;
            if (v34)
            {
              goto LABEL_45;
            }

            v35 = v32 & (-2 << (result & 0x3F));
            if (v35)
            {
              result = __clz(__rbit64(v35)) | result & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v36 = v31 << 6;
              v37 = v31 + 1;
              v38 = (a3 + 64 + 8 * v31);
              while (v37 < (v29 + 63) >> 6)
              {
                v40 = *v38++;
                v39 = v40;
                v36 += 64;
                ++v37;
                if (v40)
                {
                  sub_100010B64(result, v30, 0);
                  result = __clz(__rbit64(v39)) + v36;
                  goto LABEL_35;
                }
              }

              sub_100010B64(result, v30, 0);
              result = v29;
            }

LABEL_35:
            if (*(a3 + 36) != v26)
            {
              goto LABEL_46;
            }

            if (result >= v22)
            {
              goto LABEL_40;
            }

            if ((result & 0x8000000000000000) == 0)
            {
              v29 = 1 << *(a3 + 32);
              v30 = v26;
              if (result < v29)
              {
                continue;
              }
            }

            goto LABEL_39;
          }

          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

LABEL_39:
      __break(1u);
    }

LABEL_40:
    if (v42)
    {
      return v19;
    }

    result = sub_10002B7F8(v22, v43, 0, a3);
    v34 = __OFADD__(v19, v41 * v21);
    v19 += v41 * v21;
    if (!v34)
    {
      return v19;
    }

    goto LABEL_51;
  }

  result = sub_10002B7F8(v13, v11, 0, a3);
  if ((v16 & 1) == 0)
  {
    v23 = *(result + 16);
    v19 = v23 - v15;
    if (__OFSUB__(v23, v15))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v21 = 1;
    v41 = v17;
    v42 = v18;
    v22 = v14;
    v43 = v12;
    v14 = v13;
    v12 = v11;
    goto LABEL_19;
  }

LABEL_55:
  __break(1u);
  return result;
}

BOOL sub_10002A9D4(_BOOL8 result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_15;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = *result < *a2;
  if (*result == *a2)
  {
    v3 = *(a2 + 32);
    if (*(result + 32))
    {
      if (*(a2 + 32))
      {
        return 0;
      }

      goto LABEL_14;
    }

    if (*(a2 + 32))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    return *(result + 24) < *(a2 + 24);
  }

  return v2;
}

uint64_t (*sub_10002AA44(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5))(uint64_t *a1)
{
  *a1 = sub_10002B7F8(a2, a3, a4 & 1, a5);

  return sub_10002AAA4;
}

uint64_t sub_10002AAAC(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_10002ABAC(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      result = _HashTable.occupiedBucket(after:)();
      v5 = *(a4 + 36);
      return result;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10002AC34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000061F4(qword_10004A480, &qword_100038DB0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v16 = *(a1 + 40);
  result = sub_100023838(v4);
  v6 = v16;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v15 = v6;
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 2);
    v17 = *v8;
    v13 = v6;
    swift_unknownObjectRetain();
    result = sub_100023838(v4);
    v8 = v12;
    v6 = v17;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10002AD68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000061F4(&qword_100049EB0, &qword_1000388E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000238C4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10002AE6C(uint64_t a1)
{
  v2 = sub_1000061F4(&qword_10004A398, &qword_100038C28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000061F4(&qword_10004A3A0, &qword_100038C30);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010BD4(v10, v6, &qword_10004A398, &qword_100038C28);
      result = sub_10002393C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10002B054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000061F4(&qword_10004A350, &qword_100038C00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010BD4(v4, v13, &qword_10004A458, &unk_100038D20);
      result = sub_100023880(v13);
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
      result = sub_10002D568(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10002B190(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1000061F4(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = a1 + 32;

    while (1)
    {
      sub_100010BD4(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1000239D4(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_10002D568(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

unint64_t *sub_10002B2A8(unint64_t a1)
{
  v2 = type metadata accessor for EnrollConsentItem();
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_43:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v6;
  v6 = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v56 = &_swiftEmptyArrayStorage;
    sub_100028404(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
LABEL_46:
      __break(1u);

      __break(1u);
      return result;
    }

    v8 = 0;
    v9 = v56;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 type];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v56 = v9;
      v17 = v9[2];
      v16 = v9[3];
      if (v17 >= v16 >> 1)
      {
        sub_100028404((v16 > 1), v17 + 1, 1);
        v9 = v56;
      }

      ++v8;
      v9[2] = v17 + 1;
      v18 = &v9[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
    }

    while (v7 != v8);
    v6 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  a1 = sub_100034954(v9);

  v56 = &_swiftEmptyArrayStorage;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  if (!v21)
  {
    goto LABEL_19;
  }

  do
  {
LABEL_17:
    while (1)
    {
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v25 = (*(a1 + 48) + ((v23 << 10) | (16 * v24)));
      v26 = *v25;
      v27 = v25[1];
      v28 = objc_opt_self();

      v6 = String._bridgeToObjectiveC()();
      v29 = [v28 findEntryForBundleIdentifier:v6];

      if (v29)
      {
        break;
      }

      if (!v21)
      {
        goto LABEL_19;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v6 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v21);
  while (1)
  {
LABEL_19:
    v30 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v30 >= v22)
    {
      break;
    }

    v21 = *(a1 + 56 + 8 * v30);
    ++v23;
    if (v21)
    {
      v23 = v30;
      goto LABEL_17;
    }
  }

  v56 = sub_10002A270(v31);
  sub_100029250(&v56);

  v32 = v56;
  if ((v56 & 0x8000000000000000) != 0 || (v56 & 0x4000000000000000) != 0)
  {
    v47 = v56;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    v32 = v47;
  }

  else
  {
    v33 = *(v56 + 16);
  }

  if (v33)
  {
    v34 = v32;
    v56 = &_swiftEmptyArrayStorage;
    sub_1000283C0(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      goto LABEL_46;
    }

    v35 = 0;
    v36 = v34;
    v37 = v56;
    v48 = v54 + 32;
    v49 = v34 & 0xC000000000000001;
    v50 = v33;
    v51 = v34;
    v38 = v52;
    do
    {
      if (v49)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v36 + 8 * v35 + 32);
      }

      v40 = v39;
      v41 = [v39 displayNameLocalizationKey];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = [v40 descriptionLocalizationKey];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = [v40 sensitiveInformationLocalizationKey];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      EnrollConsentItem.init(titleKey:descriptionKey:sensitiveInformationKey:)();
      v56 = v37;
      v45 = v37[2];
      v44 = v37[3];
      if (v45 >= v44 >> 1)
      {
        sub_1000283C0(v44 > 1, v45 + 1, 1);
        v37 = v56;
      }

      ++v35;
      v37[2] = v45 + 1;
      (*(v54 + 32))(v37 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v45, v38, v53);
      v36 = v51;
    }

    while (v50 != v35);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v37;
}

uint64_t sub_10002B7F8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_10002B848()
{
  v0 = type metadata accessor for TargetDevice.DeviceType();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000061F4(&qword_10004A3E8, &qword_100038C68);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v37 - v7);
  v9 = [objc_opt_self() sharedManager];
  v10 = [v9 snapshot];

  v11 = [v10 queue];
  if (!v11)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_10001256C(0, &qword_10004A368, ELSQueueEntry_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v38 = v8;
    v39 = v4;
    v40 = v1;
    v41 = v0;
    v1 = &_swiftEmptyArrayStorage;
    v42 = v12;
    if (!i)
    {
      break;
    }

    v14 = 0;
    v45 = v12 & 0xFFFFFFFFFFFFFF8;
    v46 = v12 & 0xC000000000000001;
    v43 = i;
    v44 = v12 + 32;
    v15 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v46)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v45 + 16))
        {
          goto LABEL_28;
        }

        v16 = *(v44 + 8 * v14);
      }

      v8 = v16;
      if (__OFADD__(v14++, 1))
      {
        break;
      }

      v18 = [v16 platform];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v20;

      v50 = v19;
      v51 = v0;
      v48 = 44;
      v49 = 0xE100000000000000;
      sub_10002D6A0();
      v21 = StringProtocol.components<A>(separatedBy:)();

      v4 = *(v21 + 16);
      if (v4)
      {
        v47 = v8;
        v50 = &_swiftEmptyArrayStorage;
        sub_100028468(0, v4, 0);
        v8 = v50;
        v22 = (v21 + 40);
        do
        {
          v23 = *(v22 - 1);
          v24 = *v22;

          v25 = String._bridgeToObjectiveC()();

          v50 = v8;
          v27 = v8[2];
          v26 = v8[3];
          v0 = v27 + 1;
          if (v27 >= v26 >> 1)
          {
            sub_100028468((v26 > 1), v27 + 1, 1);
            v8 = v50;
          }

          v8[2] = v0;
          v8[v27 + 4] = v25;
          v22 += 2;
          --v4;
        }

        while (v4);

        i = v43;
        v1 = &_swiftEmptyArrayStorage;
      }

      else
      {

        v8 = &_swiftEmptyArrayStorage;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_10002336C(0, v15[2] + 1, 1, v15);
      }

      v12 = v15[2];
      v28 = v15[3];
      if (v12 >= v28 >> 1)
      {
        v15 = sub_10002336C((v28 > 1), v12 + 1, 1, v15);
      }

      v15[2] = v12 + 1;
      v15[v12 + 4] = v8;
      if (v14 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v15 = &_swiftEmptyArrayStorage;
LABEL_26:

  v30 = sub_1000349EC(v15);

  v31 = sub_100015EC8(v30);

  v32 = sub_100034A88(v31);

  v50 = v32;
  v34 = v39;
  v33 = v40;
  v35 = v41;
  (v40[13])(v39, enum case for TargetDevice.DeviceType.unknown(_:), v41);
  v36 = v38;
  sub_100027B10(v34, v38);
  (v33[1])(v34, v35);
  sub_100010EB8(v36, &qword_10004A3E8, &qword_100038C68);
  return v50;
}
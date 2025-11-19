uint64_t sub_10002DF4C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_10000BC8C(Strong + 16, v7);
    }

    else
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
    }

    swift_weakInit();

    sub_10002E72C(a1, a2, &v6, v7);
    sub_10002F034(v7);
    return swift_weakDestroy();
  }

  return result;
}

uint64_t sub_10002E028(uint64_t a1, unint64_t a2)
{
  if (qword_1000DBA30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007DE8(v4, qword_1000E6D78);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000170D4(a1, a2, v15);
    _os_log_impl(&_mh_execute_header, v5, v6, "UnsubscribeRetryXPCServer: Unsubscribing from event '%s' since it has no consumers.", v7, 0xCu);
    sub_100008A94(v8);
  }

  sub_10001F338(0, 0xE000000000000000, a1, a2, v15);
  v9 = v16;
  v10 = v17;
  sub_100008614(v15, v16);
  (*(v10 + 8))(v9, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  swift_bridgeObjectRetain_n();
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10002F198();
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100008A94(v15);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_10002E2E8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*a1)
  {
    v5 = *a1;
    swift_errorRetain();
    if (qword_1000DBA30 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100007DE8(v6, qword_1000E6D78);
    swift_errorRetain();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_1000170D4(a2, a3, &v13);
      *(v9 + 12) = 2080;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_1000170D4(v10, v11, &v13);

      *(v9 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error unsubscribing from %s with no consumers: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_10002E4E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000BC8C(result + 16, v1);

    sub_100008614(v1, v1[3]);
    dispatch thunk of PersistentStorable.deleteSportingEventSubscription(canonicalId:isConventionalOrUnified:)();
    return sub_100008A94(v1);
  }

  return result;
}

uint64_t sub_10002E72C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, unint64_t *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1000DBA30 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v7 = type metadata accessor for Logger();
      sub_100007DE8(v7, qword_1000E6D78);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Unsubscribe retry XPC task is starting", v10, 2u);
      }

      sub_10002F09C(a4, &v22);
      if (!v23)
      {
        sub_10002F034(&v22);
        sub_10002EB20(0, a1);
      }

      sub_10000A8F8(&v22, v24);
      sub_100008614(v24, v24[3]);
      v11 = dispatch thunk of PersistentStorable.allEventSubscriptionsToConsumers(isConventionalOrUnified:)();
      a4 = sub_10002EDE8(v11);

      if (!a4[2])
      {
        break;
      }

      swift_weakInit();
      v12 = 1 << *(a4 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & a4[8];

      swift_beginAccess();
      v15 = 0;
      v16 = (v12 + 63) >> 6;
      while (v14)
      {
LABEL_17:
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = (a4[6] + ((v15 << 10) | (16 * v18)));
        v20 = *v19;
        v21 = v19[1];
        if (swift_weakLoadStrong())
        {

          sub_10002E028(v20, v21);
        }
      }

      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v16)
        {

          swift_weakDestroy();

          goto LABEL_21;
        }

        v14 = a4[v17 + 8];
        ++v15;
        if (v14)
        {
          v15 = v17;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_24:
      swift_once();
    }

LABEL_21:
    sub_10002EB20(0, a1);

    return sub_100008A94(v24);
  }

  return result;
}

uint64_t sub_10002EB20(char a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    if (qword_1000DBA30 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100007DE8(v3, qword_1000E6D78);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Unsubscribe retry XPC task ran and will now be cancelled. This should never occur as it means the cleanup task will not run again until next reboot.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    }
  }

  else
  {
    if (qword_1000DBA30 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100007DE8(v8, qword_1000E6D78);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Unsubscribe retry XPC task ran and will continue to run";
      goto LABEL_10;
    }
  }

  return a2(1);
}

uint64_t sub_10002ECA0()
{
  sub_100008A94((v0 + 16));

  sub_10000BCF0(v0 + 64);
  v1 = *(v0 + 248);

  return v0;
}

uint64_t sub_10002ECD8()
{
  sub_10002ECA0();

  return _swift_deallocClassInstance(v0, 256, 7);
}

unint64_t *sub_10002ED30(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_10002EF48(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10002EDA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t *sub_10002EDE8(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_10002ED30(v8, v4, v2);
      sub_10002F1FC();

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_10008BE9C(0, v4, v5);
  v6 = sub_10002EF48(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_10002EF48(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (!*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_10008C330(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_10008C330(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F034(uint64_t a1)
{
  v2 = sub_100003998(&qword_1000DCF18, &qword_1000AC470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DCF18, &qword_1000AC470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F10C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F14C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002F18C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10002E4E4();
}

unint64_t sub_10002F198()
{
  result = qword_1000DCC20;
  if (!qword_1000DCC20)
  {
    sub_1000089A8(&qword_1000DCC18, &qword_1000AB790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DCC20);
  }

  return result;
}

void sub_10002F208(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_log_t log)
{

  _os_log_impl(a1, log, v24, a4, v23, 2u);
}

uint64_t sub_10002F228()
{

  return swift_slowAlloc();
}

uint64_t sub_10002F240()
{
  type metadata accessor for ContainerConstants();
  v0 = static ContainerConstants.defaultSuiteName.getter();
  v2 = v1;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_100058E38(v0, v2);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [v4 dictionaryRepresentation];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v7 + 16))
  {

LABEL_17:
    v22 = 0;
    return v22 & 1;
  }

  sub_100017538();
  v9 = v8;

  if ((v9 & 1) == 0)
  {

    goto LABEL_17;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v5 BOOLForKey:v10];

  v12 = v11 == 0;
  if (v11)
  {
    v13 = 0x6E456C616373656DLL;
  }

  else
  {
    v13 = 0x69446C616373656DLL;
  }

  if (v12)
  {
    v14 = 0xEE0064656C626173;
  }

  else
  {
    v14 = 0xED000064656C6261;
  }

  if (qword_1000DBA18 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100007DE8(v15, qword_1000E6D30);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v20 = 0xE400000000000000;
      v21 = 1819047278;
    }

    else
    {

      v21 = v13;
      v20 = v14;
    }

    v24 = sub_1000170D4(v21, v20, &v26);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "authentication defaults value: %s", v18, 0xCu);
    sub_100008A94(v19);
  }

  v27._countAndFlagsBits = v13;
  v27._object = v14;
  v25 = sub_10002F548(v27);

  v22 = (v25 == 2) | v25;
  return v22 & 1;
}

uint64_t sub_10002F548(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CEF88, v2);

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

uint64_t sub_10002F5FC()
{
  v1 = v0;
  v2 = sub_100003998(&qword_1000DCF30, &qword_1000AB8F8);
  v3 = sub_10000AC48(v2);
  v61 = v4;
  v62 = v3;
  v6 = *(v5 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v7);
  v60 = &v58 - v8;
  v67 = sub_100003998(&qword_1000DCF38, &qword_1000AB900);
  sub_10000AC48(v67);
  v65 = v9;
  v11 = *(v10 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v12);
  v63 = &v58 - v13;
  v14 = sub_100003998(&qword_1000DCF40, &qword_1000AB908);
  sub_10000AC48(v14);
  v66 = v15;
  v17 = *(v16 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v18);
  v64 = &v58 - v19;
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100007DE8(v20, qword_1000E6D48);
  sub_100032454(v0, v70);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    v24 = sub_10002FDB8() & 1;
    sub_10003248C(v70);
    *(v23 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v21, v22, "Tempo start /unregister for isLowCapLiveActivity=%{BOOL}d", v23, 8u);
    sub_10000B008();
  }

  else
  {
    sub_10003248C(v70);
  }

  v25 = v1[5];
  v26 = v1[18];
  v27 = v1[19];
  sub_10002FDB8();
  v28 = v25[6];
  sub_100008614(v25 + 2, v25[5]);
  v29 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (v29)
  {
    v30 = v29;
    if (sub_10002FDB8())
    {
      v31 = SportingEventSubscription.byChangingConsumers(_:)();
    }

    else
    {
      SportingEventSubscription.consumers.getter();
      sub_100003998(&qword_1000DC430, &qword_1000AA610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000AA5B0;
      v43 = v1[17];
      *(inited + 32) = v1[16];
      *(inited + 40) = v43;

      sub_100019744();
      swift_setDeallocating();
      sub_100086754();
      v31 = SportingEventSubscription.byChangingConsumers(_:)();
    }

    v44 = v31;
    v45 = sub_100030124(v30, v44);
  }

  else
  {
    sub_100032454(v1, v70);
    sub_100032454(v1, v69);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    v34 = os_log_type_enabled(v32, v33);
    v59 = v14;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v35 = 136315394;
      v36 = v70[18];
      v37 = v70[19];

      sub_10003248C(v70);
      v38 = sub_1000170D4(v36, v37, &v68);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v39 = v69[16];
      v40 = v69[17];

      sub_10003248C(v69);
      v41 = sub_1000170D4(v39, v40, &v68);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Tempo /unregister canonicalId=%s, remove consumer=%s, though there are no subscription exists", v35, 0x16u);
      swift_arrayDestroy();
      sub_10000B008();
      sub_10000B008();
    }

    else
    {

      sub_10003248C(v69);
      sub_10003248C(v70);
    }

    v46 = *sub_100008614(v1, v1[3]);
    v58 = sub_10000F1CC();
    v69[0] = v58;
    sub_100032454(v1, v70);
    v47 = swift_allocObject();
    memcpy((v47 + 16), v70, 0xB0uLL);
    static Subscribers.Demand.unlimited.getter();
    sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
    sub_100003998(&qword_1000DCF48, &unk_1000AB910);
    sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0);
    sub_10000A6FC(&qword_1000DCF50, &qword_1000DCF48, &unk_1000AB910);
    v48 = v60;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    sub_10000AC94();
    sub_10000A6FC(v49, v50, v51);
    v52 = v62;
    v53 = v63;
    Publisher.map<A>(_:)();
    (*(v61 + 8))(v48, v52);
    sub_100003998(&qword_1000DCC18, &qword_1000AB790);
    sub_10000A6FC(&qword_1000DCF60, &qword_1000DCF38, &qword_1000AB900);
    sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
    v54 = v64;
    v55 = v67;
    Publisher.catch<A>(_:)();
    (*(v65 + 8))(v53, v55);
    sub_10000A6FC(&qword_1000DCF68, &qword_1000DCF40, &qword_1000AB908);
    v56 = v59;
    v45 = Publisher.eraseToAnyPublisher()();
    (*(v66 + 8))(v54, v56);
  }

  return v45;
}

uint64_t sub_10002FDB8()
{
  v1 = v0[16] == 0xD000000000000011 && 0x80000001000B0480 == v0[17];
  if (v1 || (v2 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v3 = v0[21];
    if (sub_100066914())
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v2 = 1;
    }
  }

  return v2 & 1;
}

uint64_t sub_10002FE60@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_100008614(a2 + 6, a2[9]);
  v12 = a2[18];
  v13 = a2[19];

  v7._countAndFlagsBits = 47;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._object = 0x80000001000B0520;
  v8._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v8);
  sub_10002FF3C();
  sub_100003F50();
  v10 = v9;

  *a3 = v10;
  return result;
}

uint64_t sub_10002FF3C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB8E0;
  *(inited + 32) = 3;
  v9 = v1[18];
  v8 = v1[19];
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v9;
  *(inited + 48) = v8;
  *(inited + 72) = 8;

  Date.init()();
  sub_10008C99C();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  *(inited + 104) = &type metadata for UInt64;
  *(inited + 80) = v11;
  *(inited + 112) = 9;
  v12 = v1[20];
  *(inited + 144) = &type metadata for UInt64;
  *(inited + 120) = v12;
  *(inited + 152) = 44;
  v13 = sub_10002FDB8();
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = (v13 & 1) == 0;
  *(inited + 192) = 45;
  *(inited + 224) = &type metadata for EventType.EventName;
  *(inited + 200) = 1;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v14 = Dictionary.init(dictionaryLiteral:)();
  v15 = sub_100031E48(v14);

  return v15;
}

uint64_t sub_100030124(void *a1, void *a2)
{
  v121 = a1;
  v3 = sub_100003998(&qword_1000DCF70, &unk_1000AB920);
  v126 = *(v3 - 8);
  v127 = v3;
  v4 = *(v126 + 8);
  __chkstk_darwin(v3);
  v124 = &v106 - v5;
  v6 = sub_100003998(&qword_1000DCF78, &qword_1000ABE00);
  v129 = *(v6 - 8);
  v130 = v6;
  v7 = *(v129 + 64);
  __chkstk_darwin(v6);
  v125 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v128 = &v106 - v10;
  v11 = sub_100003998(&qword_1000DCF80, &qword_1000AB930);
  v109 = *(v11 - 8);
  v110 = v11;
  v12 = *(v109 + 64);
  __chkstk_darwin(v11);
  v108 = &v106 - v13;
  v14 = sub_100003998(&qword_1000DCF88, &qword_1000AB938);
  v112 = *(v14 - 8);
  v113 = v14;
  v15 = *(v112 + 64);
  __chkstk_darwin(v14);
  v111 = &v106 - v16;
  v17 = sub_100003998(&qword_1000DCF90, &qword_1000AB940);
  v115 = *(v17 - 8);
  v116 = v17;
  v18 = *(v115 + 64);
  __chkstk_darwin(v17);
  v131 = &v106 - v19;
  v20 = sub_100003998(&qword_1000DCF98, &qword_1000AB948);
  v117 = *(v20 - 8);
  v118 = v20;
  v21 = *(v117 + 64);
  __chkstk_darwin(v20);
  v114 = &v106 - v22;
  v23 = sub_100003998(&qword_1000DCFA0, &qword_1000AB950);
  v119 = *(v23 - 8);
  v120 = v23;
  v24 = *(v119 + 64);
  __chkstk_darwin(v23);
  v26 = &v106 - v25;
  v27 = sub_100003998(&qword_1000DCFA8, &qword_1000AB958);
  v122 = *(v27 - 8);
  v28 = *(v122 + 64);
  __chkstk_darwin(v27);
  v30 = &v106 - v29;
  v31 = sub_100003998(&qword_1000DCFB0, &qword_1000AB960);
  v123 = *(v31 - 8);
  v32 = *(v123 + 64);
  __chkstk_darwin(v31);
  v34 = &v106 - v33;
  v35 = sub_100003998(&qword_1000DCFB8, &unk_1000AB968);
  v36 = *(v35 - 8);
  v37 = *(v36 + 8);
  __chkstk_darwin(v35);
  v39 = &v106 - v38;
  v132 = a2;
  v40 = *(SportingEventSubscription.consumers.getter() + 16);

  if (v40)
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100007DE8(v41, qword_1000E6D48);
    v42 = v133;
    sub_100032454(v133, v139);
    sub_100032454(v42, &v135);
    v43 = v132;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *v46 = 136315650;
      v47 = v139[18];
      v48 = v139[19];

      sub_10003248C(v139);
      v49 = sub_1000170D4(v47, v48, &v134);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      v50 = v137;
      v51 = v138;

      sub_10003248C(&v135);
      v52 = sub_1000170D4(v50, v51, &v134);

      *(v46 + 14) = v52;
      *(v46 + 22) = 2080;
      SportingEventSubscription.consumers.getter();
      v53 = Set.description.getter();
      v55 = v54;

      v56 = sub_1000170D4(v53, v55, &v134);

      *(v46 + 24) = v56;
      _os_log_impl(&_mh_execute_header, v44, v45, "Tempo skip /unregister canonicalId=%s, remove consumer=%s, active consumers=%s", v46, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10003248C(&v135);
      sub_10003248C(v139);
    }

    LOBYTE(v139[0]) = 1;
    v69 = v124;
    Just.init(_:)();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    v70 = v125;
    v71 = v127;
    Just.setFailureType<A>(to:)();
    v72 = (*(v126 + 1))(v69, v71);
    __chkstk_darwin(v72);
    v73 = v128;
    v74 = v130;
    Result.Publisher.tryMap<A>(_:)();
    v75 = *(v129 + 8);
    v75(v70, v74);
    sub_10000A6FC(&qword_1000DCFC0, &qword_1000DCF78, &qword_1000ABE00);
    v76 = Publisher.eraseToAnyPublisher()();
    v75(v73, v74);
  }

  else
  {
    v107 = v26;
    v124 = v30;
    v125 = v27;
    v126 = v34;
    v129 = v31;
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v127 = v39;
    v128 = v36;
    v130 = v35;
    v57 = type metadata accessor for Logger();
    sub_100007DE8(v57, qword_1000E6D48);
    v58 = v133;
    sub_100032454(v133, v139);
    sub_100032454(v58, &v135);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *v61 = 136315394;
      v62 = v139[18];
      v63 = v139[19];

      sub_10003248C(v139);
      v64 = sub_1000170D4(v62, v63, &v134);

      *(v61 + 4) = v64;
      *(v61 + 12) = 2080;
      v65 = v137;
      v66 = v138;

      sub_10003248C(&v135);
      v67 = sub_1000170D4(v65, v66, &v134);

      *(v61 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v59, v60, "Tempo start /unregister canonicalId=%s, remove consumer=%s, no consumers left", v61, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10003248C(&v135);
      v68 = sub_10003248C(v139);
    }

    v77 = v110;
    v78 = v108;
    __chkstk_darwin(v68);
    v79 = v133;
    v80 = sub_10002F59C(sub_1000324E0);
    v135 = v80;
    v82 = v81 & 1;
    v136 = v81 & 1;
    sub_100003998(&qword_1000DCFC8, &qword_1000AB978);
    Result.publisher.getter();
    sub_100032500(v80, v82);
    sub_100032454(v79, v139);
    v83 = swift_allocObject();
    memcpy((v83 + 16), v139, 0xB0uLL);
    static Subscribers.Demand.unlimited.getter();
    sub_100003998(&qword_1000DCFD0, &unk_1000AB980);
    sub_10000A6FC(&qword_1000DCFD8, &qword_1000DCF80, &qword_1000AB930);
    sub_10000A6FC(&qword_1000DCFE0, &qword_1000DCFD0, &unk_1000AB980);
    v84 = v111;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v109 + 8))(v78, v77);
    sub_100032454(v79, v139);
    v85 = swift_allocObject();
    memcpy((v85 + 16), v139, 0xB0uLL);
    static Subscribers.Demand.unlimited.getter();
    sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
    sub_10000A6FC(&qword_1000DCFE8, &qword_1000DCF88, &qword_1000AB938);
    v132 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0);
    v86 = v113;
    Publisher.flatMap<A>(maxPublishers:_:)();

    (*(v112 + 8))(v84, v86);
    sub_100032454(v79, v139);
    v87 = swift_allocObject();
    memcpy((v87 + 16), v139, 0xB0uLL);
    v88 = v121;
    *(v87 + 192) = v121;
    v89 = v88;
    static Subscribers.Demand.unlimited.getter();
    sub_100003998(&qword_1000DBDB8, &qword_1000AA6F0);
    sub_100003998(&qword_1000DCF48, &unk_1000AB910);
    sub_10000A6FC(&qword_1000DCFF0, &qword_1000DCF90, &qword_1000AB940);
    sub_10000A6FC(&qword_1000DCF50, &qword_1000DCF48, &unk_1000AB910);
    v90 = v114;
    v91 = v116;
    v92 = v131;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v115 + 8))(v92, v91);
    sub_10000A6FC(&qword_1000DCFF8, &qword_1000DCF98, &qword_1000AB948);
    v93 = v107;
    v94 = v118;
    Publisher.map<A>(_:)();
    (*(v117 + 8))(v90, v94);
    sub_100003998(&qword_1000DCC18, &qword_1000AB790);
    sub_10000A6FC(&qword_1000DD000, &qword_1000DCFA0, &qword_1000AB950);
    sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
    v95 = v124;
    v96 = v120;
    Publisher.catch<A>(_:)();
    (*(v119 + 8))(v93, v96);
    v97 = v133;
    sub_100032454(v133, v139);
    v98 = swift_allocObject();
    memcpy((v98 + 16), v139, 0xB0uLL);
    sub_10000A6FC(&qword_1000DD008, &qword_1000DCFA8, &qword_1000AB958);
    v99 = v125;
    v100 = v126;
    Publisher.tryMap<A>(_:)();

    (*(v122 + 8))(v95, v99);
    sub_100032454(v97, v139);
    v101 = swift_allocObject();
    memcpy((v101 + 16), v139, 0xB0uLL);
    sub_10000A6FC(&qword_1000DD010, &qword_1000DCFB0, &qword_1000AB960);
    v102 = v129;
    v103 = v127;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v123 + 8))(v100, v102);
    sub_10000A6FC(&qword_1000DD018, &qword_1000DCFB8, &unk_1000AB968);
    v104 = v130;
    v76 = Publisher.eraseToAnyPublisher()();
    (*(v128 + 1))(v103, v104);
  }

  return v76;
}

uint64_t sub_1000312E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100032454(a1, v8);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v8, 0xB0uLL);
  v4 = sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = Future.init(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_100031384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &__src[-v8];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = type metadata accessor for TaskPriority();
  sub_100008E2C(v9, 1, 1, v11);
  sub_100032454(a3, __src);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  memcpy(v12 + 4, __src, 0xB0uLL);
  v12[26] = sub_1000326E0;
  v12[27] = v10;

  sub_10004A77C();
}

uint64_t sub_1000314C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000314EC, 0, 0);
}

uint64_t sub_1000314EC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_100008614(v3 + 11, v3[14]);
  v5 = v3[18];
  v6 = v3[19];
  v7 = *v4;

  sub_10007A58C(v5, v6, v7, v1, v2);
  v8 = v0[1];

  return v8();
}

uint64_t sub_100031590(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100007DE8(v3, qword_1000E6D18);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = sub_1000170D4(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error connecting to watchlistd for suppression. %s", v6, 0xCu);
      sub_100008A94(v7);
      sub_10000B008();
      sub_10000B008();
    }

    else
    {
    }
  }

  return a2(1, 0);
}

uint64_t sub_100031734(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  sub_10002FDB8();
  v6 = v5[6];
  sub_100008614(v5 + 2, v5[5]);
  result = dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_1000317C4(uint64_t a1, uint64_t a2)
{
  sub_100032454(a2, v4);
  v2 = swift_allocObject();
  memcpy((v2 + 16), v4, 0xB0uLL);
  sub_100003998(&qword_1000DD038, &unk_1000AB9A0);
  sub_10000A6FC(&qword_1000DD040, &qword_1000DD038, &unk_1000AB9A0);
  return Deferred.init(createPublisher:)();
}

uint64_t sub_1000318A0@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *sub_100008614(a1, a1[3]);
  result = sub_10000F1CC();
  *a2 = result;
  return result;
}

uint64_t sub_1000318D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_100008614((a2 + 48), *(a2 + 72));
  SportingEventSubscription.registrationId.getter();
  sub_10002FF3C();
  sub_100003F50();
  v7 = v6;

  *a3 = v7;
  return result;
}

uint64_t sub_10003198C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  sub_10000AC48(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v9);
  v11 = v14 - v10;
  v14[1] = *a1;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  Fail.init(error:)();
  sub_10000A6FC(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990);
  v12 = Publisher.eraseToAnyPublisher()();
  result = (*(v6 + 8))(v11, v4);
  *a2 = v12;
  return result;
}

void sub_100031AE0(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[18];
  v6 = a1[19];
  sub_10002FDB8();
  v7 = v4[6];
  sub_100008614(v4 + 2, v4[5]);
  v8 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = *(SportingEventSubscription.consumers.getter() + 16);

  if (v10)
  {

LABEL_4:
    *a2 = 1;
    return;
  }

  sub_10000BC8C((v4 + 2), v11);
  v11[6] = v11[4];
  sub_100008614(v11, v11[3]);
  sub_10002FDB8();
  dispatch thunk of PersistentStorable.deleteSportingEventSubscription(canonicalId:isConventionalOrUnified:)();

  sub_100008A94(v11);
  if (!v2)
  {
    goto LABEL_4;
  }
}

void sub_100031C0C(uint64_t a1, uint64_t a2)
{
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007DE8(v3, qword_1000E6D48);
  sub_100032454(a2, v13);
  sub_100032454(a2, v12);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315394;
    v8 = v14;
    v9 = v15;

    sub_10003248C(v13);
    v10 = sub_1000170D4(v8, v9, &v11);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    LODWORD(v10) = sub_10002FDB8() & 1;
    sub_10003248C(v12);
    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Tempo /unregister success for %s, isLowCapLiveActivity=%{BOOL}d", v6, 0x12u);
    sub_100008A94(v7);
  }

  else
  {
    sub_10003248C(v12);

    sub_10003248C(v13);
  }
}

uint64_t sub_100031DB8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 40);
  sub_10002FDB8();
  v7 = v6[6];
  sub_100008614(v6 + 2, v6[5]);
  result = dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
  if (!v3)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t sub_100031E48(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v57 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_10001EF70(v28, &qword_1000DBD08, &qword_1000AA690))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (i << 6);
    v13 = *(*(a1 + 48) + v12);
    sub_100032628(*(a1 + 56) + 32 * v12, v55 + 8);
    LOBYTE(v55[0]) = v13;
    v52 = v55[0];
    v53 = v55[1];
    v54 = v56;
    sub_100032628(&v52 + 8, &v34);
    if (v36)
    {
      sub_100008EA8(&v34, &v49);
      v45 = v52;
      v46 = v53;
      v47 = v54;
      sub_100008EA8(&v49, &v42);
      v20 = v2[2];
      if (v2[3] <= v20)
      {
        sub_1000A1D80(v20 + 1, 1, v14, v15, v16, v17, v18, v19, v33, v34, *(&v34 + 1), v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v46, *(&v46 + 1), v47, v48, v49, *(&v49 + 1), v50, v51, v52, *(&v52 + 1));
      }

      v2 = v57;
      v21 = v45;
      v22 = v57[5];
      Hasher.init(_seed:)();
      sub_100083914(v21);
      String.hash(into:)();

      result = Hasher._finalize()();
      v23 = (v2 + 8);
      v24 = -1 << *(v2 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~v2[(v25 >> 6) + 8]) == 0)
      {
        v29 = 0;
        v30 = (63 - v24) >> 6;
        while (++v26 != v30 || (v29 & 1) == 0)
        {
          v31 = v26 == v30;
          if (v26 == v30)
          {
            v26 = 0;
          }

          v29 |= v31;
          v32 = *&v23[8 * v26];
          if (v32 != -1)
          {
            v27 = __clz(__rbit64(~v32)) + (v26 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_27;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~v2[(v25 >> 6) + 8])) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *&v23[(v27 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v27;
      *(v2[6] + v27) = v21;
      sub_100008EA8(&v42, (v2[7] + 32 * v27));
      ++v2[2];
      v28 = &v45 + 8;
    }

    else
    {
      sub_10001EF70(&v52, &qword_1000DD030, &unk_1000AC840);
      v28 = &v34;
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100032104()
{
  v1 = v0;
  v2 = sub_100003998(&qword_1000DCF20, &qword_1000AB8F0);
  v16 = sub_10000AC48(v2);
  v17 = v3;
  v5 = *(v4 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = *sub_100008614(v0, v0[3]);
  v15 = sub_10000F1CC();
  v19 = v15;
  sub_1000323D0(v1, __src);
  v10 = swift_allocObject();
  memcpy((v10 + 16), __src, 0x50uLL);
  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  sub_10000AC94();
  sub_10000A6FC(v11, &qword_1000DCF20, &qword_1000AB8F0);
  v12 = v16;
  v13 = Publisher.eraseToAnyPublisher()();
  (*(v17 + 8))(v8, v12);
  return v13;
}

uint64_t sub_100032338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_100008614((a2 + 40), *(a2 + 64));
  sub_10001DA90();
  Dictionary.init(dictionaryLiteral:)();
  sub_1000039E0();
  v7 = v6;

  *a3 = v7;
  return result;
}

uint64_t sub_100032408()
{
  sub_100008A94((v0 + 16));
  sub_100008A94((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100032500(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10003250C()
{
  sub_100008A94(v0 + 2);
  v1 = v0[7];

  sub_100008A94(v0 + 8);
  sub_100008A94(v0 + 13);
  v2 = v0[19];

  v3 = v0[21];

  v4 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100032584()
{
  sub_100008A94((v0 + 16));
  v1 = *(v0 + 56);

  sub_100008A94((v0 + 64));
  sub_100008A94((v0 + 104));
  v2 = *(v0 + 152);

  v3 = *(v0 + 168);

  v4 = *(v0 + 184);

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_100032628(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000326A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000326EC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100008A94(v0 + 4);
  v2 = v0[9];

  sub_100008A94(v0 + 10);
  sub_100008A94(v0 + 15);
  v3 = v0[21];

  v4 = v0[23];

  v5 = v0[25];

  v6 = v0[27];

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_100032764(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = v1[27];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002C904;

  return sub_1000314C8(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_100032828(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100032868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000328D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_100032914(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000329B0(void *a1)
{
  v2 = a1[4];
  sub_100008614(a1, a1[3]);
  sub_100032A6C();
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100008614(v4, v4[3]);
    sub_100032A6C();
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    Date.init(timeIntervalSince1970:)();
    return sub_100008A94(v4);
  }

  return result;
}

uint64_t sub_100032A80()
{
  v0 = sub_100003998(&qword_1000DD048, &qword_1000ABAB8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = PassthroughSubject.init()();
  qword_1000E6CD8 = result;
  return result;
}

uint64_t sub_100032ACC()
{
  if (qword_1000DB9D0 != -1)
  {
    swift_once();
  }

  sub_100003998(&qword_1000DD048, &qword_1000ABAB8);
  sub_10000A6FC(&qword_1000DD050, &qword_1000DD048, &qword_1000ABAB8);
  Publisher.share()();

  sub_100003998(&qword_1000DD058, &unk_1000ABAC0);
  sub_10000A6FC(&qword_1000DD060, &qword_1000DD058, &unk_1000ABAC0);
  v0 = Publisher.eraseToAnyPublisher()();

  qword_1000E6CE0 = v0;
  return result;
}

uint64_t sub_100032C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_100034A3C(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100008B84(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10001EF70(v11, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = sub_100034E50();

      sub_10001EF70(a3, &qword_1000DC5A8, &qword_1000AAFD0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001EF70(a3, &qword_1000DC5A8, &qword_1000AAFD0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return sub_100034E50();
}

uint64_t sub_100032E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_100034A3C(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100008B84(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10001EF70(v11, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      sub_100003998(&qword_1000DC480, &unk_1000AB420);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10001EF70(a3, &qword_1000DC5A8, &qword_1000AAFD0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001EF70(a3, &qword_1000DC5A8, &qword_1000AAFD0);
  sub_100003998(&qword_1000DC480, &unk_1000AB420);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100033100(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CF1B0, v2);

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

uint64_t sub_100033154(char a1)
{
  if (a1)
  {
    return 0x736C656E6E616863;
  }

  else
  {
    return 0x6F724665726F7473;
  }
}

uint64_t sub_100033190(uint64_t *a1)
{
  v3 = sub_100003998(&qword_1000DD168, &qword_1000ABC28);
  v4 = sub_10000AC48(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a1[4];
  sub_100008614(a1, a1[3]);
  sub_100034B4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100003998(&qword_1000DC480, &unk_1000AB420);
    sub_100034BA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = sub_100034E24();
    v10(v9);
  }

  sub_100008A94(a1);
  return v7;
}

uint64_t sub_100033394@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100033100(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000333C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100033154(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000333F8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100033100(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10003342C(uint64_t a1)
{
  v2 = sub_100034B4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033468(uint64_t a1)
{
  v2 = sub_100034B4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000334A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100033190(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1000334D4()
{
  type metadata accessor for CloudChannelFetchTask();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_1000E6CE8 = v0;
  return result;
}

uint64_t sub_100033514()
{
  sub_10001BEC4();
  v1[4] = v0;
  v2 = *(*(sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100033608, v0, 0);
}

uint64_t sub_100033608()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  Date.init()();
  sub_10008C99C();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = *(v4 + 112);
  v0[9] = v7;
  if (v7)
  {
    v8 = async function pointer to Task.value.getter[1];

    v9 = swift_task_alloc();
    v0[10] = v9;
    v10 = sub_100003998(&qword_1000DC480, &unk_1000AB420);
    v11 = sub_100003998(&qword_1000DC470, &qword_1000AA620);
    *v9 = v0;
    v9[1] = sub_10003385C;
    v12 = v0 + 3;
  }

  else
  {
    v14 = v0[4];
    v13 = v0[5];
    v15 = type metadata accessor for TaskPriority();
    sub_100008E2C(v13, 1, 1, v15);
    v16 = sub_1000347FC();
    v17 = swift_allocObject();
    v17[2] = v14;
    v17[3] = v16;
    v17[4] = v14;
    v17[5] = v6;
    swift_retain_n();
    v7 = sub_100032E70(0, 0, v13, &unk_1000ABB70, v17);
    v0[12] = v7;
    v18 = *(v4 + 112);
    *(v4 + 112) = v7;

    v19 = async function pointer to Task.value.getter[1];
    v20 = swift_task_alloc();
    v0[13] = v20;
    v10 = sub_100003998(&qword_1000DC480, &unk_1000AB420);
    v11 = sub_100003998(&qword_1000DC470, &qword_1000AA620);
    *v20 = v0;
    v20[1] = sub_1000339E4;
    v12 = v0 + 2;
  }

  return Task.value.getter(v12, v7, v10, v11, &protocol self-conformance witness table for Error);
}

uint64_t sub_10003385C()
{
  sub_10001BF48();
  v2 = *v1;
  sub_10001BE94();
  *v4 = v3;
  v5 = *(v2 + 80);
  *v4 = *v1;
  *(v3 + 88) = v0;

  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_100033B90;
  }

  else
  {
    v7 = sub_10003397C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10003397C()
{
  sub_10001BEC4();
  v1 = *(v0 + 72);

  v2 = *(v0 + 24);
  sub_100034E70();

  v3 = sub_100034E3C();

  return v4(v3);
}

uint64_t sub_1000339E4()
{
  sub_10001BF48();
  v2 = *v1;
  sub_10001BE94();
  *v4 = v3;
  v5 = v2[13];
  v6 = v2[12];
  *v4 = *v1;
  *(v3 + 112) = v0;

  v7 = v2[4];
  if (v0)
  {
    v8 = sub_100033BF8;
  }

  else
  {
    v8 = sub_100033B20;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100033B20()
{
  sub_10001BEC4();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v1 + 112);
  *(v1 + 112) = 0;

  sub_100034E70();

  v4 = sub_100034E3C();

  return v5(v4);
}

uint64_t sub_100033B90()
{
  sub_10001BEC4();
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);
  sub_100034E70();

  sub_10001BEDC();

  return v3();
}

uint64_t sub_100033BF8()
{
  sub_10001BEC4();
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = *(v0 + 112);
  sub_100034E70();

  sub_10001BEDC();

  return v4();
}

uint64_t sub_100033C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[20] = a1;
  v7 = *(*(sub_100003998(&qword_1000DD148, &qword_1000ABB78) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v8 = sub_100003998(&qword_1000DD150, &qword_1000ABB80);
  v5[24] = v8;
  v9 = *(v8 - 8);
  v5[25] = v9;
  v10 = *(v9 + 64) + 15;
  v5[26] = swift_task_alloc();
  v11 = sub_100003998(&qword_1000DD158, &qword_1000ABB88);
  v5[27] = v11;
  v12 = *(v11 - 8);
  v5[28] = v12;
  v13 = *(v12 + 64) + 15;
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_100033DDC, a4, 0);
}

uint64_t sub_100033DDC()
{
  if (qword_1000DBA40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[30] = sub_100007DE8(v1, qword_1000E6DA8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetching available cloud channels", v4, 2u);
    sub_10000B008();
  }

  v0[31] = Dictionary.init(dictionaryLiteral:)();
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v9 = v0[22];
  type metadata accessor for BagProvider();

  sub_100002C48();
  sub_10003461C(v9);
  sub_100004710();
  v11 = v10;

  sub_10002C738((v0 + 2));
  v0[17] = v11;
  sub_100003998(&qword_1000DBE10, &qword_1000AA720);
  sub_10000A6FC(&qword_1000DBE18, &qword_1000DBE10, &qword_1000AA720);
  Publisher.values.getter();

  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v6, v8);
  v0[32] = sub_1000347FC();
  v12 = sub_10000A6FC(&qword_1000DD160, &qword_1000DD158, &qword_1000ABB88);
  v13 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v14 = swift_task_alloc();
  v0[33] = v14;
  *v14 = v0;
  v14[1] = sub_100034100;
  v15 = v0[29];
  v16 = v0[27];
  v17 = v0[23];

  return dispatch thunk of AsyncIteratorProtocol.next()(v17, v16, v12);
}

uint64_t sub_100034100()
{
  sub_10001BF48();
  v2 = *v1;
  sub_10001BE94();
  *v3 = v2;
  v5 = *(v4 + 264);
  v16 = *v1;
  v2[34] = v0;

  if (v0)
  {
    v6 = v2[31];
    v7 = v2[21];

    if (v7)
    {
      v8 = v2[32];
      v9 = v2[21];
      swift_getObjectType();
      v10 = dispatch thunk of Actor.unownedExecutor.getter();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v14 = sub_1000343F4;
    v13 = v10;
  }

  else
  {
    v13 = v2[21];
    v14 = sub_100034254;
    v12 = 0;
  }

  return _swift_task_switch(v14, v13, v12);
}

uint64_t sub_100034254()
{
  sub_10001BF48();
  v1 = *(v0 + 184);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  v2 = sub_100003998(&qword_1000DBE30, &qword_1000AA730);
  v3 = sub_100008B84(v1, 1, v2);
  v4 = *(v0 + 248);
  if (v3 != 1)
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 248);

    v4 = *(v5 + *(v2 + 40) + 16);

    sub_10001EF70(v5, &qword_1000DBE30, &qword_1000AA730);
  }

  v7 = *(v0 + 240);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v8, v9, "fetched %ld available cloud channels", v10, 0xCu);
    sub_10000B008();
  }

  else
  {
  }

  v11 = *(v0 + 232);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  **(v0 + 160) = v4;

  sub_10001BEDC();

  return v14();
}

uint64_t sub_1000343F4()
{
  sub_10001BEC4();
  v1 = v0[21];
  v0[18] = v0[34];
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100034488, v1, 0);
}

uint64_t sub_100034488()
{
  v22 = v0;
  v1 = v0[34];
  v2 = v0[30];
  (*(v0[28] + 8))(v0[29], v0[27]);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[34];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[16];
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000170D4(v11, v12, &v21);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "failed to fetch cloud channels. error=%s", v6, 0xCu);
    sub_100008A94(v7);
    sub_10000B008();
    sub_10000B008();
  }

  v14 = v0[34];
  v15 = v0[29];
  v16 = v0[26];
  v17 = v0[23];
  swift_willThrow();

  sub_10001BEDC();
  v19 = v0[34];

  return v18();
}

uint64_t sub_10003461C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = sub_10000AC48(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DD138, &unk_1000ABB58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AB130;
  *(inited + 32) = 8;
  Date.init()();
  sub_10008C99C();
  v12 = v11;
  (*(v5 + 8))(v9, v2);
  *(inited + 64) = &type metadata for UInt64;
  *(inited + 40) = v12;
  *(inited + 72) = 9;
  *(inited + 104) = &type metadata for UInt64;
  *(inited + 80) = a1;
  *(inited + 112) = 45;
  *(inited + 144) = &type metadata for EventType.EventName;
  *(inited + 120) = 3;
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10003477C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1000347FC()
{
  result = qword_1000DD140;
  if (!qword_1000DD140)
  {
    type metadata accessor for CloudChannelFetchTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD140);
  }

  return result;
}

uint64_t sub_100034850()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100034890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100034950;

  return sub_100033C68(a1, v4, v5, v7, v6);
}

uint64_t sub_100034950()
{
  sub_10001BEC4();
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_10001BEDC();

  return v2();
}

uint64_t sub_100034A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100034AAC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100034AC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100034B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100034B4C()
{
  result = qword_1000DD170;
  if (!qword_1000DD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD170);
  }

  return result;
}

unint64_t sub_100034BA0()
{
  result = qword_1000DD178;
  if (!qword_1000DD178)
  {
    sub_1000089A8(&qword_1000DC480, &unk_1000AB420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD178);
  }

  return result;
}

_BYTE *sub_100034C1C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100034CE8);
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

unint64_t sub_100034D20()
{
  result = qword_1000DD180;
  if (!qword_1000DD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD180);
  }

  return result;
}

unint64_t sub_100034D78()
{
  result = qword_1000DD188;
  if (!qword_1000DD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD188);
  }

  return result;
}

unint64_t sub_100034DD0()
{
  result = qword_1000DD190;
  if (!qword_1000DD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD190);
  }

  return result;
}

uint64_t sub_100034E50()
{

  return swift_task_create();
}

uint64_t sub_100034E70()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
}

uint64_t sub_100034E88@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100003998(&qword_1000DD2F8, &qword_1000ABEC8);
  result = a2(a1, *(a1 + *(v6 + 48)), *(a1 + *(v6 + 48) + 8));
  *a3 = result;
  return result;
}

uint64_t sub_100034EEC(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v57 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v58 = a1;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(*(v58 + 48) + v11);
    v13 = *(v58 + 56) + 32 * v11;
    sub_10003BC90();
    LOBYTE(v54) = v12;
    v51 = v54;
    v52 = v55;
    v53 = v56;
    sub_10003BC90();
    if (v35)
    {
      sub_100008EA8(&v33, &v48);
      v44 = v51;
      v45 = v52;
      v46 = v53;
      sub_100008EA8(&v48, &v41);
      v20 = v1[2];
      if (v1[3] <= v20)
      {
        sub_1000A1D80(v20 + 1, 1, v14, v15, v16, v17, v18, v19, v32, v33, *(&v33 + 1), v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47, v48, *(&v48 + 1), v49, v50, v51, *(&v51 + 1));
      }

      v1 = v57;
      v21 = v44;
      v22 = v57[5];
      Hasher.init(_seed:)();
      sub_100083914(v21);
      String.hash(into:)();

      result = Hasher._finalize()();
      v23 = (v1 + 8);
      v24 = -1 << *(v1 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~v1[(v25 >> 6) + 8]) == 0)
      {
        v28 = 0;
        v29 = (63 - v24) >> 6;
        while (++v26 != v29 || (v28 & 1) == 0)
        {
          v30 = v26 == v29;
          if (v26 == v29)
          {
            v26 = 0;
          }

          v28 |= v30;
          v31 = *&v23[8 * v26];
          if (v31 != -1)
          {
            v27 = __clz(__rbit64(~v31)) + (v26 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~v1[(v25 >> 6) + 8])) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *&v23[(v27 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v27;
      *(v1[6] + v27) = v21;
      sub_100008EA8(&v41, (v1[7] + 32 * v27));
      ++v1[2];
      result = sub_10001BB44(&v44 + 8, &qword_1000DBD08, &qword_1000AA690);
    }

    else
    {
      sub_10001BB44(&v51, &qword_1000DD030, &unk_1000AC840);
      result = sub_10001BB44(&v33, &qword_1000DBD08, &qword_1000AA690);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000351E0()
{
  v1 = type metadata accessor for SubscriptionRegisterOperation(0);
  v90 = *(v1 - 8);
  v2 = *(v90 + 64);
  __chkstk_darwin(v1 - 8);
  v91 = v3;
  v94 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003998(&qword_1000DD198, &qword_1000ABDB0);
  v5 = sub_10000AC48(v4);
  v77 = v6;
  v78 = v5;
  v8 = *(v7 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v9);
  sub_10000ADEC();
  v76 = v10;
  v11 = sub_100003998(&qword_1000DD1A0, &qword_1000ABDB8);
  v12 = sub_10000AC48(v11);
  v80 = v13;
  v81 = v12;
  v15 = *(v14 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v16);
  sub_10000ADEC();
  v79 = v17;
  v18 = sub_100003998(&qword_1000DD1A8, &qword_1000ABDC0);
  v19 = sub_10000AC48(v18);
  v83 = v20;
  v84 = v19;
  v22 = *(v21 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v23);
  sub_10000ADEC();
  v82 = v24;
  v25 = sub_100003998(&qword_1000DD1B0, &qword_1000ABDC8);
  v26 = sub_10000AC48(v25);
  v87 = v27;
  v88 = v26;
  v29 = *(v28 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v30);
  sub_10000ADEC();
  v85 = v31;
  v32 = sub_100003998(&qword_1000DD1B8, &unk_1000ABDD0);
  sub_10000AC48(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v37);
  sub_10000ADEC();
  v86 = v38;
  v39 = *(v0 + 40);
  v41 = *(v0 + 152);
  v40 = *(v0 + 160);
  v42 = v0;
  v43 = *(v0 + 256);
  v44 = v39[6];
  sub_100008614(v39 + 2, v39[5]);
  v45 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  v46 = v45;
  if (!v45)
  {
    goto LABEL_5;
  }

  v47 = v45;
  v48 = *(SportingEventSubscription.consumers.getter() + 16);

  if (!v48)
  {

LABEL_5:
    v50 = v42[3];
    v93 = v42;
    v51 = *sub_100008614(v42, v50);
    v71 = sub_10000F1CC();
    v95 = v71;
    v92 = type metadata accessor for SubscriptionRegisterOperation;
    sub_10003B578();
    v90 = *(v90 + 80);
    v75 = v34;
    v52 = (v90 + 16) & ~v90;
    swift_allocObject();
    v89 = type metadata accessor for SubscriptionRegisterOperation;
    sub_10003B5D0();
    v70[0] = static Subscribers.Demand.unlimited.getter();
    v74 = v46;
    sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
    v73 = v32;
    sub_100003998(&qword_1000DD1C0, &qword_1000ABDE0);
    sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0);
    v72 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000A6FC(&qword_1000DD1C8, &qword_1000DD1C0, &qword_1000ABDE0);
    v53 = v76;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    sub_10003B578();
    v70[1] = v52;
    swift_allocObject();
    sub_10003B5D0();
    static Subscribers.Demand.unlimited.getter();
    sub_100003998(&qword_1000DD1D0, &qword_1000ABDE8);
    sub_100003998(&qword_1000DD1D8, &unk_1000ABDF0);
    v71 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
    sub_10000A6FC(&qword_1000DD1E0, &qword_1000DD198, &qword_1000ABDB0);
    sub_10000A6FC(&qword_1000DD1E8, &qword_1000DD1D8, &unk_1000ABDF0);
    v54 = v79;
    v55 = v78;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v77 + 8))(v53, v55);
    sub_10003B578();
    v56 = swift_allocObject();
    sub_10003B5D0();
    v57 = swift_allocObject();
    *(v57 + 16) = sub_10003808C;
    *(v57 + 24) = v56;
    sub_10000A6FC(&qword_1000DD1F0, &qword_1000DD1A0, &qword_1000ABDB8);
    v58 = v81;
    v59 = v82;
    Publisher.tryFilter(_:)();

    (*(v80 + 8))(v54, v58);
    sub_10003B578();
    v60 = swift_allocObject();
    sub_10003B5D0();
    v61 = swift_allocObject();
    *(v61 + 16) = sub_10003A054;
    *(v61 + 24) = v60;
    sub_10000A6FC(&qword_1000DD1F8, &qword_1000DD1A8, &qword_1000ABDC0);
    v62 = v84;
    v63 = v85;
    Publisher.map<A>(_:)();

    (*(v83 + 8))(v59, v62);
    v64 = sub_10001C53C();
    sub_100003998(v64, v65);
    sub_10000A6FC(&qword_1000DD200, &qword_1000DD1B0, &qword_1000ABDC8);
    sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
    v66 = v86;
    v67 = v88;
    Publisher.catch<A>(_:)();
    (*(v87 + 8))(v63, v67);
    sub_10000A6FC(&qword_1000DD208, &qword_1000DD1B8, &unk_1000ABDD0);
    v68 = v73;
    v49 = Publisher.eraseToAnyPublisher()();

    (*(v75 + 8))(v66, v68);
    return v49;
  }

  v49 = sub_100035B6C();

  return v49;
}

uint64_t sub_100035B6C()
{
  v1 = v0;
  v2 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  __chkstk_darwin(v2);
  v4 = sub_100003998(&qword_1000DCF70, &unk_1000AB920);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v41 = &v39 - v6;
  v7 = sub_100003998(&qword_1000DCF78, &qword_1000ABE00);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  __chkstk_darwin(v7);
  v42 = &v39 - v9;
  v10 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v39 - v12;
  v14 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v39 - v16;
  v18 = type metadata accessor for SportingEventSubscription.Metadata();
  v40 = *(v18 - 8);
  v19 = *(v40 + 64);
  __chkstk_darwin(v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[2] = SportingEventSubscription.consumers.getter();
  v22 = v0[17];
  v23 = v0[18];

  sub_100019204(v49, v22, v23);

  if (v0[24] && v0[26])
  {
    v39 = v0[23];
    v24 = v0[25];
    v25 = *(type metadata accessor for SubscriptionRegisterOperation(0) + 72);
    sub_10003BC90();
    v26 = type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
    if (sub_100008B84(v13, 1, v26) == 1)
    {
      sub_10001BB44(v13, &qword_1000DD210, &qword_1000ABE08);
      sub_100008E2C(v17, 1, 1, v18);
    }

    else
    {
      sub_10003BC90();
      sub_10003B2C0(v13, type metadata accessor for SubscriptionRegisterOperation.PreferredData);
      if (sub_100008B84(v17, 1, v18) != 1)
      {
        v38 = v40;
        (*(v40 + 32))(v21, v17, v18);
        v27 = SportingEventSubscription.byChanging(leagueId:sportId:metadata:consumers:)();

        (*(v38 + 8))(v21, v18);
        goto LABEL_8;
      }
    }

    sub_10001BB44(v17, &qword_1000DD218, &unk_1000ABE10);
  }

  v27 = SportingEventSubscription.byChangingConsumers(_:)();

LABEL_8:
  v28 = v1[5];
  v29 = *(v1 + 256);
  v30 = v28[6];
  sub_100008614(v28 + 2, v28[5]);
  v31 = v27;
  dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();

  LOBYTE(v49[0]) = 1;
  v32 = v41;
  Just.init(_:)();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  v33 = v42;
  v34 = v44;
  Just.setFailureType<A>(to:)();
  (*(v43 + 8))(v32, v34);
  sub_10000A6FC(&qword_1000DCFC0, &qword_1000DCF78, &qword_1000ABE00);
  v35 = v46;
  v36 = Publisher.eraseToAnyPublisher()();

  (*(v45 + 8))(v33, v35);
  return v36;
}

uint64_t sub_1000361D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v69 = a3;
  v67 = sub_100003998(&qword_1000DD2D8, &qword_1000ABEB0);
  v65 = *(v67 - 8);
  v5 = *(v65 + 64);
  __chkstk_darwin(v67);
  v63 = &v58 - v6;
  v68 = sub_100003998(&qword_1000DD2E0, &qword_1000ABEB8);
  v66 = *(v68 - 8);
  v7 = *(v66 + 64);
  __chkstk_darwin(v68);
  v64 = &v58 - v8;
  v9 = type metadata accessor for SubscriptionRegisterOperation(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  __chkstk_darwin(v16);
  v18 = (&v58 - v17);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = *a1;
  v23 = a1[1];
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v71 = v22;
  v24 = type metadata accessor for Logger();
  sub_100007DE8(v24, qword_1000E6D48);
  sub_10003B578();
  sub_10003B578();
  sub_10003B578();
  sub_10003B578();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v27 = os_log_type_enabled(v25, v26);
  v70 = v23;
  if (v27)
  {
    v28 = swift_slowAlloc();
    LODWORD(v61) = v26;
    v29 = v28;
    v62 = swift_slowAlloc();
    __src[0] = v62;
    *v29 = 136316162;
    v31 = *(v21 + 19);
    v30 = *(v21 + 20);

    sub_10003B2C0(v21, type metadata accessor for SubscriptionRegisterOperation);
    v32 = sub_1000170D4(v31, v30, __src);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_1000170D4(v71, v70, __src);
    *(v29 + 22) = 2080;
    v33 = (*sub_100008614(v18, v18[3]) + OBJC_IVAR____TtC7sportsd11ApsListener_currentAPSConnectionEnvironment);
    v34 = *v33;
    v35 = v33[1];

    sub_10003B2C0(v18, type metadata accessor for SubscriptionRegisterOperation);
    v36 = sub_1000170D4(v34, v35, __src);

    *(v29 + 24) = v36;
    *(v29 + 32) = 2080;
    v37 = *(v15 + 17);
    v38 = *(v15 + 18);

    sub_10003B2C0(v15, type metadata accessor for SubscriptionRegisterOperation);
    v39 = sub_1000170D4(v37, v38, __src);

    *(v29 + 34) = v39;
    *(v29 + 42) = 2080;
    sub_100069EA8(v12[256]);
    v41 = v40;
    v43 = v42;
    sub_10003B2C0(v12, type metadata accessor for SubscriptionRegisterOperation);
    v44 = sub_1000170D4(v41, v43, __src);

    *(v29 + 44) = v44;
    _os_log_impl(&_mh_execute_header, v25, v61, "Tempo /register with id=%s, push_token=%s, aps_env=%s consumer_id=%s, applicationType=%s", v29, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10003B2C0(v12, type metadata accessor for SubscriptionRegisterOperation);
    sub_10003B2C0(v15, type metadata accessor for SubscriptionRegisterOperation);
    sub_10003B2C0(v21, type metadata accessor for SubscriptionRegisterOperation);
    sub_10003B2C0(v18, type metadata accessor for SubscriptionRegisterOperation);
  }

  sub_10000BC8C(a2 + 56, v73);
  v45 = sub_100008614(v73, v73[3]);
  v46 = *(a2 + 160);
  v61 = *(a2 + 152);
  v47 = *(a2 + 192);
  v60 = *(a2 + 184);
  LODWORD(v62) = *(a2 + 256);
  v59 = *(a2 + 232);
  v48 = sub_100036B40();
  v58 = sub_100034EEC(v48);

  __src[0] = *(*sub_100008614(v45 + 7, v45[10]) + 24);
  __src[12] = *(*sub_100008614(v45 + 7, v45[10]) + 48);

  sub_100003998(&qword_1000DBD60, &qword_1000ABEC0);
  sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
  sub_10000A6FC(&qword_1000DBD70, &qword_1000DBD60, &qword_1000ABEC0);
  sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0);
  v49 = v63;
  Publishers.Zip.init(_:_:)();
  sub_1000097A0(v45, __src);
  v50 = swift_allocObject();
  v51 = v70;
  *(v50 + 16) = v71;
  *(v50 + 24) = v51;
  *(v50 + 32) = v61;
  *(v50 + 40) = v46;
  *(v50 + 48) = v60;
  *(v50 + 56) = v47;
  *(v50 + 64) = v59;
  *(v50 + 65) = v62;
  memcpy((v50 + 72), __src, 0x60uLL);
  *(v50 + 168) = v58;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_10003BC3C;
  *(v52 + 24) = v50;

  static Subscribers.Demand.unlimited.getter();
  sub_100003998(&qword_1000DD1C0, &qword_1000ABDE0);
  sub_10000A6FC(&qword_1000DD2E8, &qword_1000DD2D8, &qword_1000ABEB0);
  sub_10000A6FC(&qword_1000DD1C8, &qword_1000DD1C0, &qword_1000ABDE0);
  v53 = v64;
  v54 = v67;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v65 + 8))(v49, v54);
  sub_10000A6FC(&qword_1000DD2F0, &qword_1000DD2E0, &qword_1000ABEB8);
  v55 = v68;
  v56 = Publisher.eraseToAnyPublisher()();
  (*(v66 + 8))(v53, v55);
  *v69 = v56;
  return sub_100008A94(v73);
}

uint64_t sub_100036AA0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100036AD8()
{
  sub_10003C23C();
  v1 = *(v0 + 80);
  sub_10003C284();
  v2 = sub_10003C25C();

  return sub_1000361D8(v2, v3, v4);
}

uint64_t sub_100036B40()
{
  v1 = v0;
  v23 = type metadata accessor for Date();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v23);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000ABD90;
  *(inited + 32) = 3;
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  *(inited + 72) = 21;
  v9 = type metadata accessor for SubscriptionRegisterOperation(0);
  v10 = (v1 + v9[20]);
  v11 = *v10;
  v12 = v10[1];
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v11;
  *(inited + 88) = v12;
  *(inited + 112) = 22;
  v13 = *(v1 + 256);
  sub_100069EA8(*(v1 + 256));
  *(inited + 144) = &type metadata for String;
  *(inited + 120) = v14;
  *(inited + 128) = v15;
  *(inited + 152) = 8;

  Date.init()();
  sub_10008C99C();
  v17 = v16;
  (*(v2 + 8))(v5, v23);
  *(inited + 184) = &type metadata for UInt64;
  *(inited + 160) = v17;
  *(inited + 192) = 9;
  v18 = *(v1 + v9[19]);
  *(inited + 224) = &type metadata for UInt64;
  *(inited + 200) = v18;
  *(inited + 232) = 44;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = (v13 < 6) & (0x27u >> v13);
  *(inited + 272) = 45;
  *(inited + 304) = &type metadata for EventType.EventName;
  *(inited + 280) = 0;
  *(inited + 312) = 1;
  v19 = (v1 + v9[21]);
  v21 = *v19;
  v20 = v19[1];
  *(inited + 344) = &type metadata for String;
  *(inited + 320) = v21;
  *(inited + 328) = v20;

  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100036D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v81 = a3;
  v82 = a2;
  v4 = sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  v5 = v4 - 8;
  v70 = *(v4 - 8);
  v71 = *(v70 + 64);
  __chkstk_darwin(v4);
  v73 = &v66 - v6;
  v7 = sub_100003998(&qword_1000DD270, &qword_1000ABE78);
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  __chkstk_darwin(v7);
  v66 = &v66 - v9;
  v76 = sub_100003998(&qword_1000DD278, &qword_1000ABE80);
  v74 = *(v76 - 8);
  v10 = *(v74 + 64);
  __chkstk_darwin(v76);
  v69 = &v66 - v11;
  v77 = sub_100003998(&qword_1000DD280, &qword_1000ABE88);
  v75 = *(v77 - 8);
  v12 = *(v75 + 64);
  __chkstk_darwin(v77);
  v72 = &v66 - v13;
  v79 = sub_100003998(&qword_1000DD1D0, &qword_1000ABDE8);
  v14 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v16 = &v66 - v15;
  v17 = sub_100003998(&qword_1000DD288, &qword_1000ABE90);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v66 - v20;
  v22 = sub_100003998(&qword_1000DD290, &qword_1000ABE98);
  v78 = *(v22 - 8);
  v23 = *(v78 + 64);
  __chkstk_darwin(v22);
  v25 = &v66 - v24;
  v26 = *(v5 + 48);
  v80 = a1;
  v27 = a1 + v26;
  v28 = *(a1 + v26 + 48);
  if (!v28 || (v30 = *(v82 + 152), v29 = *(v82 + 160), (v31 = sub_10007C02C(v30, v29, v28)) == 0))
  {
    v40 = *(v79 + 48);
    v41 = *(v79 + 64);
    sub_10003BC90();
    *&v16[v40] = _swiftEmptyArrayStorage;
    *&v16[v41] = xmmword_1000ABDA0;
    Just.init(_:)();
    sub_100003998(&qword_1000DC470, &qword_1000AA620);
    Just.setFailureType<A>(to:)();
    (*(v18 + 8))(v21, v17);
    sub_10000A6FC(&qword_1000DD298, &qword_1000DD290, &qword_1000ABE98);
    v42 = Publisher.eraseToAnyPublisher()();
    v43 = v78;
LABEL_14:
    result = (*(v43 + 8))(v25, v22);
    *v81 = v42;
    return result;
  }

  v32 = v31;
  v33 = v82;
  v34 = dispatch thunk of SportingEvent.competitors.getter();

  v36 = *(v27 + 24);
  if (v36)
  {
    v35 = sub_10007C074(v30, v29, v36);
    v37 = v35;
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v44 = *(v27 + 16);
  __chkstk_darwin(v35);
  *(&v66 - 2) = v45;
  *(&v66 - 1) = v33;
  sub_100092A08(sub_10003B670, (&v66 - 4), v34);
  v47 = v46;

  v48 = *(v47 + 16);
  if (!v48)
  {

    v58 = _swiftEmptyArrayStorage;
LABEL_13:
    v83 = v58;
    sub_100003998(&qword_1000DD2A0, &qword_1000ABEA0);
    sub_100003998(&qword_1000DD2A8, &qword_1000ABEA8);
    sub_10000A6FC(&qword_1000DD2B0, &qword_1000DD2A0, &qword_1000ABEA0);
    sub_10000A6FC(&qword_1000DD2B8, &qword_1000DD2A8, &qword_1000ABEA8);
    v59 = v66;
    Publishers.MergeMany.init<A>(_:)();
    sub_10000A6FC(&qword_1000DD2C0, &qword_1000DD270, &qword_1000ABE78);
    v60 = v68;
    v61 = v69;
    Publisher.collect()();
    (*(v67 + 8))(v59, v60);
    sub_10003BC90();
    v62 = (v71 + ((*(v70 + 80) + 16) & ~*(v70 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    sub_10003BAC8();
    v64 = (v63 + v62);
    *v64 = v37;
    v64[1] = v39;
    sub_10000A6FC(&qword_1000DD2C8, &qword_1000DD278, &qword_1000ABE80);
    v25 = v72;
    v65 = v76;
    Publisher.map<A>(_:)();

    (*(v74 + 8))(v61, v65);
    sub_10000A6FC(&qword_1000DD2D0, &qword_1000DD280, &qword_1000ABE88);
    v22 = v77;
    v42 = Publisher.eraseToAnyPublisher()();
    v43 = v75;
    goto LABEL_14;
  }

  v82 = v37;
  v49 = *(v33 + 40);
  v83 = _swiftEmptyArrayStorage;

  result = specialized ContiguousArray.reserveCapacity(_:)();
  v51 = 0;
  v52 = (v47 + 56);
  while (v51 < *(v47 + 16))
  {
    ++v51;
    v53 = *(v52 - 3);
    v54 = *(v52 - 2);
    v55 = *(v52 - 1);
    v56 = *v52;

    sub_10002D48C(v53, v54, v55, v56);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v57 = v83[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    v52 += 4;
    if (v48 == v51)
    {

      v37 = v82;
      v58 = v83;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100037660()
{
  v2 = type metadata accessor for SubscriptionRegisterOperation(0);
  sub_10003C224(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  sub_100008A94((v1 + v5));
  v8 = *(v1 + v5 + 40);

  v9 = *(v1 + v5 + 48);

  sub_100008A94((v1 + v5 + 56));
  sub_100008A94((v1 + v5 + 96));
  v10 = *(v1 + v5 + 144);

  v11 = *(v1 + v5 + 160);

  v12 = *(v1 + v5 + 176);

  v13 = *(v1 + v5 + 192);

  v14 = *(v1 + v5 + 208);

  v15 = *(v1 + v5 + 224);

  v16 = *(v1 + v5 + 248);

  v17 = v0[18];
  type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
  v18 = sub_10003C26C();
  if (!sub_100008B84(v18, v19, v20))
  {
    v21 = type metadata accessor for SportingEventSubscription.Metadata();
    v22 = sub_10003C26C();
    if (!sub_100008B84(v22, v23, v21))
    {
      sub_10000ACDC(v21);
      (*(v24 + 8))(v1 + v5 + v17, v21);
    }
  }

  sub_10000AE38(v0[20]);
  sub_10000AE38(v0[21]);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_1000377D4()
{
  sub_10003C23C();
  v1 = *(v0 + 80);
  sub_10003C284();
  v2 = sub_10003C25C();

  return sub_100036D90(v2, v3, v4);
}

void sub_10003783C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for TemplateImageUrl.ImageFormat();
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  __chkstk_darwin(v9);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v61 = &v52 - v14;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v59 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_24;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_24;
  }

  v19 = *a1;
  v20 = *(a3 + 152);
  v21 = *(a3 + 160);
  v22 = sub_100017538();
  if ((v23 & 1) == 0)
  {
    goto LABEL_24;
  }

  v55 = v16;
  v24 = (*(a2 + 56) + 16 * v22);
  v25 = v24[1];
  v58 = *v24;

  v26 = SportingEventCompetitorContainer.competitor.getter();
  v27 = dispatch thunk of SportingEventCompetitor.images.getter();

  if (!v27)
  {

LABEL_24:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  v56 = v25;
  v57 = v4;
  v52 = v19;
  v53 = v9;
  v54 = v15;
  v28 = sub_10001BE20(v27);
  for (i = 0; ; ++i)
  {
    if (v28 == i)
    {

      goto LABEL_24;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v30 = *(v27 + 8 * i + 32);
    }

    v31 = v30;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    if (SportingEventImage.type.getter() == 1869049676 && v32 == 0xE400000000000000)
    {
      break;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_21;
    }
  }

LABEL_21:

  SportingEventImage.token.getter();

  static TemplateImageUrl.templateThumbUrl(host:token:)();
  v36 = v35;

  v37 = v53;
  v38 = v54;
  if (!v36)
  {
    goto LABEL_24;
  }

  v39 = v62;
  v40 = v60;
  (*(v62 + 104))(v60, enum case for TemplateImageUrl.ImageFormat.png(_:), v53);
  v41 = v61;
  static TemplateImageUrl.imageUrl(templateUrl:width:height:format:)();

  (*(v39 + 8))(v40, v37);
  if (sub_100008B84(v41, 1, v38) == 1)
  {
    sub_10001BB44(v41, &unk_1000DD7B0, &qword_1000AC150);
    goto LABEL_24;
  }

  v42 = v55;
  v43 = v59;
  (*(v55 + 32))(v59, v41, v38);
  v44 = SportingEventCompetitorContainer.competitor.getter();
  v45 = SportingEventCompetitor.canonicalId.getter();
  v47 = v46;

  v48 = URL.absoluteString.getter();
  v49 = v42;
  v51 = v50;
  (*(v49 + 8))(v43, v38);
  *a4 = v45;
  *(a4 + 8) = v47;
  *(a4 + 16) = v48;
  *(a4 + 24) = v51;
}

uint64_t sub_100037CA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_100003998(&qword_1000DD1D0, &qword_1000ABDE8);
  v9 = *(v8 + 48);
  v10 = (a4 + *(v8 + 64));
  sub_10003BC90();
  *(a4 + v9) = v7;
  *v10 = a2;
  v10[1] = a3;
}

uint64_t sub_100037D48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SubscriptionRegisterOperation(0);
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  __chkstk_darwin(v10 - 8);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v34 = &v33 - v14;
  v15 = sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  v16 = *(a1 + *(v15 + 40) + 48);
  if (v16)
  {
    v17 = sub_10007C02C(*(a5 + 152), *(a5 + 160), v16);
  }

  else
  {
    v17 = 0;
  }

  if (a4)
  {
    v18 = a3;
  }

  else
  {
    v18 = 0;
  }

  if (a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = sub_100038120(a1, a2, v18, v19);

  if (v17)
  {
    type metadata accessor for ApsMessageProcessingOperation();
    v21 = v17;
    v22 = v20;
    sub_100092B94(v21, v20);
  }

  sub_100039850(*(a1 + *(v15 + 36)), *(a1 + *(v15 + 36) + 8));
  v23 = *(a5 + 40);
  v24 = *(a5 + 256);
  v25 = v23[6];
  sub_100008614(v23 + 2, v23[5]);
  v26 = v37;
  dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
  if (v26 || (v27 = SportingEventSubscription.consumers.getter(), v28 = sub_100049B40(0xD000000000000011, 0x80000001000B0480, v27), , !v28))
  {
  }

  else
  {
    v29 = type metadata accessor for TaskPriority();
    sub_100008E2C(v34, 1, 1, v29);
    sub_10003B578();
    v30 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    sub_10003B5D0();
    sub_10004A77C();
  }

  return 1;
}

uint64_t sub_10003808C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*(type metadata accessor for SubscriptionRegisterOperation(0) - 8) + 80);
  sub_10003C284();
  return sub_100037D48(a1, a2, a3, a4, v4 + v10) & 1;
}

uint64_t sub_100038120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v200 = a4;
  v199 = a3;
  v236 = a2;
  v239 = a1;
  v5 = sub_100003998(&qword_1000DD220, &unk_1000ABE30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v191 - v7;
  v238 = type metadata accessor for SportingEventRunningClockFeature();
  v220 = *(v238 - 8);
  v9 = *(v220 + 64);
  __chkstk_darwin(v238);
  v218 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v222 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v221 = &v191 - v15;
  __chkstk_darwin(v16);
  v223 = &v191 - v17;
  v207 = type metadata accessor for Sport();
  v206 = *(v207 - 8);
  v18 = *(v206 + 64);
  __chkstk_darwin(v207);
  v205 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v212 = &v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v196 = &v191 - v24;
  v25 = sub_100003998(&qword_1000DD230, &qword_1000ABE48);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v193 = &v191 - v27;
  v204 = type metadata accessor for Date();
  v198 = *(v204 - 8);
  v28 = *(v198 + 64);
  __chkstk_darwin(v204);
  v203 = &v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v194 = &v191 - v31;
  __chkstk_darwin(v32);
  v202 = &v191 - v33;
  v34 = sub_100003998(&qword_1000DD238, &qword_1000ABE50);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v233 = &v191 - v36;
  v37 = type metadata accessor for SportingEventSubscription.Competitor();
  v231 = *(v37 - 8);
  v232 = v37;
  v38 = *(v231 + 64);
  __chkstk_darwin(v37);
  v235 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v230 = &v191 - v41;
  v42 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v191 - v44;
  v46 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v211 = &v191 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v197 = &v191 - v50;
  __chkstk_darwin(v51);
  v237 = &v191 - v52;
  __chkstk_darwin(v53);
  v234 = &v191 - v54;
  __chkstk_darwin(v55);
  v229 = &v191 - v56;
  v213 = _s20RegistrationResponseVMa();
  v57 = *(*(v213 - 8) + 64);
  __chkstk_darwin(v213);
  v59 = &v191 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(v4 + 40);
  v61 = *(v4 + 152);
  v62 = *(v4 + 160);
  v227 = v4;
  v209 = *(v4 + 256);
  v63 = v60[6];
  sub_100008614(v60 + 2, v60[5]);
  v64 = v61;
  v65 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();
  v66 = *(sub_100003998(&qword_1000DBC40, &qword_1000AA618) + 40);
  sub_10003B578();
  v67 = *(v59 + 6);
  if (v67)
  {
    v68 = sub_10007C02C(v61, v62, v67);
  }

  else
  {
    v68 = 0;
  }

  v224 = v68;
  v225 = v62;
  v69 = v227;
  if (v65)
  {
    v70 = v65;
    v71 = SportingEventSubscription.consumers.getter();
  }

  else
  {
    v71 = &_swiftEmptySetSingleton;
  }

  v241 = v71;
  v72 = v69[17];
  v73 = v69[18];

  sub_100019204(&v240, v72, v73);

  v74 = *(v59 + 4);
  v75 = v225;
  if (!v74 || (v239 = sub_10007C0C8(v64, v225, v74)) == 0)
  {

    v239 = _swiftEmptyArrayStorage;
  }

  v76 = v69[24];
  v214 = v69[23];
  v78 = v69[25];
  v77 = v69[26];
  v208 = type metadata accessor for SubscriptionRegisterOperation(0);
  v79 = *(v208 + 72);
  sub_10003BC90();
  v80 = type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
  v81 = sub_100008B84(v45, 1, v80);
  v217 = v76;
  v226 = v77;
  if (v81 == 1)
  {

    sub_10001BB44(v45, &qword_1000DD210, &qword_1000ABE08);
    v82 = type metadata accessor for SportingEventSubscription.Metadata();
    v83 = v234;
    sub_100008E2C(v234, 1, 1, v82);
  }

  else
  {
    v84 = v234;
    sub_10003BC90();

    v85 = v45;
    v83 = v84;
    sub_10003B2C0(v85, type metadata accessor for SubscriptionRegisterOperation.PreferredData);
    v86 = type metadata accessor for SportingEventSubscription.Metadata();
    if (sub_100008B84(v83, 1, v86) != 1)
    {
      v89 = v75;
      v90 = v83;
      v91 = v229;
      (*(*(v86 - 8) + 32))(v229, v90, v86);
      sub_100008E2C(v91, 0, 1, v86);
      goto LABEL_19;
    }
  }

  if (v65)
  {
    v87 = v65;
    SportingEventSubscription.metadata.getter();
  }

  else
  {
    v88 = type metadata accessor for SportingEventSubscription.Metadata();
    sub_100008E2C(v229, 1, 1, v88);
  }

  v89 = v75;
  v86 = type metadata accessor for SportingEventSubscription.Metadata();
  if (sub_100008B84(v83, 1, v86) != 1)
  {
    sub_10001BB44(v83, &qword_1000DD218, &unk_1000ABE10);
  }

LABEL_19:
  v92 = v237;
  sub_10003BC90();
  type metadata accessor for SportingEventSubscription.Metadata();
  v195 = v86;
  v93 = sub_100008B84(v92, 1, v86);
  sub_10001BB44(v92, &qword_1000DD218, &unk_1000ABE10);
  v210 = v65;
  v219 = v59;
  v216 = v64;
  if (v93 == 1)
  {
    v94 = v227;
    if (v224)
    {
      v215 = v78;
      v95 = v224;
      v96 = dispatch thunk of SportingEvent.competitors.getter();
      v192 = v95;

      v97 = sub_10001BE20(v96);
      v98 = 0;
      v99 = 0;
      v100 = v96 & 0xC000000000000001;
      v234 = v96 & 0xFFFFFFFFFFFFFF8;
      v101 = v232;
      v102 = (v231 + 32);
      v237 = _swiftEmptyArrayStorage;
      v103 = v233;
      v228 = v96;
      while (v97 != v98)
      {
        if (v100)
        {
          v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v98 >= *(v234 + 16))
          {
            goto LABEL_98;
          }

          v104 = *(v96 + 8 * v98 + 32);
        }

        v65 = v104;
        if (__OFADD__(v98, 1))
        {
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_52;
        }

        v240 = v104;
        sub_10003A2F0(&v240, v236, v103);

        if (sub_100008B84(v103, 1, v101) == 1)
        {
          sub_10001BB44(v103, &qword_1000DD238, &qword_1000ABE50);
        }

        else
        {
          v105 = v97;
          v106 = v100;
          v107 = v8;
          v108 = v101;
          v109 = *v102;
          v110 = v230;
          (*v102)(v230, v103, v108);
          v109(v235, v110, v108);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = *(v237 + 2);
            sub_100016894();
            v237 = v116;
          }

          v111 = *(v237 + 2);
          v65 = (v111 + 1);
          v8 = v107;
          if (v111 >= *(v237 + 3) >> 1)
          {
            sub_100016894();
            v237 = v117;
          }

          v100 = v106;
          v112 = v237;
          *(v237 + 2) = v65;
          v113 = &v112[((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v111];
          v114 = v232;
          v109(v113, v235, v232);
          v101 = v114;
          v103 = v233;
          v97 = v105;
          v96 = v228;
        }

        ++v98;
      }

      v201 = 0;

      v120 = v202;
      Date.init()();
      v121 = v192;
      v122 = dispatch thunk of SportingEvent.schedule.getter();

      v123 = v204;
      v99 = v198;
      if (v122)
      {
        v124 = SportingEventSchedule.duration.getter();

        SportingEventDuration.start.getter();
        v125 = v194;
        Date.init(timeIntervalSince1970:)();
        (*(v99 + 8))(v120, v123);
        (*(v99 + 32))(v120, v125, v123);
      }

      (*(v99 + 16))(v203, v120, v123);
      v126 = &v219[*(v213 + 44)];
      v127 = v196;
      sub_10003BC90();
      v128 = type metadata accessor for SportingEventViewContext();
      v129 = sub_100008B84(v127, 1, v128);
      v101 = v225;
      if (v129 == 1)
      {
        v130 = &qword_1000DD228;
        v131 = &qword_1000ABE40;
        v132 = v127;
      }

      else
      {
        v133 = v193;
        SportingEventViewContext.titles.getter();
        (*(*(v128 - 8) + 8))(v127, v128);
        v134 = type metadata accessor for SportingEventViewContext.LocalizedTitles();
        if (sub_100008B84(v133, 1, v134) != 1)
        {
          v65 = SportingEventViewContext.LocalizedTitles.preGame.getter();
          v135 = v139;
          (*(*(v134 - 8) + 8))(v133, v134);
          if (v135)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        v130 = &qword_1000DD230;
        v131 = &qword_1000ABE48;
        v132 = v133;
      }

      sub_10001BB44(v132, v130, v131);
LABEL_47:

      v65 = 0;
      v135 = 0xE000000000000000;
LABEL_48:
      v97 = v121;
      v136 = dispatch thunk of SportingEvent.localizedShortName.getter();

      v236 = v135;
      if (!v136)
      {
        goto LABEL_56;
      }

      if (sub_10001BE20(v136))
      {
        sub_1000835D4(0, (v136 & 0xC000000000000001) == 0, v136);
        if ((v136 & 0xC000000000000001) != 0)
        {
          goto LABEL_99;
        }

        v137 = *(v136 + 32);
LABEL_52:
        v138 = v137;

        SportingEventLocalizedDisplayName.text.getter();

        goto LABEL_56;
      }

LABEL_56:
      v119 = v97;
      v140 = dispatch thunk of SportingEvent.league.getter();

      if (v140)
      {
        v141 = SportingEventLeague.localizedDisplayName.getter();

        if (sub_10001BE20(v141))
        {
          v235 = v65;
          sub_1000835D4(0, (v141 & 0xC000000000000001) == 0, v141);
          if ((v141 & 0xC000000000000001) != 0)
          {
            v142 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v142 = *(v141 + 32);
          }

          v143 = v142;

          SportingEventLocalizedDisplayName.text.getter();

          v65 = v235;
        }

        else
        {
        }
      }

      v144 = v197;
      SportingEventSubscription.Metadata.init(eventStartDate:competitors:preGameTitle:shortTitle:eventURL:localizedLeagueName:)();
      (*(v99 + 8))(v202, v204);
      sub_10001BB44(v229, &qword_1000DD218, &unk_1000ABE10);
      sub_100008E2C(v144, 0, 1, v195);
      sub_10003BAC8();
      v94 = v227;
      v78 = v215;
      v118 = v201;
      goto LABEL_63;
    }

    v101 = v89;
LABEL_43:
    v201 = 0;
    goto LABEL_66;
  }

  v94 = v227;
  v101 = v89;
  if (!v224)
  {
    goto LABEL_43;
  }

  v118 = 0;
  v119 = v224;
LABEL_63:
  v201 = v118;
  v145 = v119;
  v146 = dispatch thunk of SportingEvent.league.getter();

  if (v146)
  {
    v65 = v94;

    v214 = SportingEventLeague.canonicalId.getter();
    v217 = v147;
    v148 = SportingEventLeague.sport.getter();
    v78 = SportingEventSport.canonicalId.getter();
    v150 = v149;

    v151 = v150;
    v152 = v241;
    v59 = v219;
    v64 = v216;
LABEL_68:
    swift_bridgeObjectRetain_n();
    v236 = v152;

    v153 = v205;
    Sport.init(rawValue:)();
    v154 = Sport.rawValue.getter();
    v233 = v155;
    v234 = v154;
    v226 = v151;

    (*(v206 + 8))(v153, v207);
    v94 = v65;
    goto LABEL_70;
  }

  v59 = v219;
  v64 = v216;
LABEL_66:
  v151 = v226;
  v152 = v241;
  if (v226)
  {
    v65 = v94;
    goto LABEL_68;
  }

  v236 = v241;

  v226 = 0;
  v233 = 0xE000000000000000;
  v234 = 0;
LABEL_70:
  v156 = v94[30];
  v231 = v94[31];
  v232 = v156;
  v157 = *v59;

  sub_10007C074(v64, v101, v157);
  if (v158)
  {
    URL.init(string:)();
  }

  else
  {
    v159 = type metadata accessor for URL();
    sub_100008E2C(v223, 1, 1, v159);
  }

  v160 = *(v59 + 1);
  if (v160 && (sub_10007C074(v64, v101, v160), v161))
  {
    URL.init(string:)();
  }

  else
  {
    v162 = type metadata accessor for URL();
    sub_100008E2C(v221, 1, 1, v162);
  }

  v163 = *(v59 + 2);
  if (v163 && (sub_10007C074(v64, v101, v163), v164))
  {
    URL.init(string:)();
  }

  else
  {

    v165 = type metadata accessor for URL();
    sub_100008E2C(v222, 1, 1, v165);
  }

  v166 = v224;
  v215 = v78;
  if (v224)
  {
    v230 = v224;
  }

  else
  {
    type metadata accessor for SportingEventFactory();
    v230 = static SportingEventFactory.unknown(canonicalId:)();
    v166 = 0;
  }

  v224 = *(v59 + 7);
  LODWORD(v207) = v59[64];
  v206 = *(v59 + 9);
  LODWORD(v205) = v59[80];
  v235 = (v220 + 32);
  v167 = v239;
  v101 = v239[2];
  v228 = v166;
  v99 = 0;
  v168 = (v167 + 7);
  v237 = _swiftEmptyArrayStorage;
  v204 = (v167 + 7);
LABEL_85:
  v97 = (v168 + 32 * v99);
  while (v101 != v99)
  {
    if (v99 >= v239[2])
    {
      __break(1u);
      goto LABEL_97;
    }

    v65 = *(v97 - 1);
    v169 = *v97;
    v171 = *(v97 - 3);
    v170 = *(v97 - 2);

    SportingEventRunningClockFeature.init(feature:value:)();
    if (sub_100008B84(v8, 1, v238) != 1)
    {
      v172 = *v235;
      (*v235)(v218, v8, v238);
      v65 = v237;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v175 = v65[2];
        sub_1000167BC();
        v65 = v176;
      }

      v168 = v204;
      v173 = v65[2];
      if (v173 >= v65[3] >> 1)
      {
        sub_1000167BC();
        v65 = v177;
      }

      ++v99;
      v65[2] = v173 + 1;
      v174 = (*(v220 + 80) + 32) & ~*(v220 + 80);
      v237 = v65;
      v172(v65 + v174 + *(v220 + 72) * v173, v218, v238);
      goto LABEL_85;
    }

    sub_10001BB44(v8, &qword_1000DD220, &unk_1000ABE30);
    v97 += 32;
    ++v99;
  }

  v178 = v219;
  v179 = *(v219 + 11);
  v238 = *(v219 + 12);
  v239 = v179;
  sub_10003BC90();
  v180 = v178 + *(v213 + 44);
  sub_10003BC90();

  sub_100069F9C();
  v181 = v208;
  v182 = v227;
  v183 = (v227 + *(v208 + 80));
  v185 = *v183;
  v184 = v183[1];
  sub_100069EA8(v209);
  v186 = (v182 + *(v181 + 84));
  v187 = *v186;
  v188 = v186[1];
  v235 = objc_allocWithZone(type metadata accessor for SportingEventSubscription());

  v189 = SportingEventSubscription.init(consumers:sportId:sport:leagueId:leagueAbbreviation:eventStateURL:fullPayloadBaseURL:imageServiceBaseURL:sportingEventDetails:heartbeatTTLSeconds:heartbeatSessionsTTLSeconds:liveActivityTTLSeconds:clockFeatures:registrationId:metadata:view:shouldDisplayPlayByPlay:qosRegistrationId:applicationType:clientApp:)();

  sub_10001BB44(v229, &qword_1000DD218, &unk_1000ABE10);
  sub_10003B2C0(v178, _s20RegistrationResponseVMa);
  return v189;
}

void sub_100039850(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for SubscriptionRegisterOperation(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_1000DBA20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100007DE8(v9, qword_1000E6D48);
    sub_10003B578();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      v14 = *(v8 + 19);
      v15 = *(v8 + 20);

      sub_10003B2C0(v8, type metadata accessor for SubscriptionRegisterOperation);
      v16 = sub_1000170D4(v14, v15, &v24);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected empty response from Tempo registration for canonicalId: %s", v12, 0xCu);
      sub_100008A94(v13);
    }

    else
    {

      sub_10003B2C0(v8, type metadata accessor for SubscriptionRegisterOperation);
    }
  }

  else
  {
    v17 = *(v2 + 40);
    v18 = *(v2 + 152);
    v19 = *(v2 + 160);
    v20 = *(v2 + 256);
    v21 = v20 < 6;
    v22 = 0x27u >> v20;
    sub_100008B28(a1, a2);
    sub_10002D224(a1, a2, v18, v19, v21 & v22);

    sub_10001F19C(a1, a2);
  }
}

uint64_t sub_100039AF4()
{
  v1 = *(v0 + 16);
  v2 = *sub_100008614(v1 + 12, v1[15]);
  sub_100079BA4(v1[19], v1[20]);
  v3 = *(v0 + 8);

  return v3();
}

void sub_100039B6C(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000DBA10 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100007DE8(v1, qword_1000E6D18);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_1000170D4(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error connecting to watchlistd for suppression. %s", v4, 0xCu);
      sub_100008A94(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_100039DB0()
{
  v0 = type metadata accessor for SubscriptionRegisterOperation(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  if (qword_1000DBA20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100007DE8(v7, qword_1000E6D48);
  sub_10003B578();
  sub_10003B578();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = *(v6 + 19);
    v12 = *(v6 + 20);

    sub_10003B2C0(v6, type metadata accessor for SubscriptionRegisterOperation);
    v13 = sub_1000170D4(v11, v12, &v21);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_100069EA8(v3[256]);
    v15 = v14;
    v17 = v16;
    sub_10003B2C0(v3, type metadata accessor for SubscriptionRegisterOperation);
    v18 = sub_1000170D4(v15, v17, &v21);

    *(v10 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Tempo /register success for %s - %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10003B2C0(v3, type metadata accessor for SubscriptionRegisterOperation);
    sub_10003B2C0(v6, type metadata accessor for SubscriptionRegisterOperation);
  }

  return 1;
}

uint64_t sub_10003A054()
{
  sub_10003C23C();
  v1 = *(v0 + 80);
  sub_10003C284();

  return sub_100039DB0();
}

uint64_t sub_10003A0DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_100003998(&qword_1000DD1D0, &qword_1000ABDE8);
  result = a2(a1, *(a1 + *(v6 + 48)), *(a1 + *(v6 + 64)), *(a1 + *(v6 + 64) + 8));
  *a3 = result & 1;
  return result;
}

uint64_t sub_10003A14C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A18C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100003998(&qword_1000DD020, &unk_1000AB990);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v11[1] = *a1;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  Fail.init(error:)();
  sub_10000A6FC(&qword_1000DD028, &qword_1000DD020, &unk_1000AB990);
  v9 = Publisher.eraseToAnyPublisher()();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t sub_10003A2F0@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v140 = a2;
  v152 = a3;
  v5 = type metadata accessor for SportingEventCompetitorQualifier();
  v135 = *(v5 - 8);
  v6 = *(v135 + 64);
  __chkstk_darwin(v5);
  v125 = v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_100003998(&qword_1000DD240, &qword_1000ABE58);
  v8 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v136 = v120 - v9;
  v10 = sub_100003998(&qword_1000DD248, &unk_1000ABE60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v127 = v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v141 = v120 - v14;
  __chkstk_darwin(v15);
  v142 = v120 - v16;
  v17 = sub_100003998(&qword_1000DD250, &unk_1000AEBC0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v131 = v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v137 = v120 - v21;
  v22 = type metadata accessor for SportingEventSubscription.Competitor.LogoFilePaths();
  v130 = *(v22 - 8);
  v23 = *(v130 + 64);
  __chkstk_darwin(v22);
  v126 = v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for LogoDownloadResult();
  v139 = *(v129 - 8);
  v25 = *(v139 + 64);
  __chkstk_darwin(v129);
  v153 = (v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_100003998(&qword_1000DD258, &qword_1000ABE70);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v134 = v120 - v32;
  __chkstk_darwin(v33);
  v128 = v120 - v34;
  __chkstk_darwin(v35);
  v138 = v120 - v36;
  v37 = type metadata accessor for SportingEventMetadataType();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v154 = v120 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v155 = v120 - v42;
  v43 = *a1;
  v44 = SportingEventCompetitorContainer.competitor.getter();
  v132 = dispatch thunk of SportingEventCompetitor.abbreviation.getter();
  v46 = v45;

  v143 = v46;
  if (!v46)
  {
    goto LABEL_23;
  }

  v124 = v5;
  v47 = SportingEventCompetitorContainer.competitor.getter();
  v48 = dispatch thunk of SportingEventCompetitor.localizedDisplayName.getter();

  if (!v48)
  {
LABEL_22:

LABEL_23:
    v66 = 1;
    goto LABEL_58;
  }

  if (!sub_10001BE20(v48))
  {

    goto LABEL_22;
  }

  sub_1000835D4(0, (v48 & 0xC000000000000001) == 0, v48);
  v123 = v3;
  v121 = v22;
  v151 = v37;
  if ((v48 & 0xC000000000000001) != 0)
  {
    goto LABEL_61;
  }

  for (i = *(v48 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v50 = i;

    v51 = SportingEventLocalizedDisplayName.text.getter();
    v53 = v52;

    v54 = SportingEventCompetitorContainer.competitor.getter();
    v55 = dispatch thunk of SportingEventCompetitor.metadata.getter();

    if (!v55)
    {
      break;
    }

    v120[1] = v51;
    v122 = v53;
    v56 = sub_10001BE20(v55);
    v57 = 0;
    v149 = v55 & 0xC000000000000001;
    v150 = v56;
    v145 = enum case for SportingEventMetadataType.backgroundColor(_:);
    v144 = (v38 + 104);
    v147 = (v38 + 8);
    v148 = v55 & 0xFFFFFFFFFFFFFF8;
    v120[0] = v30;
    for (j = v55; ; v55 = j)
    {
      v58 = v155;
      if (v150 == v57)
      {
        goto LABEL_27;
      }

      if (v149)
      {
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v57 >= *(v148 + 16))
        {
          goto LABEL_60;
        }

        v59 = *(v55 + 8 * v57 + 32);
      }

      if (__OFADD__(v57, 1))
      {
        break;
      }

      v160 = v59;
      SportingEventMetadata.metadataType.getter();
      v60 = v154;
      v61 = v151;
      (*v144)(v154, v145, v151);
      sub_10003B628(&qword_1000DD260, &type metadata accessor for SportingEventMetadataType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v38 = v159;
      if (v158 == v156 && v159 == v157)
      {
        v67 = *v147;
        (*v147)(v60, v61);
        v67(v58, v61);

LABEL_26:

        v68 = v160;
        v69 = SportingEventMetadata.value.getter();
        v71 = v70;

        v72 = dispatch thunk of SportingEventCompetitorContainer.ordinal.getter();
        if (v73)
        {
LABEL_27:

          goto LABEL_28;
        }

        v160 = v72;
        v154 = v69;
        v155 = v71;
        v74 = 0;
        v75 = v141;
        v76 = *(v140 + 16);
        v77 = v142;
        while (1)
        {
          if (v76 == v74)
          {
            v88 = 1;
            v89 = v138;
            goto LABEL_40;
          }

          v78 = v140 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v74;
          v79 = v153;
          sub_10003B578();
          v80 = *v79;
          v81 = v79[1];
          v82 = SportingEventCompetitorContainer.competitor.getter();
          v83 = SportingEventCompetitor.canonicalId.getter();
          v85 = v84;

          if (v80 == v83 && v81 == v85)
          {
            break;
          }

          v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v75 = v141;
          v77 = v142;
          if (v87)
          {
            goto LABEL_39;
          }

          sub_10003B2C0(v153, type metadata accessor for LogoDownloadResult);
          ++v74;
        }

        v75 = v141;
        v77 = v142;
LABEL_39:
        v89 = v138;
        sub_10003B5D0();
        v88 = 0;
LABEL_40:
        v90 = v129;
        sub_100008E2C(v89, v88, 1, v129);
        v91 = SportingEventCompetitorContainer.competitor.getter();
        v153 = SportingEventCompetitor.canonicalId.getter();
        v151 = v92;

        v93 = v128;
        sub_10003BC90();
        v94 = sub_100008B84(v93, 1, v90);
        v95 = v121;
        v96 = v120[0];
        if (v94 == 1)
        {
          sub_10001BB44(v93, &qword_1000DD258, &qword_1000ABE70);
          v149 = 0xE000000000000000;
          v150 = 0;
        }

        else
        {
          v97 = *(v93 + 16);
          v149 = *(v93 + 24);
          v150 = v97;

          sub_10003B2C0(v93, type metadata accessor for LogoDownloadResult);
        }

        v98 = v134;
        sub_10003BC90();
        if (sub_100008B84(v98, 1, v90) == 1)
        {
          sub_10001BB44(v98, &qword_1000DD258, &qword_1000ABE70);
          v147 = 0xE000000000000000;
          v148 = 0;
        }

        else
        {
          v99 = v130;
          v100 = v98 + *(v90 + 24);
          v101 = v126;
          (*(v130 + 16))(v126, v100, v95);
          sub_10003B2C0(v134, type metadata accessor for LogoDownloadResult);
          v102 = SportingEventSubscription.Competitor.LogoFilePaths.defaultSize.getter();
          v147 = v103;
          v148 = v102;
          (*(v99 + 8))(v101, v95);
        }

        v104 = v137;
        v105 = v131;
        sub_10003BC90();
        if (sub_100008B84(v96, 1, v90) == 1)
        {
          sub_10001BB44(v96, &qword_1000DD258, &qword_1000ABE70);
          sub_100008E2C(v105, 1, 1, v95);
          SportingEventSubscription.Competitor.LogoFilePaths.init(smallSize:defaultSize:)();
          if (sub_100008B84(v105, 1, v95) != 1)
          {
            sub_10001BB44(v105, &qword_1000DD250, &unk_1000AEBC0);
          }
        }

        else
        {
          v106 = *(v90 + 24);
          v107 = v130;
          (*(v130 + 16))(v105, v96 + v106, v95);
          sub_10003B2C0(v96, type metadata accessor for LogoDownloadResult);
          sub_100008E2C(v105, 0, 1, v95);
          (*(v107 + 32))(v104, v105, v95);
        }

        sub_100008E2C(v104, 0, 1, v95);
        v108 = SportingEventCompetitorContainer.competitor.getter();
        dispatch thunk of SportingEventCompetitor.qualifier.getter();

        v109 = v124;
        (*(v135 + 104))(v75, enum case for SportingEventCompetitorQualifier.home(_:), v124);
        sub_100008E2C(v75, 0, 1, v109);
        v110 = *(v133 + 48);
        v111 = v136;
        sub_10003BC90();
        sub_10003BC90();
        if (sub_100008B84(v111, 1, v109) == 1)
        {
          sub_10001BB44(v75, &qword_1000DD248, &unk_1000ABE60);
          v112 = v136;
          sub_10001BB44(v77, &qword_1000DD248, &unk_1000ABE60);
          if (sub_100008B84(v112 + v110, 1, v109) == 1)
          {
            sub_10001BB44(v112, &qword_1000DD248, &unk_1000ABE60);
LABEL_57:
            SportingEventSubscription.Competitor.init(canonicalId:abbreviation:name:teamLogoUrl:localLogoUrl:logoFilePaths:teamColorHex:isHome:ordinal:)();
            sub_10001BB44(v138, &qword_1000DD258, &qword_1000ABE70);
            v66 = 0;
            goto LABEL_58;
          }
        }

        else
        {
          v113 = v127;
          sub_10003BC90();
          if (sub_100008B84(v111 + v110, 1, v109) != 1)
          {
            v114 = v135;
            v115 = v111 + v110;
            v116 = v125;
            (*(v135 + 32))(v125, v115, v109);
            sub_10003B628(&qword_1000DD268, &type metadata accessor for SportingEventCompetitorQualifier);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v117 = *(v114 + 8);
            v117(v116, v109);
            sub_10001BB44(v141, &qword_1000DD248, &unk_1000ABE60);
            sub_10001BB44(v142, &qword_1000DD248, &unk_1000ABE60);
            v117(v113, v109);
            sub_10001BB44(v111, &qword_1000DD248, &unk_1000ABE60);
            goto LABEL_57;
          }

          sub_10001BB44(v141, &qword_1000DD248, &unk_1000ABE60);
          v112 = v136;
          sub_10001BB44(v142, &qword_1000DD248, &unk_1000ABE60);
          (*(v135 + 8))(v113, v109);
        }

        sub_10001BB44(v112, &qword_1000DD240, &qword_1000ABE58);
        goto LABEL_57;
      }

      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v64 = v60;
      v30 = v43;
      v65 = *v147;
      (*v147)(v64, v61);
      v65(v58, v61);
      v43 = v30;

      if (v63)
      {
        goto LABEL_26;
      }

      ++v57;
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

LABEL_28:

  v66 = 1;
LABEL_58:
  v118 = type metadata accessor for SportingEventSubscription.Competitor();
  return sub_100008E2C(v152, v66, 1, v118);
}

uint64_t sub_10003B2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10001C2AC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10003B318()
{
  v2 = type metadata accessor for SubscriptionRegisterOperation(0);
  sub_10003C224(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  sub_100008A94((v1 + v5));
  v9 = *(v1 + v5 + 40);

  v10 = *(v1 + v5 + 48);

  sub_100008A94((v1 + v5 + 56));
  sub_100008A94((v1 + v5 + 96));
  v11 = *(v1 + v5 + 144);

  v12 = *(v1 + v5 + 160);

  v13 = *(v1 + v5 + 176);

  v14 = *(v1 + v5 + 192);

  v15 = *(v1 + v5 + 208);

  v16 = *(v1 + v5 + 224);

  v17 = *(v1 + v5 + 248);

  v18 = v0[18];
  type metadata accessor for SubscriptionRegisterOperation.PreferredData(0);
  v19 = sub_10003C26C();
  if (!sub_100008B84(v19, v20, v21))
  {
    v22 = type metadata accessor for SportingEventSubscription.Metadata();
    v23 = sub_10003C26C();
    if (!sub_100008B84(v23, v24, v22))
    {
      sub_10000ACDC(v22);
      (*(v25 + 8))(v1 + v5 + v18, v22);
    }
  }

  sub_10000AE38(v0[20]);
  sub_10000AE38(v0[21]);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_10003B494(uint64_t a1)
{
  sub_10003C23C();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002C904;

  return sub_100039AD4(a1, v6, v7, v1 + v5);
}

uint64_t sub_10003B578()
{
  sub_10003C278();
  v2 = v1(0);
  sub_10001C2AC(v2);
  v4 = *(v3 + 16);
  v5 = sub_10001C53C();
  v6(v5);
  return v0;
}

uint64_t sub_10003B5D0()
{
  sub_10003C278();
  v2 = v1(0);
  sub_10001C2AC(v2);
  v4 = *(v3 + 32);
  v5 = sub_10001C53C();
  v6(v5);
  return v0;
}

uint64_t sub_10003B628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003B68C()
{
  v2 = sub_100003998(&qword_1000DBC40, &qword_1000AA618);
  sub_10003C224(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = type metadata accessor for ApiRequestMetrics();
  if (!sub_100008B84(v1 + v5, 1, v9))
  {
    v10 = type metadata accessor for Date();
    if (!sub_100008B84(v1 + v5, 1, v10))
    {
      sub_10000AC74();
      (*(v11 + 8))(v1 + v5, v10);
    }

    v12 = v9[5];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v14 = *(v13 + 8);
      v15 = sub_10000ADB0();
      v16(v15);
    }

    v17 = v9[8];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v19 = *(v18 + 8);
      v20 = sub_10000ADB0();
      v21(v20);
    }

    v22 = v9[9];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v24 = *(v23 + 8);
      v25 = sub_10000ADB0();
      v26(v25);
    }

    v27 = v9[10];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v29 = *(v28 + 8);
      v30 = sub_10000ADB0();
      v31(v30);
    }

    sub_10000AE38(v9[12]);
    v32 = v9[13];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v34 = *(v33 + 8);
      v35 = sub_10000ADB0();
      v36(v35);
    }

    v37 = v9[14];
    v38 = type metadata accessor for URL();
    if (!sub_100008B84(v8 + v37, 1, v38))
    {
      sub_10000ACDC(v38);
      (*(v39 + 8))(v8 + v37, v38);
    }

    v40 = v9[15];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v42 = *(v41 + 8);
      v43 = sub_10000ADB0();
      v44(v43);
    }

    v45 = v9[16];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v47 = *(v46 + 8);
      v48 = sub_10000ADB0();
      v49(v48);
    }

    v50 = v9[17];
    if (!sub_10000AD08())
    {
      sub_10000AC74();
      v52 = *(v51 + 8);
      v53 = sub_10000ADB0();
      v54(v53);
    }

    sub_10000AE38(v9[19]);
    sub_10000AE38(v9[20]);
    sub_10000AE38(v9[21]);
    sub_10000AE38(v9[22]);
    sub_10000AE38(v9[23]);
    sub_10000AE38(v9[25]);
  }

  v55 = v0[7];
  v56 = type metadata accessor for URLRequest();
  sub_10001C2AC(v56);
  (*(v57 + 8))(v8 + v55);

  v58 = (v8 + v0[9]);
  v59 = v58[1];
  if (v59 >> 60 != 15)
  {
    sub_100008BAC(*v58, v59);
  }

  v60 = (v8 + v0[10]);
  v61 = *v60;

  v62 = *(v60 + 1);

  v63 = *(v60 + 2);

  v64 = *(v60 + 3);

  v65 = *(v60 + 4);

  v66 = *(v60 + 5);

  v67 = *(v60 + 6);

  v68 = *(v60 + 12);

  v69 = *(_s20RegistrationResponseVMa() + 44);
  v70 = type metadata accessor for SportingEventViewContext();
  if (!sub_100008B84(&v60[v69], 1, v70))
  {
    sub_10000ACDC(v70);
    (*(v71 + 8))(&v60[v69], v70);
  }

  v72 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = *(v1 + v72 + 8);

  return _swift_deallocObject(v1, v72 + 16, v4 | 7);
}

uint64_t sub_10003BAC8()
{
  sub_10003C278();
  v3 = sub_100003998(v1, v2);
  sub_10001C2AC(v3);
  v5 = *(v4 + 32);
  v6 = sub_10001C53C();
  v7(v6);
  return v0;
}

uint64_t sub_10003BB20()
{
  v1 = *(sub_100003998(&qword_1000DBC40, &qword_1000AA618) - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = *v2;
  v4 = v2[1];
  v5 = sub_10003C25C();

  return sub_100037CA0(v5, v6, v7, v8);
}

uint64_t sub_10003BBD4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_100008A94(v0 + 9);
  v4 = v0[14];

  sub_100008A94(v0 + 16);
  v5 = v0[21];

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_10003BC90()
{
  sub_10003C278();
  v3 = sub_100003998(v1, v2);
  sub_10001C2AC(v3);
  v5 = *(v4 + 16);
  v6 = sub_10001C53C();
  v7(v6);
  return v0;
}

uint64_t sub_10003BCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
    v9 = a1 + *(a3 + 72);

    return sub_100008B84(v9, a2, v8);
  }
}

uint64_t sub_10003BDA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003998(&qword_1000DD210, &qword_1000ABE08);
    v8 = v5 + *(a4 + 72);

    return sub_100008E2C(v8, a2, a2, v7);
  }

  return result;
}

void sub_10003BE30()
{
  sub_10003BFBC(319, &qword_1000DD368);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DataRepository();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlaysStore();
      if (v2 <= 0x3F)
      {
        sub_10003BFBC(319, &qword_1000DD370);
        if (v3 <= 0x3F)
        {
          sub_10003BFBC(319, &qword_1000DD378);
          if (v4 <= 0x3F)
          {
            sub_10003C010();
            if (v5 <= 0x3F)
            {
              sub_10003C1BC(319, &unk_1000DD380, type metadata accessor for SubscriptionRegisterOperation.PreferredData);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10003BFBC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10003C010()
{
  if (!qword_1000DC108)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC108);
    }
  }
}

uint64_t sub_10003C074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);

  return sub_100008B84(a1, a2, v4);
}

uint64_t sub_10003C0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DD218, &unk_1000ABE10);

  return sub_100008E2C(a1, a2, a2, v4);
}

void sub_10003C134()
{
  sub_10003C1BC(319, &unk_1000DD458, &type metadata accessor for SportingEventSubscription.Metadata);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10003C1BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003C23C()
{
  v0 = type metadata accessor for SubscriptionRegisterOperation(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t sub_10003C290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_100003998(&qword_1000DD598, &qword_1000AC008);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  *(v4 + 24) = &_swiftEmptySetSingleton;
  if (qword_1000DB9D8 != -1)
  {
    swift_once();
  }

  v22 = qword_1000E6CE0;
  *(swift_allocObject() + 16) = a1;

  sub_100003998(&qword_1000DD568, &qword_1000ABFF0);
  sub_10000A6FC(&qword_1000DD570, &qword_1000DD568, &qword_1000ABFF0);
  Publisher.filter(_:)();

  v14 = swift_allocObject();
  v15 = v21;
  *(v14 + 16) = v20;
  *(v14 + 24) = v15;
  Publishers.Filter.filter(_:)();

  v16 = *(v7 + 8);
  v16(v11, v6);
  sub_10000A6FC(&qword_1000DD5A0, &qword_1000DD598, &qword_1000AC008);
  v17 = Publisher.eraseToAnyPublisher()();
  v16(v13, v6);
  *(v4 + 16) = v17;
  return v4;
}

uint64_t sub_10003C53C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  sub_100008E2C(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_10003D94C(0, 0, v8, &unk_1000ABFC0, v10);

  return sub_10001EF70(v8, &qword_1000DC5A8, &qword_1000AAFD0);
}

uint64_t sub_10003C660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = sub_100003998(&qword_1000DD538, &unk_1000ABF70);
  v6[38] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[39] = swift_task_alloc();
  v9 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v6[40] = v9;
  v10 = *(v9 - 8);
  v6[41] = v10;
  v11 = *(v10 + 64) + 15;
  v6[42] = swift_task_alloc();
  v12 = *(*(sub_100003998(&qword_1000DBE78, &qword_1000AA750) - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v13 = sub_100003998(&qword_1000DD558, &qword_1000ABFE0);
  v6[44] = v13;
  v14 = *(v13 - 8);
  v6[45] = v14;
  v15 = *(v14 + 64) + 15;
  v6[46] = swift_task_alloc();
  v16 = sub_100003998(&qword_1000DD560, &qword_1000ABFE8);
  v6[47] = v16;
  v17 = *(v16 - 8);
  v6[48] = v17;
  v18 = *(v17 + 64) + 15;
  v6[49] = swift_task_alloc();

  return _swift_task_switch(sub_10003C894, 0, 0);
}

uint64_t sub_10003C894()
{
  v1 = *(v0 + 392);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 352);
  *(v0 + 224) = *(*(v0 + 280) + 16);
  sub_100003998(&qword_1000DD568, &qword_1000ABFF0);
  sub_10000A6FC(&qword_1000DD570, &qword_1000DD568, &qword_1000ABFF0);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  *(v0 + 464) = enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:);
  sub_10003FB74(&qword_1000DD578, &qword_1000DD560, &qword_1000ABFE8);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  *(v0 + 400) = v6;
  *v6 = v0;
  sub_10003FB4C(v6);
  v7 = sub_10003FB98();

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v9);
}

uint64_t sub_10003CA24()
{
  sub_10001BEC4();
  v2 = *(*v1 + 400);
  v3 = *v1;
  sub_10001BE74();
  *v4 = v3;
  *(v5 + 408) = v0;

  sub_10001C740();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10003CB54()
{
  sub_10001BEC4();
  *(v0 + 416) = *(v0 + 232);
  sub_10001C740();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10003CBE0()
{
  v118 = v0;
  v1 = *(v0 + 416);
  if (!v1)
  {
    v37 = *(v0 + 368);
    v39 = *(v0 + 336);
    v38 = *(v0 + 344);
    v40 = *(v0 + 312);
    (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));

    sub_10001BEDC();
    sub_10003FC08();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 424) = os_transaction_create();
  v2 = [v1 channelID];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = [v1 userInfo];
    if (v7)
    {
      v8 = v7;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = objc_opt_self();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 256) = 0;
      v11 = [v9 dataWithJSONObject:isa options:0 error:v0 + 256];

      v12 = *(v0 + 256);
      if (v11)
      {
        v104 = v4;
        v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        *(v0 + 432) = v13;
        *(v0 + 440) = v15;
        if (qword_1000DBA40 != -1)
        {
          sub_10003FBAC();
        }

        v16 = type metadata accessor for Logger();
        sub_100007DE8(v16, qword_1000E6DA8);
        v17 = sub_10003FBEC();
        sub_100008B28(v17, v18);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        v21 = sub_10003FBEC();
        sub_100008BAC(v21, v22);
        v113 = v13;
        v114 = v6;
        v115 = v15;
        if (!os_log_type_enabled(v19, v20))
        {

          v112 = *(v0 + 408);
LABEL_32:
          v107 = *(v0 + 464);
          v64 = *(v0 + 344);
          v65 = *(v0 + 328);
          v105 = *(v0 + 336);
          v106 = *(v0 + 320);
          v109 = *(v0 + 304);
          v111 = *(v0 + 312);
          v66 = type metadata accessor for JSONDecoder();
          v67 = *(v66 + 48);
          v68 = *(v66 + 52);
          swift_allocObject();
          *(v0 + 448) = JSONDecoder.init()();
          static SportsJSONContext.Property<A>.initFailureObserver.getter();
          v69 = type metadata accessor for DefaultSportsJSONInitFailureObserver();
          v70 = *(v69 + 48);
          v71 = *(v69 + 52);
          swift_allocObject();
          v72 = DefaultSportsJSONInitFailureObserver.init()();
          *(v0 + 40) = v69;
          *(v0 + 48) = &protocol witness table for DefaultSportsJSONInitFailureObserver;
          *(v0 + 16) = v72;
          v73 = dispatch thunk of JSONDecoder.userInfo.modify();
          v75 = v74;
          v117 = *v74;
          swift_bridgeObjectRetain_n();
          sub_100003998(&qword_1000DBE90, &qword_1000AA760);
          Dictionary<>.subscript.setter();
          v76 = *v75;
          *v75 = v117;

          v73(v0 + 136, 0);

          (*(v65 + 104))(v105, v107, v106);
          dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
          sub_10000A6FC(&qword_1000DD580, &qword_1000DD538, &unk_1000ABF70);
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (!v112)
          {
            v87 = 0;
            switch(v115 >> 62)
            {
              case 1uLL:
                LODWORD(v87) = HIDWORD(v113) - v113;
                if (!__OFSUB__(HIDWORD(v113), v113))
                {
                  v87 = v87;
LABEL_41:
                  v92 = *(v0 + 304);
                  v91 = *(v0 + 312);
                  v93 = *(v0 + 288);
                  v94 = v91 + *(v92 + 52);
                  *v94 = v87;
                  *(v94 + 8) = 0;
                  v95 = (v91 + *(v92 + 56));
                  v96 = v95[1];

                  *v95 = v104;
                  v95[1] = v114;
                  v116 = v93 + *v93;
                  v97 = v93[1];
                  v98 = swift_task_alloc();
                  *(v0 + 456) = v98;
                  *v98 = v0;
                  v98[1] = sub_10003D71C;
                  v99 = *(v0 + 312);
                  v100 = *(v0 + 296);
                  sub_10003FC08();

                  __asm { BRAA            X1, X16 }
                }

                __break(1u);
LABEL_45:
                __break(1u);
                return result;
              case 2uLL:
                v89 = *(v113 + 16);
                v88 = *(v113 + 24);
                v90 = __OFSUB__(v88, v89);
                v87 = v88 - v89;
                if (!v90)
                {
                  goto LABEL_41;
                }

                goto LABEL_45;
              case 3uLL:
                goto LABEL_41;
              default:
                v87 = BYTE6(v115);
                goto LABEL_41;
            }
          }

          swift_errorRetain();
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = sub_10001C4D0();
            v80 = sub_10003FC24();
            v117 = v80;
            *v79 = 136315138;
            swift_getErrorValue();
            v82 = *(v0 + 168);
            v81 = *(v0 + 176);
            v83 = *(v0 + 184);
            v84 = Error.localizedDescription.getter();
            v86 = sub_1000170D4(v84, v85, &v117);

            *(v79 + 4) = v86;
            _os_log_impl(&_mh_execute_header, v77, v78, "CloudChannelMessageProcessor - Encountered error while decoding expected type, error=%s", v79, 0xCu);
            sub_100008A94(v80);
            sub_10000B008();
            sub_10000B008();
            swift_unknownObjectRelease();

            sub_100008BAC(v113, v115);
          }

          else
          {
            swift_unknownObjectRelease();

            sub_100008BAC(v113, v115);
          }

          goto LABEL_23;
        }

        v110 = v20;
        v23 = *(v0 + 408);
        v24 = sub_10001C4D0();
        v108 = sub_10003FC24();
        *(v0 + 272) = v108;
        *v24 = 136315138;
        v25 = sub_10003FBEC();
        sub_100008B28(v25, v26);
        v27 = sub_10003FBEC();
        v29 = sub_1000492AC(v27, v28);
        if (!v30)
        {
          *(v0 + 192) = v13;
          *(v0 + 200) = v15;
          v31 = sub_10003FBEC();
          sub_100008B28(v31, v32);
          sub_100003998(&unk_1000DD760, &qword_1000ABFF8);
          if (swift_dynamicCast())
          {
            sub_10000A8F8((v0 + 96), v0 + 56);
            v33 = *(v0 + 88);
            sub_100008614((v0 + 56), *(v0 + 80));
            if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
            {
              sub_100008BAC(v13, v15);
              v34 = *(v0 + 88);
              sub_100008614((v0 + 56), *(v0 + 80));
              dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
              v36 = *(v0 + 208);
              v35 = *(v0 + 216);
              sub_100008A94((v0 + 56));
LABEL_31:
              v112 = v23;
              v63 = sub_1000170D4(v36, v35, (v0 + 272));

              *(v24 + 4) = v63;
              _os_log_impl(&_mh_execute_header, v19, v110, "CloudChannelMessageProcessor - bodyData: %s", v24, 0xCu);
              sub_100008A94(v108);
              sub_10000B008();
              sub_10000B008();

              goto LABEL_32;
            }

            sub_100008A94((v0 + 56));
          }

          else
          {
            *(v0 + 128) = 0;
            *(v0 + 96) = 0u;
            *(v0 + 112) = 0u;
            sub_10001EF70(v0 + 96, &qword_1000DD588, &qword_1000AC000);
          }

          sub_10003FBEC();
          v29 = sub_100049074();
        }

        v36 = v29;
        v35 = v30;
        v61 = sub_10003FBEC();
        sub_100008BAC(v61, v62);
        goto LABEL_31;
      }

      v43 = v12;

      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
    }
  }

  if (qword_1000DBA40 != -1)
  {
    sub_10003FBAC();
  }

  v44 = type metadata accessor for Logger();
  sub_100007DE8(v44, qword_1000E6DA8);
  v45 = v1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = sub_10001C4D0();
    v49 = sub_10003FC24();
    *(v0 + 248) = v49;
    *v48 = 136315138;
    v50 = sub_10001B478(v45);

    if (!v50)
    {
      __break(1u);
      JUMPOUT(0x10003D658);
    }

    v51 = Dictionary.description.getter();
    v53 = v52;

    v54 = sub_1000170D4(v51, v53, (v0 + 248));

    *(v48 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v46, v47, "CloudChannelMessageProcessor - Failed to decode payload body %s", v48, 0xCu);
    sub_100008A94(v49);
    sub_10000B008();
    sub_10000B008();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_23:
  sub_10003FB74(&qword_1000DD578, &qword_1000DD560, &qword_1000ABFE8);
  v55 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v56 = swift_task_alloc();
  *(v0 + 400) = v56;
  *v56 = v0;
  sub_10003FB4C();
  sub_10003FB98();
  sub_10003FC08();

  return dispatch thunk of AsyncIteratorProtocol.next()(v57, v58, v59);
}

uint64_t sub_10003D668()
{
  sub_10001BEC4();
  *(v0 + 240) = *(v0 + 408);
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10003D71C()
{
  sub_10001BEC4();
  v1 = *(*v0 + 456);
  v2 = *v0;
  sub_10001BE74();
  *v3 = v2;

  sub_10001C740();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003D834()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[54];
  v5 = v0[52];
  v6 = v0[39];
  swift_unknownObjectRelease();

  sub_100008BAC(v4, v1);

  sub_10001EF70(v6, &qword_1000DD538, &unk_1000ABF70);
  sub_10003FB74(&qword_1000DD578, &qword_1000DD560, &qword_1000ABFE8);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v0[50] = v8;
  *v8 = v0;
  sub_10003FB4C();
  v9 = sub_10003FB98();

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v11);
}

uint64_t sub_10003D94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_10003FA5C(a3, v26 - v11, &qword_1000DC5A8, &qword_1000AAFD0);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100008B84(v12, 1, v13);

  if (v14 == 1)
  {
    sub_10001EF70(v12, &qword_1000DC5A8, &qword_1000AAFD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t *sub_10003DBF0()
{
  v1 = *v0;
  sub_100003998(&qword_1000DD550, &qword_1000ABF98);
  swift_allocObject();
  sub_10001C740();
  v0[2] = sub_10003C290(v2, v3, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;

  sub_10003C53C(&unk_1000ABFA8, v5);

  return v0;
}

uint64_t sub_10003DCD0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(*(sub_100003998(&qword_1000DC460, &qword_1000AAEF8) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = *(*(sub_100003998(&qword_1000DD530, &qword_1000ABF68) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10003DE18, 0, 0);
}

uint64_t sub_10003DE18()
{
  sub_10001BF48();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[7];
  Date.init()();
  sub_10008C99C();
  v0[16] = v5;
  (*(v2 + 8))(v1, v3);
  v0[17] = *v4;
  type metadata accessor for ScoreboardSubscriptionManager();
  v0[18] = static ScoreboardSubscriptionManager.shared.getter();
  sub_10003FA04();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003DEEC, v7, v6);
}

uint64_t sub_10003DEEC()
{
  sub_10001BF48();
  v1 = v0[17];
  v2 = v0[18];
  dispatch thunk of ScoreboardSubscriptionManager.insert(_:)();
  v0[19] = 0;
  v3 = v0[18];

  sub_10001C740();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003DF78()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  sub_10003FA5C(v0[7], v2, &qword_1000DD538, &unk_1000ABF70);
  v5 = sub_100003998(&qword_1000DD538, &unk_1000ABF70);
  sub_100008E2C(v2, 0, 1, v5);
  v6 = type metadata accessor for CloudChannelError();
  sub_100008E2C(v3, 1, 1, v6);
  sub_10003E364(v1, v2, v3);
  sub_10001EF70(v3, &qword_1000DC460, &qword_1000AAEF8);
  sub_10001EF70(v2, &qword_1000DD530, &qword_1000ABF68);
  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v10 = v0[10];

  sub_10001BEDC();

  return v12();
}

uint64_t sub_10003E0B8()
{
  v32 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];

  v7 = sub_100003998(&qword_1000DD538, &unk_1000ABF70);
  sub_100008E2C(v4, 1, 1, v7);
  v0[5] = v2;
  swift_errorRetain();
  sub_100003998(&qword_1000DC470, &qword_1000AA620);
  v8 = type metadata accessor for CloudChannelError();
  v9 = swift_dynamicCast();
  sub_100008E2C(v6, v9 ^ 1u, 1, v8);
  sub_10003E364(v3, v4, v6);
  sub_10001EF70(v4, &qword_1000DD530, &qword_1000ABF68);
  sub_10001EF70(v6, &qword_1000DC460, &qword_1000AAEF8);
  if (qword_1000DBA48 != -1)
  {
    swift_once();
  }

  v10 = v0[19];
  v11 = type metadata accessor for Logger();
  sub_100007DE8(v11, qword_1000E6DC0);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[19];
  if (v14)
  {
    v16 = sub_10001C4D0();
    v17 = sub_10003FC24();
    v31 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v19 = v0[2];
    v18 = v0[3];
    v20 = v0[4];
    v21 = Error.localizedDescription.getter();
    v23 = sub_1000170D4(v21, v22, &v31);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "ScoreboardSubscriptionMessageProcessor - Failed to process scoreboard subscription - %s", v16, 0xCu);
    sub_100008A94(v17);
    sub_10000B008();
    sub_10000B008();
  }

  else
  {
  }

  v24 = v0[15];
  v25 = v0[11];
  v26 = v0[12];
  v28 = v0[9];
  v27 = v0[10];

  sub_10001BEDC();

  return v29();
}

void sub_10003E364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v153 = a3;
  v154 = a1;
  v4 = sub_100003998(&qword_1000DC460, &qword_1000AAEF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v164 = &v140 - v6;
  v7 = type metadata accessor for SportingEventProgressStatus();
  v143 = *(v7 - 8);
  v144 = v7;
  v8 = *(v143 + 64);
  __chkstk_darwin(v7);
  v142 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = 0;
  v160 = type metadata accessor for Date();
  v10 = *(v160 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v160);
  v140 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v157 = &v140 - v14;
  v15 = sub_100003998(&qword_1000DD530, &qword_1000ABF68);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v161 = &v140 - v20;
  __chkstk_darwin(v21);
  v159 = &v140 - v22;
  __chkstk_darwin(v23);
  v158 = &v140 - v24;
  __chkstk_darwin(v25);
  v27 = &v140 - v26;
  __chkstk_darwin(v28);
  v30 = &v140 - v29;
  __chkstk_darwin(v31);
  v33 = (&v140 - v32);
  sub_10003FA5C(a2, &v140 - v32, &qword_1000DD530, &qword_1000ABF68);
  v34 = sub_100003998(&qword_1000DD538, &unk_1000ABF70);
  v35 = sub_100008B84(v33, 1, v34);
  v165 = v34;
  v162 = v10;
  if (v35 == 1)
  {
    sub_10001EF70(v33, &qword_1000DD530, &qword_1000ABF68);
LABEL_30:
    v163 = 0;
    v55 = 0;
    LODWORD(v156) = 1;
    goto LABEL_37;
  }

  v36 = *v33;

  sub_10001EF70(v33, &qword_1000DD538, &unk_1000ABF70);
  if (!sub_10001BE20(v36))
  {

    goto LABEL_30;
  }

  sub_1000835D4(0, 1, v36);
  v37 = *(v36 + 32);

  v166 = v37;
  v38 = v37;
  v39 = dispatch thunk of SportingEvent.coverage.getter();

  if (v39)
  {
    v40 = dispatch thunk of SportingEventCoverage.ingestion.getter();

    if (v40)
    {
      v163 = dispatch thunk of SportingEventCoverageIngestion.last.getter();
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        LODWORD(v156) = 0;
        goto LABEL_33;
      }
    }
  }

  v43 = dispatch thunk of SportingEvent.coverage.getter();
  if (!v43 || (v44 = v43, v45 = dispatch thunk of SportingEventCoverage.ingestion.getter(), v44, !v45))
  {
    v163 = 0;
    LODWORD(v156) = 1;
LABEL_33:
    v55 = v166;
    goto LABEL_37;
  }

  v151 = a2;
  a2 = dispatch thunk of SportingEventCoverageIngestion.lastUpdates.getter();

  if (!a2)
  {
LABEL_36:
    v163 = 0;
    LODWORD(v156) = 1;
    v55 = v166;
    a2 = v151;
LABEL_37:
    v166 = v55;
    if (qword_1000DBA80 != -1)
    {
      goto LABEL_108;
    }

    goto LABEL_38;
  }

  v163 = sub_10001BE20(a2);
  if (!v163)
  {

    goto LABEL_36;
  }

  sub_1000835D4(0, (a2 & 0xC000000000000001) == 0, a2);
  v156 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_114:
    v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v46 = *(a2 + 32);
  }

  v47 = v46;
  v152 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = 1;
  while (1)
  {
    if (v163 == v10)
    {

      v163 = dispatch thunk of SportingEventCoverageLastUpdate.timestamp.getter();
      LODWORD(v156) = v56;

      v55 = v166;
      a2 = v151;
      v10 = v162;
      goto LABEL_37;
    }

    if (v156)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      if (v10 >= *(v152 + 16))
      {
        goto LABEL_113;
      }

      v48 = *(a2 + 8 * v10 + 32);
    }

    v49 = v48;
    v34 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v50 = COERCE_DOUBLE(dispatch thunk of SportingEventCoverageLastUpdate.timestamp.getter());
    if (v51)
    {
      v52 = 0.0;
    }

    else
    {
      v52 = v50;
    }

    v53 = COERCE_DOUBLE(dispatch thunk of SportingEventCoverageLastUpdate.timestamp.getter());
    if (v54)
    {
      if (v52 >= 0.0)
      {
        goto LABEL_26;
      }

LABEL_28:

      ++v10;
      v47 = v49;
      v34 = v165;
    }

    else
    {
      if (v52 < v53)
      {
        goto LABEL_28;
      }

LABEL_26:

      ++v10;
      v34 = v165;
    }
  }

  __break(1u);
LABEL_108:
  swift_once();
  v55 = v166;
LABEL_38:
  v152 = qword_1000E6E10;
  if (v55)
  {
    v57 = v55;
    v141 = SportingEvent.canonicalId.getter();
    v149 = v58;
  }

  else
  {
    v141 = 0;
    v149 = 0;
  }

  v151 = sub_100003998(&qword_1000DD540, &unk_1000ABF80);
  inited = swift_initStackObject();
  v150 = xmmword_1000AB460;
  *(inited + 16) = xmmword_1000AB460;
  sub_10003FA5C(a2, v30, &qword_1000DD530, &qword_1000ABF68);
  if (sub_100008B84(v30, 1, v34) == 1)
  {
    sub_10001EF70(v30, &qword_1000DD530, &qword_1000ABF68);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v60 = *(v30 + 1);
    v61 = *(v30 + 2);

    sub_10001EF70(v30, &qword_1000DD538, &unk_1000ABF70);
  }

  *(inited + 32) = v60;
  *(inited + 40) = v61;
  sub_10003FA5C(a2, v27, &qword_1000DD530, &qword_1000ABF68);
  if (sub_100008B84(v27, 1, v34) == 1)
  {
    sub_10001EF70(v27, &qword_1000DD530, &qword_1000ABF68);
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v64 = &v27[v34[14]];
    v62 = *v64;
    v63 = *(v64 + 1);

    sub_10001EF70(v27, &qword_1000DD538, &unk_1000ABF70);
  }

  v65 = 0;
  *(inited + 48) = v62;
  *(inited + 56) = v63;
  v66 = _swiftEmptyArrayStorage;
LABEL_48:
  v67 = (inited + 40 + 16 * v65);
  v68 = v164;
  while (++v65 != 3)
  {
    v69 = v67 + 2;
    v70 = *v67;
    v67 += 2;
    if (v70)
    {
      v148 = v18;
      v71 = a2;
      v72 = *(v69 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = v66[2];
        sub_100016520();
        v66 = v76;
      }

      v73 = v66[2];
      if (v73 >= v66[3] >> 1)
      {
        sub_100016520();
        v66 = v77;
      }

      v66[2] = v73 + 1;
      v74 = &v66[2 * v73];
      v74[4] = v72;
      v74[5] = v70;
      a2 = v71;
      v18 = v148;
      v10 = v162;
      goto LABEL_48;
    }
  }

  swift_setDeallocating();
  sub_100086798();
  *&v170 = v66;
  v78 = sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  v79 = sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60);
  v162 = v78;
  v148 = v79;
  v80 = BidirectionalCollection<>.joined(separator:)();
  v145 = v81;
  v146 = v80;

  v82 = v157;
  Date.init()();
  sub_10008C99C();
  v147 = v83;
  v84 = *(v10 + 8);
  v85 = v160;
  v84(v82, v160);
  v86 = v158;
  sub_10003FA5C(a2, v158, &qword_1000DD530, &qword_1000ABF68);
  v34 = v165;
  LODWORD(v157) = sub_100008B84(v86, 1, v165);
  if (v157 == 1)
  {
    sub_10001EF70(v86, &qword_1000DD530, &qword_1000ABF68);
    v158 = 0;
  }

  else
  {
    v87 = *(v10 + 16);
    v88 = v86 + v34[12];
    v89 = v18;
    v90 = v86;
    v91 = v140;
    v87(v140, v88, v85);
    v92 = v90;
    v18 = v89;
    sub_10001EF70(v92, &qword_1000DD538, &unk_1000ABF70);
    sub_10008C9F4();
    v158 = v93;
    v84(v91, v85);
  }

  v94 = v161;
  v95 = v159;
  sub_10003FA5C(a2, v159, &qword_1000DD530, &qword_1000ABF68);
  if (sub_100008B84(v95, 1, v34) == 1)
  {
    sub_10001EF70(v95, &qword_1000DD530, &qword_1000ABF68);
    v161 = 0;
    v27 = 0;
  }

  else
  {
    v27 = *(v95 + 32);
    v161 = *(v95 + 24);

    sub_10001EF70(v95, &qword_1000DD538, &unk_1000ABF70);
  }

  sub_10003FA5C(a2, v94, &qword_1000DD530, &qword_1000ABF68);
  v96 = sub_100008B84(v94, 1, v34);
  if (v96 == 1)
  {
    sub_10001EF70(v94, &qword_1000DD530, &qword_1000ABF68);
    v160 = 0;
  }

  else
  {
    v160 = *(v94 + 40);
    sub_10001EF70(v94, &qword_1000DD538, &unk_1000ABF70);
  }

  sub_10003FA5C(a2, v18, &qword_1000DD530, &qword_1000ABF68);
  if (sub_100008B84(v18, 1, v34) == 1)
  {
    sub_10001EF70(v18, &qword_1000DD530, &qword_1000ABF68);
    v30 = 0;
    v97 = 1;
  }

  else
  {
    v98 = &v18[v34[13]];
    v30 = *v98;
    v97 = v98[8];
    sub_10001EF70(v18, &qword_1000DD538, &unk_1000ABF70);
  }

  if (v156)
  {
    v99 = 0.0;
  }

  else
  {
    v99 = *&v163;
  }

  if (!(v156 & 1 | ((v163 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)))
  {
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if (v99 <= -1.0)
  {
    goto LABEL_110;
  }

  if (v99 >= 1.84467441e19)
  {
    goto LABEL_111;
  }

  if (v166)
  {
    v100 = v166;
    v101 = v142;
    SportingEvent.progressStatus.getter();

    v102 = SportingEventProgressStatus.rawValue.getter();
    v104 = v103;
    (*(v143 + 8))(v101, v144);
  }

  else
  {
    v102 = 0;
    v104 = 0;
  }

  sub_10003FA5C(v153, v68, &qword_1000DC460, &qword_1000AAEF8);
  v105 = type metadata accessor for CloudChannelError();
  if (sub_100008B84(v68, 1, v105) == 1)
  {
    sub_10001EF70(v68, &qword_1000DC460, &qword_1000AAEF8);
    v170 = 0u;
    v171 = 0u;
    v172 = 0;
  }

  else
  {
    *(&v171 + 1) = v105;
    v172 = &off_1000D49C0;
    v106 = sub_10003F5B0(&v170);
    (*(*(v105 - 8) + 32))(v106, v68, v105);
  }

  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  v107 = swift_initStackObject();
  v108 = v107;
  *(v107 + 16) = xmmword_1000ABF20;
  *(v107 + 32) = 3;
  v109 = v149;
  if (v149)
  {
    v110 = &type metadata for String;
    v111 = v141;
  }

  else
  {
    v111 = 0;
    v110 = 0;
    *(v107 + 56) = 0;
  }

  v112 = v158;
  *(v107 + 40) = v111;
  *(v107 + 48) = v109;
  *(v107 + 64) = v110;
  *(v107 + 72) = 12;
  *(v107 + 104) = &type metadata for String;
  v113 = v145;
  *(v107 + 80) = v146;
  *(v107 + 88) = v113;
  *(v107 + 112) = 13;
  *(v107 + 144) = &type metadata for UInt64;
  *(v107 + 120) = v154;
  *(v107 + 152) = 18;
  if (v97)
  {
    v30 = 0;
    v114 = 0;
    *(v107 + 168) = 0;
    *(v107 + 176) = 0;
  }

  else
  {
    v114 = &type metadata for Int;
  }

  *(v107 + 160) = v30;
  *(v107 + 184) = v114;
  *(v107 + 192) = 10;
  *(v107 + 224) = &type metadata for UInt64;
  *(v107 + 200) = v147;
  v115 = &type metadata for UInt64;
  *(v107 + 232) = 14;
  if (v157 == 1)
  {
    v112 = 0;
    v115 = 0;
    *(v107 + 248) = 0;
    *(v107 + 256) = 0;
  }

  *(v107 + 240) = v112;
  *(v107 + 264) = v115;
  *(v107 + 272) = 16;
  if (v27)
  {
    v116 = &type metadata for String;
    v117 = v161;
  }

  else
  {
    v117 = 0;
    v116 = 0;
    *(v107 + 296) = 0;
  }

  *(v107 + 280) = v117;
  *(v107 + 288) = v27;
  *(v107 + 304) = v116;
  *(v107 + 312) = 15;
  *(v107 + 344) = &type metadata for UInt64;
  *(v107 + 320) = v99;
  *(v107 + 352) = 17;
  v118 = swift_initStackObject();
  *(v118 + 16) = v150;
  if (v96 == 1)
  {
    v119 = 0;
    v120 = 0;
  }

  else
  {
    v167[0] = v160;
    v119 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  v121 = 0;
  *(v118 + 40) = v120;
  *(v118 + 32) = v119;
  *(v118 + 48) = v102;
  *(v118 + 56) = v104;
  v122 = _swiftEmptyArrayStorage;
LABEL_95:
  v123 = (v118 + 40 + 16 * v121);
  while (++v121 != 3)
  {
    v124 = v123 + 2;
    v125 = *v123;
    v123 += 2;
    if (v125)
    {
      v126 = *(v124 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = v122[2];
        sub_100016520();
        v122 = v130;
      }

      v127 = v122[2];
      if (v127 >= v122[3] >> 1)
      {
        sub_100016520();
        v122 = v131;
      }

      v122[2] = v127 + 1;
      v128 = &v122[2 * v127];
      v128[4] = v126;
      v128[5] = v125;
      goto LABEL_95;
    }
  }

  swift_setDeallocating();
  sub_100086798();
  v167[0] = v122;
  v132 = BidirectionalCollection<>.joined(separator:)();
  v134 = v133;

  *(v108 + 384) = &type metadata for String;
  *(v108 + 360) = v132;
  *(v108 + 368) = v134;
  *(v108 + 392) = 1;
  *(v108 + 400) = 0u;
  *(v108 + 416) = 0u;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v135 = Dictionary.init(dictionaryLiteral:)();
  sub_10003FA5C(&v170, v167, &qword_1000DD548, &qword_1000ABF90);
  v136 = v168;
  if (v168)
  {
    v137 = v169;
    sub_100008614(v167, v168);
    v138 = (*(v137 + 8))(v136, v137);
    sub_100008A94(v167);
  }

  else
  {
    sub_10001EF70(v167, &qword_1000DD548, &qword_1000ABF90);
    v138 = Dictionary.init(dictionaryLiteral:)();
  }

  v139 = sub_100044908(v138, v135);
  sub_10001EF70(&v170, &qword_1000DD548, &qword_1000ABF90);
  sub_10009C660(v139, 257);
}

uint64_t sub_10003F3A8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100003998(&qword_1000DD530, &qword_1000ABF68);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  sub_10008C99C();
  v14 = v13;
  (*(v9 + 8))(v12, v8);
  v15 = sub_100003998(&qword_1000DD538, &unk_1000ABF70);
  sub_100008E2C(v7, 1, 1, v15);
  sub_10003E364(v14, v7, a1);
  return sub_10001EF70(v7, &qword_1000DD530, &qword_1000ABF68);
}

uint64_t sub_10003F554()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t *sub_10003F5B0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_10003F620()
{
  sub_10001BEC4();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003FB48;

  return sub_10003DCD0(v3, v4);
}

uint64_t sub_10003F6B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003F700(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_10003FBF8(v8);
  *v9 = v10;
  v9[1] = sub_10003F7C0;

  return sub_10003C660(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_10003F7C0()
{
  sub_10001BEC4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_10001BE74();
  *v3 = v2;

  sub_10001BEDC();

  return v4();
}

uint64_t sub_10003F8A4()
{
  sub_10001BF48();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10003FBF8(v3);
  *v4 = v5;
  v6 = sub_10003FBCC(v4);

  return v7(v6);
}

uint64_t sub_10003F938()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F970()
{
  sub_10001BF48();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10003FBF8(v3);
  *v4 = v5;
  v6 = sub_10003FBCC(v4);

  return v7(v6);
}

unint64_t sub_10003FA04()
{
  result = qword_1000DD590;
  if (!qword_1000DD590)
  {
    type metadata accessor for ScoreboardSubscriptionManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD590);
  }

  return result;
}

uint64_t sub_10003FA5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003998(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003FAC4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FB04()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003FB4C(uint64_t result)
{
  *(result + 8) = sub_10003CA24;
  v2 = *(v1 + 392);
  v3 = *(v1 + 376);
  return result;
}

uint64_t sub_10003FB74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10000A6FC(a1, a2, a3);
}

uint64_t sub_10003FBAC()
{

  return swift_once();
}

uint64_t sub_10003FBCC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10003FC24()
{

  return swift_slowAlloc();
}

void sub_10003FC3C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = sub_10000AC48(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000ADA0();
  v8 = *(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_message);
  sub_100003998(&qword_1000DD650, &unk_1000AC0E8);
  swift_allocObject();

  v10 = sub_10004498C(v9);
  v11 = *(v10[2] + *(*v10[2] + 184));
  if (sub_10001BE20(v11))
  {
    v12 = (v11 & 0xC000000000000001);
    sub_1000835D4(0, (v11 & 0xC000000000000001) == 0, v11);
    if ((v11 & 0xC000000000000001) != 0)
    {

      specialized _ArrayBuffer._getElementSlowPath(_:)();
      sub_10001C418();
    }

    else
    {
      v12 = *(v11 + 32);
    }

    if (qword_1000DBA18 != -1)
    {
      sub_10001C0A8();
    }

    v13 = type metadata accessor for Logger();
    sub_100007DE8(v13, qword_1000E6D30);
    swift_retain_n();
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    v83 = v16;
    v85 = v10;
    v82 = v5;
    if (os_log_type_enabled(v15, v16))
    {
      v81 = v15;
      v17 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v17 = 136316418;
      v18 = SportingEvent.canonicalId.getter();
      v20 = v14;
      v21 = v5;
      v22 = sub_100045E94(v18, v19);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      v23 = SportingEvent.version.getter();
      v25 = sub_100045E94(v23, v24);

      *(v17 + 14) = v25;
      *(v17 + 22) = 2048;
      v26 = v10[2];
      v27 = *(v21 + 16);
      v28 = sub_100045E48();
      v29(v28);
      Date.timeIntervalSince1970.getter();
      v31 = v30;
      v32 = v21;
      v14 = v20;
      v33 = *(v32 + 8);
      v34 = sub_100045DA0();
      v35(v34);
      *(v17 + 24) = v31;
      *(v17 + 32) = 2048;
      v36 = *(v10[2] + 16);

      *(v17 + 34) = v36;

      *(v17 + 42) = 2080;
      v37 = v10[2];
      v38 = *(v37 + 40);
      v39 = *(v37 + 48);

      v40 = sub_1000170D4(v38, v39, v86);

      *(v17 + 44) = v40;
      *(v17 + 52) = 2048;
      v41 = v10[2] + qword_1000E6E00;
      v42 = *v41;
      if (*(v41 + 8))
      {
        v42 = -1.0;
      }

      *(v17 + 54) = v42;
      _os_log_impl(&_mh_execute_header, v81, v83, "=== Begin apns log for %s, version %s, message timestamp %f, type %ld, tempoSessionId %s, liveActivityTtl %f ===", v17, 0x3Eu);
      swift_arrayDestroy();
      sub_10002F1FC();

      sub_10002F1FC();
    }

    else
    {
    }

    v44 = SportingEvent.version.getter();
    v45 = (v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion);
    v46 = *(v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion + 8);
    *v45 = v44;
    v45[1] = v47;

    v48 = *(v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_isLowCapLiveActivity) ^ 1u;
    v49 = *(v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_dataRepository);
    SportingEvent.canonicalId.getter();
    v50 = v14;
    v51 = v49[6];
    sub_100008614(v49 + 2, v49[5]);
    v52 = dispatch thunk of PersistentStorable.retrieveEventSubscription(canonicalId:isConventionalOrUnified:)();

    if (v52)
    {
      v84 = v50;
      v53 = dispatch thunk of SportingEvent.versionNumber.getter();
      v54 = SportingEventSubscription.sportingEventDetails.getter();
      v55 = dispatch thunk of SportingEvent.versionNumber.getter();

      if (v53 >= v55)
      {
        SportingEvent.canonicalId.getter();
        sub_10002D018();
      }

      sub_1000459F8(v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateable, v86, &qword_1000DD648, &qword_1000AC0E0);
      if (v87)
      {
        v56 = sub_100008614(v86, v87);
        SportingEventSubscription.canonicalId.getter();
        v57 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v58 = swift_allocObject();
        v58[2] = v57;
        v58[3] = v85;
        v58[4] = v52;
        v58[5] = v84;
        v59 = *v56;

        v60 = v84;

        v61 = v52;
        sub_100057468();

        sub_100008A94(v86);
      }

      else
      {

        sub_10001BB44(v86, &qword_1000DD648, &qword_1000AC0E0);
      }
    }

    else
    {

      v62 = v50;
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v63, v64))
      {
        sub_100045DE8();
        v65 = swift_slowAlloc();
        v86[0] = swift_slowAlloc();
        *v65 = 136315650;
        v66 = SportingEvent.canonicalId.getter();
        v68 = sub_100045E94(v66, v67);

        *(v65 + 4) = v68;
        *(v65 + 12) = 2080;
        v69 = SportingEvent.version.getter();
        v71 = sub_100045E94(v69, v70);

        *(v65 + 14) = v71;
        *(v65 + 22) = 2048;
        v72 = v85[2];
        v73 = *(v82 + 16);
        v74 = sub_100045E48();
        v75(v74);
        Date.timeIntervalSince1970.getter();
        v77 = v76;
        v78 = *(v82 + 8);
        v79 = sub_100045DA0();
        v80(v79);
        *(v65 + 24) = v77;
        _os_log_impl(&_mh_execute_header, v63, v64, "Failed to process push notification for %s with version %s and message timestamp %f - no subscription exists", v65, 0x20u);
        swift_arrayDestroy();
        sub_10002F1FC();

        sub_10002F1FC();
      }

      sub_10004078C();
    }

    sub_100045DCC();
  }

  else
  {
    sub_10004078C();
    sub_100045DCC();
  }
}

void sub_100040560(char a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_100040864(a3, a4, a5, *(*(a3 + 16) + qword_1000E6E00), *(*(a3 + 16) + qword_1000E6E00 + 8), *(Strong + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_isLowCapLiveActivity), a1 & 1);
    sub_10004078C();
  }
}

uint64_t sub_10004078C()
{
  if (qword_1000DBA18 != -1)
  {
    sub_10001C0A8();
  }

  v0 = type metadata accessor for Logger();
  sub_100007DE8(v0, qword_1000E6D30);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "=== End apns log ===", v3, 2u);
    sub_10002F1FC();
  }

  return sub_100065BA4();
}

void sub_100040864(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, uint64_t), int a5, int a6, int a7)
{
  v211 = a4;
  v216 = a1;
  v201 = a7;
  v202 = a6;
  LODWORD(v210) = a5;
  v217 = a3;
  v8 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v9 = sub_10001C3C4(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100045D70();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  sub_100045DAC(&v184 - v16);
  v203 = type metadata accessor for Date();
  v17 = sub_10000AC48(v203);
  v205 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_100045D70();
  v204 = v21 - v22;
  __chkstk_darwin(v23);
  sub_100045DAC(&v184 - v24);
  v199 = type metadata accessor for SportsScheduledActivities();
  v25 = sub_10000AC48(v199);
  v198 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_10000ADA0();
  v200 = v30 - v29;
  v31 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v31);
  v33 = *(v32 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v34);
  sub_100045DAC(&v184 - v35);
  v196 = type metadata accessor for Sport();
  v36 = sub_10000AC48(v196);
  v195 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_10000ADA0();
  v194 = v41 - v40;
  v42 = sub_100003998(&qword_1000DD228, &qword_1000ABE40);
  sub_10001C3C4(v42);
  v44 = *(v43 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v45);
  v206 = &v184 - v46;
  v47 = type metadata accessor for SportingEventProgressStatus();
  v208 = sub_10000AC48(v47);
  v209 = v48;
  v50 = *(v49 + 64);
  __chkstk_darwin(v208);
  sub_100045D70();
  v53 = v51 - v52;
  __chkstk_darwin(v54);
  v56 = &v184 - v55;
  v57 = type metadata accessor for SportingEventPlayLevel();
  v58 = sub_10000AC48(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  __chkstk_darwin(v58);
  sub_10000ADA0();
  v65 = v64 - v63;
  v66 = SportingEventSubscription.mostRecentPlay.getter();
  v67 = *(v60 + 104);
  v189 = enum case for SportingEventPlayLevel.alerts(_:);
  v190 = v60 + 104;
  v188 = v67;
  v67(v65);
  v68 = sub_10007C174(v65, v66);

  v69 = *(v60 + 8);
  v191 = v65;
  v193 = v57;
  v192 = v60 + 8;
  v187 = v69;
  v69(v65, v57);
  v221 = a2;
  v70 = SportingEventSubscription.sportingEventDetails.getter();
  v71 = dispatch thunk of SportingEvent.alertUpdates.getter();

  v213 = v68;
  v185 = v14;
  if (!v71)
  {
    goto LABEL_7;
  }

  if (!sub_10001BE20(v71))
  {

LABEL_7:
    v214 = 0;
    goto LABEL_8;
  }

  sub_100045E54();
  if (v70)
  {
    v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v72 = *(v71 + 32);
  }

  v214 = v72;

LABEL_8:
  v73 = v221;
  v74 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  v75 = enum case for SportingEventProgressStatus.final(_:);
  v76 = v209;
  v77 = v53;
  v78 = v53;
  v79 = v208;
  v207 = v209[13];
  (v207)(v78, enum case for SportingEventProgressStatus.final(_:), v208);
  LOBYTE(v74) = sub_100064D7C(v56, v77);
  v80 = v76[1];
  v81 = sub_100045DA0();
  v80(v81);
  v82 = sub_100045DF4();
  v80(v82);
  if (v74)
  {
    type metadata accessor for SportingEventFactory();
    (v207)(v56, v75, v79);
    v83 = static SportingEventFactory.eventWithProgressStatus(event:progressStatus:)();
    v84 = sub_100045DF4();
    v80(v84);
    v85 = v215;
    SportingEventSubscription.update(sportingEventDetails:updatedAt:)();

LABEL_23:
    sub_1000459F8(*(v216 + 16) + *(**(v216 + 16) + 176), v206, &qword_1000DD228, &qword_1000ABE40);
    SportingEventSubscription.view.setter();
    goto LABEL_24;
  }

  v86 = SportingEventSubscription.sportingEventDetails.getter();
  SportingEvent.progressStatus.getter();

  v87 = sub_100045E48();
  v88 = v207;
  v207(v87);
  v89 = sub_100064D7C(v56, v77);
  v90 = sub_100045DA0();
  v80(v90);
  v91 = sub_100045DF4();
  v80(v91);
  if ((v89 & 1) == 0)
  {
    goto LABEL_17;
  }

  SportingEvent.progressStatus.getter();
  v92 = sub_100045E48();
  v88(v92);
  v93 = sub_100064D7C(v56, v77);
  v94 = sub_100045DA0();
  v80(v94);
  v95 = sub_100045DF4();
  v80(v95);
  if (v93)
  {
    if (qword_1000DBA38 != -1)
    {
      sub_100045D4C();
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    sub_100007DE8(v96, qword_1000E6D90);
    v97 = v217;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();

    v100 = os_log_type_enabled(v98, v99);
    v85 = v215;
    if (v100)
    {
      v101 = swift_slowAlloc();
      sub_100045DE8();
      v102 = swift_slowAlloc();
      v218 = v102;
      *v101 = 136315138;
      v103 = SportingEvent.canonicalId.getter();
      v105 = sub_1000170D4(v103, v104, &v218);

      *(v101 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v98, v99, "Skipped pregame update for inProgress event. canonical id: %s", v101, 0xCu);
      sub_100008A94(v102);
      sub_10002F1FC();

      sub_10002F1FC();
    }

    v73 = v221;
  }

  else
  {
LABEL_17:
    v106 = v217;
    v107 = dispatch thunk of SportingEvent.versionNumber.getter();
    v73 = v221;
    v108 = SportingEventSubscription.sportingEventDetails.getter();
    v109 = dispatch thunk of SportingEvent.versionNumber.getter();

    if (v107 >= v109)
    {
      v85 = v215;
      SportingEventSubscription.update(sportingEventDetails:updatedAt:)();
      goto LABEL_23;
    }

    v85 = v215;
    if (qword_1000DBA38 != -1)
    {
      sub_100045D4C();
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_100007DE8(v110, qword_1000E6D90);
    v111 = v106;
    v112 = v73;
    v113 = v111;
    v114 = v112;
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v115, v116))
    {
      sub_100045DE8();
      v117 = swift_slowAlloc();
      sub_100045DE8();
      v209 = swift_slowAlloc();
      v218 = v209;
      *v117 = 136315650;
      v118 = SportingEvent.canonicalId.getter();
      v120 = sub_1000170D4(v118, v119, &v218);

      *(v117 + 4) = v120;
      *(v117 + 12) = 2048;
      v121 = dispatch thunk of SportingEvent.versionNumber.getter();

      *(v117 + 14) = v121;
      *(v117 + 22) = 2048;
      v122 = SportingEventSubscription.sportingEventDetails.getter();
      v123 = dispatch thunk of SportingEvent.versionNumber.getter();

      *(v117 + 24) = v123;
      _os_log_impl(&_mh_execute_header, v115, v116, "Skipped stale activity update for canonical id: %s. (%ld < %ld)", v117, 0x20u);
      sub_100008A94(v209);
      sub_10002F1FC();

      v73 = v221;
      sub_10002F1FC();
    }

    else
    {
    }
  }

LABEL_24:
  SportingEventSubscription.liveActivityTTLSeconds.setter();
  v124 = *&v85[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_dataRepository];
  v125 = v85[OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_isLowCapLiveActivity];
  v126 = v124[6];
  sub_100008614(v124 + 2, v124[5]);
  v127 = v212;
  dispatch thunk of PersistentStorable.writeEventSubscription(_:isConventionalOrUnified:)();
  if (v127)
  {

    return;
  }

  v128 = SportingEventSubscription.consumers.getter();
  v129 = sub_100049B40(0xD000000000000011, 0x80000001000B0480, v128);

  v130 = v129 | v202;
  if ((v129 | v202))
  {
    if (v201)
    {
      v131 = SportingEventSubscription.mostRecentPlay.getter();
      v132 = v191;
      v133 = v193;
      v188(v191, v189, v193);
      v134 = sub_10007C174(v132, v131);

      v187(v132, v133);
      v135 = SportingEventSubscription.sportingEventDetails.getter();
      v136 = dispatch thunk of SportingEvent.alertUpdates.getter();

      if (v136)
      {
        v137 = sub_10001BE20(v136);
        v138 = v213;
        if (v137)
        {
          sub_100045E54();
          if (v135)
          {
            v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v139 = *(v136 + 32);
          }

          v140 = v139;
        }

        else
        {

          v140 = 0;
        }
      }

      else
      {
        v140 = 0;
        v138 = v213;
      }

      if (qword_1000DB9F8 != -1)
      {
        swift_once();
      }

      SportingEventSubscription.sport.getter();
      v167 = v194;
      Sport.init(rawValue:)();
      sub_100049C24();
      v169 = v168;
      (*(v195 + 8))(v167, v196);
      v212 = v134;
      if (v169)
      {
        v170 = sub_100043934(v138, v134);
      }

      else
      {
        v170 = sub_100043A64(v214, v140);
      }

      v171 = v170;
      type metadata accessor for TaskPriority();
      sub_100045E00();
      sub_100008E2C(v172, v173, v174, v175);
      v176 = swift_allocObject();
      *(v176 + 16) = 0;
      *(v176 + 24) = 0;
      v177 = v221;
      *(v176 + 32) = v85;
      *(v176 + 40) = v177;
      *(v176 + 48) = v171 & 1;
      *(v176 + 56) = v216;
      v178 = v177;
      v179 = v85;

      sub_100045DBC();
      sub_10004A77C();

      v73 = v177;
      v141 = v203;
      goto LABEL_50;
    }

    sub_10000BC8C((v124 + 2), &v218);
    sub_100008614(&v218, v219);
    v142 = v200;
    dispatch thunk of PersistentStorable.scheduledLiveActivities.getter();
    sub_100008A94(&v218);
    v143 = SportingEventSubscription.canonicalId.getter();
    v145 = v144;
    v146 = SportsScheduledActivities.scheduledActivities.getter();
    v147 = v197;
    sub_10007C1BC(v146, v197);
    v148 = v147;

    v149 = v147;
    v150 = v203;
    if (sub_100008B84(v149, 1, v203) == 1)
    {
      (*(v198 + 8))(v142, v199);

      sub_10001BB44(v148, &qword_1000DC5A0, &unk_1000AB0E0);
    }

    else
    {
      v212 = v143;
      v151 = v205;
      v152 = v186;
      (*(v205 + 32))(v186, v148, v150);
      v153 = v204;
      static Date.now.getter();
      sub_100045A58();
      v154 = dispatch thunk of static Comparable.< infix(_:_:)();
      v155 = v153;
      v156 = *(v151 + 8);
      v156(v155, v150);
      if ((v154 & 1) == 0)
      {
        v211 = v156;
        sub_10000BC8C((v124 + 2), &v218);
        v210 = v220;
        sub_100008614(&v218, v219);
        v159 = v185;
        sub_100045E00();
        sub_100008E2C(v160, v161, v162, v150);
        v163 = v212;
        dispatch thunk of PersistentStorable.scheduleLiveActivity(_:forId:)();
        v138 = v213;
        v164 = v186;
        sub_10001BB44(v159, &qword_1000DC5A0, &unk_1000AB0E0);
        sub_100008A94(&v218);
        sub_100042EC0(v163, v145);

        v141 = v203;
        v211(v164, v203);
        v165 = sub_100045D80();
        v166(v165);
        v73 = v221;
        goto LABEL_50;
      }

      v156(v152, v150);
      v157 = sub_100045D80();
      v158(v157);
    }

    v73 = v221;
    v141 = v150;
  }

  else
  {
    v141 = v203;
  }

  v138 = v213;
LABEL_50:
  v180 = v216;
  sub_100042374(v216, v73, v130 & 1);
  v181 = SportingEventSubscription.canonicalId.getter();
  sub_100043CF8(v181, v182, v180, 0);

  v183 = v204;
  Date.init()();
  sub_100043AE0(v217, v73);

  (*(v205 + 8))(v183, v141);
}

uint64_t sub_10004181C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = a7;
  *(v7 + 144) = a6;
  *(v7 + 96) = a4;
  return _swift_task_switch(sub_100041844, 0, 0);
}

uint64_t sub_100041844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001C50C();
  sub_10001C370();
  v11 = 1751607656;
  v12 = *(*(v10 + 96) + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityCapUtility);
  v13 = sub_100066914();
  if ((v13 & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  type metadata accessor for ContainerConstants();
  v14 = static ContainerConstants.defaultSuiteName.getter();
  v16 = v15;
  v17 = objc_allocWithZone(NSUserDefaults);
  v18 = sub_100058E38(v14, v16);
  if (!v18)
  {
    v18 = [objc_opt_self() standardUserDefaults];
  }

  v19 = v18;
  *(v10 + 120) = v18;
  v20 = sub_100045E74();
  v21 = [v19 stringForKey:v20];

  if (v21)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  v48._countAndFlagsBits = v11;
  v48._object = v23;
  sub_10004AF5C(v48);
  if ((sub_100064724(v13 & 1) & 1) == 0)
  {
    if (qword_1000DB9C0 != -1)
    {
      swift_once();
    }

    v24 = *(v10 + 96);
    v25 = *sub_100008614((qword_1000E6CC8 + 208), *(qword_1000E6CC8 + 232));
    *(v10 + 80) = sub_10000F1CC();
    v26 = swift_allocObject();
    *(v26 + 16) = v13 & 1;
    *(v26 + 24) = v19;
    v27 = v19;
    sub_100003998(&qword_1000DC970, &qword_1000AB3C0);
    sub_10000A6FC(&qword_1000DC978, &qword_1000DC970, &qword_1000AB3C0);
    v28 = Publisher<>.sink(receiveValue:)();

    v29 = *(v24 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_cancellable);
    *(v24 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_cancellable) = v28;
  }

  sub_1000459F8(*(v10 + 96) + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateable, v10 + 16, &qword_1000DD648, &qword_1000AC0E0);
  v30 = *(v10 + 40);
  if (v30)
  {
    v31 = *sub_100008614((v10 + 16), v30);
    v32 = swift_task_alloc();
    *(v10 + 128) = v32;
    *v32 = v10;
    v32[1] = sub_100041BF4;
    v33 = *(v10 + 144);
    v34 = *(v10 + 104);
    sub_10001C358();

    return sub_100058748();
  }

  else
  {
    sub_10001BB44(v10 + 16, &qword_1000DD648, &qword_1000AC0E0);
    v37 = *(v10 + 96) + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion;
    v38 = *(v10 + 120);
    if (*v37)
    {
      v39 = *(v37 + 8);
      (*v37)(0);
    }

    sub_10001BEDC();
    sub_10001C358();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }
}

uint64_t sub_100041BF4()
{
  sub_10001BEC4();
  sub_10001BF54();
  v3 = *(v2 + 128);
  v4 = *v1;
  sub_10001BE74();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_10001C740();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100041CF4()
{
  sub_10001BEC4();
  sub_100008A94(v0 + 2);
  v1 = v0[12] + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion;
  v2 = v0[15];
  if (*v1)
  {
    v3 = *(v1 + 8);
    (*v1)(0);
  }

  sub_10001BEDC();

  return v4();
}

uint64_t sub_100041D7C()
{
  v36 = v0;
  v1 = *(v0 + 96);

  sub_100008A94((v0 + 16));
  v2 = *(v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion + 8);
    sub_100045BF8();
    swift_allocError();
    *v4 = xmmword_1000AC020;
    v2();
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);
  v9 = SportingEventSubscription.canonicalId.getter();
  v11 = v10;
  swift_errorRetain();
  sub_100043CF8(v9, v11, v7, v5);

  if (qword_1000DBA38 != -1)
  {
    sub_100045D4C();
    swift_once();
  }

  v12 = *(v0 + 136);
  v13 = *(v0 + 104);
  v14 = type metadata accessor for Logger();
  sub_100007DE8(v14, qword_1000E6D90);
  sub_10001C418();
  swift_errorRetain();
  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 136);
  if (v18)
  {
    v20 = *(v0 + 104);
    v21 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v21 = 136315394;
    v22 = SportingEventSubscription.sportingEventDetails.getter();
    v23 = SportingEvent.canonicalId.getter();
    v25 = v24;

    v26 = sub_1000170D4(v23, v25, &v35);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    swift_getErrorValue();
    v28 = *(v0 + 56);
    v27 = *(v0 + 64);
    v29 = *(v0 + 72);
    v30 = Error.localizedDescription.getter();
    v32 = sub_1000170D4(v30, v31, &v35);

    *(v21 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v16, v17, "Failed to update activity for canonical id: %s - %s", v21, 0x16u);
    swift_arrayDestroy();
    sub_10002F1FC();

    sub_10002F1FC();
  }

  else
  {
  }

  sub_10001BEDC();

  return v33();
}

uint64_t sub_10004203C(uint64_t *a1, char a2, void *a3)
{
  v6 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = type metadata accessor for TaskPriority();
  sub_100008E2C(v9, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a2 & 1;
  *(v13 + 40) = v11;
  *(v13 + 48) = v10;
  *(v13 + 56) = a3;

  v14 = a3;
  sub_10004A77C();
}

uint64_t sub_100042148(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 48) = a4;
  return _swift_task_switch(sub_100042170, 0, 0);
}

uint64_t sub_100042170()
{
  sub_10001BEC4();
  if (qword_1000DBA00 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1000E6D10;
  if (qword_1000DB9F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000E6D00;

  return _swift_task_switch(sub_10004223C, v1, 0);
}

uint64_t sub_10004223C()
{
  sub_10001BEC4();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_10004AFAC(*(v0 + 48) & 1);
  sub_10001C740();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000422A8()
{
  v1 = *(v0 + 32);
  *(v0 + 48);
  *(v0 + 48);
  v2 = String._bridgeToObjectiveC()();

  v3 = sub_100045E74();
  [v1 setObject:v2 forKey:v3];

  sub_10001BEDC();

  return v4();
}

void sub_100042374(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v52 = a3;
  v7 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v7);
  v9 = *(v8 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v10);
  v53 = &v45 - v11;
  v12 = sub_100003998(&unk_1000DD7B0, &qword_1000AC150);
  sub_10001C3C4(v12);
  v14 = *(v13 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for URL();
  v19 = sub_10000AC48(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v45 - v26;
  v28 = (*(a1 + 16) + qword_1000E6E08);
  v29 = v28[1];
  if (v29)
  {
    v50 = *v28;

    v51 = a2;
    SportingEventSubscription.fullPayloadBaseURL.getter();
    if (sub_100008B84(v17, 1, v18) == 1)
    {

      v30 = &unk_1000DD7B0;
      v31 = &qword_1000AC150;
      v32 = v17;
    }

    else
    {
      v49 = *(v21 + 32);
      v49(v27, v17, v18);
      sub_1000459F8(v4 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_subscriptionOperationFactory, v54, &qword_1000DCD20, &unk_1000AB820);
      if (v54[3])
      {
        memcpy(v55, v54, 0xB8uLL);
        type metadata accessor for TaskPriority();
        sub_100045E00();
        sub_100008E2C(v33, v34, v35, v36);
        sub_10000BC30(v55, v54);
        (*(v21 + 16))(v24, v27, v18);
        v37 = *(v21 + 80);
        v48 = v4;
        v38 = (v37 + 224) & ~v37;
        v47 = v38 + v23;
        v46 = (v38 + v23) & 0xFFFFFFFFFFFFFFF8;
        v45 = (v46 + 31) & 0xFFFFFFFFFFFFFFF8;
        v39 = swift_allocObject();
        *(v39 + 2) = 0;
        *(v39 + 3) = 0;
        memcpy(v39 + 32, v54, 0xB8uLL);
        v40 = v51;
        *(v39 + 27) = v51;
        v49(&v39[v38], v24, v18);
        v41 = v48;
        v39[v47] = v52 & 1;
        v42 = &v39[v46];
        *(v42 + 1) = v50;
        *(v42 + 2) = v29;
        *&v39[v45] = v41;
        v43 = v40;
        v44 = v41;
        sub_100045DBC();
        sub_10004A9F4();

        sub_10000BCF0(v55);
        (*(v21 + 8))(v27, v18);
        return;
      }

      (*(v21 + 8))(v27, v18);

      v30 = &qword_1000DCD20;
      v31 = &unk_1000AB820;
      v32 = v54;
    }

    sub_10001BB44(v32, v30, v31);
  }
}

uint64_t sub_100042728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = v10;
  *(v8 + 64) = v11;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 88) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  return _swift_task_switch(sub_100042760, 0, 0);
}

uint64_t sub_100042760()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 56);
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v5;
  v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_100042878;
  v8 = *(v0 + 16);
  sub_10001C740();

  return withCheckedContinuation<A>(isolation:function:_:)(v9, v10, v11, 0xD000000000000039, v12, v13, v4, v14);
}

uint64_t sub_100042878()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  sub_10001BE74();
  *v5 = v4;

  sub_10001BEDC();

  return v6();
}

uint64_t sub_100042974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a1;
  v56 = a8;
  v47 = a6;
  v48 = a7;
  v46 = a5;
  v44 = a4;
  v54 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  v52 = *(v54 - 8);
  v53 = *(v52 + 64);
  __chkstk_darwin(v54);
  v51 = &v43 - v9;
  v45 = type metadata accessor for Date();
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v45);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  FullApsMessageOperation = type metadata accessor for SubscriptionFetchFullApsMessageOperation();
  v15 = (FullApsMessageOperation - 8);
  v16 = *(*(FullApsMessageOperation - 8) + 64);
  __chkstk_darwin(FullApsMessageOperation);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003998(&qword_1000DD670, &unk_1000AC168);
  v20 = *(v19 - 8);
  v49 = v19;
  v50 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v43 - v22;
  v24 = SportingEventSubscription.canonicalId.getter();
  v26 = v25;
  v27 = *(a2 + 40);
  sub_10000BC8C(a2 + 96, (v18 + 8));
  v28 = v15[9];
  v29 = type metadata accessor for URL();
  (*(*(v29 - 8) + 16))(&v18[v28], v44, v29);

  v30 = sub_10001F5E4(v46);
  *v18 = v27;
  *(v18 + 6) = v24;
  *(v18 + 7) = v26;
  v18[v15[10]] = v30 & 1;
  v31 = &v18[v15[11]];
  v32 = v48;
  *v31 = v47;
  *(v31 + 1) = v32;
  v33 = v15[12];

  Date.init()();
  sub_10008C99C();
  v35 = v34;
  (*(v10 + 8))(v13, v45);
  *&v18[v33] = v35;
  v57 = sub_10005B6D4();
  v58 = 0;
  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  Publisher.replaceError(with:)();

  sub_10004589C(v18, type metadata accessor for SubscriptionFetchFullApsMessageOperation);
  v37 = v51;
  v36 = v52;
  v38 = v54;
  (*(v52 + 16))(v51, v55, v54);
  v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v39, v37, v38);
  sub_10000A6FC(&qword_1000DD678, &qword_1000DD670, &unk_1000AC168);
  v41 = v49;
  Publisher<>.sink(receiveValue:)();

  (*(v50 + 8))(v23, v41);
  swift_beginAccess();
  sub_100003998(&qword_1000DCC28, &qword_1000AB798);
  sub_10000A6FC(&qword_1000DCC30, &qword_1000DCC28, &qword_1000AB798);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100042E70(char *a1)
{
  v2 = *a1;
  sub_100003998(&qword_1000DCA48, qword_1000AB448);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100042EC0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100003998(&qword_1000DC5A8, &qword_1000AAFD0);
  sub_10001C3C4(v5);
  v7 = *(v6 + 64);
  sub_10000ACFC();
  __chkstk_darwin(v8);
  sub_1000459F8(v2 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_subscriptionOperationFactory, v16, &qword_1000DCD20, &unk_1000AB820);
  if (!v16[3])
  {
    return sub_10001BB44(v16, &qword_1000DCD20, &unk_1000AB820);
  }

  memcpy(v17, v16, 0xB8uLL);
  type metadata accessor for TaskPriority();
  sub_100045E00();
  sub_100008E2C(v9, v10, v11, v12);
  sub_10000BC30(v17, v16);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  memcpy(v13 + 4, v16, 0xB8uLL);
  v13[27] = a1;
  v13[28] = a2;
  v13[29] = v2;

  v14 = v2;
  sub_100045DBC();
  sub_10004A9F4();

  return sub_10000BCF0(v17);
}

uint64_t sub_10004302C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100043054, 0, 0);
}

uint64_t sub_100043054()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_100043150;
  v7 = *(v0 + 16);
  sub_10001C740();

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, 0xD000000000000020, v11, v12, v3, v13);
}

uint64_t sub_100043150()
{
  sub_10001BEC4();
  sub_10001BF54();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_10001BE74();
  *v5 = v4;

  sub_10001BEDC();

  return v6();
}

uint64_t sub_10004324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v59 = a3;
  v55 = a1;
  v7 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  v56 = *(v7 - 8);
  v57 = v7;
  v53 = *(v56 + 64);
  __chkstk_darwin(v7);
  v54 = &v51 - v8;
  v9 = sub_100003998(&qword_1000DC5A0, &unk_1000AB0E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v51 - v11;
  ActivityOperation = type metadata accessor for SubscriptionCreateActivityOperation();
  v14 = *(*(ActivityOperation - 1) + 64);
  __chkstk_darwin(ActivityOperation);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000499E0();
  v19 = v18;
  v20 = type metadata accessor for Date();
  v21 = v12;
  sub_100008E2C(v12, 1, 1, v20);
  sub_10000BC30(a2, v16);
  sub_10006F7C0(v16 + 23);
  if (qword_1000DB9B8 != -1)
  {
    swift_once();
  }

  v22 = qword_1000E6CC0;
  *(v16 + 31) = type metadata accessor for BagProvider();
  *(v16 + 32) = &off_1000D0860;
  *(v16 + 28) = v22;
  v23 = type metadata accessor for AccountManager();
  v24 = swift_allocObject();
  *(v16 + 36) = v23;
  *(v16 + 37) = &off_1000D0550;
  *(v16 + 33) = v24;
  v25 = *(a2 + 40);
  sub_10000BC8C(a2 + 56, (v16 + 312));
  v26 = &v16[ActivityOperation[12]];
  v52 = v21;
  sub_1000459F8(v21, v26, &qword_1000DC5A0, &unk_1000AB0E0);
  *(v16 + 38) = v25;
  v16[352] = 0;
  *(v16 + 45) = 0;
  *(v16 + 46) = 0;
  *(v16 + 47) = 0;
  *(v16 + 48) = 1;
  *(v16 + 392) = 0u;
  *(v16 + 408) = 0u;
  *(v16 + 424) = 0u;
  *(v16 + 440) = 0u;
  *(v16 + 456) = 0u;
  *(v16 + 60) = 0;
  *(v16 + 61) = 0;
  *(v16 + 59) = 1;
  v16[496] = 1;
  v27 = &v16[ActivityOperation[13]];
  *v27 = 0xD000000000000011;
  *(v27 + 1) = 0x80000001000B0480;
  v28 = &v16[ActivityOperation[14]];
  *v28 = v17;
  v28[1] = v19;
  v29 = &v16[ActivityOperation[15]];
  *v29 = v59;
  *(v29 + 1) = a4;
  v16[ActivityOperation[16]] = 1;
  v51 = ActivityOperation[17];
  v30 = type metadata accessor for ActivityAuthorization();
  v31 = objc_allocWithZone(v30);

  v32 = [v31 init];
  v33 = sub_1000499E0();
  v35 = v34;
  v60[3] = v30;
  v60[4] = &off_1000D1900;
  v60[0] = v32;
  type metadata accessor for ActivityCapUtility();
  v36 = swift_allocObject();
  v37 = sub_10000B90C(v60, v30);
  v38 = *(*(v30 - 1) + 64);
  v39 = __chkstk_darwin(v37);
  v41 = (&v51 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41, v39);
  v43 = *v41;
  v36[5] = v30;
  v36[6] = &off_1000D1900;
  v36[2] = v43;
  v36[7] = v33;
  v36[8] = v35;
  sub_100008A94(v60);

  sub_10001BB44(v52, &qword_1000DC5A0, &unk_1000AB0E0);
  *&v16[v51] = v36;
  v44 = sub_10008CAA4(0);
  sub_10004589C(v16, type metadata accessor for SubscriptionCreateActivityOperation);
  v60[0] = v44;
  v45 = v56;
  v46 = v54;
  v47 = v57;
  (*(v56 + 16))(v54, v55, v57);
  v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v59;
  *(v49 + 24) = a4;
  (*(v45 + 32))(v49 + v48, v46, v47);

  sub_100003998(&qword_1000DCC18, &qword_1000AB790);
  sub_10000A6FC(&qword_1000DCC20, &qword_1000DCC18, &qword_1000AB790);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  sub_100003998(&qword_1000DCC28, &qword_1000AB798);
  sub_10000A6FC(&qword_1000DCC30, &qword_1000DCC28, &qword_1000AB798);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100043854(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    if (qword_1000DB9C0 != -1)
    {
      swift_once();
    }

    sub_10002B47C(0xD000000000000011, 0x80000001000B0480, a2, a3, nullsub_1, 0);
  }

  sub_100003998(&qword_1000DCA48, qword_1000AB448);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100043934(void *a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    if (a1)
    {
      v3 = a1;
      v4 = v2;
      v24 = dispatch thunk of SportingEventPlay.stamp.getter();
      v6 = v5;
      v7 = dispatch thunk of SportingEventPlay.stamp.getter();
      v9 = v8;
      v10 = dispatch thunk of SportingEventPlay.id.getter();
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 48;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE100000000000000;
      }

      v14 = dispatch thunk of SportingEventPlay.id.getter();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 48;
      }

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE100000000000000;
      }

      if (v12 == v16 && v13 == v17)
      {

        v2 = 0;
      }

      else
      {
        if (v9)
        {
          v19 = 0;
        }

        else
        {
          v19 = v7;
        }

        v20 = v24;
        if (v6)
        {
          v20 = 0;
        }

        v21 = v19 < v20;
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v2 = (v21 & ~v22);
      }
    }

    else
    {
      return 1;
    }
  }

  return v2;
}

BOOL sub_100043A64(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  v3 = a2;
  v4 = a1;
  v5 = SportingEventAlertUpdate.version.getter();
  v6 = SportingEventAlertUpdate.version.getter();

  return v6 < v5;
}

void sub_100043AE0(unint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  type metadata accessor for SportsSubscriptionState();
  v4 = static SportsSubscriptionState.activeSubscriptionEventId.getter();
  if (v5)
  {
    v6 = v5;
    if (v4 == SportingEvent.canonicalId.getter() && v6 == v7)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    if (qword_1000DBA18 != -1)
    {
      sub_10001C0A8();
    }

    v10 = type metadata accessor for Logger();
    sub_100007DE8(v10, qword_1000E6D30);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      sub_100045DE8();
      v18 = swift_slowAlloc();
      *v13 = 136315138;
      v14 = sub_100045DA0();
      v17 = sub_1000170D4(v14, v15, v16);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "EVENT TYPE: %s", v13, 0xCu);
      sub_100008A94(v18);
      sub_10002F1FC();

      sub_10002F1FC();
    }

    else
    {
    }

    sub_100092B94(a1, a2);
  }
}

uint64_t sub_100043CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v88 = a1;
  v89 = a4;
  v93 = a2;
  v7 = type metadata accessor for SportingEventProgressStatus();
  v8 = sub_10000AC48(v7);
  v84 = v9;
  v85 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_10000ADA0();
  v14 = v13 - v12;
  v15 = type metadata accessor for Date();
  v16 = sub_10000AC48(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100045D70();
  v23 = (v21 - v22);
  __chkstk_darwin(v24);
  v26 = &v84 - v25;
  sub_10000BC8C(v5 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_performance, v101);
  v94 = sub_100008614(v101, v101[3]);
  if (a3)
  {
    v27 = *(a3 + 16);
    v28 = *(v27 + 48);
    v86 = *(v27 + 40);
    v91 = v28;
  }

  else
  {
    v86 = 0;
    v91 = 0;
  }

  v90 = *(v5 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_notificationReceiptTime);
  Date.init()();
  sub_10008C99C();
  v92 = v29;
  v30 = *(v18 + 8);
  v30(v26, v15);
  if (a3)
  {
    (*(v18 + 16))(v23, *(a3 + 16) + qword_1000E6DF8, v15);
    v31 = v23;
    sub_10008C9F4();
    v33 = v32;
    v30(v23, v15);
    v34 = *(a3 + 16);
    v35 = *(a3 + 24);
    v37 = v34[3];
    v36 = v34[4];
    v95 = *(v5 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_isLowCapLiveActivity);
    v87 = v34[2];
    v38 = *(v34 + *(*v34 + 184));

    sub_100045EAC(v38);
    sub_10001C418();

    if (v31)
    {
      SportingEvent.progressStatus.getter();

      v39 = SportingEventProgressStatus.rawValue.getter();
      v40 = v14;
      v42 = v41;
      (*(v84 + 8))(v40, v85);
    }

    else
    {
      v39 = 0;
      v42 = 0;
    }
  }

  else
  {
    v33 = 0;
    v36 = 0;
    v37 = 0;
    v42 = 0;
    v35 = 0;
    v87 = 0;
    v95 = *(v5 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_isLowCapLiveActivity);
    v39 = 0;
  }

  if (!v89 || (v96[0] = v89, swift_errorRetain(), sub_100003998(&qword_1000DC470, &qword_1000AA620), sub_100003998(&unk_1000DD750, &qword_1000AC120), (swift_dynamicCast() & 1) == 0))
  {
    v100 = 0;
    memset(v99, 0, sizeof(v99));
  }

  v43 = v93;
  sub_100003998(&qword_1000DC820, &unk_1000ABED0);
  inited = swift_initStackObject();
  v45 = inited;
  *(inited + 16) = xmmword_1000ABF20;
  *(inited + 32) = 3;
  if (v43)
  {
    v46 = &type metadata for String;
    v47 = v43;
    v48 = v88;
  }

  else
  {
    v48 = 0;
    v47 = 0;
    v46 = 0;
    *(inited + 56) = 0;
  }

  v49 = v91;
  *(inited + 40) = v48;
  *(inited + 48) = v47;
  *(inited + 64) = v46;
  *(inited + 72) = 12;
  if (v49)
  {
    v50 = &type metadata for String;
    v51 = v86;
  }

  else
  {
    v51 = 0;
    v50 = 0;
    *(inited + 96) = 0;
  }

  *(inited + 80) = v51;
  *(inited + 88) = v49;
  *(inited + 104) = v50;
  *(inited + 112) = 13;
  v52 = &type metadata for UInt64;
  *(inited + 144) = &type metadata for UInt64;
  *(inited + 120) = v90;
  *(inited + 152) = 18;
  if (a3)
  {
    v53 = &type metadata for Int;
  }

  else
  {
    v35 = 0;
    v53 = 0;
    *(inited + 168) = 0;
    *(inited + 176) = 0;
  }

  *(inited + 160) = v35;
  *(inited + 184) = v53;
  *(inited + 192) = 10;
  *(inited + 224) = &type metadata for UInt64;
  *(inited + 200) = v92;
  *(inited + 232) = 14;
  if (!a3)
  {
    v33 = 0;
    v52 = 0;
    *(inited + 248) = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v33;
  *(inited + 264) = v52;
  *(inited + 272) = 16;
  if (v36)
  {
    v54 = &type metadata for String;
  }

  else
  {
    v37 = 0;
    v54 = 0;
    *(inited + 296) = 0;
  }

  v55 = v95;
  *(inited + 280) = v37;
  *(inited + 288) = v36;
  *(inited + 304) = v54;
  *(inited + 312) = 15;
  *(inited + 320) = 0u;
  *(inited + 336) = 0u;
  *(inited + 352) = 17;
  sub_100003998(&qword_1000DD540, &unk_1000ABF80);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1000AB460;
  if (a3)
  {
    v96[0] = v87;

    v57 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {

    v57 = 0;
    v58 = 0;
  }

  v59 = 0;
  v93 = 0;
  *(v56 + 40) = v58;
  *(v56 + 32) = v57;
  *(v56 + 48) = v39;
  *(v56 + 56) = v42;
  v60 = _swiftEmptyArrayStorage;
LABEL_30:
  v61 = (v56 + 40 + 16 * v59);
  while (++v59 != 3)
  {
    v62 = v61 + 2;
    v63 = *v61;
    v61 += 2;
    if (v63)
    {
      v64 = *(v62 - 3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = v60[2];
        sub_100016520();
        v60 = v69;
      }

      v66 = v60[2];
      if (v66 >= v60[3] >> 1)
      {
        sub_100016520();
        v60 = v70;
      }

      v60[2] = v66 + 1;
      v67 = &v60[2 * v66];
      v67[4] = v64;
      v67[5] = v63;
      v55 = v95;
      goto LABEL_30;
    }
  }

  swift_setDeallocating();
  sub_100086798();
  v96[0] = v60;
  sub_100003998(&qword_1000DC420, &unk_1000ADE60);
  sub_10000A6FC(&qword_1000DC428, &qword_1000DC420, &unk_1000ADE60);
  v71 = BidirectionalCollection<>.joined(separator:)();
  v73 = v72;

  *(v45 + 384) = &type metadata for String;
  *(v45 + 360) = v71;
  *(v45 + 368) = v73;
  *(v45 + 392) = 1;
  *(v45 + 400) = 0u;
  *(v45 + 416) = 0u;
  sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  sub_10001DA90();
  v74 = Dictionary.init(dictionaryLiteral:)();
  sub_1000459F8(v99, v96, &qword_1000DD548, &qword_1000ABF90);
  if (v97)
  {
    v75 = v98;
    sub_100008614(v96, v97);
    v76 = *(v75 + 8);
    v77 = sub_100045DA0();
    v79 = v78(v77);
    sub_100008A94(v96);
  }

  else
  {
    sub_10001BB44(v96, &qword_1000DD548, &qword_1000ABF90);
    v79 = Dictionary.init(dictionaryLiteral:)();
  }

  v80 = sub_100044908(v79, v74);
  sub_10001BB44(v99, &qword_1000DD548, &qword_1000ABF90);
  v81 = *v94;
  if (v55)
  {
    v82 = 1;
  }

  else
  {
    v82 = 257;
  }

  sub_10009C660(v80, v82);

  return sub_100008A94(v101);
}

uint64_t sub_1000444D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_message);

  v2 = *(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_dataRepository);

  v3 = *(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_playsStore);

  sub_10001BB44(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateable, &qword_1000DD648, &qword_1000AC0E0);
  sub_10001BB44(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_subscriptionOperationFactory, &qword_1000DCD20, &unk_1000AB820);
  sub_100008A94((v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_performance));
  v4 = *(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_cancellable);

  v5 = *(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion + 8);
  sub_1000448F8(*(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityUpdateCompletion));
  sub_10001BB44(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_processDate, &qword_1000DC5A0, &unk_1000AB0E0);
  v6 = *(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_activityCapUtility);

  v7 = *(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_cancellables);

  v8 = *(v0 + OBJC_IVAR____TtC7sportsd29ApsMessageProcessingOperation_messageVersion + 8);
}

id sub_1000445F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApsMessageProcessingOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ApsMessageProcessingOperation()
{
  result = qword_1000DD638;
  if (!qword_1000DD638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000447A0()
{
  sub_1000448A0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000448A0()
{
  if (!qword_1000DC790)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DC790);
    }
  }
}

uint64_t sub_1000448F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100044908(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_10004508C(a1, sub_1000A16BC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void *sub_10004498C(uint64_t a1)
{
  v3 = v1;
  v50 = *v1;
  v5 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003998(&qword_1000DBE78, &qword_1000AA750);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 7565409;
  v44 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_10007C118(&v45, a1, &v48);

  sub_10001BAF0(&v45);
  if (!v49)
  {
    sub_10001BB44(&v48, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_10;
  }

  v41 = v5;
  sub_100003998(&qword_1000DD668, &unk_1000AC100);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v19 = 0x80000001000B1D00;
    sub_100003998(&qword_1000DD658, &qword_1000AC0F8);
    sub_10000A6FC(&qword_1000DD660, &qword_1000DD658, &qword_1000AC0F8);
    swift_allocError();
    v21 = 0xD000000000000014;
LABEL_16:
    *v20 = v21;
    v20[1] = v19;
    swift_willThrow();
    goto LABEL_17;
  }

  v40 = v2;
  sub_10007BF54(v43, &v45);

  if (!v46)
  {
    sub_10001BB44(&v45, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v18 = "Key is missing - alert";
    goto LABEL_13;
  }

  sub_10007BF54(v48, &v45);

  if (!v46)
  {
    sub_10001BB44(&v45, &qword_1000DBD08, &qword_1000AA690);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v19 = 0x80000001000B1D40;
    sub_100003998(&qword_1000DD658, &qword_1000AC0F8);
    sub_10000A6FC(&qword_1000DD660, &qword_1000DD658, &qword_1000AC0F8);
    swift_allocError();
    v21 = 0xD000000000000015;
    goto LABEL_16;
  }

  static String.Encoding.utf8.getter();
  v39 = String.data(using:allowLossyConversion:)();
  v17 = v16;

  (*(v12 + 8))(v15, v11);
  if (v17 >> 60 == 15)
  {
    v18 = "Unexpected data format";
LABEL_13:
    v19 = (v18 - 32) | 0x8000000000000000;
    sub_100003998(&qword_1000DD658, &qword_1000AC0F8);
    sub_10000A6FC(&qword_1000DD660, &qword_1000DD658, &qword_1000AC0F8);
    swift_allocError();
    v21 = 0xD000000000000016;
    goto LABEL_16;
  }

  v23 = type metadata accessor for JSONDecoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  static SportsJSONContext.Property<A>.initFailureObserver.getter();
  v26 = type metadata accessor for DefaultSportsJSONInitFailureObserver();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = DefaultSportsJSONInitFailureObserver.init()();
  v46 = v26;
  v47 = &protocol witness table for DefaultSportsJSONInitFailureObserver;
  *&v45 = v29;
  v30 = dispatch thunk of JSONDecoder.userInfo.modify();
  v38 = v17;
  v32 = v31;
  v43 = *v31;
  swift_bridgeObjectRetain_n();
  sub_100003998(&qword_1000DBE90, &qword_1000AA760);
  Dictionary<>.subscript.setter();
  v33 = *v32;
  *v32 = v43;

  v30(&v48, 0);

  (*(v42 + 104))(v8, enum case for JSONDecoder.DateDecodingStrategy.secondsSince1970(_:), v41);
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  sub_100003998(&qword_1000DBDE0, &unk_1000AC110);
  v34 = v38;
  sub_10000A6FC(&qword_1000DBDE8, &qword_1000DBDE0, &unk_1000AC110);
  v36 = v39;
  v35 = v40;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v35)
  {
    v3[2] = v45;
    v37 = Data.count.getter();

    sub_10001F19C(v36, v34);
    v3[3] = v37;
    return v3;
  }

  sub_10001F19C(v36, v34);
LABEL_17:
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_10004508C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1000A23BC(&v46);
  v42 = v46;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  v35 = a1;

  v34 = a3;

  while (1)
  {
    sub_1000A2084(&v39 + 8);
    if (*(&v41 + 1) == 1)
    {
      sub_10001B8A0();
    }

    v9 = BYTE8(v39);
    v37 = v40;
    v38 = v41;
    v10 = *a5;
    v18 = sub_1000175AC(SBYTE8(v39));
    v19 = *(v10 + 16);
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v11;
    if (*(v10 + 24) >= v21)
    {
      if (a4)
      {
        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_100003998(&qword_1000DD7C0, &unk_1000AC128);
        _NativeDictionary.copy()();
        if (v22)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1000A1BAC(v21, a4 & 1, v12, v13, v14, v15, v16, v17, v34, v35, v36[0], v36[1], v36[2], v36[3], v37, *(&v37 + 1), v38, *(&v38 + 1), v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, *(&v46 + 1), v47);
      v23 = *a5;
      v24 = sub_1000175AC(v9);
      if ((v22 & 1) != (v25 & 1))
      {
        goto LABEL_18;
      }

      v18 = v24;
      if (v22)
      {
LABEL_10:
        v26 = *a5;
        sub_1000459F8(*(*a5 + 56) + 32 * v18, v36, &qword_1000DBD08, &qword_1000AA690);
        sub_10001BB44(&v37, &qword_1000DBD08, &qword_1000AA690);
        sub_100045358(v36, *(v26 + 56) + 32 * v18);
        goto LABEL_14;
      }
    }

    v27 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(v27[6] + v18) = v9;
    v28 = (v27[7] + 32 * v18);
    v29 = v38;
    *v28 = v37;
    v28[1] = v29;
    v30 = v27[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_17;
    }

    v27[2] = v32;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000452C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000452FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100045358(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003998(&qword_1000DBD08, &qword_1000AA690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000453C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  sub_100045E0C();
  v4 = *(v0 + 224);

  return _swift_deallocObject(v0, 240, 7);
}

uint64_t sub_10004542C()
{
  sub_10001C50C();
  sub_10001C370();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[29];
  v6 = swift_task_alloc();
  v7 = sub_10003FBF8(v6);
  *v7 = v8;
  v7[1] = sub_100045D48;
  sub_100045D60();
  sub_10001C358();

  return sub_10004302C(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1000454E8()
{
  v1 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10000AC48(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000455AC(void *a1)
{
  v3 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10001C3C4(v3);
  v5 = *(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_100043854(a1, v6, v7);
}

uint64_t sub_100045628()
{
  v1 = type metadata accessor for URL();
  sub_10000AC48(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 224) & ~v4;
  v7 = (v5 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100008A94((v0 + 32));
  v10 = *(v0 + 72);

  v11 = *(v0 + 80);

  sub_100045E0C();

  (*(v3 + 8))(v0 + v5, v1);
  v12 = *(v0 + v7 + 16);

  return _swift_deallocObject(v0, v8 + 8, v4 | 7);
}

uint64_t sub_100045730()
{
  v2 = v1;
  v3 = *(type metadata accessor for URL() - 8);
  v4 = ((*(v3 + 80) + 224) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[27];
  v9 = *(v0 + v4);
  v10 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 1);
  v12 = *(v10 + 2);
  v13 = *(v0 + v5);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100011504;
  sub_100045D60();

  return sub_100042728(v15, v16, v17, v18, v8, v19, v9, v11);
}

uint64_t sub_10004589C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10001C2AC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000458F4()
{
  v1 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10001C2AC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045980(char *a1)
{
  v2 = sub_100003998(&qword_1000DCA48, qword_1000AB448);
  sub_10001C3C4(v2);
  v4 = *(v3 + 80);

  return sub_100042E70(a1);
}

uint64_t sub_1000459F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003998(a3, a4);
  sub_10001C2AC(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100045A58()
{
  result = qword_1000DC478;
  if (!qword_1000DC478)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC478);
  }

  return result;
}

uint64_t sub_100045AB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100045B00()
{
  sub_10001C50C();
  sub_10001C370();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = swift_task_alloc();
  v8 = sub_10003FBF8(v7);
  *v8 = v9;
  v8[1] = sub_100045D48;
  sub_100045D60();
  sub_10001C358();

  return sub_10004181C(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100045BB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100045BF8()
{
  result = qword_1000DD680;
  if (!qword_1000DD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DD680);
  }

  return result;
}

uint64_t sub_100045C4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100045C94()
{
  sub_10001C50C();
  sub_10001C370();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = swift_task_alloc();
  v8 = sub_10003FBF8(v7);
  *v8 = v9;
  v8[1] = sub_100045D48;
  sub_100045D60();
  sub_10001C358();

  return sub_100042148(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100045D80()
{
  v1 = *(*(v0 - 280) + 8);
  result = *(v0 - 264);
  v3 = *(v0 - 272);
  return result;
}
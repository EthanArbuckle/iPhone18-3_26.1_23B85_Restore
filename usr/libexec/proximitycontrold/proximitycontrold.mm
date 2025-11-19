uint64_t sub_1000028F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100002958(void *a1)
{
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v1 = String.init(cString:)();
    v3 = v2;
    if (qword_100338FE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_1003445E0);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136315138;
      v8 = sub_100017494(v1, v3, &v10);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Received xpc stream event: %s", v6, 0xCu);
      sub_10000903C(v7);
    }

    else
    {
    }
  }
}

char *sub_100002B28()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100035D04(&qword_10033C1B8, qword_100272910);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100002B58()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100035D04(&qword_100343640, &qword_1002795B8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

void sub_100002B88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100002BF0(void *a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = qword_100339048;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_100345B60);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = a1;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "FOUND %@", v12, 0xCu);
      sub_1000030B0(v13);
    }

    v15 = *(*(v3 + 24) + 16);

    sub_100004C88(v9);
  }

  if (a2)
  {
    v16 = qword_100339048;
    v17 = a2;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003078(v18, qword_100345B60);
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = a2;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "LOST %@", v22, 0xCu);
      sub_1000030B0(v23);
    }

    v25 = *(*(v3 + 24) + 16);

    v26 = sub_100005688(v19);
  }

  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100003078(v27, qword_100345B60);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    v31 = *(*(v3 + 24) + 16) + qword_100346AF8;

    os_unfair_lock_lock(v31);
    v32 = *(*(v31 + 8) + 16);
    os_unfair_lock_unlock(v31);

    *(v30 + 4) = v32;

    _os_log_impl(&_mh_execute_header, v28, v29, "CBDevices changed, count=%ld", v30, 0xCu);
  }

  else
  {
  }

  v33 = *(v3 + 24);
  v34 = v33[2] + qword_100346AF8;

  os_unfair_lock_lock(v34);
  v35 = sub_10013BC04((v34 + 8));
  os_unfair_lock_unlock(v34);

  v36 = v33[3];

  sub_100005000(v35 & 1);

  v37 = v33[2] + qword_100346AF8;

  os_unfair_lock_lock(v37);
  v38 = sub_10013BCF8((v37 + 8));
  os_unfair_lock_unlock(v37);

  v39 = v33[4];

  sub_100005000(v38 & 1);
}

uint64_t sub_100003078(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000030B0(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100339940, &unk_100272C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003118(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100003160(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100002BF0(a1, 0);
  }

  return result;
}

uint64_t sub_1000031CC()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v9 = *(v0 + *(v1 + 96));
    return v9 & 1;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v36, v35);
  if (swift_dynamicCast())
  {
    sub_10000903C(v36);

    v9 = v34;
    return v9 & 1;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 stringForKey:v11];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = sub_1001650E4();
    if (v13 != 2)
    {
      v9 = v13;
      sub_10000903C(v36);

      return v9 & 1;
    }

    v14 = *((swift_isaMask & *v0) + 0x80);
    v15 = v0;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100017494(v5, v4, v35);
      v20 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v16, v17, v20, v18, 0xCu);
      sub_10000903C(v19);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [v6 dataForKey:v21];

  if (!v22)
  {
    v32 = *((swift_isaMask & *v0) + 0x80);
    v15 = v0;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100017494(v5, v4, v35);
      v20 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
      goto LABEL_18;
    }

LABEL_19:

    sub_10000903C(v36);
    v9 = *(v15 + *((swift_isaMask & *v15) + 0x60));
    return v9 & 1;
  }

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = *((swift_isaMask & *v0) + 0x80);
  v27 = v0;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v33 = v25;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_100017494(v5, v4, v35);
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v30, 0xCu);
    sub_10000903C(v31);

    sub_100010708(v23, v33);
  }

  else
  {

    sub_100010708(v23, v25);
  }

  sub_10000903C(v36);
  v9 = *(v27 + *((swift_isaMask & *v27) + 0x60));
  return v9 & 1;
}

BOOL sub_1000036FC()
{
  if (qword_100338F18 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v1 = *(qword_10038B0B8 + 272);
    v2 = sub_1000031CC();

    if (v2)
    {
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003078(v3, qword_10034A190);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "forceShouldStartRanging=true", v6, 2u);
      }

      return 1;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v9 = *(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy), v10 = Strong, , v10, !v9))
    {
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100003078(v18, qword_10034A190);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "### No BT Proxy, cannot determine if we should start ranging", v21, 2u);
      }

      return 0;
    }

    DeviceClass = GestaltGetDeviceClass();
    if (DeviceClass == 7 || DeviceClass == 4)
    {
      break;
    }

    v22 = *(*(v9 + 24) + 32);
    v23 = *(v22 + 24);

    CurrentValueSubject.value.getter();
    LOBYTE(v0) = v66;
    if (v66 == 2)
    {
      v24 = *(v22 + 16);
      CurrentValueSubject.value.getter();

      LOBYTE(v0) = v64;
    }

    else
    {
    }

    v35 = *(*(v9 + 24) + 16);
    __chkstk_darwin(v25);
    sub_100003118(0, &unk_10034A340, CBDevice_ptr);
    swift_getKeyPath();
    v36 = v35 + qword_100346AF8;

    os_unfair_lock_lock(v36);
    v64 = *(v36 + 8);

    swift_getAtKeyPath();

    v37 = v66;
    os_unfair_lock_unlock(v36);

    v38 = *(v37 + 16);
    if (v38)
    {
      v16 = sub_100009194(*(v37 + 16), 0);
      v39 = sub_1001295D4(&v64, v16 + 32, v38, v37);
      sub_100004F98();
      if (v39 != v38)
      {
        __break(1u);
        goto LABEL_80;
      }
    }

    else
    {

      v16 = _swiftEmptyArrayStorage;
    }

    v64 = _swiftEmptyArrayStorage;
    if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
    {
      goto LABEL_61;
    }

    v40 = *(v16 + 16);
    if (!v40)
    {
      goto LABEL_62;
    }

LABEL_44:
    v63 = v0;
    v41 = 0;
    v0 = v16 & 0xC000000000000001;
    while (1)
    {
      if (v0)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v41 >= *(v16 + 16))
        {
          goto LABEL_57;
        }

        v43 = *(v16 + 8 * v41 + 32);
      }

      v44 = v43;
      v45 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (([v43 nearbyActionFlags] & 8) != 0 || (objc_msgSend(v44, "nearbyActionFlags") & 0x10) != 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v42 = v64[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v41;
      if (v45 == v40)
      {
        v38 = v64;
        LOBYTE(v0) = v63;
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  v12 = *(*(v9 + 24) + 16);
  __chkstk_darwin(DeviceClass);
  sub_100003118(0, &unk_10034A340, CBDevice_ptr);
  swift_getKeyPath();
  v13 = v12 + qword_100346AF8;

  os_unfair_lock_lock(v13);
  v64 = *(v13 + 8);

  swift_getAtKeyPath();

  v14 = v66;
  os_unfair_lock_unlock(v13);

  v15 = *(v14 + 16);
  if (!v15)
  {

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

  v16 = sub_100009194(*(v14 + 16), 0);
  v17 = sub_1001295D4(&v64, v16 + 32, v15, v14);
  sub_100004F98();
  if (v17 == v15)
  {

LABEL_23:
    v26 = v16 < 0 || (v16 & 0x4000000000000000) != 0;
    if (v26)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *(v16 + 16);
    }

    v28 = v27 != 0;
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100003078(v29, qword_10034A190);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v27 != 0;
      v33 = swift_slowAlloc();
      *v33 = 67109632;
      *(v33 + 4) = v32;
      *(v33 + 8) = 2048;
      if (v26)
      {
        v34 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v34 = *(v16 + 16);
      }

      *(v33 + 10) = v34;

      *(v33 + 18) = 1024;
      *(v33 + 20) = 1;
      _os_log_impl(&_mh_execute_header, v30, v31, "Should start ranging = %{BOOL}d (Communal, candidates=%ld), allowGuests=%{BOOL}d", v33, 0x18u);

      return v28;
    }

    else
    {

      return v27 != 0;
    }
  }

  __break(1u);
LABEL_61:
  v40 = _CocoaArrayWrapper.endIndex.getter();
  if (v40)
  {
    goto LABEL_44;
  }

LABEL_62:
  v38 = _swiftEmptyArrayStorage;
LABEL_63:

  if ((v0 & 1) == 0)
  {
    if ((v38 & 0x8000000000000000) == 0 && (v38 & 0x4000000000000000) == 0)
    {
      v49 = *(v38 + 16);
LABEL_68:
      v46 = v49 != 0;
      v48 = 0x65736C6166;
      v47 = 0xE500000000000000;
      goto LABEL_69;
    }

LABEL_80:
    v49 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_68;
  }

  v46 = 1;
  v47 = 0xE400000000000000;
  v48 = 1702195828;
LABEL_69:
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v64 = 0xD00000000000001FLL;
  v65 = 0x80000001002A3C10;
  v50._countAndFlagsBits = v48;
  v50._object = v47;
  String.append(_:)(v50);

  v51._countAndFlagsBits = 0x6469646E6163202CLL;
  v51._object = 0xED00003D73657461;
  String.append(_:)(v51);
  if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v52 = *(v38 + 16);
  }

  v66 = v52;
  v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v53);

  v54._countAndFlagsBits = 41;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  v56 = v64;
  v55 = v65;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100003078(v57, qword_10034A190);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v64 = v61;
    *v60 = 67109378;
    *(v60 + 4) = v46;
    *(v60 + 8) = 2080;
    v62 = sub_100017494(v56, v55, &v64);

    *(v60 + 10) = v62;
    _os_log_impl(&_mh_execute_header, v58, v59, "Should start ranging = %{BOOL}d %s", v60, 0x12u);
    sub_10000903C(v61);
  }

  else
  {
  }

  return v46;
}

uint64_t type metadata accessor for RangingProxy()
{
  result = qword_10034A268;
  if (!qword_10034A268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000411C()
{
  if (sub_1000036FC())
  {
    sub_1001A6AEC();
    sub_100014750();
  }

  else
  {

    sub_100004394();
  }
}

void sub_100004264()
{
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100346758);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "BT devices changed (throttled)", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      sub_10000411C();
    }
  }
}

uint64_t sub_100004394()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v19 = &v31 - v18;
  v20 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState;
  if ((*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState) & 1) == 0 && *(*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState) + 24) == 2)
  {
    v33 = v17;
    v35 = v6;
    v36 = v2;
    v21 = v0;
    v37 = result;
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003078(v22, qword_10034A190);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v34 = v7;
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Scheduling stop of NearbyInteraction", v26, 2u);
    }

    *(v21 + v20) = 1;
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v31 = qword_10038B5B8;
    v32 = v1;
    static DispatchTime.now()();
    if (qword_100339140 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for DispatchTimeInterval();
    sub_100003078(v27, qword_10034A1B0);
    + infix(_:_:)();
    v33 = *(v33 + 8);
    (v33)(v15, v37);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1001AC0A4;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_10030F718;
    v29 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_1001AC18C(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
    v30 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v29);
    (*(v36 + 8))(v5, v30);
    (*(v34 + 8))(v10, v35);
    (v33)(v19, v37);
  }

  return result;
}

uint64_t sub_1000048D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004914(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100004B58(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_100004B58(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

uint64_t sub_100004AA8()
{
  v1 = [v0 identifier];
  if (v1 || (v1 = [v0 idsDeviceID]) != 0)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    [v0 hash];
    sub_1001292AC();
    return BinaryInteger.description.getter();
  }
}

unint64_t sub_100004B58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100004BD0(a1, a2, v6);
}

unint64_t sub_100004BD0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100004C88(void *a1)
{
  v2 = v1;
  v25[7] = a1;
  v4 = *(v1 + 16);

  swift_getAtKeyPath();

  v6 = v25[5];
  v5 = v25[6];
  swift_bridgeObjectRetain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0x5F28747265736E69, 0xEA0000000000293ALL, &v24);
    *(v9 + 12) = 2080;
    v25[0] = v6;
    v25[1] = v5;
    v10 = String.init<A>(describing:)();
    v12 = sub_100017494(v10, v11, &v24);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: key=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v2 + qword_100346AF8;
  os_unfair_lock_lock((v2 + qword_100346AF8));

  v14 = a1;
  v15 = *(v13 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25[0] = *(v13 + 8);
  *(v13 + 8) = 0x8000000000000000;
  sub_100004914(v14, v6, v5, isUniquelyReferenced_nonNull_native, sub_10008A950, sub_100087CC4);

  v17 = v25[0];
  *(v13 + 8) = v25[0];

  os_unfair_lock_unlock(v13);
  v18 = *(v2 + 32);

  PassthroughSubject.send(_:)();

  v19 = *(v2 + 40);
  v20 = *(v17 + 16);
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = sub_100009194(*(v17 + 16), 0);
  v22 = sub_1001295D4(v25, v21 + 4, v20, v17);

  sub_100004F98();
  if (v22 != v20)
  {
    __break(1u);
LABEL_7:

    v21 = _swiftEmptyArrayStorage;
  }

  v25[0] = v21;
  PassthroughSubject.send(_:)();
}

uint64_t sub_100004FA0@<X0>(void **a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for Identity();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = v5;
  result = a2(v5);
  *a3 = result;
  return result;
}

void sub_100005000(char a1)
{
  v2 = v1;
  v33 = a1;
  v4 = v1[2];
  CurrentValueSubject.send(_:)();
  v5 = (v2 + *(*v2 + 128));
  if (v5[1])
  {
    v6 = a1 & 1;
    v7 = *v5;
    LOBYTE(v31[0]) = a1 & 1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v9 = *v2;
    if (v8)
    {
      v10 = *(v2 + *(v9 + 112));
      if (v10)
      {
        v11 = v10;
        v12 = String._bridgeToObjectiveC()();

        [v11 removeObjectForKey:v12];

        return;
      }

LABEL_11:

      return;
    }

    v13 = *(v2 + *(v9 + 120));
    if (v13 == 2 || (v13 & 1) == 0)
    {
      v14 = *(v2 + *(v9 + 112));
      if (v14)
      {
        LOBYTE(v31[0]) = v6;
        v15 = v14;
        v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v17 = String._bridgeToObjectiveC()();

        [v15 setValue:v16 forKey:v17];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v30 = v6;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v29, v31);
      sub_10000EBC0(v31, v32);
      v22 = sub_10013FF24();
      v24 = v23;
      v25 = *(v2 + *(*v2 + 112));
      if (v25)
      {
        v26 = v25;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v28 = String._bridgeToObjectiveC()();

        [v26 setValue:isa forKey:v28];
        sub_100010708(v22, v24);
      }

      else
      {

        sub_100010708(v22, v24);
      }

      sub_10000903C(v31);
    }

    else
    {

      memset(v29, 0, sizeof(v29));
      sub_1000097E8(v29, &unk_10034B470, &qword_100289670);
      v18 = v2 + *(*v2 + 144);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "### Failed to cast as Codable", v21, 2u);
      }
    }
  }
}

uint64_t sub_100005454(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100002BF0(0, a1);
  }

  return result;
}

uint64_t sub_1000054C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v15[3] = a1;
  v4 = *(v2 + 16);

  swift_getAtKeyPath();

  v6 = v15[1];
  v5 = v15[2];

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0x5F2865766F6D6572, 0xEA0000000000293ALL, v15);
    *(v9 + 12) = 2080;
    v10 = String.init<A>(describing:)();
    v12 = sub_100017494(v10, v11, v15);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: key=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = a2(v6, v5);

  return v13;
}

uint64_t sub_1000056A0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + qword_100346AF8;
  os_unfair_lock_lock((v2 + qword_100346AF8));
  v6 = sub_10004B2C8((v5 + 8), a1, a2, sub_10008A950);
  v8 = v7;
  os_unfair_lock_unlock(v5);
  if (!v6)
  {

    return v6;
  }

  v19 = v6;
  v9 = v6;
  v10 = v2;
  sub_1000059F0(&v19, &unk_10034A340, CBDevice_ptr);
  v11 = *(v2 + 48);

  PassthroughSubject.send(_:)();

  v12 = *(v10 + 40);
  v13 = *(v8 + 16);
  if (!v13)
  {
    v17 = *(v10 + 40);

    v14 = _swiftEmptyArrayStorage;
LABEL_7:
    v18 = v14;
    PassthroughSubject.send(_:)();

    return v6;
  }

  v14 = sub_100009194(v13, 0);
  v15 = sub_1001295D4(&v18, v14 + 4, v13, v8);

  result = sub_100004F98();
  if (v15 == v13)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100005840(uint64_t result, uint64_t a2)
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

id *sub_1000059F0(id *result, unint64_t *a2, uint64_t *a3)
{
  if (*(v3 + 24) == 1)
  {
    v28[0] = *result;
    sub_100003118(0, a2, a3);
    v4 = v28[0];
    sub_100035D04(&qword_10033B5D8, &qword_100272068);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v32, v29);
      v5 = v30;
      v6 = v31;
      sub_10000EBC0(v29, v30);
      v7 = (*(v6 + 8))(v5, v6);
      v8 = v7;
      if ((v7 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for AnyCancellable();
        sub_1000515C0(&qword_10033B5E8, &type metadata accessor for AnyCancellable);
        result = Set.Iterator.init(_cocoa:)();
        v9 = *(&v32 + 1);
        v10 = v32;
        v12 = *(&v33 + 1);
        v11 = v33;
        v13 = v34;
      }

      else
      {
        v14 = -1 << *(v7 + 32);
        v9 = v7 + 56;
        v11 = ~v14;
        v15 = -v14;
        if (v15 < 64)
        {
          v16 = ~(-1 << v15);
        }

        else
        {
          v16 = -1;
        }

        v13 = v16 & *(v7 + 56);

        v12 = 0;
        v10 = v8;
      }

      if (v10 < 0)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v17 = v12;
        v18 = v13;
        v19 = v12;
        if (!v13)
        {
          break;
        }

LABEL_15:
        v20 = (v18 - 1) & v18;
        v21 = *(*(v10 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

        if (!v21)
        {
LABEL_21:
          sub_100004F98();

          v22 = v30;
          v23 = v31;
          sub_100051608(v29, v30);
          v24 = (*(v23 + 24))(v28, v22, v23);
          v26 = v25;
          v27 = *v25;

          *v26 = &_swiftEmptySetSingleton;
          v24(v28, 0);
          return sub_10000903C(v29);
        }

        while (1)
        {
          AnyCancellable.cancel()();

          v12 = v19;
          v13 = v20;
          if ((v10 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_17:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for AnyCancellable();
            swift_dynamicCast();
            v19 = v12;
            v20 = v13;
            if (v28[0])
            {
              continue;
            }
          }

          goto LABEL_21;
        }
      }

      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= ((v11 + 64) >> 6))
        {
          goto LABEL_21;
        }

        v18 = *(v9 + 8 * v19);
        ++v17;
        if (v18)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      return sub_1000097E8(&v32, &qword_10033B5E0, &qword_100272070);
    }
  }

  return result;
}

void sub_100005D14(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100005D88(void *a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1000109AC(a1, a2);
}

uint64_t sub_100005D90@<X0>(_BYTE *a1@<X8>)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 1512);
  v3 = sub_1000031CC();

  if ((v3 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v9 = sub_10000E120();

    if ((v9 & 6) != 0)
    {
      if (qword_100338E30 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100003078(v10, qword_10038AE78);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v87._countAndFlagsBits = v14;
        *v13 = 136315138;
        v15 = sub_1000092A0();
        v17 = sub_100017494(v15, v16, &v87._countAndFlagsBits);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "Expecting system token for %s", v13, 0xCu);
        sub_10000903C(v14);
      }

      type metadata accessor for DiscoveryTokenStateMachine.Input(0);
      return swift_storeEnumTagMultiPayload();
    }

    if ((sub_100010FF4() & 0xA) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v29 = sub_10000E120();

      if (v29)
      {
        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100003078(v30, qword_10038AE78);

        countAndFlagsBits = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(countAndFlagsBits, v32))
        {
          goto LABEL_74;
        }

        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v87._countAndFlagsBits = v34;
        *v33 = 136315138;
        v35 = sub_1000092A0();
        v37 = sub_100017494(v35, v36, &v87._countAndFlagsBits);

        *(v33 + 4) = v37;
        v38 = "%s doesn't support UWB, skipping token sync";
        goto LABEL_61;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10000A0B4();
    v19 = v18;

    if (v19)
    {
      v20 = String.lowercased()();

      sub_10001369C();
      v87 = v20;
      if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v87 = v20, (StringProtocol.contains<A>(_:)()) || (v87 = v20, (StringProtocol.contains<A>(_:)()) || (v87 = v20, (StringProtocol.contains<A>(_:)()) || (v87 = v20, (StringProtocol.contains<A>(_:)()))
      {
        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100003078(v21, qword_10038AE78);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v87._countAndFlagsBits = swift_slowAlloc();
          *v24 = 136315394;
          v25 = sub_1000092A0();
          v27 = sub_100017494(v25, v26, &v87._countAndFlagsBits);

          *(v24 + 4) = v27;
          *(v24 + 12) = 2080;
          v28 = sub_100017494(v20._countAndFlagsBits, v20._object, &v87._countAndFlagsBits);

          *(v24 + 14) = v28;
          _os_log_impl(&_mh_execute_header, v22, v23, "%s Should not initiate token sync for peer model %s", v24, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_75;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v39 = sub_10000E120();

    if (!v39)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      countAndFlagsBits = v87._countAndFlagsBits;
      if (!v87._countAndFlagsBits)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        sub_100003078(v83, qword_10038AE78);

        countAndFlagsBits = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(countAndFlagsBits, v32))
        {
          goto LABEL_74;
        }

        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v87._countAndFlagsBits = v34;
        *v33 = 136315138;
        v84 = sub_1000092A0();
        v86 = sub_100017494(v84, v85, &v87._countAndFlagsBits);

        *(v33 + 4) = v86;
        v38 = "%s No relationship, no BT device nor wifi device?";
        goto LABEL_61;
      }

      v49 = [v87._countAndFlagsBits mediaAccessControlSetting];
      if (v49 - 1 >= 2)
      {
        v73 = v49;
        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_100003078(v74, qword_10038AE78);

        v41 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v41, v75))
        {
          goto LABEL_73;
        }

        v76 = swift_slowAlloc();
        v87._countAndFlagsBits = swift_slowAlloc();
        *v76 = 136315394;
        v77 = sub_1000092A0();
        v79 = sub_100017494(v77, v78, &v87._countAndFlagsBits);

        *(v76 + 4) = v79;
        *(v76 + 12) = 2080;
        sub_10003E19C(v73);
        v80 = String.init(cString:)();
        v82 = sub_100017494(v80, v81, &v87._countAndFlagsBits);

        *(v76 + 14) = v82;
        _os_log_impl(&_mh_execute_header, v41, v75, "%s Should not initiate token sync: no relationship, ACL=%s", v76, 0x16u);
        swift_arrayDestroy();
        goto LABEL_72;
      }

      if (([v87._countAndFlagsBits statusFlags] & 0x40000000000) != 0)
      {
        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_100003078(v50, qword_10038AE78);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v41, v42))
        {
          goto LABEL_73;
        }

        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v87._countAndFlagsBits = v44;
        *v43 = 136315138;
        v51 = sub_1000092A0();
        v53 = sub_100017494(v51, v52, &v87._countAndFlagsBits);

        *(v43 + 4) = v53;
        v48 = "%s Should not initiate token sync: peer advertises 'no guest handoff'";
LABEL_49:
        _os_log_impl(&_mh_execute_header, v41, v42, v48, v43, 0xCu);
        sub_10000903C(v44);
LABEL_72:

LABEL_73:

        goto LABEL_74;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    countAndFlagsBits = v87._countAndFlagsBits;
    if (v87._countAndFlagsBits)
    {
      if (([v87._countAndFlagsBits nearbyActionFlags] & 0x10) == 0)
      {
        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100003078(v40, qword_10038AE78);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v41, v42))
        {
          goto LABEL_73;
        }

        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v87._countAndFlagsBits = v44;
        *v43 = 136315138;
        v45 = sub_1000092A0();
        v47 = sub_100017494(v45, v46, &v87._countAndFlagsBits);

        *(v43 + 4) = v47;
        v48 = "%s Should not initiate token sync: BTDevice not advertising DeviceClose";
        goto LABEL_49;
      }
    }

    else
    {
      if (qword_100338E30 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_100003078(v54, qword_10038AE78);

      countAndFlagsBits = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(countAndFlagsBits, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v87._countAndFlagsBits = v57;
        *v56 = 136315138;
        v58 = sub_1000092A0();
        v60 = sub_100017494(v58, v59, &v87._countAndFlagsBits);

        *(v56 + 4) = v60;
        _os_log_impl(&_mh_execute_header, countAndFlagsBits, v55, "%s No bt device?", v56, 0xCu);
        sub_10000903C(v57);
      }
    }

    if (qword_1003391D8 != -1)
    {
      swift_once();
    }

    if ((byte_10038B5A8 & 1) == 0)
    {
      if (qword_100338E30 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100003078(v65, qword_10038AE78);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v87._countAndFlagsBits = v69;
        *v68 = 136315138;
        v70 = sub_1000092A0();
        v72 = sub_100017494(v70, v71, &v87._countAndFlagsBits);

        *(v68 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v66, v67, "Should initiate token sync with %s", v68, 0xCu);
        sub_10000903C(v69);
      }

      *a1 = 1;
      goto LABEL_76;
    }

    if (qword_100338E30 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100003078(v61, qword_10038AE78);

    countAndFlagsBits = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(countAndFlagsBits, v32))
    {
      goto LABEL_74;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v87._countAndFlagsBits = v34;
    *v33 = 136315138;
    v62 = sub_1000092A0();
    v64 = sub_100017494(v62, v63, &v87._countAndFlagsBits);

    *(v33 + 4) = v64;
    v38 = "Should not initiate token sync with %s";
LABEL_61:
    _os_log_impl(&_mh_execute_header, countAndFlagsBits, v32, v38, v33, 0xCu);
    sub_10000903C(v34);

LABEL_74:

LABEL_75:
    *a1 = 0;
LABEL_76:
    type metadata accessor for DiscoveryTokenStateMachine.Input(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_100338E30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10038AE78);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Forcing token sync initiation via default", v7, 2u);
  }

  *a1 = 1;
  type metadata accessor for DiscoveryTokenStateMachine.Input(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000071B4()
{
  v0 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v17 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for DiscoveryTokenStateMachine(0);
    sub_100005D90(v6);
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_10033CBC8);
    sub_1000120BC(v6, v4);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      v13 = sub_100010BC8(v12);
      v15 = v14;
      sub_100010B48(v4);
      v16 = sub_100017494(v13, v15, v17);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Sending discovery event '%s'", v11, 0xCu);
      sub_10000903C(v12);
    }

    else
    {

      sub_100010B48(v4);
    }

    swift_beginAccess();
    sub_1001677A8(v6);
    swift_endAccess();

    return sub_100010B48(v6);
  }

  return result;
}

uint64_t sub_100007490()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000074B8(void *a1)
{
  if (([a1 statusFlags] & 4) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v2 = a1;
    static Published.subscript.setter();
  }

  result = [a1 statusFlags];
  if ((result & 2) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v4 = a1;
    return static Published.subscript.setter();
  }

  return result;
}

void sub_100007598(void *a1)
{
  v2 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v47 - v7;
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100349658);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v49[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A3790, v49);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: device=%@", v12, 0x16u);
    sub_1000097E8(v13, &qword_100339940, &unk_100272C50);

    sub_10000903C(v14);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v17 = __chkstk_darwin(Strong);
  *(&v47 - 2) = v9;
  v18 = *(*(v17 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16) + qword_100346AF8;
  v19 = v17;

  os_unfair_lock_lock(v18);
  v20 = *(v18 + 8);

  v22 = sub_1001A9BF0(v21, sub_100192EE8);

  os_unfair_lock_unlock(v18);

  if (v22)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1000074B8(v9);

    type metadata accessor for DiscoveryTokenStateMachine(0);
    v23 = v48;
    sub_100005D90(v48);
    sub_1000120BC(v23, v6);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136315394;
      v28 = sub_100010BC8(v27);
      v30 = v29;
      sub_100010B48(v6);
      v31 = sub_100017494(v28, v30, v49);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = sub_1000092A0();
      v34 = sub_100017494(v32, v33, v49);

      *(v26 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "Sending discovery event '%s' to: %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100010B48(v6);
    }

    swift_beginAccess();
    v45 = v48;
    sub_1001677A8(v48);
    swift_endAccess();

    sub_100010B48(v45);
  }

  else
  {
LABEL_9:
    v35 = v9;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49[0] = v39;
      *v38 = 136315138;
      v40 = [v35 identifier];
      if (v40)
      {
        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
      }

      else
      {
        v44 = 0xE100000000000000;
        v42 = 63;
      }

      v46 = sub_100017494(v42, v44, v49);

      *(v38 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "Attributes changed: No matching HandoffDevice found for %s", v38, 0xCu);
      sub_10000903C(v39);
    }
  }
}

uint64_t sub_100007B90(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v57)
  {
    v4 = v57;
    v5 = v1;
    sub_100008574();
    v7 = v6;
    v8 = sub_10000F0CC();
    v9 = sub_1000089FC(v8, v7);

    v10 = *(v9 + 16);

    if (v10)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v54[0])
  {
    v11 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v12 = &off_100302540;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v58 = 0;
    v59 = 0;
  }

  v57 = v54[0];
  v60 = v11;
  v61 = v12;
  sub_100009848(&v57, v54, &unk_10034B540, qword_100270E60);
  v13 = v55;
  if (v55)
  {
    v14 = v56;
    sub_10000EBC0(v54, v55);
    sub_100008574();
    v16 = sub_10015A19C(v15, v13, *(v14 + 8));

    sub_10000903C(v54);
    sub_1000097E8(&v57, &unk_10034B540, qword_100270E60);
    if (v16)
    {
      return 1;
    }
  }

  else
  {
    sub_1000097E8(v54, &unk_10034B540, qword_100270E60);
    sub_1000097E8(&v57, &unk_10034B540, qword_100270E60);
  }

  v17 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v17)
  {
    v18 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v19 = &off_100303480;
    v20 = v17;
  }

  else
  {
    v20 = 0;
    v18 = 0;
    v19 = 0;
    v58 = 0;
    v59 = 0;
  }

  v57 = v20;
  v60 = v18;
  v61 = v19;
  sub_100009848(&v57, &v52, &qword_10033A240, &unk_100272E70);
  if (v53)
  {
    sub_10000E754(&v52, v54);
    v21 = v55;
    v22 = v56;
    sub_10000EBC0(v54, v55);
    v23 = *(v22 + 8);
    v24 = *(v23 + 40);
    v25 = v17;
    v26 = v24(v2, v21, v23);
    sub_10000903C(v54);
    sub_1000097E8(&v57, &qword_10033A240, &unk_100272E70);
    if (v26)
    {
      return 1;
    }
  }

  else
  {
    v27 = v17;
    sub_1000097E8(&v52, &qword_10033A240, &unk_100272E70);
    sub_1000097E8(&v57, &qword_10033A240, &unk_100272E70);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v28 = v57;
  if (v57)
  {
    sub_100003118(0, &qword_100344730, NSObject_ptr);
    v29 = v28;
    if (static NSObject.== infix(_:_:)())
    {
LABEL_22:

      return 1;
    }

    sub_100008574();
    v31 = v30;
    sub_100008574();
    v33 = sub_1000089FC(v32, v31);

    v34 = *(v33 + 16);

    if (v34)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v35 = v57;
  if (v57)
  {
    sub_100003118(0, &qword_100344730, NSObject_ptr);
    v29 = v35;
    if (static NSObject.== infix(_:_:)())
    {
      goto LABEL_22;
    }

    sub_100008574();
    v37 = v36;
    sub_100008574();
    v39 = sub_1000089FC(v38, v37);

    v40 = *(v39 + 16);

    if (v40)
    {
      return 1;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v41 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
  }

  if (v41 >> 62)
  {
LABEL_43:
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v42 != i; ++i)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v44 = *(v41 + 8 * i + 32);
    }

    v45 = v44;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_1000104F8();
    v47 = v46;
    sub_100008574();
    v49 = sub_1000089FC(v48, v47);

    v50 = *(v49 + 16);

    if (v50)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_100008198(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100008BC0(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v41 = Hasher._finalize()();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_100008574()
{
  v1 = v0;
  v2 = *(*(sub_100035D04(&unk_100348F30, &unk_100272540) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v55[-v6];
  v8 = [v1 effectiveIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v56 = v9;
  v57 = v11;
  v12 = [v1 identifier];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v58 = v14;
  v59 = v16;
  v17 = [v1 homeKitIdentifier];
  if (v17)
  {
    v18 = v17;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  }

  else
  {
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  }

  sub_100008FCC(v5, v7);
  type metadata accessor for UUID();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    sub_1000097E8(v7, &unk_100348F30, &unk_100272540);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = UUID.uuidString.getter();
    v22 = v23;
    (*(v20 + 8))(v7, v19);
  }

  v60 = v21;
  v61 = v22;
  v24 = [v1 idsDeviceIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v62 = v26;
  v63 = v28;
  v29 = [v1 mediaRemoteIdentifier];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v64 = v31;
  v65 = v33;
  v34 = [v1 mediaRouteIdentifier];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v66 = v36;
  v67 = v38;
  v39 = [v1 publicIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = 0;
  v68 = v41;
  v69 = v43;
  v45 = &_swiftEmptyArrayStorage;
LABEL_23:
  if (v44 <= 7)
  {
    v46 = 7;
  }

  else
  {
    v46 = v44;
  }

  v47 = v46 + 1;
  v48 = 16 * v44 + 40;
  while (1)
  {
    if (v44 == 7)
    {
      sub_100035D04(&qword_10033A238, &qword_10027D3E0);
      swift_arrayDestroy();
      sub_100008F34(v45);

      return;
    }

    if (v47 == ++v44)
    {
      break;
    }

    v49 = v48 + 16;
    v50 = *&v55[v48];
    v48 += 16;
    if (v50)
    {
      v51 = *&v55[v49 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_100009088(0, *(v45 + 2) + 1, 1, v45);
      }

      v53 = *(v45 + 2);
      v52 = *(v45 + 3);
      if (v53 >= v52 >> 1)
      {
        v45 = sub_100009088((v52 > 1), v53 + 1, 1, v45);
      }

      *(v45 + 2) = v53 + 1;
      v54 = &v45[16 * v53];
      *(v54 + 4) = v51;
      *(v54 + 5) = v50;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_1000089FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_100008198(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1001CA11C(v11, v6, a2, a1);
  }

  return v9;
}

uint64_t sub_100008BC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100035D04(&qword_10033C2D0, &qword_100272AC8);
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

uint64_t sub_100008DE4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_10000DD38(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100008F34(uint64_t a1)
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

      sub_100008DE4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100008FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000903C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_100009088(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
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

void *sub_10000919C(uint64_t a1, uint64_t a2)
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

  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
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

uint64_t sub_100009224(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000092A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v33)
  {
    v0 = [v33 effectiveIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000B584(8);

    v33 = 2117714;
    v1 = static String._fromSubstring(_:)();
    v3 = v2;

    v4._countAndFlagsBits = v1;
    v4._object = v3;
    String.append(_:)(v4);

    v5 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_100009088((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = 2117714;
    *(v8 + 5) = 0xE300000000000000;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v33)
  {
    v9 = [v33 effectiveIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000B584(8);

    v10 = static String._fromSubstring(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100009088(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_100009088((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 2) = v15 + 1;
    v16 = &v5[16 * v15];
    *(v16 + 4) = 0x2054427072;
    *(v16 + 5) = 0xE500000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = sub_10000C868();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  UUID.uuidString.getter();
  sub_10000B584(8);

  v22 = static String._fromSubstring(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 8250;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v27 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 62;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  return 60;
}

uint64_t sub_1000097E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100035D04(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009848(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100035D04(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_1000098B0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for Identity()
{
  result = qword_10033F688;
  if (!qword_10033F688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v40 = a4;
  v37 = a2;
  v38 = a3;
  v5 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  v9 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  *(v4 + 16) = 0;
  *(v4 + 20) = 256;
  v19 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v41 = 0;
  sub_100035D04(&qword_10033D5D0, &unk_100273240);
  Published.init(initialValue:)();
  (*(v15 + 32))(v4 + v19, v18, v14);
  v20 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v41 = 0;
  sub_100035D04(&qword_10033F6A8, &qword_100276540);
  Published.init(initialValue:)();
  (*(v10 + 32))(v4 + v20, v13, v9);
  *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
  v21 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  *v22 = 0;
  v22[1] = 0;
  *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
  v23 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v41 = 0;
  sub_100035D04(&qword_10033D608, &unk_100273250);
  Published.init(initialValue:)();
  v24 = v36;
  v25 = *(v35 + 32);
  v25(v4 + v23, v8, v36);
  *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
  v26 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
  v41 = 0;
  Published.init(initialValue:)();
  v25(v4 + v26, v8, v24);
  v27 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
  *v30 = 0;
  v30[1] = 0;
  *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
  v31 = v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v31 = 0;
  *(v31 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v39;

  static Published.subscript.setter();
  v32 = v40;
  *(v4 + 20) = BYTE4(v40);
  *(v4 + 16) = v32;
  *(v4 + 21) = 0;
  return v4;
}

uint64_t sub_100009E64()
{
  v1 = v0;
  if (!*(v0 + 64))
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v24[0] = StaticString.description.getter();
    v24[1] = v5;
    v6._countAndFlagsBits = 46;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7._countAndFlagsBits = StaticString.description.getter();
    String.append(_:)(v7);

    String.utf8CString.getter();

    v8 = os_transaction_create();

    v9 = *(v1 + 64);
    *(v1 + 64) = v8;
    swift_unknownObjectRelease();
  }

  if (qword_100339030 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_100345910);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136315138;
    v15 = *(v1 + 16);
    v16 = *(v1 + 24);
    v17 = *(v1 + 32);
    v18 = StaticString.description.getter();
    v20 = sub_100017494(v18, v19, v24);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting %s", v13, 0xCu);
    sub_10000903C(v14);
  }

  v21 = *(v1 + 40);
  swift_beginAccess();
  v22 = swift_unknownObjectRetain();
  os_activity_scope_enter(v22, (v1 + 48));
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_10000A0B4()
{
  if (!*(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel + 8))
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
    if (v3)
    {
      v4 = [v3 modelIdentifier];
      if (v4)
      {
        v5 = v4;
LABEL_6:
        v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v1;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v16 || (v6 = [v16 model], v16, !v6))
    {
      v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
      if (v7)
      {
        if (v7 >> 62)
        {
LABEL_35:
          v8 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v8)
        {
          v9 = 0;
          while (1)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              v10 = *(v7 + 8 * v9 + 32);
            }

            v11 = v10;
            v12 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v13 = [v10 model];
            if (v13)
            {
              break;
            }

            ++v9;
            if (v12 == v8)
            {
              goto LABEL_22;
            }
          }

          v14 = v13;

          v6 = [v11 model];
          if (!v6)
          {
            goto LABEL_23;
          }

          goto LABEL_30;
        }

LABEL_22:
      }

LABEL_23:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (!v16 || (v6 = [v16 model], v16, !v6))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v1 = v16;
        if (!v16)
        {
          return v1;
        }

        v5 = [v16 model];

        if (!v5)
        {
          return 0;
        }

        goto LABEL_6;
      }
    }

LABEL_30:
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v1;
  }

  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel + 8);

  return v1;
}

void sub_10000A3D4(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(v4);
  }
}

uint64_t sub_10000B330(uint64_t a1)
{
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100346758);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_100017494(0xD00000000000001ELL, 0x80000001002A1680, v16);
    *(v6 + 4) = v7;
    *(v6 + 12) = 2080;
    v8 = sub_10000A474(v7);
    v10 = sub_100017494(v8, v9, v16);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: identity=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16) + qword_100346AF8;

  os_unfair_lock_lock(v11);
  v12 = *(v11 + 8);

  v14 = sub_1001A9BF0(v13, sub_10013BA78);

  os_unfair_lock_unlock(v11);

  if (v14)
  {
    sub_100137D78(v14, a1);
  }

  return result;
}

uint64_t sub_10000B584(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

int64_t sub_10000B620()
{
  v2 = v1;
  v3 = v0;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100003078(v4, qword_10034A190);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting", v8, 2u);
  }

  if (![objc_opt_self() isSupported])
  {
    sub_100123630();
    swift_allocError();
    v11 = 8;
    goto LABEL_9;
  }

  v67 = v5;
  v9 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState;
  if (*(*(v3 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState) + 24) == 2)
  {
    sub_100123630();
    swift_allocError();
    v11 = 9;
LABEL_9:
    *v10 = v11;
    return swift_willThrow();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = &qword_10034A000;
  v68 = v3;
  if (!v70[0])
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No session, creating one now", v16, 2u);
    }

    v17 = [objc_allocWithZone(NISession) init];
    if (qword_1003391E8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v69 = v70[0];
    if (!v70[0])
    {
      sub_100123630();
      swift_allocError();
      v11 = 5;
      goto LABEL_9;
    }

    v64 = v2;
    v66 = v13[65];
    *(v66 + v3) = 0;
    v17 = sub_1001A9D08();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v17;
      *v24 = v17;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v21, v22, "Running with %@", v23, 0xCu);
      sub_1000030B0(v24);

      v3 = v68;
    }

    [v69 runWithConfiguration:v17];
    v26 = *(v9 + v3);
    *(v26 + 24) = 2;

    sub_10000C49C();
    LOBYTE(v70[0]) = *(v26 + 24);
    CurrentValueSubject.send(_:)();

    sub_1000143FC();
    v9 = v62;
    v27 = *(v3 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens);
    __chkstk_darwin(v28);
    type metadata accessor for TrackedToken();
    type metadata accessor for UUID();
    sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID);
    swift_getKeyPath();
    v29 = v27 + qword_100346AF8;

    os_unfair_lock_lock(v29);
    v70[0] = *(v29 + 8);

    swift_getAtKeyPath();

    v30 = v70[6];
    os_unfair_lock_unlock(v29);

    v31 = v30[2];
    if (v31)
    {
      v3 = sub_100009194(v30[2], 0);
      v2 = sub_100009A04(v70, v3 + 32, v31, v30);
      sub_100004F98();
      if (v2 != v31)
      {
        goto LABEL_67;
      }

      if (v3 < 0)
      {
        goto LABEL_36;
      }
    }

    else
    {

      v3 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }
    }

    if ((v3 & 0x4000000000000000) == 0)
    {
      v2 = *(v3 + 16);
      if (!v2)
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }

LABEL_36:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
LABEL_37:

      v36 = _swiftEmptyArrayStorage;
      goto LABEL_38;
    }

LABEL_29:
    v70[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v2 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
LABEL_15:
    [v17 setDelegateQueue:qword_10038B5B8];
    [v17 setDelegate:v3];
    swift_getKeyPath();
    swift_getKeyPath();
    v70[0] = v17;
    v18 = v3;
    v19 = v17;
    static Published.subscript.setter();
    if (qword_100339160 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = v70[0];
    swift_unknownObjectWeakAssign();

    *&v18[v13[65]] = 0;
    v3 = v68;
  }

  v32 = 0;
  v13 = &OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v33 = *(v3 + 8 * v32 + 32);
    }

    ++v32;
    v34 = *(v33 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v35 = *(v70[0] + 2);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v2 != v32);

  v36 = v70[0];
LABEL_38:
  v9 = (v36 >> 62);
  if (v36 >> 62)
  {
    while (1)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        break;
      }

      if (v3 >= 0x1E)
      {
        v61 = 30;
      }

      else
      {
        v61 = v3;
      }

      if (v3 >= 0)
      {
        v37 = v61;
      }

      else
      {
        v37 = 30;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < v37)
      {
        goto LABEL_77;
      }

LABEL_43:
      if ((v36 & 0xC000000000000001) != 0 && v37)
      {
        sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);

        v38 = 0;
        do
        {
          v39 = v38 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v38);
          v38 = v39;
        }

        while (v37 != v39);
      }

      else
      {
      }

      v63 = v17;

      if (v9)
      {
        v43 = _CocoaArrayWrapper.subscript.getter();
        v42 = v44;
        v40 = v45;
        v47 = v46;

        v41 = v43;
        v37 = v47 >> 1;
      }

      else
      {
        v40 = 0;
        v41 = v36 & 0xFFFFFFFFFFFFFF8;
        v42 = (v36 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      v9 = v66;
      v36 = v67;
      v62[1] = v41;
      swift_unknownObjectRetain();
      v49 = v37 - v40;
      if (v37 == v40)
      {
LABEL_62:

        return swift_unknownObjectRelease_n();
      }

      if (v37 <= v40)
      {
        v50 = v40;
      }

      else
      {
        v50 = v37;
      }

      v17 = (v50 - v40);
      v51 = (v42 + 8 * v40);
      *&v48 = 138412290;
      v65 = v48;
      v2 = &selRef_requestIdentifier;
      while (v17)
      {
        v52 = *v51;
        v13 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v53))
        {
          v54 = swift_slowAlloc();
          v55 = v2;
          v56 = swift_slowAlloc();
          *v54 = v65;
          *(v54 + 4) = v52;
          *v56 = v52;
          v57 = v52;
          _os_log_impl(&_mh_execute_header, v13, v53, "  Adding %@", v54, 0xCu);
          sub_1000030B0(v56);
          v2 = v55;

          v9 = v66;
          v36 = v67;
        }

        [v69 *(v2 + 1456)];
        v58 = *(v9 + v68);
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_64;
        }

        *(v9 + v68) = v60;

        --v17;
        ++v51;
        if (!--v49)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 0x1E)
  {
    v37 = 30;
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= v37)
  {
    goto LABEL_43;
  }

LABEL_77:
  __break(1u);
  return result;
}

__n128 sub_10000C074(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void sub_10000C088(uint64_t a1)
{
  v2 = v1;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034A190);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    type metadata accessor for NISessionSuspensionReason(0);
    v9 = String.init<A>(describing:)();
    v11 = sub_100017494(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Session SUSPENDED with reason: %s", v7, 0xCu);
    sub_10000903C(v8);
  }

  v12 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState);
  *(v12 + 24) = 3;

  sub_10000C49C();
  LOBYTE(v18) = *(v12 + 24);
  CurrentValueSubject.send(_:)();

  sub_1000143FC();
  if (a1 == 2)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Geographical region prohibits UWB", v15, 2u);
    }

    if (qword_100339130 != -1)
    {
      swift_once();
    }

    v16 = off_10034A1A8;
    *(off_10034A1A8 + 24) = 0;

    sub_10005E50C();
    LOBYTE(v18) = v16[24];
    CurrentValueSubject.send(_:)();
  }

  if (*(v2 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier))
  {
    v17 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier);

    sub_10001462C();
  }

  sub_10000CF60();
}

void sub_10000C450(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10000C49C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 24);
    v2 = sub_100035D04(&qword_10034A3B0, &qword_100287660);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v5 = v0;
    v1 = CurrentValueSubject.init(_:)();
    v6 = *(v0 + 16);
    *(v5 + 16) = v1;
  }

  return v1;
}

void sub_10000C538(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v7)
    {
      v4 = *(*&v3[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24);
      v5 = v4 != 2;
      if (v4 == 2)
      {
        v6 = [v7 motionState];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
      v5 = 1;
    }
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
}

void sub_10000C648(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1001A2A18(v2);
}

uint64_t sub_10000C684@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_10000C698@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    result = sub_1001A1F10();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_10000C6D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t initializeBufferWithCopyOfBuffer for SystemEvent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10000C748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(sub_100035D04(&qword_10033B310, &qword_100271EF8) + 48);
  *a2 = v3;
  *(a2 + 8) = v4;
  return Date.init()();
}

uint64_t sub_10000C7A0(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = sub_100035D04(&qword_10033B310, &qword_100271EF8);
  return v4(v5, v6, a1 + *(v7 + 48));
}

uint64_t type metadata accessor for SessionEvent()
{
  result = qword_100347788;
  if (!qword_100347788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C868()
{
  v1 = sub_100035D04(&qword_10033FA60, &qword_100276838);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v38 - v3;
  v5 = sub_100035D04(&qword_10033FA68, &unk_100276840);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName + 8);
  if (v14)
  {
    v15 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
    v16 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v16 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName + 8);

      return v15;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v39;
  if (v39)
  {
    v19 = [v39 name];
  }

  else
  {
    v27 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
    if (v27 && (v28 = [v27 name]) != 0)
    {
      v19 = v28;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v29 = v39;
      if (!v39 || (v19 = [v39 name], v29, !v19))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v30 = v39;
        if (!v39 || (v19 = [v39 name], v30, !v19))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v31 = v39;
          if (!v39)
          {
            goto LABEL_12;
          }

          v19 = [v39 name];

          if (!v19)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    return v15;
  }

LABEL_12:
  sub_10000A0B4();
  if (v23)
  {
    v24 = String._bridgeToObjectiveC()();

    v25 = v24;
    if ([v25 hasPrefix:{@"AudioAccessory1, "}] & 1) != 0 || (objc_msgSend(v25, "hasPrefix:", @"AudioAccessory5,") & 1) != 0 || (objc_msgSend(v25, "hasPrefix:", @"AudioAccessory6,") & 1) != 0 || (objc_msgSend(v25, "hasPrefix:", @"HomePod"))
    {

      v26 = [objc_opt_self() localizedStringForKey:14];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v15;
    }
  }

  sub_10000A0B4();
  if (!v32)
  {
    return 0;
  }

  v33 = type metadata accessor for UTHardwareColor();
  (*(*(v33 - 8) + 56))(v4, 1, 1, v33);
  UTType.init(_deviceModelCode:enclosureColor:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000097E8(v8, &qword_10033FA68, &unk_100276840);
    return 0;
  }

  (*(v10 + 32))(v13, v8, v9);
  v15 = UTType.localizedDescription.getter();
  v35 = v34;
  (*(v10 + 8))(v13, v9);
  if (!v35)
  {
    return 0;
  }

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    return 0;
  }

  return v15;
}

void sub_10000CF60()
{
  if (qword_100339128 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v0 = type metadata accessor for Logger();
    sub_100003078(v0, qword_10034A190);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Removing all ranging info", v3, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v28 = Strong;
    v5 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16);
    __chkstk_darwin();
    type metadata accessor for HandoffDevice();
    type metadata accessor for UUID();
    sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID);
    swift_getKeyPath();
    v6 = v5 + qword_100346AF8;

    os_unfair_lock_lock(v6);
    v32[0] = *(v6 + 8);

    swift_getAtKeyPath();

    v7 = v32[6];
    os_unfair_lock_unlock(v6);

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = sub_100009194(*(v7 + 16), 0);
      v10 = sub_100009A04(v32, v9 + 32, v8, v7);
      sub_100004F98();
      if (v10 != v8)
      {
        __break(1u);
        return;
      }

      if (v9 < 0)
      {
LABEL_29:
        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (!v15)
        {
LABEL_30:

          return;
        }

        goto LABEL_15;
      }
    }

    else
    {

      v9 = &_swiftEmptyArrayStorage;
      if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }
    }

    if ((v9 & 0x4000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v15 = *(v9 + 16);
    if (!v15)
    {
      goto LABEL_30;
    }

LABEL_15:
    v16 = 0;
    v17 = v9 & 0xC000000000000001;
    v29 = v0;
    v30 = v15;
    while (v17)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_26;
      }

LABEL_20:
      v31 = objc_autoreleasePoolPush();
      v21 = *(v19 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);

      sub_10000D4C4(5);

      if (qword_100338E88 != -1)
      {
        swift_once();
      }

      sub_100003078(v0, qword_10033CBC8);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = v17;
        v26 = v9;
        v27 = swift_slowAlloc();
        v32[0] = v27;
        *v24 = 136315138;
        *(v24 + 4) = sub_100017494(0xD000000000000016, 0x80000001002993B0, v32);
        _os_log_impl(&_mh_execute_header, v22, v23, "%s", v24, 0xCu);
        sub_10000903C(v27);
        v9 = v26;
        v17 = v25;

        v0 = v29;
        v15 = v30;
      }

      v18 = *(v19 + 24);

      LOBYTE(v32[0]) = 1;
      sub_10000D8F4(0x100000000uLL);

      objc_autoreleasePoolPop(v31);

      ++v16;
      if (v20 == v15)
      {
        goto LABEL_30;
      }
    }

    if (v16 >= *(v9 + 16))
    {
      goto LABEL_27;
    }

    v19 = *(v9 + 8 * v16 + 32);

    v20 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_20;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "### No NearbyAgent?", v13, 2u);
  }

  sub_100123630();
  swift_allocError();
  *v14 = 2;
  swift_willThrow();
}

void sub_10000D4C4(char a1)
{
  v2 = v1;
  v32 = a1;
  v4 = v1[2];
  CurrentValueSubject.send(_:)();
  v5 = (v2 + *(*v2 + 128));
  if (v5[1])
  {
    v6 = *v5;
    LOBYTE(v30[0]) = a1;

    sub_100035D04(&qword_100339988, &qword_100272B60);
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v8 = *v2;
    if (v7)
    {
      v9 = *(v2 + *(v8 + 112));
      if (v9)
      {
        v10 = v9;
        v11 = String._bridgeToObjectiveC()();

        [v10 removeObjectForKey:v11];

        return;
      }

LABEL_11:

      return;
    }

    v12 = *(v2 + *(v8 + 120));
    if (v12 == 2 || (v12 & 1) == 0)
    {
      v13 = *(v2 + *(v8 + 112));
      if (v13)
      {
        LOBYTE(v30[0]) = a1;
        v14 = v13;
        v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v16 = String._bridgeToObjectiveC()();

        [v14 setValue:v15 forKey:v16];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v29 = a1;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v28, v30);
      sub_10000EBC0(v30, v31);
      v21 = sub_10013FF24();
      v23 = v22;
      v24 = *(v2 + *(*v2 + 112));
      if (v24)
      {
        v25 = v24;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v27 = String._bridgeToObjectiveC()();

        [v25 setValue:isa forKey:v27];
        sub_100010708(v21, v23);
      }

      else
      {

        sub_100010708(v21, v23);
      }

      sub_10000903C(v30);
    }

    else
    {

      memset(v28, 0, sizeof(v28));
      sub_1000097E8(v28, &unk_10034B470, &qword_100289670);
      v17 = v2 + *(*v2 + 144);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "### Failed to cast as Codable", v20, 2u);
      }
    }
  }
}

void sub_10000D8F4(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v34 = a1;
  v4 = HIDWORD(a1) & 1;
  v35 = BYTE4(a1) & 1;
  v5 = v1[2];
  CurrentValueSubject.send(_:)();
  v6 = (v2 + *(*v2 + 128));
  if (v6[1])
  {
    v7 = *v6;
    LODWORD(v32) = v3;
    BYTE4(v32) = v4;

    sub_100035D04(&unk_10034B5D0, &unk_100289850);
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v9 = *v2;
    if (v8)
    {
      v10 = *(v2 + *(v9 + 112));
      if (v10)
      {
        v11 = v10;
        v12 = String._bridgeToObjectiveC()();

        [v11 removeObjectForKey:v12];

        return;
      }

LABEL_11:

      return;
    }

    v13 = *(v2 + *(v9 + 120));
    if (v13 == 2 || (v13 & 1) == 0)
    {
      v14 = *(v2 + *(v9 + 112));
      if (v14)
      {
        LODWORD(v32) = v3;
        BYTE4(v32) = v4;
        v15 = v14;
        v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v17 = String._bridgeToObjectiveC()();

        [v15 setValue:v16 forKey:v17];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v30 = v3;
    v31 = v4;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v29, &v32);
      sub_10000EBC0(&v32, v33);
      v22 = sub_10013FF24();
      v24 = v23;
      v25 = *(v2 + *(*v2 + 112));
      if (v25)
      {
        v26 = v25;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v28 = String._bridgeToObjectiveC()();

        [v26 setValue:isa forKey:v28];
        sub_100010708(v22, v24);
      }

      else
      {

        sub_100010708(v22, v24);
      }

      sub_10000903C(&v32);
    }

    else
    {

      memset(v29, 0, sizeof(v29));
      sub_1000097E8(v29, &unk_10034B470, &qword_100289670);
      v18 = v2 + *(*v2 + 144);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "### Failed to cast as Codable", v21, 2u);
      }
    }
  }
}

Swift::Int sub_10000DD38(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100064ED0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100066500();
      goto LABEL_16;
    }

    sub_100066BF4(v8 + 1);
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

uint64_t type metadata accessor for HandoffDevice()
{
  result = qword_10033CC98;
  if (!qword_10033CC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DF0C()
{
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
LABEL_3:

    return v1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v12)
  {
    v3 = [v12 mediaRouteIdentifier];

    if (v3)
    {
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v1;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (v5)
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 mediaRouteID];
      if (v10)
      {
        v11 = v10;

        v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v1;
      }

      ++v6;
      if (v9 == v5)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_26:

  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID + 8))
  {
    goto LABEL_3;
  }

  return v1;
}

uint64_t sub_10000E120()
{
  result = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (result)
  {
    result = [result relationship];
    v2 = 4 * (result & 1);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_7;
    }

    return v2;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
    return v2;
  }

LABEL_7:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 type];

      v9 = v2 | 2;
      if (v8 != 9)
      {
        v9 = v2;
      }

      if (v8 - 3 >= 2)
      {
        v2 = v9;
      }

      else
      {
        v2 |= 1uLL;
      }
    }

    while (v4 != v5);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E244(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000E2B0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v33)
  {
    v3 = sub_100003118(0, &unk_10034A340, CBDevice_ptr);
    v4 = &off_10030F7E0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v38 = 0;
    v39 = 0;
  }

  v37 = v33;
  v40 = v3;
  v41 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v33)
  {
    v5 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v6 = &off_100302560;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v43 = 0;
    v44 = 0;
  }

  v42 = v33;
  v45 = v5;
  v46 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v7)
  {
    v8 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v9 = &off_1003034A8;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v48 = 0;
    v49 = 0;
  }

  v47 = v7;
  v50 = v8;
  v51 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v7;
  static Published.subscript.getter();

  if (v33)
  {
    v11 = sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    v12 = &off_100316108;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v53 = 0;
    v54 = 0;
  }

  v52 = v33;
  v55 = v11;
  v56 = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v33)
  {
    v13 = sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    v14 = &off_100316108;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v58 = 0;
    v59 = 0;
  }

  v57 = v33;
  v60 = v13;
  v61 = v14;
  v15 = 32;
  v16 = _swiftEmptyArrayStorage;
  do
  {
    sub_100009848(&v36[v15], &v33, &qword_10033FA28, &unk_1002767F0);
    v30[0] = v33;
    v30[1] = v34;
    v31 = v35;
    if (*(&v34 + 1))
    {
      sub_10000E754(v30, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_10000E8B4(0, v16[2] + 1, 1, v16);
      }

      v18 = v16[2];
      v17 = v16[3];
      if (v18 >= v17 >> 1)
      {
        v16 = sub_10000E8B4((v17 > 1), v18 + 1, 1, v16);
      }

      v16[2] = v18 + 1;
      sub_10000E754(v32, &v16[5 * v18 + 4]);
    }

    else
    {
      sub_1000097E8(v30, &qword_10033FA28, &unk_1002767F0);
    }

    v15 += 40;
  }

  while (v15 != 232);
  sub_100035D04(&qword_10033FA28, &unk_1002767F0);
  swift_arrayDestroy();
  *&v32[0] = v16;
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v19 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = sub_10000E9E0(v19);

  sub_10000E8D8(v20);
  v21 = *&v32[0];
  result = *&v32[0] + 32;
  v23 = -*(*&v32[0] + 16);
  v24 = -1;
  while (1)
  {
    v25 = v23 + v24;
    if (v23 + v24 == -1)
    {
LABEL_32:

      return v25 != -1;
    }

    if (++v24 >= *(v21 + 16))
    {
      break;
    }

    v26 = result + 40;
    sub_10007E790(result, &v33);
    v27 = *(&v34 + 1);
    v28 = v35;
    sub_10000EBC0(&v33, *(&v34 + 1));
    v29 = (*(v28 + 64))(a1, v27, v28);
    sub_10000903C(&v33);
    result = v26;
    if (v29)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E754(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10000E76C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100035D04(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10000E8D8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_10000E8B4(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100035D04(&qword_10033F040, qword_100275EC0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000E9E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_10000F604(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_10000F604((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
        v16 = &off_1003082C8;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_10000E754(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_10000F604((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
        v16 = &off_1003082C8;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_10000E754(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10000EBC0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = (*(a3 + 16))(v30, a2, a3);

  if (v6)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v30)
  {
    v7 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v8 = &off_100302540;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v31 = 0;
    v32 = 0;
  }

  v33 = v7;
  v34 = v8;
  v9 = (*(a3 + 24))(&v30, a2, a3);
  sub_1000097E8(&v30, &unk_10034B540, qword_100270E60);
  if (v9)
  {
    return 1;
  }

  v10 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v10)
  {
    v11 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v12 = &off_100303480;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v31 = 0;
    v32 = 0;
  }

  v30 = v10;
  v33 = v11;
  v34 = v12;
  v13 = *(a3 + 32);
  v14 = v10;
  v15 = v13(&v30, a2, a3);
  sub_1000097E8(&v30, &qword_10033A240, &unk_100272E70);
  if (v15)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v30;
  v17 = *(a3 + 40);
  v18 = v17(v30, a2, a3);

  if (v18)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = v30;
  v20 = v17(v30, a2, a3);

  if (v20)
  {
    return 1;
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v23 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v23 = &_swiftEmptyArrayStorage;
  }

  if (v23 >> 62)
  {
LABEL_31:
    v28 = v23 & 0xFFFFFFFFFFFFFF8;
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = v23 & 0xFFFFFFFFFFFFFF8;
    v29 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  do
  {
    v21 = v29 != v24;
    if (v29 == v24)
    {
      break;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v28 + 16))
      {
        goto LABEL_30;
      }

      v25 = *(v23 + 8 * v24 + 32);
    }

    v26 = v25;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v27 = (*(a3 + 48))(v25, a2, a3);

    ++v24;
  }

  while ((v27 & 1) == 0);

  return v21;
}

uint64_t sub_10000F024(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void *sub_10000F044(void *result)
{
  if (result)
  {
    v2 = *v1;
    v3 = result;
    v4 = v2;
    sub_100008574();
    v6 = v5;
    v7 = sub_10000F0CC();
    v8 = sub_1000089FC(v7, v6);

    v9 = *(v8 + 16);

    return (v9 != 0);
  }

  return result;
}

uint64_t sub_10000F0CC()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v21[0] = v4;
  v5 = [v0 idsDeviceID];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = 0;
  v21[1] = v7;
  v21[2] = v9;
  v11 = &_swiftEmptyArrayStorage;
LABEL_8:
  v12 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100009088(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_100009088((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_8;
    }
  }

  sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  swift_arrayDestroy();
  v19 = sub_100008F34(v11);

  return v19;
}

uint64_t sub_10000F274(uint64_t a1)
{
  v2 = *v1;
  sub_100009848(a1, v7, &unk_10034B540, qword_100270E60);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    sub_10000EBC0(v7, v8);
    sub_100008574();
    LOBYTE(v3) = sub_10015A19C(v5, v3, *(v4 + 8));

    sub_10000903C(v7);
  }

  else
  {
    sub_1000097E8(v7, &unk_10034B540, qword_100270E60);
  }

  return v3 & 1;
}

uint64_t sub_10000F32C(uint64_t a1)
{
  v2 = *v1;
  sub_100009848(a1, &v7, &qword_10033A240, &unk_100272E70);
  if (v8)
  {
    sub_100038394(&v7, v9);
    v3 = v10;
    v4 = v11;
    sub_10000EBC0(v9, v10);
    v5 = (*(*(v4 + 8) + 40))(v2, v3);
    sub_10000903C(v9);
  }

  else
  {
    sub_1000097E8(&v7, &qword_10033A240, &unk_100272E70);
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_10000F414(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    sub_100103CBC();
    v2 = v1;
    if (static NSObject.== infix(_:_:)())
    {

      return 1;
    }

    else
    {
      sub_100008574();
      v4 = v3;
      sub_100008574();
      v6 = sub_1000089FC(v5, v4);

      v7 = *(v6 + 16);

      return v7 != 0;
    }
  }

  return result;
}

void *sub_10000F4BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100035D04(&qword_10033F038, &unk_100278400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(&qword_10033F040, qword_100275EC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F604(void *a1, int64_t a2, char a3)
{
  result = sub_10000F4BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

BOOL sub_10000F624(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1)
  {
    v22[3] = a2;
    v22[4] = a3;
    v6 = sub_10000F798(v22);
    (*(*(a2 - 8) + 16))(v6, v3, a2);
    sub_100009848(v22, &v17, &qword_10033A240, &unk_100272E70);
    if (v18)
    {
      sub_10000E754(&v17, v19);
      v7 = v20;
      v8 = v21;
      sub_10000EBC0(v19, v20);
      v9 = *(v8 + 8);
      v10 = *(v9 + 8);
      v11 = v4;
      v12 = v10(v7, v9);
      v13 = sub_10000F0CC();
      v14 = sub_1000089FC(v13, v12);

      v15 = *(v14 + 16);

      v4 = v15 != 0;
      sub_10000903C(v19);
    }

    else
    {
      sub_1000097E8(&v17, &qword_10033A240, &unk_100272E70);
      v4 = 0;
    }

    sub_1000097E8(v22, &qword_10033A240, &unk_100272E70);
  }

  return v4;
}

uint64_t *sub_10000F798(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000F7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28[-v6];
  v29 = (*(a2 + 16))(a1, a2);
  v30 = v8;
  v31 = (*(a2 + 24))(a1, a2);
  v32 = v9;
  (*(a2 + 32))(a1, a2);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    result = sub_1000097E8(v7, &unk_100348F30, &unk_100272540);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = UUID.uuidString.getter();
    v14 = v15;
    result = (*(v11 + 8))(v7, v10);
  }

  v16 = 0;
  v33 = v13;
  v34 = v14;
  v17 = &_swiftEmptyArrayStorage;
LABEL_5:
  if (v16 <= 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = v16;
  }

  v19 = v18 + 1;
  v20 = 16 * v16 + 40;
  while (1)
  {
    if (v16 == 3)
    {
      sub_100035D04(&qword_10033A238, &qword_10027D3E0);
      swift_arrayDestroy();
      v27 = sub_100008F34(v17);

      return v27;
    }

    if (v19 == ++v16)
    {
      break;
    }

    v21 = v20 + 16;
    v22 = *&v28[v20];
    v20 += 16;
    if (v22)
    {
      v23 = *&v28[v21 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100009088(0, *(v17 + 2) + 1, 1, v17);
        v17 = result;
      }

      v25 = *(v17 + 2);
      v24 = *(v17 + 3);
      if (v25 >= v24 >> 1)
      {
        result = sub_100009088((v24 > 1), v25 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 2) = v25 + 1;
      v26 = &v17[16 * v25];
      *(v26 + 4) = v23;
      *(v26 + 5) = v22;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

id sub_10000FAB8()
{
  v1 = *v0;
  if ([*v0 isLocallyPaired])
  {
    return 0;
  }

  result = [v1 uniqueID];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  return result;
}

uint64_t sub_10000FB3C()
{
  v1 = [*v0 uniqueIDOverride];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10000FBA4@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 nsuuid];
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

  return v7(a1, v5, 1, v6);
}

BOOL sub_10000FC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009848(a1, &v13, &unk_10034B540, qword_100270E60);
  if (v14)
  {
    sub_10000E754(&v13, v15);
    v6 = v16;
    v5 = v17;
    sub_10000EBC0(v15, v16);
    v7 = (*(*(v5 + 8) + 8))(v6);
    v8 = (*(*(a3 + 8) + 8))(a2);
    v9 = sub_1000089FC(v8, v7);

    v10 = *(v9 + 16);

    v11 = v10 != 0;
    sub_10000903C(v15);
  }

  else
  {
    sub_1000097E8(&v13, &unk_10034B540, qword_100270E60);
    return 0;
  }

  return v11;
}

uint64_t sub_10000FD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v48 - v19;
  sub_100009848(a1, &v54, &qword_10033A240, &unk_100272E70);
  if (v55)
  {
    v50 = v18;
    v51 = v20;
    v52 = v10;
    v53 = v14;
    sub_10000E754(&v54, v56);
    v21 = (*(a3 + 16))(a2, a3);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      v26 = v57;
      v25 = v58;
      sub_10000EBC0(v56, v57);
      v27 = (*(v25 + 16))(v26, v25);
      if (v28)
      {
        if (v23 == v27 && v24 == v28)
        {
          goto LABEL_14;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v29)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v30 = (*(a3 + 24))(a2, a3);
    if (v31)
    {
      v32 = v30;
      v33 = v31;
      v34 = v57;
      v35 = v58;
      sub_10000EBC0(v56, v57);
      v36 = (*(v35 + 24))(v34, v35);
      if (v37)
      {
        if (v32 == v36 && v33 == v37)
        {
LABEL_14:

LABEL_15:
          sub_10000903C(v56);
          return 1;
        }

        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v39)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    (*(a3 + 32))(a2, a3);
    v40 = v53;
    v41 = *(v53 + 48);
    if (v41(v12, 1, v13) != 1)
    {
      v42 = v51;
      v49 = *(v40 + 32);
      v49(v51, v12, v13);
      v43 = v57;
      v44 = v58;
      sub_10000EBC0(v56, v57);
      v12 = v52;
      (*(v44 + 32))(v43, v44);
      if (v41(v12, 1, v13) != 1)
      {
        v45 = v50;
        v49(v50, v12, v13);
        v46 = static UUID.== infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v45, v13);
        v47(v42, v13);
        if (v46)
        {
          goto LABEL_15;
        }

        goto LABEL_22;
      }

      (*(v40 + 8))(v42, v13);
    }

    sub_1000097E8(v12, &unk_100348F30, &unk_100272540);
LABEL_22:
    sub_10000903C(v56);
    return 0;
  }

  sub_1000097E8(&v54, &qword_10033A240, &unk_100272E70);
  return 0;
}

BOOL sub_100010220(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_100008574();
    v6 = v5;
    v7 = (*(*(a3 + 8) + 8))(a2);
    v8 = sub_1000089FC(v7, v6);

    v9 = *(v8 + 16);

    return v9 != 0;
  }

  return result;
}

void *sub_1000102B4(void *result)
{
  if (result)
  {
    v2 = *v1;
    v3 = result;
    LOBYTE(v2) = sub_1000102F8(v2);

    return (v2 & 1);
  }

  return result;
}

uint64_t sub_1000102F8(void *a1)
{
  v2 = v1;
  result = [v2 identifier];
  if (result)
  {

    v5 = [v2 nearbyAuthTag];
    if (v5)
    {
      v6 = v5;
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = [v2 btAddressData];
      if (v10)
      {
        v11 = v10;
        v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        isa = Data._bridgeToObjectiveC()().super.isa;
        v16 = Data._bridgeToObjectiveC()().super.isa;
        v25 = 0;
        v17 = [a1 verifyAuthTag:isa data:v16 type:2 error:&v25];

        if (v17)
        {
          v18 = v25;
          sub_100010708(v12, v14);
          sub_100010708(v7, v9);
          return 1;
        }

        v19 = v25;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100010708(v7, v9);
        sub_100010708(v12, v14);
      }

      else
      {
        sub_100010708(v7, v9);
      }
    }

    sub_1000104F8();
    v21 = v20;
    v22 = sub_10000F0CC();
    v23 = sub_1000089FC(v22, v21);

    v24 = *(v23 + 16);

    return v24 != 0;
  }

  return result;
}

void sub_1000104F8()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v28 = v3;
  v29 = v5;
  v6 = [v0 idsDeviceID];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v30 = v8;
  v31 = v10;
  v11 = [v0 mediaRemoteID];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = 0;
  v32 = v13;
  v33 = v15;
  v17 = &_swiftEmptyArrayStorage;
LABEL_11:
  if (v16 <= 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = v16;
  }

  v19 = v18 + 1;
  v20 = 16 * v16 + 40;
  while (1)
  {
    if (v16 == 3)
    {
      sub_100035D04(&qword_10033A238, &qword_10027D3E0);
      swift_arrayDestroy();
      sub_100008F34(v17);

      return;
    }

    if (v19 == ++v16)
    {
      break;
    }

    v21 = v20 + 16;
    v22 = *&v27[v20];
    v20 += 16;
    if (v22)
    {
      v23 = *&v27[v21 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_100009088(0, *(v17 + 2) + 1, 1, v17);
      }

      v25 = *(v17 + 2);
      v24 = *(v17 + 3);
      if (v25 >= v24 >> 1)
      {
        v17 = sub_100009088((v24 > 1), v25 + 1, 1, v17);
      }

      *(v17 + 2) = v25 + 1;
      v26 = &v17[16 * v25];
      *(v26 + 4) = v23;
      *(v26 + 5) = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100010708(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

BOOL sub_10001075C(uint64_t a1)
{
  sub_100009848(a1, &v9, &unk_10034B540, qword_100270E60);
  if (v10)
  {
    sub_10000E754(&v9, v11);
    v2 = v12;
    v1 = v13;
    sub_10000EBC0(v11, v12);
    v3 = (*(*(v1 + 8) + 8))(v2);
    sub_1000104F8();
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

uint64_t sub_100010874(uint64_t a1)
{
  v2 = *v1;
  sub_100009848(a1, &v7, &qword_10033A240, &unk_100272E70);
  if (v8)
  {
    sub_10000E754(&v7, v9);
    v3 = v10;
    v4 = v11;
    sub_10000EBC0(v9, v10);
    v5 = (*(*(v4 + 8) + 48))(v2, v3);
    sub_10000903C(v9);
  }

  else
  {
    sub_1000097E8(&v7, &qword_10033A240, &unk_100272E70);
    v5 = 0;
  }

  return v5 & 1;
}

void *sub_100010934(void *result)
{
  if (result)
  {
    v2 = *v1;
    v3 = result;
    sub_1000104F8();
    v5 = v4;
    sub_100008574();
    v7 = sub_1000089FC(v6, v5);

    v8 = *(v7 + 16);

    return (v8 != 0);
  }

  return result;
}

void sub_1000109AC(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100349658);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "CHANGED %@", v10, 0xCu);
      sub_1000097E8(v11, &qword_100339940, &unk_100272C50);
    }

    if ((sub_10019278C(v7) & 1) == 0 && (a2 & 2) != 0)
    {
      sub_100007598(v7);
    }
  }
}

uint64_t sub_100010B48(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010FF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v14[OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities];

  if (v0 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v1 = sub_10000A0B4();
    v3 = v2;

    if (v3)
    {
      v4 = sub_100011F00(v1, v3);

      if (v4 - 1 < 2)
      {
        return 3;
      }

      if (!v4)
      {
        return 1;
      }

      if (v4 != 7)
      {
        return 0;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14)
  {
    v5 = [v14 supportsR1];

    if (v5)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = *&v14[OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID];
  v8 = v7;

  if (v7)
  {

    if (qword_100338E80 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_10038AEE8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Adding BLE AND UWB because nearbyID exists", v12, 2u);
    }

    if (v6 >= 2)
    {
      v6 |= 1uLL;
    }

    else
    {
      return 3;
    }
  }

  return v6;
}

char *sub_100011348(uint64_t *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  type metadata accessor for Dictionary();
  return type metadata accessor for Mutex();
}

const char *sub_100011398()
{
  v1 = *v0;
  v2 = "Handoff_Animation";
  v3 = "NowPlaying_AutoLaunch_Guest_Tinker_Support";
  if (v1 != 6)
  {
    v3 = "NowPlaying_AutoLaunch_Inner_Region";
  }

  v4 = "Lockscreen_Media_Controls";
  if (v1 != 4)
  {
    v4 = "NowPlaying_AutoLaunch";
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = "Handoff_v3";
  if (v1 != 2)
  {
    v5 = "Handoff_Trigger_Feedback";
  }

  if (*v0)
  {
    v2 = "Handoff_v2";
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100011458@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v5;
  return result;
}

uint64_t sub_1000114E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100035D04(&qword_10033AAF8, &qword_100271808);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v39 - v12;
  v41 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v14 = *(v41 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v41);
  v17 = v39 - v16;
  v49 = v2;
  result = sub_1000118E8(a1, v13);
  if (!v3)
  {
    v19 = v40;
    v20 = v6;
    v39[1] = 0;
    if ((*(v14 + 48))(v13, 1, v41) == 1)
    {
      sub_1000097E8(v13, &qword_10033AAF8, &qword_100271808);
      return (*(v14 + 56))(v19, 1, 1, v41);
    }

    else
    {
      result = sub_10016B564(v13, v17);
      v22 = *&v17[*(v41 + 76)];
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = 0;
        v47 = (v20 + 8);
        v48 = (v20 + 16);
        *&v21 = 136315138;
        v42 = v21;
        v45 = v17;
        v46 = v9;
        v43 = v23;
        v44 = v22;
        while (v24 < *(v22 + 16))
        {
          v26 = *v48;
          v50 = *v49;
          v26(v9, v50 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log, v5);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v51 = v30;
            *v29 = v42;
            v31 = String.init<A>(describing:)();
            v33 = sub_100017494(v31, v32, &v51);
            v34 = v5;
            v35 = v46;

            *(v29 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v27, v28, "Output: %s", v29, 0xCu);
            sub_10000903C(v30);
            v22 = v44;

            v23 = v43;

            v9 = v35;
            v36 = v35;
            v5 = v34;
            v37 = v34;
            v17 = v45;
            (*v47)(v36, v37);
          }

          else
          {

            (*v47)(v9, v5);
          }

          ++v24;
          v25 = *(v50 + 40);

          PassthroughSubject.send(_:)();

          if (v23 == v24)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_11:
        v38 = v40;
        sub_10016B564(v17, v40);
        return (*(v14 + 56))(v38, 0, 1, v41);
      }
    }
  }

  return result;
}

uint64_t sub_1000118E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_100035D04(&qword_10033AAF8, &qword_100271808);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = *v2;
  result = sub_100011B6C(a1, v9);
  if (!v3)
  {
    v27 = 0;
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1000097E8(v9, &qword_10033AAF8, &qword_100271808);
      v17 = 1;
    }

    else
    {
      sub_10016B564(v9, v14);
      v28 = v14[8];
      v18 = sub_100013158(&qword_10033AA98, type metadata accessor for DiscoveryTokenStateMachine);
      v26 = a2;
      v19 = v18;
      v20 = *(v18 + 88);
      v21 = type metadata accessor for DiscoveryTokenStateMachine(0);
      v22 = v20(&v28, v21, v19);
      v23 = *v14;
      __chkstk_darwin(v22);
      *(&v26 - 2) = a1;
      v24 = v27;
      sub_10007EEB8(sub_10008CAA4, (&v26 - 4), v25);
      v27 = v24;
      a2 = v26;
      sub_10016B564(v14, v26);
      v17 = 0;
    }

    return (*(v11 + 56))(a2, v17, 1, v10);
  }

  return result;
}

uint64_t sub_100011B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v32 = v2;
  v10 = *(v2 + 32);
  v31 = &v32;

  v11 = sub_10001232C(sub_1000130B4, v30, v10);
  v29 = a1;
  v12 = sub_10001232C(sub_1000130D4, v28, v11);
  v27 = a1;
  v13 = sub_10001232C(sub_1000122C8, v26, v12);
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15 <= 1)
  {
    if (v15)
    {
      sub_100009848(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v9, &qword_10033AAD0, &qword_100271708);

      sub_10016B564(v9, a2);
      v24 = 0;
    }

    else
    {

      v24 = 1;
    }

    return (*(v6 + 56))(a2, v24, 1, v5);
  }

  else
  {
    v25[1] = sub_100035D04(&qword_100348660, &qword_100281CB0);
    sub_10000E244(&qword_100348668, &qword_100348660, &qword_100281CB0);
    swift_allocError();
    v17 = v16;
    v18 = sub_100035D04(&qword_100348670, &qword_100281CB8);
    v19 = *(v18 + 48);
    v25[0] = *(v18 + 64);
    v20 = sub_100013158(&qword_10033AA98, type metadata accessor for DiscoveryTokenStateMachine);
    v21 = *(v20 + 80);
    v22 = type metadata accessor for DiscoveryTokenStateMachine(0);
    v21(v22, v20);
    sub_1000120BC(a1, v17 + v19);
    *(v17 + v25[0]) = v14;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

BOOL sub_100011E5C(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000120BC(a1, v5);
  v6 = swift_getEnumCaseMultiPayload() == 1;
  sub_100010B48(v5);
  return v6;
}

uint64_t sub_100011F00(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = *(&off_1003001B8 + v4 + 32);
    if (*(&off_1003001B8 + v4 + 32) > 2u)
    {
      break;
    }

    v6 = 0xD000000000000011;
    if (!*(&off_1003001B8 + v4 + 32))
    {
      v7 = 0x80000001002A2C10;
      if (a1 != 0xD000000000000011)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (v5 == 1)
    {
      v7 = 0x80000001002A2BF0;
      if (a1 != 0xD000000000000011)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = 0x80000001002A2BD0;
LABEL_17:
    if (v6 == a1)
    {
      goto LABEL_18;
    }

LABEL_19:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return v5;
    }

    if (++v4 == 7)
    {
      return 7;
    }
  }

  if (*(&off_1003001B8 + v4 + 32) > 4u)
  {
    if (v5 == 5)
    {
      v7 = 0xEA0000000000322CLL;
      if (a1 != 0x3531656E6F685069)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0xEA0000000000332CLL;
      if (a1 != 0x3531656E6F685069)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  v6 = 0x3231656E6F685069;
  v7 = 0xEA0000000000332CLL;
  if (v5 == 3)
  {
    goto LABEL_17;
  }

  v7 = 0xEA0000000000352CLL;
  if (a1 != 0x3231656E6F685069)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v7 != a2)
  {
    goto LABEL_19;
  }

  return v5;
}

uint64_t sub_1000120BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012120(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033AAC0, &qword_1002716F8);
  v5 = a2 + *(v4 + 40);
  v6 = v5 + *(sub_100035D04(&qword_10033AAD0, &qword_100271708) + 84);
  v7 = *(v6 + 8);
  if (((*v6)(a1) & 1) == 0)
  {
    return 0;
  }

  v8 = a2 + *(v4 + 44);
  v9 = *(v8 + 8);
  return (*v8)(a1) & 1;
}

uint64_t sub_1000121C0(uint64_t a1)
{
  v3 = *(sub_100035D04(&qword_10033AAC0, &qword_1002716F8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100012120(a1, v4);
}

uint64_t sub_100012240(uint64_t a1)
{
  v3 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v4 = v1 + *(v3 + 84) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));
  v5 = *(v4 + 8);
  return (*v4)(a1) & 1;
}

uint64_t sub_1000122C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = a1 + *(sub_100035D04(&qword_10033AAD0, &qword_100271708) + 84);
  v4 = *(v3 + 8);
  return (*v3)(v2) & 1;
}

uint64_t sub_10001232C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_100009848(a3 + v16 + v17 * v14, v13, &qword_10033AAD0, &qword_100271708);
      v18 = a1(v13);
      if (v3)
      {
        sub_1000097E8(v13, &qword_10033AAD0, &qword_100271708);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_10003693C(v13, v25, &qword_10033AAD0, &qword_100271708);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100012FA0(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_100012FA0(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_10003693C(v25, v15 + v16 + v21 * v17, &qword_10033AAD0, &qword_100271708);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_1000097E8(v13, &qword_10033AAD0, &qword_100271708);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_1000125B0(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v55 = a2;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10033AAA0, &qword_1002716E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v50 - v8;
  v10 = sub_100035D04(&qword_10033AAA8, &qword_1002716E8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  v14 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v50 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = (&v50 - v23);
  __chkstk_darwin(v22);
  v26 = &v50 - v25;
  v27 = sub_100035D04(&qword_10033AAB0, &qword_1002716F0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = &v50 - v30;
  v32 = *(v29 + 56);
  sub_1000120BC(v54, &v50 - v30);
  sub_1000120BC(v55, &v31[v32]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_32;
        }
      }

      else if (EnumCaseMultiPayload == 7)
      {
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_32;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (swift_getEnumCaseMultiPayload() == 5)
    {
LABEL_29:
      sub_100010B48(v31);
      v37 = 1;
      return v37 & 1;
    }

LABEL_32:
    sub_1000097E8(v31, &qword_10033AAB0, &qword_1002716F0);
LABEL_33:
    v37 = 0;
    return v37 & 1;
  }

  v55 = v9;
  v34 = v53;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1000120BC(v31, v21);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_32;
      }

      v35 = *v21;
LABEL_14:
      v36 = v35 ^ v31[v32];
      sub_100010B48(v31);
      v37 = v36 ^ 1;
      return v37 & 1;
    }

    sub_1000120BC(v31, v18);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1000097E8(v18, &qword_10033AAA0, &qword_1002716E0);
      goto LABEL_32;
    }

    v40 = *(v10 + 48);
    sub_10003693C(v18, v13, &qword_10033AAA0, &qword_1002716E0);
    sub_10003693C(&v31[v32], &v13[v40], &qword_10033AAA0, &qword_1002716E0);
    v41 = v34;
    v42 = *(v34 + 48);
    v43 = v52;
    if (v42(v13, 1, v52) == 1)
    {
      if (v42(&v13[v40], 1, v43) == 1)
      {
        sub_1000097E8(v13, &qword_10033AAA0, &qword_1002716E0);
        goto LABEL_29;
      }
    }

    else
    {
      v45 = v55;
      sub_100009848(v13, v55, &qword_10033AAA0, &qword_1002716E0);
      if (v42(&v13[v40], 1, v43) != 1)
      {
        v46 = &v13[v40];
        v47 = v51;
        (*(v41 + 32))(v51, v46, v43);
        sub_10003E8E0(&qword_10033AAB8, &type metadata accessor for DispatchTimeInterval);
        v48 = dispatch thunk of static Equatable.== infix(_:_:)();
        v49 = *(v41 + 8);
        v49(v47, v43);
        v49(v45, v43);
        sub_1000097E8(v13, &qword_10033AAA0, &qword_1002716E0);
        if (v48)
        {
          goto LABEL_29;
        }

LABEL_38:
        sub_100010B48(v31);
        goto LABEL_33;
      }

      (*(v41 + 8))(v45, v43);
    }

    sub_1000097E8(v13, &qword_10033AAA8, &qword_1002716E8);
    goto LABEL_38;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1000120BC(v31, v26);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_32;
    }

    v35 = *v26;
    goto LABEL_14;
  }

  sub_1000120BC(v31, v24);
  v38 = *v24;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_32;
  }

  v39 = *&v31[v32];
  sub_100003118(0, &qword_100344730, NSObject_ptr);
  v37 = static NSObject.== infix(_:_:)();

  sub_100010B48(v31);
  return v37 & 1;
}

uint64_t sub_100012C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033AAC8, &qword_100271700);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v16 - v6;
  v8 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  sub_100009848(a1 + *(v13 + 72), v7, &qword_10033AAC8, &qword_100271700);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000097E8(v7, &qword_10033AAC8, &qword_100271700);
    v14 = 1;
  }

  else
  {
    sub_10007714C(v7, v12);
    v14 = sub_1000125B0(v12, a2);
    sub_100010B48(v12);
  }

  return v14 & 1;
}

size_t sub_100012DB8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100035D04(a5, a6);
  v16 = *(sub_100035D04(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100035D04(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_100012FA0(size_t a1, int64_t a2, char a3)
{
  result = sub_100012DB8(a1, a2, a3, *v3, &qword_10033AAE8, &qword_100271720, &qword_10033AAD0, &qword_100271708);
  *v3 = result;
  return result;
}

BOOL sub_100012FE0(uint64_t a1, void *a2)
{
  *&v8[9] = *a2;
  v3 = *(sub_100035D04(&qword_10033AAD0, &qword_100271708) + 80);
  v4 = sub_100013158(&qword_10033AA98, type metadata accessor for DiscoveryTokenStateMachine);
  v5 = *(v4 + 80);
  v6 = type metadata accessor for DiscoveryTokenStateMachine(0);
  v5(v8, v6, v4);
  return *(a1 + v3) == v8[0];
}

unint64_t sub_100013104()
{
  result = qword_10033C1E8;
  if (!qword_10033C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033C1E8);
  }

  return result;
}

uint64_t sub_100013158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000131A0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = 7;
  if (!v10)
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v18 = ((v15 + ((v14 + 8 + ((v17 + *(*(v7 - 8) + 64) + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = a2 - v13;
    v20 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = v19 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v18);
      if (v24)
      {
LABEL_27:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v13 + (v26 | v25) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) == 0)
  {
    v27 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v29 = (a1 + v14 + 8) & ~v14;
  if (v6 != v13)
  {
    if (v10 >= 2)
    {
      v31 = (*(v9 + 48))((v29 + v15 + v16) & ~v16, v10, v7);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(v5 + 48);

  return v30(v29);
}

void *sub_1000133E8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = v10 - 1;
  if (!v10)
  {
    v15 = 0;
  }

  if (v8 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v6 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (!v10)
  {
    ++v14;
  }

  v18 = ((v12 + ((v11 + 8 + ((v14 + ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 < a3)
  {
    v19 = a3 - v17;
    if (((v12 + ((v11 + 8 + ((v14 + ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v5 = v21;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v17)
  {
    if (((v12 + ((v11 + 8 + ((v14 + ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v17;
    }

    else
    {
      v22 = 1;
    }

    if (((v12 + ((v11 + 8 + ((v14 + ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v17 + a2;
      v24 = result;
      bzero(result, ((v12 + ((v11 + 8 + ((v14 + ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v24;
      *v24 = v23;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v18) = v22;
      }

      else
      {
        *(result + v18) = v22;
      }
    }

    else if (v5)
    {
      *(result + v18) = v22;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v18) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *(result + v18) = 0;
LABEL_40:
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!v5)
  {
    goto LABEL_40;
  }

  *(result + v18) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_41:
  if ((v16 & 0x80000000) != 0)
  {
    result = ((result + v11 + 8) & ~v11);
    if (v8 == v17)
    {
      v26 = *(v6 + 56);

      return v26(result);
    }

    else if (v10 >= 2)
    {
      v27 = *(v9 + 56);
      v28 = (result + v12 + v13) & ~v13;
      v29 = a2 + 1;

      return v27(v28, v29, v10, v7);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = a2 - 1;
    }

    *result = v25;
  }

  return result;
}

unint64_t sub_10001369C()
{
  result = qword_10033AAF0;
  if (!qword_10033AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033AAF0);
  }

  return result;
}

uint64_t sub_1000136F0()
{
  v1 = *v0;
  v2 = 0x64657269736564;
  v3 = 0x64656C696166;
  v4 = 1953391987;
  if (v1 != 4)
  {
    v4 = 0x746E6573657270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701602409;
  if (v1 != 1)
  {
    v5 = 0x6465727265666564;
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

uint64_t sub_100013798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1000137F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t type metadata accessor for HandoffEvent()
{
  result = qword_10033B670;
  if (!qword_10033B670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100013B7C(char a1, unsigned __int8 a2, uint64_t a3)
{
  v7 = sub_100035D04(&qword_100351B88, &qword_100297008);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v31 - v13;
  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v22 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
      v23 = *(v22 + 28);
      v24 = type metadata accessor for Date();
      (*(*(v24 - 8) + 16))(&v14[v23], a3, v24);
      *v14 = a1 & 1;
      (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
      sub_100009848(v14, v11, &qword_100351B88, &qword_100297008);
      v18 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_orientationIsValid;
    }

    else if (a2 == 5)
    {
      v19 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
      v20 = *(v19 + 28);
      v21 = type metadata accessor for Date();
      (*(*(v21 - 8) + 16))(&v14[v20], a3, v21);
      *v14 = a1 & 1;
      (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
      sub_100009848(v14, v11, &qword_100351B88, &qword_100297008);
      v18 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_ranging;
    }

    else
    {
      v25 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
      v26 = *(v25 + 28);
      v27 = type metadata accessor for Date();
      (*(*(v27 - 8) + 16))(&v14[v26], a3, v27);
      *v14 = a1 & 1;
      (*(*(v25 - 8) + 56))(v14, 0, 1, v25);
      sub_100009848(v14, v11, &qword_100351B88, &qword_100297008);
      v18 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_screenOn;
    }
  }

  else
  {
    if (a2 - 2 < 2)
    {
      return result;
    }

    if (a2)
    {
      v28 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
      v29 = *(v28 + 28);
      v30 = type metadata accessor for Date();
      (*(*(v30 - 8) + 16))(&v14[v29], a3, v30);
      *v14 = a1 & 1;
      (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
      sub_100009848(v14, v11, &qword_100351B88, &qword_100297008);
      v18 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_deviceMotionStationary;
    }

    else
    {
      v15 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
      v16 = *(v15 + 28);
      v17 = type metadata accessor for Date();
      (*(*(v17 - 8) + 16))(&v14[v16], a3, v17);
      *v14 = a1 & 1;
      (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
      sub_100009848(v14, v11, &qword_100351B88, &qword_100297008);
      v18 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_charging;
    }
  }

  swift_beginAccess();

  sub_10001432C(v11, v3 + v18);
  swift_endAccess();
  sub_1000097E8(v14, &qword_100351B88, &qword_100297008);
}

void sub_10001403C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for Date() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_10001432C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100351B88, &qword_100297008);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001439C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000143FC()
{
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10034A190);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (*(*&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) > 1u)
    {
      if (*(*&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) == 2)
      {
        v6 = 0xE700000000000000;
        v7 = 0x676E696E6E7572;
      }

      else
      {
        v6 = 0xE900000000000064;
        v7 = 0x65646E6570737573;
      }
    }

    else if (*(*&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24))
    {
      v6 = 0xE600000000000000;
      v7 = 0x646573756170;
    }

    else
    {
      v6 = 0xE800000000000000;
      v7 = 0x6576697463616E69;
    }

    v8 = sub_100017494(v7, v6, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Session state: %s", v4, 0xCu);
    sub_10000903C(v5);
  }
}

uint64_t sub_1000145F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001462C()
{
  v1 = v0;
  if (qword_100339120 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidate", v5, 2u);
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) = 0;
  sub_1001933FC();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) = 0;
}

void sub_100014750()
{
  if (!sub_1000036FC())
  {
    return;
  }

  if (*(*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState) + 24) != 2)
  {
    sub_10000B620();
    return;
  }

  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10034A190);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updating ranging sessions configuration", v4, 2u);
  }

  if (![objc_opt_self() isSupported])
  {
    sub_100123630();
    swift_allocError();
    v10 = 8;
LABEL_16:
    *v9 = v10;
    swift_willThrow();
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v17)
  {
    sub_100123630();
    swift_allocError();
    v10 = 5;
    goto LABEL_16;
  }

  v5 = sub_1001A9D08();
  v6 = [v17 configuration];
  if (!v6)
  {
LABEL_12:

    return;
  }

  v7 = v6;
  v8 = [v6 enabledGestures];
  if (v8 == [v5 enabledGestures])
  {

    goto LABEL_12;
  }

  v11 = v5;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Running with %@", v14, 0xCu);
    sub_1000030B0(v15);
  }

  [v17 runWithConfiguration:v11];
}

uint64_t sub_100014A74(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100014BBC(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_100014BD4(v10, a2, a3);
  return specialized ContiguousArray._endMutation()();
}

void *sub_100014B20(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_10000919C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

Swift::Int sub_100014BD4(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003118(0, &qword_10033E980, NIRegionPredicate_ptr);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_100014CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 regionSizeCategory];
      v13 = [v11 regionSizeCategory];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100014DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 radius];
      v15 = v14;
      [v13 radius];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100014F18(uint64_t a1)
{
  v73 = a1;
  v69 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v1 = *(v69 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v69);
  v4 = v67 - v3;
  v70 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v5 = *(v70 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v70);
  v8 = v67 - v7;
  v9 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v67 - v12;
  v14 = type metadata accessor for Identity();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 20) = 256;
  v18 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v74 = 0;
  sub_100035D04(&qword_10033D5D0, &unk_100273240);
  Published.init(initialValue:)();
  (*(v10 + 32))(v17 + v18, v13, v9);
  v19 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v74 = 0;
  sub_100035D04(&qword_10033F6A8, &qword_100276540);
  Published.init(initialValue:)();
  (*(v5 + 32))(v17 + v19, v8, v70);
  v20 = OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice;
  *(v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
  v21 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  *v22 = 0;
  v22[1] = 0;
  v70 = OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID;
  *(v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
  v23 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v74 = 0;
  sub_100035D04(&qword_10033D608, &unk_100273250);
  Published.init(initialValue:)();
  v24 = *(v1 + 32);
  v25 = v69;
  v24(v17 + v23, v4, v69);
  v26 = OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities;
  *(v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
  v27 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
  v74 = 0;
  Published.init(initialValue:)();
  v28 = v25;
  v29 = v20;
  v24(v17 + v27, v4, v28);
  v30 = v72;
  v31 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
  *v34 = 0;
  v34[1] = 0;
  *(v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
  v35 = v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v35 = 0;
  *(v35 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v74 = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v74 = 0;

  static Published.subscript.setter();
  v36 = *(v17 + v20);
  *(v17 + v20) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v74 = 0;

  static Published.subscript.setter();
  v37 = *(v17 + v26);
  v68 = v26;
  *(v17 + v26) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v74 = 0;

  static Published.subscript.setter();
  v38 = *(v17 + v70);
  *(v17 + v70) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v39 = v74;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v40 = v74;
  v41 = v71;
  v42 = sub_100016014(v39, v74, &unk_10034A340, CBDevice_ptr);
  if (v41)
  {
    if (v39)
    {
      if (v40)
      {
        v43 = v39;
        if ((sub_1000161E0(v43, v40) & 1) == 0)
        {
          swift_willThrow();

          return v17;
        }
      }

      else
      {

        v40 = v39;
        v39 = 0;
      }
    }

    else
    {

      v40 = 0;
    }
  }

  else
  {
    v44 = v42;

    v40 = v39;
    v39 = v44;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v74 = v39;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v45 = v74;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v46 = v74;
  v47 = sub_100016014(v45, v74, &qword_1003452B0, HMAccessory_ptr);

  swift_getKeyPath();
  swift_getKeyPath();
  v74 = v47;

  static Published.subscript.setter();
  v48 = *(v30 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  v49 = *(v73 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  v50 = v49;
  v51 = v48;
  v52 = sub_100016014(v48, v49, &qword_10033B5F0, IDSDevice_ptr);

  v53 = *(v17 + v29);
  *(v17 + v29) = v52;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v54 = v74;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v55 = v74;
  v56 = sub_100016014(v54, v74, &qword_10033D618, RPCompanionLinkDevice_ptr);

  swift_getKeyPath();
  swift_getKeyPath();
  v74 = v56;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v57 = v74;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v58 = v74;
  v59 = sub_100016014(v57, v74, &qword_10033D618, RPCompanionLinkDevice_ptr);

  swift_getKeyPath();
  swift_getKeyPath();
  v74 = v59;

  static Published.subscript.setter();
  v60 = *(v30 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  v61 = *(v73 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);

  v63 = sub_100016594(v62, v61);
  v67[2] = 0;
  v64 = v63;

  v65 = *(v17 + v68);
  *(v17 + v68) = v64;

  return v17;
}

uint64_t sub_100015D5C(uint64_t a1)
{
  result = sub_100014F18(a1);
  if (!v2)
  {
    v4 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    v5 = *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
    v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
    *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = v5;
    v7 = v5;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    v8 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
    *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v10;

    static Published.subscript.setter();
  }

  return result;
}

void *sub_100016014(void *a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  if (a1)
  {
    v5 = a1;
    if (a2)
    {
      sub_100003118(0, a3, a4);
      v6 = v5;
      v7 = a2;
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
        _StringGuts.grow(_:)(29);
        v10._object = 0x800000010029B140;
        v10._countAndFlagsBits = 0xD000000000000017;
        String.append(_:)(v10);
        v5 = &protocol witness table for DefaultStringInterpolation;
        _print_unlocked<A, B>(_:_:)();
        v11._countAndFlagsBits = 8236;
        v11._object = 0xE200000000000000;
        String.append(_:)(v11);
        _print_unlocked<A, B>(_:_:)();
        sub_10001618C();
        swift_allocError();
        *v12 = 0;
        *(v12 + 8) = 0xE000000000000000;
        *(v12 + 16) = 10;
        swift_willThrow();
      }
    }

    else
    {
      v9 = a1;
    }
  }

  else
  {
    v8 = a2;
    return a2;
  }

  return v5;
}

unint64_t sub_10001618C()
{
  result = qword_100345300[0];
  if (!qword_100345300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100345300);
  }

  return result;
}

uint64_t sub_1000161E0(uint64_t a1, void *a2)
{
  v25[3] = sub_100003118(0, &unk_10034A340, CBDevice_ptr);
  v25[4] = &off_10030F7E0;
  v25[0] = a2;
  sub_10007E790(v25, v24);
  v4 = a2;
  sub_100035D04(&qword_10033F040, qword_100275EC0);
  if (!swift_dynamicCast())
  {
    sub_10007E790(v25, v23);
    sub_100035D04(&qword_10033FA40, &unk_100276808);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v20, v24);
      sub_10007E790(v24, v23);
      v11 = sub_1001AC2F8(v23);
      sub_1000097E8(v23, &unk_10034B540, qword_100270E60);
      v12 = v24;
LABEL_6:
      sub_10000903C(v12);
      goto LABEL_7;
    }

    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_1000097E8(&v20, &unk_10034B540, qword_100270E60);
    sub_10007E790(v25, v24);
    sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    if (swift_dynamicCast())
    {
      v5 = v23[0];
      sub_100008574();
      goto LABEL_3;
    }

    sub_10007E790(v25, v24);
    sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
    if (swift_dynamicCast())
    {
      v14 = v23[0];
      v11 = sub_1000102F8(v23[0]);

      goto LABEL_7;
    }

    sub_10007E790(v25, v23);
    sub_100035D04(&qword_10033FA48, &qword_100276818);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v20, v24);
      sub_10007E790(v24, v23);
      sub_100009848(v23, &v18, &qword_10033FA50, &qword_100276820);
      if (v19)
      {
        sub_10000E754(&v18, &v20);
        v15 = *(&v21 + 1);
        v16 = v22;
        sub_10000EBC0(&v20, *(&v21 + 1));
        v11 = (*(*(v16 + 8) + 16))(a1, v15);
        sub_1000097E8(v23, &qword_10033FA50, &qword_100276820);
        sub_10000903C(v24);
        v12 = &v20;
        goto LABEL_6;
      }

      sub_1000097E8(v23, &qword_10033FA50, &qword_100276820);
      sub_10000903C(v24);
      v17 = &v18;
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      v17 = &v20;
    }

    sub_1000097E8(v17, &qword_10033FA50, &qword_100276820);
    v11 = 0;
    goto LABEL_7;
  }

  v5 = v23[0];
  v6 = sub_10000F0CC();
LABEL_3:
  v7 = v6;
  v8 = sub_10000F0CC();
  v9 = sub_1000089FC(v8, v7);

  v10 = *(v9 + 16);

  v11 = v10 != 0;
LABEL_7:
  sub_10000903C(v25);
  return v11 & 1;
}

uint64_t sub_100016594(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (a2)
    {

      if ((sub_100255034(v4, a2) & 1) == 0)
      {
        _StringGuts.grow(_:)(29);
        v5._object = 0x800000010029B140;
        v5._countAndFlagsBits = 0xD000000000000017;
        String.append(_:)(v5);
        sub_100035D04(&qword_10033FA58, &unk_100276828);
        _print_unlocked<A, B>(_:_:)();
        v6._countAndFlagsBits = 8236;
        v6._object = 0xE200000000000000;
        String.append(_:)(v6);
        _print_unlocked<A, B>(_:_:)();
        sub_10001618C();
        swift_allocError();
        *v7 = 0;
        *(v7 + 8) = 0xE000000000000000;
        *(v7 + 16) = 10;
        swift_willThrow();
      }
    }

    else
    {
    }
  }

  else
  {

    return a2;
  }

  return v3;
}

uint64_t sub_100016708()
{
  sub_100016760();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100016760()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v2 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v4 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID + 8);

  v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode + 8);

  v7 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v8 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);

  v9(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice, v8);
  v11 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode + 8);

  v12 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID + 8);

  v13 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel + 8);

  v14 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName + 8);

  return v0;
}

void sub_10001693C(unint64_t a1, char **a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v28 = v2 & 0xC000000000000001;
    v25 = v2 & 0xFFFFFFFFFFFFFF8;
    v22 = i;
    v23 = v2;
    while (1)
    {
      if (v28)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v25 + 16))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 identifier];
      if (v9)
      {
        v10 = v9;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000B584(8);

        sub_100016B8C([v7 type]);
        v26 = String.init(cString:)();
        v27 = v11;
        v12._countAndFlagsBits = 10272;
        v12._object = 0xE200000000000000;
        String.append(_:)(v12);
        v13 = static String._fromSubstring(_:)();
        v15 = v14;

        v16._countAndFlagsBits = v13;
        v16._object = v15;
        String.append(_:)(v16);

        v17._countAndFlagsBits = 41;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);
        v18 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_100009088(0, *(v18 + 2) + 1, 1, v18);
          *a2 = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (v21 >= v20 >> 1)
        {
          v18 = sub_100009088((v20 > 1), v21 + 1, 1, v18);
          *a2 = v18;
        }

        *(v18 + 2) = v21 + 1;
        v5 = &v18[16 * v21];
        *(v5 + 4) = v26;
        *(v5 + 5) = v27;
        i = v22;
        v2 = v23;
      }

      ++v4;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

const char *sub_100016B8C(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "?";
  }

  else
  {
    return (&off_100305948)[a1];
  }
}

const char *sub_100016BB0(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "?";
  }

  else
  {
    return off_1003103E0[a1];
  }
}

char *sub_100016BD4(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100009088((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x796C696D6166;
  *(v5 + 5) = 0xE600000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100009088((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 1701670760;
    *(v8 + 5) = 0xE400000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100009088((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x64756F6C4369;
    *(v11 + 5) = 0xE600000000000000;
  }

  return v2;
}
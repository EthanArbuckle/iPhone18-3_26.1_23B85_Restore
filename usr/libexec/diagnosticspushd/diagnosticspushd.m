uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Hello World!", v5, 2u);
  }

  v1 = +[DPDBackgroundTaskManager sharedInstance];
  v2 = +[DPDPushManager sharedInstance];
  v3 = +[NSRunLoop currentRunLoop];
  [v3 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

id sub_1000015BC()
{
  result = [objc_allocWithZone(type metadata accessor for PushManager()) init];
  qword_10001D010 = result;
  return result;
}

void sub_100001648()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR___DPDPushManager_pushTopic];
  *v3 = 0xD000000000000019;
  *(v3 + 1) = 0x8000000100012E30;
  if (qword_10001C8B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000035C8(v4, qword_10001D030);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Registering for pushes...", v7, 2u);
  }

  if (qword_10001C8A8 != -1)
  {
    swift_once();
  }

  v8 = *(qword_10001D020 + 16);
  if (v8 && (v9 = String._bridgeToObjectiveC()(), v10 = [v8 stringForKey:v9], v9, v10))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = *v3;
  v12 = *(v3 + 1);
  sub_100003FB8();

  v13 = static OS_dispatch_queue.main.getter();
  v14 = objc_allocWithZone(APSConnection);
  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();

  v17 = [v14 initWithEnvironmentName:v15 namedDelegatePort:v16 queue:v13];

  if (v17)
  {
    *&v1[OBJC_IVAR___DPDPushManager_connection] = v17;
    v37.receiver = v1;
    v37.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v37, "init");
    v19 = OBJC_IVAR___DPDPushManager_connection;
    v20 = *&v18[OBJC_IVAR___DPDPushManager_connection];
    v21 = v18;
    [v20 setDelegate:v21];
    v22 = *&v18[v19];
    sub_1000036B4(&qword_10001C9D8, &qword_100011780);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100011700;
    v24 = *&v21[OBJC_IVAR___DPDPushManager_pushTopic + 8];
    *(v23 + 32) = *&v21[OBJC_IVAR___DPDPushManager_pushTopic];
    *(v23 + 40) = v24;
    v25 = v22;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 _setEnabledTopics:isa];

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {

      goto LABEL_16;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315138;
    v31 = [*&v18[v19] enabledTopics];

    if (v31)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = Array.description.getter();
      v34 = v33;

      v35 = sub_1000098A8(v32, v34, &v36);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Registered for push topics: %s", v29, 0xCu);
      sub_100003600(v30);

LABEL_16:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t *sub_100001BD4(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = &_swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_10000593C(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
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
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = __DataStorage._offset.getter();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = __DataStorage._bytes.getter();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = __DataStorage._offset.getter();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_1000036B4(&qword_10001C9C8, &qword_100011778);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100011700;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = String.init(format:_:)();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_10000593C((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_100002074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005494();
  sub_100003A80(v8);
  (*(v5 + 8))(v8, v4);
  type metadata accessor for CallbackManager();
  swift_initStaticObject();
  v9 = *(a3 + 88);
  v11[0] = *(a3 + 72);
  v11[1] = v9;
  v11[2] = *(a3 + 104);
  v12 = *(a3 + 120);
  return sub_10000A0B0(0, 0, 0, v11);
}

uint64_t sub_100002198(uint64_t a1)
{
  type metadata accessor for CallbackManager();
  swift_initStaticObject();
  v2 = *(a1 + 88);
  v4[0] = *(a1 + 72);
  v4[1] = v2;
  v4[2] = *(a1 + 104);
  v5 = *(a1 + 120);
  return sub_10000A0B0(1, 0, 0, v4);
}

id sub_100002208()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000022B4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100002300()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100002358()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000023C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

void sub_10000242C(void *a1, char a2)
{
  if (qword_10001C8B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000035C8(v4, qword_10001D030);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v7 = 138412802;
    *(v7 + 4) = v5;
    *v8 = a1;
    *(v7 + 12) = 2080;
    v10 = v5;
    *(v7 + 14) = sub_1000098A8(0xD000000000000027, 0x8000000100012E00, &v12);
    *(v7 + 22) = 1024;
    *(v7 + 24) = a2 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v6, "%@ %s connected: %{BOOL}d", v7, 0x1Cu);
    sub_10000364C(v8);

    sub_100003600(v9);
  }
}

void sub_1000025E4(void *a1)
{
  if (qword_10001C8B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000035C8(v2, qword_10001D030);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v3;
    *v6 = a1;
    *(v5 + 12) = 2080;
    v8 = v3;
    *(v5 + 14) = sub_1000098A8(0xD00000000000001ALL, 0x8000000100012DE0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "%@ %s", v5, 0x16u);
    sub_10000364C(v6);

    sub_100003600(v7);
  }
}

void sub_100002780(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    v20[12] = v3;
    v20[13] = v4;
    sub_100003EB8(a2, a3);
    v20[0] = sub_100001BD4(a2, a3);
    sub_1000036B4(&qword_10001C9B8, &qword_100011770);
    sub_100003F0C();
    v8 = BidirectionalCollection<>.joined(separator:)();
    v10 = v9;

    if (qword_10001C8B8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000035C8(v11, qword_10001D030);
    v12 = a1;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v19 = v8;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v15 = 138412802;
      *(v15 + 4) = v12;
      *v16 = a1;
      *(v15 + 12) = 2080;
      v17 = v12;
      *(v15 + 14) = sub_1000098A8(0xD000000000000024, 0x8000000100012DB0, v20);
      *(v15 + 22) = 2080;
      v18 = sub_1000098A8(v19, v10, v20);

      *(v15 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "%@ %s token: %s", v15, 0x20u);
      sub_10000364C(v16);

      swift_arrayDestroy();

      sub_100003EA4(a2, a3);
    }

    else
    {
      sub_100003EA4(a2, a3);
    }
  }
}

void sub_100002A0C(void *a1)
{
  v3 = v1;
  if (qword_10001C8B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000035C8(v5, qword_10001D030);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = &DPDPushManager__prots;
  v90 = v5;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    *&v105 = swift_slowAlloc();
    *v10 = 136446466;
    if (a1)
    {
      v11 = [v6 topic];

      v2 = v6;
      if (v11)
      {
        v89 = v3;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = sub_1000098A8(v12, v14, &v105);

        *(v10 + 4) = v15;
        *(v10 + 12) = 2082;
        v16 = [v2 userInfo];

        if (v16)
        {
          static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v17 = Dictionary.description.getter();
          v19 = v18;

          v20 = sub_1000098A8(v17, v19, &v105);

          *(v10 + 14) = v20;
          _os_log_impl(&_mh_execute_header, v7, v8, "Received push with topic: %{public}s userInfo: %{public}s", v10, 0x16u);
          swift_arrayDestroy();

          v6 = v2;
          v9 = &DPDPushManager__prots;
          goto LABEL_9;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:

      __break(1u);
      goto LABEL_39;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!a1)
  {
    goto LABEL_37;
  }

LABEL_9:
  v21 = [v6 v9[168].count];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v23 == *&v3[OBJC_IVAR___DPDPushManager_pushTopic] && v25 == *&v3[OBJC_IVAR___DPDPushManager_pushTopic + 8])
    {

      goto LABEL_14;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
LABEL_14:
      v27 = [v6 userInfo];
      if (v27)
      {
        v28 = v27;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = objc_opt_self();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        *&v105 = 0;
        v31 = [v29 dataWithJSONObject:isa options:0 error:&v105];

        v32 = v105;
        if (v31)
        {
          v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          v36 = type metadata accessor for JSONDecoder();
          v37 = *(v36 + 48);
          v38 = *(v36 + 52);
          swift_allocObject();
          JSONDecoder.init()();
          sub_1000037F8();
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          sub_100003750(v33, v35);

          v109 = v96;
          v110 = v97;
          v114 = v96;
          v105 = v92;
          v106 = v93;
          v111 = v98;
          v112 = v99;
          v107 = v94;
          v108 = v95;
          v113[2] = v94;
          v113[3] = v95;
          v113[0] = v92;
          v113[1] = v93;
          v104 = v96;
          v102 = v94;
          v103 = v95;
          v100 = v92;
          v101 = v93;
          if (qword_10001C8A0 != -1)
          {
            swift_once();
          }

          v75 = swift_allocObject();
          v76 = v100;
          *(v75 + 40) = v101;
          v77 = v103;
          *(v75 + 56) = v102;
          *(v75 + 16) = v3;
          *(v75 + 72) = v77;
          *(v75 + 88) = v104;
          *(v75 + 24) = v76;
          v78 = v110;
          *(v75 + 160) = v109;
          *(v75 + 176) = v78;
          v79 = v112;
          *(v75 + 192) = v111;
          *(v75 + 208) = v79;
          v80 = v106;
          *(v75 + 96) = v105;
          *(v75 + 112) = v80;
          v81 = v108;
          *(v75 + 128) = v107;
          *(v75 + 144) = v81;
          v82 = v3;
          v83 = swift_allocObject();
          v84 = v110;
          v83[5] = v109;
          v83[6] = v84;
          v85 = v112;
          v83[7] = v111;
          v83[8] = v85;
          v86 = v106;
          v83[1] = v105;
          v83[2] = v86;
          v87 = v108;
          v83[3] = v107;
          v83[4] = v87;
          sub_100003974(&v105, &v92);
          sub_100003974(&v105, &v92);
          v88 = v82;
          sub_1000039D0(v113, &v92);
          sub_100007930(&v100, sub_1000038EC, v75, sub_10000396C, v83);

          sub_100003A2C(&v105);
          return;
        }

        v49 = v32;
        v50 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v51 = v90;
        if (qword_10001C8C0 != -1)
        {
          swift_once();
          v51 = v90;
        }

        sub_1000035C8(v51, qword_10001D048);
        swift_errorRetain();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138543362;
          swift_errorRetain();
          v56 = _swift_stdlib_bridgeErrorToNSError();
          *(v54 + 4) = v56;
          *v55 = v56;
          _os_log_impl(&_mh_execute_header, v52, v53, "Failed to decode push payload: %{public}@", v54, 0xCu);
          sub_10000364C(v55);
        }

        v57 = [v6 userInfo];
        if (v57)
        {
          v58 = v57;
          static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v59 = Dictionary._bridgeToObjectiveC()().super.isa;

          *&v105 = 0;
          v60 = [v29 dataWithJSONObject:v59 options:0 error:&v105];

          v61 = v105;
          if (v60)
          {
            v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v64 = v63;

            v65 = type metadata accessor for JSONDecoder();
            v66 = *(v65 + 48);
            v67 = *(v65 + 52);
            swift_allocObject();
            JSONDecoder.init()();
            sub_1000036FC();
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            sub_100003750(v62, v64);

            v105 = v92;
            v106 = v93;
            v107 = v94;
            *&v108 = v95;
            type metadata accessor for CallbackManager();
            swift_initStaticObject();
            _StringGuts.grow(_:)(28);
            v68._object = 0x8000000100012D90;
            v68._countAndFlagsBits = 0xD00000000000001ALL;
            String.append(_:)(v68);
            *&v113[0] = v50;
            sub_1000036B4(&qword_10001C9A0, &qword_100012360);
            _print_unlocked<A, B>(_:_:)();
            sub_10000A0B0(2, 0, 0xE000000000000000, &v105);

            sub_1000037A4(&v105);
          }

          else
          {
            v69 = v61;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            swift_errorRetain();
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              *v72 = 138543362;
              swift_errorRetain();
              v74 = _swift_stdlib_bridgeErrorToNSError();
              *(v72 + 4) = v74;
              *v73 = v74;
              _os_log_impl(&_mh_execute_header, v70, v71, "Failed to send error callback; missing required IdMS data: %{public}@", v72, 0xCu);
              sub_10000364C(v73);
            }

            else
            {
            }
          }

          return;
        }

        goto LABEL_41;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }
  }

  v39 = v9;
  v40 = v6;
  oslog = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v105 = v43;
    *v42 = 136446210;
    v44 = [v40 v39[168].count];

    if (v44)
    {
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = sub_1000098A8(v45, v47, &v105);

      *(v42 + 4) = v48;
      _os_log_impl(&_mh_execute_header, oslog, v41, "Received push from unknown topic: %{public}s", v42, 0xCu);
      sub_100003600(v43);

      return;
    }

    goto LABEL_42;
  }
}

uint64_t sub_1000035C8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003600(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000364C(uint64_t a1)
{
  v2 = sub_1000036B4(&qword_10001C990, "x");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000036B4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000036FC()
{
  result = qword_10001C998;
  if (!qword_10001C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C998);
  }

  return result;
}

uint64_t sub_100003750(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000037F8()
{
  result = qword_10001C9A8;
  if (!qword_10001C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9A8);
  }

  return result;
}

uint64_t sub_10000384C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  v10 = *(v0 + 160);

  v11 = *(v0 + 184);

  v12 = *(v0 + 200);

  v13 = *(v0 + 216);

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_1000038FC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

void sub_100003A80(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10001C8B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_1000035C8(v7, qword_10001D030);
  (*(v3 + 16))(v6, a1, v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v31 = v8;
    v12 = v11;
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136446210;
    sub_1000040C0(&qword_10001C9B0, &type metadata accessor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v3 + 8))(v6, v2);
    v17 = sub_1000098A8(v14, v16, &v32);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Opening URL %{public}s", v12, 0xCu);
    sub_100003600(v13);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v18 = [objc_opt_self() defaultWorkspace];
  if (!v18)
  {
    __break(1u);
  }

  v20 = v18;
  URL._bridgeToObjectiveC()(v19);
  v22 = v21;
  v32 = 0;
  v23 = [v20 openURL:v21 configuration:0 error:&v32];

  if (v23)
  {
    v24 = v32;
  }

  else
  {
    v25 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to open url: %{public}@", v28, 0xCu);
      sub_10000364C(v29);
    }

    else
    {
    }
  }
}

uint64_t sub_100003EA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003750(a1, a2);
  }

  return a1;
}

uint64_t sub_100003EB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100003F0C()
{
  result = qword_10001C9C0;
  if (!qword_10001C9C0)
  {
    sub_100003F70(&qword_10001C9B8, &qword_100011770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9C0);
  }

  return result;
}

uint64_t sub_100003F70(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003FB8()
{
  result = qword_10001C9D0;
  if (!qword_10001C9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C9D0);
  }

  return result;
}

void sub_10000402C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000040C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004150()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1000041AC(uint64_t a1)
{
  v40 = type metadata accessor for URLQueryItem();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = &_swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v38 = v6;
  v33 = v1;
  v43 = &_swiftEmptyArrayStorage;
  sub_10000595C(0, v7, 0);
  v8 = v43;
  v9 = a1 + 64;
  v10 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v12 = result;
  v13 = 0;
  v42 = *(a1 + 36);
  v36 = a1 + 64;
  v37 = v3 + 32;
  v34 = a1 + 72;
  v35 = v7;
  v39 = v3;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v42 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v41 = v13;
    v16 = (*(a1 + 48) + 16 * v12);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + 16 * v12);
    v20 = a1;
    v22 = *v19;
    v21 = v19[1];

    v23 = v38;
    URLQueryItem.init(name:value:)();

    v43 = v8;
    v25 = v8[2];
    v24 = v8[3];
    if (v25 >= v24 >> 1)
    {
      sub_10000595C(v24 > 1, v25 + 1, 1);
      v8 = v43;
    }

    v8[2] = v25 + 1;
    result = (*(v39 + 32))(v8 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25, v23, v40);
    v14 = 1 << *(v20 + 32);
    if (v12 >= v14)
    {
      goto LABEL_25;
    }

    v9 = v36;
    v26 = *(v36 + 8 * v15);
    if ((v26 & (1 << v12)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v20;
    if (v42 != *(v20 + 36))
    {
      goto LABEL_27;
    }

    v27 = v26 & (-2 << (v12 & 0x3F));
    if (v27)
    {
      v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v15 << 6;
      v29 = v15 + 1;
      v30 = (v34 + 8 * v15);
      while (v29 < (v14 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_100005CC8(v12, v42, 0);
          v14 = __clz(__rbit64(v31)) + v28;
          goto LABEL_20;
        }
      }

      result = sub_100005CC8(v12, v42, 0);
LABEL_20:
      a1 = v20;
    }

    v13 = v41 + 1;
    v12 = v14;
    if (v41 + 1 == v35)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000044F8()
{
  v0 = (*(*(sub_1000036B4(&qword_10001CB20, "r!") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100005C60(v3, qword_10001CB08);
  v4 = sub_1000035C8(v3, qword_10001CB08);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000468C@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100018A28, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000046F0(uint64_t a1)
{
  v2 = sub_100006490();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000472C(uint64_t a1)
{
  v2 = sub_100006490();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100004768@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000061E8(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

Swift::Int sub_1000047BC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100004828()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000487C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7472656C61 && a2 == 0xE500000000000000)
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

uint64_t sub_10000490C(uint64_t a1)
{
  v2 = sub_100006790();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004948(uint64_t a1)
{
  v2 = sub_100006790();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100004984@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000065CC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

Swift::Int sub_1000049E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100004AA8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100004B58()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100004C18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006F2C(*a1);
  *a2 = result;
  return result;
}

void sub_100004C48(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6581603;
  v4 = 0xE800000000000000;
  v5 = 0x61746164736D6469;
  if (*v1 != 2)
  {
    v5 = 0x6B6361626C6C6163;
    v4 = 0xEE0079654B6C7255;
  }

  if (*v1)
  {
    v3 = 0x64696E7874;
    v2 = 0xE500000000000000;
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

uint64_t sub_100004CC8()
{
  v1 = 6581603;
  v2 = 0x61746164736D6469;
  if (*v0 != 2)
  {
    v2 = 0x6B6361626C6C6163;
  }

  if (*v0)
  {
    v1 = 0x64696E7874;
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

unint64_t sub_100004D44@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100006F2C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100004D78(uint64_t a1)
{
  v2 = sub_100006194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004DB4(uint64_t a1)
{
  v2 = sub_100006194();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100004DF0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100005EAC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

Swift::Int sub_100004F4C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100004FD4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000502C@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_100005114()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10000521C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006F78(*a1);
  *a2 = result;
  return result;
}

void sub_10000524C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  v5 = 0xE500000000000000;
  v6 = 0x6E74626C61;
  if (v2 != 5)
  {
    v6 = 0x61506C7255666564;
    v5 = 0xEC000000736D6172;
  }

  v7 = 0xE400000000000000;
  v8 = 2036625250;
  if (v2 != 3)
  {
    v8 = 0x6E7462666564;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6E6F69746361;
  if (v2 != 1)
  {
    v10 = 0x656C746974;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10000531C()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0x6E74626C61;
  if (v1 != 5)
  {
    v3 = 0x61506C7255666564;
  }

  v4 = 2036625250;
  if (v1 != 3)
  {
    v4 = 0x6E7462666564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F69746361;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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

unint64_t sub_1000053E8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100006F78(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000541C(uint64_t a1)
{
  v2 = sub_100007424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100005458(uint64_t a1)
{
  v2 = sub_100007424();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_100005494()
{
  v1 = type metadata accessor for URLQueryItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 64))
  {
    v6 = *(v0 + 64);
  }

  else
  {
    v6 = sub_100008934(&_swiftEmptyArrayStorage);
  }

  v7 = sub_1000041AC(v6);
  if (*(v6 + 16) && (sub_100008468(25705, 0xE200000000000000), (v8 & 1) != 0))
  {
  }

  else
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;

    v11 = MobileGestalt_copy_serialNumber_obj();

    if (v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100005764(0, v7[2] + 1, 1, v7);
    }

    v13 = v7[2];
    v12 = v7[3];
    if (v13 >= v12 >> 1)
    {
      v7 = sub_100005764(v12 > 1, v13 + 1, 1, v7);
    }

    v7[2] = v13 + 1;
    (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v5, v1);
  }

  if (qword_10001C898 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for URL();
  sub_1000035C8(v14, qword_10001CB08);
  URL.appending(queryItems:)();
}

__n128 sub_100005710@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100006FC4(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

size_t sub_100005764(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000036B4(&qword_10001CB28, "r!");
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000593C(char *a1, int64_t a2, char a3)
{
  result = sub_10000597C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000595C(size_t a1, int64_t a2, char a3)
{
  result = sub_100005A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000597C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000036B4(&qword_10001C9D8, &qword_100011780);
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

size_t sub_100005A88(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000036B4(&qword_10001CB28, "r!");
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t *sub_100005C60(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100005CC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 sub_100005CD4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_100005D10(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100005D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100005D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100005DEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100005E08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005E50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005EAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000036B4(&qword_10001CB30, &qword_100011AD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_100006150(a1, a1[3]);
  sub_100006194();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003600(a1);
  }

  v32 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v28 = v12;
  v30 = 2;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v15;
  v29 = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  v19 = *(v6 + 8);
  v25 = v16;
  v19(v9, v5);

  v20 = v27;

  sub_100003600(a1);

  v22 = v28;
  *a2 = v11;
  a2[1] = v22;
  v23 = v25;
  v24 = v26;
  a2[2] = v14;
  a2[3] = v24;
  a2[4] = v20;
  a2[5] = v23;
  a2[6] = v18;
  return result;
}

void *sub_100006150(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006194()
{
  result = qword_10001CB38;
  if (!qword_10001CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB38);
  }

  return result;
}

uint64_t sub_1000061E8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v39 = a2;
  v4 = sub_1000036B4(&qword_10001CB40, &qword_100011AD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = a1[4];
  sub_100006150(a1, a1[3]);
  sub_100006490();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003600(a1);
  }

  v10 = v5;
  v11 = v39;
  sub_1000064E4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v29;
  v35 = v30;
  *&v36[0] = v31;
  v32 = v27;
  v33 = v28;
  sub_100006538(a1, v26);
  sub_100005EAC(v26, v37);
  (*(v10 + 8))(v8, v4);
  *(v36 + 8) = v37[0];
  *(&v36[1] + 8) = v37[1];
  *(&v36[2] + 8) = v37[2];
  *(&v36[3] + 1) = v38;
  v17 = v32;
  v18 = v33;
  v19 = v34;
  v20 = v35;
  v21 = v36[0];
  v22 = v36[1];
  v23 = v36[2];
  v24 = v36[3];
  sub_100003974(&v17, v25);
  sub_100003600(a1);
  v25[4] = v36[0];
  v25[5] = v36[1];
  v25[6] = v36[2];
  v25[7] = v36[3];
  v25[0] = v32;
  v25[1] = v33;
  v25[2] = v34;
  v25[3] = v35;
  result = sub_100003A2C(v25);
  v13 = v22;
  v11[4] = v21;
  v11[5] = v13;
  v14 = v24;
  v11[6] = v23;
  v11[7] = v14;
  v15 = v18;
  *v11 = v17;
  v11[1] = v15;
  v16 = v20;
  v11[2] = v19;
  v11[3] = v16;
  return result;
}

unint64_t sub_100006490()
{
  result = qword_10001CB48;
  if (!qword_10001CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB48);
  }

  return result;
}

unint64_t sub_1000064E4()
{
  result = qword_10001CB50;
  if (!qword_10001CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB50);
  }

  return result;
}

uint64_t sub_100006538(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000065CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000036B4(&qword_10001CB58, &qword_100011AE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_100006150(a1, a1[3]);
  sub_100006790();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003600(a1);
  }

  sub_1000067E4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v14 = v19;
  v15 = v20;
  result = sub_100003600(a1);
  v12 = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v12;
  *(a2 + 64) = v18;
  v13 = v15;
  *a2 = v14;
  *(a2 + 16) = v13;
  return result;
}

unint64_t sub_100006790()
{
  result = qword_10001CB60;
  if (!qword_10001CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB60);
  }

  return result;
}

unint64_t sub_1000067E4()
{
  result = qword_10001CB68;
  if (!qword_10001CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallbackData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CallbackData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CallbackBody.Error.Code(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CallbackBody.Error.Code(_WORD *result, int a2, int a3)
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

uint64_t sub_100006ABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100006B04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100006B68()
{
  result = qword_10001CB70;
  if (!qword_10001CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB70);
  }

  return result;
}

unint64_t sub_100006BC0()
{
  result = qword_10001CB78;
  if (!qword_10001CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB78);
  }

  return result;
}

unint64_t sub_100006C18()
{
  result = qword_10001CB80;
  if (!qword_10001CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB80);
  }

  return result;
}

unint64_t sub_100006C70()
{
  result = qword_10001CB88;
  if (!qword_10001CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB88);
  }

  return result;
}

unint64_t sub_100006CC8()
{
  result = qword_10001CB90;
  if (!qword_10001CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB90);
  }

  return result;
}

unint64_t sub_100006D20()
{
  result = qword_10001CB98;
  if (!qword_10001CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB98);
  }

  return result;
}

unint64_t sub_100006D78()
{
  result = qword_10001CBA0;
  if (!qword_10001CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBA0);
  }

  return result;
}

unint64_t sub_100006DD0()
{
  result = qword_10001CBA8;
  if (!qword_10001CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBA8);
  }

  return result;
}

unint64_t sub_100006E28()
{
  result = qword_10001CBB0;
  if (!qword_10001CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBB0);
  }

  return result;
}

unint64_t sub_100006E80()
{
  result = qword_10001CBB8;
  if (!qword_10001CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBB8);
  }

  return result;
}

unint64_t sub_100006ED8()
{
  result = qword_10001CBC0;
  if (!qword_10001CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBC0);
  }

  return result;
}

unint64_t sub_100006F2C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100018A60, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100006F78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100018B18, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100006FC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000036B4(&qword_10001CBC8, &qword_100012048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_100006150(a1, a1[3]);
  sub_100007424();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003600(a1);
  }

  LOBYTE(v37[0]) = 0;
  sub_100007478();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LOBYTE(v37[0]) = 1;
  sub_1000074CC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LOBYTE(v37[0]) = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v12;
  LOBYTE(v37[0]) = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v14;
  v28 = v13;
  LOBYTE(v37[0]) = 4;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v15;
  LOBYTE(v37[0]) = 5;
  *&v26 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v26 + 1) = v16;
  sub_1000036B4(&qword_10001CBE8, &qword_100012050);
  v40 = 6;
  sub_100007520();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v25 = v41;
  v18 = v30;
  v17 = v31;
  *&v32 = v11;
  *(&v32 + 1) = v31;
  v19 = v28;
  *&v33 = v28;
  *(&v33 + 1) = v30;
  v20 = v27;
  v21 = v29;
  *&v34 = v27;
  *(&v34 + 1) = v29;
  v35 = v26;
  v36 = v41;
  sub_10000759C(&v32, v37);
  sub_100003600(a1);
  v37[0] = v11;
  v37[1] = v17;
  v37[2] = v19;
  v37[3] = v18;
  v37[4] = v20;
  v37[5] = v21;
  v38 = v26;
  v39 = v25;
  result = sub_1000075D4(v37);
  v23 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v23;
  *(a2 + 64) = v36;
  v24 = v33;
  *a2 = v32;
  *(a2 + 16) = v24;
  return result;
}

unint64_t sub_100007424()
{
  result = qword_10001CBD0;
  if (!qword_10001CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBD0);
  }

  return result;
}

unint64_t sub_100007478()
{
  result = qword_10001CBD8;
  if (!qword_10001CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBD8);
  }

  return result;
}

unint64_t sub_1000074CC()
{
  result = qword_10001CBE0;
  if (!qword_10001CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBE0);
  }

  return result;
}

unint64_t sub_100007520()
{
  result = qword_10001CBF0;
  if (!qword_10001CBF0)
  {
    sub_100003F70(&qword_10001CBE8, &qword_100012050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBF0);
  }

  return result;
}

unint64_t sub_100007604()
{
  result = qword_10001CBF8;
  if (!qword_10001CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CBF8);
  }

  return result;
}

unint64_t sub_100007658()
{
  result = qword_10001CC00;
  if (!qword_10001CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CC00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007810()
{
  result = qword_10001CC08;
  if (!qword_10001CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CC08);
  }

  return result;
}

unint64_t sub_100007868()
{
  result = qword_10001CC10;
  if (!qword_10001CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CC10);
  }

  return result;
}

unint64_t sub_1000078C0()
{
  result = qword_10001CC18;
  if (!qword_10001CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CC18);
  }

  return result;
}

uint64_t sub_100007930(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v33 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v35 = *(v36 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v36);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v42 = a1[1];
  v43 = v15;
  v16 = a1[2];
  v40 = a1[3];
  v41 = v16;
  sub_1000036B4(&qword_10001CCC0, &qword_1000121F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000121A0;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  v18 = v42;
  *(inited + 40) = v43;
  *(inited + 64) = v18;
  v19 = v40;
  *(inited + 88) = v41;
  *(inited + 56) = kCFUserNotificationAlertMessageKey;
  *(inited + 80) = kCFUserNotificationDefaultButtonTitleKey;
  *(inited + 104) = kCFUserNotificationAlternateButtonTitleKey;
  *(inited + 112) = v19;
  v20 = kCFUserNotificationAlertHeaderKey;
  sub_1000087B4(&v43, aBlock);
  v21 = kCFUserNotificationAlertMessageKey;
  sub_1000087B4(&v42, aBlock);
  v22 = kCFUserNotificationDefaultButtonTitleKey;
  sub_1000087B4(&v41, aBlock);
  v23 = kCFUserNotificationAlternateButtonTitleKey;
  sub_1000087B4(&v40, aBlock);
  sub_1000086B8(inited);
  swift_setDeallocating();
  sub_1000036B4(&qword_10001CCC8, &qword_1000121F8);
  swift_arrayDestroy();
  sub_1000036B4(&qword_10001CCD0, &qword_100012200);
  sub_100008810();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = *(v32[1] + 16);
  v26 = swift_allocObject();
  v27 = v33;
  v26[2] = isa;
  v26[3] = v27;
  v28 = v34;
  v26[4] = a3;
  v26[5] = v28;
  v26[6] = a5;
  aBlock[4] = sub_10000890C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008308;
  aBlock[3] = &unk_1000193C0;
  v29 = _Block_copy(aBlock);
  v30 = isa;

  static DispatchQoS.unspecified.getter();
  v38 = &_swiftEmptyArrayStorage;
  sub_100008A48(&qword_10001CCE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000036B4(&qword_10001CCE8, &unk_100012208);
  sub_100008A90(&qword_10001CCF0, &qword_10001CCE8, &unk_100012208);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v37 + 8))(v11, v8);
  (*(v35 + 8))(v14, v36);
}

uint64_t sub_100007DD8()
{
  type metadata accessor for AlertManager();
  swift_allocObject();
  result = sub_100007E14();
  qword_10001D018 = result;
  return result;
}

uint64_t sub_100007E14()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v12 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v12);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v11 = sub_100003FB8();
  static DispatchQoS.userInteractive.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_100008A48(&qword_10001CD10, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000036B4(&qword_10001CD18, qword_100012228);
  sub_100008A90(&qword_10001CD20, &qword_10001CD18, qword_100012228);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v13;
  *(v13 + 16) = v8;
  return v9;
}

void sub_10000806C(void *a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  if (qword_10001C8C8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000035C8(v7, qword_10001D060);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Showing alert with options: %@", v11, 0xCu);
    sub_10000364C(v12);
  }

  v14 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v8);
  v21 = 0;
  CFUserNotificationReceiveResponse(v14, 0.0, &v21);
  v15 = v21 & 3;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  if (v15)
  {
    if (v18)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "User selected alternate button", v19, 2u);
    }

    a4();
  }

  else
  {
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "User selected default button", v20, 2u);
    }

    a2();
  }
}

uint64_t sub_100008308(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_100008398(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFString(0);
    sub_100008A48(&qword_10001CD00, type metadata accessor for CFString);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return sub_1000084E0(a1, v4);
}

unint64_t sub_100008468(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100008600(a1, a2, v6);
}

unint64_t sub_1000084E0(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_100008A48(&qword_10001CD00, type metadata accessor for CFString);
          v10 = v9;
          v11 = static _CFObject.== infix(_:_:)();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100008600(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000086B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000036B4(&qword_10001CCF8, &qword_100012218);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = v5;

      result = sub_100008398(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
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

unint64_t sub_100008810()
{
  result = qword_10001CCD8;
  if (!qword_10001CCD8)
  {
    sub_100003F70(&qword_10001CCD0, &qword_100012200);
    sub_100008A48(&qword_10001C9F0, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CCD8);
  }

  return result;
}

uint64_t sub_1000088C4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000891C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100008934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000036B4(&qword_10001CD08, &qword_100012220);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100008468(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_100008A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008A90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003F70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100008AE4()
{
  type metadata accessor for DefaultsManager();
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSuiteName:v2];

  *(v0 + 16) = v3;
  qword_10001D020 = v0;
}

id sub_100008B98()
{
  result = [objc_allocWithZone(type metadata accessor for BackgroundTaskManager()) init];
  qword_10001D028 = result;
  return result;
}

char *sub_100008C24()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier];
  *v2 = 0xD000000000000026;
  *(v2 + 1) = 0x8000000100012FB0;
  v31.receiver = v0;
  v31.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v31, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedScheduler];
  v7 = &v5[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier];
  v8 = *&v5[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier];
  v9 = *&v5[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier + 8];

  v10 = String._bridgeToObjectiveC()();

  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  v30[4] = sub_100009780;
  v30[5] = v11;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  v30[2] = sub_100009684;
  v30[3] = &unk_100019410;
  v12 = _Block_copy(v30);

  v13 = [v6 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v12];
  _Block_release(v12);

  if (v13)
  {
    if (qword_10001C8D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000035C8(v14, qword_10001D090);
    v15 = v5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30[0] = v19;
      *v18 = 136446210;
      v20 = *v7;
      v21 = v7[1];

      v22 = sub_1000098A8(v20, v21, v30);

      *(v18 + 4) = v22;
      v23 = "Task %{public}s registered successfully";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v16, v17, v23, v18, 0xCu);
      sub_100003600(v19);
    }
  }

  else
  {
    if (qword_10001C8D8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000035C8(v24, qword_10001D090);
    v25 = v5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30[0] = v19;
      *v18 = 136446210;
      v26 = *v7;
      v27 = v7[1];

      v28 = sub_1000098A8(v26, v27, v30);

      *(v18 + 4) = v28;
      v23 = "Task %{public}s was not registered successfully";
      goto LABEL_10;
    }
  }

  return v5;
}

uint64_t sub_100008FBC(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;
  aBlock[4] = sub_100009F0C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008308;
  aBlock[3] = &unk_100019488;
  v6 = _Block_copy(aBlock);
  v7 = a2;

  [a1 setExpirationHandler:v6];
  _Block_release(v6);
  swift_beginAccess();
  v8 = &DPDPushManager__prots;
  v9 = &DPDPushManager__prots;
  if (*(v4 + 16) == 1)
  {
    if (qword_10001C8D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000035C8(v10, qword_10001D090);
    v11 = v7;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1000098A8(*&v11[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier], *&v11[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier + 8], &v32);
      _os_log_impl(&_mh_execute_header, v12, v13, "Task %{public}s was expired immediately after being run", v14, 0xCu);
      sub_100003600(v15);
      v8 = &DPDPushManager__prots;
    }

    v32 = 0;
    if ([a1 setTaskExpiredWithRetryAfter:&v32 error:0.0])
    {
      v16 = v32;
    }

    else
    {
      v17 = v32;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v18 = v11;
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v32 = v23;
        *v21 = 136446466;
        *(v21 + 4) = sub_1000098A8(*&v18[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier], *&v18[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier + 8], &v32);
        *(v21 + 12) = 2114;
        swift_errorRetain();
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 14) = v24;
        *v22 = v24;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to expire task %{public}s: %{public}@", v21, 0x16u);
        sub_10000364C(v22);
        v9 = &DPDPushManager__prots;

        sub_100003600(v23);
        v8 = &DPDPushManager__prots;
      }

      [a1 v9[183].count];
    }
  }

  if (v8[283].count != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000035C8(v25, qword_10001D090);
  v26 = v7;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_1000098A8(*&v26[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier], *&v26[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier + 8], &v32);
    _os_log_impl(&_mh_execute_header, v27, v28, "Handling task %{public}s", v29, 0xCu);
    sub_100003600(v30);
  }

  if (qword_10001C890 != -1)
  {
    swift_once();
  }

  [a1 v9[183].count];
}

uint64_t sub_100009518(void *a1, uint64_t a2)
{
  if (qword_10001C8D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000035C8(v4, qword_10001D090);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1000098A8(*&v5[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier], *&v5[OBJC_IVAR___DPDBackgroundTaskManager_postInstallTaskIdentifier + 8], &v11);
    _os_log_impl(&_mh_execute_header, v6, v7, "Task %{public}s expired by DAS", v8, 0xCu);
    sub_100003600(v9);
  }

  result = swift_beginAccess();
  *(a2 + 16) = 1;
  return result;
}

void sub_100009684(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100009748()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009788(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000097A0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000097EC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10000984C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000098A8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000098A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009974(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100009E60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003600(v11);
  return v7;
}

unint64_t sub_100009974(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100009A80(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

char *sub_100009A80(uint64_t a1, unint64_t a2)
{
  v4 = sub_100009ACC(a1, a2);
  sub_100009BFC(&off_1000189C8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100009ACC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100009CE8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009CE8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100009BFC(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100009D5C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100009CE8(uint64_t a1, uint64_t a2)
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

  sub_1000036B4(&qword_10001CDF8, &qword_1000122B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009D5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000036B4(&qword_10001CDF8, &qword_1000122B8);
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

_BYTE **sub_100009E50(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100009E60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009ECC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100009F14(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10000A038(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100005C60(v3, a2);
  sub_1000035C8(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000A0B0(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v30 = a2;
  v29 = a1;
  v6 = (*(*(sub_1000036B4(&qword_10001CE98, &qword_1000122F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v28[-v7];
  v9 = (type metadata accessor for CallbackBody() - 8);
  v10 = *v9;
  v11 = *(*v9 + 64);
  v12 = (__chkstk_darwin)();
  v13 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v28[-v14];
  v16 = a4[6];
  v31 = a4[5];
  v17 = v9[8];

  static Date.now.getter();
  v18 = *a4;
  v19 = *(a4 + 1);
  v34 = *(a4 + 3);
  v20 = v34;
  v35 = v19;
  *v15 = v29;
  *(v15 + 1) = v30;
  *(v15 + 2) = a3;
  *&v15[v9[9]] = v18;
  *&v15[v9[10]] = v19;
  *&v15[v9[11]] = v20;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_10000DB5C(v15, v13);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_10000DD00(v13, v24 + v22);
  v25 = (v24 + v23);
  v26 = v32;
  *v25 = v31;
  v25[1] = v16;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v26;
  sub_1000087B4(&v35, v33);
  sub_1000087B4(&v34, v33);

  sub_10000D43C(0, 0, v8, &unk_100012308, v24);

  return sub_10000DF9C(v15);
}

uint64_t sub_10000A33C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6581603;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x61746164736D6469;
    }

    else
    {
      v4 = 0x6B6361626C6C6163;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEE0079654B6C7255;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64696E7874;
    }

    else
    {
      v4 = 6581603;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x61746164736D6469;
  if (a2 != 2)
  {
    v8 = 0x6B6361626C6C6163;
    v7 = 0xEE0079654B6C7255;
  }

  if (a2)
  {
    v2 = 0x64696E7874;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10000A488(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x6974634172657375;
  v4 = a1;
  v5 = 0xE300000000000000;
  v6 = 6581603;
  v7 = 0xE500000000000000;
  v8 = 0x64696E7874;
  if (a1 != 4)
  {
    v8 = 0x61746164736D6469;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00656D69546E6FLL;
  v10 = 0x726F727265;
  if (a1 == 1)
  {
    v10 = 0x6974634172657375;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6974634172657375;
  }

  if (!a1)
  {
    v9 = 0xEA00000000006E6FLL;
  }

  if (a1 <= 2u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE300000000000000;
      if (v12 != 6581603)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE500000000000000;
      if (v12 != 0x64696E7874)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v12 != 0x61746164736D6469)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE00656D69546E6FLL;
        if (v12 != 0x6974634172657375)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      v2 = 0xE500000000000000;
      v3 = 0x726F727265;
    }

    if (v12 != v3)
    {
LABEL_35:
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_36;
    }
  }

LABEL_32:
  if (v13 != v2)
  {
    goto LABEL_35;
  }

  v14 = 1;
LABEL_36:

  return v14 & 1;
}

uint64_t sub_10000A638(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6E74626C61;
  if (a1 != 5)
  {
    v5 = 0x61506C7255666564;
    v4 = 0xEC000000736D6172;
  }

  v6 = 0xE400000000000000;
  v7 = 2036625250;
  if (a1 != 3)
  {
    v7 = 0x6E7462666564;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6E6F69746361;
  if (a1 != 1)
  {
    v9 = 0x656C746974;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x79726F6765746163;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x6E6F69746361)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x656C746974)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x79726F6765746163)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6E74626C61)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xEC000000736D6172;
      if (v10 != 0x61506C7255666564)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 2036625250)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x6E7462666564)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

Swift::Int sub_10000A848()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10000A940()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10000AA54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000AB48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7629921;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7629921;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
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

Swift::Int sub_10000ABE8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000AC64()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000ACCC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10000AD50(uint64_t *a1@<X8>)
{
  v2 = 7629921;
  if (!*v1)
  {
    v2 = 0x746C7561666564;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10000ADD8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xFFFFFFFFFFFFFFFFLL);
  return Hasher._finalize()();
}

Swift::Int sub_10000AE44()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xFFFFFFFFFFFFFFFFLL);
  return Hasher._finalize()();
}

uint64_t sub_10000AEF4(void *a1)
{
  v3 = sub_1000036B4(&qword_10001CFB0, &qword_1000124D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100006150(a1, a1[3]);
  sub_100010114();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  sub_100010168();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10000B08C(void *a1)
{
  v3 = v1;
  v5 = sub_1000036B4(&qword_10001CF88, &qword_1000124C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_100006150(a1, a1[3]);
  sub_10000FFD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = *v3;
  v22 = 0;
  sub_100010024();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for CallbackBody();
    v12 = v11[6];
    LOBYTE(v21) = 1;
    type metadata accessor for Date();
    sub_100010078(&qword_10001CFA0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v3 + 8);
    v22 = 2;
    sub_1000100C0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + v11[7]);
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = (v3 + v11[8]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v21) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = (v3 + v11[9]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v21) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10000B32C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x67736D5F727265;
  }

  else
  {
    v4 = 0x65646F635F727265;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x67736D5F727265;
  }

  else
  {
    v6 = 0x65646F635F727265;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
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

Swift::Int sub_10000B3D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000B458()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000B4C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000B554@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_10000B5B0(uint64_t *a1@<X8>)
{
  v2 = 0x65646F635F727265;
  if (*v1)
  {
    v2 = 0x67736D5F727265;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10000B5F0()
{
  if (*v0)
  {
    result = 0x67736D5F727265;
  }

  else
  {
    result = 0x65646F635F727265;
  }

  *v0;
  return result;
}

uint64_t sub_10000B62C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100018C68, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10000B69C(uint64_t a1)
{
  v2 = sub_100010114();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B6D8(uint64_t a1)
{
  v2 = sub_100010114();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000B714(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_10000AEF4(a1);
}

uint64_t sub_10000B744()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10000B82C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000EE74(*a1);
  *a2 = result;
  return result;
}

void sub_10000B85C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E6FLL;
  v4 = 0x6974634172657375;
  v5 = 0xE300000000000000;
  v6 = 6581603;
  v7 = 0xE500000000000000;
  v8 = 0x64696E7874;
  if (v2 != 4)
  {
    v8 = 0x61746164736D6469;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00656D69546E6FLL;
  v10 = 0x6974634172657375;
  if (v2 != 1)
  {
    v10 = 0x726F727265;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10000B91C()
{
  v1 = 0x6974634172657375;
  v2 = *v0;
  v3 = 6581603;
  v4 = 0x64696E7874;
  if (v2 != 4)
  {
    v4 = 0x61746164736D6469;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726F727265;
  if (v2 == 1)
  {
    v5 = 0x6974634172657375;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10000B9C8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10000EE74(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000B9FC(uint64_t a1)
{
  v2 = sub_10000FFD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000BA38(uint64_t a1)
{
  v2 = sub_10000FFD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000BA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[47] = a5;
  v6[48] = a6;
  v6[46] = a4;
  v7 = type metadata accessor for URLRequest();
  v6[49] = v7;
  v8 = *(v7 - 8);
  v6[50] = v8;
  v9 = *(v8 + 64) + 15;
  v6[51] = swift_task_alloc();
  v10 = *(*(sub_1000036B4(&qword_10001CB20, "r!") - 8) + 64) + 15;
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v6[54] = v11;
  v12 = *(v11 - 8);
  v6[55] = v12;
  v13 = *(v12 + 64) + 15;
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();

  return _swift_task_switch(sub_10000BBFC, 0, 0);
}

uint64_t sub_10000BBFC()
{
  v1 = v0[46];
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for CallbackBody();
  sub_100010078(&qword_10001CEA0, type metadata accessor for CallbackBody);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[58] = 0;
  v0[59] = v5;
  v0[60] = v6;

  v7 = [objc_opt_self() sharedBag];
  v0[61] = v7;
  if (v7)
  {
    v8 = v7;
    v9 = v0[53];
    v10 = v0[47];
    v11 = v0[48];
    v12 = String._bridgeToObjectiveC()();
    v0[62] = v12;
    v0[2] = v0;
    v0[7] = v9;
    v0[3] = sub_10000BF84;
    v13 = swift_continuation_init();
    v0[17] = sub_1000036B4(&qword_10001CEA8, &qword_100012328);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000D260;
    v0[13] = &unk_100019528;
    v0[14] = v13;
    [v8 urlForKey:v12 completion:v0 + 10];
    v7 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v7);
}

uint64_t sub_10000BF84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 504) = v2;
  if (v2)
  {
    v3 = sub_10000CE54;
  }

  else
  {
    v3 = sub_10000C094;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C094()
{
  v33 = v0;
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[52];
  sub_10000E42C(v0[53], v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v6 = v0[61];
  v5 = v0[62];
  if (v4 == 1)
  {
    sub_10000FB8C(v0[52], &qword_10001CB20, "r!");

    if (qword_10001C8D0 != -1)
    {
      swift_once();
    }

    v7 = v0[48];
    v8 = type metadata accessor for Logger();
    sub_1000035C8(v8, qword_10001D078);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[59];
    v12 = v0[60];
    if (v11)
    {
      v15 = v0[47];
      v14 = v0[48];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000098A8(v15, v14, &v32);
      _os_log_impl(&_mh_execute_header, v9, v10, "AKURLBag returned nil URL for key: %s", v16, 0xCu);
      sub_100003600(v17);
    }

    sub_100003750(v13, v12);

    v19 = v0[56];
    v18 = v0[57];
    v21 = v0[52];
    v20 = v0[53];
    v22 = v0[51];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[56];
    v26 = v0[57];
    v27 = v0[54];
    v28 = v0[55];
    v29 = v0[51];
    (*(v28 + 32))(v26, v0[52], v27);

    (*(v28 + 16))(v25, v26, v27);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v30 = swift_task_alloc();
    v0[64] = v30;
    *v30 = v0;
    v30[1] = sub_10000C398;
    v31 = v0[51];

    return sub_10000F160(v31);
  }
}

uint64_t sub_10000C398(uint64_t a1)
{
  v2 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = a1;

  return _swift_task_switch(sub_10000C498, 0, 0);
}

uint64_t sub_10000C498()
{
  v37 = v0;
  v1 = *(v0 + 520);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 408);
  URLRequest.httpMethod.setter();

  URLRequest.allHTTPHeaderFields.setter();
  sub_100003EB8(v3, v2);
  URLRequest.httpBody.setter();
  if (qword_10001C8D0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 520);
  v7 = *(v0 + 472);
  v6 = *(v0 + 480);
  v8 = type metadata accessor for Logger();
  *(v0 + 528) = sub_1000035C8(v8, qword_10001D078);

  sub_100003EB8(v7, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  sub_100003750(v7, v6);
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 520);
  if (!v11)
  {

    goto LABEL_14;
  }

  v14 = *(v0 + 472);
  v13 = *(v0 + 480);
  v15 = *(v0 + 464);
  v16 = swift_slowAlloc();
  v36[0] = swift_slowAlloc();
  *v16 = 136315394;
  v17 = Dictionary.debugDescription.getter();
  v19 = v18;

  v20 = sub_1000098A8(v17, v19, v36);

  *(v16 + 4) = v20;
  *(v16 + 12) = 2082;
  sub_100003EB8(v14, v13);
  v21 = sub_10000ECC8(v14, v13);
  v23 = v22;
  v24 = *(v0 + 472);
  v25 = *(v0 + 480);
  if (v23)
  {
    goto LABEL_12;
  }

  *(v0 + 336) = v24;
  *(v0 + 344) = v25;
  sub_100003EB8(v24, v25);
  sub_1000036B4(&qword_10001CEB0, &qword_100012338);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 296) = 0;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    sub_10000FB8C(v0 + 264, &qword_10001CEB8, &qword_100012340);
LABEL_11:
    v29 = *(v0 + 472);
    v28 = *(v0 + 480);
    v21 = sub_10000EA5C(v29, v28);
    v23 = v30;
    v24 = v29;
    v25 = v28;
LABEL_12:
    sub_100003750(v24, v25);
    goto LABEL_13;
  }

  sub_10000FB10((v0 + 264), v0 + 224);
  v26 = *(v0 + 256);
  sub_100006150((v0 + 224), *(v0 + 248));
  if ((dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter() & 1) == 0)
  {
    sub_100003600((v0 + 224));
    goto LABEL_11;
  }

  sub_100003750(*(v0 + 472), *(v0 + 480));
  v27 = *(v0 + 256);
  sub_100006150((v0 + 224), *(v0 + 248));
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
  v21 = *(v0 + 352);
  v23 = *(v0 + 360);
  sub_100003600((v0 + 224));
LABEL_13:
  v31 = sub_1000098A8(v21, v23, v36);

  *(v16 + 14) = v31;
  _os_log_impl(&_mh_execute_header, v9, v10, "Making URL request\nheaders:\n%s\nbody:\n%{public}s", v16, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  *(v0 + 536) = [objc_opt_self() sharedSession];
  v32 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v33 = swift_task_alloc();
  *(v0 + 544) = v33;
  *v33 = v0;
  v33[1] = sub_10000C8C0;
  v34 = *(v0 + 408);

  return NSURLSession.data(for:delegate:)(v34, 0);
}

uint64_t sub_10000C8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 544);
  v8 = *v4;
  v6[69] = a1;
  v6[70] = a2;
  v6[71] = a3;
  v6[72] = v3;

  if (v3)
  {
    v9 = sub_10000D048;
  }

  else
  {
    v9 = sub_10000CA08;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000CA08()
{
  v59 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 528);
  v4 = *(v0 + 568);
  sub_100003EB8(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  sub_100003750(v2, v1);
  if (!os_log_type_enabled(v5, v6))
  {
    v21 = v5;
    v22 = *(v0 + 568);
    v23 = *(v0 + 560);
    v24 = *(v0 + 552);
    v26 = *(v0 + 472);
    v25 = *(v0 + 480);
    v27 = *(v0 + 440);
    v55 = *(v0 + 432);
    v57 = *(v0 + 456);
    v28 = *(v0 + 400);
    v29 = *(v0 + 408);
    v30 = *(v0 + 392);

    sub_100003750(v24, v23);
    sub_100003750(v26, v25);
    (*(v28 + 8))(v29, v30);
    (*(v27 + 8))(v57, v55);
    goto LABEL_12;
  }

  v56 = v6;
  v7 = *(v0 + 576);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  v10 = *(v0 + 552);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  v58 = v54;
  *v11 = 138543618;
  *(v11 + 4) = v8;
  v53 = v12;
  *v12 = v8;
  *(v11 + 12) = 2082;
  v13 = v8;
  sub_100003EB8(v10, v9);
  v14 = sub_10000ECC8(v10, v9);
  v16 = v15;
  v17 = *(v0 + 560);
  v18 = *(v0 + 552);
  if (v16)
  {
    goto LABEL_10;
  }

  *(v0 + 304) = v18;
  *(v0 + 312) = v17;
  sub_100003EB8(v18, v17);
  sub_1000036B4(&qword_10001CEB0, &qword_100012338);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
    sub_10000FB8C(v0 + 184, &qword_10001CEB8, &qword_100012340);
LABEL_9:
    v31 = *(v0 + 560);
    v32 = *(v0 + 552);
    v14 = sub_10000EA5C(v32, v31);
    v16 = v33;
    v18 = v32;
    v17 = v31;
LABEL_10:
    sub_100003750(v18, v17);
    goto LABEL_11;
  }

  sub_10000FB10((v0 + 184), v0 + 144);
  v19 = *(v0 + 176);
  sub_100006150((v0 + 144), *(v0 + 168));
  if ((dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter() & 1) == 0)
  {
    sub_100003600((v0 + 144));
    goto LABEL_9;
  }

  sub_100003750(*(v0 + 552), *(v0 + 560));
  v20 = *(v0 + 176);
  sub_100006150((v0 + 144), *(v0 + 168));
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
  v14 = *(v0 + 320);
  v16 = *(v0 + 328);
  sub_100003600((v0 + 144));
LABEL_11:
  v34 = *(v0 + 568);
  v35 = *(v0 + 560);
  v36 = *(v0 + 552);
  v37 = *(v0 + 440);
  v51 = *(v0 + 432);
  v52 = *(v0 + 456);
  v38 = *(v0 + 400);
  v49 = *(v0 + 480);
  v50 = *(v0 + 408);
  v47 = *(v0 + 472);
  v48 = *(v0 + 392);
  v39 = sub_1000098A8(v14, v16, &v58);

  *(v11 + 14) = v39;
  _os_log_impl(&_mh_execute_header, v5, v56, "URL request completed\nresponse:\n%{public}@\ndata:\n%{public}s", v11, 0x16u);
  sub_10000FB8C(v53, &qword_10001C990, "x");

  sub_100003600(v54);

  sub_100003750(v36, v35);
  sub_100003750(v47, v49);
  (*(v38 + 8))(v50, v48);
  (*(v37 + 8))(v52, v51);
LABEL_12:
  v41 = *(v0 + 448);
  v40 = *(v0 + 456);
  v43 = *(v0 + 416);
  v42 = *(v0 + 424);
  v44 = *(v0 + 408);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_10000CE54()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[60];
  v4 = v0[61];
  v5 = v0[59];
  swift_willThrow();
  sub_100003750(v5, v3);

  v6 = v0[63];
  if (qword_10001C8D0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000035C8(v7, qword_10001D078);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to make URL request: %{public}@", v10, 0xCu);
    sub_10000FB8C(v11, &qword_10001C990, "x");
  }

  else
  {
  }

  v14 = v0[56];
  v13 = v0[57];
  v16 = v0[52];
  v15 = v0[53];
  v17 = v0[51];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10000D048()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[55];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[49];
  sub_100003750(v0[59], v0[60]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = v0[72];
  if (qword_10001C8D0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000035C8(v8, qword_10001D078);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to make URL request: %{public}@", v11, 0xCu);
    sub_10000FB8C(v12, &qword_10001C990, "x");
  }

  else
  {
  }

  v15 = v0[56];
  v14 = v0[57];
  v17 = v0[52];
  v16 = v0[53];
  v18 = v0[51];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10000D260(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000036B4(&qword_10001CB20, "r!");
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = *sub_100006150((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000036B4(&qword_10001C9A0, &qword_100012360);
    v14 = swift_allocError();
    *v15 = a3;
    v16 = a3;

    return _swift_continuation_throwingResumeWithError(v13, v14);
  }

  else
  {
    if (a2)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    }

    else
    {
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    }

    sub_10000E42C(v10, v12);
    sub_10000E42C(v12, *(*(v13 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10000D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000036B4(&qword_10001CE98, &qword_1000122F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000DFF8(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000FB8C(v11, &qword_10001CE98, &qword_1000122F8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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

      sub_10000FB8C(a3, &qword_10001CE98, &qword_1000122F8);

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

  sub_10000FB8C(a3, &qword_10001CE98, &qword_1000122F8);
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

uint64_t sub_10000D72C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100006150((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000036B4(&qword_10001C9A0, &qword_100012360);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

unint64_t sub_10000D7FC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_1000036B4(&qword_10001CD08, &qword_100012220);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_10000FB30(*(v1 + 48) + 40 * v17, v30);
    sub_100009E60(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_10000FB30(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_10000FB8C(v27, &qword_10001CEC8, &qword_100012358);

      goto LABEL_22;
    }

    sub_100009E60(v28 + 8, v26);
    sub_10000FB8C(v27, &qword_10001CEC8, &qword_100012358);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_100008468(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

uint64_t type metadata accessor for CallbackBody()
{
  result = qword_10001CF28;
  if (!qword_10001CF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallbackBody();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DBC0()
{
  v1 = (type metadata accessor for CallbackBody() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + v3;
  v8 = *(v7 + 16);

  v9 = v1[8];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v7 + v1[10] + 8);

  v12 = *(v7 + v1[11] + 8);

  v13 = *(v0 + v4 + 8);

  v14 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_10000DD00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallbackBody();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DD64(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CallbackBody() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10000DEA8;

  return sub_10000BA8C(a1, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_10000DEA8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000DF9C(uint64_t a1)
{
  v2 = type metadata accessor for CallbackBody();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000036B4(&qword_10001CE98, &qword_1000122F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E068(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E160;

  return v7(a1);
}

uint64_t sub_10000E160()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000E258()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E290(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001078C;

  return sub_10000E068(a1, v5);
}

uint64_t sub_10000E348(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DEA8;

  return sub_10000E068(a1, v5);
}

uint64_t sub_10000E42C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000036B4(&qword_10001CB20, "r!");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E49C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000036B4(&qword_10001CD08, &qword_100012220);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_10000E75C()
{
  v1 = v0;
  sub_1000036B4(&qword_10001CD08, &qword_100012220);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_10000E8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100008468(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10000E49C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100008468(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10000E75C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_10000EA5C(uint64_t a1, unint64_t a2)
{
  sub_100003EB8(a1, a2);
  v4 = *(sub_10000EB4C(a1, a2) + 2);
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t sub_10000EAC8@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000EB04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

void *sub_10000EB4C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_100003750(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_100009CE8(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_100003750(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10000ECC8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

unint64_t sub_10000EE74(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100018CB8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000EEC0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = sub_100008468(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        sub_10000E75C();
      }
    }

    else
    {
      v34 = v56;
      sub_10000E49C(v32, v50 & 1);
      v35 = *v34;
      v36 = sub_100008468(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10000FB28();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10000F180()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10000E8D4(0xD000000000000010, 0x8000000100013050, 0x2D746E65746E6F43, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    if (internalBuild)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      v8 = swift_isUniquelyReferenced_nonNull_native();
      sub_10000E8D4(1702195828, 0xE400000000000000, v5, v7, v8);
    }

    v0[20] = &_swiftEmptyDictionarySingleton;
    v9 = v0[19];
    v10 = [objc_allocWithZone(AKAnisetteProvisioningController) init];
    v0[21] = v10;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v0[22] = isa;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10000F3A4;
    v12 = swift_continuation_init();
    v0[17] = sub_1000036B4(&qword_10001CEC0, &unk_100012348);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000D72C;
    v0[13] = &unk_100019550;
    v0[14] = v12;
    [v10 attestationDataForRequest:isa completion:v0 + 10];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v2);
}

uint64_t sub_10000F3A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_10000F7E8;
  }

  else
  {
    v3 = sub_10000F4B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000F4B4()
{
  v26 = v0;
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = [v1 attestationHeaders];
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v2;
    sub_10000EEC0(v5, sub_10000EB04, 0, isUniquelyReferenced_nonNull_native, v25);

    v7 = v25[0];
  }

  else
  {
    if (qword_10001C8D0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000035C8(v8, qword_10001D078);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 168);
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to get attestation data: nil response", v13, 2u);
    }

    v7 = *(v0 + 160);
  }

  v14 = [objc_opt_self() ak_clientInfoHeader];
  if (v14 && (v15 = v14, v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v15, v17 = sub_10000D7FC(v16), , v17))
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v7;
    sub_10000EEC0(v17, sub_10000EB04, 0, v18, v25);

    v7 = v25[0];
  }

  else
  {
    if (qword_10001C8D0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000035C8(v19, qword_10001D078);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get client info", v22, 2u);
    }
  }

  v23 = *(v0 + 8);

  return v23(v7);
}

uint64_t sub_10000F7E8()
{
  v25 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  if (qword_10001C8D0 != -1)
  {
    swift_once();
  }

  v4 = v0[23];
  v5 = type metadata accessor for Logger();
  sub_1000035C8(v5, qword_10001D078);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[23];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to get attestation data: %@", v10, 0xCu);
    sub_10000FB8C(v11, &qword_10001C990, "x");
  }

  else
  {
  }

  v13 = v0[20];
  v14 = [objc_opt_self() ak_clientInfoHeader];
  if (v14 && (v15 = v14, v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v15, v17 = sub_10000D7FC(v16), , v17))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v13;
    sub_10000EEC0(v17, sub_10000EB04, 0, isUniquelyReferenced_nonNull_native, &v24);

    v13 = v24;
  }

  else
  {
    if (qword_10001C8D0 != -1)
    {
      swift_once();
    }

    sub_1000035C8(v5, qword_10001D078);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to get client info", v21, 2u);
    }
  }

  v22 = v0[1];

  return v22(v13);
}

uint64_t sub_10000FB10(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000FB8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000036B4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000FC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10000FCD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10000FD98()
{
  sub_10000FE68(319, &qword_10001CF38);
  if (v0 <= 0x3F)
  {
    sub_10000FE68(319, &unk_10001CF40);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000FE68(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 sub_10000FEB4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000FEC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000FF08(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10000FF7C()
{
  result = qword_10001CF80;
  if (!qword_10001CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CF80);
  }

  return result;
}

unint64_t sub_10000FFD0()
{
  result = qword_10001CF90;
  if (!qword_10001CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CF90);
  }

  return result;
}

unint64_t sub_100010024()
{
  result = qword_10001CF98;
  if (!qword_10001CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CF98);
  }

  return result;
}

uint64_t sub_100010078(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000100C0()
{
  result = qword_10001CFA8;
  if (!qword_10001CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFA8);
  }

  return result;
}

unint64_t sub_100010114()
{
  result = qword_10001CFB8;
  if (!qword_10001CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFB8);
  }

  return result;
}

unint64_t sub_100010168()
{
  result = qword_10001CFC0;
  if (!qword_10001CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFC0);
  }

  return result;
}

unint64_t sub_1000101BC()
{
  result = qword_10001CFC8;
  if (!qword_10001CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFC8);
  }

  return result;
}

uint64_t sub_100010210(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000102A0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallbackBody.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CallbackBody.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000104C4()
{
  result = qword_10001CFD0;
  if (!qword_10001CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFD0);
  }

  return result;
}

unint64_t sub_10001051C()
{
  result = qword_10001CFD8;
  if (!qword_10001CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFD8);
  }

  return result;
}

unint64_t sub_100010574()
{
  result = qword_10001CFE0;
  if (!qword_10001CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFE0);
  }

  return result;
}

unint64_t sub_1000105CC()
{
  result = qword_10001CFE8;
  if (!qword_10001CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFE8);
  }

  return result;
}

unint64_t sub_100010624()
{
  result = qword_10001CFF0;
  if (!qword_10001CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFF0);
  }

  return result;
}

unint64_t sub_10001067C()
{
  result = qword_10001CFF8;
  if (!qword_10001CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CFF8);
  }

  return result;
}

unint64_t sub_1000106D4()
{
  result = qword_10001D000;
  if (!qword_10001D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D000);
  }

  return result;
}

unint64_t sub_100010728()
{
  result = qword_10001D008;
  if (!qword_10001D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D008);
  }

  return result;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}
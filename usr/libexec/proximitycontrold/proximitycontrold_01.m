BOOL sub_100016D70(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, uint64_t *))
{
  sub_100009848(a1, v15, a2, a3);
  if (v15[3])
  {
    a4(v15, v16);
    v8 = v17;
    v7 = v18;
    sub_10000EBC0(v16, v17);
    v9 = (*(*(v7 + 8) + 8))(v8);
    v10 = sub_10000F0CC();
    v11 = sub_1000089FC(v10, v9);

    v12 = *(v11 + 16);

    v13 = v12 != 0;
    sub_10000903C(v16);
  }

  else
  {
    sub_1000097E8(v15, a2, a3);
    return 0;
  }

  return v13;
}

void sub_100016F18(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v3 - 8);
  isa = v32[8].isa;
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_100344040);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v10;
    aBlock[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_100017494(0xD000000000000014, 0x800000010029FF40, aBlock);
    *(v15 + 12) = 2080;
    v17 = sub_1000092A0();
    v19 = sub_100017494(v17, v18, aBlock);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: device=%s", v15, 0x16u);
    swift_arrayDestroy();
    v10 = v28;

    v3 = v29;
  }

  if (sub_1000176C8())
  {
    v20 = *(v1 + 128);
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = a1;
    aBlock[4] = sub_100018EF8;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_100307CD0;
    v23 = _Block_copy(aBlock);

    v24 = v20;

    static DispatchQoS.unspecified.getter();
    v33 = _swiftEmptyArrayStorage;
    sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (v32[1].isa)(v6, v3);
    (*(v30 + 8))(v10, v31);
  }

  else
  {
    v32 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v32, v25, "Should not suppress", v26, 2u);
    }

    v27 = v32;
  }
}

uint64_t sub_100017454()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017494(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100017560(v11, 0, 0, 1, a1, a2);
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
    sub_10001766C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000903C(v11);
  return v7;
}

unint64_t sub_100017560(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001B518(a5, a6);
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

uint64_t sub_10001766C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

BOOL sub_1000176C8()
{
  v0 = sub_100010FF4();
  if ((v0 & 8) != 0)
  {
    return 1;
  }

  if (qword_100339130 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  if (*(off_10034A1A8 + 24) != 1)
  {
    return 0;
  }

  v1 = v0;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 1536);
  v3 = sub_1000177F8();

  if (v3 == 2)
  {
    v3 = sub_100017C84();
  }

  result = 0;
  if (v1 & 2) != 0 && (v3)
  {

    return sub_100017CB4();
  }

  return result;
}

uint64_t sub_1000177F8()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
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
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v33, v32);
  sub_100035D04(&qword_10033C2F8, &qword_100272AF8);
  if (swift_dynamicCast())
  {
    sub_10000903C(v33);

    return v31;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = [v6 stringForKey:v10];

    if (v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = sub_1001650E4();
      sub_10000903C(v33);
      return v12;
    }

    else
    {
      v13 = String._bridgeToObjectiveC()();
      v14 = [v6 dataForKey:v13];

      if (v14)
      {
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = *((swift_isaMask & *v0) + 0x80);
        v19 = v0;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v30 = v17;
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v32[0] = v23;
          *v22 = 136315138;
          *(v22 + 4) = sub_100017494(v5, v4, v32);
          _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v22, 0xCu);
          sub_10000903C(v23);

          sub_100010708(v15, v30);
        }

        else
        {

          sub_100010708(v15, v17);
        }

        sub_10000903C(v33);
        return *(v19 + *((swift_isaMask & *v19) + 0x60));
      }

      else
      {
        v24 = *((swift_isaMask & *v0) + 0x80);
        v25 = v0;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v32[0] = v29;
          *v28 = 136315138;
          *(v28 + 4) = sub_100017494(v5, v4, v32);
          _os_log_impl(&_mh_execute_header, v26, v27, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v28, 0xCu);
          sub_10000903C(v29);
        }

        sub_10000903C(v33);
        return *(v25 + *((swift_isaMask & *v25) + 0x60));
      }
    }
  }
}

BOOL sub_100017CB4()
{
  v0 = sub_100035D04(&qword_10033D440, &unk_1002730B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v10 - v2;
  v4 = sub_100017E14();
  if (v4)
  {
    return v4 > 2299999;
  }

  v6 = sub_100070C80();
  if (!v7)
  {
    return 0;
  }

  v10[2] = v6;
  v10[3] = v7;
  v10[0] = 875443249;
  v10[1] = 0xE400000000000000;
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_10001369C();
  v9 = StringProtocol.compare<A>(_:options:range:locale:)();
  sub_1000097E8(v3, &qword_10033D440, &unk_1002730B0);

  return v9 < 2;
}

uint64_t sub_100017E14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v33)
  {
    return 0;
  }

  v1 = [v33 sourceVersion];
  if (!v1)
  {

    return 0;
  }

  v2 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10001369C();
  v3 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v4 = v3;
  v5 = v3[2];
  if (!v5)
  {

    v12 = 0;
    v13 = 0;
    goto LABEL_24;
  }

  v6 = v3[4];
  v7 = v3[5];
  if ((v7 ^ v6) < 0x4000)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v9 = v3[6];
  v8 = v3[7];
  result = sub_1000181D4(v3[4], v3[5], v9, v8, 10);
  if ((v11 & 0x100) == 0)
  {
    if ((v11 & 1) == 0)
    {
      v0 = result;
      goto LABEL_12;
    }

LABEL_45:
    __break(1u);
    return result;
  }

  v0 = sub_100075E04(v6, v7, v9, v8, 10);
  v15 = v14;

  if (v15)
  {
    goto LABEL_45;
  }

LABEL_12:

  v13 = 10000 * v0;
  if ((v0 * 10000) >> 64 != (10000 * v0) >> 63)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:

    result = v0 + 99;
    if (!__OFADD__(v0, 99))
    {
      return result;
    }

    goto LABEL_42;
  }

  if (v5 == 1)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if (v4[2] < 2uLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v16 = v4[8];
  v17 = v4[9];
  if ((v17 ^ v16) < 0x4000)
  {
    goto LABEL_22;
  }

  v19 = v4[10];
  v18 = v4[11];
  result = sub_1000181D4(v4[8], v4[9], v19, v18, 10);
  if ((v20 & 0x100) == 0)
  {
    v21 = result;
    if (v20)
    {
      goto LABEL_22;
    }

LABEL_21:
    if (v21 > 99)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v21 = sub_100075E04(v16, v17, v19, v18, 10);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v21 = 99;
LABEL_23:
  v12 = 100 * v21;
  if ((v21 * 100) >> 64 != (100 * v21) >> 63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_24:
  v0 = v13 + v12;
  if (__OFADD__(v13, v12))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v5 < 3)
  {

    return v0;
  }

  if (v4[2] < 3uLL)
  {
    goto LABEL_39;
  }

  v24 = v4[12];
  v25 = v4[13];
  v27 = v4[14];
  v26 = v4[15];

  if (!((v25 ^ v24) >> 14))
  {
    goto LABEL_40;
  }

  v28 = sub_1000181D4(v24, v25, v27, v26, 10);
  if ((v29 & 0x100) != 0)
  {
    v28 = sub_100075E04(v24, v25, v27, v26, 10);
  }

  v30 = v28;
  v31 = v29;

  v32 = 99;
  if (!(v31 & 1 | (v30 < 100)))
  {
    v32 = v30;
  }

  result = v0 + v32;
  if (__OFADD__(v0, v32))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_1000181D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1000182A0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1000182A0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100164508(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100164508(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100164508(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_10001870C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001871C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001872C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001873C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001874C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001875C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001876C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001877C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001878C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001879C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000187FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001880C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001881C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001882C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001883C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001884C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001885C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001886C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001887C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001888C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001889C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000188FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001890C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001891C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001892C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001893C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001894C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001895C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001896C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001897C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001898C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001899C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000189AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000189CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000189EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000189FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100018AB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100018AFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 120);

    v6 = sub_100018F00(a2);

    if (v6)
    {
      if (qword_100338FB8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003078(v7, qword_100344040);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Already suppressed", v10, 2u);
      }

LABEL_15:

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10000DF0C();
    v12 = v11;

    if (v12)
    {
      v13 = *(v4 + 112);
      if (v13)
      {
        v14 = qword_100338FB8;
        v15 = v13;
        if (v14 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_100003078(v16, qword_100344040);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v27 = v15;
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          aBlock[0] = v20;
          *v19 = 136315138;
          v21 = sub_1000092A0();
          v23 = sub_100017494(v21, v22, aBlock);

          *(v19 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v17, v18, "Suppressing v1 for %s", v19, 0xCu);
          sub_10000903C(v20);

          v15 = v27;
        }

        v8 = String._bridgeToObjectiveC()();

        v24 = swift_allocObject();
        swift_weakInit();
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        *(v25 + 24) = a2;
        aBlock[4] = sub_1000FBA08;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100124498;
        aBlock[3] = &unk_100307D20;
        v26 = _Block_copy(aBlock);

        [v15 suppressDevice:v8 completion:v26];

        _Block_release(v26);

        goto LABEL_15;
      }
    }
  }
}

BOOL sub_100018F00(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = a1;
  v8 = *(v1 + 16);

  swift_getAtKeyPath();

  v9 = v1 + qword_100346AF8;
  os_unfair_lock_lock((v1 + qword_100346AF8));
  v10 = *(v9 + 8);
  if (*(v10 + 16) && (v11 = sub_100019110(v7), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(v9);

  (*(v4 + 8))(v7, v3);
  return v13 != 0;
}

uint64_t sub_100019050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 24);
  v4 = *(a2 + a3 - 8);
  return dispatch thunk of Identifiable.id.getter();
}

uint64_t sub_100019094@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_100019110(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100019194(&qword_100339848);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000191D8(a1, v5);
}

uint64_t sub_100019194(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000191D8(uint64_t a1, uint64_t a2)
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
      sub_100019194(&qword_10034B5A0);
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

uint64_t sub_100019540(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_1000195AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100019650(a4, a1, a2, 0, 1);
  }

  return result;
}

uint64_t sub_100019650(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v47 = a4;
  BYTE8(v47) = a5 & 1;
  *&v48 = a2;
  *(&v48 + 1) = a3;
  v49 = a1;
  v20 = qword_100338FB8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100003078(v21, qword_100344040);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v6;
    v26 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;

    v28 = sub_100019B4C(v27);
    v40 = v19;
    v29 = v15;
    v30 = v12;
    v31 = a2;
    v33 = v32;

    v34 = sub_100017494(v28, v33, aBlock);
    a2 = v31;
    v12 = v30;
    v15 = v29;
    v19 = v40;

    *(v24 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "Handle %s", v24, 0xCu);
    sub_10000903C(v26);
    v6 = v41;
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v35 = swift_allocObject();
  v36 = v48;
  *(v35 + 40) = v47;
  *(v35 + 16) = v6;
  *(v35 + 24) = a2;
  *(v35 + 32) = a3;
  *(v35 + 56) = v36;
  *(v35 + 72) = v49;
  aBlock[4] = sub_10001A1F4;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307B90;
  v37 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v44 + 8))(v15, v12);
  (*(v42 + 8))(v19, v43);
}

uint64_t sub_100019B04()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[8];

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_100019DC4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *a4;
  v47 = *(a4 + 8);
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  v48 = *(a4 + 32);
  v11 = a1[2] + qword_100346AF8;

  os_unfair_lock_lock(v11);
  v12 = *(v11 + 8);

  v14 = sub_1000FB764(v13, a2, a3);

  os_unfair_lock_unlock(v11);
  if (v14)
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_100344040);

    sub_10001A204(a4, v49);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    sub_10001A23C(a4);
    if (os_log_type_enabled(v16, v17))
    {
      v45 = v9;
      v18 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v18 = 136315394;
      v19 = sub_1000092A0();
      v21 = v8;
      v22 = v10;
      v23 = sub_100017494(v19, v20, v49);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v25 = sub_100019B4C(v24);
      v27 = sub_100017494(v25, v26, v49);

      *(v18 + 14) = v27;
      v10 = v22;
      v8 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Updating %s with %s", v18, 0x16u);
      swift_arrayDestroy();

      v9 = v45;
    }

    v28 = *(a4 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    v49[0] = v8;
    v49[1] = v47 & 1;
    v49[2] = v10;
    v49[3] = v9;
    v50 = v48;

    return static Published.subscript.setter();
  }

  else
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v44 = v10;
    v30 = type metadata accessor for Logger();
    sub_100003078(v30, qword_100344040);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    v46 = v9;
    v43 = v8;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100017494(a2, a3, v49);
      _os_log_impl(&_mh_execute_header, v31, v32, "No device found for %s - caching the event", v33, 0xCu);
      sub_10000903C(v34);
    }

    v35 = a2;
    v36 = a1[3];
    v37 = a1[4];
    v38 = a1[5];
    v39 = a1[6];
    v40 = a1[7];
    v41 = a1[8];
    v42 = a1[9];
    a1[3] = v43;
    a1[4] = v47 & 1;
    a1[5] = v44;
    a1[6] = v46;
    a1[7] = v48;
    a1[8] = v35;
    a1[9] = a3;

    sub_10001A204(a4, v49);
    return sub_1000AEDE0(v36, v37, v38, v39);
  }
}

uint64_t sub_10001A26C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001A2E0(v3);
  }

  return result;
}

void sub_10001A2E0(uint64_t a1)
{
  v2 = v1;
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v34 = *(a1 + 32);
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10033CBC8);
  sub_100009848(a1, &v36, &qword_10033CCB8, &qword_100272F78);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  sub_1000097E8(a1, &qword_10033CCB8, &qword_100272F78);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD000000000000015, 0x80000001002994D0, &v35);
    *(v11 + 12) = 2080;
    if (*(a1 + 24))
    {
      v36 = v5;
      v37 = v4 & 1;
      v38 = v7;
      v39 = v6;
      v40 = v34;

      v12 = String.init<A>(describing:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_100017494(v12, v14, &v35);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: event=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (!*(a1 + 24))
  {
    v19 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_legacyDeliveryModeStateMachine;
    swift_beginAccess();
    v20 = *(v2 + v19);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v35) = 0;

    static Published.subscript.setter();
    return;
  }

  v16 = *(a1 + 32);
  if (v16 > 4)
  {
    if (v16 == 5)
    {
      swift_beginAccess();
      v21 = 1;
    }

    else
    {
      if (v16 != 6)
      {
        goto LABEL_21;
      }

      swift_beginAccess();
      v21 = 0;
    }
  }

  else
  {
    if (v16)
    {
      if (v16 == 1)
      {
        swift_beginAccess();
        sub_1001682D4(4);
        swift_endAccess();
        v17 = *(*(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
        if (v17)
        {
          v18 = v17;
          sub_100074E80(v18);
        }
      }

      goto LABEL_21;
    }

    swift_beginAccess();
    v21 = 3;
  }

  sub_1001682D4(v21);
  swift_endAccess();
LABEL_21:
  v22 = sub_10001A794(v16);
  if ((v23 & 1) == 0)
  {
    v24 = v22;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315138;
      v29 = sub_10001A860(v24);
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_100017494(v30, v32, &v36);

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "Forwarding %s from legacy event", v27, 0xCu);
      sub_10000903C(v28);
    }

    sub_10001A98C(v24);
  }
}

__n128 sub_10001A77C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001A794(unsigned __int8 a1)
{
  v1 = 6;
  v2 = 1;
  if (a1 == 6)
  {
    v2 = 6;
  }

  v3 = 3;
  if (a1 != 4)
  {
    v3 = 8;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 4;
  }

  if (a1 > 1u)
  {
    v1 = a1 == 2;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

id sub_10001A80C(uint64_t a1)
{
  v1 = 8 * a1 - 8;
  v2 = *(off_100302470 + v1);
  v3 = *(off_100302430 + v1);

  return v2;
}

__CFString *sub_10001A860(unint64_t a1)
{
  if (a1 > 9)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = *(&off_100303638 + a1);
    v2 = *(&off_100303688 + a1);
  }

  v3 = v1;

  return v2;
}

__CFString *sub_10001A8C4(unint64_t a1)
{
  if (a1 > 9)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = off_1003050D8[a1];
    v2 = off_100305128[a1];
  }

  v3 = v1;

  return v2;
}

__CFString *sub_10001A928(unint64_t a1)
{
  if (a1 > 9)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = *(&off_100313638 + a1);
    v2 = *(&off_100313688 + a1);
  }

  v3 = v1;

  return v2;
}

void sub_10001A98C(unint64_t a1)
{
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033CBC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002994F0, &v32);
    *(v5 + 12) = 2080;
    v6 = sub_10001A860(a1);
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = sub_100017494(v7, v9, &v32);

    *(v5 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: type=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (a1 == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_10000DF0C();
      v12 = v11;

      if (!v12)
      {
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          v16 = "### No mediaRouteID?";
          goto LABEL_18;
        }

LABEL_19:
        swift_unknownObjectRelease();

        return;
      }

      if (sub_1000176C8())
      {

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

          goto LABEL_19;
        }

        goto LABEL_19;
      }

      v19 = objc_allocWithZone(PCProximityEvent);
      v20 = String._bridgeToObjectiveC()();

      v21 = [v19 initWithType:1 mediaRemoteID:v20 info:0];

      [v21 setExpectsDisplayContext:1];
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v32 = v25;
        *v24 = 136315138;
        v26 = sub_10001A860(1uLL);
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_100017494(v27, v29, &v32);

        *(v24 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v22, v23, "Sending event %s to delegate", v24, 0xCu);
        sub_10000903C(v25);
      }

      sub_10001BD68(v21);
      swift_unknownObjectRelease();
    }

    else
    {
      oslog = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v17, "### No proximityDelegate?", v18, 2u);
      }
    }
  }
}

void sub_10001AEA0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostID();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_100003078(v7, qword_10034DBB8);

  v37 = v8;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38[0] = v34;
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0x286D726177657270, 0xEB00000000293A5FLL, v38);
    *(v11 + 12) = 2080;
    v12 = sub_1000092A0();
    v14 = sub_100017494(v12, v13, v38);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: device=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v15 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  swift_beginAccess();
  if (*(*(v2 + 40) + 16) && (v16 = *(v2 + 40), , sub_100019110(a1 + v15), v18 = v17, , (v18 & 1) != 0))
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Already prewarming device.", v21, 2u);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = sub_10000DF0C();
    v24 = v23;

    if (v24)
    {
      sub_10001B7F4();
      v25 = v35;
      OSSignpostID.init(_:)();
      static os_signpost_type_t.begin.getter();
      if (qword_100338F20 != -1)
      {
        swift_once();
      }

      os_signpost(_:dso:log:name:signpostID:_:_:)();
      (*(v36 + 8))(v25, v4);
      v26 = (a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive);
      v27 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive + 8);
      *v26 = v22;
      v26[1] = v24;

      swift_beginAccess();

      v28 = *(v2 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v2 + 40);
      *(v2 + 40) = 0x8000000000000000;
      sub_10001B874(a1, a1 + v15, isUniquelyReferenced_nonNull_native);
      *(v2 + 40) = v39;
      swift_endAccess();
      sub_10001BB3C(3uLL);
    }

    else
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "### No MediaRoute ID", v32, 2u);
      }

      sub_10001618C();
      swift_allocError();
      *v33 = 0xD000000000000010;
      *(v33 + 8) = 0x80000001002A5EA0;
      *(v33 + 16) = 9;
      swift_willThrow();
    }
  }
}

uint64_t sub_10001B43C(uint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v9 = v4;
    a2();
    swift_allocObject();

    v7 = a4(v10);

    v11 = *(v9 + v5);
    *(v9 + v5) = v7;
  }

  return v7;
}

char *sub_10001B518(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001B564(a1, a2);
  sub_10001B708(&off_1002FFF88);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001B564(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001B694(v5, 0);
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
        v7 = sub_10001B694(v10, 0);
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

void *sub_10001B694(uint64_t a1, uint64_t a2)
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

  sub_100035D04(&qword_10033DF38, &unk_100280F20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_10001B708(uint64_t result)
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

  result = sub_100084F54(result, v12, 1, v3);
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

unint64_t sub_10001B7F4()
{
  v0 = UUID.uuid.getter();
  v1 = UUID.uuid.getter() & 0xFF00 | v0;
  v2 = UUID.uuid.getter() & 0xFF0000;
  v3 = v1 | v2 | UUID.uuid.getter() & 0xFF000000;
  v4 = UUID.uuid.getter() & 0xFF00000000;
  v5 = v4 | UUID.uuid.getter() & 0xFF0000000000;
  v6 = v3 | v5 | UUID.uuid.getter() & 0xFF000000000000;
  return v6 | UUID.uuid.getter() & 0xFF00000000000000;
}

uint64_t sub_10001B8A0(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_100019110(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v30();
      goto LABEL_7;
    }

    v31();
    v27 = *v6;
    v28 = sub_100019110(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_10001BA84(v17, v14, a1, v23);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_10001BA84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_10001BB3C(unint64_t a1)
{
  v2 = v1;
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034DBB8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v19 = v2;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = sub_10001A928(a1);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100017494(v10, v12, &v20);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Sending event %s to MediaRemote", v7, 0xCu);
    sub_10000903C(v8);

    v2 = v19;
  }

  v14 = objc_allocWithZone(PCProximityEvent);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithType:a1 mediaRemoteID:v15 info:0];

  [v16 setExpectsDisplayContext:(a1 < 0xA) & (0x2FAu >> a1)];
  v17 = *(*(v2 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_mediaRemoteProxy);

  sub_10001BD68(v16);
}

void sub_10001BD68(void *a1)
{
  v2 = v1;
  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003439E8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_100017494(0x2865766965636572, 0xEF293A746E657665, &v30);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    *(v8 + 22) = 2080;
    v10 = v2;
    v11 = [v5 mediaRemoteID];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100017494(v12, v14, &v30);

    *(v8 + 24) = v15;
    v2 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: event=%@, mediaRouteID=%s", v8, 0x20u);
    sub_1000030B0(v9);

    swift_arrayDestroy();
  }

  if ([v5 eventType] == 1)
  {
    if (*(v2 + 96))
    {
      oslog = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v16, "Dropping execute event: migration is already underway", v17, 2u);
      }

      return;
    }

    sub_1000F3574(1);
  }

  v18 = v5;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    v23 = [v18 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_100017494(v24, v26, &v30);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Forwarding event to client %s", v21, 0xCu);
    sub_10000903C(v22);
  }

  v28 = *(v2 + 80);

  [v28 receiveEvent:v18];
}

uint64_t sub_10001C1A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001C1EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001C260()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t PCMediaRemoteDisplayContext.description.getter()
{
  v1 = v0;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10026F050;
  _StringGuts.grow(_:)(31);

  v56 = 0xD00000000000001DLL;
  v3 = [v0 mediaRemoteID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000B584(8);

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  *(v2 + 32) = 0xD00000000000001DLL;
  *(v2 + 40) = 0x800000010029AD20;
  v8 = [v1 localizedPrimaryAltText];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = 0x3D7972616D697270;
    sub_10000B584(8);

    v10 = static String._fromSubstring(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v15 = *(v2 + 16);
    v14 = *(v2 + 24);
    if (v15 >= v14 >> 1)
    {
      v2 = sub_100009088((v14 > 1), v15 + 1, 1, v2);
    }

    *(v2 + 16) = v15 + 1;
    v16 = v2 + 16 * v15;
    *(v16 + 32) = 0x3D7972616D697270;
    *(v16 + 40) = 0xE800000000000000;
  }

  v17 = [v1 localizedSecondaryAltText];
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = 0x7261646E6F636573;
    sub_10000B584(8);

    v19 = static String._fromSubstring(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v24 = *(v2 + 16);
    v23 = *(v2 + 24);
    if (v24 >= v23 >> 1)
    {
      v2 = sub_100009088((v23 > 1), v24 + 1, 1, v2);
    }

    *(v2 + 16) = v24 + 1;
    v25 = v2 + 16 * v24;
    *(v25 + 32) = 0x7261646E6F636573;
    *(v25 + 40) = 0xEA00000000003D79;
  }

  v26 = [v1 proxDeviceState];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 playbackState];

    v29 = MRPlaybackState.description.getter(v28);
    v31 = v30;
    _StringGuts.grow(_:)(18);

    v58 = 0xD000000000000010;
    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v34 = *(v2 + 16);
    v33 = *(v2 + 24);
    if (v34 >= v33 >> 1)
    {
      v2 = sub_100009088((v33 > 1), v34 + 1, 1, v2);
    }

    *(v2 + 16) = v34 + 1;
    v35 = v2 + 16 * v34;
    *(v35 + 32) = 0xD000000000000010;
    *(v35 + 40) = 0x800000010029AD40;
  }

  v36 = [v1 selectedDeviceState];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 playbackState];

    v39 = MRPlaybackState.description.getter(v38);
    v41 = v40;
    _StringGuts.grow(_:)(22);

    v59 = 0xD000000000000014;
    v42._countAndFlagsBits = v39;
    v42._object = v41;
    String.append(_:)(v42);

    v44 = *(v2 + 16);
    v43 = *(v2 + 24);
    if (v44 >= v43 >> 1)
    {
      v2 = sub_100009088((v43 > 1), v44 + 1, 1, v2);
    }

    *(v2 + 16) = v44 + 1;
    v45 = v2 + 16 * v44;
    *(v45 + 32) = 0xD000000000000014;
    *(v45 + 40) = 0x800000010029AD60;
  }

  v46 = sub_10001CA90([v1 interactionDirection]);
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50._countAndFlagsBits = v47;
  v50._object = v49;
  String.append(_:)(v50);

  v52 = *(v2 + 16);
  v51 = *(v2 + 24);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_100009088((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 16) = v52 + 1;
  v53 = v2 + 16 * v52;
  *(v53 + 32) = 1030908260;
  *(v53 + 40) = 0xE400000000000000;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v54 = BidirectionalCollection<>.joined(separator:)();

  return v54;
}

uint64_t MRPlaybackState.description.getter(int a1)
{
  if (a1 <= 2)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x646573756170;
      }

      goto LABEL_12;
    }

    v2 = 2036427888;
    return v2 | 0x676E6900000000;
  }

  if (a1 == 3)
  {
    return 0x646570706F7473;
  }

  if (a1 != 4)
  {
    if (a1 != 5)
    {
LABEL_12:
      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      return 0x204E574F4E4B4E55;
    }

    v2 = 1801807219;
    return v2 | 0x676E6900000000;
  }

  return 0x7075727265746E69;
}

__CFString *sub_10001CA2C(unint64_t a1)
{
  if (a1 > 2)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = *(&off_100305260 + a1);
    v2 = *(&off_100305278 + a1);
  }

  v3 = v1;

  return v2;
}

__CFString *sub_10001CA90(unint64_t a1)
{
  if (a1 > 2)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = *(&off_100305290 + a1);
    v2 = *(&off_1003052A8 + a1);
  }

  v3 = v1;

  return v2;
}

unint64_t sub_10001CAF4()
{
  result = qword_10033D8A0;
  if (!qword_10033D8A0)
  {
    sub_100035D4C(&qword_1003397D0, &qword_1002729A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D8A0);
  }

  return result;
}

uint64_t sub_10001CB60(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001CBC0(v1);
  }

  return result;
}

void sub_10001CBC0(void *a1)
{
  v54 = type metadata accessor for OSSignpostID();
  v3 = *(v54 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v54);
  v55 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100339230 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034DBB8);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v56 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0xD000000000000023, 0x80000001002A63A0, &v56);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: context=%@", v10, 0x16u);
    sub_1000097E8(v11, &qword_100339940, &unk_100272C50);

    sub_10000903C(v12);
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  v15 = v7;
  if (v14)
  {
    v53 = v3;
    v16 = [v14 mediaRemoteID];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = *(*(v1 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage) + qword_100346AF8;

    os_unfair_lock_lock(v20);
    v21 = *(v20 + 8);

    v23 = sub_1002134C4(v22, v17, v19);

    os_unfair_lock_unlock(v20);

    if (v23)
    {
      v24 = v15;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v56 = v52;
        *v27 = 136315394;
        v29 = sub_1000092A0();
        v31 = sub_100017494(v29, v30, &v56);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2112;
        *(v27 + 14) = v14;
        *v28 = v14;
        v32 = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "New mrContext for device %s: context=%@", v27, 0x16u);
        sub_1000097E8(v28, &qword_100339940, &unk_100272C50);

        sub_10000903C(v52);
      }

      v33 = v53;
      v34 = v24;
      sub_10001D304(v14);
      sub_100037298(12);
      sub_10001B7F4();
      v35 = v55;
      OSSignpostID.init(_:)();
      static os_signpost_type_t.end.getter();
      if (qword_100338F20 != -1)
      {
        swift_once();
      }

      os_signpost(_:dso:log:name:signpostID:_:_:)();

      (*(v33 + 8))(v35, v54);
      return;
    }

    v42 = v15;
    v55 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v45;
      *v44 = 136315138;
      v46 = [v14 mediaRemoteID];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_100017494(v47, v49, &v56);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v55, v43, "### No device for mediaRemoteID: %s", v44, 0xCu);
      sub_10000903C(v45);

      return;
    }
  }

  else
  {
    v55 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 136315138;
      swift_getObjectType();
      v39 = _typeName(_:qualified:)();
      v41 = sub_100017494(v39, v40, &v56);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v55, v36, "### Unexpected context type: %s", v37, 0xCu);
      sub_10000903C(v38);

      return;
    }
  }

  v51 = v55;
}

uint64_t sub_10001D304(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext);
  v4 = *(v3 + 24);
  *(v3 + 24) = a1;

  v5 = a1;

  sub_10001D430();
  v6 = *(v3 + 24);
  CurrentValueSubject.send(_:)();
}

uint64_t sub_10001D398(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v4 = *(v2 + 24);
    v5 = sub_100035D04(a1, a2);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = v4;
    v9 = v2;
    v3 = CurrentValueSubject.init(_:)();
    v10 = *(v2 + 16);
    *(v9 + 16) = v3;
  }

  return v3;
}

id sub_10001D444@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_10001D450()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_legacyDeliveryModeStateMachine;
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v4 != 0;
  }

  return result;
}

void sub_10001D52C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = [*a1 interactionDirection];
    if (v4 == 1)
    {
      v5 = &selRef_selectedDeviceState;
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_11;
      }

      v5 = &selRef_proxDeviceState;
    }

    v6 = [v3 *v5];
    if (v6)
    {
      v7 = v6;
      [v6 playbackState];
      if ((MRMediaRemotePlaybackStateIsAdvancing() & 1) != 0 || [v7 playerHasPlayedRecently])
      {
        v3 = [objc_allocWithZone(PCMediaActivity) initWithDisplayContext:v3 response:v7];

        goto LABEL_12;
      }
    }

LABEL_11:
    v3 = 0;
  }

LABEL_12:
  *a2 = v3;
}

uint64_t sub_10001D6D4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);

    v4 = *(v3 + 48);
    v5 = v1;

    sub_1001C0488(v1);
  }

  return result;
}

void *sub_10001D7AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_10001D7D0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_10001D824(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10001D920@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10001D94C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10001D9D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10001DA3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100036744(a1);

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SpringState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SpringState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_10001DAC4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_10001DAD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_10001DB28(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001DB3C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001DB74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DC74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_10003A51C(*a1, v3);
  return sub_100038B78(v2, v3);
}

uint64_t sub_10001DD34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_10003878C(v2, v3);
}

uint64_t sub_10001DD74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DDB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DE10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DEC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Optional() - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = (v4 + 56) & ~v4;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v2 - 8);
  if (!(*(v10 + 48))(v0 + v6, 1, v2))
  {
    (*(v10 + 8))(v0 + v6, v2);
  }

  v11 = v4 | v8;
  v12 = (v6 + v5 + v8) & ~v8;
  (*(v7 + 8))(v0 + v12, v1);

  return _swift_deallocObject(v0, v12 + v9, v11 | 7);
}

uint64_t sub_10001E068()
{
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001E0A0()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10001E148()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E180()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_10001E210(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001E224()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E26C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 2))
  {
    v5 = *(v0 + 3);
  }

  v6 = (v3 + 64) & ~v3;
  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v6], v1);

  return _swift_deallocObject(v0, v4 + v6 + 1, v3 | 7);
}

uint64_t sub_10001E34C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_10001E3E8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001E46C()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001E4A4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10001E4EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hash];
  *a2 = result;
  return result;
}

uint64_t sub_10001E520()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_10001E57C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001E5A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E5DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E650()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E688()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001E7A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E7E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E818()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E858()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E8D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E910()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E94C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E98C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E9E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_10001EA40(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001EA5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 40) >= 5uLL)
  {
  }

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001EABC()
{
  if (v0[3] >= 5uLL)
  {
  }

  v1 = v0[4];

  v2 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001EB0C()
{
  v1 = sub_100035D04(&qword_10033E818, qword_100274990);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001EBAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EBEC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10001EC28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EC60()
{
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001EC98()
{
  v1 = v0[8];

  sub_100010708(v0[9], v0[10]);

  return _swift_deallocObject(v0, 88, 7);
}

unsigned __int8 *sub_10001ECE0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 5)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

__n128 sub_10001ED04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001ED18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1001EE0C8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10001ED44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EDB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EDF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001EE50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EE88()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001EF34()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EF70()
{
  v1 = 0xD000000000000012;
  if (*v0 == 1)
  {
    v1 = 0x65756E69746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756E69746E6F63;
  }
}

uint64_t sub_10001EFDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  result = Substring.distance(from:to:)();
  *a2 = result;
  return result;
}

uint64_t sub_10001F024()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F05C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001F130()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F168()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F1A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_10001F20C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10001F2CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F450@<X0>(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEvent(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v7, type metadata accessor for ExperienceEvent);
  result = swift_getEnumCaseMultiPayload();
  if (result != 3)
  {
    result = sub_100097C8C(v7, type metadata accessor for ExperienceEvent);
    goto LABEL_5;
  }

  v9 = *v7;
  if (v9 > 4)
  {
LABEL_5:
    v10 = -258;
    goto LABEL_6;
  }

  v10 = word_100278A1A[v9];
LABEL_6:
  *a2 = v10;
  return result;
}

uint64_t sub_10001F540()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_10001F578()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F5B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F678()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F6B0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 2))
  {
    v5 = *(v0 + 3);
  }

  v6 = (v3 + 64) & ~v3;
  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v6], v1);

  return _swift_deallocObject(v0, v4 + v6 + 1, v3 | 7);
}

uint64_t sub_10001F790()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F7C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F820()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001F870()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F8B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F8F0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001F938()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10001F9E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FA20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FA58()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 2))
  {
    v5 = *(v0 + 3);
  }

  v6 = (v3 + 64) & ~v3;
  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v6], v1);

  return _swift_deallocObject(v0, v4 + v6 + 1, v3 | 7);
}

uint64_t sub_10001FB38()
{
  v1 = *(type metadata accessor for ViewServiceInput(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v13 = *v7;
      if (*v7 == 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v9 = *v7;

          v10 = *(type metadata accessor for NearbySharingInteractionDisplayContext() + 20);
          v11 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
          (*(*(v11 - 8) + 8))(v7 + v10, v11);
        }

        goto LABEL_13;
      }

      v13 = *v7;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v14 = *(v7 + 32);

  v15 = type metadata accessor for ActivityDisplayContext(0);
  v16 = v7 + *(v15 + 32);
  type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v17 = swift_getEnumCaseMultiPayload();
  switch(v17)
  {
    case 2:
      v26 = *(v16 + 8);

      v27 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
      v28 = type metadata accessor for Date();
      v29 = *(v28 - 8);
      v46 = v27;
      v30 = v16 + v27;
      v31 = v28;
      if (!(*(v29 + 48))(v30, 1, v28))
      {
        (*(v29 + 8))(v16 + v46, v31);
      }

      break;
    case 1:
      v19 = *(v16 + 8);

      v45 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
      v20 = *(v45 + 20);
      v21 = type metadata accessor for Date();
      v22 = *(v21 - 8);
      v44 = v20;
      v23 = v16 + v20;
      v24 = v21;
      if (!(*(v22 + 48))(v23, 1, v21))
      {
        (*(v22 + 8))(v16 + v44, v24);
      }

      v25 = *(v16 + *(v45 + 24) + 8);

      break;
    case 0:
      v18 = *(v16 + 8);

      break;
  }

  v7 += *(v15 + 36);
  v32 = swift_getEnumCaseMultiPayload();
  if (v32 == 2)
  {
    v39 = *(v7 + 8);

    v40 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
    v41 = type metadata accessor for Date();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v7 + v40, 1, v41))
    {
      (*(v42 + 8))(v7 + v40, v41);
    }
  }

  else
  {
    if (v32 != 1)
    {
      if (v32)
      {
        goto LABEL_13;
      }

LABEL_8:
      v12 = *(v7 + 8);

      goto LABEL_13;
    }

    v33 = *(v7 + 8);

    v34 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
    v35 = *(v34 + 20);
    v36 = type metadata accessor for Date();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v7 + v35, 1, v36))
    {
      (*(v37 + 8))(v7 + v35, v36);
    }

    v38 = *(v7 + *(v34 + 24) + 8);
  }

LABEL_13:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001FFA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001FFEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1000E62A0(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 98, 7);
}

uint64_t sub_100020064()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002009C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100020144()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002018C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000201C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020204(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000202B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100020360()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020398()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_1000204B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceKillProximitycontrold];
  *a2 = result;
  return result;
}

uint64_t sub_100020500()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002053C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000205F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000206B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000206EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002072C()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v23 = *(v4 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for Optional() - 8);
  v22 = *(v6 + 80);
  v7 = (((v23 + 64) & ~v23) + v5 + v22) & ~v22;
  v8 = *(v1 - 8);
  v21 = *(v8 + 80);
  v9 = (v7 + *(v6 + 64) + v21) & ~v21;
  v10 = *(v8 + 64);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(type metadata accessor for Optional() - 8);
  v13 = *(v12 + 80);
  v19 = v9;
  v14 = (v9 + v10 + v13) & ~v13;
  v20 = *(v12 + 64);
  v15 = *(v0 + 7);

  v16 = *(v4 + 8);
  v16(&v0[(v23 + 64) & ~v23], AssociatedTypeWitness);
  if (!(*(v4 + 48))(&v0[v7], 1, AssociatedTypeWitness))
  {
    v16(&v0[v7], AssociatedTypeWitness);
  }

  (*(v8 + 8))(&v0[v19], v1);
  v17 = *(v11 - 8);
  if (!(*(v17 + 48))(&v0[v14], 1, v11))
  {
    (*(v17 + 8))(&v0[v14], v11);
  }

  return _swift_deallocObject(v0, v14 + v20, v23 | v22 | v21 | v13 | 7);
}

uint64_t sub_100020A94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyPublisher();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Publishers.SetFailureType();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  return swift_getWitnessTable();
}

uint64_t sub_100020C34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_100020C7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100020CB4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020CEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020D5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_100020DC0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100020DD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020E10()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020E48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100020E88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hash];
  *a2 = result;
  return result;
}

uint64_t sub_100020EBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100020F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10002102C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1001044A8(v2, v3);
}

uint64_t sub_100021258()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021290()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000212F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021334()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021374()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000213AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000213E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100021438(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_100021494()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000214CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021504()
{
  v1 = v0[4];

  v2 = v0[16];

  v3 = v0[18];

  v4 = v0[20];

  v5 = v0[23];

  return _swift_deallocObject(v0, 193, 7);
}

uint64_t sub_10002155C()
{
  v1 = v0[11];

  v2 = v0[13];

  v3 = v0[16];

  v4 = v0[18];

  v5 = v0[20];

  v6 = v0[23];

  v7 = v0[40];

  return _swift_deallocObject(v0, 337, 7);
}

uint64_t sub_1000215C4()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[10];

  v4 = v0[12];

  v5 = v0[14];

  v6 = v0[19];

  v7 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002162C()
{
  v1 = v0[11];

  v2 = v0[14];

  v3 = v0[16];

  v4 = v0[19];

  v5 = v0[21];

  v6 = v0[23];

  v7 = v0[28];

  v8 = v0[39];

  return _swift_deallocObject(v0, 329, 7);
}

uint64_t sub_10002169C()
{
  v1 = v0[13];

  v2 = v0[15];

  v3 = v0[20];

  return _swift_deallocObject(v0, 193, 7);
}

uint64_t sub_1000216F4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002172C()
{
  v1 = v0[3];

  v2 = v0[9];

  v3 = v0[12];

  v4 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10002179C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000217D4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002180C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021844()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100021888()
{
  v1 = *(v0 + 16);

  sub_100010708(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000218D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002191C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = nullsub_1(*a1, *(a2 + a3 - 16), *(a2 + a3 - 24), *(a2 + a3 - 8));
}

__n128 sub_100021974(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100021990()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000219C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100021AAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100021B58()
{
  v1 = *(type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v14 = *(v5 + 8);

      v15 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
      v16 = type metadata accessor for Date();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v5 + v15, 1, v16))
      {
        (*(v17 + 8))(v5 + v15, v16);
      }

      break;
    case 1:
      v8 = *(v5 + 8);

      v9 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
      v10 = *(v9 + 20);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v5 + v10, 1, v11))
      {
        (*(v12 + 8))(v5 + v10, v11);
      }

      v13 = *(v5 + *(v9 + 24) + 8);

      break;
    case 0:
      v7 = *(v5 + 8);

      break;
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100021D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 24);
  v4 = *(a2 + a3 - 8);
  return dispatch thunk of Identifiable.id.getter();
}

__n128 sub_100021DBC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100021E14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021E4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100004AA8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100021E78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021EB0()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100021FD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022010()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 16))
  {
    v5 = *(v0 + 24);
  }

  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = *(v0 + v4 + 8);

  if (*(v0 + v6))
  {
    v10 = *(v0 + v6 + 8);
  }

  return _swift_deallocObject(v0, v6 + 16, v2 | 7);
}

uint64_t sub_10002218C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_1000221EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100022200()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022238()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 2))
  {
    v5 = *(v0 + 3);
  }

  v6 = (v3 + 64) & ~v3;
  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v6], v1);

  return _swift_deallocObject(v0, v4 + v6 + 1, v3 | 7);
}

uint64_t sub_100022318()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022350()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022394()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_1000223DC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10002240C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022444()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002247C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000224BC()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000225DC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022630()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022668()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000226A0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 2))
  {
    v5 = *(v0 + 3);
  }

  v6 = (v3 + 64) & ~v3;
  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v6], v1);

  return _swift_deallocObject(v0, v4 + v6 + 1, v3 | 7);
}

uint64_t sub_100022780()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000228A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022930()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100035D04(&qword_100348030, qword_1002804F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_100022A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100035D04(&qword_100348030, qword_1002804F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_100022B08@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 2;
  return result;
}

uint64_t sub_100022B34@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 5;
  return result;
}

uint64_t sub_100022B64@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 0;
  *(a3 + 8) = 1;
  return result;
}

uint64_t sub_100022B94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100010708(a1, a2);
  *a3 = 0;
  *(a3 + 4) = 1;
  return result;
}

uint64_t sub_100022BD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022C28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022C78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022CC0()
{
  v1 = sub_100035D04(&qword_100348BE0, &unk_100283010);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100022D54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100022DA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100022DDC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022E44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022E80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022EB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022EF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022F3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022F78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022FB0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022FF0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

__n128 sub_100023054(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100023074()
{
  v1 = sub_100035D04(&qword_1003492C0, &unk_100283728);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100023108()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023158()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000231A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000231D8()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000232C0()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v10 = *(v0 + v7);

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000233D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023410()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023448()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023480()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000234D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023508()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023540()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100023580()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000235C8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100023610()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023648()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_1000236BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002370C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023744()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100023784()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 2))
  {
    v5 = *(v0 + 3);
  }

  v6 = (v3 + 64) & ~v3;
  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v6], v1);

  return _swift_deallocObject(v0, v4 + v6 + 1, v3 | 7);
}

uint64_t sub_100023864()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002389C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000238D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023910()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023948()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100023A68@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return v2;
}

uint64_t sub_100023A84()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 2))
  {
    v5 = *(v0 + 3);
  }

  v6 = (v3 + 64) & ~v3;
  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v6], v1);

  return _swift_deallocObject(v0, v4 + v6 + 1, v3 | 7);
}

uint64_t sub_100023B64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023C20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100023C60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023C98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100023DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100023E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityDisplayContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = _s8CardInfoOMa();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100023FC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDisplayContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  else
  {
    v11 = _s8CardInfoOMa();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000240E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ShareableContentType(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10002419C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for ShareableContentType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100024240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000242AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10002432C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024364()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000243A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000243F0()
{
  v1 = type metadata accessor for ActivityDisplayContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v34 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 32);

  v7 = v0 + v3 + *(v1 + 32);
  type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v16 = *(v7 + 8);

      v17 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
      v18 = type metadata accessor for Date();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(v7 + v17, 1, v18))
      {
        (*(v19 + 8))(v7 + v17, v18);
      }

      break;
    case 1:
      v10 = *(v7 + 8);

      v11 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
      v12 = *(v11 + 20);
      v13 = type metadata accessor for Date();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(v7 + v12, 1, v13))
      {
        (*(v14 + 8))(v7 + v12, v13);
      }

      v15 = *(v7 + *(v11 + 24) + 8);

      v3 = (v2 + 24) & ~v2;
      break;
    case 0:
      v9 = *(v7 + 8);

      break;
  }

  v20 = v5 + *(v1 + 36);
  v21 = swift_getEnumCaseMultiPayload();
  switch(v21)
  {
    case 2:
      v29 = *(v20 + 8);

      v30 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
      v31 = type metadata accessor for Date();
      v32 = *(v31 - 8);
      if (!(*(v32 + 48))(v20 + v30, 1, v31))
      {
        (*(v32 + 8))(v20 + v30, v31);
      }

      break;
    case 1:
      v23 = *(v20 + 8);

      v24 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
      v25 = *(v24 + 20);
      v26 = type metadata accessor for Date();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(v20 + v25, 1, v26))
      {
        (*(v27 + 8))(v20 + v25, v26);
      }

      v28 = *(v20 + *(v24 + 24) + 8);

      break;
    case 0:
      v22 = *(v20 + 8);

      break;
  }

  return _swift_deallocObject(v0, ((v34 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000247AC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000247EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024824()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002486C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000248A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100024928()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024960()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100024A88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024AC0()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 16))
  {
    v5 = *(v0 + 24);
  }

  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = *(v0 + v4 + 8);

  if (*(v0 + v6))
  {
    v10 = *(v0 + v6 + 8);
  }

  return _swift_deallocObject(v0, v6 + 16, v2 | 7);
}

uint64_t sub_100024C3C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024C74()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024CAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024D2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024D64()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100024E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_100024E8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100024EA0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100024ED8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024F10()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100024FE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 48) != 1)
  {

    v2 = *(v0 + 48);
  }

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10002504C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100025118()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  if (v0[6] >= 5uLL)
  {
  }

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100025170()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000251C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100025238()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 2))
  {
    v5 = *(v0 + 3);
  }

  v6 = (v3 + 64) & ~v3;
  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v6], v1);

  return _swift_deallocObject(v0, v4 + v6 + 1, v3 | 7);
}

uint64_t sub_100025318()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025350()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025388()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000254A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000254E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002551C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100025570(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NoticeTapAction(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for NoticeContent(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100025694(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for NoticeTapAction(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for NoticeContent(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000257C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ShareableContent(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002586C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ShareableContent(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100025918()
{
  v1 = 0x65766965636572;
  if (*v0 != 1)
  {
    v1 = 1684956531;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_10002596C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000259A4()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1000259DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NoticeContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100025AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NoticeContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_100025B64()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100025BFC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100025C3C()
{
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100025C74()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100025D30()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 2))
  {
    v5 = *(v0 + 3);
  }

  v6 = (v3 + 64) & ~v3;
  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v6], v1);

  return _swift_deallocObject(v0, v4 + v6 + 1, v3 | 7);
}

uint64_t sub_100025E10()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025E48()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100025ECC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ProxControlDemoBridgeServer();
  sub_1002384E0(&qword_10034F8B8, 255, type metadata accessor for ProxControlDemoBridgeServer);
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100025F4C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025F84()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100025FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 2)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10002607C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_100026138()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026170()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000261B8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000261F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026230()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026268()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000262A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000262E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100026328(uint64_t a1)
{
  result = sub_100245330(&qword_100350920, type metadata accessor for ExperienceEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100026388()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000263C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100035D04(&qword_1003511F8, &unk_100296750);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100026484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100035D04(&qword_1003511F8, &unk_100296750);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100026534()
{
  v1 = sub_100035D04(&qword_1003512B0, &qword_1002967E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100026688()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000266C8()
{
  v1 = sub_100035D04(&qword_1003512A8, &qword_1002967E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000267C4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002680C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002689C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100026910(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();
  return sub_100085448(a1, v4);
}

uint64_t sub_100026988()
{
  if (*v0)
  {
    return 0x7373696D736964;
  }

  else
  {
    return 0x746E6573657270;
  }
}

uint64_t sub_1000269BC()
{
  if (*v0)
  {
    result = 0x656C746974;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

double sub_100026A54(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double sub_100026A80(double *a1, double *a2, double result, double a4, double a5)
{
  if (a1)
  {
    v5 = sqrt(result * a4);
    *a1 = a5 / (v5 + v5);
  }

  if (a2)
  {
    result = 6.28318531 / sqrt(a4 / result);
    *a2 = result;
  }

  return result;
}

double sub_100026AB8(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

double sub_100026AE8(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a4 / result);
  v6 = 6.28318531 / (6.28318531 / v5) * (6.28318531 / (6.28318531 / v5));
  if (a1)
  {
    *a1 = v6;
  }

  if (a2)
  {
    v7 = sqrt(result * a4);
    v8 = sqrt(v6);
    result = a5 / (v7 + v7) * (v8 + v8);
    *a2 = result;
  }

  return result;
}

__n128 sub_100026B34@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D3>, double a5@<D4>)
{
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = 0u;
  v9 = a1 + 16;
  *a1 = a2;
  *(a1 + 8) = a3;
  v23 = 0.0;
  v24 = 0.0;
  sub_100026AB8(&v24, &v23, 1.0, 0.5);
  sub_100027CC8(v9, a4, 0.0, a4, v24, v23);
  sub_100027CC8(&v16, a5, 0.0, a5, v24, v23);
  v10 = v21;
  *(a1 + 192) = v20;
  *(a1 + 208) = v10;
  *(a1 + 224) = v22;
  v11 = v17;
  *(a1 + 128) = v16;
  *(a1 + 144) = v11;
  v12 = v19;
  *(a1 + 160) = v18;
  *(a1 + 176) = v12;
  sub_100027CC8(&v16, a2, 0.0, a2, v24, v23);
  v13 = v21;
  *(a1 + 304) = v20;
  *(a1 + 320) = v13;
  *(a1 + 336) = v22;
  v14 = v17;
  *(a1 + 240) = v16;
  *(a1 + 256) = v14;
  result = v19;
  *(a1 + 272) = v18;
  *(a1 + 288) = result;
  return result;
}

uint64_t sub_100026C54(uint64_t result, double a2)
{
  *(result + 280) = a2;
  *(result + 240) = a2;
  *(result + 248) = 0;
  return result;
}

void sub_100026C64(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 240) = a3;
    *(a1 + 248) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    sub_100026AB8(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 264) = v7;
    *(a1 + 272) = v5;
    a3 = a2;
  }

  *(a1 + 280) = a3;
}

void sub_100026CD0(uint64_t a1, double a2, double a3, double a4)
{
  if (a4 == 0.0)
  {
    *(a1 + 280) = a2;
  }

  else
  {
    sub_100026C64(a1, a2, a4);
    a2 = a3;
  }

  *(a1 + 240) = a2;
  *(a1 + 248) = 0;
}

uint64_t sub_100026D24(uint64_t result, double a2)
{
  *(result + 56) = a2;
  *(result + 16) = a2;
  *(result + 24) = 0;
  return result;
}

void sub_100026D34(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    sub_100026AB8(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 40) = v7;
    *(a1 + 48) = v5;
  }

  *(a1 + 56) = a2;
}

uint64_t sub_100026D9C(uint64_t result, double a2)
{
  *(result + 168) = a2;
  *(result + 128) = a2;
  *(result + 136) = 0;
  return result;
}

void sub_100026DAC(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 128) = a2;
    *(a1 + 136) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    sub_100026AB8(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 152) = v7;
    *(a1 + 160) = v5;
  }

  *(a1 + 168) = a2;
}

double sub_100026E14@<D0>(void *__src@<X0>, double *a2@<X8>, double a3@<D0>)
{
  memcpy(a2, __src, 0x170uLL);
  v6 = *(__src + 6);
  v39 = *(__src + 5);
  v40 = v6;
  v41 = *(__src + 7);
  v7 = *(__src + 2);
  v35 = *(__src + 1);
  v36 = v7;
  v8 = *(__src + 4);
  v37 = *(__src + 3);
  v38 = v8;
  sub_100027DF0(&v35, (a2 + 2), a3);
  v9 = *(a2 + 13);
  v32 = *(a2 + 12);
  v33 = v9;
  v34 = *(a2 + 14);
  v10 = *(a2 + 9);
  v28 = *(a2 + 8);
  v29 = v10;
  v11 = *(a2 + 11);
  v30 = *(a2 + 10);
  v31 = v11;
  sub_100027DF0(&v28, &v35, a3);
  v12 = v40;
  *(a2 + 12) = v39;
  *(a2 + 13) = v12;
  *(a2 + 14) = v41;
  v13 = v36;
  *(a2 + 8) = v35;
  *(a2 + 9) = v13;
  v14 = v38;
  *(a2 + 10) = v37;
  *(a2 + 11) = v14;
  v15 = *(a2 + 20);
  v32 = *(a2 + 19);
  v33 = v15;
  v34 = *(a2 + 21);
  v16 = *(a2 + 16);
  v28 = *(a2 + 15);
  v29 = v16;
  v17 = *(a2 + 18);
  v30 = *(a2 + 17);
  v31 = v17;
  sub_100027DF0(&v28, &v35, a3);
  v18 = v40;
  *(a2 + 19) = v39;
  *(a2 + 20) = v18;
  *(a2 + 21) = v41;
  v19 = v36;
  *(a2 + 15) = v35;
  *(a2 + 16) = v19;
  v20 = v38;
  *(a2 + 17) = v37;
  *(a2 + 18) = v20;
  *&v20 = *a2;
  *&v19 = a2[1];
  v21 = a2[2];
  v22 = a2[16];
  v23 = a2[30];
  v24 = *(a2 + 44);
  v25 = *(a2 + 45);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  sub_100027D28(&v35, *&v20, *&v19, v23, v21, v22);
  *&v38 = v24;
  *(&v38 + 1) = v25;
  v27[4] = v39;
  v27[5] = v40;
  v27[6] = v41;
  v27[0] = v35;
  v27[1] = v36;
  v27[2] = v37;
  v27[3] = v38;
  sub_100027DF0(v27, &v28, a3);
  result = *&v28;
  *a2 = v28;
  return result;
}

__n128 sub_100026FC8@<Q0>(__n128 *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  sub_100027D28(a2, a1->n128_f64[0], a1->n128_f64[1], a1[15].n128_f64[0], a1[1].n128_f64[0], a1[8].n128_f64[0]);
  result = a1[22];
  a2[3] = result;
  return result;
}

BOOL sub_10002701C(void *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = a1[44];
  v4 = a1[45];
  v5 = (a1 + 2);
  v6 = *(a1 + 2);
  v7 = (a1 + 16);
  v8 = *(a1 + 16);
  v9 = (a1 + 30);
  v10 = *(a1 + 30);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  sub_100027D28(&v28, v1, v2, v10, v6, v8);
  *&v31 = v3;
  *(&v31 + 1) = v4;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v24 = v31;
  result = sub_100027CF4(&v21);
  if (result)
  {
    v12 = v9[5];
    v25 = v9[4];
    v26 = v12;
    v27 = v9[6];
    v13 = v9[1];
    v21 = *v9;
    v22 = v13;
    v14 = v9[3];
    v23 = v9[2];
    v24 = v14;
    result = sub_100027CF4(&v21);
    if (result)
    {
      v15 = v5[5];
      v25 = v5[4];
      v26 = v15;
      v27 = v5[6];
      v16 = v5[1];
      v21 = *v5;
      v22 = v16;
      v17 = v5[3];
      v23 = v5[2];
      v24 = v17;
      result = sub_100027CF4(&v21);
      if (result)
      {
        v18 = v7[5];
        v25 = v7[4];
        v26 = v18;
        v27 = v7[6];
        v19 = v7[1];
        v21 = *v7;
        v22 = v19;
        v20 = v7[3];
        v23 = v7[2];
        v24 = v20;
        return sub_100027CF4(&v21);
      }
    }
  }

  return result;
}

double sub_100027160(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (1.0 - 1.0 / (a4 * ((a1 - a2) / a3) + 1.0)) * a3;
}

double sub_10002719C(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (-1.0 / ((a1 - a2) / a3 + -1.0) + -1.0) / a4 * a3;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  if (dword_100338D80 <= 50 && (dword_100338D80 != -1 || _LogCategory_Initialize()))
  {
    sub_10025F638();
  }

  if ((_set_user_dir_suffix() & 1) == 0 && dword_100338D80 <= 90 && (dword_100338D80 != -1 || _LogCategory_Initialize()))
  {
    sub_10025F658();
  }

  v5 = NSTemporaryDirectory();
  v6 = UIApplicationMain(a1, a2, @"Application", @"Application");
  objc_autoreleasePoolPop(v4);
  return v6;
}

int64x2_t sub_100027CC8@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a4;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 48) = 0u;
  *(a1 + 64) = result;
  return result;
}

int64x2_t sub_100027D28@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v13 = 0;
  v14 = 0;
  sub_100026AB8(&v14, &v13, a5, a6);
  v11 = v13;
  v10 = v14;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = a4;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 48) = 0u;
  *(a1 + 64) = result;
  return result;
}

double sub_100027DB0(uint64_t a1, double a2, double a3)
{
  v6 = 0;
  v7 = 0.0;
  sub_100026AB8(&v7, &v6, a2, a3);
  v5 = v6;
  result = v7;
  *(a1 + 24) = v7;
  *(a1 + 32) = v5;
  return result;
}

void sub_100027DF0(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 40);
  if (vabdd_f64(*a1, v6) <= *(a1 + 48) && fabs(v5) <= *(a1 + 56))
  {
    v27 = *(a1 + 80);
    *(a2 + 64) = *(a1 + 64);
    *(a2 + 80) = v27;
    *(a2 + 96) = *(a1 + 96);
    v28 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v28;
    v29 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v29;
    return;
  }

  v7 = *a1 - v6;
  v8 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v8;
  v9 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v9;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v33 = v10;
  v34 = v6;
  v32 = v11;
  if (v10 == *(a1 + 64) && v11 == *(a1 + 72))
  {
    v12 = *(a1 + 80);
    v13 = *(a1 + 88);
    v15 = *(a1 + 96);
    v35 = *(a1 + 104);
    v14 = -v12;
  }

  else
  {
    v12 = v11 * 0.5;
    v13 = sqrt(v10);
    v14 = -(v11 * 0.5);
    v15 = sqrt(v13 * v13 - v12 * v12);
    v35 = sqrt(v12 * v12 - v13 * v13);
  }

  v16 = exp(v14 * a3);
  v17 = v16;
  v18 = v5 + v12 * v7;
  if (v12 >= v13)
  {
    if (v12 <= v13)
    {
      v21 = v7 + v18 * a3;
      v26 = v21 * (v16 * v14) + v16 * v18;
      goto LABEL_13;
    }

    v23 = v35 * a3;
    __x = v35 * a3;
    v24 = v18 / v35;
    v31 = cosh(v23);
    v25 = sinh(__x);
    v21 = v24 * v25 + v7 * v31;
    v22 = v35 * (v24 * v31) + v7 * v25 * v35;
  }

  else
  {
    v19 = v18 / v15;
    v20 = __sincos_stret(v15 * a3);
    v21 = v20.__sinval * v19 + v7 * v20.__cosval;
    v22 = v15 * (v20.__cosval * v19) + -(v20.__sinval * v7) * v15;
  }

  v26 = v17 * v14 * v21 + v17 * v22;
LABEL_13:
  *a2 = v34 + v17 * v21;
  *(a2 + 8) = v26;
  *(a2 + 64) = v33;
  *(a2 + 72) = v32;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15;
  *(a2 + 104) = v35;
}

uint64_t sub_100027FC0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100338DF8);
  sub_100003078(v0, qword_100338DF8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100028040(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10024D394(_swiftEmptyArrayStorage);
  v1[6] = &_swiftEmptySetSingleton;
  v1[3] = v4;
  v1[4] = _swiftEmptyDictionarySingleton;
  v1[5] = _swiftEmptyDictionarySingleton;
  if (qword_100338DF0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_100338DF8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Init", v8, 2u);
    }

    v2[2] = a1;
    v21 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage;
    v22[0] = *(*(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage) + 32);

    sub_100035D04(&qword_100339828, &unk_100270300);
    sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300);
    v22[0] = Publisher.eraseToAnyPublisher()();
    swift_allocObject();
    swift_weakInit();

    sub_100035D04(&qword_100339838, &qword_100271F10);
    sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v22[0] = *(*(a1 + v21) + 48);
    v22[0] = Publisher.eraseToAnyPublisher()();
    swift_allocObject();
    swift_weakInit();

    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v10 = *(a1 + v21);
    __chkstk_darwin(v9);
    type metadata accessor for HandoffDevice();
    type metadata accessor for UUID();
    sub_100036094(&qword_100339848, &type metadata accessor for UUID);
    swift_getKeyPath();
    v11 = v10 + qword_100346AF8;
    os_unfair_lock_lock((v10 + qword_100346AF8));
    v22[0] = *(v11 + 8);

    swift_getAtKeyPath();

    v12 = v22[5];
    os_unfair_lock_unlock(v11);

    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

    v14 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

LABEL_9:
    if ((v14 & 0x4000000000000000) != 0)
    {
LABEL_22:
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (!v17)
      {
LABEL_23:

        return v2;
      }

      goto LABEL_11;
    }

    v17 = *(v14 + 16);
    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_11:
    v18 = 0;
    a1 = v14 & 0xC000000000000001;
    while (a1)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_19;
      }

LABEL_15:
      sub_100028580(v19);

      ++v18;
      if (v20 == v17)
      {
        goto LABEL_23;
      }
    }

    if (v18 >= *(v14 + 16))
    {
      goto LABEL_20;
    }

    v19 = *(v14 + 8 * v18 + 32);

    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_15;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v14 = sub_100009194(*(v12 + 16), 0);
  v15 = sub_100009A04(v22, v14 + 32, v13);
  result = sub_100004F98();
  if (v15 == v13)
  {
    if (v14 < 0)
    {
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100028580(uint64_t a1)
{
  v98 = sub_100035D04(&qword_100339850, &qword_100270358);
  v96 = *(v98 - 8);
  v2 = *(v96 + 64);
  __chkstk_darwin(v98);
  v94 = &v82 - v3;
  v99 = sub_100035D04(&qword_100339858, &qword_100270360);
  v97 = *(v99 - 8);
  v4 = *(v97 + 64);
  __chkstk_darwin(v99);
  v95 = &v82 - v5;
  v6 = sub_100035D04(&qword_100339860, &qword_100270368);
  v101 = *(v6 - 8);
  v102 = v6;
  v7 = *(v101 + 64);
  __chkstk_darwin(v6);
  v100 = &v82 - v8;
  v90 = sub_100035D04(&qword_100339868, &qword_100270370);
  v88 = *(v90 - 8);
  v9 = *(v88 + 64);
  __chkstk_darwin(v90);
  v86 = &v82 - v10;
  v91 = sub_100035D04(&qword_100339870, &qword_100270378);
  v89 = *(v91 - 8);
  v11 = *(v89 + 64);
  __chkstk_darwin(v91);
  v87 = &v82 - v12;
  v13 = sub_100035D04(&qword_100339878, &qword_100270380);
  v111 = *(v13 - 8);
  v112 = v13;
  v14 = *(v111 + 64);
  v15 = __chkstk_darwin(v13);
  v93 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v110 = &v82 - v17;
  v18 = sub_100035D04(&unk_100339880, &qword_100270388);
  v108 = *(v18 - 8);
  v109 = v18;
  v19 = *(v108 + 64);
  v20 = __chkstk_darwin(v18);
  v92 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v107 = &v82 - v22;
  v23 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v82 - v25;
  v27 = sub_100035D04(&qword_100339890, &qword_100270398);
  v82 = *(v27 - 8);
  v28 = *(v82 + 64);
  __chkstk_darwin(v27);
  v30 = &v82 - v29;
  v84 = sub_100035D04(&qword_100339898, &qword_1002703A0);
  v83 = *(v84 - 8);
  v31 = *(v83 + 64);
  __chkstk_darwin(v84);
  v33 = &v82 - v32;
  v34 = sub_100035D04(&qword_1003398A0, &qword_1002703A8);
  v105 = *(v34 - 8);
  v106 = v34;
  v35 = *(v105 + 64);
  v36 = __chkstk_darwin(v34);
  v85 = &v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v104 = &v82 - v38;
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100003078(v39, qword_100338DF8);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  v42 = os_log_type_enabled(v40, v41);
  v103 = a1;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *v43 = 136315394;
    *(v43 + 4) = sub_100017494(0x3A5F28646E756F66, 0xE900000000000029, &v115);
    *(v43 + 12) = 2080;
    v44 = sub_1000092A0();
    v46 = sub_100017494(v44, v45, &v115);

    *(v43 + 14) = v46;
    a1 = v103;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s: device=%s", v43, 0x16u);
    swift_arrayDestroy();
  }

  v115 = sub_10006E404();
  sub_100035D04(&qword_1003398A8, &unk_1002703B0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10026F050;
  v48 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);
  v49 = *(v48 + 24);

  CurrentValueSubject.value.getter();
  v50 = v116;
  if (v116 == 6)
  {
    v51 = *(v48 + 16);
    CurrentValueSubject.value.getter();

    v50 = v114;
  }

  else
  {
  }

  *(v47 + 32) = v50;
  sub_100035D04(&qword_1003398B0, &qword_100273280);
  sub_10000E244(&qword_1003398B8, &qword_1003398B0, &qword_100273280);
  Publisher.prepend(_:)();

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v52 = qword_10038B5B8;
  v115 = qword_10038B5B8;
  v53 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v53 - 8) + 56))(v26, 1, 1, v53);
  sub_100035CB8();
  sub_10000E244(&unk_1003398C0, &qword_100339890, &qword_100270398);
  sub_100036094(&qword_10034B420, sub_100035CB8);
  v54 = v52;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v26, &qword_10034C680, &qword_100270390);

  (*(v82 + 8))(v30, v27);
  v55 = swift_allocObject();
  v56 = v103;
  *(v55 + 16) = v103;
  *(v55 + 24) = 1;
  sub_10000E244(&unk_1003398D0, &qword_100339898, &qword_1002703A0);

  v57 = v104;
  v58 = v84;
  Publisher.map<A>(_:)();

  (*(v83 + 8))(v33, v58);
  v59 = *(v113 + 16);
  v115 = sub_100140E18();

  sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0);
  v60 = v107;
  Publisher.map<A>(_:)();

  swift_beginAccess();
  sub_100035D04(&qword_1003398E8, &qword_1002703C8);
  v61 = v86;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000E244(&qword_1003398F0, &qword_100339868, &qword_100270370);

  v62 = v87;
  v63 = v90;
  Publisher.compactMap<A>(_:)();

  (*(v88 + 8))(v61, v63);
  sub_10000E244(&qword_1003398F8, &qword_100339870, &qword_100270378);
  v64 = v110;
  v65 = v91;
  Publisher.prepend(_:)();
  (*(v89 + 8))(v62, v65);
  v91 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  (*(v108 + 16))(v92, v60, v109);
  (*(v105 + 16))(v85, v57, v106);
  (*(v111 + 16))(v93, v64, v112);
  v115 = *(v56 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__isHandoffV1Suppressed);

  sub_100035D04(&qword_100339900, &unk_1002703D0);
  sub_10000E244(&qword_100339908, &unk_100339880, &qword_100270388);
  sub_10000E244(&qword_100339910, &qword_1003398A0, &qword_1002703A8);
  sub_10000E244(&qword_100339918, &qword_100339878, &qword_100270380);
  sub_10000E244(&qword_100339920, &qword_100339900, &unk_1002703D0);
  v66 = v94;
  v67 = v109;
  v68 = v106;
  v69 = v112;
  Publishers.CombineLatest4.init(_:_:_:_:)();
  sub_10000E244(&qword_100339928, &qword_100339850, &qword_100270358);
  v70 = v95;
  v71 = v98;
  Publisher.map<A>(_:)();
  (*(v96 + 8))(v66, v71);
  sub_10000E244(&qword_100339930, &qword_100339858, &qword_100270360);
  v72 = v99;
  v73 = v100;
  Publisher<>.removeDuplicates()();
  (*(v97 + 8))(v70, v72);
  v74 = swift_allocObject();
  v75 = v113;
  swift_weakInit();
  v76 = swift_allocObject();
  *(v76 + 16) = v56;
  *(v76 + 24) = v74;
  sub_10000E244(&qword_100339938, &qword_100339860, &qword_100270368);

  v77 = v102;
  v78 = Publisher<>.sink(receiveValue:)();

  (*(v101 + 8))(v73, v77);
  swift_beginAccess();
  v79 = *(v75 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114 = *(v75 + 40);
  *(v75 + 40) = 0x8000000000000000;
  sub_10004CE14(v78, v56 + v91, isUniquelyReferenced_nonNull_native);
  *(v75 + 40) = v114;
  swift_endAccess();
  (*(v111 + 8))(v110, v69);
  (*(v108 + 8))(v107, v67);
  return (*(v105 + 8))(v104, v68);
}

uint64_t sub_100029698(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_10002970C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_100338DF8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v2;
    v19[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0x293A5F2874736F6CLL, 0xE800000000000000, v19);
    *(v10 + 12) = 2080;
    v12 = sub_1000092A0();
    v14 = sub_100017494(v12, v13, v19);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: device=%s", v10, 0x16u);
    swift_arrayDestroy();
    v2 = v18;
  }

  sub_10002A688(a1);
  v15 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  v16 = *(v3 + 16);
  v16(v6, a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v2);
  swift_beginAccess();
  sub_1001CF58C(0, v6);
  swift_endAccess();
  v16(v6, a1 + v15, v2);
  swift_beginAccess();
  sub_1001CF58C(0, v6);
  return swift_endAccess();
}

uint64_t sub_1000299CC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

void sub_100029A24(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W2>, BOOL *a3@<X8>)
{
  v4 = *a1;
  if (qword_100338DF0 != -1)
  {
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  v5 = a2;
  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100338DF8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_1000092A0();
    v12 = sub_100017494(v10, v11, &v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (v4 == 5)
    {
      v13 = 0xE300000000000000;
      v14 = 7104878;
    }

    else
    {
      v14 = String.init<A>(describing:)();
      v13 = v15;
    }

    v16 = sub_100017494(v14, v13, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s New region: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (v4 == 5)
  {
    v17 = 0;
  }

  else
  {
    v17 = v4;
  }

  *a3 = v17 >= v5;
}

void sub_100029C14(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*a1)
  {
    v3 = *(*a1 + 24);

    v4 = static UUID.== infix(_:_:)();
  }

  else
  {
    v4 = 0;
  }

  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100338DF8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315394;
    v10 = sub_1000092A0();
    v12 = sub_100017494(v10, v11, &v13);

    *(v8 + 4) = v12;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s New deviceIsInActiveSession: %{BOOL}d", v8, 0x12u);
    sub_10000903C(v9);
  }

  *a2 = v4 & 1;
}

void sub_100029DCC(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = *(a1 + 32);
  v5 = 6;
  if (v4 <= 3)
  {
    if (*(a1 + 32) <= 1u)
    {
      if (*(a1 + 32))
      {
        v5 = 4;
      }

      goto LABEL_14;
    }

    if (v4 != 2)
    {
      LOBYTE(v3) = 0;
      goto LABEL_21;
    }

LABEL_12:
    v5 = 1;
    goto LABEL_14;
  }

  if (*(a1 + 32) <= 5u)
  {
    if (v4 == 4)
    {
      v5 = 3;
    }

    else
    {
      v5 = 8;
    }

    goto LABEL_14;
  }

  if (v4 != 6)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100338DF8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_1000092A0();
    v12 = sub_100017494(v10, v11, &v18);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_10001A80C(v5);
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100017494(v14, v16, &v18);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s New legacyEvent: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if ((v5 - 2) > 6)
  {
    LOBYTE(v3) = 2;
  }

  else
  {
    v3 = 0x20202010100uLL >> (8 * (v5 - 2));
  }

LABEL_21:
  *a2 = v3;
}

_BYTE *sub_10002A024@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  if (result[3] == 1)
  {
    v2 = *result | result[1];
  }

  else
  {
    v2 = result[2];
  }

  *a2 = v2 & 1;
  return result;
}

uint64_t sub_10002A050(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100338DF8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    v9 = sub_1000092A0();
    v11 = sub_100017494(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s New shouldPrewarm: %{BOOL}d", v7, 0x12u);
    sub_10000903C(v8);
  }

  if (v3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v13 = *(a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__isHandoffV1Suppressed);
    v14 = *(v13 + 24);

    CurrentValueSubject.value.getter();
    v15 = v17;
    if (v17 == 2)
    {
      v16 = *(v13 + 16);
      CurrentValueSubject.value.getter();

      v15 = v18;
    }

    else
    {
    }

    sub_10002A27C(a2, v15 & 1);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_10002A688(a2);
  }
}

uint64_t sub_10002A27C(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100338DF8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100017494(0xD000000000000017, 0x8000000100297700, v27);
    *(v9 + 12) = 2080;
    v10 = sub_1000092A0();
    v12 = sub_100017494(v10, v11, v27);

    *(v9 + 14) = v12;
    *(v9 + 22) = 1024;
    *(v9 + 24) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: device=%s, needsAssets=%{BOOL}d", v9, 0x1Cu);
    swift_arrayDestroy();
  }

  v13 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  swift_beginAccess();
  if (!*(*(v2 + 24) + 16) || (v14 = *(v2 + 24), , sub_100019110(a1 + v13), v16 = v15, result = , (v16 & 1) == 0))
  {
    if (a2)
    {
      v18 = *(*(v2 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_assetManager);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v19 = sub_1000BDC5C();
      v21 = v20;

      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19;
      }

      sub_1001FAB30(v22);
    }

    v23 = *(v2 + 16);
    sub_10001B4E0();
    sub_10001AEA0(a1);

    swift_beginAccess();

    v24 = *(v3 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_10001B874(a1, a1 + v13, isUniquelyReferenced_nonNull_native);
    *(v3 + 24) = v26;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10002A688(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338DF0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100338DF8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v7;
    v24[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0x2866664F6C6F6F63, 0xEB00000000293A5FLL, v24);
    *(v11 + 12) = 2080;
    v13 = sub_1000092A0();
    v15 = sub_100017494(v13, v14, v24);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: device=%s", v11, 0x16u);
    swift_arrayDestroy();
    v7 = v23;
  }

  result = swift_beginAccess();
  if (*(*(v1 + 24) + 16))
  {
    v17 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    v18 = *(v1 + 24);

    sub_100019110(a1 + v17);
    v20 = v19;

    if (v20)
    {
      v21 = *(v1 + 16);
      sub_10001B4E0();
      sub_100208DEC(a1);

      (*(v4 + 16))(v7, a1 + v17, v3);
      swift_beginAccess();
      sub_1001CF5CC(0, v7);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t variable initialization expression of StateMachine2.outputContextSubject()
{
  type metadata accessor for OutputEventContext();
  type metadata accessor for PassthroughSubject();
  return PassthroughSubject.__allocating_init()();
}

uint64_t sub_10002A9D8()
{
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  return PassthroughSubject.__allocating_init()();
}

char *sub_10002AA3C(int a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v104[0] = a4;
  v101 = a2;
  v8 = *v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v98 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v103 = &v87 - v15;
  v16 = __chkstk_darwin(v14);
  v96 = &v87 - v17;
  v18 = __chkstk_darwin(v16);
  v97 = &v87 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v87 - v21;
  __chkstk_darwin(v20);
  v24 = &v87 - v23;

  v25 = *(*v5 + 104);
  v26 = sub_100035D04(&unk_100339810, &qword_1002702E8);
  (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
  v27 = *(*v5 + 112);
  *&v5[v27] = 0;
  v100 = *(*v5 + 120);
  v5[v100] = 2;
  v28 = &v5[*(*v5 + 128)];
  *v28 = 0;
  *(v28 + 1) = 0;
  v102 = v28;
  *&v5[*(*v5 + 136)] = 0;
  *&v5[*(*v5 + 152)] = 0;
  *&v108 = v8;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v29 = *(*v5 + 144);
  (*(v10 + 32))(&v5[v29], v24, v9);
  if (!a3)
  {
    goto LABEL_43;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v30 = qword_10038B240;
  if (!qword_10038B240)
  {

    goto LABEL_43;
  }

  v31 = *(v10 + 16);
  v92 = v10 + 16;
  v93 = v31;
  v31(v22, &v5[v29], v9);
  v89 = v30;
  v90 = v30;

  v32 = Logger.logObject.getter();
  v33 = v10;
  v34 = static os_log_type_t.default.getter();

  v88 = v34;
  v35 = os_log_type_enabled(v32, v34);
  v95 = v33;
  v91 = a1;
  v94 = v29;
  v99 = v9;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v106 = v37;
    *v36 = 136315138;
    v38 = v101;
    *&v108 = v101;
    *(&v108 + 1) = a3;
    v87 = v104[0] & 1;
    LOBYTE(v109) = v104[0] & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v39 = String.init<A>(describing:)();
    v41 = sub_100017494(v39, v40, &v106);
    v42 = v95;

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v88, "Configuring userDefaultsSync: %s", v36, 0xCu);
    sub_10000903C(v37);

    v43 = v87;

    v44 = *(v42 + 8);
    v44(v22, v99);
  }

  else
  {

    v44 = *(v33 + 8);
    v44(v22, v9);
    v43 = v104[0] & 1;
    v38 = v101;
  }

  v45 = v102;
  v46 = *(v102 + 1);
  *v102 = v38;
  *(v45 + 1) = a3;

  v5[v100] = v43;
  v47 = *&v5[v27];
  *&v5[v27] = v89;
  v48 = v90;

  v49 = String._bridgeToObjectiveC()();

  v50 = [v48 valueForKey:v49];

  if (v50)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v106 = 0u;
    v107 = 0u;
  }

  v51 = v44;
  v108 = v106;
  v109 = v107;

  if ((v104[0] & 1) == 0)
  {
    sub_100009848(&v108, &v106, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    if (swift_dynamicCast())
    {
      v59 = v105[0];
    }

    else
    {
      v59 = 2;
    }

    goto LABEL_20;
  }

  v52 = sub_10003667C(&type metadata for Bool);
  if (!v52)
  {
    v55 = v97;
    v60 = v99;
    v93(v97, &v5[v94], v99);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v55;
      v64 = swift_slowAlloc();
      *v64 = 0;
      v65 = "### Type not Codable";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v61, v62, v65, v64, 2u);

      v45 = v102;
      v51(v63, v60);
      v59 = 2;
      goto LABEL_32;
    }

LABEL_27:

    v51(v55, v60);
    v59 = 2;
    goto LABEL_32;
  }

  v53 = v52;
  sub_100009848(&v108, &v106, &unk_100339680, &qword_100278390);
  if (!*(&v107 + 1))
  {
    sub_1000097E8(&v106, &unk_100339680, &qword_100278390);
    v55 = v98;
LABEL_24:
    v60 = v99;
    v93(v55, &v5[v94], v99);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v55;
      v64 = swift_slowAlloc();
      *v64 = 0;
      v65 = "### Failed to cast as Data";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v54 = swift_dynamicCast();
  v55 = v98;
  if ((v54 & 1) == 0)
  {
    goto LABEL_24;
  }

  v101 = v48;
  v57 = v105[0];
  v56 = v105[1];
  v58 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v54);
  sub_100058D2C();
  sub_100010708(v57, v56);
  if (swift_dynamicCast())
  {
    v59 = v106;
  }

  else
  {
    v59 = 2;
  }

  v48 = v101;
  v45 = v102;
LABEL_20:
  v60 = v99;
LABEL_32:
  v67 = v103;
  v93(v103, &v5[v94], v60);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v68, v69))
  {
    *v104 = v51;
    v70 = 7104878;
    v71 = swift_slowAlloc();
    v105[0] = swift_slowAlloc();
    *v71 = 136315394;
    v72 = *(v45 + 1);
    if (v72)
    {
      *&v106 = *v45;
      *(&v106 + 1) = v72;

      v73 = String.init<A>(describing:)();
      v75 = v74;
    }

    else
    {
      v75 = 0xE300000000000000;
      v73 = 7104878;
    }

    v76 = sub_100017494(v73, v75, v105);

    *(v71 + 4) = v76;
    *(v71 + 12) = 2080;
    if (v59 == 2)
    {
      v77 = 0xE300000000000000;
    }

    else
    {
      LOBYTE(v106) = v59 & 1;
      v70 = String.init<A>(describing:)();
      v77 = v78;
    }

    v79 = sub_100017494(v70, v77, v105);

    *(v71 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v68, v69, "Initial %s: %s", v71, 0x16u);
    swift_arrayDestroy();

    (*v104)(v103, v99);
  }

  else
  {

    v51(v67, v60);
  }

  sub_1000097E8(&v108, &unk_100339680, &qword_100278390);
  LOBYTE(a1) = v91;
  if (v59 != 2)
  {
    LOBYTE(a1) = v59;
  }

LABEL_43:
  LOBYTE(v108) = a1 & 1;
  v80 = sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  swift_allocObject();
  *(v5 + 2) = CurrentValueSubject.init(_:)();
  LOBYTE(v108) = 2;
  v83 = sub_100035D04(&qword_100339820, &qword_1002702F8);
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  *(v5 + 3) = CurrentValueSubject.init(_:)();
  return v5;
}

char *sub_10002B8A8(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v17 = v14;
  LODWORD(v119) = a4;
  v125 = a13;
  v126 = a14;
  v123 = a1;
  v124 = a12;
  v121 = a2;
  v122 = a11;
  v19 = *v14;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v116 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v118 = &v106 - v26;
  v27 = __chkstk_darwin(v25);
  v115 = &v106 - v28;
  v29 = __chkstk_darwin(v27);
  v117 = (&v106 - v30);
  v31 = __chkstk_darwin(v29);
  v120 = &v106 - v32;
  __chkstk_darwin(v31);
  v34 = &v106 - v33;

  v35 = *(*v17 + 104);
  v36 = sub_100035D04(a7, a8);
  (*(*(v36 - 8) + 56))(&v17[v35], 1, 1, v36);
  v37 = *(*v17 + 112);
  *&v17[v37] = 0;
  v38 = *(*v17 + 120);
  v17[v38] = 2;
  v39 = &v17[*(*v17 + 128)];
  *v39 = 0;
  v39[1] = 0;
  *&v17[*(*v17 + 136)] = 0;
  *&v17[*(*v17 + 152)] = 0;
  *&v130 = v19;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v40 = v21;
  Logger.init(subsystem:category:)();
  v41 = *(*v17 + 144);
  (*(v40 + 32))(&v17[v41], v34, v20);
  if (a3)
  {
    v114 = v38;
    if (qword_100339088 != -1)
    {
      swift_once();
    }

    v42 = v126;
    v44 = v120;
    v43 = v121;
    if (!qword_10038B240)
    {

      goto LABEL_41;
    }

    v45 = qword_10038B240;
    v46 = *(v40 + 16);
    v110 = v41;
    v113 = v40 + 16;
    v112 = v46;
    v46(v120, &v17[v41], v20);
    v109 = v45;
    v108 = v45;

    v47 = v44;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    v50 = os_log_type_enabled(v48, v49);
    v111 = v40;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v128 = v106;
      *v51 = 136315138;
      *&v130 = v43;
      *(&v130 + 1) = a3;
      v107 = v119 & 1;
      LOBYTE(v131) = v119 & 1;

      sub_100035D04(&qword_100339690, &qword_1002701A8);
      v52 = String.init<A>(describing:)();
      v54 = v39;
      v55 = v49;
      v56 = sub_100017494(v52, v53, &v128);
      v43 = v121;

      *(v51 + 4) = v56;
      v42 = v126;
      v57 = v55;
      v39 = v54;
      _os_log_impl(&_mh_execute_header, v48, v57, "Configuring userDefaultsSync: %s", v51, 0xCu);
      sub_10000903C(v106);

      v58 = v111;

      v59 = v120;
      v120 = *(v58 + 8);
      (v120)(v59, v20);
    }

    else
    {

      v120 = *(v40 + 8);
      (v120)(v47, v20);
      v107 = v119 & 1;
      v42 = v126;
    }

    v121 = a9;
    v61 = v39[1];
    *v39 = v43;
    v39[1] = a3;

    v17[v114] = v107;
    v62 = *&v17[v37];
    *&v17[v37] = v109;
    v63 = v108;

    v64 = String._bridgeToObjectiveC()();

    v65 = [v63 valueForKey:v64];

    if (v65)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v128 = 0u;
      v129 = 0u;
    }

    v130 = v128;
    v131 = v129;

    v106 = a10;
    if (v119)
    {
      v66 = sub_100035D04(v121, a10);
      v67 = sub_10003667C(v66);
      v68 = v118;
      if (v67)
      {
        v69 = v67;
        sub_100009848(&v130, &v128, &unk_100339680, &qword_100278390);
        if (*(&v129 + 1))
        {
          v70 = swift_dynamicCast();
          if (v70)
          {
            v119 = v63;
            v117 = v39;
            v72 = v127[0];
            v71 = v127[1];
            v73 = *(*(v69 - 8) + 64);
            __chkstk_darwin(v70);
            sub_100058D2C();
            sub_100010708(v72, v71);
            if (swift_dynamicCast())
            {
              v74 = v128;
            }

            else
            {
              v74 = 0;
            }

            v68 = v118;
            v63 = v119;
            v39 = v117;
LABEL_22:
            v75 = v110;
            goto LABEL_30;
          }
        }

        else
        {
          sub_1000097E8(&v128, &unk_100339680, &qword_100278390);
        }

        v75 = v110;
        v79 = v116;
        v112(v116, &v17[v110], v20);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v119 = v63;
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "### Failed to cast as Data", v82, 2u);
          v63 = v119;
        }

        (v120)(v79, v20);
        v74 = 0;
        v42 = v126;
      }

      else
      {
        v75 = v110;
        v112(v117, &v17[v110], v20);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v119 = v63;
          *v78 = 0;
          _os_log_impl(&_mh_execute_header, v76, v77, "### Type not Codable", v78, 2u);
          v63 = v119;
        }

        (v120)(v117, v20);
        v74 = 0;
      }

LABEL_30:
      v112(v68, &v17[v75], v20);

      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v83, v84))
      {
        v119 = v63;
        v117 = v20;
        v85 = 7104878;
        v86 = swift_slowAlloc();
        v127[0] = swift_slowAlloc();
        *v86 = 136315394;
        v87 = v39[1];
        v88 = v42;
        if (v87)
        {
          *&v128 = *v39;
          *(&v128 + 1) = v87;

          v89 = String.init<A>(describing:)();
          v91 = v90;
        }

        else
        {
          v91 = 0xE300000000000000;
          v89 = 7104878;
        }

        v94 = sub_100017494(v89, v91, v127);

        *(v86 + 4) = v94;
        *(v86 + 12) = 2080;
        if (v74)
        {
          *&v128 = v74;

          sub_100035D04(v121, v106);
          v85 = String.init<A>(describing:)();
          v96 = v95;
        }

        else
        {
          v96 = 0xE300000000000000;
        }

        v42 = v88;
        v97 = sub_100017494(v85, v96, v127);

        *(v86 + 14) = v97;
        _os_log_impl(&_mh_execute_header, v83, v84, "Initial %s: %s", v86, 0x16u);
        swift_arrayDestroy();

        v92 = v118;
        v93 = v117;
      }

      else
      {

        v92 = v68;
        v93 = v20;
      }

      (v120)(v92, v93);
      sub_1000097E8(&v130, &unk_100339680, &qword_100278390);
      if (v74)
      {

        v60 = v74;
        goto LABEL_42;
      }

LABEL_41:
      v60 = v123;
      goto LABEL_42;
    }

    sub_100009848(&v130, &v128, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    sub_100035D04(v121, a10);
    if (swift_dynamicCast())
    {
      v74 = v127[0];
    }

    else
    {
      v74 = 0;
    }

    v68 = v118;
    goto LABEL_22;
  }

  v60 = v123;
  v42 = v126;
LABEL_42:
  *&v130 = v60;
  v98 = sub_100035D04(v122, v124);
  v99 = *(v98 + 48);
  v100 = *(v98 + 52);
  swift_allocObject();
  *(v17 + 2) = CurrentValueSubject.init(_:)();
  *&v130 = 0;
  v101 = sub_100035D04(v125, v42);
  v102 = *(v101 + 48);
  v103 = *(v101 + 52);
  swift_allocObject();
  *(v17 + 3) = CurrentValueSubject.init(_:)();

  return v17;
}

char *sub_10002C620(void *a1, int a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v107) = a5;
  v105 = a3;
  v108 = a2;
  v9 = *v5;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v101 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v90 - v16;
  v17 = __chkstk_darwin(v15);
  v99 = &v90 - v18;
  v19 = __chkstk_darwin(v17);
  v100 = &v90 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v90 - v22;
  __chkstk_darwin(v21);
  v25 = &v90 - v24;

  v26 = *(*v6 + 104);
  v27 = sub_100035D04(&qword_100339758, &qword_100270270);
  (*(*(v27 - 8) + 56))(&v6[v26], 1, 1, v27);
  v103 = *(*v6 + 112);
  *&v6[v103] = 0;
  v102 = *(*v6 + 120);
  v6[v102] = 2;
  v28 = &v6[*(*v6 + 128)];
  *v28 = 0;
  *(v28 + 1) = 0;
  v104 = v28;
  *&v6[*(*v6 + 136)] = 0;
  *&v6[*(*v6 + 152)] = 0;
  *&v113 = v9;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v29 = *(*v6 + 144);
  (*(v11 + 32))(&v6[v29], v25, v10);
  if (!a4)
  {
    goto LABEL_8;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v30 = qword_10038B240;
  if (!qword_10038B240)
  {

LABEL_8:
    v45 = 0;
    v46 = -2;
    v44 = v108;
    goto LABEL_44;
  }

  v95 = *(v11 + 16);
  v95(v23, &v6[v29], v10);
  v92 = v30;
  v91 = v30;

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  LODWORD(v97) = v32;
  v33 = os_log_type_enabled(v31, v32);
  v98 = v11;
  v93 = a1;
  v96 = v29;
  v94 = v11 + 16;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v111 = v90;
    *v34 = 136315138;
    *&v113 = v105;
    *(&v113 + 1) = a4;
    v35 = v107 & 1;
    LOBYTE(v114) = v107 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v36 = String.init<A>(describing:)();
    v38 = sub_100017494(v36, v37, &v111);
    v39 = v35;
    v40 = v105;

    *(v34 + 4) = v38;
    v41 = v10;
    v42 = v98;
    _os_log_impl(&_mh_execute_header, v31, v97, "Configuring userDefaultsSync: %s", v34, 0xCu);
    sub_10000903C(v90);
    v43 = v42;
    v10 = v41;

    v44 = v108;
    a1 = v93;

    v97 = *(v43 + 8);
    v97(v23, v10);
  }

  else
  {

    v97 = *(v11 + 8);
    v97(v23, v10);
    v39 = v107 & 1;
    v40 = v105;
    v44 = v108;
  }

  v47 = v104;
  v48 = *(v104 + 1);
  *v104 = v40;
  *(v47 + 1) = a4;

  v49 = v103;
  v6[v102] = v39;
  v50 = *&v6[v49];
  *&v6[v49] = v92;
  v51 = v91;

  v52 = String._bridgeToObjectiveC()();

  v105 = v51;
  v53 = [v51 valueForKey:v52];

  if (v53)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
  }

  v113 = v111;
  v114 = v112;

  if ((v107 & 1) == 0)
  {
    sub_100009848(&v113, &v111, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    sub_100035D04(&qword_100339770, &qword_100270288);
    v61 = swift_dynamicCast();
    if (v61)
    {
      v46 = v110;
    }

    else
    {
      v46 = -2;
    }

    if (v61)
    {
      v45 = v109;
    }

    else
    {
      v45 = 0;
    }

    goto LABEL_31;
  }

  v54 = sub_100035D04(&qword_100339770, &qword_100270288);
  v55 = sub_10003667C(v54);
  if (v55)
  {
    v56 = v55;
    sub_100009848(&v113, &v111, &unk_100339680, &qword_100278390);
    if (*(&v112 + 1))
    {
      v57 = swift_dynamicCast();
      if (v57)
      {
        v59 = v109;
        v58 = v110;
        v60 = *(*(v56 - 8) + 64);
        __chkstk_darwin(v57);
        sub_100058D2C();
        sub_100010708(v59, v58);
        v89 = swift_dynamicCast();
        if (v89)
        {
          v46 = BYTE8(v111);
        }

        else
        {
          v46 = -2;
        }

        if (v89)
        {
          v45 = v111;
        }

        else
        {
          v45 = 0;
        }

        a1 = v93;
        v69 = v106;
        v47 = v104;
        goto LABEL_32;
      }
    }

    else
    {
      sub_1000097E8(&v111, &unk_100339680, &qword_100278390);
    }

    v62 = v101;
    v95(v101, &v6[v96], v10);
    v63 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v63, v67, "### Failed to cast as Data", v68, 2u);

      v66 = v101;
      goto LABEL_30;
    }

LABEL_29:

    v66 = v62;
    goto LABEL_30;
  }

  v62 = v100;
  v95(v100, &v6[v96], v10);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v63, v64))
  {
    goto LABEL_29;
  }

  v65 = swift_slowAlloc();
  *v65 = 0;
  _os_log_impl(&_mh_execute_header, v63, v64, "### Type not Codable", v65, 2u);

  v66 = v100;
LABEL_30:
  v97(v66, v10);
  v45 = 0;
  v46 = -2;
LABEL_31:
  v69 = v106;
LABEL_32:
  v95(v69, &v6[v96], v10);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v107 = v10;
    v72 = 7104878;
    v73 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *v73 = 136315394;
    v74 = *(v47 + 1);
    if (v74)
    {
      *&v111 = *v47;
      *(&v111 + 1) = v74;

      v75 = String.init<A>(describing:)();
      v77 = v76;
    }

    else
    {
      v77 = 0xE300000000000000;
      v75 = 7104878;
    }

    v78 = sub_100017494(v75, v77, &v109);

    *(v73 + 4) = v78;
    *(v73 + 12) = 2080;
    if (v46 == 254)
    {
      v79 = 0xE300000000000000;
    }

    else
    {
      *&v111 = v45;
      BYTE8(v111) = v46;
      sub_10003672C(v45, v46);
      sub_100035D04(&qword_100339770, &qword_100270288);
      v72 = String.init<A>(describing:)();
      v79 = v80;
    }

    v81 = sub_100017494(v72, v79, &v109);

    *(v73 + 14) = v81;
    _os_log_impl(&_mh_execute_header, v70, v71, "Initial %s: %s", v73, 0x16u);
    swift_arrayDestroy();

    v97(v106, v107);
    sub_1000097E8(&v113, &unk_100339680, &qword_100278390);
    v44 = v108;
    a1 = v93;
  }

  else
  {

    v97(v69, v10);
    sub_1000097E8(&v113, &unk_100339680, &qword_100278390);
  }

  if (v46 == 254)
  {
    v46 = -2;
  }

  else
  {
    sub_10003672C(v45, v46);
    sub_100036718(a1, v44);
    a1 = v45;
    v44 = v46;
  }

LABEL_44:
  *&v113 = a1;
  BYTE8(v113) = v44;
  v82 = sub_100035D04(&qword_100339760, &qword_100270278);
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  swift_allocObject();
  *(v6 + 2) = CurrentValueSubject.init(_:)();
  *&v113 = 0;
  BYTE8(v113) = -2;
  v85 = sub_100035D04(&qword_100339768, &qword_100270280);
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  *(v6 + 3) = CurrentValueSubject.init(_:)();
  sub_100036704(v45, v46);
  return v6;
}

char *sub_10002D534(void *a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, void (*a15)(void))
{
  v18 = v15;
  LODWORD(v124) = a4;
  v130 = a14;
  v131 = a15;
  v128 = a1;
  v129 = a13;
  v127 = a12;
  v125 = a2;
  v126 = a11;
  v20 = *v15;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v120 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v123 = &v109 - v27;
  v28 = __chkstk_darwin(v26);
  v118 = &v109 - v29;
  v30 = __chkstk_darwin(v28);
  v119 = &v109 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v109 - v33;
  __chkstk_darwin(v32);
  v36 = &v109 - v35;

  v37 = *(*v18 + 104);
  v38 = a7;
  v39 = v21;
  v40 = sub_100035D04(v38, a8);
  v41 = 1;
  (*(*(v40 - 8) + 56))(&v18[v37], 1, 1, v40);
  v42 = *(*v18 + 112);
  *&v18[v42] = 0;
  v121 = *(*v18 + 120);
  v18[v121] = 2;
  v43 = &v18[*(*v18 + 128)];
  *v43 = 0;
  v43[1] = 0;
  v122 = v43;
  *&v18[*(*v18 + 136)] = 0;
  *&v18[*(*v18 + 152)] = 0;
  *&v135 = v20;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v44 = v22;
  Logger.init(subsystem:category:)();
  v45 = *(*v18 + 144);
  (*(v22 + 32))(&v18[v45], v36, v39);
  if (!a3)
  {
    v60 = v128;
    v47 = v131;
    goto LABEL_42;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v46 = qword_10038B240;
  v47 = v131;
  v48 = v125;
  if (!qword_10038B240)
  {

    v41 = 1;
    v60 = v128;
    goto LABEL_42;
  }

  v49 = *(v44 + 16);
  v114 = v45;
  v115 = v44 + 16;
  v116 = v49;
  v49(v34, &v18[v45], v39);
  v112 = v46;
  v111 = v46;

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  v52 = os_log_type_enabled(v50, v51);
  v113 = v44;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *&v133 = v117;
    *v53 = 136315138;
    *&v135 = v48;
    *(&v135 + 1) = a3;
    v110 = v124 & 1;
    LOBYTE(v136) = v124 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v54 = String.init<A>(describing:)();
    LODWORD(v109) = v51;
    v56 = v39;
    v57 = v47;
    v58 = sub_100017494(v54, v55, &v133);

    *(v53 + 4) = v58;
    v47 = v57;
    v39 = v56;
    v48 = v125;
    _os_log_impl(&_mh_execute_header, v50, v109, "Configuring userDefaultsSync: %s", v53, 0xCu);
    sub_10000903C(v117);

    v59 = v113;

    v117 = *(v59 + 8);
    (v117)(v34, v39);
  }

  else
  {

    v117 = *(v44 + 8);
    (v117)(v34, v39);
    v110 = v124 & 1;
  }

  v61 = v122;
  v62 = v122[1];
  *v122 = v48;
  v61[1] = a3;

  v18[v121] = v110;
  v63 = *&v18[v42];
  *&v18[v42] = v112;
  v64 = v111;

  v65 = String._bridgeToObjectiveC()();

  v66 = [v64 valueForKey:v65];

  if (v66)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v133 = 0u;
    v134 = 0u;
  }

  v135 = v133;
  v136 = v134;

  v125 = a10;
  v109 = a9;
  if (v124)
  {
    v67 = sub_100035D04(a9, a10);
    v68 = sub_10003667C(v67);
    if (v68)
    {
      v69 = v68;
      sub_100009848(&v135, &v133, &unk_100339680, &qword_100278390);
      if (*(&v134 + 1))
      {
        v70 = swift_dynamicCast();
        if (v70)
        {
          v124 = v64;
          v72 = v132[0];
          v71 = v132[1];
          v73 = *(*(v69 - 8) + 64);
          __chkstk_darwin(v70);
          sub_100058D2C();
          sub_100010708(v72, v71);
          if (swift_dynamicCast())
          {
            v41 = v133;
          }

          else
          {
            v41 = 1;
          }

          v47 = v131;
          v74 = v114;
          v64 = v124;
          goto LABEL_30;
        }
      }

      else
      {
        sub_1000097E8(&v133, &unk_100339680, &qword_100278390);
      }

      v74 = v114;
      v75 = v120;
      v116(v120, &v18[v114], v39);
      v76 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v76, v80, "### Failed to cast as Data", v81, 2u);

        v79 = &v138;
        goto LABEL_27;
      }
    }

    else
    {
      v74 = v114;
      v75 = v119;
      v116(v119, &v18[v114], v39);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "### Type not Codable", v78, 2u);

        v79 = &v137;
LABEL_27:
        v82 = *(v79 - 32);
LABEL_29:
        (v117)(v82, v39);
        v41 = 1;
        goto LABEL_30;
      }
    }

    v82 = v75;
    goto LABEL_29;
  }

  sub_100009848(&v135, &v133, &unk_100339680, &qword_100278390);
  sub_100035D04(&unk_100339680, &qword_100278390);
  sub_100035D04(a9, a10);
  if (swift_dynamicCast())
  {
    v41 = v132[0];
  }

  else
  {
    v41 = 1;
  }

  v74 = v114;
LABEL_30:
  v83 = v123;
  v116(v123, &v18[v74], v39);

  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v124 = v64;
    v121 = v39;
    v86 = 7104878;
    v87 = swift_slowAlloc();
    v132[0] = swift_slowAlloc();
    *v87 = 136315394;
    v88 = v122[1];
    v89 = v47;
    if (v88)
    {
      *&v133 = *v122;
      *(&v133 + 1) = v88;

      v90 = String.init<A>(describing:)();
      v92 = v91;
    }

    else
    {
      v92 = 0xE300000000000000;
      v90 = 7104878;
    }

    v95 = sub_100017494(v90, v92, v132);

    *(v87 + 4) = v95;
    *(v87 + 12) = 2080;
    if (v41 == 1)
    {
      v96 = 0xE300000000000000;
    }

    else
    {
      *&v133 = v41;
      v97 = v41;
      sub_100035D04(v109, v125);
      v86 = String.init<A>(describing:)();
      v96 = v98;
    }

    v47 = v89;
    v99 = sub_100017494(v86, v96, v132);

    *(v87 + 14) = v99;
    _os_log_impl(&_mh_execute_header, v84, v85, "Initial %s: %s", v87, 0x16u);
    swift_arrayDestroy();

    v93 = v123;
    v94 = v121;
  }

  else
  {

    v93 = v83;
    v94 = v39;
  }

  (v117)(v93, v94);
  sub_1000097E8(&v135, &unk_100339680, &qword_100278390);
  if (v41 == 1)
  {
    v60 = v128;
  }

  else
  {
    v100 = v41;

    v60 = v41;
  }

LABEL_42:
  *&v135 = v60;
  v101 = sub_100035D04(v126, v127);
  v102 = *(v101 + 48);
  v103 = *(v101 + 52);
  swift_allocObject();
  *(v18 + 2) = CurrentValueSubject.init(_:)();
  *&v135 = 1;
  v104 = sub_100035D04(v129, v130);
  v105 = *(v104 + 48);
  v106 = *(v104 + 52);
  swift_allocObject();
  *(v18 + 3) = CurrentValueSubject.init(_:)();
  v47(v41);
  return v18;
}
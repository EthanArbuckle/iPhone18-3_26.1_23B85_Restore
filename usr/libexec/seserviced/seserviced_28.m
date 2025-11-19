uint64_t sub_10024C5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = qword_100501D90;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v12)
  {
    if (*(a1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) == 1)
    {
      v15 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
      swift_beginAccess();
      v16 = *(a1 + v15);

      v18 = a3(v17, a2);
    }

    else
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
      }

      v18 = &_swiftEmptySetSingleton;
    }

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10024C824(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = a4(v15);

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:

        sub_10024A668(a1, a2, v20, a3, &unk_100503E90, &qword_10040A9E0);
        return;
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

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10024C984(uint64_t a1, uint64_t (*a2)(id))
{
  v26 = a2;
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v22 = v5;
    v23 = v2;
    v21[1] = v21;
    __chkstk_darwin(a1);
    v24 = v21 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v24, v6);
    v25 = 0;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v5 = v9 & *(v3 + 56);
    v10 = (v8 + 63) >> 6;
    while (v5)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_12:
      v14 = v11 | (v7 << 6);
      v15 = *(*(v3 + 48) + 8 * v14);
      v16 = v26();

      if (v16)
      {
        *&v24[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
          return sub_10024A668(v24, v22, v25, v3, &unk_100503E90, &qword_10040A9E0);
        }
      }
    }

    v12 = v7;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v7 >= v10)
      {
        return sub_10024A668(v24, v22, v25, v3, &unk_100503E90, &qword_10040A9E0);
      }

      v13 = *(v3 + 56 + 8 * v7);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v5 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  v20 = sub_10024A3A4(v19, v5, v3, v26);

  return v20;
}

Swift::Int sub_10024CBFC(uint64_t a1, uint64_t (*a2)(id))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10024C984(a1, a2);
  }

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for UWBSession();
    do
    {
      swift_dynamicCast();
      if ((a2)())
      {
        v3 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v3)
        {
          sub_1001095DC(v3 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v5 = &_swiftEmptySetSingleton + 56;
        v6 = -1 << *(&_swiftEmptySetSingleton + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7)) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *&v5[8 * v8];
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *&v5[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v9) = v14;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10024CDF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10024CE0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10024CE54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_10024CEA4()
{
  result = qword_100507D08;
  if (!qword_100507D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507D08);
  }

  return result;
}

uint64_t sub_10024CEF8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v8 = qword_10051B7F0;
    *v7 = qword_10051B7F0;
    (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
    v9 = v8;
    LOBYTE(v8) = _dispatchPreconditionTest(_:)();
    result = (*(v4 + 8))(v7, v3);
    if ((v8 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    if (*(a1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isRunning) != 1)
    {
      break;
    }

    v11 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeSessions;
    swift_beginAccess();
    v28 = *(a1 + v11);
    if ((v28 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_10024CE0C(&qword_100507D00, v12, type metadata accessor for UWBSession);
      Set.Iterator.init(_cocoa:)();
      v13 = v32;
      v7 = v33;
      a1 = v34;
      v14 = v35;
      v3 = v36;
    }

    else
    {
      v18 = -1 << *(v28 + 32);
      v7 = (v28 + 56);
      a1 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v3 = v20 & *(v28 + 56);
      v13 = v28;
      swift_bridgeObjectRetain_n();
      v14 = 0;
    }

    v27[1] = a1;
    v21 = (a1 + 64) >> 6;
    while (1)
    {
      v4 = v14;
      if (v13 < 0)
      {
        v26 = __CocoaSet.Iterator.next()();
        if (!v26 || (v30 = v26, type metadata accessor for UWBSession(), swift_dynamicCast(), (a1 = v31) == 0))
        {
LABEL_24:
          sub_100093854();

          return 0;
        }

        goto LABEL_15;
      }

      v24 = v14;
      v25 = v3;
      if (!v3)
      {
        break;
      }

LABEL_14:
      v3 = (v25 - 1) & v25;
      a1 = *(*(v13 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v25)))));
      if (!a1)
      {
        goto LABEL_24;
      }

LABEL_15:
      v22 = *(a1 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);

      v23 = static UUID.== infix(_:_:)();

      if (v23)
      {
        sub_100093854();

        return 1;
      }
    }

    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v14 >= v21)
      {
        goto LABEL_24;
      }

      v25 = v7[v14];
      ++v24;
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Not running", v17, 2u);
  }

  return 0;
}

uint64_t sub_10024D320(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100502F08, &qword_10040A000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10024D390()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "UWB is powered off", v12, 2u);
    }

    *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable) = 0;
    v13 = OBJC_IVAR____TtC10seserviced6DSKUWB_activeUseCases;
    swift_beginAccess();
    if (*(*(v1 + v13) + 16))
    {

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v37 = v17;
        *v16 = 136315138;
        v18 = *(v1 + v13);
        sub_10024D838();

        v19 = Set.description.getter();
        v21 = v20;

        v22 = sub_1002FFA0C(v19, v21, &v37);

        *(v16 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "Powering on UWB for %s", v16, 0xCu);
        sub_1000752F4(v17);
      }

      v23 = type metadata accessor for UWBPrewarmSession();
      v24 = objc_allocWithZone(v23);
      v25 = &v24[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStart];
      *v25 = sub_10024D828;
      v25[1] = v1;
      v26 = &v24[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStateUpdate];
      *v26 = sub_10024D82C;
      v26[1] = v1;
      v27 = &v24[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onRangingLimitUpdate];
      *v27 = sub_10024D830;
      v27[1] = v1;
      v28 = &v24[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onInvalidation];
      *v28 = sub_10024D834;
      *(v28 + 1) = v1;
      v29 = objc_allocWithZone(NISession);
      swift_retain_n();
      v30 = [v29 init];
      *&v24[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session] = v30;
      [v30 setDelegateQueue:v8];
      v38.receiver = v24;
      v38.super_class = v23;
      v31 = objc_msgSendSuper2(&v38, "init");
      v32 = OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session;
      v33 = *&v31[OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_session];
      v34 = v31;
      [v33 setDelegate:v34];
      v35 = [objc_allocWithZone(NISystemConfiguration) init];
      [v35 setPrewarmUWB:1];
      [v35 setPrewarmSecureElementChannel:1];
      [*&v31[v32] runWithConfiguration:v35];

      v36 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion);
      *(v1 + OBJC_IVAR____TtC10seserviced6DSKUWB_uwbPowerAssertion) = v31;
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10024D838()
{
  result = qword_100507D20;
  if (!qword_100507D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507D20);
  }

  return result;
}

uint64_t sub_10024D88C(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100507D30, &unk_100409C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024D8F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *sub_10024D934(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_10024DB50()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v9 = *(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_state);
  *(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_state) = 4;
  if (v9 == 3)
  {
    v16 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
    swift_beginAccess();
    sub_1000BC094(v0 + v16, v23);
    v17 = v24;
    v18 = v25;
    sub_1000752B0(v23, v24);
    v19 = *(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
    v20 = *(v18 + 24);

    v20(v21, v17, v18);
  }

  else
  {
    if (v9)
    {
      return result;
    }

    v10 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
    swift_beginAccess();
    sub_1000BC094(v0 + v10, v23);
    v11 = v24;
    v12 = v25;
    sub_1000752B0(v23, v24);
    v13 = *(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
    v14 = *(v12 + 8);

    v14(v15, v11, v12);
  }

  return sub_1000752F4(v23);
}

uint64_t sub_10024DDAC(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v4[1];
  v13(v7, v3);
  if (v12)
  {
    v2[OBJC_IVAR____TtC10seserviced10UWBSession_state] = 1;
    if (qword_100501B70 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  *v7 = v11;
  v10(v7, v9, v3);
  v14 = _dispatchPreconditionTest(_:)();
  result = (v13)(v7, v3);
  if (v14)
  {
    swift_beginAccess();
    v16 = sub_10010D550(v2);
    swift_endAccess();

    v17 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
    swift_beginAccess();
    sub_1000BC094(&v2[v17], v24);
    v18 = v25;
    v19 = v26;
    sub_1000752B0(v24, v25);
    v20 = *&v2[OBJC_IVAR____TtC10seserviced10UWBSession_peer];
    v21 = *(v19 + 32);

    v21(v23, v20, v18, v19);

    return sub_1000752F4(v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024E058(unint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (*(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 2)
    {
      v11 = 6;
    }

    else
    {
      v11 = 5;
    }

    *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_state) = v11;
    if (a1 > 6)
    {
      v12 = 0x8000000000000000;
    }

    else
    {
      v12 = qword_100410300[a1];
    }

    v13 = *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons);
    if ((v13 & v12) == 0)
    {
      v13 |= v12;
      *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons) = v13;
    }

    v14 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
    swift_beginAccess();
    sub_1000BC094(v1 + v14, v20);
    v15 = v21;
    v16 = v22;
    sub_1000752B0(v20, v21);
    v17 = *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
    v18 = *(v16 + 16);

    v18(v13, v17, v15, v16);

    return sub_1000752F4(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10024E280(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
LABEL_10:
    sub_1002452F0(0);
    *(a2 + a1) = 3;
    return sub_100246268(0);
  }

  if (a2)
  {
    *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons) = 0;
    a1 = OBJC_IVAR____TtC10seserviced10UWBSession_state;
    if (*(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 6)
    {
      *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_state) = 2;
      return result;
    }

    a2 = v2;
    if (qword_100501B70 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (a1 > 6)
  {
    v13 = 0x8000000000000000;
  }

  else
  {
    v13 = qword_100410300[a1];
  }

  v14 = *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons);
  if ((v14 & v13) != 0)
  {
    v14 &= ~v13;
    *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_suspensionReasons) = v14;
  }

  v15 = OBJC_IVAR____TtC10seserviced10UWBSession_uwbSessionDelegate;
  swift_beginAccess();
  sub_1000BC094(v2 + v15, v21);
  v16 = v22;
  v17 = v23;
  sub_1000752B0(v21, v22);
  v18 = *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
  v19 = *(v17 + 16);

  v19(v14, v18, v16, v17);

  return sub_1000752F4(v21);
}

uint64_t sub_10024E51C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = OBJC_IVAR____TtC10seserviced16UWBAlishaSession_uwbAlishaSessionDelegate;
    swift_beginAccess();
    sub_1000BC094(v2 + v13, v18);
    v14 = v19;
    v15 = v20;
    sub_1000752B0(v18, v19);
    v16 = *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
    v17 = *(v15 + 16);

    v17(a1, a2, v16, v14, v15);

    return sub_1000752F4(v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024E700(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if ((a1 - 1) <= 3)
    {
      v11 = OBJC_IVAR____TtC10seserviced16UWBAlishaSession_uwbAlishaSessionDelegate;
      swift_beginAccess();
      sub_1000BC094(v1 + v11, v16);
      v12 = v17;
      v13 = v18;
      sub_1000752B0(v16, v17);
      v14 = *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
      v15 = *(v13 + 24);

      v15(0x3020001u >> (8 * (a1 - 1)), v14, v12, v13);

      return sub_1000752F4(v16);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024E8F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    sub_1000BC094(v3 + OBJC_IVAR____TtC10seserviced14UWBLyonSession_uwbLyonSessionDelegate, v19);
    v15 = sub_1000752B0(v19, v19[3]);
    v16 = *(v3 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
    v17 = *v15;

    a3(a1, a2, v16);

    return sub_1000752F4(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024EAA0(void (*a1)(uint64_t))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    sub_1000BC094(v1 + OBJC_IVAR____TtC10seserviced14UWBLyonSession_uwbLyonSessionDelegate, v16);
    v11 = sub_1000752B0(v16, v16[3]);
    v12 = *(v1 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
    v13 = *v11;

    a1(v14);

    return sub_1000752F4(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024EC34()
{
  *(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_state) = 4;
  sub_1000BC094(v0 + OBJC_IVAR____TtC10seserviced14UWBLyonSession_uwbLyonSessionDelegate, v6);
  v1 = sub_1000752B0(v6, v6[3]);
  v2 = *(v0 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
  v3 = *v1;

  sub_1000E2F70(v4);

  return sub_1000752F4(v6);
}

uint64_t sub_10024ECB4(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    sub_1000BC094(v2 + OBJC_IVAR____TtC10seserviced14UWBLyonSession_uwbLyonSessionDelegate, v17);
    v13 = sub_1000752B0(v17, v17[3]);
    v14 = *(v2 + OBJC_IVAR____TtC10seserviced10UWBSession_peer);
    v15 = *v13;

    a2(a1, v14);

    return sub_1000752F4(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024EE5C(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = [a1 uwbPreciseDistanceAvailability];
    if ((v11 & 8) != 0)
    {
      if (v11)
      {
        v12 = 34;
        if ((v11 & 2) == 0)
        {
LABEL_16:
          if ((v11 & 4) == 0 || (v12 & 0x10) != 0)
          {
            goto LABEL_19;
          }

LABEL_18:
          v12 |= 0x10uLL;
LABEL_19:
          v13 = *(v1 + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStateUpdate);
          v14 = *(v1 + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStateUpdate + 8);
          return v13(v12);
        }
      }

      else
      {
        v12 = 32;
        if ((v11 & 2) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else if (v11)
    {
      v12 = 2;
      if ((v11 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
      if ((v11 & 2) == 0)
      {
LABEL_10:
        if ((v11 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v12 |= 4uLL;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10024F014(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  sub_10009393C(0, &qword_100507D38, NICarKeyConfiguration_ptr);
  v11 = swift_dynamicCastMetatype();
  v12 = 0;
  if (!v11)
  {
    sub_10009393C(0, &qword_100507D40, NIAcwgConfiguration_ptr);
    result = swift_dynamicCastMetatype();
    if (!result)
    {
      return result;
    }

    v12 = 1;
  }

  v13 = *(v1 + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onRangingLimitUpdate);
  v14 = *(v1 + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onRangingLimitUpdate + 8);
  return v13(a1 & 1, v12);
}

unint64_t sub_10024F1F4()
{
  result = qword_100507D48;
  if (!qword_100507D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507D48);
  }

  return result;
}

unint64_t sub_10024F24C()
{
  result = qword_100507D50;
  if (!qword_100507D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507D50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LyonError(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10024F438()
{
  v0 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UUID();
  sub_1000B6A94(v4, qword_10051B5C8);
  v5 = sub_1000958E4(v4, qword_10051B5C8);
  UUID.init(uuidString:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_10024F568()
{
  v0 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UUID();
  sub_1000B6A94(v4, qword_10051B5E0);
  v5 = sub_1000958E4(v4, qword_10051B5E0);
  UUID.init(uuidString:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_10024F698@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100250478(*a1);
  *a2 = result;
  return result;
}

BOOL sub_10024F714(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_10024F744@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_10024F770@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_10024F854@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_10024BE24(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_10024F898()
{
  result = qword_100507DC0;
  if (!qword_100507DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DC0);
  }

  return result;
}

unint64_t sub_10024F8F0()
{
  result = qword_100507DC8;
  if (!qword_100507DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DC8);
  }

  return result;
}

unint64_t sub_10024F948()
{
  result = qword_100507DD0;
  if (!qword_100507DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DD0);
  }

  return result;
}

unint64_t sub_10024F9A0()
{
  result = qword_100507DD8;
  if (!qword_100507DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DD8);
  }

  return result;
}

uint64_t sub_10024F9F4(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return 0xD000000000000014;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x6465767265736552;
      }

      goto LABEL_12;
    }

    return 0x7261506472696854;
  }

  else
  {
    if (!a1)
    {
      return 17747;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x6163696669746F4ELL;
      }

LABEL_12:
      _StringGuts.grow(_:)(17);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x2064696C61766E69;
    }

    return 4347733;
  }
}

uint64_t sub_10024FB58(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6 || a1 == 7)
      {
        return 0x6552656D75736572;
      }
    }

    else if (a1 == 4 || a1 == 5)
    {
      return 0x52646E6570737573;
    }

    goto LABEL_19;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 0x334D7075746573;
    }

    if (a1 == 3)
    {
      return 0x344D7075746573;
    }

LABEL_19:
    _StringGuts.grow(_:)(17);

    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    return 0x2064696C61766E69;
  }

  if (a1)
  {
    return 0x324D7075746573;
  }

  else
  {
    return 0x314D7075746573;
  }
}

uint64_t sub_10024FD20(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (!a1)
    {
      return 0x746E657665;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000013;
      }

      goto LABEL_14;
    }

    return 0x45676E69676E6172;
  }

  else if (a1 > 4u)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 0xD000000000000019;
      }

      goto LABEL_14;
    }

    return 0xD000000000000016;
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x6575716552656B72;
      }

LABEL_14:
      _StringGuts.grow(_:)(17);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x2064696C61766E69;
    }

    return 0xD000000000000023;
  }
}

uint64_t sub_10024FED4(int a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD000000000000021;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0xD000000000000017;
      }

      goto LABEL_12;
    }

    return 0xD00000000000001FLL;
  }

  else
  {
    if (!a1)
    {
      return 0xD000000000000016;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000020;
      }

LABEL_12:
      _StringGuts.grow(_:)(17);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x2064696C61766E69;
    }

    return 0xD00000000000001CLL;
  }
}

uint64_t sub_100250068(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 128)
    {
      if (a1 == 129)
      {
        return 0xD000000000000012;
      }

      goto LABEL_12;
    }

    return 0xD000000000000010;
  }

  else
  {
    if (!a1)
    {
      return 0x64657275636573;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x746375727473626FLL;
      }

LABEL_12:
      _StringGuts.grow(_:)(17);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x2064696C61766E69;
    }

    return 0x6572756365736E75;
  }
}

uint64_t sub_1002501E4(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        return 0xD000000000000015;
      }

      if (a1 == 7)
      {
        return 0xD000000000000014;
      }
    }

    else
    {
      if (a1 == 4)
      {
        return 0xD000000000000014;
      }

      if (a1 == 5)
      {
        return 0xD000000000000011;
      }
    }

    goto LABEL_19;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 1869903201;
    }

    if (a1 == 3)
    {
      return 0x656C756465686373;
    }

LABEL_19:
    _StringGuts.grow(_:)(17);

    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    return 0x2064696C61766E69;
  }

  if (a1)
  {
    return 0x6C61756E616DLL;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

unint64_t sub_1002503CC()
{
  result = qword_100507DE0;
  if (!qword_100507DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DE0);
  }

  return result;
}

unint64_t sub_100250424()
{
  result = qword_100507DE8;
  if (!qword_100507DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507DE8);
  }

  return result;
}

uint64_t sub_100250478(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100250494(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_88;
  }

  if (qword_100501D28 != -1)
  {
LABEL_88:
    swift_once();
  }

  v12 = type metadata accessor for UUID();
  v13 = sub_1000958E4(v12, qword_10051B788);
  if (*(a1 + 16) && (v14 = sub_10008C808(v13), (v15 & 1) != 0))
  {
    v16 = (*(a1 + 56) + 16 * v14);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if ((v17 >> 62) <= 1)
    {
      if (!v19)
      {
        if (BYTE6(v17) < 3uLL)
        {
          goto LABEL_54;
        }

        goto LABEL_33;
      }

      goto LABEL_30;
    }

    if (v19 != 2)
    {
      goto LABEL_54;
    }

    v34 = *(v18 + 16);
    v24 = *(v18 + 24);
    v35 = v24 - v34;
    if (!__OFSUB__(v24, v34))
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
    if (qword_100501D20 != -1)
    {
      swift_once();
    }

    v20 = sub_1000958E4(v12, qword_10051B770);
    if (!*(a1 + 16) || (v21 = sub_10008C808(v20), (v22 & 1) == 0))
    {

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v126 = v28;
        *v27 = 136315138;
        sub_100254CFC(&unk_100507480, &type metadata accessor for UUID);
        v29 = Dictionary.description.getter();
        v31 = sub_1002FFA0C(v29, v30, &v126);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to retrieve PSM %s", v27, 0xCu);
        sub_1000752F4(v28);
      }

      sub_100079E24();
      swift_allocError();
      *v32 = 0;
      return swift_willThrow();
    }

    v23 = (*(a1 + 56) + 16 * v21);
    v17 = *v23;
    v18 = v23[1];
    v24 = v18 >> 62;
    if ((v18 >> 62) <= 1)
    {
      if (!v24)
      {
        if (BYTE6(v18) == 2)
        {
LABEL_38:
          v39 = sub_100090214(v17, v18, 0, 0, 0);
          result = sub_10006A178(v17, v18);
          if (v2)
          {
            return result;
          }

          v40 = 0x1000000;
          return v40 | v39;
        }

LABEL_41:
        sub_100069E2C(v17, v18);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        sub_10006A178(v17, v18);
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v126 = v44;
          *v43 = 136315138;
          v130 = sub_100288788(v17, v18);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v45 = BidirectionalCollection<>.joined(separator:)();
          v47 = v46;

          v48 = sub_1002FFA0C(v45, v47, &v126);

          *(v43 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v41, v42, "Incorrect PSM characteristic %s", v43, 0xCu);
          sub_1000752F4(v44);
        }

        sub_100079E24();
        swift_allocError();
        *v49 = 0;
        swift_willThrow();
        v50 = v17;
        v51 = v18;
        return sub_10006A178(v50, v51);
      }

      if (__OFSUB__(HIDWORD(v17), v17))
      {
LABEL_91:
        __break(1u);
LABEL_92:
        swift_once();
        goto LABEL_83;
      }

      v19 = HIDWORD(v17) - v17;
LABEL_37:
      sub_100069E2C(v17, v18);
      if (v19 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

  if (v24 != 2)
  {
    goto LABEL_41;
  }

  v37 = *(v17 + 16);
  v36 = *(v17 + 24);
  v19 = v36 - v37;
  if (!__OFSUB__(v36, v37))
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_30:
  if (__OFSUB__(HIDWORD(v18), v18))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v35 = HIDWORD(v18) - v18;
LABEL_32:
  sub_100069E2C(v18, v17);
  if (v35 < 3)
  {
    goto LABEL_54;
  }

LABEL_33:
  sub_100069E2C(v18, v17);
  v38 = sub_100090214(v18, v17, 0, 0, 0);
  if (v2)
  {
    sub_10006A178(v18, v17);
LABEL_57:
    v50 = v18;
    v51 = v17;
    return sub_10006A178(v50, v51);
  }

  v52 = v38;
  sub_10006A178(v18, v17);
  v53 = Data._Representation.subscript.getter();
  if (v53)
  {
LABEL_54:
    sub_100069E2C(v18, v17);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    sub_10006A178(v18, v17);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v126 = v62;
      *v61 = 136315138;
      v130 = sub_100288788(v18, v17);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v63 = BidirectionalCollection<>.joined(separator:)();
      v65 = v64;

      v66 = sub_1002FFA0C(v63, v65, &v126);

      *(v61 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "Incorrect PSM and DK Version characteristic %s", v61, 0xCu);
      sub_1000752F4(v62);
    }

    sub_100079E24();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();
    goto LABEL_57;
  }

  if (v19 == 2)
  {
    v56 = *(v18 + 16);
    v55 = *(v18 + 24);
    v57 = __OFSUB__(v55, v56);
    v54 = v55 - v56;
    if (!v57)
    {
      goto LABEL_53;
    }

    __break(1u);
LABEL_52:
    v54 = BYTE6(v17);
    goto LABEL_53;
  }

  if (v19 != 1)
  {
    goto LABEL_52;
  }

  LODWORD(v54) = HIDWORD(v18) - v18;
  if (__OFSUB__(HIDWORD(v18), v18))
  {
    __break(1u);
  }

  v54 = v54;
LABEL_53:
  v58 = v53;
  if (v54 < v53 + 3)
  {
    goto LABEL_54;
  }

  v68 = Data.subdata(in:)();
  v123 = v69;
  v70 = &_swiftEmptySetSingleton;
  v125 = &_swiftEmptySetSingleton;
  v117 = v52;
  v119 = a2;
  v121 = v18;
  if (v58)
  {
    v71 = 0;
    v122 = 2 * (v58 >> 1);
    v72 = 0x4000000000000000;
    while (1)
    {
      v73 = v123;
      if (!v72)
      {
        break;
      }

      sub_100069E2C(v68, v123);
      v18 = v68;
      v74 = sub_100090214(v68, v73, v71, 0, 0);
      sub_10006A178(v18, v73);
      sub_1000D6A84(&v126, v74);
      --v72;
      v71 += 2;
      v68 = v18;
      if (v122 == v71)
      {
        v70 = v125;
        v18 = v121;
        goto LABEL_65;
      }
    }

    __break(1u);
    goto LABEL_90;
  }

LABEL_65:
  v75 = v70[2];
  v122 = v70;
  if (!v75)
  {
    v120 = 256;
    goto LABEL_78;
  }

  v76 = v68;
  v77 = (v70 + 7);
  v78 = 768;
  v79 = v70[5];
  v80 = static Hasher._hash(seed:bytes:count:)();
  v81 = -1 << *(v122 + 32);
  v82 = v80 & ~v81;
  if ((*&v77[(v82 >> 3) & 0xFFFFFFFFFFFFFF8] >> v82))
  {
    v83 = ~v81;
    while (*(*(v122 + 48) + 2 * v82) != 768)
    {
      v82 = (v82 + 1) & v83;
      if (((*&v77[(v82 >> 3) & 0xFFFFFFFFFFFFFF8] >> v82) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    goto LABEL_76;
  }

LABEL_70:
  v78 = 256;
  v84 = *(v122 + 40);
  v85 = static Hasher._hash(seed:bytes:count:)();
  v86 = -1 << *(v122 + 32);
  v87 = v85 & ~v86;
  if ((*&v77[(v87 >> 3) & 0xFFFFFFFFFFFFFF8] >> v87))
  {
    v88 = ~v86;
    while (*(*(v122 + 48) + 2 * v87) != 256)
    {
      v87 = (v87 + 1) & v88;
      if (((*&v77[(v87 >> 3) & 0xFFFFFFFFFFFFFF8] >> v87) & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_76:
    v120 = v78;
    goto LABEL_77;
  }

LABEL_74:
  v120 = 256;
LABEL_77:
  v68 = v76;
  v18 = v121;
LABEL_78:
  v89 = OBJC_IVAR____TtC10seserviced9AlishaBLE_logger;
  v90 = Logger.logObject.getter();
  v116 = static os_log_type_t.info.getter();
  v91 = os_log_type_enabled(v90, v116);
  v118 = v68;
  if (v91)
  {
    v92 = swift_slowAlloc();
    v113 = v92;
    v114 = swift_slowAlloc();
    v126 = v114;
    *v92 = 136315138;
    v115 = v89;

    v93 = Set.description.getter();
    v95 = v94;

    v96 = sub_1002FFA0C(v93, v95, &v126);

    v97 = v113;
    *(v113 + 1) = v96;
    _os_log_impl(&_mh_execute_header, v90, v116, "Peripheral supported DK protocol versions %s", v97, 0xCu);
    sub_1000752F4(v114);
  }

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 33554688;
    *(v100 + 4) = v120;
    _os_log_impl(&_mh_execute_header, v98, v99, "Selected DK protocol version %hu", v100, 6u);
  }

  LOWORD(v126) = __rev16(v120);
  v130 = sub_1002B1854(&v126, &v126 + 2);
  v131 = v101;
  v124 = 1;
  v128 = &type metadata for UnsafeRawBufferPointer;
  v129 = &protocol witness table for UnsafeRawBufferPointer;
  v126 = &v124;
  v127 = &v125;
  v102 = sub_1000752B0(&v126, &type metadata for UnsafeRawBufferPointer);
  v104 = *v102;
  v103 = v102[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v126);
  v124 = 15;
  v128 = &type metadata for UnsafeRawBufferPointer;
  v129 = &protocol witness table for UnsafeRawBufferPointer;
  v126 = &v124;
  v127 = &v125;
  v105 = sub_1000752B0(&v126, &type metadata for UnsafeRawBufferPointer);
  v107 = *v105;
  v106 = v105[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v126);
  if (qword_100501960 != -1)
  {
    goto LABEL_92;
  }

LABEL_83:
  v108 = v119;
  if (qword_100501D30 != -1)
  {
    swift_once();
  }

  v109 = sub_1000958E4(v12, qword_10051B7A0);
  v110 = v130;
  v111 = v131;
  v112 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  sub_100069E2C(v130, v131);
  sub_1000F4EB4(v109, v110, v111, v108 + v112);
  sub_10006A178(v110, v111);
  sub_10006A178(v18, v17);
  sub_10006A178(v118, v123);
  sub_10006A178(v110, v111);

  if (!v2)
  {
    v40 = v120 << 16;
    v39 = v117;
    return v40 | v39;
  }

  return result;
}

uint64_t sub_100251228(uint64_t a1)
{
  v97 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v96 = v3[13];
  (v96)(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v95 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  v10 = v3[1];
  v11 = v10(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_56:
    v90 = v11;
    swift_once();
    v11 = v90;
    goto LABEL_7;
  }

  if (*(v1 + 24) != 1)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not running", v18, 2u);
    }

    sub_100079E24();
    swift_allocError();
    v15 = 1;
    goto LABEL_28;
  }

  v11 = v97;
  if (*(v97 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) != 1)
  {
    sub_1000E1E2C();
    swift_allocError();
    v15 = 4;
    goto LABEL_28;
  }

  *&v93 = v1;
  if (qword_100501960 != -1)
  {
    goto LABEL_56;
  }

LABEL_7:
  v12 = qword_10051B288;
  v13 = sub_1000E7974(v11);
  if (v13 == 2)
  {
LABEL_8:
    sub_1000E1E2C();
    swift_allocError();
    v15 = 3;
LABEL_28:
    *v14 = v15;
    return swift_willThrow();
  }

  v91 = v12;
  v92 = v13;
  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B5B0;
  v21 = v95;
  v20 = v96;
  *v6 = v95;
  v20(v6, v8, v2);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v10(v6, v2);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_30;
  }

  v23 = OBJC_IVAR____TtC10seserviced6DSKUWB_rangingLimitExceeded;
  swift_beginAccess();
  v24 = sub_1000C6AD0(0, *(v19 + v23));
  v25 = objc_opt_self();
  v26 = v97;
  v96 = OBJC_IVAR____TtC10seserviced4Peer_expressState;
  v27 = *(v97 + OBJC_IVAR____TtC10seserviced4Peer_expressState) == 2;
  UUID.uuidString.getter();
  v28 = String._bridgeToObjectiveC()();

  v95 = v25;
  sub_1003ADE18(v25, v27, v24, v28);

  if (*(v19 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable) != 1)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Not sending device intent because ranging is not available";
      goto LABEL_25;
    }

LABEL_27:

    sub_1000E1E2C();
    swift_allocError();
    v15 = 2;
    goto LABEL_28;
  }

  v29 = sub_10024CEF8(v19, v26);

  if ((v29 & 1) == 0)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Not sending device intent because of no UWB session";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (v24)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Not sending device intent because of ranging limit reached";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);
LABEL_26:

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v6 = v26;
  if (qword_100501928 != -1)
  {
    goto LABEL_58;
  }

LABEL_30:
  if (*(qword_10051B238 + 32) != 1)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_27;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Not sending device intent because the device is static";
    goto LABEL_25;
  }

  v35 = *(v6 + v96);
  if (v35 != 1)
  {
    if (v35 == 2 && (v92 & 1) == 0)
    {
      sub_10004D584(v95, @"unlockNeededForCarActionCount");
      v36 = *(v6 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      if (v36 >> 60 != 15)
      {
        v37 = *(v6 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
        if (v37 >> 60 != 15)
        {
          *&v93 = *(v6 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
          v38 = v93;
          v39 = *(v6 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
          v96 = "disconnectionCount";
          v97 = v39;
          sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1004098F0;
          *(inited + 32) = 0xD000000000000014;
          v95 = (inited + 32);
          *(inited + 40) = 0x80000001004686F0;
          sub_10006A2BC(v38, v36);
          sub_10006A2BC(v39, v37);
          sub_10006A2BC(v38, v36);
          sub_10006A2BC(v39, v37);
          v41 = v94;
          v42 = sub_100288788(v38, v36);
          v94 = v41;
          v98 = v42;
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v43 = BidirectionalCollection<>.joined(separator:)();
          v45 = v44;

          v98 = v43;
          v99 = v45;
          v46._countAndFlagsBits = 58;
          v46._object = 0xE100000000000000;
          String.append(_:)(v46);
          v100 = sub_100288788(v97, v37);
          v47 = BidirectionalCollection<>.joined(separator:)();
          v49 = v48;

          v50._countAndFlagsBits = v47;
          v50._object = v49;
          String.append(_:)(v50);

          v51 = v98;
          v52 = v99;
          *(inited + 72) = &type metadata for String;
          *(inited + 48) = v51;
          *(inited + 56) = v52;
          v53 = sub_10008FFDC(inited);
          swift_setDeallocating();
          sub_10024D88C(v95);
          v54 = v97;
          v55 = v93;
          sub_1003375E0(0xD000000000000025, v96 | 0x8000000000000000, v93, v36, v97, v37, v53);

          sub_10006A2D0(v54, v37);
          sub_10006A2D0(v55, v36);
          sub_10006A2D0(v54, v37);
          sub_10006A2D0(v55, v36);
        }
      }

      goto LABEL_8;
    }

    v30 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v98 = v59;
      *v58 = 136315138;
      LOBYTE(v100) = *(v6 + v96);
      v60 = String.init<A>(describing:)();
      v62 = sub_1002FFA0C(v60, v61, &v98);

      *(v58 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v30, v57, "Not sending device intent because of express state %s", v58, 0xCu);
      sub_1000752F4(v59);

      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v63 = v92 & 1;
  LODWORD(v96) = !(v92 & 1);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v98 = v67;
    *v66 = 136315138;
    if (v63)
    {
      v68 = 7827308;
    }

    else
    {
      v68 = 0x6D756964656DLL;
    }

    if (v63)
    {
      v69 = 0xE300000000000000;
    }

    else
    {
      v69 = 0xE600000000000000;
    }

    v70 = sub_1002FFA0C(v68, v69, &v98);

    *(v66 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v64, v65, "Sending device intent with %s confidence", v66, 0xCu);
    sub_1000752F4(v67);
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v71 = swift_allocObject();
  v93 = xmmword_100409900;
  *(v71 + 16) = xmmword_100409900;
  *(v71 + 32) = 3;
  *(v71 + 33) = v96;
  v72 = sub_1002B3B94(v71);
  v74 = v73;

  v75 = sub_100239160(3, 17, v72, v74);
  v76 = v72;
  v78 = v77;
  sub_10006A178(v76, v74);
  v79 = v94;
  sub_1000E71A0(v75, v78, v97);
  if (v79)
  {
    sub_1000E1E2C();
    swift_allocError();
    *v80 = 2;
    swift_willThrow();

    return sub_10006A178(v75, v78);
  }

  else
  {
    v81 = v96;
    v82.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    v94 = v78;
    isa = v82.super.super.isa;
    UUID.uuidString.getter();
    v84 = String._bridgeToObjectiveC()();

    v85 = v95;
    sub_1003ADF90(v95, isa, v84);

    sub_10004D584(v85, @"deviceIntentCount");
    v95 = String._bridgeToObjectiveC()();
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    LOBYTE(isa) = v81;
    v86 = swift_initStackObject();
    *(v86 + 16) = v93;
    *(v86 + 32) = 0x4449555572656550;
    *(v86 + 40) = 0xE800000000000000;
    *(v86 + 48) = UUID.uuidString.getter();
    *(v86 + 56) = v87;
    *(v86 + 72) = &type metadata for String;
    *(v86 + 80) = 0x6E656469666E6F43;
    *(v86 + 88) = 0xEF6C6576654C6563;
    *(v86 + 120) = &type metadata for UInt8;
    *(v86 + 96) = isa;
    sub_10008FFDC(v86);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    v88 = Dictionary._bridgeToObjectiveC()().super.isa;

    v89 = v95;
    PLLogRegisteredEvent();

    return sub_10006A178(v75, v94);
  }
}

void sub_100251F90()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v5 = qword_10051B7F0;
    *v4 = qword_10051B7F0;
    v6 = enum case for DispatchPredicate.onQueue(_:);
    v7 = v1 + 13;
    v8 = v1[13];
    v8(v4, enum case for DispatchPredicate.onQueue(_:), v0);
    v9 = v5;
    v10 = _dispatchPreconditionTest(_:)();
    v13 = v1[1];
    v11 = v1 + 1;
    v12 = v13;
    v13(v4, v0);
    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_42:
      swift_once();
      goto LABEL_10;
    }

    v60 = v9;
    v14 = *(v61 + 24);
    v15 = Logger.logObject.getter();
    if (v14)
    {
      break;
    }

    v58 = v11;
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, v18, "Starting AlishaBLE", v19, 2u);
    }

    *(v61 + 24) = 1;
    if (qword_100501D78 != -1)
    {
      goto LABEL_42;
    }

LABEL_10:
    v54 = v12;
    v55 = v8;
    v56 = v6;
    v57 = v7;
    v59 = v0;
    v20 = sub_1000CAAC4();
    v53 = v20;
    if ((v20 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for Peer();
      sub_100254CFC(&qword_100503F20, type metadata accessor for Peer);
      Set.Iterator.init(_cocoa:)();
      v21 = v64;
      v1 = v65;
      v22 = v66;
      v23 = v67;
      v24 = v68;
    }

    else
    {
      v25 = -1 << *(v20 + 32);
      v1 = (v20 + 56);
      v22 = ~v25;
      v26 = -v25;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v24 = v27 & *(v20 + 56);
      v23 = 0;
    }

    v52 = v22;
    v28 = (v22 + 64) >> 6;
    if (v21 < 0)
    {
      while (1)
      {
        v33 = __CocoaSet.Iterator.next()();
        if (!v33)
        {
          break;
        }

        v62 = v33;
        type metadata accessor for Peer();
        swift_dynamicCast();
        v32 = v63;
        v31 = v23;
        v0 = v24;
        if (!v63)
        {
          break;
        }

LABEL_25:
        if (qword_100501B98 != -1)
        {
          swift_once();
        }

        sub_100252B08(v32, 0, 0);

        v23 = v31;
        v24 = v0;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_29:
      sub_100093854();
      v34 = v61;

      v35 = v53;
      v36 = sub_100239364(v53, v34);

      if (qword_100501960 != -1)
      {
        swift_once();
      }

      v37 = sub_10022DA5C(v35);

      v38 = sub_1000E0348(v37);

      v41 = sub_100238B50(v36, v39, v40);

      if ((v41 & 0x100) != 0)
      {
        v42 = -120;
      }

      else
      {
        v42 = v41;
      }

      sub_1000F6564(0, v38, v42);

      v43 = v59;
      v44 = v56;
      v46 = v54;
      v45 = v55;
      if (qword_100501908 != -1)
      {
        swift_once();
      }

      v47 = qword_10051B230;
      sub_1000A7D8C(sub_1002537E0, 0);
      v48 = v60;
      *v4 = v60;
      v45(v4, v44, v43);
      v49 = v48;
      v50 = _dispatchPreconditionTest(_:)();
      v46(v4, v43);
      if (v50)
      {
        if (qword_100501968 == -1)
        {
LABEL_38:
          v51 = qword_10051B290;

          sub_100114834(0xD000000000000011, 0x80000001004607F0, v51, v47);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_38;
    }

LABEL_17:
    v29 = v23;
    v30 = v24;
    v31 = v23;
    if (v24)
    {
LABEL_21:
      v0 = (v30 - 1) & v30;
      v32 = *(*(v21 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));

      if (v32)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= v28)
      {
        goto LABEL_29;
      }

      v30 = v1[v31];
      ++v29;
      if (v30)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "AlishaBLE is already running", v17, 2u);
  }
}

void sub_100252624()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  i = *(v2 - 1);
  v4 = *(i + 64);
  __chkstk_darwin(v2);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(i + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(i + 8))(v6, v2);
    if ((v7 & 1) == 0)
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_7;
    }

    v9 = *(v1 + 24);
    v10 = Logger.logObject.getter();
    if (v9 != 1)
    {
      break;
    }

    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Stopping AlishaBLE", v12, 2u);
    }

    if (qword_100501D78 != -1)
    {
      goto LABEL_35;
    }

LABEL_7:
    v30 = v1;
    v2 = off_10050B110;
    v13 = sub_1000CAAC4();
    v6 = v13;
    if ((v13 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      v2 = __CocoaSet.makeIterator()();
      type metadata accessor for Peer();
      sub_100254CFC(&qword_100503F20, type metadata accessor for Peer);
      Set.Iterator.init(_cocoa:)();
      v15 = v33;
      v14 = v34;
      v16 = v35;
      v17 = v36;
      v1 = v37;
    }

    else
    {
      v20 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v16 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v1 = v22 & *(v13 + 56);

      v17 = 0;
      v15 = v6;
    }

    v29[1] = v16;
    for (i = (v16 + 64) >> 6; (v15 & 0x8000000000000000) != 0; v1 = v26)
    {
      v28 = __CocoaSet.Iterator.next()();
      if (!v28)
      {
        goto LABEL_29;
      }

      v31 = v28;
      type metadata accessor for Peer();
      swift_dynamicCast();
      v27 = v32;
      v25 = v17;
      v26 = v1;
      if (!v32)
      {
        goto LABEL_29;
      }

LABEL_25:
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      v2 = qword_10051B288;
      sub_1000E67E4(v27);

      v17 = v25;
    }

    v23 = v17;
    v24 = v1;
    v25 = v17;
    if (v1)
    {
LABEL_21:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v15 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (v27)
      {
        goto LABEL_25;
      }

LABEL_29:
      sub_100093854();

      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000F6564(0, &_swiftEmptySetSingleton, 128);
      *(v30 + 24) = 0;
      return;
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= i)
      {
        goto LABEL_29;
      }

      v24 = *(v14 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v10, v18, "AlishaBLE is not running", v19, 2u);
  }
}

void sub_100252B08(uint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (*(v3 + 24) == 1)
  {
    type metadata accessor for AlishaPeer();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v46 = a3;
      v15 = *(v14 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration);
      a3 = *(v15 + 104);
      v47 = *(v15 + 96);
      v16 = qword_100501960;

      if (v16 == -1)
      {
LABEL_7:
        v45[1] = qword_10051B288;
        sub_100068FC4(&qword_100503F10, &qword_10040A008);
        v17 = type metadata accessor for UUID();
        v18 = *(v17 - 8);
        v19 = *(v18 + 72);
        v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100409A40;
        v22 = v21 + v20;
        if (qword_100501D30 != -1)
        {
          swift_once();
        }

        v23 = sub_1000958E4(v17, qword_10051B7A0);
        v24 = *(v18 + 16);
        v24(v22, v23, v17);
        if (qword_100501D20 != -1)
        {
          swift_once();
        }

        v25 = sub_1000958E4(v17, qword_10051B770);
        v24(v22 + v19, v25, v17);
        v26 = v22 + 2 * v19;
        if (qword_100501D28 != -1)
        {
          swift_once();
        }

        v27 = sub_1000958E4(v17, qword_10051B788);
        v24(v26, v27, v17);
        v28 = *(v3 + 16);
        v29 = a2 & 1;
        v30 = v47;
        if (a2)
        {
          v31 = 0;
        }

        else
        {
          v31 = v47;
        }

        if (a2)
        {
          v32 = 0;
        }

        else
        {
          v32 = a3;
        }

        type metadata accessor for DSKBLE.BLEConnectionRequest();
        v33 = swift_allocObject();
        *(v33 + 16) = a1;
        *(v33 + 24) = 893797958;
        *(v33 + 32) = 0xE400000000000000;
        *(v33 + 40) = v21;
        *(v33 + 64) = v31;
        *(v33 + 72) = v32;
        *(v33 + 80) = v29;
        *(v33 + 81) = 0;
        *(v33 + 48) = v28;
        *(v33 + 56) = 0;
        *(v33 + 88) = sub_100254CC4;
        *(v33 + 96) = v3;
        *(v33 + 104) = sub_100254CDC;
        *(v33 + 112) = v3;
        *(v33 + 120) = sub_100254CE0;
        *(v33 + 128) = v3;
        *(v33 + 136) = sub_100254CE8;
        *(v33 + 144) = v3;
        *(v33 + 152) = sub_100254CEC;
        *(v33 + 160) = v3;
        *(v33 + 168) = sub_100254CF0;
        *(v33 + 176) = v3;
        swift_retain_n();

        v34 = v46;
        sub_1000EA4CC(v33, v46 & 1);

        if (v34)
        {
          sub_1000F3B5C(v30, a3, 0, 0x100u, a1);
        }

        return;
      }

LABEL_29:
      swift_once();
      goto LABEL_7;
    }

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v40 = 136315138;
      v42 = UUID.uuidString.getter();
      v44 = sub_1002FFA0C(v42, v43, &v48);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to cast Peer to AlishaPeer %s", v40, 0xCu);
      sub_1000752F4(v41);
    }
  }

  else
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Not running", v37, 2u);
    }
  }
}

uint64_t sub_100253124(int64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (*(v1 + 24) == 1)
    {
      if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
      {
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Sending RANGING_SESSION_NOT_REQUIRED", v12, 2u);
        }

        if (qword_100501B60 == -1)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

      sub_1000E1E2C();
      swift_allocError();
      v24 = 4;
    }

    else
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Not running", v22, 2u);
      }

      sub_100079E24();
      swift_allocError();
      v24 = 1;
    }

    *v23 = v24;
    return swift_willThrow();
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_9:
  v13 = sub_1002B3B94(&off_1004C3B00);
  v15 = v14;
  v16 = sub_100239160(3, 17, v13, v14);
  v18 = v17;
  sub_10006A178(v13, v15);
  if (qword_100501960 != -1)
  {
    swift_once();
  }

  sub_1000E71A0(v16, v18, a1);
  return sub_10006A178(v16, v18);
}

uint64_t sub_1002534AC()
{
  v0 = type metadata accessor for AlishaBLE();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1002534EC();
  qword_10051B5F8 = result;
  return result;
}

uint64_t sub_1002534EC()
{
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v3;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = 6;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v4;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = 21;
  v5 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  *(v0 + 16) = v5;
  *(v0 + 24) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_100254CA4;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193978;
  aBlock[3] = &unk_1004CCF98;
  v6 = _Block_copy(aBlock);

  os_state_add_handler();
  _Block_release(v6);
  return v0;
}

_DWORD *sub_1002536FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v9 = &type metadata for Bool;
  LOBYTE(v8) = v2;
  sub_100075D50(&v8, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v7, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  sub_1001950D4(&_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = sub_100015DA0("alishable.state", isa);

  return v5;
}

uint64_t sub_1002537E0()
{
  if (qword_1005019E8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v0 = sub_1000CAA04();
    if ((v0 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10014E510();
      sub_100254CFC(&qword_100503608, sub_10014E510);
      Set.Iterator.init(_cocoa:)();
      v2 = v27;
      v1 = v28;
      v3 = v29;
      v4 = v30;
      v5 = v31;
    }

    else
    {
      v6 = -1 << *(v0 + 32);
      v1 = v0 + 56;
      v3 = ~v6;
      v7 = -v6;
      v8 = v7 < 64 ? ~(-1 << v7) : -1;
      v5 = v8 & *(v0 + 56);
      v4 = 0;
    }

    v24 = v3;
    v9 = (v3 + 64) >> 6;
    v25 = v2;
    if (v2 < 0)
    {
      break;
    }

LABEL_9:
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (v5)
    {
LABEL_13:
      v13 = (v11 - 1) & v11;
      v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
      if (v14)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_21;
      }

      v11 = *(v1 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  while (__CocoaSet.Iterator.next()())
  {
    sub_10014E510();
    swift_dynamicCast();
    v14 = v26;
    v12 = v4;
    v13 = v5;
    if (!v26)
    {
      break;
    }

LABEL_17:
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    v15 = [v14 publicKeyIdentifier];
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    sub_1000A6DB8(v16, v18);
    sub_10006A178(v16, v18);
    v19 = [v14 publicKeyIdentifier];
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    sub_1000976F4(v20, v22);
    sub_10006A178(v20, v22);

    v4 = v12;
    v5 = v13;
    v2 = v25;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_21:
  sub_100093854();
}

uint64_t sub_100253AEC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v5;
    v19 = v18;
    v30 = v18;
    *v17 = 136315138;
    type metadata accessor for UUID();
    sub_100254CFC(&unk_100507480, &type metadata accessor for UUID);
    v20 = Dictionary.description.getter();
    v22 = sub_1002FFA0C(v20, v21, &v30);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Read characteristics %s", v17, 0xCu);
    sub_1000752F4(v19);
    v4 = v3;
    v5 = v29;
  }

  type metadata accessor for AlishaPeer();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    sub_100079E24();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    return v5;
  }

  v24 = v23;

  v25 = sub_100250494(a1, a2);
  if (!v4)
  {
    v5 = v25;
    *(v24 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) = WORD1(v25);
    if (qword_100501BA0 == -1)
    {
LABEL_11:
      sub_10025671C();

      return v5;
    }

LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  return v5;
}

void sub_100253E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Channel established", v13, 2u);
  }

  if (!a1)
  {
    if (qword_100501B60 == -1)
    {
LABEL_10:
      sub_1002348E0(a2);
      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_10;
  }

  swift_errorRetain();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = UUID.uuidString.getter();
    v19 = sub_1002FFA0C(v17, v18, &v24);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = sub_1002FFA0C(v20, v21, &v24);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error during connection attempt to %s %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1002541DC(uint64_t a1, unint64_t a2, int64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (qword_100501B60 != -1)
  {
LABEL_7:
    swift_once();
  }

  sub_100231150(a1, a2, a3);
}

void sub_100254374(unint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Disconnected", v11, 2u);
  }

  if (qword_100501B60 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_100234D44(a1);
}

void sub_10025456C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  v13 = enum case for DispatchPredicate.onQueue(_:);
  v40 = v8[13];
  (v40)(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v38 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v15 = v8[1];
  v14 = v8 + 1;
  v39 = v15;
  v15(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  v37 = v13;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v36 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v35 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = v14;
    v22 = v21;
    v43[0] = v21;
    *v20 = 134218754;
    *(v20 + 4) = v41;
    *(v20 + 12) = 2048;
    *(v20 + 14) = a2;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a3;
    *(v20 + 32) = 2080;
    v23 = UUID.uuidString.getter();
    v25 = a3;
    v26 = a4;
    v27 = sub_1002FFA0C(v23, v24, v43);

    *(v20 + 34) = v27;
    a4 = v26;
    a3 = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "Time sync event type %ld ticks %llu counter %llu peer %s", v20, 0x2Au);
    sub_1000752F4(v22);

    v7 = v35;
  }

  if (qword_100501BA0 != -1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v28 = qword_10051B600;
  *v11 = v38;
  v40(v11);
  v29 = _dispatchPreconditionTest(_:)();
  v39(v11, v7);
  if (v29)
  {
    v30 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v31 = OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents;
    swift_beginAccess();
    v32 = *(v28 + v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v28 + v31);
    *(v28 + v31) = 0x8000000000000000;
    sub_100314954(v41, v36, a3, a4 + v30, isUniquelyReferenced_nonNull_native);
    *(v28 + v31) = v42;
    swift_endAccess();
    sub_1002553AC(a4);
  }

  else
  {
    __break(1u);
  }
}

void sub_100254920(char a1, int64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_8;
  }

  if (*(a2 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) != 2)
  {
    return;
  }

  if (a1)
  {
    sub_100253124(a2);
    return;
  }

  sub_100251228(a2);
  if (qword_100501BA0 != -1)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1002558C4(0, a2);
}

uint64_t sub_100254B04()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC10seserviced9AlishaBLE_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaBLE()
{
  result = qword_100507E20;
  if (!qword_100507E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100254BFC()
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

uint64_t sub_100254CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100254CFC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100254D44(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
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
    v39 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v2 & ~(v2 >> 63), 0);
    v34 = _swiftEmptyArrayStorage;
    if (v32)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      result = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v36 = result;
    v37 = v4;
    v38 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v36;
        v10 = v38;
        v33 = v37;
        v11 = v1;
        sub_10008EDB4(v36, v37, v38, v1);
        v12 = UUID.uuidString.getter();
        v14 = v13;

        v15 = v34;
        v39 = v34;
        v17 = v34[2];
        v16 = v34[3];
        if (v17 >= v16 >> 1)
        {
          result = sub_10019F3C0((v16 > 1), v17 + 1, 1);
          v15 = v39;
        }

        v15[2] = v17 + 1;
        v18 = &v15[2 * v17];
        v18[4] = v12;
        v18[5] = v14;
        v34 = v15;
        if (v32)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          sub_100068FC4(&qword_100502C08, &qword_100409CC8);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v7(v35, 0);
          if (v6 == v31)
          {
LABEL_32:
            sub_1000937D4(v36, v37, v38);
            return v34;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v19 = 1 << *(v11 + 32);
          if (v9 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v9 >> 6;
          v21 = *(v30 + 8 * (v9 >> 6));
          if (((v21 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v33)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v9 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                result = sub_1000937D4(v9, v33, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            result = sub_1000937D4(v9, v33, 0);
          }

LABEL_31:
          v28 = *(v11 + 36);
          v36 = v19;
          v37 = v28;
          v38 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

void *sub_1002550A4(uint64_t a1)
{
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v29 = v1;
    v41 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = UUID.uuidString.getter();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_10019F3C0((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = v39;
      v21[5] = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1000937D4(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1002553AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_7;
  }

  v17 = OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (!*(v18 + 16) || (v16 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v19 = sub_10008C808(a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier), (v20 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v21 = (*(v18 + 56) + 24 * v19);
  v22 = *v21;
  v46 = v21[1];
  v47 = v22;
  v45 = v21[2];
  swift_endAccess();
  if (qword_100501B70 != -1)
  {
    goto LABEL_19;
  }

LABEL_7:
  v23 = qword_10051B5B0;

  v24 = sub_10024F2B4(v23, a1);

  v25 = sub_1000CA828(v24);

  if (v25)
  {
    if (*(v25 + OBJC_IVAR____TtC10seserviced10UWBSession_state) == 4)
    {

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();

      v44 = v27;
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v43 = v28;
        v42 = swift_slowAlloc();
        v48[0] = v42;
        *v28 = 136315138;
        v41 = v26;
        v29 = UUID.uuidString.getter();
        v31 = sub_1002FFA0C(v29, v30, v48);

        v32 = v43;
        *(v43 + 1) = v31;
        v33 = v41;
        _os_log_impl(&_mh_execute_header, v41, v44, "Processing time sync event for %s", v32, 0xCu);
        sub_1000752F4(v42);
      }

      else
      {
      }

      sub_100246580(v47, v46, v45);
      (*(v5 + 16))(v8, a1 + v16, v4);
      swift_beginAccess();
      sub_1000C4DD4(0, 0, 0, 1, v8);
      swift_endAccess();

      return;
    }
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48[0] = v37;
    *v36 = 136315138;
    v38 = UUID.uuidString.getter();
    v40 = sub_1002FFA0C(v38, v39, v48);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "No active UWB Alisha session for %s", v36, 0xCu);
    sub_1000752F4(v37);
  }
}

void sub_1002558C4(unsigned __int8 a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_100501B70 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v11 = qword_10051B5B0;

  v12 = sub_10024F2B4(v11, a2);

  v13 = sub_1000CA828(v12);

  if (v13)
  {
    type metadata accessor for UWBAlishaSession();
    if (swift_dynamicCastClass())
    {
      sub_100247CCC(a1);

      return;
    }
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    v18 = UUID.uuidString.getter();
    v20 = sub_1002FFA0C(v18, v19, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "No active UWB Alisha session for %s", v16, 0xCu);
    sub_1000752F4(v17);
  }
}

void sub_100255BA4()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_11;
  }

  v10 = *(v1 + 16);
  v11 = Logger.logObject.getter();
  if (v10)
  {
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "AlishaUWB is already running", v13, 2u);
    }

    return;
  }

  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v11, v14, "Starting AlishaUWB", v15, 2u);
  }

  *(v1 + 16) = 1;
  if (qword_1005019E8 != -1)
  {
    goto LABEL_24;
  }

LABEL_11:
  v16 = sub_1000CAA04();
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = __CocoaSet.count.getter();

    if (!v17)
    {
LABEL_15:
      v19 = sub_1000CAA04();
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = __CocoaSet.count.getter();

        if (!v20)
        {
          return;
        }
      }

      else
      {
        v21 = *(v19 + 16);

        if (!v21)
        {
          return;
        }
      }
    }
  }

  else
  {
    v18 = *(v16 + 16);

    if (!v18)
    {
      goto LABEL_15;
    }
  }

  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v23[3] = v2;
  v23[4] = &off_1004CCFC0;
  v23[0] = v1;

  sub_1002400AC(0, v23);
  sub_100075768(v23, &qword_100502F08, &qword_10040A000);
}

void sub_100255F64()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  __chkstk_darwin(v2);
  v6 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(v3 + 13))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v3 + 1))(v6, v2);
    if ((v7 & 1) == 0)
    {
      __break(1u);
LABEL_31:
      swift_once();
      goto LABEL_7;
    }

    v9 = *(v1 + 16);
    v10 = Logger.logObject.getter();
    if (v9 != 1)
    {
      break;
    }

    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Stopping AlishaUWB", v12, 2u);
    }

    if (qword_100501B70 != -1)
    {
      goto LABEL_31;
    }

LABEL_7:
    v32[2] = qword_10051B5B0;
    v13 = sub_100240658(qword_10051B5B0);
    v14 = v13;
    if ((v13 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UWBSession();
      sub_1002599B4(&qword_100507D00, type metadata accessor for UWBSession);
      Set.Iterator.init(_cocoa:)();
      v15 = v34;
      v3 = v35;
      v2 = v36;
      v6 = v37;
      v16 = v38;
    }

    else
    {
      v19 = -1 << *(v13 + 32);
      v3 = (v13 + 56);
      v2 = ~v19;
      v20 = -v19;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v16 = v21 & *(v13 + 56);

      v6 = 0;
      v15 = v14;
    }

    v32[1] = v2;
    for (i = (v2 + 64) >> 6; (v15 & 0x8000000000000000) != 0; v16 = v26)
    {
      v27 = __CocoaSet.Iterator.next()();
      if (!v27)
      {
        goto LABEL_27;
      }

      v32[3] = v27;
      type metadata accessor for UWBSession();
      swift_dynamicCast();
      v2 = v33;
      v25 = v6;
      v26 = v16;
      if (!v33)
      {
        goto LABEL_27;
      }

LABEL_25:
      sub_100246878();

      v6 = v25;
    }

    v23 = v6;
    v24 = v16;
    v25 = v6;
    if (v16)
    {
LABEL_21:
      v26 = (v24 - 1) & v24;
      v2 = *(*(v15 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
      if (v2)
      {
        goto LABEL_25;
      }

LABEL_27:
      sub_100093854();

      v28 = OBJC_IVAR____TtC10seserviced9AlishaUWB_rangingPeers;
      swift_beginAccess();
      v29 = *(v1 + v28);
      *(v1 + v28) = &_swiftEmptySetSingleton;

      v30 = OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents;
      swift_beginAccess();
      v31 = *(v1 + v30);
      *(v1 + v30) = _swiftEmptyDictionarySingleton;

      sub_100240A9C(0);
      *(v1 + 16) = 0;
      return;
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= i)
      {
        goto LABEL_27;
      }

      v24 = *&v3[8 * v25];
      v23 = (v23 + 1);
      if (v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v10, v17, "AlishaUWB is not running", v18, 2u);
  }
}

void sub_10025640C(uint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for UUID();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  __chkstk_darwin(v2);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = v6[13];
  v12(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v13 = v10;
  v14 = _dispatchPreconditionTest(_:)();
  v15 = v6[1];
  v15(v9, v5);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (*(v1 + 16) == 1)
  {
    *v9 = v13;
    v12(v9, v11, v5);
    v16 = v13;
    v17 = _dispatchPreconditionTest(_:)();
    v15(v9, v5);
    if (v17)
    {
      v18 = v26;
      (*(v23 + 16))(v26, v25 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v24);
      swift_beginAccess();
      sub_1000C4DD4(0, 0, 0, 1, v18);
      swift_endAccess();
      return;
    }

    goto LABEL_11;
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
  }
}

void sub_10025671C()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v1 + 16) == 1)
  {
    type metadata accessor for AlishaPeer();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v3 = v10;
      v11 = qword_100501B70;

      if (v11 == -1)
      {
LABEL_7:
        v12 = *(v3 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version);
        v24[3] = v2;
        v24[4] = &off_1004CD000;
        v24[0] = v1;

        sub_1002413A0(v3, v12, v24);

        sub_1000752F4(v24);
        return;
      }

LABEL_15:
      swift_once();
      goto LABEL_7;
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136315138;
      v20 = UUID.uuidString.getter();
      v22 = sub_1002FFA0C(v20, v21, v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to retrieve AlishaPeer for %s", v18, 0xCu);
      sub_1000752F4(v19);
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Not running", v15, 2u);
    }
  }
}

uint64_t sub_100256AC0()
{
  v0 = type metadata accessor for AlishaUWB();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100256B00();
  qword_10051B600 = result;
  return result;
}

uint64_t sub_100256B00()
{
  *(v0 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaUWB_rangingPeers) = &_swiftEmptySetSingleton;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_100259700;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004CD020;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_100256C58()
{
  v1 = *(v0 + 16);
  v19 = &type metadata for Bool;
  LOBYTE(v18) = v1;
  sub_100075D50(&v18, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v17, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v3 = OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents;
  swift_beginAccess();
  v4 = *(v0 + v3);

  v6 = sub_1002550A4(v5);

  v7 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v19 = v7;
  *&v18 = v6;
  sub_100075D50(&v18, v17);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v17, 0xD000000000000015, 0x8000000100462A70, v8);
  v9 = OBJC_IVAR____TtC10seserviced9AlishaUWB_rangingPeers;
  swift_beginAccess();
  v10 = *(v0 + v9);

  v12 = sub_100254D44(v11);

  v19 = v7;
  *&v18 = v12;
  sub_100075D50(&v18, v17);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v17, 0x50676E69676E6172, 0xEC00000073726565, v13);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = sub_100015DA0("alishauwb.state", isa);

  return v15;
}

uint64_t sub_100256E78(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v92 = a7;
  v95 = a6;
  LODWORD(v93) = a9;
  v14 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v91 = (&v84 - v16);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v87 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v88 = &v84 - v23;
  __chkstk_darwin(v22);
  v25 = &v84 - v24;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(*(v26 - 8) + 64);
  result = __chkstk_darwin(v26);
  v31 = (&v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v89 = v29;
    v90 = result;
    v86 = a8;
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v94 = a5;
      v85 = v35;
      v97 = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = v25;
      v39 = v18;
      v40 = v17;
      v41 = a3;
      v42 = sub_1002FFA0C(v36, v37, &v97);

      *(v34 + 4) = v42;
      a3 = v41;
      v17 = v40;
      v18 = v39;
      v25 = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to process DK UWB message %s", v34, 0xCu);
      sub_1000752F4(v85);
      a5 = v94;
    }

    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v85 = qword_10051B5A0;
    v43 = sub_1002B3B94(&off_1004C4A18);
    v94 = v44;
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v45 = qword_10051B7F0;
    *v31 = qword_10051B7F0;
    v46 = v89;
    v47 = v90;
    (*(v89 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v90);
    v48 = v45;
    LOBYTE(v45) = _dispatchPreconditionTest(_:)();
    v50 = *(v46 + 8);
    v49 = v46 + 8;
    v50(v31, v47);
    if ((v45 & 1) == 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v51 = v95;
    if (v95)
    {
      v52 = v91;
      sub_1000756F8(v92, v91);
      if ((*(v18 + 48))(v52, 1, v17) != 1)
      {
        v90 = v43;
        v92 = a3;
        (*(v18 + 32))(v25, v52, v17);
        v56 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        swift_beginAccess();
        v57 = v18;
        v58 = *(v18 + 16);
        v59 = v88;
        (v58)(v88, a5 + v56, v17);
        v60 = static UUID.== infix(_:_:)();
        v63 = *(v57 + 8);
        v61 = v57 + 8;
        v62 = v63;
        (v63)(v59, v17);
        if ((v60 & 1) == 0)
        {
          v95 = v61;
          v67 = v87;
          v93 = v25;
          (v58)(v87, v25, v17);

          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v91 = v62;
            v71 = v70;
            v89 = swift_slowAlloc();
            v96 = v89;
            *v71 = 136315394;
            sub_1002599B4(&qword_100504C70, &type metadata accessor for UUID);
            v85 = v58;
            LODWORD(v86) = v69;
            v72 = dispatch thunk of CustomStringConvertible.description.getter();
            v73 = a5;
            v75 = v74;
            (v91)(v67, v17);
            v76 = sub_1002FFA0C(v72, v75, &v96);

            *(v71 + 4) = v76;
            *(v71 + 12) = 2080;
            v77 = v73 + v56;
            v78 = v88;
            (v85)(v88, v77, v17);
            v79 = dispatch thunk of CustomStringConvertible.description.getter();
            v81 = v80;
            (v91)(v78, v17);
            v82 = sub_1002FFA0C(v79, v81, &v96);

            *(v71 + 14) = v82;
            _os_log_impl(&_mh_execute_header, v68, v86, "Connection identifier has changed %s %s", v71, 0x16u);
            swift_arrayDestroy();

            v62 = v91;
          }

          else
          {

            (v62)(v67, v17);
          }

          (v62)(v93, v17);

          v83 = v90;
          return sub_10006A178(v83, v94);
        }

        (v62)(v25, v17);
        v43 = v90;
        if ((v95 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      sub_100075768(v52, &unk_10050BE80, &unk_10040B360);
    }

    if ((v51 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    if ((v93 & 1) == 0)
    {
      v53 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
      if (*(a5 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) != v86)
      {

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 134218240;
          *(v66 + 4) = v86;
          *(v66 + 12) = 2048;
          *(v66 + 14) = *(a5 + v53);

          _os_log_impl(&_mh_execute_header, v64, v65, "Sequence number has changed %ld %ld", v66, 0x16u);
        }

        else
        {
        }

        goto LABEL_33;
      }
    }

LABEL_15:
    v31 = sub_100239160(3, 17, v43, v94);
    v49 = v54;
    if (qword_100501960 == -1)
    {
LABEL_16:
      sub_1000E71A0(v31, v49, a5);
      sub_10006A178(v31, v49);
LABEL_33:

      v83 = v43;
      return sub_10006A178(v83, v94);
    }

LABEL_39:
    swift_once();
    goto LABEL_16;
  }

  if (a2 >> 60 != 15)
  {
    sub_100069E2C(a1, a2);
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000E71A0(a1, a2, a5);
    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v55 = qword_10051B5A0;

    sub_10023CC0C(a1, a2, 0, a5, v55, a5);

    return sub_10006A2D0(a1, a2);
  }

  return result;
}

void sub_100257878(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  if (v4 <= 0x13 && ((1 << v4) & 0x80440) != 0)
  {
    v6 = objc_opt_self();
    UUID.uuidString.getter();
    v7 = String._bridgeToObjectiveC()();

    sub_1003AE0BC(v6, v7);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  sub_100069E2C(v8, v9);
  v10 = sub_1000939AC(v8, v9, 0, 0, 0);
  sub_100069E2C(v8, v9);
  v11 = sub_1000939AC(v8, v9, 1, 0, 0);
  if (v4 == 17 && *a1 == 3 && v10 == 2)
  {
    if (v11 == 6)
    {
      v21 = qword_1005019E8;

      if (v21 != -1)
      {
        swift_once();
      }

      v22 = swift_allocObject();
      *(v22 + 16) = sub_10023F6D8;
      *(v22 + 24) = a2;

      v23 = sub_1000CAA04();

      v28 = sub_1000CA810(v23);

      if (v28)
      {
        v24 = [v28 readerInfo];
        if (v24)
        {
          v16 = v24;
          v25 = objc_opt_self();
          v18 = [v28 getEndpointUser];
          UUID.uuidString.getter();
          v27 = String._bridgeToObjectiveC()();

          v19 = v25;
          v20 = 6;
          goto LABEL_21;
        }

LABEL_23:
        v26 = v28;
        goto LABEL_24;
      }
    }

    else if (v11 == 1)
    {
      v12 = qword_1005019E8;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = swift_allocObject();
      *(v13 + 16) = sub_10023FA88;
      *(v13 + 24) = a2;

      v14 = sub_1000CAA04();

      v28 = sub_1000CA810(v14);

      if (v28)
      {
        v15 = [v28 readerInfo];
        if (v15)
        {
          v16 = v15;
          v17 = objc_opt_self();
          v18 = [v28 getEndpointUser];
          UUID.uuidString.getter();
          v27 = String._bridgeToObjectiveC()();

          v19 = v17;
          v20 = 1;
LABEL_21:
          sub_10004D01C(v19, 2, v20, v16, v18, v27);

          v26 = v27;
LABEL_24:

          return;
        }

        goto LABEL_23;
      }
    }
  }
}

void sub_100257CB0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = UUID.uuidString.getter();
      v15 = sub_1002FFA0C(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "UWB Alisha session started running for %s", v11, 0xCu);
      sub_1000752F4(v12);
    }

    sub_1002553AC(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_100257EF8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = UUID.uuidString.getter();
      v14 = sub_1002FFA0C(v12, v13, &v19);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      v15 = sub_1002482E8(a1);
      v17 = sub_1002FFA0C(v15, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "UWB Alisha session suspended for %s %s", v11, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100258170(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_7;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315138;
    v13 = UUID.uuidString.getter();
    v15 = sub_1002FFA0C(v13, v14, v17);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "UWB Alisha session resumed for %s", v11, 0xCu);
    sub_1000752F4(v12);
  }

  sub_1002553AC(a1);
  if (qword_100501960 != -1)
  {
    goto LABEL_16;
  }

LABEL_7:
  v16 = sub_1000E7974(a1);
  if (v16 != 2 && (v16 & 1) == 0)
  {
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    sub_100251228(a1);
    if (qword_100501BA0 != -1)
    {
      swift_once();
    }

    sub_1002558C4(0, a1);
  }
}

void sub_1002584A4(uint64_t a1, unint64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  sub_100069E2C(a1, a2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  sub_10006A178(a1, a2);
  v18 = os_log_type_enabled(v16, v17);
  v37 = a3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v36[1] = v4;
    v20 = v19;
    v36[0] = swift_slowAlloc();
    v39[0] = v36[0];
    *v20 = 136315394;
    v21 = UUID.uuidString.getter();
    v23 = sub_1002FFA0C(v21, v22, v39);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v12 = 0;
    v38 = sub_100288788(a1, a2);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v24 = BidirectionalCollection<>.joined(separator:)();
    v26 = v25;

    v27 = sub_1002FFA0C(v24, v26, v39);

    *(v20 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "UWB Alisha session message for %s %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v12 = 0;
  }

  if (qword_100501960 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  sub_1000E71A0(a1, a2, v37);
  if (v12)
  {
    sub_100069E2C(a1, a2);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 136315138;
      v38 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v32 = BidirectionalCollection<>.joined(separator:)();
      v34 = v33;

      v35 = sub_1002FFA0C(v32, v34, v39);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to send %s", v30, 0xCu);
      sub_1000752F4(v31);
    }
  }
}

void sub_100258958(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v13 = 136315394;
    LOBYTE(v66) = a1;
    v14 = String.init<A>(describing:)();
    v16 = sub_1002FFA0C(v14, v15, v67);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = UUID.uuidString.getter();
    v19 = sub_1002FFA0C(v17, v18, v67);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "UWB Alisha session health update %s for %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  if (a1 == 3)
  {
    swift_beginAccess();
    v37 = sub_10010DAA4();
    swift_endAccess();
    if (!v37)
    {
LABEL_19:
      v53 = qword_1005019E8;

      if (v53 != -1)
      {
        swift_once();
      }

      v54 = swift_allocObject();
      *(v54 + 16) = sub_10023FA88;
      *(v54 + 24) = a2;

      v55 = sub_1000CAA04();

      v24 = sub_1000CA810(v55);

      if (v24)
      {
        v56 = [v24 readerInfo];
        if (v56)
        {
          v57 = v56;
          v58 = objc_opt_self();
          v59 = [v24 getEndpointUser];
          UUID.uuidString.getter();
          v60 = String._bridgeToObjectiveC()();

          sub_10004D01C(v58, 0x8000, 0xFFFF, v57, v59, v60);

          v24 = v60;
        }

        goto LABEL_28;
      }

      return;
    }

    v38 = qword_1005019E8;

    if (v38 == -1)
    {
LABEL_16:
      v39 = swift_allocObject();
      *(v39 + 16) = sub_10023FA88;
      *(v39 + 24) = a2;

      v40 = sub_1000CAA04();

      v41 = sub_1000CA810(v40);

      if (!v41)
      {
        goto LABEL_26;
      }

      v42 = [v41 readerIdentifier];
      if (!v42)
      {

        goto LABEL_26;
      }

      v43 = v42;
      v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v65 = "rs";
      v47 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
      v48 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      v49 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v50 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004098F0;
      *(inited + 72) = &type metadata for Data;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x8000000100461D10;
      *(inited + 48) = v44;
      v64 = v44;
      *(inited + 56) = v46;
      sub_10006A2BC(v47, v48);
      sub_10006A2BC(v49, v50);
      sub_100069E2C(v44, v46);
      v52 = sub_10008FFDC(inited);
      swift_setDeallocating();
      sub_100075768(inited + 32, &qword_100507D30, &unk_100409C90);
      sub_1003375E0(0xD000000000000040, v65 | 0x8000000000000000, v47, v48, v49, v50, v52);

      sub_10006A2D0(v49, v50);
      sub_10006A2D0(v47, v48);
      sub_10006A178(v64, v46);

      goto LABEL_19;
    }

LABEL_31:
    swift_once();
    goto LABEL_16;
  }

  if (a1 == 1)
  {
    swift_beginAccess();

    v20 = sub_1000D5D24(&v66, a2);
    swift_endAccess();

    if (v20)
    {
      v21 = qword_1005019E8;

      if (v21 != -1)
      {
        swift_once();
      }

      v22 = swift_allocObject();
      *(v22 + 16) = sub_10023FA88;
      *(v22 + 24) = a2;

      v23 = sub_1000CAA04();

      v24 = sub_1000CA810(v23);

      if (v24)
      {
        v25 = [v24 readerIdentifier];
        if (v25)
        {
          v26 = v25;
          v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v65 = ".did.ranging.end";
          v30 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
          v31 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
          v32 = a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier;
          v33 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
          v34 = *(v32 + 8);
          sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
          v35 = swift_initStackObject();
          *(v35 + 16) = xmmword_100409900;
          *(v35 + 32) = 0xD000000000000010;
          *(v35 + 40) = 0x8000000100461D10;
          *(v35 + 48) = v27;
          *(v35 + 56) = v29;
          *(v35 + 72) = &type metadata for Data;
          *(v35 + 80) = 0xD000000000000011;
          *(v35 + 120) = &type metadata for Int;
          *(v35 + 88) = 0x80000001004690E0;
          *(v35 + 96) = 180;
          sub_10006A2BC(v30, v31);
          sub_10006A2BC(v33, v34);
          sub_100069E2C(v27, v29);
          v36 = sub_10008FFDC(v35);
          swift_setDeallocating();
          sub_100068FC4(&qword_100507D30, &unk_100409C90);
          swift_arrayDestroy();
          sub_1003375E0(0xD000000000000042, v65 | 0x8000000000000000, v30, v31, v33, v34, v36);

          sub_10006A2D0(v33, v34);
          sub_10006A2D0(v30, v31);
          sub_10006A178(v27, v29);
LABEL_28:

          return;
        }
      }

LABEL_26:
      v24 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v24, v61, "Failed to retrieve endpoint", v62, 2u);
      }

      goto LABEL_28;
    }
  }
}

uint64_t sub_100259310()
{
  v1 = OBJC_IVAR____TtC10seserviced9AlishaUWB_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced9AlishaUWB_pendingTimeSyncEvents);

  v4 = *(v0 + OBJC_IVAR____TtC10seserviced9AlishaUWB_rangingPeers);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaUWB()
{
  result = qword_100507EF8;
  if (!qword_100507EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100259420()
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

void sub_1002595A8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (a1)
    {
      v9 = objc_opt_self();
      sub_10004EBC8(v9, 2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100259704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10025971C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100259754(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = UUID.uuidString.getter();
      v15 = sub_1002FFA0C(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "UWB Alisha session invalidated for %s", v11, 0xCu);
      sub_1000752F4(v12);
    }

    if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
    {
      sub_10025671C();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002599B4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100259A0C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  result = sub_10025C4F4();
  if (v1)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    v10 = sub_1000958E4(v9, qword_10051B240);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v19[3] = a1;
      v14 = v13;
      v15 = swift_slowAlloc();
      v19[1] = v10;
      v16 = v4;
      v17 = v15;
      *v14 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to open database %@, resetting", v14, 0xCu);
      sub_100075768(v17, &unk_100503F70, &unk_10040B2E0);
      v4 = v16;
    }

    else
    {
    }

    sub_10025C1D8(1, v7);
    (*(v4 + 8))(v7, v3);
    swift_allocObject();
    return sub_10025C4F4();
  }

  return result;
}

uint64_t SEStorageMockEntryStore.context.getter()
{
  type metadata accessor for SEStorageMockEntryStore.Context();
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  v3 = type metadata accessor for ModelContext();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  *(v1 + 16) = ModelContext.init(_:)();
  return v1;
}

void *sub_100259EC4(void *a1)
{
  v43 = a1;
  v46 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v46);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v43 - v7;
  v9 = sub_100068FC4(&qword_1005080F8, &qword_100410778);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v43 - v11;
  v44 = sub_100068FC4(&qword_100508100, &qword_100410780);
  v13 = *(v44 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v44);
  v16 = &v43 - v15;
  v17 = *(v1 + 16);
  v18 = sub_100068FC4(&qword_100508108, &qword_100410788);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  type metadata accessor for SEStorageMockPassSchemaV1.PassEntry();
  v19 = sub_10025CAD8(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  FetchDescriptor.init(predicate:sortBy:)();
  v20 = v45;
  v21 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v20)
  {
    (*(v13 + 8))(v16, v44);
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000958E4(v22, qword_10051B240);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_1002FFA0C(0x736573736170, 0xE600000000000000, &v47);
      *(v25 + 12) = 2080;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = sub_1002FFA0C(v26, v27, &v47);

      *(v25 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s Swift Data Error %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = v43;
    *v43 = 0x656761726F7473;
    v29[1] = 0xE700000000000000;
    v30 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v31 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    (*(*(v31 - 8) + 104))(v29, v30, v31);
    sub_10025CAD8(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_willThrowTypedImpl();

    return v19;
  }

  v32 = v21;
  (*(v13 + 8))(v16, v44);
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_22:

    return _swiftEmptyArrayStorage;
  }

  v33 = _CocoaArrayWrapper.endIndex.getter();
  if (!v33)
  {
    goto LABEL_22;
  }

LABEL_9:
  v47 = _swiftEmptyArrayStorage;
  result = sub_10019F808(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v45 = v32;
    v19 = v47;
    v35 = v32;
    if ((v32 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v33; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10031B580(v8);
        swift_unknownObjectRelease();
        v47 = v19;
        v38 = v19[2];
        v37 = v19[3];
        if (v38 >= v37 >> 1)
        {
          sub_10019F808(v37 > 1, v38 + 1, 1);
          v19 = v47;
        }

        v19[2] = v38 + 1;
        (*(v2 + 32))(v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v38, v8, v46);
      }
    }

    else
    {
      v39 = 32;
      do
      {
        v40 = *(v35 + v39);

        sub_10031B580(v6);

        v47 = v19;
        v42 = v19[2];
        v41 = v19[3];
        if (v42 >= v41 >> 1)
        {
          sub_10019F808(v41 > 1, v42 + 1, 1);
          v19 = v47;
        }

        v19[2] = v42 + 1;
        (*(v2 + 32))(v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v42, v6, v46);
        v39 += 8;
        --v33;
        v35 = v45;
      }

      while (v33);
    }

    return v19;
  }

  __break(1u);
  return result;
}

unint64_t sub_10025A56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = sub_100068FC4(&qword_1005080F8, &qword_100410778);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v36 - v12;
  v14 = sub_100068FC4(&qword_100508100, &qword_100410780);
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v38 = a1;
  v39 = a2;
  v40[2] = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry();
  Predicate.init(_:)();
  v18 = sub_100068FC4(&qword_100508108, &qword_100410788);
  (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  sub_10025CAD8(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  FetchDescriptor.init(predicate:sortBy:)();
  v19 = *(v4 + 16);
  result = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (!v5)
  {
    if (result >> 62)
    {
      v32 = v14;
      v33 = result;
      v34 = _CocoaArrayWrapper.endIndex.getter();
      result = v33;
      v14 = v32;
      if (v34)
      {
        goto LABEL_9;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      if ((result & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v30 = *(result + 32);
      }

      sub_10031B580(a4);

      (*(v37 + 8))(v17, v14);
      v31 = 0;
LABEL_15:
      v35 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
      return (*(*(v35 - 8) + 56))(a4, v31, 1, v35);
    }

    (*(v37 + 8))(v17, v14);

    v31 = 1;
    goto LABEL_15;
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v36 = v14;
  v21 = type metadata accessor for Logger();
  sub_1000958E4(v21, qword_10051B240);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_1002FFA0C(0xD000000000000011, 0x80000001004691A0, v40);
    *(v24 + 12) = 2080;
    swift_getErrorValue();
    v25 = Error.localizedDescription.getter();
    v27 = sub_1002FFA0C(v25, v26, v40);

    *(v24 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s Swift Data Error %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  *a3 = 0x656761726F7473;
  a3[1] = 0xE700000000000000;
  v28 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v29 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  (*(*(v29 - 8) + 104))(a3, v28, v29);
  sub_10025CAD8(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_willThrowTypedImpl();

  return (*(v37 + 8))(v17, v36);
}

uint64_t sub_10025AAF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = sub_100068FC4(&qword_100508190, &qword_1004107E8);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = sub_100068FC4(&qword_100508118, &qword_100410790);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = sub_100068FC4(&qword_100508120, &qword_100410798);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v24 - v19;
  v21 = *a1;
  sub_100075C60(&qword_100508130, &qword_100508118, &qword_100410790);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v12 + 8))(v15, v11);
  v28 = v24;
  v29 = v25;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = sub_100068FC4(&qword_100508198, &unk_1004107F0);
  a4[4] = sub_10025CDAC();
  sub_1000B9634(a4);
  sub_100075C60(&qword_100508178, &qword_100508120, &qword_100410798);
  sub_100075C60(&qword_1005081B0, &qword_100508190, &qword_1004107E8);
  v22 = v26;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v10, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_10025AE64(uint64_t a1, void *a2)
{
  v73 = a2;
  v4 = v3;
  v6 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  __chkstk_darwin(v6);
  v79 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100068FC4(&qword_100508188, &qword_1004107E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v67 - v11;
  v82 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v13 = *(*(v82 - 8) + 64);
  v14 = __chkstk_darwin(v82);
  v76 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v22 = &v67 - v18;
  v23 = *(a1 + 16);
  if (v23)
  {
    v69 = v20;
    v70 = v19;
    v68 = v21;
    v26 = *(v21 + 16);
    v25 = v21 + 16;
    v24 = v26;
    v77 = &v67 - v18;
    v78 = (v25 - 8);
    v27 = (a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64)));
    v74 = *(v25 + 56);
    v75 = (v25 + 32);
    v81 = v25;
    while (1)
    {
      v28 = v24;
      v24(v22, v27, v82);
      v29 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
      v30 = v2;
      sub_10025A56C(v29, v31, v79, v12);
      if (v4)
      {
        (*v78)(v77, v82);

        return (*(v71 + 32))(v73, v79, v72);
      }

      if ((*v75)(v12, 1, v82) != 1)
      {
        break;
      }

      sub_100075768(v12, &qword_100508188, &qword_1004107E0);
      v80 = v23;
      v33 = v76;
      v32 = v77;
      v28(v76, v77, v82);
      v34 = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      sub_10031B0C4(v33);
      v37 = *(v2 + 16);
      sub_10025CAD8(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
      v22 = v32;
      dispatch thunk of ModelContext.insert<A>(_:)();
      v2 = v30;
      v4 = 0;
      v38 = v80;

      (*v78)(v32, v82);
      v24 = v28;
      v27 += v74;
      v23 = v38 - 1;
      if (!v23)
      {
        goto LABEL_6;
      }
    }

    v80 = v2;
    v50 = v70;
    (*(v68 + 32))(v70, v12, v82);
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000958E4(v51, qword_10051B240);
    v52 = v69;
    v28(v69, v50, v82);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v83 = v56;
      *v55 = 136315138;
      v57 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
      v59 = v58;
      v60 = *v78;
      (*v78)(v52, v82);
      v61 = sub_1002FFA0C(v57, v59, &v83);

      *(v55 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "Pass %s already exists.", v55, 0xCu);
      sub_1000752F4(v56);
    }

    else
    {

      v60 = *v78;
      (*v78)(v52, v82);
    }

    v62 = v77;
    v63 = *(v80 + 16);
    dispatch thunk of ModelContext.rollback()();
    v65 = v72;
    v64 = v73;
    *v73 = 0x746163696C707564;
    v64[1] = 0xE900000000000065;
    (*(v71 + 104))(v64, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v65);
    sub_10025CAD8(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_willThrowTypedImpl();
    v66 = v82;
    v60(v70, v82);
    return (v60)(v62, v66);
  }

  else
  {
LABEL_6:
    v39 = *(v2 + 16);
    result = dispatch thunk of ModelContext.hasChanges.getter();
    if (result)
    {
      result = dispatch thunk of ModelContext.save()();
      if (v4)
      {
        if (qword_100501938 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_1000958E4(v41, qword_10051B240);
        swift_errorRetain();
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *v44 = 136315394;
          *(v44 + 4) = sub_1002FFA0C(0x3A5F2865726F7473, 0xE900000000000029, &v83);
          *(v44 + 12) = 2080;
          swift_getErrorValue();
          v45 = Error.localizedDescription.getter();
          v47 = sub_1002FFA0C(v45, v46, &v83);

          *(v44 + 14) = v47;
          _os_log_impl(&_mh_execute_header, v42, v43, "%s Swift Data Error %s", v44, 0x16u);
          swift_arrayDestroy();
        }

        dispatch thunk of ModelContext.rollback()();
        v49 = v72;
        v48 = v73;
        *v73 = 0x656761726F7473;
        v48[1] = 0xE700000000000000;
        (*(v71 + 104))(v48, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v49);
        sub_10025CAD8(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
        swift_willThrowTypedImpl();
      }
    }
  }

  return result;
}

unint64_t sub_10025B6EC(uint64_t a1, void *a2)
{
  v56 = a2;
  v4 = v3;
  v64 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v6 = *(v64 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v64);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100068FC4(&qword_1005080F8, &qword_100410778);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v52 - v11;
  v13 = sub_100068FC4(&qword_100508100, &qword_100410780);
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = *(v58 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v18 = *(a1 + 16);
  v19 = _swiftEmptyArrayStorage;
  v57 = &v52 - v16;
  if (v18)
  {
    v53 = v12;
    v54 = v2;
    v55 = v3;
    v66 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v18, 0);
    v19 = v66;
    v21 = *(v6 + 16);
    v20 = v6 + 16;
    v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v60 = *(v20 + 56);
    v61 = v21;
    v62 = v20;
    v23 = (v20 - 8);
    do
    {
      v24 = v63;
      v25 = v64;
      v61(v63, v22, v64);
      v26 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
      v28 = v27;
      v15 = (*v23)(v24, v25);
      v66 = v19;
      v30 = v19[2];
      v29 = v19[3];
      if (v30 >= v29 >> 1)
      {
        v15 = sub_10019F3C0((v29 > 1), v30 + 1, 1);
        v19 = v66;
      }

      v19[2] = v30 + 1;
      v31 = &v19[2 * v30];
      v31[4] = v26;
      v31[5] = v28;
      v22 += v60;
      --v18;
    }

    while (v18);
    v17 = v57;
    v2 = v54;
    v4 = v55;
    v12 = v53;
  }

  __chkstk_darwin(v15);
  *(&v52 - 2) = v19;
  v66 = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry();
  Predicate.init(_:)();

  v32 = sub_100068FC4(&qword_100508108, &qword_100410788);
  (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
  sub_10025CAD8(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  FetchDescriptor.init(predicate:sortBy:)();
  v33 = *(v2 + 16);
  result = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v4)
  {
    goto LABEL_8;
  }

  v45 = result;
  v63 = 0;
  v64 = &v52;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v46 = result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v46 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v46)
    {
      goto LABEL_22;
    }
  }

  if (v46 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v46; ++i)
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v48 = *(v45 + 8 * i + 32);
    }

    dispatch thunk of ModelContext.delete<A>(_:)();
  }

LABEL_22:

  if ((dispatch thunk of ModelContext.hasChanges.getter() & 1) == 0)
  {
    v51 = v58;
    v50 = v59;
    v17 = v57;
    return (*(v51 + 8))(v17, v50);
  }

  v49 = v63;
  dispatch thunk of ModelContext.save()();
  v17 = v57;
  if (!v49)
  {
    v51 = v58;
    v50 = v59;
    return (*(v51 + 8))(v17, v50);
  }

LABEL_8:
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000958E4(v35, qword_10051B240);
  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v65 = v63;
    *v38 = 136315394;
    *(v38 + 4) = sub_1002FFA0C(0xD000000000000010, 0x8000000100469180, &v65);
    *(v38 + 12) = 2080;
    swift_getErrorValue();
    v39 = Error.localizedDescription.getter();
    v41 = sub_1002FFA0C(v39, v40, &v65);

    *(v38 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s Swift Data Error %s", v38, 0x16u);
    swift_arrayDestroy();
  }

  dispatch thunk of ModelContext.rollback()();
  v42 = v56;
  *v56 = 0x656761726F7473;
  v42[1] = 0xE700000000000000;
  v43 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v44 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  (*(*(v44 - 8) + 104))(v42, v43, v44);
  sub_10025CAD8(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_willThrowTypedImpl();

  return (*(v58 + 8))(v17, v59);
}

uint64_t sub_10025BE08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100068FC4(&qword_100508118, &qword_100410790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = sub_100068FC4(&qword_100508120, &qword_100410798);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = sub_100068FC4(&qword_100508128, &unk_1004107A0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100075C60(&qword_100508130, &qword_100508118, &qword_100410790);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v10, v6);
  a3[3] = sub_100068FC4(&qword_100508138, &qword_1004107D8);
  a3[4] = sub_10025CB28();
  sub_1000B9634(a3);
  sub_100075C60(&qword_100508170, &qword_100508128, &unk_1004107A0);
  sub_100075C60(&qword_100508178, &qword_100508120, &qword_100410798);
  sub_100075C60(&qword_100508180, &unk_100503E60, &qword_10040A3B0);
  v22 = v25;
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t SEStorageMockEntryStore.Context.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_10025C1D8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  v37 = 0;
  v13 = [v12 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v37];

  v14 = v37;
  if (v13)
  {
    v36 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    URL.appendingPathComponent(_:isDirectory:)();
    if (a1)
    {
      v16 = [v11 defaultManager];
      URL._bridgeToObjectiveC()(v17);
      v19 = v18;
      v37 = 0;
      v20 = [v16 removeItemAtURL:v18 error:&v37];

      v21 = v37;
      if (!v20)
      {
        goto LABEL_7;
      }

      v22 = v37;
    }

    v23 = [v11 defaultManager];
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    v37 = 0;
    v27 = [v23 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&v37];

    v21 = v37;
    if (v27)
    {
      v28 = v37;
      URL.appendingPathComponent(_:)();
LABEL_8:
      v30 = *(v4 + 8);
      v31 = v8;
      v32 = v36;
      v30(v31, v36);
      return (v30)(v10, v32);
    }

LABEL_7:
    v29 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_8;
  }

  v34 = v37;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void *sub_10025C4F4()
{
  v1 = *v0;
  v2 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ModelConfiguration();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  *&v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v51 - v16;
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = v65;
  sub_10025C1D8(0, &v51 - v18);
  if (v20)
  {
    goto LABEL_9;
  }

  v56 = v17;
  v57 = v14;
  v58 = v5;
  v59 = 0;
  v61 = v0;
  v62 = v19;
  v21 = v63;
  v60 = v9;
  v65 = v6;
  v54 = v1;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000958E4(v22, qword_10051B240);
  v23 = v21;
  v24 = *(v21 + 16);
  v25 = v56;
  v26 = v62;
  v27 = v10;
  v24(v56, v62, v10);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v53 = v29;
    v31 = v30;
    v66 = swift_slowAlloc();
    v32 = v23;
    v33 = v66;
    *v31 = 136315138;
    v52 = URL.absoluteString.getter();
    v35 = v34;
    v56 = *(v32 + 8);
    v56(v25, v27);
    v36 = sub_1002FFA0C(v52, v35, &v66);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v53, "Constructing database at %s", v31, 0xCu);
    sub_1000752F4(v33);
    v26 = v62;
  }

  else
  {

    v56 = *(v23 + 8);
    v56(v25, v27);
  }

  v37 = v60;
  v55 = v27;
  v24(v57, v26, v27);
  static ModelConfiguration.CloudKitDatabase.automatic.getter();
  ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
  type metadata accessor for ModelContainer();
  sub_100068FC4(&qword_1005081B8, &qword_100410800);
  v38 = swift_allocObject();
  v63 = xmmword_1004098F0;
  *(v38 + 16) = xmmword_1004098F0;
  v39 = type metadata accessor for SEStorageMockPassSchemaV1.PassEntry();
  v40 = sub_10025CAD8(&qword_100508110, type metadata accessor for SEStorageMockPassSchemaV1.PassEntry);
  *(v38 + 32) = v39;
  *(v38 + 40) = v40;
  sub_10025CEBC();
  sub_100068FC4(&qword_1005081C8, &qword_100410808);
  v41 = v64;
  v42 = *(v64 + 72);
  v43 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v63;
  v45 = v44 + v43;
  v46 = v65;
  (*(v41 + 16))(v45, v37, v65);
  v47 = v59;
  v48 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (v47)
  {
    (*(v41 + 8))(v37, v46);
    v56(v26, v55);
    v0 = v61;
LABEL_9:
    swift_deallocPartialClassInstance();
    return v0;
  }

  v50 = v48;
  (*(v41 + 8))(v37, v46);
  v56(v26, v55);
  result = v61;
  v61[2] = v50;
  return result;
}

uint64_t sub_10025CAD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10025CB28()
{
  result = qword_100508140;
  if (!qword_100508140)
  {
    sub_1000692D8(&qword_100508138, &qword_1004107D8);
    sub_10025CBB4();
    sub_10025CCF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508140);
  }

  return result;
}

unint64_t sub_10025CBB4()
{
  result = qword_100508148;
  if (!qword_100508148)
  {
    sub_1000692D8(&qword_100508128, &unk_1004107A0);
    sub_10025CC88(&qword_100508150);
    sub_10025CC88(&qword_100508158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508148);
  }

  return result;
}

uint64_t sub_10025CC88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&unk_100503E60, &qword_10040A3B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10025CCF4()
{
  result = qword_100508160;
  if (!qword_100508160)
  {
    sub_1000692D8(&qword_100508120, &qword_100410798);
    sub_100075C60(&qword_100508168, &qword_100508118, &qword_100410790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508160);
  }

  return result;
}

unint64_t sub_10025CDAC()
{
  result = qword_1005081A0;
  if (!qword_1005081A0)
  {
    sub_1000692D8(&qword_100508198, &unk_1004107F0);
    sub_10025CCF4();
    sub_10025CE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005081A0);
  }

  return result;
}

unint64_t sub_10025CE38()
{
  result = qword_1005081A8;
  if (!qword_1005081A8)
  {
    sub_1000692D8(&qword_100508190, &qword_1004107E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005081A8);
  }

  return result;
}

unint64_t sub_10025CEBC()
{
  result = qword_1005081C0;
  if (!qword_1005081C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005081C0);
  }

  return result;
}

uint64_t sub_10025CF18(uint64_t a1)
{
  UUID.init()();
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_expressState) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_type) = 4;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier) = xmmword_1004098E0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier) = xmmword_1004098E0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
  v3 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_10025D004()
{
  v1 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier, v2);
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Peer()
{
  result = qword_1005081F8;
  if (!qword_1005081F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10025D160()
{
  result = type metadata accessor for UUID();
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

unint64_t sub_10025D250()
{
  result = qword_1005083B8;
  if (!qword_1005083B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005083B8);
  }

  return result;
}

unint64_t sub_10025D2A8()
{
  result = qword_1005083C0;
  if (!qword_1005083C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005083C0);
  }

  return result;
}

Swift::Int sub_10025D2FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10025D554(&unk_100507480, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10025D39C()
{
  v1 = *v0;
  type metadata accessor for UUID();
  sub_10025D554(&unk_100507480, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10025D424()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  type metadata accessor for UUID();
  sub_10025D554(&unk_100507480, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10025D4F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static UUID.== infix(_:_:)();
}

uint64_t sub_10025D554(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10025D59C(char a1)
{
  v2 = v1[5];
  if (!v2)
  {
    if (qword_100501BB8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_1005083D0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Cannot restart when in idle state", v10, 2u);
    goto LABEL_13;
  }

  v4 = v1[3];
  v3 = v1[4];
  if ((v4 & 1) != (a1 & 1))
  {
    v11 = qword_100501BB8;
    v12 = v1[5];

    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_1005083D0);

    v8 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v14))
    {

      goto LABEL_15;
    }

    v15 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v15 = 136315650;
    v16 = sub_1002FFA0C(v3, v2, &v41);

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    v17 = String.init<A>(describing:)();
    v19 = sub_1002FFA0C(v17, v18, &v41);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2080;
    v20 = String.init<A>(describing:)();
    v22 = sub_1002FFA0C(v20, v21, &v41);

    *(v15 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v8, v14, "Waiting for message %s of type %s, cannot restart timer for %s message", v15, 0x20u);
    swift_arrayDestroy();

LABEL_13:

LABEL_15:

    sub_10025EE38();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
    return;
  }

  v5 = v1[2];
  v6 = v1[5];

  if (v5)
  {
    sub_1003AE754(v5);
  }

  v40 = v1;
  if (qword_100501BB8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000958E4(v24, qword_1005083D0);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = String.init<A>(describing:)();
    v30 = sub_1002FFA0C(v28, v29, &v41);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    v31 = sub_1002FFA0C(v3, v2, &v41);

    *(v27 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Restarted timer for %s message: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v32 = *(v40 + 16);
  v33 = __CFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_25;
  }

  *(v40 + 16) = v34;
  v25 = v40[2];
  if (!v25)
  {
    return;
  }

  if ((v4 & 1) == 0)
  {
    v38 = qword_100501BA8;
    v39 = v25;
    if (v38 != -1)
    {
      swift_once();
    }

    v37 = &qword_10051B658;
    goto LABEL_29;
  }

  v35 = qword_100501BB0;
  v36 = v25;
  if (v35 != -1)
  {
    goto LABEL_32;
  }

LABEL_25:
  v37 = &qword_10051B660;
LABEL_29:
  sub_1003AE618(v25, *v37);
}

void sub_10025DAF0(char a1)
{
  v2 = v1[5];
  if (v2)
  {
    if ((v1[3] & 1) == (a1 & 1))
    {
      v3 = v1[4];
      v4 = v1[2];
      v5 = v1[5];

      if (v4)
      {
        sub_1003AE754(v4);
      }

      v30 = v1;
      if (qword_100501BB8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000958E4(v21, qword_1005083D0);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v24 = 136315394;
        v25 = String.init<A>(describing:)();
        v27 = sub_1002FFA0C(v25, v26, &v31);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2080;
        v28 = sub_1002FFA0C(v3, v2, &v31);

        *(v24 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "Ended timer for %s message: %s", v24, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v29 = v30[5];
      v30[3] = 0;
      v30[4] = 0;
      v30[5] = 0;
    }

    else
    {
      if (qword_100501BB8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000958E4(v10, qword_1005083D0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v13 = 136315394;
        v14 = String.init<A>(describing:)();
        v16 = sub_1002FFA0C(v14, v15, &v31);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        v17 = String.init<A>(describing:)();
        v19 = sub_1002FFA0C(v17, v18, &v31);

        *(v13 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v11, v12, "Waiting for message type %s, cannot stop timer for %s", v13, 0x16u);
        swift_arrayDestroy();
      }

      sub_10025EE38();
      swift_allocError();
      *v20 = 2;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_100501BB8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_1005083D0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Not waiting for message, nothing to register", v9, 2u);
    }
  }
}

void sub_10025DF60(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = v5[5];
  if (v10)
  {
    v11 = v5[3];
    v12 = v5[4];
    v13 = qword_100501BB8;
    v14 = v5[5];

    if (v13 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_1005083D0);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v18 = 136315906;
      v19 = sub_1002FFA0C(v12, v10, &v45);

      *(v18 + 4) = v19;
      *(v18 + 12) = 2080;
      v20 = String.init<A>(describing:)();
      v22 = sub_1002FFA0C(v20, v21, &v45);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_1002FFA0C(a2, a3, &v45);
      *(v18 + 32) = 2080;
      v23 = String.init<A>(describing:)();
      v25 = sub_1002FFA0C(v23, v24, &v45);

      *(v18 + 34) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "Waiting for message %s of type %s, cannot start timer for %s in %s", v18, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10025EE38();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
  }

  else
  {
    v5[3] = a1 & 1;
    v5[4] = a2;
    v27 = v5[6];
    v26 = v5[7];
    v5[5] = a3;
    v5[6] = a4;
    v5[7] = a5;

    sub_1000B2A4C(v27);
    v28 = qword_100501BB8;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000958E4(v29, qword_1005083D0);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    v43 = a1;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v32 = 136315394;
      v33 = String.init<A>(describing:)();
      v35 = sub_1002FFA0C(v33, v34, &v45);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_1002FFA0C(a2, a3, &v45);
      _os_log_impl(&_mh_execute_header, v30, v31, "Started timer for %s message: %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    *(v6 + 16) = 0;
    v36 = v6[2];
    if (v36)
    {
      if (v43)
      {
        v37 = qword_100501BB0;
        v38 = v36;
        if (v37 != -1)
        {
          swift_once();
        }

        v39 = &qword_10051B660;
      }

      else
      {
        v41 = qword_100501BA8;
        v42 = v36;
        if (v41 != -1)
        {
          swift_once();
        }

        v39 = &qword_10051B658;
      }

      sub_1003AE618(v36, *v39);
    }
  }
}

uint64_t sub_10025E410()
{
  v0 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v6 - v3;
  v8 = 0x3FFB333333333333;
  v6[1] = 0;
  v7 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10025E54C()
{
  v0 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v6 - v3;
  v8 = 0x3FF0000000000000;
  v6[1] = 0;
  v7 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10025E684()
{
  *(v0 + 64) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_allocObject();
  swift_weakInit();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v2 = qword_10051B7F0;
  v3 = objc_allocWithZone(SESTimer);
  v8[4] = sub_10025EEC4;
  v8[5] = v1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100080830;
  v8[3] = &unk_1004CD2E8;
  v4 = _Block_copy(v8);

  v5 = sub_1003AE50C(v3, v2, v4);
  _Block_release(v4);

  v6 = *(v0 + 16);
  *(v0 + 16) = v5;

  return v0;
}

void sub_10025E7DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong[5];
    if (v2)
    {
      v3 = Strong[6];
      if (v3)
      {
        v5 = Strong[3];
        v4 = Strong[4];
        v6 = Strong[7];
        v7 = Strong[5];

        v8 = sub_100113B54(v3);
        if ((v3(v8) & 1) == 0)
        {
          sub_1000B2A4C(v3);

          v22 = v1[5];
          v1[3] = 0;
          v1[4] = 0;
          v1[5] = 0;

          return;
        }

        if (qword_100501BB8 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_1000958E4(v9, qword_1005083D0);

        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v10, v11))
        {
          v31 = v4;
          v12 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v12 = 136315394;
          v13 = String.init<A>(describing:)();
          v15 = sub_1002FFA0C(v13, v14, &v32);

          *(v12 + 4) = v15;
          *(v12 + 12) = 2080;
          v16 = sub_1002FFA0C(v31, v2, &v32);

          *(v12 + 14) = v16;
          _os_log_impl(&_mh_execute_header, v10, v11, "Restarted timer for %s message: %s", v12, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v23 = *(v1 + 16);
        v24 = __CFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          __break(1u);
        }

        else
        {
          *(v1 + 16) = v25;
          v10 = v1[2];
          if (!v10)
          {
            sub_1000B2A4C(v3);

            return;
          }

          if ((v5 & 1) == 0)
          {
            v29 = qword_100501BA8;
            v30 = v10;
            if (v29 != -1)
            {
              swift_once();
            }

            v28 = &qword_10051B658;
            goto LABEL_29;
          }

          v26 = qword_100501BB0;
          v27 = v10;
          if (v26 == -1)
          {
LABEL_24:
            v28 = &qword_10051B660;
LABEL_29:
            sub_1003AE618(v10, *v28);
            sub_1000B2A4C(v3);
            goto LABEL_30;
          }
        }

        swift_once();
        goto LABEL_24;
      }

      if (qword_100501BB8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000958E4(v21, qword_1005083D0);
      v10 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v10, v18))
      {
        goto LABEL_30;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Timer completed with no completion block";
    }

    else
    {
      if (qword_100501BB8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000958E4(v17, qword_1005083D0);
      v10 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v10, v18))
      {
        goto LABEL_30;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Timer completed when extension is in idle state";
    }

    _os_log_impl(&_mh_execute_header, v10, v18, v20, v19, 2u);

LABEL_30:
  }
}

uint64_t sub_10025EC4C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  sub_1000B2A4C(*(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_10025ECB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10025ECCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10025ED1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10025ED74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10025ED8C(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10025EDC0()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_1005083D0);
  sub_1000958E4(v0, qword_1005083D0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_10025EE38()
{
  result = qword_1005084A0;
  if (!qword_1005084A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005084A0);
  }

  return result;
}

uint64_t sub_10025EE8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025EECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10025EF08()
{
  result = qword_1005084A8;
  if (!qword_1005084A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005084A8);
  }

  return result;
}

unint64_t sub_10025EF60()
{
  result = qword_1005084B0;
  if (!qword_1005084B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005084B0);
  }

  return result;
}

uint64_t sub_10025EFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  v18 = *(qword_1005084B8 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = v23;
  v19[7] = a5;
  aBlock[4] = sub_100264AEC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CD660;
  v20 = _Block_copy(aBlock);

  v21 = v18;

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v25 + 8))(v13, v10);
  (*(v14 + 8))(v17, v24);
}

void sub_10025F2E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void))
{
  v7 = a2;
  if (qword_100501BC0 != -1)
  {
    swift_once();
    v7 = a2;
  }

  v8 = sub_100264B1C(v7, a3);
  v10 = v8;
  a5(v8, 0);
}

uint64_t sub_10025F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v15 = *(v27 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v27);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  v19 = *(qword_1005084B8 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  v20 = swift_allocObject();
  v21 = v26;
  v20[2] = v25[1];
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = v21;
  v20[8] = a6;
  aBlock[4] = sub_100264A90;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CD5E8;
  v22 = _Block_copy(aBlock);

  v23 = v19;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v28 + 8))(v14, v11);
  (*(v15 + 8))(v18, v27);
}

void sub_10025F830(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, void), uint64_t a7)
{
  v47[1] = a7;
  v48 = a6;
  v59 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v11 = *(v59 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v59);
  v58 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v14 = *(v57 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v57);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v56 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  sub_10025FD3C(a2, a3, a4, a5);
  v22 = v21;
  if (!(v21 >> 62))
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_13:

    v43 = _swiftEmptyArrayStorage;
LABEL_14:
    sub_10034CE08(v43);

    v44 = objc_allocWithZone(NSArray);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v46 = [v44 initWithArray:isa];

    v48(v46, 0);
    return;
  }

  v23 = _CocoaArrayWrapper.endIndex.getter();
  if (!v23)
  {
    goto LABEL_13;
  }

LABEL_5:
  v60 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = objc_opt_self();
    v25 = 0;
    v52 = v22 & 0xC000000000000001;
    v53 = v24;
    v50 = (v11 + 8);
    v51 = (v14 + 32);
    v49 = (v14 + 8);
    v54 = v23;
    v55 = v22;
    do
    {
      if (v52)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v22 + 8 * v25 + 32);
      }

      ++v25;
      v27 = v56;
      sub_100265BA4(v26 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v56, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
      v28 = v57;
      (*v51)(v17, v27, v57);
      v29 = v58;
      P256.KeyAgreement.PrivateKey.publicKey.getter();
      v30 = P256.KeyAgreement.PublicKey.x963Representation.getter();
      v32 = v31;
      (*v50)(v29, v59);
      (*v49)(v17, v28);
      v33 = *(v26 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier);
      v34 = *(v26 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier + 8);
      v35 = String._bridgeToObjectiveC()();
      v36 = *(v26 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier);
      v37 = *(v26 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier + 8);
      v38 = String._bridgeToObjectiveC()();
      v39 = Data._bridgeToObjectiveC()().super.isa;
      v40 = Date._bridgeToObjectiveC()().super.isa;
      v41 = [v53 withGroupIdentifier:v35 keyIdentifier:v38 publicKey:v39 creationDate:v40];

      sub_10006A178(v30, v32);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v42 = v60[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v22 = v55;
    }

    while (v54 != v25);

    v43 = v60;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_10025FD3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a3;
  v92 = a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v84 = v8;
  v85 = v9;
  v10 = v9[8];
  __chkstk_darwin(v8);
  v83 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v82 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v86 = &v75 - v17;
  __chkstk_darwin(v16);
  v81 = &v75 - v18;
  v90 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation(0);
  v19 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v91 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v4 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  *v25 = v26;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v25, v21);
  if (v26)
  {
    v89 = v5;
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004099F0;
    v96[0] = kSecClass;
    type metadata accessor for CFString(0);
    v30 = v29;
    sub_10026473C(&qword_1005021B0, type metadata accessor for CFString);
    v31 = kSecClass;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = v30;
    *(inited + 72) = kSecClassGenericPassword;
    v96[0] = kSecAttrAccount;
    v32 = kSecClassGenericPassword;
    v33 = kSecAttrAccount;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v92;
    *(inited + 152) = a2;
    v96[0] = kSecAttrAccessGroup;

    v34 = kSecAttrAccessGroup;
    AnyHashable.init<A>(_:)();
    v87 = v4;
    v36 = *(v4 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup);
    v35 = *(v4 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup + 8);
    *(inited + 240) = &type metadata for String;
    *(inited + 216) = v36;
    *(inited + 224) = v35;
    v96[0] = kSecAttrSynchronizable;

    v37 = kSecAttrSynchronizable;
    AnyHashable.init<A>(_:)();
    *(inited + 312) = &type metadata for Bool;
    *(inited + 288) = 1;
    v38 = sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    if (a4)
    {
      *&v94 = kSecAttrService;

      v39 = kSecAttrService;
      AnyHashable.init<A>(_:)();
      v95 = &type metadata for String;
      *&v94 = v88;
      *(&v94 + 1) = a4;
      sub_100075D50(&v94, v93);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v38;
      sub_1003169D4(v93, v96, isUniquelyReferenced_nonNull_native);
      sub_100092F28(v96);
      v38 = v97;
    }

    v41 = v91;
    v42 = *(v87 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainWrapper);

    v43 = v89;
    v44 = sub_100262F9C();

    v92 = v43;
    if (v43)
    {
    }

    else
    {
      v45 = _swiftEmptyArrayStorage;
      *&v94 = _swiftEmptyArrayStorage;
      v46 = v44[2];
      if (v46)
      {
        v47 = 0;
        v88 = OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_logger;
        v89 = v44;
        v77 = (v85 + 4);
        v78 = (v85 + 2);
        v48 = v44 + 5;
        v79 = v46;
        v80 = v38;
        v76 = v44 + 5;
        do
        {
          v85 = v45;
          v49 = v46 - v47;
          v50 = &v48[2 * v47];
          while (1)
          {
            if (v47 >= v44[2])
            {
              __break(1u);
              goto LABEL_21;
            }

            v52 = *(v50 - 1);
            v51 = *v50;
            v53 = type metadata accessor for PropertyListDecoder();
            v54 = *(v53 + 48);
            v55 = *(v53 + 52);
            swift_allocObject();
            sub_100069E2C(v52, v51);
            PropertyListDecoder.init()();
            sub_10026473C(&qword_1005086A0, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation);
            v56 = v92;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            if (!v56)
            {
              break;
            }

            v92 = 0;
            v58 = Logger.logObject.getter();
            v59 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              *v60 = 0;
              _os_log_impl(&_mh_execute_header, v58, v59, "Failed to deserialize keychain data?", v60, 2u);
            }

            sub_10006A178(v52, v51);

            v50 += 2;
            ++v47;
            --v49;
            v41 = v91;
            v44 = v89;
            if (!v49)
            {
              goto LABEL_19;
            }
          }

          v57 = v41[1];
          v96[0] = *v41;
          v96[1] = v57;
          sub_100069E2C(v96[0], v57);
          sub_1002648DC();
          P256.KeyAgreement.PrivateKey.init<A>(derRepresentation:)();
          v92 = 0;
          sub_10006A178(v52, v51);
          v61 = v81;
          sub_100264990(v86, v81);
          v62 = v82;
          sub_100264990(v61, v82);
          v63 = v41[3];
          v75 = v41[2];
          v85 = v41[4];
          v64 = v41;
          v65 = v41[5];
          v66 = v83;
          v67 = v84;
          (*v78)(v83, v64 + *(v90 + 32), v84);

          sub_100264930(v64, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation);
          v68 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey(0);
          v69 = *(v68 + 48);
          v70 = *(v68 + 52);
          v71 = swift_allocObject();
          sub_100264990(v62, v71 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey);
          v72 = (v71 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier);
          *v72 = v75;
          v72[1] = v63;
          v73 = (v71 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier);
          *v73 = v85;
          v73[1] = v65;
          (*v77)(v71 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_creationDate, v66, v67);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v74 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          ++v47;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v45 = v94;
          v41 = v91;
          v46 = v79;
          v44 = v89;
          v48 = v76;
        }

        while (v49 != 1);
      }

LABEL_19:
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }
}

id sub_1002605F8()
{
  v1 = v0;
  v2 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100265BA4(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v15, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
  (*(v8 + 32))(v11, v15, v7);
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v16 = P256.KeyAgreement.PublicKey.x963Representation.getter();
  v18 = v17;
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v19 = objc_opt_self();
  v20 = *(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier);
  v21 = *(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier + 8);
  v22 = String._bridgeToObjectiveC()();
  v23 = *(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier);
  v24 = *(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier + 8);
  v25 = String._bridgeToObjectiveC()();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v27 = Date._bridgeToObjectiveC()().super.isa;
  v28 = [v19 withGroupIdentifier:v22 keyIdentifier:v25 publicKey:isa creationDate:v27];

  sub_10006A178(v16, v18);
  return v28;
}

uint64_t sub_1002609A4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  v15 = *(qword_1005084B8 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_100264A3C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CD570;
  v17 = _Block_copy(aBlock);
  v18 = v15;
  v19 = a1;

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v10, v7);
  (*(v11 + 8))(v14, v22);
}

uint64_t sub_100260CBC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void))
{
  v4 = a2;
  if (qword_100501BC0 != -1)
  {
    swift_once();
    v4 = a2;
  }

  sub_100260DA4(v4);
  return a3(1, 0);
}

void sub_100260DA4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10040AA50;
    v39 = kSecClass;
    type metadata accessor for CFString(0);
    v14 = v13;
    sub_10026473C(&qword_1005021B0, type metadata accessor for CFString);
    v15 = kSecClass;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = v14;
    *(inited + 72) = kSecClassGenericPassword;
    v39 = kSecAttrAccount;
    v16 = kSecClassGenericPassword;
    v17 = kSecAttrAccount;
    AnyHashable.init<A>(_:)();
    v18 = [a1 groupIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v2;
    v20 = v19;
    v22 = v21;

    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v20;
    *(inited + 152) = v22;
    v39 = kSecAttrService;
    v23 = kSecAttrService;
    AnyHashable.init<A>(_:)();
    v24 = [a1 keyIdentifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *(inited + 240) = &type metadata for String;
    *(inited + 216) = v25;
    *(inited + 224) = v27;
    v39 = kSecAttrAccessGroup;
    v28 = kSecAttrAccessGroup;
    AnyHashable.init<A>(_:)();
    v29 = v38;
    v31 = *(v38 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup);
    v30 = *(v38 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup + 8);
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = v31;
    *(inited + 296) = v30;
    v39 = kSecAttrSynchronizable;

    v32 = kSecAttrSynchronizable;
    AnyHashable.init<A>(_:)();
    *(inited + 384) = &type metadata for Bool;
    *(inited + 360) = 1;
    sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    v33 = *(v29 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainWrapper);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v35 = [v33 deleteItem:isa];

    if (v35)
    {
      sub_10009393C(0, &qword_10050AA20, NSError_ptr);
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v39 = 0xD000000000000016;
      v40 = 0x8000000100469530;
      v41 = v35;
      v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v36);

      sub_10030990C(0, 1, v39, v40, 0);
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002612BC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10026132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  v18 = *(qword_1005084B8 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = v23;
  v19[7] = a5;
  aBlock[4] = sub_1002648A4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CD4F8;
  v20 = _Block_copy(aBlock);
  v21 = v18;

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v25 + 8))(v13, v10);
  (*(v14 + 8))(v17, v24);
}

uint64_t sub_100261660(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, void))
{
  v8 = a2;
  if (qword_100501BC0 != -1)
  {
    swift_once();
    v8 = a2;
  }

  v9 = sub_10026179C(v8, a3, a4);
  v11 = v10;
  sub_100069E2C(v9, v10);
  a5(v9, v11, 0);
  sub_10006A178(v9, v11);

  return sub_10006A178(v9, v11);
}

uint64_t sub_10026179C(uint64_t a1, void *a2, uint64_t a3)
{
  v85 = a3;
  v4 = v3;
  v90 = a2;
  v6 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v80 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v81 = &v77 - v11;
  __chkstk_darwin(v10);
  v13 = &v77 - v12;
  v14 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = *(v82 + 8);
  v16 = __chkstk_darwin(v14);
  v79 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v20 = (&v77 - v19);
  __chkstk_darwin(v18);
  v22 = (&v77 - v21);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v4 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v31 = (*(v24 + 8))(v27, v23);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  strcpy(v86, "version");
  v86[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v32 = sub_10008CA7C(&v87), (v33 & 1) == 0))
  {
    sub_100092F28(&v87);
    goto LABEL_11;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v32, v89);
  sub_100092F28(&v87);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v43 = 0x20676E697373694DLL;
    v44 = 0xEF6E6F6973726576;
LABEL_12:
    sub_10030990C(0, 1, v43, v44, 0);
    swift_willThrow();
    return v4;
  }

  v35 = v86[0];
  v34 = v86[1];
  strcpy(v86, "publicKeyHash");
  HIWORD(v86[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v36 = sub_10008CA7C(&v87), (v37 & 1) == 0))
  {

    sub_100092F28(&v87);
LABEL_15:
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v43 = 0xD000000000000018;
    v44 = 0x80000001004694F0;
    goto LABEL_12;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v36, v89);
  sub_100092F28(&v87);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_15;
  }

  v78._countAndFlagsBits = v35;
  v78._object = v34;
  v39 = v86[0];
  v38 = v86[1];

  v40 = v84;
  v41 = v85;
  sub_10025FD3C(v90, v85, v39, v38);
  if (v40)
  {

    swift_bridgeObjectRelease_n();
    return v4;
  }

  v46 = v42;
  v84 = v38;

  if (v46 >> 62)
  {
    v47 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v47)
  {
    v54 = v84;

    v4 = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    v87 = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v87 = 0xD00000000000001CLL;
    v88 = 0x8000000100469510;
    v55._countAndFlagsBits = v90;
    v55._object = v41;
    String.append(_:)(v55);
    v56._countAndFlagsBits = 543451424;
    v56._object = 0xE400000000000000;
    String.append(_:)(v56);
    v57._countAndFlagsBits = v39;
    v57._object = v54;
    String.append(_:)(v57);

    v43 = v87;
    v44 = v88;
    goto LABEL_12;
  }

  if ((v46 & 0xC000000000000001) != 0)
  {
    v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:

    v48 = String._bridgeToObjectiveC()();
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
    if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
    {

      v53 = v90;
LABEL_29:

      sub_100265BA4(v53 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v13, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
      v27 = v82;
      v30 = v83;
      (*(v82 + 4))(v22, v13, v83);
      v61 = sub_1000B9698(a1, v22);
LABEL_43:
      v4 = v61;
      goto LABEL_44;
    }

    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v59 = v48;
    v85 = v48;
    v60 = v59;

    if (v58)
    {

      v53 = v90;
      goto LABEL_29;
    }

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
    if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
    {

      v30 = v83;
      v66 = v90;
    }

    else
    {
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = v83;
      v66 = v90;
      if ((v67 & 1) == 0)
      {
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        if (v69 == v72 && v71 == v74)
        {
        }

        else
        {
          v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v75 & 1) == 0)
          {
            v4 = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
            v87 = 0;
            v88 = 0xE000000000000000;
            _StringGuts.grow(_:)(20);

            v87 = 0xD000000000000012;
            v88 = 0x80000001004694D0;
            String.append(_:)(v78);

            sub_10030990C(0, 1, v87, v88, 0);
            swift_willThrow();

            return v4;
          }
        }

        v22 = v79;
        v76 = v80;

        sub_100265BA4(v90 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v76, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
        v27 = v82;
        (*(v82 + 4))(v22, v76, v30);
        v61 = sub_10033C518(a1, v22);
        goto LABEL_43;
      }
    }

    v68 = v81;
    sub_100265BA4(v66 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v81, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
    v27 = v82;
    (*(v82 + 4))(v20, v68, v30);
    v31 = sub_1001A8910(a1, v20);
LABEL_37:
    v4 = v31;
    v22 = v20;
LABEL_44:
    (*(v27 + 1))(v22, v30);

    return v4;
  }

  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v90 = *(v46 + 32);

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002622A8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v31 = a5;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v30 - 8);
  v13 = *(v34 + 64);
  __chkstk_darwin(v30);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v32 = *(v16 - 8);
  v33 = v16;
  v17 = *(v32 + 64);
  __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501BC0 != -1)
  {
    swift_once();
  }

  v20 = *(qword_1005084B8 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  v21 = swift_allocObject();
  v21[2] = v7;
  v21[3] = a1;
  v21[4] = a2;
  v21[5] = a3;
  v22 = v31;
  v21[6] = a4;
  v21[7] = v22;
  v21[8] = v29;
  v21[9] = a7;
  aBlock[4] = sub_100264828;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CD480;
  v23 = _Block_copy(aBlock);
  v24 = v20;
  sub_100069E2C(a1, a2);
  v25 = a3;
  sub_100069E2C(a4, v22);

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  v26 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v34 + 8))(v15, v26);
  (*(v32 + 8))(v19, v33);
}

void sub_1002625FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(id, void))
{
  v12 = a2;
  if (qword_100501BC0 != -1)
  {
    swift_once();
    v12 = a2;
  }

  sub_100262794(v12, a3, a4, a5, a6);
  v13 = objc_allocWithZone(NSDictionary);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithDictionary:isa];

  a7(v16, 0);
}

char *sub_100262794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v5 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

    return sub_1000B8D94(a1, a2, a4, a5);
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    return sub_1000B8D94(a1, a2, a4, a5);
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

    return sub_1001A7BEC(a1, a2, a4, a5);
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    return sub_1001A7BEC(a1, a2, a4, a5);
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

    return sub_10033CCB4(a1, a2, a4, a5);
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    return sub_10033CCB4(a1, a2, a4, a5);
  }

  sub_10009393C(0, &qword_10050AA20, NSError_ptr);
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v36._object = 0x80000001004694D0;
  v36._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v36);
  v40 = a3;
  type metadata accessor for SESPrivacyEncryptionScheme(0);
  _print_unlocked<A, B>(_:_:)();
  sub_10030990C(0, 1, v38, v39, 0);
  return swift_willThrow();
}

id sub_100262C54()
{
  result = [objc_allocWithZone(type metadata accessor for SESPrivacyKeyImplementation(0)) init];
  qword_1005084B8 = result;
  return result;
}

uint64_t sub_100262C88()
{
  v1 = v0;
  v31 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation(0);
  v2 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100265BA4(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, v13, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
  (*(v6 + 32))(v9, v13, v5);
  v14 = P256.KeyAgreement.PrivateKey.derRepresentation.getter();
  v30 = v15;
  (*(v6 + 8))(v9, v5);
  v17 = *(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier);
  v16 = *(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier + 8);
  v18 = *(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier);
  v19 = *(v1 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier + 8);
  v20 = OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_creationDate;
  v21 = *(v31 + 32);
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 16))(v4 + v21, v1 + v20, v22);
  v23 = v14;
  *v4 = v14;
  v24 = v30;
  v4[1] = v30;
  v4[2] = v17;
  v4[3] = v16;
  v4[4] = v18;
  v4[5] = v19;
  v25 = type metadata accessor for PropertyListEncoder();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_100069E2C(v23, v24);

  PropertyListEncoder.init()();
  sub_10026473C(&qword_1005086B0, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation);
  v28 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100264930(v4, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation);
  sub_10006A178(v23, v24);

  return v28;
}

void *sub_100262F9C()
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v32[0] = 0;
  *&v30 = 0;
  v8 = [v0 copyMultipleItemData:isa outDatas:v32 error:&v30];

  v9 = v30;
  v10 = v32[0];
  if (v8)
  {
    if (v32[0])
    {
      v11 = v30;
      v12 = v10;
      v13 = [v12 count];
      v29 = _swiftEmptyArrayStorage;
      sub_10019F4A4(0, v13 & ~(v13 >> 63), 0);
      v8 = v29;
      NSArray.makeIterator()();
      if (v13 < 0)
      {
        __break(1u);
        goto LABEL_20;
      }

      v27 = v3;
      v28 = v1;
      v26 = v12;
      if (v13)
      {
        sub_10026473C(&qword_100503200, &type metadata accessor for NSFastEnumerationIterator);
        while (1)
        {
          dispatch thunk of IteratorProtocol.next()();
          if (!v33)
          {
            break;
          }

          sub_1000754F0(v32, &v30);
          swift_dynamicCast();
          sub_1000752F4(v32);
          v14 = v34;
          v29 = v8;
          v16 = v8[2];
          v15 = v8[3];
          if (v16 >= v15 >> 1)
          {
            v25 = v34;
            sub_10019F4A4((v15 > 1), v16 + 1, 1);
            v14 = v25;
            v8 = v29;
          }

          v8[2] = v16 + 1;
          *&v8[2 * v16 + 4] = v14;
          if (!--v13)
          {
            goto LABEL_12;
          }
        }

LABEL_20:
        __break(1u);
      }

LABEL_12:
      sub_10026473C(&qword_100503200, &type metadata accessor for NSFastEnumerationIterator);
      dispatch thunk of IteratorProtocol.next()();
      while (v31)
      {
        sub_100075D50(&v30, v32);
        sub_100075D50(v32, &v30);
        swift_dynamicCast();
        v19 = v34;
        v29 = v8;
        v21 = v8[2];
        v20 = v8[3];
        if (v21 >= v20 >> 1)
        {
          v25 = v34;
          sub_10019F4A4((v20 > 1), v21 + 1, 1);
          v19 = v25;
          v8 = v29;
        }

        v8[2] = v21 + 1;
        *&v8[2 * v21 + 4] = v19;
        dispatch thunk of IteratorProtocol.next()();
      }

      (*(v27 + 8))(v6, v2);
      v22 = v26;

      sub_100075768(&v30, &qword_100502420, &qword_10040F310);
    }

    else
    {
      sub_10009393C(0, &qword_10050AA20, NSError_ptr);
      v23 = v9;
      sub_10030990C(0, 1, 0xD000000000000033, 0x8000000100469430, 0);
      swift_willThrow();
    }
  }

  else
  {
    v17 = v30;
    v18 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

Swift::Int sub_100263420()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10026347C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002634C4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C4A40, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1002635DC(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100508778, &qword_100410D90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_100265AFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  sub_100265C0C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v3[1];
    v19 = *v3;
    v20 = v11;
    v18[15] = 1;
    sub_100069E2C(v19, v11);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v19, v20);
    v12 = v3[2];
    v13 = v3[3];
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[4];
    v15 = v3[5];
    LOBYTE(v19) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation(0) + 32);
    LOBYTE(v19) = 4;
    type metadata accessor for Date();
    sub_10026473C(&qword_1005062A0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10026383C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for Date();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_100508760, &qword_100410D88);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = v30 - v9;
  v11 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v36 = a1;
  sub_1000752B0(a1, v15);
  sub_100265AFC();
  v17 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_1000752F4(v36);
  }

  v18 = v14;
  v19 = v6;
  v20 = v33;
  LOBYTE(v37) = 0;
  sub_100265B50();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = 1;
  sub_1000B87D4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v20;
  v22 = v18;
  v23 = v38;
  *v22 = v37;
  v22[1] = v23;
  LOBYTE(v37) = 2;
  v22[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v22[3] = v24;
  v35 = v24;
  LOBYTE(v37) = 3;
  v30[1] = 0;
  v22[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v22[5] = v25;
  LOBYTE(v37) = 4;
  sub_10026473C(&qword_100506270, &type metadata accessor for Date);
  v26 = v19;
  v27 = v22;
  v28 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v21 + 8))(v10, v28);
  (*(v31 + 32))(v27 + *(v11 + 32), v26, v3);
  sub_100265BA4(v27, v32, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation);
  sub_1000752F4(v36);
  return sub_100264930(v27, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.KeychainRepresentation);
}

uint64_t sub_100263CA4()
{
  v1 = *v0;
  v2 = 0x6570795479656BLL;
  v3 = 0x746E65644979656BLL;
  v4 = 0x65644970756F7267;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461657263;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4B65746176697270;
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
uint64_t sub_1000E2130(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000E3978();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 3);
      v6 = *v4;
      v9[0] = *(v4 - 4);
      v9[1] = v5;
      v10 = *(v4 - 1);
      v11 = v6;

      sub_1000D7A08(v7, v9);

      v4 += 5;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000E21DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000D7C9C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000E2250(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000D7D7C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000E22C4()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [v0 code];

  if (v1 == -19703)
  {
    return 3;
  }

  if (v1 == -19702)
  {
    return 2;
  }

  return v1 == -19701;
}

void sub_1000E232C(__objc2_class **a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    if (*(v2 + 16) == 1 && *a1 == _TtC10seserviced8LyonPeer)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v22[0] = v14;
        *v13 = 136315138;

        v15 = UUID.uuidString.getter();
        v17 = v16;

        v18 = sub_1002FFA0C(v15, v17, v22);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "NI pause request message for %s", v13, 0xCu);
        sub_1000752F4(v14);
      }

      sub_1000CF8F4(a1);
    }

    else
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 67109120;
        *(v21 + 4) = *(v2 + 16);

        _os_log_impl(&_mh_execute_header, v19, v20, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v21, 8u);

        return;
      }
    }
  }

  else
  {
    __break(1u);
    swift_once();
    sub_100080E48(a1, 0);
  }
}

void sub_1000E2750(__objc2_class **a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    if (*(v2 + 16) == 1 && *a1 == _TtC10seserviced8LyonPeer)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23[0] = v14;
        *v13 = 136315138;

        v15 = UUID.uuidString.getter();
        v17 = v16;

        v18 = sub_1002FFA0C(v15, v17, v23);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "NI resume request for %s", v13, 0xCu);
        sub_1000752F4(v14);
      }

      sub_1000C8E3C(a1);
    }

    else
    {

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = *(v2 + 16);

        _os_log_impl(&_mh_execute_header, v20, v21, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v22, 8u);

        return;
      }
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v19 = sub_1000E22C4();
    sub_100080E48(a1, v19 & 0x1FF);
  }
}

void sub_1000E2C0C(__objc2_class **a1)
{
  v2 = v1;
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
  if (v9)
  {
    if (*(v2 + 16) == 1 && *a1 == _TtC10seserviced8LyonPeer)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v24 = v14;
        *v13 = 136315138;

        v15 = UUID.uuidString.getter();
        v17 = v16;

        v18 = sub_1002FFA0C(v15, v17, &v24);

        *(v13 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "NI ranging started for %s", v13, 0xCu);
        sub_1000752F4(v14);
      }

      v19 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);

      sub_1002F8B80();
    }

    else
    {

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = *(v2 + 16);

        _os_log_impl(&_mh_execute_header, v20, v21, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v22, 8u);

        return;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E2F70(__objc2_class **a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    if (*(v2 + 16) != 1 || *a1 != _TtC10seserviced8LyonPeer)
    {

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = *(v2 + 16);

        _os_log_impl(&_mh_execute_header, v21, v22, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v23, 8u);
      }

      else
      {
      }

      return;
    }

    v11 = *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);

    sub_1002F8D2C();

    if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) == 5)
    {
      *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 6;
      sub_1000C8E3C(a1);
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v12 = sub_1000E22C4();
    sub_100080E48(a1, v12 & 0x1FF);
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;

    v17 = UUID.uuidString.getter();
    v19 = v18;

    v20 = sub_1002FFA0C(v17, v19, &v25);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "NI ranging paused for %s", v15, 0xCu);
    sub_1000752F4(v16);
  }
}

void sub_1000E3480(__objc2_class **a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
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
LABEL_19:
    swift_once();
LABEL_12:
    sub_100080E48(a1, 1);
    goto LABEL_17;
  }

  if (*(v2 + 16) == 1 && *a1 == _TtC10seserviced8LyonPeer)
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315138;

      v15 = UUID.uuidString.getter();
      v17 = v16;

      v18 = sub_1002FFA0C(v15, v17, &v31);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "NI session invalidated for %s", v13, 0xCu);
      sub_1000752F4(v14);
    }

    if (*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError + 1) << 8 != 512)
    {
      goto LABEL_17;
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315138;

      v23 = UUID.uuidString.getter();
      v25 = v24;

      v26 = sub_1002FFA0C(v23, v25, &v31);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "NI session invalidated for %s while connected, disconnecting", v21, 0xCu);
      sub_1000752F4(v22);
    }

    if (qword_1005018F8 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = *(v2 + 16);

    _os_log_impl(&_mh_execute_header, v27, v28, "LyonUWB isRunning: %{BOOL}d or could not cast as LyonPeer", v29, 8u);

    return;
  }

LABEL_17:
}

uint64_t sub_1000E392C()
{
  v1 = v0[2];

  sub_10006A178(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000E3978()
{
  result = qword_100503660;
  if (!qword_100503660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100503660);
  }

  return result;
}

void sub_1000E39E4()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:
    if (v4)
    {
      sub_1001A17C8(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1000E3ABC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v27 = v18;
        v19 = a1(&v27);
        if (v4)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_23;
        }

        v9 = v16;
        v10 = v17;
        v5 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for DSKBLE.BLEPeripheral();
          swift_dynamicCast();
          v18 = v27;
          v16 = v9;
          v17 = v10;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

LABEL_23:
      sub_100093854();
    }

    else
    {
LABEL_20:
      sub_100093854();
      return 0;
    }

    return v18;
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

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000E3D4C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void *sub_1000E3E70(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

unint64_t *sub_1000E3F84(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v27 = HIDWORD(a1);
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
      goto LABEL_48;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v41 = &_swiftEmptyArrayStorage;
    v9 = v5 & ~(v5 >> 63);
    sub_10019F3C0(0, v9, 0);
    v8 = &_swiftEmptyArrayStorage;
    if (v4 == 2)
    {
      v10 = *(a1 + 16);
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_18;
      }

      v10 = a1;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_20:
      v28 = v4;
      while (1)
      {
        if (!v9)
        {
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

        if (v4 == 2)
        {
          if (v10 < *(a1 + 16))
          {
            goto LABEL_42;
          }

          if (v10 >= *(a1 + 24))
          {
            goto LABEL_45;
          }

          v15 = __DataStorage._bytes.getter();
          if (!v15)
          {
            goto LABEL_51;
          }

          v12 = v15;
          v16 = __DataStorage._offset.getter();
          v14 = v10 - v16;
          if (__OFSUB__(v10, v16))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v4 != 1)
          {
            if (v10 >= BYTE6(a2))
            {
              goto LABEL_43;
            }

            v29 = a1;
            v30 = BYTE2(a1);
            v31 = BYTE3(a1);
            v32 = v27;
            v33 = BYTE5(a1);
            v34 = BYTE6(a1);
            v35 = HIBYTE(a1);
            v36 = a2;
            v37 = BYTE2(a2);
            v38 = BYTE3(a2);
            v39 = BYTE4(a2);
            v40 = BYTE5(a2);
            v17 = *(&v29 + v10);
            goto LABEL_37;
          }

          if (v10 < a1 || v10 >= a1 >> 32)
          {
            goto LABEL_44;
          }

          v11 = __DataStorage._bytes.getter();
          if (!v11)
          {
            goto LABEL_50;
          }

          v12 = v11;
          v13 = __DataStorage._offset.getter();
          v14 = v10 - v13;
          if (__OFSUB__(v10, v13))
          {
            goto LABEL_46;
          }
        }

        v17 = *(v12 + v14);
LABEL_37:
        sub_100068FC4(&qword_100502440, &unk_10040B240);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1004098F0;
        *(v18 + 56) = &type metadata for UInt8;
        *(v18 + 64) = &protocol witness table for UInt8;
        *(v18 + 32) = v17;
        v19 = String.init(format:_:)();
        v41 = v8;
        v22 = v8[2];
        v21 = v8[3];
        if (v22 >= v21 >> 1)
        {
          v26 = v19;
          v24 = v20;
          sub_10019F3C0((v21 > 1), v22 + 1, 1);
          v20 = v24;
          v19 = v26;
          v8 = v41;
        }

        v8[2] = v22 + 1;
        v23 = &v8[2 * v22];
        v23[4] = v19;
        v23[5] = v20;
        ++v10;
        --v9;
        --v5;
        LODWORD(v4) = v28;
        if (!v5)
        {
          return v8;
        }
      }
    }

    __break(1u);
LABEL_18:
    if (v5 < 0)
    {
      goto LABEL_49;
    }

    v10 = 0;
    goto LABEL_20;
  }

  return v8;
}

void *sub_1000E42E0(uint64_t a1)
{
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = &_swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v35 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v32 = result;
    v33 = v4;
    v34 = 1;
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v2 = *(a1 + 16);
    result = &_swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v35 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = -1 << *(a1 + 32);
    v6 = _HashTable.startBucket.getter();
    v7 = *(a1 + 36);
    v32 = v6;
    v33 = v7;
    v34 = 0;
  }

  result = objc_opt_self();
  v8 = 0;
  v29 = result;
  while (v8 < v2)
  {
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_31;
    }

    v11 = v32;
    v12 = v33;
    v13 = v34;
    v14 = sub_10008E7AC(v32, v33, v34, a1);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v29 UUIDWithString:v17];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = v35[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v30)
    {
      if (!v13)
      {
        goto LABEL_36;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_100068FC4(&unk_100503ED0, &qword_10040B278);
      v9 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v9(v31, 0);
      if (v8 == v2)
      {
LABEL_28:
        sub_1000937D4(v32, v33, v34);
        return v35;
      }
    }

    else
    {
      if (v13)
      {
        goto LABEL_37;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v20 = 1 << *(a1 + 32);
      if (v11 >= v20)
      {
        goto LABEL_32;
      }

      v21 = v11 >> 6;
      v22 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v22 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v12)
      {
        goto LABEL_34;
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
            result = sub_1000937D4(v11, v12, 0);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_27;
          }
        }

        result = sub_1000937D4(v11, v12, 0);
      }

LABEL_27:
      v32 = v20;
      v33 = v12;
      v34 = 0;
      if (v8 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void *sub_1000E4630(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_10019F420(0, v7 & ~(v7 >> 63), 0);
    v42 = v47;
    if (v40)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v10 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v44 = result;
    v45 = v9;
    v46 = v40 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v37 = v39 + 32;
      v38 = (v39 + 16);
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v34 = a1 + 56;
      v35 = v12;
      v32 = v1;
      v33 = a1 + 64;
      v36 = v7;
      while (v11 < v7)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_37;
        }

        v15 = v44;
        v16 = v46;
        v41 = v45;
        v17 = sub_10008EDB4(v44, v45, v46, a1);
        (*v38)(v6, v17 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v3);

        v18 = v42;
        v47 = v42;
        v20 = v42[2];
        v19 = v42[3];
        if (v20 >= v19 >> 1)
        {
          sub_10019F420(v19 > 1, v20 + 1, 1);
          v18 = v47;
        }

        v18[2] = v20 + 1;
        v21 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = v18;
        result = (*(v39 + 32))(v18 + v21 + *(v39 + 72) * v20, v6, v3);
        if (v40)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v36;
          sub_100068FC4(&qword_100502C08, &qword_100409CC8);
          v13 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v13(v43, 0);
          if (v11 == v7)
          {
LABEL_34:
            sub_1000937D4(v44, v45, v46);
            return v42;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v22 = 1 << *(a1 + 32);
          if (v15 >= v22)
          {
            goto LABEL_38;
          }

          v23 = v15 >> 6;
          v24 = *(v34 + 8 * (v15 >> 6));
          if (((v24 >> v15) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v41)
          {
            goto LABEL_40;
          }

          v25 = v24 & (-2 << (v15 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v33 + 8 * v23);
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                result = sub_1000937D4(v15, v41, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_33;
              }
            }

            result = sub_1000937D4(v15, v41, 0);
          }

LABEL_33:
          v31 = *(a1 + 36);
          v44 = v22;
          v45 = v31;
          v46 = 0;
          v7 = v36;
          if (v11 == v36)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void *sub_1000E4A60(uint64_t a1)
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
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
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

unint64_t sub_1000E4D68(uint64_t a1)
{
  v1 = a1;
  v53 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v70 = _swiftEmptyArrayStorage;
  sub_10019F464(0, v2 & ~(v2 >> 63), 0);
  v3 = _swiftEmptyArrayStorage;
  if (v53)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v5 = *(v1 + 36);
  }

  v67 = result;
  v68 = v5;
  v69 = v53 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    result = sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v52 = v1;
    v7 = 0;
    v50 = v1 + 56;
    v49 = v1 + 64;
    v51 = v2;
    while (v7 < v2)
    {
      v9 = __OFADD__(v7, 1);
      v10 = v7 + 1;
      if (v9)
      {
        goto LABEL_42;
      }

      v54 = v10;
      v11 = v67;
      v56 = v68;
      v57 = v3;
      v55 = v69;
      v12 = sub_10008F260(v67, v68, v69, v1);
      v59 = 0xD000000000000011;
      v60 = 0x80000001004634B0;
      v13 = *(v12 + 16);

      v14 = UUID.uuidString.getter();
      v16 = v15;

      v61 = v14;
      v62 = v16;
      v63 = 0x6574617473;
      v64 = 0xE500000000000000;
      v58[0] = *(v12 + 32);
      v65 = String.init<A>(describing:)();
      v66 = v17;
      v18 = static _DictionaryStorage.allocate(capacity:)();

      v19 = v59;
      v20 = v60;
      v21 = v61;
      v22 = v62;

      result = sub_10008C908(v19, v20);
      if (v23)
      {
        goto LABEL_39;
      }

      *(v18 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v24 = (v18[6] + 16 * result);
      *v24 = v19;
      v24[1] = v20;
      v25 = (v18[7] + 16 * result);
      *v25 = v21;
      v25[1] = v22;
      v26 = v18[2];
      v9 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v9)
      {
        goto LABEL_40;
      }

      v18[2] = v27;
      v28 = v63;
      v29 = v64;
      v30 = v65;
      v31 = v66;

      result = sub_10008C908(v28, v29);
      if (v32)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }

      *(v18 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v33 = (v18[6] + 16 * result);
      *v33 = v28;
      v33[1] = v29;
      v34 = (v18[7] + 16 * result);
      *v34 = v30;
      v34[1] = v31;
      v35 = v18[2];
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_40;
      }

      v18[2] = v36;

      sub_100068FC4(&unk_100504020, &qword_100409CC0);
      swift_arrayDestroy();

      v3 = v57;
      v70 = v57;
      v38 = v57[2];
      v37 = v57[3];
      if (v38 >= v37 >> 1)
      {
        result = sub_10019F464((v37 > 1), v38 + 1, 1);
        v3 = v70;
      }

      v3[2] = v38 + 1;
      v3[v38 + 4] = v18;
      v1 = v52;
      if (v53)
      {
        if (!v55)
        {
          goto LABEL_47;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v51;
        sub_100068FC4(&qword_100504088, &qword_10040B398);
        v8 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v8(v58, 0);
      }

      else
      {
        if (v55)
        {
          goto LABEL_48;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v39 = 1 << *(v52 + 32);
        if (v11 >= v39)
        {
          goto LABEL_43;
        }

        v40 = v11 >> 6;
        v41 = *(v50 + 8 * (v11 >> 6));
        if (((v41 >> v11) & 1) == 0)
        {
          goto LABEL_44;
        }

        if (*(v52 + 36) != v56)
        {
          goto LABEL_45;
        }

        v42 = v41 & (-2 << (v11 & 0x3F));
        if (v42)
        {
          v39 = __clz(__rbit64(v42)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v43 = v40 << 6;
          v44 = v40 + 1;
          v45 = (v49 + 8 * v40);
          while (v44 < (v39 + 63) >> 6)
          {
            v47 = *v45++;
            v46 = v47;
            v43 += 64;
            ++v44;
            if (v47)
            {
              result = sub_1000937D4(v11, v56, 0);
              v39 = __clz(__rbit64(v46)) + v43;
              goto LABEL_36;
            }
          }

          result = sub_1000937D4(v11, v56, 0);
        }

LABEL_36:
        v48 = *(v52 + 36);
        v67 = v39;
        v68 = v48;
        v69 = 0;
        v2 = v51;
      }

      v7 = v54;
      if (v54 == v2)
      {
        sub_1000937D4(v67, v68, v69);
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void *sub_1000E527C(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
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
    v40 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v2 & ~(v2 >> 63), 0);
    v35 = _swiftEmptyArrayStorage;
    if (v33)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      result = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v37 = result;
    v38 = v4;
    v39 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v37;
        v10 = v39;
        v34 = v38;
        v11 = v1;
        v12 = *(sub_10008F004(v37, v38, v39, v1) + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
        v13 = UUID.uuidString.getter();
        v15 = v14;

        v16 = v35;
        v40 = v35;
        v18 = v35[2];
        v17 = v35[3];
        if (v18 >= v17 >> 1)
        {
          result = sub_10019F3C0((v17 > 1), v18 + 1, 1);
          v16 = v40;
        }

        v16[2] = v18 + 1;
        v19 = &v16[2 * v18];
        v19[4] = v13;
        v19[5] = v15;
        v35 = v16;
        if (v33)
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

          v2 = v32;
          sub_100068FC4(&qword_100504080, &qword_10040B390);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v7(v36, 0);
          if (v6 == v32)
          {
LABEL_32:
            sub_1000937D4(v37, v38, v39);
            return v35;
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
          v20 = 1 << *(v11 + 32);
          if (v9 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v9 >> 6;
          v22 = *(v31 + 8 * (v9 >> 6));
          if (((v22 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v34)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v9 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v32;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            v2 = v32;
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                result = sub_1000937D4(v9, v34, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            result = sub_1000937D4(v9, v34, 0);
          }

LABEL_31:
          v29 = *(v11 + 36);
          v37 = v20;
          v38 = v29;
          v39 = 0;
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

unint64_t sub_1000E55E0(uint64_t a1)
{
  v1 = a1;
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v52 = _swiftEmptyArrayStorage;
  sub_10019F4C4(0, v2 & ~(v2 >> 63), 0);
  v3 = _swiftEmptyArrayStorage;
  if (v40)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v5 = *(v1 + 36);
  }

  v49 = result;
  v50 = v5;
  v51 = v40 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    result = sub_100068FC4(&unk_100504000, &unk_10040B350);
    v7 = 0;
    v37 = v1 + 56;
    v36 = v1 + 64;
    v38 = v2;
    v39 = v1;
    while (v7 < v2)
    {
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_45;
      }

      v10 = v49;
      v42 = v50;
      v41 = v51;
      v11 = sub_10008E7AC(v49, v50, v51, v1);
      v45[0] = 0x65636976726573;
      v45[1] = 0xE700000000000000;
      v12 = v11[3];
      v45[2] = v11[2];
      v45[3] = v12;
      v45[5] = &type metadata for String;
      v46[0] = 0x746C69466E616373;
      v46[1] = 0xEB00000000737265;
      v13 = v11[7];
      if (v13)
      {
        v14 = *(v13 + 16);
        *(&v44[0] + 1) = &type metadata for Int;
        *&v43 = v14;
        sub_100075D50(&v43, &v47);
      }

      else
      {
        v48 = &type metadata for String;
        *&v47 = 1701736302;
        *(&v47 + 1) = 0xE400000000000000;
      }

      v15 = static _DictionaryStorage.allocate(capacity:)();

      sub_10011EF24(v45, &v43);
      v16 = v43;
      result = sub_10008C908(v43, *(&v43 + 1));
      if (v17)
      {
        goto LABEL_42;
      }

      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v15[6] + 16 * result) = v16;
      result = sub_100075D50(v44, (v15[7] + 32 * result));
      v18 = v15[2];
      v9 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v9)
      {
        goto LABEL_43;
      }

      v15[2] = v19;
      sub_10011EF24(v46, &v43);
      v20 = v43;
      result = sub_10008C908(v43, *(&v43 + 1));
      if (v21)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        break;
      }

      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v15[6] + 16 * result) = v20;
      result = sub_100075D50(v44, (v15[7] + 32 * result));
      v22 = v15[2];
      v9 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v9)
      {
        goto LABEL_43;
      }

      v15[2] = v23;

      sub_100068FC4(&qword_100507D30, &unk_100409C90);
      swift_arrayDestroy();

      v52 = v3;
      v25 = v3[2];
      v24 = v3[3];
      if (v25 >= v24 >> 1)
      {
        result = sub_10019F4C4((v24 > 1), v25 + 1, 1);
        v3 = v52;
      }

      v3[2] = v25 + 1;
      v3[v25 + 4] = v15;
      if (v40)
      {
        v1 = v39;
        if (!v41)
        {
          goto LABEL_50;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v38;
        sub_100068FC4(&unk_100503ED0, &qword_10040B278);
        v8 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v8(&v43, 0);
      }

      else
      {
        v1 = v39;
        if (v41)
        {
          goto LABEL_51;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v26 = 1 << *(v39 + 32);
        if (v10 >= v26)
        {
          goto LABEL_46;
        }

        v27 = v10 >> 6;
        v28 = *(v37 + 8 * (v10 >> 6));
        if (((v28 >> v10) & 1) == 0)
        {
          goto LABEL_47;
        }

        if (*(v39 + 36) != v42)
        {
          goto LABEL_48;
        }

        v29 = v28 & (-2 << (v10 & 0x3F));
        if (v29)
        {
          v26 = __clz(__rbit64(v29)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v2 = v38;
        }

        else
        {
          v30 = v27 << 6;
          v31 = v27 + 1;
          v32 = (v36 + 8 * v27);
          v2 = v38;
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              result = sub_1000937D4(v10, v42, 0);
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_39;
            }
          }

          result = sub_1000937D4(v10, v42, 0);
        }

LABEL_39:
        v35 = *(v39 + 36);
        v49 = v26;
        v50 = v35;
        v51 = 0;
      }

      if (v7 == v2)
      {
        sub_1000937D4(v49, v50, v51);
        return v3;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1000E5B18(uint64_t a1)
{
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v36 = _swiftEmptyArrayStorage;
  sub_10019F3C0(0, v2 & ~(v2 >> 63), 0);
  v3 = _swiftEmptyArrayStorage;
  if (v30)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
  }

  v33 = result;
  v34 = v5;
  v35 = v30 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v29 = v2;
    while (v7 < v2)
    {
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_36;
      }

      v10 = v33;
      v11 = v35;
      v31 = v34;
      v12 = sub_10008E7AC(v33, v34, v35, a1);
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);

      v36 = v3;
      v16 = v3[2];
      v15 = v3[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_10019F3C0((v15 > 1), v16 + 1, 1);
        v3 = v36;
      }

      v3[2] = v16 + 1;
      v17 = &v3[2 * v16];
      v17[4] = v13;
      v17[5] = v14;
      if (v30)
      {
        if (!v11)
        {
          goto LABEL_41;
        }

        v18 = v3;
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v29;
        sub_100068FC4(&unk_100503ED0, &qword_10040B278);
        v8 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v8(v32, 0);
      }

      else
      {
        if (v11)
        {
          goto LABEL_42;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v18 = v3;
        v19 = 1 << *(a1 + 32);
        if (v10 >= v19)
        {
          goto LABEL_37;
        }

        v20 = v10 >> 6;
        v21 = *(a1 + 56 + 8 * (v10 >> 6));
        if (((v21 >> v10) & 1) == 0)
        {
          goto LABEL_38;
        }

        if (*(a1 + 36) != v31)
        {
          goto LABEL_39;
        }

        v22 = v21 & (-2 << (v10 & 0x3F));
        if (v22)
        {
          v19 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v2 = v29;
        }

        else
        {
          v23 = v20 << 6;
          v24 = v20 + 1;
          v25 = (a1 + 64 + 8 * v20);
          v2 = v29;
          while (v24 < (v19 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              result = sub_1000937D4(v10, v31, 0);
              v19 = __clz(__rbit64(v26)) + v23;
              goto LABEL_32;
            }
          }

          result = sub_1000937D4(v10, v31, 0);
        }

LABEL_32:
        v28 = *(a1 + 36);
        v33 = v19;
        v34 = v28;
        v35 = 0;
      }

      v3 = v18;
      if (v7 == v2)
      {
        sub_1000937D4(v33, v34, v35);
        return v3;
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
  return result;
}

uint64_t sub_1000E5E60()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    goto LABEL_17;
  }

  v9 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (v9)
  {
    v10 = objc_allocWithZone(NSMutableData);
    v11 = v9;
    v12 = [v10 init];

    v13 = NSData.startIndex.getter();
    v14 = NSData.endIndex.getter();
    v15 = NSData.startIndex.getter();
    result = NSData.endIndex.getter();
    if (v13 >= v15 && result >= v13)
    {
      v16 = NSData.startIndex.getter();
      result = NSData.endIndex.getter();
      if (v14 >= v16 && result >= v14)
      {
        if (!__OFSUB__(v14, v13))
        {
          if (v14 - v13 == 32)
          {
            v17 = v12;
            v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

            return v18;
          }

          else
          {
            v22 = type metadata accessor for __DataStorage();
            v23 = *(v22 + 48);
            v24 = *(v22 + 52);
            swift_allocObject();
            v25 = __DataStorage.init(length:)();
            v27[0] = 0x2000000000;
            v27[1] = v25;
            sub_10022D4F0(v27, 0);

            return v27[0];
          }
        }

LABEL_19:
        __break(1u);
        return result;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
  }

  return 0;
}

void sub_1000E616C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
    v11 = v10;
    v12 = _dispatchPreconditionTest(_:)();
    v14 = *(v6 + 8);
    v13 = v6 + 8;
    v14(v9, v5);
    if (v12)
    {
      v15 = *&v2[OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager];
      if (!v15)
      {
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "Not running", v23, 2u);
        }

        sub_100079E24();
        swift_allocError();
        *v24 = 1;
        swift_willThrow();
        return;
      }

      v45 = a2;
      v5 = v15;
      sub_1000E4630(a1);
      type metadata accessor for UUID();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v17 = [v5 retrievePeripheralsWithIdentifiers:isa];

      sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = v9 >> 62;
      if (!(v9 >> 62))
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = a1 & 0xC000000000000001;
        if ((a1 & 0xC000000000000001) != 0)
        {
          goto LABEL_6;
        }

        goto LABEL_38;
      }
    }

    else
    {
      __break(1u);
    }

    v18 = _CocoaArrayWrapper.endIndex.getter();
    v19 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
LABEL_6:
      if (v18 != __CocoaSet.count.getter())
      {
        goto LABEL_39;
      }

      goto LABEL_7;
    }

LABEL_38:
    if (v18 != *(a1 + 16))
    {
LABEL_39:

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to retrieve peripherals", v41, 2u);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v42 = 2;
      swift_willThrow();

      return;
    }

LABEL_7:
    v49 = xmmword_1004098E0;
    v50 = xmmword_1004098E0;
    v51 = _swiftEmptyArrayStorage;
    v20 = v13 ? _CocoaArrayWrapper.endIndex.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44 = v19;
    v47 = v5;
    v46 = v2;

    if (!v20)
    {
      break;
    }

    v2 = a1;
    a2 = 0;
    v6 = v9 & 0xC000000000000001;
    v5 = (v9 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v6)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v25 = *(v9 + 8 * a2 + 32);
      }

      a1 = v25;
      v26 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v48 = v25;
      sub_1000F7750(&v48, v47, v46, &v50, &v49, v2, &v51);

      a2 = (a2 + 1);
      if (v26 == v20)
      {
        v27 = *(&v50 + 1);
        v20 = v50;
        a1 = v2;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  v27 = 0xF000000000000000;
LABEL_23:

  if (v27 >> 60 != 15)
  {
    v28 = *(&v49 + 1);
    if (*(&v49 + 1) >> 60 != 15)
    {
      v29 = a1;
      v30 = v49;
      v31 = v51;
      v32 = v51[2];
      if (v44)
      {
        sub_10006A2BC(v20, v27);
        sub_10006A2BC(v30, v28);
        if (v32 == __CocoaSet.count.getter())
        {
LABEL_27:

          sub_10006A2D0(v30, v28);
          sub_10006A2D0(v20, v27);
          v33 = v45;
          *v45 = v20;
          v33[1] = v27;
          v33[2] = v30;
          v33[3] = v28;
          v33[4] = v31;
          return;
        }
      }

      else
      {
        v34 = *(v29 + 16);
        sub_10006A2BC(v20, v27);
        sub_10006A2BC(v30, v28);
        if (v32 == v34)
        {
          goto LABEL_27;
        }
      }

      sub_10006A2D0(v30, v28);
      sub_10006A2D0(v20, v27);
    }
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Got invalid pairing information", v37, 2u);
  }

  sub_1000E1E2C();
  swift_allocError();
  *v38 = 2;
  swift_willThrow();

  sub_10006A2D0(v49, *(&v49 + 1));
  sub_10006A2D0(v50, *(&v50 + 1));
}

void sub_1000E67E4(uint64_t a1)
{
  v2 = v1;
  i = type metadata accessor for DispatchPredicate();
  v5 = *(i - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(i);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v9 = qword_10051B7F0;
    *v8 = qword_10051B7F0;
    (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), i);
    v10 = v9;
    v11 = _dispatchPreconditionTest(_:)();
    (*(v5 + 8))(v8, i);
    if ((v11 & 1) == 0)
    {
      __break(1u);
      return;
    }

    if (!*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      break;
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    v14 = os_log_type_enabled(v12, v13);
    v55 = a1;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v64[0] = v16;
      *v15 = 136315138;
      v17 = UUID.uuidString.getter();
      v19 = sub_1002FFA0C(v17, v18, v64);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Disconnection request for %s", v15, 0xCu);
      sub_1000752F4(v16);
    }

    v20 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    swift_beginAccess();
    v53 = v20;
    v54 = v2;
    v8 = *(v2 + v20);
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v8 < 0)
      {
        v21 = *(v2 + v20);
      }

      v22 = *(v2 + v20);

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v23, type metadata accessor for DSKBLE.BLEConnectionRequest);
      Set.Iterator.init(_cocoa:)();
      a1 = v59;
      v24 = v60;
      v25 = v61;
      v2 = v62;
      v26 = v63;
    }

    else
    {
      v30 = -1 << *(v8 + 32);
      v24 = v8 + 56;
      v25 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v26 = v32 & *(v8 + 56);
      v33 = *(v2 + v20);
      swift_bridgeObjectRetain_n();
      v2 = 0;
      a1 = v8;
    }

    v5 = (v25 + 64) >> 6;
    if (a1 < 0)
    {
LABEL_23:
      v38 = __CocoaSet.Iterator.next()();
      if (!v38)
      {
        goto LABEL_28;
      }

      v58 = v38;
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      swift_dynamicCast();
      v37 = v64[0];
      i = v2;
      v36 = v26;
      if (!v64[0])
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v34 = v2;
      v35 = v26;
      for (i = v2; !v35; ++v34)
      {
        i = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_53;
        }

        if (i >= v5)
        {
          goto LABEL_28;
        }

        v35 = *(v24 + 8 * i);
      }

      v36 = (v35 - 1) & v35;
      v37 = *(*(a1 + 48) + ((i << 9) | (8 * __clz(__rbit64(v35)))));

      if (!v37)
      {
        break;
      }

LABEL_25:
      v39 = *(v37 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      if (static UUID.== infix(_:_:)())
      {
        sub_100093854();

        v40 = v54;
        swift_beginAccess();
        sub_10010DCAC(v37);
        swift_endAccess();

        goto LABEL_29;
      }

      v2 = i;
      v26 = v36;
      if (a1 < 0)
      {
        goto LABEL_23;
      }
    }

LABEL_28:
    sub_100093854();

    v40 = v54;
LABEL_29:
    v5 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v53 = *(v40 + v5);
    if ((v53 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      a1 = v64[0];
      v41 = v64[1];
      i = v64[2];
      v42 = v64[3];
      v8 = v64[4];
    }

    else
    {
      v43 = -1 << *(v53 + 32);
      v41 = v53 + 56;
      i = ~v43;
      v44 = -v43;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      else
      {
        v45 = -1;
      }

      v8 = v45 & *(v53 + 56);
      a1 = v53;
      swift_bridgeObjectRetain_n();
      v42 = 0;
    }

    v52[1] = i;
    v46 = (i + 64) >> 6;
    while (a1 < 0)
    {
      v51 = __CocoaSet.Iterator.next()();
      if (!v51 || (v56 = v51, type metadata accessor for DSKBLE.BLEPeripheral(), swift_dynamicCast(), v50 = v57, v2 = v42, v49 = v8, !v57))
      {
LABEL_50:
        sub_100093854();

        return;
      }

LABEL_46:
      i = *(v50 + 16);

      v5 = static UUID.== infix(_:_:)();

      if ((v5 & 1) != 0 && *(v50 + 32))
      {
        sub_100093854();

        v27 = *(v50 + 24);
        sub_1000EF154(v27);

        goto LABEL_49;
      }

      v42 = v2;
      v8 = v49;
    }

    v47 = v42;
    v48 = v8;
    v2 = v42;
    if (v8)
    {
LABEL_42:
      v49 = (v48 - 1) & v48;
      v50 = *(*(a1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v48)))));

      if (!v50)
      {
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    while (1)
    {
      v2 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v2 >= v46)
      {
        goto LABEL_50;
      }

      v48 = *(v41 + 8 * v2);
      ++v47;
      if (v48)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Not running", v29, 2u);
  }

LABEL_49:
}

uint64_t sub_1000E6F84(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEScanRequest();
    sub_1001081DC(&qword_100503EB8, v6, type metadata accessor for DSKBLE.BLEScanRequest);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v8 = v23;
    v9 = v24;
    v10 = v25;
    v11 = v26;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v10;
  v16 = v11;
  v17 = v10;
  if (v11)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (v19)
    {
      do
      {
        v27 = v19;
        sub_1000F075C(&v27, a2 & 1, a3);

        if (v4)
        {
          break;
        }

        v10 = v17;
        v11 = v18;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for DSKBLE.BLEScanRequest();
        swift_dynamicCast();
        v19 = v27;
        v17 = v10;
        v18 = v11;
      }

      while (v27);
    }

    return sub_100093854();
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= ((v9 + 64) >> 6))
      {
        return sub_100093854();
      }

      v16 = *(v8 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000E71A0(uint64_t a1, uint64_t a2, int64_t i)
{
  v5 = v4;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v14 = qword_10051B7F0;
    *v13 = qword_10051B7F0;
    (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
    v15 = v14;
    v16 = _dispatchPreconditionTest(_:)();
    v18 = *(v10 + 8);
    v17 = v10 + 8;
    v18(v13, v9);
    if ((v16 & 1) == 0)
    {
      __break(1u);
LABEL_39:
      v16 = sub_10012E5A4(0, v17 + 1, 1, v16);
      *(a1 + 160) = v16;
LABEL_30:
      v40 = v56;
      v41 = v55;
      v43 = *(v16 + 16);
      v42 = *(v16 + 24);
      if (v43 >= v42 >> 1)
      {
        v16 = sub_10012E5A4((v42 > 1), v43 + 1, 1, v16);
      }

      *(v16 + 16) = v43 + 1;
      v44 = v16 + 16 * v43;
      *(v44 + 32) = v41;
      *(v44 + 40) = v40;
      *(a1 + 160) = v16;
      swift_endAccess();
      sub_100069E2C(v41, v40);
      sub_1000F22EC(a1);
      v45 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v20 = UUID._bridgeToObjectiveC()().super.isa;
      [v45 bleLogMessageSent:isa peerUUID:v20];

      goto LABEL_8;
    }

    if (!*(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Not running", v22, 2u);
      }

LABEL_8:

      return;
    }

    v55 = a1;
    v56 = a2;
    v57 = v5;
    v63[13] = i;
    v19 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v58 = v3;
    v60 = *(v3 + v19);
    if ((v60 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v10 = v63[6];
      a2 = v63[7];
      v3 = v63[8];
      v13 = v63[9];
      a1 = v63[10];
    }

    else
    {
      v23 = -1 << *(v60 + 32);
      a2 = v60 + 56;
      v3 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      a1 = v25 & *(v60 + 56);
      v10 = v60;
      swift_bridgeObjectRetain_n();
      v13 = 0;
    }

    v59 = v3;
    for (i = (v3 + 64) >> 6; v10 < 0; a1 = v9)
    {
      v29 = __CocoaSet.Iterator.next()();
      if (!v29)
      {
        goto LABEL_25;
      }

      v62[0] = v29;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v5 = v63[0];
      v28 = v13;
      v9 = a1;
      if (!v63[0])
      {
        goto LABEL_25;
      }

LABEL_22:
      v61 = a1;
      v3 = *(v5 + 16);

      v30 = static UUID.== infix(_:_:)();

      if (v30)
      {
        sub_100093854();

        swift_beginAccess();
        v16 = *(v5 + 160);
        v17 = *(v16 + 16);
        if (v17 > 9)
        {

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v62[0] = v50;
            *v49 = 136315138;
            v51 = UUID.uuidString.getter();
            v53 = sub_1002FFA0C(v51, v52, v62);

            *(v49 + 4) = v53;
            _os_log_impl(&_mh_execute_header, v47, v48, "Send queue is full %s", v49, 0xCu);
            sub_1000752F4(v50);
          }

          sub_1000E1E2C();
          swift_allocError();
          *v54 = 7;
          swift_willThrow();

          return;
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a1 = v5;
        *(v5 + 160) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_30;
      }

      v13 = v28;
    }

    v26 = v13;
    v27 = a1;
    v28 = v13;
    if (a1)
    {
      break;
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= i)
      {
        goto LABEL_25;
      }

      v27 = *(a2 + 8 * v28);
      v26 = (v26 + 1);
      if (v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_18:
  v9 = (v27 - 1) & v27;
  v5 = *(*(v10 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));

  if (v5)
  {
    goto LABEL_22;
  }

LABEL_25:
  sub_100093854();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v63[0] = v34;
    *v33 = 136315138;
    v35 = UUID.uuidString.getter();
    v37 = sub_1002FFA0C(v35, v36, v63);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to send message to disconnected peripheral %s", v33, 0xCu);
    sub_1000752F4(v34);
  }

  sub_1000E1E2C();
  swift_allocError();
  *v38 = 4;
  swift_willThrow();
}

uint64_t sub_1000E7974(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v8 = qword_10051B7F0;
    *v7 = qword_10051B7F0;
    (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
    v9 = v8;
    v10 = _dispatchPreconditionTest(_:)();
    result = (*(v4 + 8))(v7, v3);
    if ((v10 & 1) == 0)
    {
      break;
    }

    if (!*(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v16, v17))
      {

        return 2;
      }

      v18 = 2;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not running", v19, 2u);

      return v18;
    }

    v38 = a1;
    v12 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v36[0] = v1;
    v37 = *(v1 + v12);
    if ((v37 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v1 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v14 = v40[4];
      v13 = v40[5];
      v15 = v40[6];
      v4 = v40[7];
      v7 = v40[8];
    }

    else
    {
      v20 = -1 << *(v37 + 32);
      v13 = v37 + 56;
      v15 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v7 = (v22 & *(v37 + 56));
      v14 = v37;
      swift_bridgeObjectRetain_n();
      v4 = 0;
    }

    v36[1] = v15;
    v23 = (v15 + 64) >> 6;
    if (v14 < 0)
    {
      while (1)
      {
        v27 = __CocoaSet.Iterator.next()();
        if (!v27)
        {
          break;
        }

        v39 = v27;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v1 = v40[0];
        v26 = v4;
        v3 = v7;
        if (!v40[0])
        {
          break;
        }

LABEL_21:
        v28 = *(v1 + 16);

        a1 = static UUID.== infix(_:_:)();

        if (a1)
        {
          sub_100093854();

          v18 = *(v1 + 168);

          return v18;
        }

        v4 = v26;
        v7 = v3;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_24:
      sub_100093854();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40[0] = v32;
        *v31 = 136315138;
        v33 = UUID.uuidString.getter();
        v35 = sub_1002FFA0C(v33, v34, v40);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "Peripheral is not connected %s", v31, 0xCu);
        sub_1000752F4(v32);
      }

      return 2;
    }

LABEL_13:
    v24 = v4;
    v25 = v7;
    v26 = v4;
    if (v7)
    {
LABEL_17:
      v3 = (v25 - 1) & v25;
      v1 = *(*(v14 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

      if (v1)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        goto LABEL_24;
      }

      v25 = *(v13 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_1000E7EB0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v28[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    v11 = *(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (v11)
    {
      v12 = v11;

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v28[0] = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_1002FFA0C(*(a1 + 16), *(a1 + 24), v28);
        _os_log_impl(&_mh_execute_header, v13, v14, "Scan request for %s", v15, 0xCu);
        sub_1000752F4(v16);
      }

      if ((*(a1 + 33) & 1) != 0 || (v17 = [v12 state], v17 == 5) || v17 == 10)
      {
        swift_beginAccess();

        v18 = sub_1000D5368(&v29, a1);
        swift_endAccess();

        if (v18)
        {
          sub_1000EE338();
        }

        else
        {

          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v28[0] = v25;
            *v24 = 136315138;
            *(v24 + 4) = sub_1002FFA0C(*(a1 + 16), *(a1 + 24), v28);
            _os_log_impl(&_mh_execute_header, v22, v23, "Scan is already requested %s", v24, 0xCu);
            sub_1000752F4(v25);
          }
        }
      }

      else
      {
        sub_1000E1E2C();
        swift_allocError();
        *v26 = 3;
        swift_willThrow();
      }
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
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E82EC()
{
  v3 = v1;
  v4 = v0;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_24:
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  v14 = *(v6 + 8);
  v13 = (v6 + 8);
  v14(v9, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_7;
  }

  v15 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;

  v38[1] = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v13 = &unk_100503000;
  v43 = v4;
  v40 = v3;
  if (v18)
  {
    v3 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    *v3 = 136315138;
    type metadata accessor for UUID();
    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = sub_1002FFA0C(v20, v21, &v42);

    *(v3 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "New request to unpair %s", v3, 0xCu);
    sub_1000752F4(v19);
    v4 = v43;
  }

  v23 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
  swift_beginAccess();
  v39 = v23;
  v5 = *(v4 + v23);
  v2 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    goto LABEL_26;
  }

  v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v24 = v13[409];
  v6 = v5 & 0xC000000000000001;

  for (i = 0; v9 != i; ++i)
  {
    if (v6)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (i >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v3 = *(v5 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
LABEL_16:
        __break(1u);
        break;
      }
    }

    v4 = static UUID.== infix(_:_:)();

    if (v4)
    {

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v41 = v32;
        *v31 = 136315138;
        type metadata accessor for UUID();
        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = sub_1002FFA0C(v33, v34, &v41);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "Unpairing already requested for %s", v31, 0xCu);
        sub_1000752F4(v32);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v36 = 0;
      swift_willThrow();
      return;
    }
  }

  v26 = v43;
  v27 = v39;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v26 + v27) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v26 + v27) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((*(v26 + v27) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_1001047D0();
}

uint64_t sub_1000E885C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
LABEL_27:
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    v4 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
    swift_beginAccess();
    v8 = *(v2 + v4);
    v42 = &_swiftEmptyArrayStorage;
    if (!(v8 >> 62))
    {
      v5 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v12 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v13 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;

  v41 = v5;
  if (v5)
  {
    v38 = v4;
    v39 = v2;
    v14 = 0;
    v2 = v8 & 0xC000000000000001;
    v15 = v8 & 0xFFFFFFFFFFFFFF8;
    v4 = v41;
    v40 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v2)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v25 = v42;
          v4 = v38;
          v2 = v39;
          goto LABEL_19;
        }
      }

      else
      {
        if (v14 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        v22 = *(v8 + 8 * v14 + 32);

        v5 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_16;
        }
      }

      v23 = *(v22 + 32);
      v24 = *v12;
      if (static UUID.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v16 = v2;
        v17 = v12;
        v18 = v8;
        v19 = v13;
        v20 = a1;
        v21 = v42[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v20;
        v13 = v19;
        v8 = v18;
        v12 = v17;
        v2 = v16;
        v15 = v40;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 = v41;
      }

      ++v14;
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }
  }

  v25 = &_swiftEmptyArrayStorage;
LABEL_19:

  v26 = *(v2 + v4);
  *(v2 + v4) = v25;

  v28 = *(v2 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest);
  if (v28)
  {
    v29 = *(v28 + 32);
    v30 = *v12;

    if (static UUID.== infix(_:_:)())
    {

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v42 = v34;
        *v33 = 136315138;
        v35 = UUID.uuidString.getter();
        v37 = sub_1002FFA0C(v35, v36, &v42);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "Request to cancel pairing for %s", v33, 0xCu);
        sub_1000752F4(v34);
      }

      sub_100106638(0);
    }
  }

  return result;
}

void sub_1000E8C60(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if (v10)
  {
    if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v12 = OBJC_IVAR____TtC10seserviced6DSKBLE_scanRequests;
      swift_beginAccess();
      v13 = *(v2 + v12);
      if ((v13 & 0xC000000000000001) != 0)
      {
        if (v13 < 0)
        {
          v14 = *(v2 + v12);
        }

        v15 = *(v2 + v12);

        v16 = __CocoaSet.count.getter();
      }

      else
      {
        v16 = *(v13 + 16);
      }

      v20 = String._bridgeToObjectiveC()();
      v21 = [objc_opt_self() UUIDWithString:v20];

      v22 = *(v2 + v12);
      v17 = v21;

      v24 = sub_100111A50(v23, v17);

      v25 = *(v2 + v12);
      *(v2 + v12) = v24;
      swift_retain_n();

      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = __CocoaSet.count.getter();
      }

      else
      {
        v26 = *(v24 + 16);
      }

      if (v26 < v16)
      {

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v32 = v30;
          *v29 = 136315138;
          *(v29 + 4) = sub_1002FFA0C(a1, a2, &v32);
          _os_log_impl(&_mh_execute_header, v27, v28, "Stop scanning for %s", v29, 0xCu);
          sub_1000752F4(v30);
        }
      }

      sub_1000EE338();
    }

    else
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Not running", v19, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E9034(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_48;
  }

LABEL_2:
  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v5 += 8;
  v12(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_50:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_7;
  }

  v13 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;

  v14 = v75;
  v73 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = os_log_type_enabled(v15, v16);
  v72 = v2;
  if (v17)
  {
    v2 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v79[0] = v18;
    *v2 = 136315138;
    v19 = *(a1 + 32) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v20 = UUID.uuidString.getter();
    v22 = sub_1002FFA0C(v20, v21, v79);

    *(v2 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "New request to pair %s", v2, 0xCu);
    sub_1000752F4(v18);
  }

  v23 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
  swift_beginAccess();
  v71 = v23;
  v4 = *(v14 + v23);
  v76 = a1;
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_50;
  }

  v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

  v24 = 0;
  do
  {
    if (v8 == v24)
    {
      goto LABEL_17;
    }

    v25 = v76;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v24, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v24 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      v2 = *(v4 + 8 * v24 + 32);

      if (__OFADD__(v24, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:

        if (qword_100501960 != -1)
        {
          swift_once();
        }

        v29 = qword_10051B288;
        v30 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
        swift_beginAccess();
        v70 = *(v29 + v30);
        if ((v70 & 0xC000000000000001) != 0)
        {

          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          type metadata accessor for DSKBLE.BLEPeripheral();
          sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
          Set.Iterator.init(_cocoa:)();
          v31 = v79[3];
          v8 = v79[4];
          v4 = v79[5];
          a1 = v79[6];
          v32 = v79[7];
        }

        else
        {
          v42 = -1 << *(v70 + 32);
          v8 = (v70 + 56);
          v4 = ~v42;
          v43 = -v42;
          if (v43 < 64)
          {
            v44 = ~(-1 << v43);
          }

          else
          {
            v44 = -1;
          }

          v32 = v44 & *(v70 + 56);
          v31 = v70;
          swift_bridgeObjectRetain_n();
          a1 = 0;
        }

        v69[1] = v4;
        v45 = (v4 + 64) >> 6;
        v74 = v45;
        while (1)
        {
          v5 = a1;
          if (v31 < 0)
          {
            v49 = __CocoaSet.Iterator.next()();
            if (!v49 || (v79[10] = v49, type metadata accessor for DSKBLE.BLEPeripheral(), swift_dynamicCast(), v4 = v77, v48 = v32, !v77))
            {
LABEL_42:
              sub_100093854();

              v58 = v76;

              v59 = Logger.logObject.getter();
              v60 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v59, v60))
              {
                v61 = swift_slowAlloc();
                v62 = swift_slowAlloc();
                v77 = v62;
                *v61 = 136315138;
                v63 = *(v58 + 32) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
                v64 = UUID.uuidString.getter();
                v66 = sub_1002FFA0C(v64, v65, &v77);

                *(v61 + 4) = v66;
                _os_log_impl(&_mh_execute_header, v59, v60, "Peripheral is not connected %s", v61, 0xCu);
                sub_1000752F4(v62);
              }

              v41 = 4;
              goto LABEL_45;
            }
          }

          else
          {
            v46 = a1;
            v47 = v32;
            if (!v32)
            {
              while (1)
              {
                a1 = v46 + 1;
                if (__OFADD__(v46, 1))
                {
                  break;
                }

                if (a1 >= v45)
                {
                  goto LABEL_42;
                }

                v47 = v8[a1];
                ++v46;
                if (v47)
                {
                  goto LABEL_34;
                }
              }

LABEL_47:
              __break(1u);
LABEL_48:
              swift_once();
              goto LABEL_2;
            }

LABEL_34:
            v48 = (v47 - 1) & v47;
            v4 = *(*(v31 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v47)))));

            if (!v4)
            {
              goto LABEL_42;
            }
          }

          v2 = v32;
          v50 = v8;
          v51 = v48;
          v52 = v31;
          v53 = *(v4 + 16);
          v54 = *(v76 + 32);

          v55 = static UUID.== infix(_:_:)();

          v31 = v52;
          v32 = v51;
          v8 = v50;
          v45 = v74;

          if (v55)
          {
            sub_100093854();

            v56 = v75;
            v57 = v71;
            swift_beginAccess();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(v56 + v57) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v56 + v57) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v68 = *((*(v56 + v57) & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            sub_1001047D0();
            return;
          }
        }
      }
    }

    v26 = *(v2 + 32);
    v27 = *(v25 + 32);
    a1 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v28 = static UUID.== infix(_:_:)();

    ++v24;
  }

  while ((v28 & 1) == 0);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v78 = v37;
    *v36 = 136315138;
    v38 = UUID.uuidString.getter();
    v40 = sub_1002FFA0C(v38, v39, &v78);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Pairing already requested for %s", v36, 0xCu);
    sub_1000752F4(v37);
  }

  v41 = 0;
LABEL_45:
  sub_1000E1E2C();
  swift_allocError();
  *v67 = v41;
  swift_willThrow();
}

void sub_1000E98C8(uint64_t a1, uint64_t a2)
{
  v107 = a1;
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
    v11 = v10;
    v12 = _dispatchPreconditionTest(_:)();
    v14 = *(v6 + 8);
    v13 = v6 + 8;
    v14(v9, v5);
    if (v12)
    {
      break;
    }

    __break(1u);
LABEL_48:
    swift_once();
LABEL_10:
    v108 = v3;
    v105 = a2;
    v5 = qword_10051B288;
    v29 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v100 = *(v5 + v29);
    v101 = v13;
    v98 = v12;
    if ((v100 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v5 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      a2 = v111[3];
      v3 = v111[4];
      v30 = v111[5];
      v31 = v111[6];
      v32 = v111[7];
    }

    else
    {
      v56 = -1 << *(v100 + 32);
      v3 = (v100 + 56);
      v30 = ~v56;
      v57 = -v56;
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      else
      {
        v58 = -1;
      }

      v32 = v58 & *(v100 + 56);
      a2 = v100;
      swift_bridgeObjectRetain_n();
      v31 = 0;
    }

    v99 = v30;
    v6 = (v30 + 64) >> 6;
    if (a2 < 0)
    {
LABEL_28:
      v59 = __CocoaSet.Iterator.next()();
      if (v59)
      {
        v111[10] = v59;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v60 = v109;
        v9 = v31;
        v61 = v32;
        if (v109)
        {
          goto LABEL_36;
        }
      }

LABEL_39:
      sub_100093854();

      v68 = v105;

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v109 = v72;
        *v71 = 136315138;
        v73 = v68[4];

        v74 = UUID.uuidString.getter();
        v76 = v75;

        v77 = sub_1002FFA0C(v74, v76, &v109);

        *(v71 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v69, v70, "Peripheral is not connected %s", v71, 0xCu);
        sub_1000752F4(v72);
      }

      sub_1000E1E2C();
      v78 = swift_allocError();
      *v79 = 4;
      sub_100106638(v78);

      swift_allocError();
      *v80 = 4;
      swift_willThrow();

      return;
    }

    while (1)
    {
      v62 = v31;
      v63 = v32;
      v9 = v31;
      if (!v32)
      {
        break;
      }

LABEL_35:
      v61 = (v63 - 1) & v63;
      v64 = *(*(a2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v63)))));

      if (!v60)
      {
        goto LABEL_39;
      }

LABEL_36:
      v103 = v31;
      v104 = v32;
      v5 = *(v60 + 16);
      v65 = v60;
      v66 = v105[4];

      v67 = static UUID.== infix(_:_:)();

      if (v67)
      {
        sub_100093854();

        v82 = v105;
        v81 = v106;
        v83 = v105[2];
        v84 = v105[3];
        v85 = v107;
        v105[2] = v107;
        v82[3] = v81;
        sub_10006A2D0(v83, v84);
        sub_100069E2C(v85, v81);
        v86 = v108;
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&_mh_execute_header, v87, v88, "Requesting pairing", v89, 2u);
        }

        *(v86 + v98) = 2;
        v90 = *(v65 + 24);
        sub_100068FC4(&unk_100503F50, &unk_10040D950);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100409900;
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v110 = v92;
        v93 = v90;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for Bool;
        *(inited + 72) = 1;
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v110 = v94;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for Bool;
        *(inited + 144) = 1;
        sub_100090BC4(inited);
        swift_setDeallocating();
        sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v96 = v102;
        [v102 pairPeer:v93 options:isa];

        return;
      }

      v31 = v9;
      v32 = v61;
      if (a2 < 0)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      v9 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        goto LABEL_39;
      }

      v63 = v3[v9];
      ++v62;
      if (v63)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
  }

  v13 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = os_log_type_enabled(v15, v16);
  v106 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v108 = v3;
    v20 = v19;
    v111[0] = v19;
    *v18 = 136315138;
    v21 = UUID.uuidString.getter();
    v23 = sub_1002FFA0C(v21, v22, v111);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received OOB data for %s", v18, 0xCu);
    sub_1000752F4(v20);
    v3 = v108;
  }

  a2 = *(v3 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest);
  if (!a2)
  {
    goto LABEL_13;
  }

  v24 = *(a2 + 32);
  v25 = *(v3 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest);

  v26 = static UUID.== infix(_:_:)();

  if (v26)
  {
    v12 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state;
    if (*(v3 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state) == 1)
    {
      v27 = *(v3 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent);
      if (v27)
      {
        v28 = qword_100501960;
        v102 = v27;
        if (v28 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_48;
      }

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Missing shared pairing agent", v52, 2u);
      }

      sub_1000E1E2C();
      v53 = swift_allocError();
      *v54 = 2;
      sub_100106638(v53);

      swift_allocError();
      *v55 = 2;
    }

    else
    {
      v41 = v3;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v111[0] = v45;
        *v44 = 136315138;
        LOBYTE(v109) = *(v3 + v12);
        v46 = String.init<A>(describing:)();
        v48 = sub_1002FFA0C(v46, v47, v111);

        *(v44 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v42, v43, "Pairing requested in wrong state %s", v44, 0xCu);
        sub_1000752F4(v45);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v49 = 2;
    }

    swift_willThrow();

    return;
  }

LABEL_13:

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v111[0] = v36;
    *v35 = 136315138;
    v37 = UUID.uuidString.getter();
    v39 = sub_1002FFA0C(v37, v38, v111);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Pairing not in progress for %s", v35, 0xCu);
    sub_1000752F4(v36);
  }

  sub_1000E1E2C();
  swift_allocError();
  *v40 = 5;
  swift_willThrow();
}

void sub_1000EA4CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  k = *(v6 - 8);
  v8 = *(k + 64);
  __chkstk_darwin(v6);
  i = (&v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *i = qword_10051B7F0;
    (*(k + 104))(i, enum case for DispatchPredicate.onQueue(_:), v6);
    v12 = v11;
    v13 = _dispatchPreconditionTest(_:)();
    (*(k + 8))(i, v6);
    if ((v13 & 1) == 0)
    {
      __break(1u);
LABEL_98:
      sub_100093854();

      __break(1u);
LABEL_99:
      v91 = _CocoaArrayWrapper.endIndex.getter();
LABEL_81:
      if (!v91)
      {

        v58 = Logger.logObject.getter();
        v100 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v58, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v114[0] = v102;
          *v101 = 136315138;
          v103 = UUID.uuidString.getter();
          v105 = sub_1002FFA0C(v103, v104, v114);

          *(v101 + 4) = v105;
          _os_log_impl(&_mh_execute_header, v58, v100, "Failed to retrieve peripheral for %s", v101, 0xCu);
          sub_1000752F4(v102);
        }

        goto LABEL_91;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_102:
          __break(1u);
          return;
        }

        v92 = *(a2 + 32);
      }

      v93 = v92;

      v94 = i[7];
      i[7] = v93;

      v83 = i[7];
      if (v83)
      {
LABEL_86:
        v95 = i[6];
        v96 = v83;

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v98 = v109;
        [v109 connectPeripheral:v96 options:isa];

        return;
      }

      goto LABEL_102;
    }

    v14 = *(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v14)
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Not running", v28, 2u);
      }

      return;
    }

    v110 = v3;
    v113 = a1;
    if ((a2 & 1) == 0)
    {
      break;
    }

    v109 = v14;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v119 = v18;
      *v17 = 136315138;
      v19 = *(a1 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      v20 = UUID.uuidString.getter();
      v22 = sub_1002FFA0C(v20, v21, &v119);

      *(v17 + 4) = v22;
      v3 = v110;
      _os_log_impl(&_mh_execute_header, v15, v16, "Replacing existing connection request for %s", v17, 0xCu);
      sub_1000752F4(v18);
    }

    swift_beginAccess();

    sub_100110740(v23);
    swift_endAccess();

    k = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v108 = *(v3 + k);
    if ((v108 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      k = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      a1 = v119;
      v24 = v120;
      a2 = v121;
      v6 = v122;
      v25 = v123;
    }

    else
    {
      v39 = -1 << *(v108 + 32);
      v24 = v108 + 56;
      a2 = ~v39;
      v40 = -v39;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v25 = v41 & *(v108 + 56);
      a1 = v108;
      swift_bridgeObjectRetain_n();
      v6 = 0;
    }

    v107 = a2;
    for (i = ((a2 + 64) >> 6); a1 < 0; v25 = v45)
    {
      v48 = __CocoaSet.Iterator.next()();
      if (!v48)
      {
        goto LABEL_34;
      }

      v114[0] = v48;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v47 = v115;
      v44 = v6;
      v45 = v25;
      if (!v115)
      {
        goto LABEL_34;
      }

LABEL_31:
      v112 = v47;
      k = *(v47 + 16);
      a2 = *(v113 + 16);

      v111 = a2;
      v3 = static UUID.== infix(_:_:)();

      if (v3)
      {
        sub_100093854();

        v117 = type metadata accessor for DSKBLE.BLEConnectionRequest();
        v118 = &off_1004C7088;
        v99 = v112;
        *&v115 = v113;
        swift_beginAccess();

        sub_1000752F4((v99 + 40));
        sub_1000BC104(&v115, v99 + 40);
        swift_endAccess();
        sub_1000F0F70(v111);

        goto LABEL_92;
      }

      v6 = v44;
    }

    v42 = v6;
    v43 = v25;
    v44 = v6;
    if (v25)
    {
LABEL_27:
      v45 = (v43 - 1) & v43;
      v46 = *(*(a1 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));

      if (v47)
      {
        goto LABEL_31;
      }

LABEL_34:
      sub_100093854();

      return;
    }

    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v44 >= i)
      {
        goto LABEL_34;
      }

      v43 = *(v24 + 8 * v44);
      ++v42;
      if (v43)
      {
        goto LABEL_27;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  v29 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
  swift_beginAccess();
  v109 = v14;

  v106 = v29;
  LOBYTE(v29) = sub_1000D7064(&v115, a1);
  swift_endAccess();

  if (v29)
  {

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v119 = v33;
      *v32 = 136315138;
      v34 = *(a1 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      v35 = UUID.uuidString.getter();
      v37 = sub_1002FFA0C(v35, v36, &v119);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Connection request for %s", v32, 0xCu);
      sub_1000752F4(v33);
      v3 = v110;
    }
  }

  k = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v108 = *(v3 + k);
  if ((v108 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
    Set.Iterator.init(_cocoa:)();
    i = *(&v115 + 1);
    a1 = v115;
    a2 = v116;
    v6 = v117;
    v38 = v118;
  }

  else
  {
    v49 = -1 << *(v108 + 32);
    i = (v108 + 56);
    a2 = ~v49;
    v50 = -v49;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v52 = v51 & *(v108 + 56);
    a1 = v108;
    swift_bridgeObjectRetain_n();
    v38 = v52;
    v6 = 0;
  }

  v107 = a2;
  v3 = (a2 + 64) >> 6;
  v111 = a1;
  while (1)
  {
    v53 = v38;
    if (a1 < 0)
    {
      break;
    }

    for (j = v6; !v38; ++j)
    {
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_95;
      }

      if (v6 >= v3)
      {
        goto LABEL_52;
      }

      v38 = i[v6];
    }

    v112 = (v38 - 1) & v38;
    a2 = *(*(a1 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v38)))));

    if (!a2)
    {
      goto LABEL_52;
    }

LABEL_49:
    v56 = *(a2 + 16);
    v57 = *(v113 + 16);

    k = static UUID.== infix(_:_:)();

    a1 = v111;

    v38 = v112;
    if (k)
    {
      sub_100093854();

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_91;
      }

      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v119 = v61;
      *v60 = 136315138;
      v62 = UUID.uuidString.getter();
      v64 = sub_1002FFA0C(v62, v63, &v119);

      *(v60 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v58, v59, "Peripheral is already connected %s", v60, 0xCu);
      sub_1000752F4(v61);

      goto LABEL_61;
    }
  }

  v55 = __CocoaSet.Iterator.next()();
  if (v55)
  {
    v114[0] = v55;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    a2 = v119;
    v112 = v53;
    if (v119)
    {
      goto LABEL_49;
    }
  }

LABEL_52:
  sub_100093854();

  v65 = [v109 state];
  if (v65 == 10 || v65 == 5)
  {
    v112 = *(v110 + v106);
    if ((v112 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v67, type metadata accessor for DSKBLE.BLEConnectionRequest);
      Set.Iterator.init(_cocoa:)();
      a1 = v119;
      v3 = v120;
      v68 = v121;
      v6 = v122;
      v69 = v123;
    }

    else
    {
      v73 = -1 << *(v112 + 32);
      v3 = v112 + 56;
      v68 = ~v73;
      v74 = -v73;
      if (v74 < 64)
      {
        v75 = ~(-1 << v74);
      }

      else
      {
        v75 = -1;
      }

      v69 = v75 & *(v112 + 56);
      a1 = v112;
      swift_bridgeObjectRetain_n();
      v6 = 0;
    }

    v111 = v68;
    for (k = (v68 + 64) >> 6; a1 < 0; v69 = v78)
    {
      a2 = a1 & 0x7FFFFFFFFFFFFFFFLL;
      v79 = __CocoaSet.Iterator.next()();
      if (!v79)
      {
        goto LABEL_98;
      }

      v114[3] = v79;
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      swift_dynamicCast();
      i = v114[0];
      a2 = v6;
      v78 = v69;
      if (!v114[0])
      {
        goto LABEL_98;
      }

LABEL_75:
      v80 = i[2];
      v81 = *(v113 + 16);
      v82 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      if (static UUID.== infix(_:_:)())
      {
        sub_100093854();

        v83 = i[7];
        if (v83)
        {
          goto LABEL_86;
        }

        sub_100068FC4(&qword_100503F10, &qword_10040A008);
        v84 = type metadata accessor for UUID();
        v85 = *(v84 - 8);
        v86 = *(v85 + 72);
        v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1004098F0;
        (*(v85 + 16))(v88 + v87, v81 + v82, v84);
        v89 = Array._bridgeToObjectiveC()().super.isa;

        v90 = [v109 retrievePeripheralsWithIdentifiers:v89];

        sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
        a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(a2 >> 62))
        {
          v91 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_81;
        }

        goto LABEL_99;
      }

      v6 = a2;
    }

    v76 = v6;
    v77 = v69;
    a2 = v6;
    if (v69)
    {
LABEL_71:
      v78 = (v77 - 1) & v77;
      i = *(*(a1 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v77)))));

      if (i)
      {
        goto LABEL_75;
      }

      goto LABEL_98;
    }

    while (1)
    {
      a2 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (a2 >= k)
      {
        goto LABEL_98;
      }

      v77 = *(v3 + 8 * a2);
      ++v76;
      if (v77)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v58 = Logger.logObject.getter();
  v70 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v58, v70))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v58, v70, "Central is not powered on", v72, 2u);
LABEL_61:
  }

LABEL_91:

LABEL_92:
}

void sub_1000EB524(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v167 = a3;
  v168 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v164 = *(v7 - 8);
  v165 = v7;
  v8 = *(v164 + 64);
  __chkstk_darwin(v7);
  v162 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for DispatchQoS();
  v161 = *(v163 - 8);
  v10 = *(v161 + 64);
  __chkstk_darwin(v163);
  v160 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for DispatchTimeInterval();
  v155 = *(v157 - 8);
  v12 = *(v155 + 64);
  __chkstk_darwin(v157);
  v154 = (&v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = type metadata accessor for DispatchTime();
  v159 = *(v166 - 8);
  v14 = *(v159 + 64);
  v15 = __chkstk_darwin(v166);
  v17 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v158 = &v144 - v18;
  v19 = type metadata accessor for UUID();
  v153 = *(v19 - 8);
  v20 = *(v153 + 64);
  __chkstk_darwin(v19);
  v22 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v28 = qword_10051B7F0;
  *v27 = qword_10051B7F0;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v156 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  v29 = *(v4 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (!v29)
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Not running", v34, 2u);
    }

    v167(3, 1);
    return;
  }

  v30 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v30)
    {
      v31 = BYTE6(a2);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v30 != 2)
  {
    v40 = v29;
LABEL_20:
    sub_100069E2C(a1, a2);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136315138;
      v170 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v45 = BidirectionalCollection<>.joined(separator:)();
      v47 = v46;

      v48 = sub_1002FFA0C(v45, v47, aBlock);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "Wrong address %s", v43, 0xCu);
      sub_1000752F4(v44);
    }

    v167(8, 1);
    return;
  }

  v36 = *(a1 + 16);
  v35 = *(a1 + 24);
  v31 = v35 - v36;
  if (__OFSUB__(v35, v36))
  {
    __break(1u);
LABEL_15:
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v31 = HIDWORD(a1) - a1;
      goto LABEL_17;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    v62 = swift_once();
LABEL_35:
    v63 = __chkstk_darwin(v62);
    *(&v144 - 2) = sub_10011F7F0;
    *(&v144 - 1) = v4;
    v65 = *(v64 + 24);
    __chkstk_darwin(v63);
    *(&v144 - 2) = sub_1000B3FF8;
    *(&v144 - 1) = v66;
    os_unfair_lock_lock(v65 + 8);
    v39 = v150;
    sub_1000B3FC0(&v65[4], aBlock);
    os_unfair_lock_unlock(v65 + 8);
    if ((aBlock[0] & 1) == 0)
    {
      v67 = [v151 sharedPairingAgent];
      if (v67)
      {
        v68 = v67;
        v69 = [v67 retrievePairedPeers];
        if (v69)
        {
          v150 = v68;
          v70 = v69;
          v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v72 = sub_1000F1970(v71);

          if (v72)
          {
            aBlock[0] = v149;
            __chkstk_darwin(v73);
            *(&v144 - 2) = aBlock;
            v146 = v74;
            v75 = sub_1002FB068(sub_10011F7B4, (&v144 - 4), v72);

            if (v75)
            {

              v76 = Logger.logObject.getter();
              v77 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v76, v77))
              {
                v78 = swift_slowAlloc();
                *v78 = 0;
                _os_log_impl(&_mh_execute_header, v76, v77, "Trying to unpair since we're paired but the peripheral unpaired from us", v78, 2u);
              }

              if (qword_100501968 == -1)
              {
                goto LABEL_43;
              }

              goto LABEL_68;
            }

            v108 = &v171;
          }

          else
          {
            v108 = &v172;
          }

          v68 = *(v108 - 32);
        }
      }
    }

    v109 = v149;

    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();

    v113 = os_log_type_enabled(v111, v112);
    v150 = v109;
    if (!v113)
    {

      v127 = v152;
      v128 = v109;
      v125 = v147;
      goto LABEL_63;
    }

    LODWORD(v146) = v112;
    v149 = v111;
    v114 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    aBlock[0] = v145;
    *v114 = 136315650;
    v115 = [v109 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v116 = UUID.uuidString.getter();
    v118 = v117;
    (*(v153 + 8))(v22, v19);
    v119 = sub_1002FFA0C(v116, v118, aBlock);

    *(v114 + 4) = v119;
    *(v114 + 12) = 2080;
    v120 = [v109 getTags];

    if (v120)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v121 = Array.description.getter();
      v123 = v122;

      v124 = sub_1002FFA0C(v121, v123, aBlock);

      *(v114 + 14) = v124;
      *(v114 + 22) = 2080;
      v125 = v147;
      *(v114 + 24) = sub_1002FFA0C(v147, v110, aBlock);
      v126 = v149;
      _os_log_impl(&_mh_execute_header, v149, v146, "Deleting existing peripheral %s with tags %s for %s", v114, 0x20u);
      swift_arrayDestroy();

      v127 = v152;
      v128 = v150;
LABEL_63:
      v129 = String._bridgeToObjectiveC()();
      [v128 tag:v129];

      v130 = String._bridgeToObjectiveC()();
      [v128 tag:v130];

      static DispatchTime.now()();
      v131 = v154;
      *v154 = 5;
      v132 = v155;
      v133 = v157;
      (*(v155 + 104))(v131, enum case for DispatchTimeInterval.seconds(_:), v157);
      v134 = v158;
      + infix(_:_:)();
      (*(v132 + 8))(v131, v133);
      v159 = *(v159 + 8);
      (v159)(v17, v166);
      v135 = swift_allocObject();
      v136 = v151;
      v135[2] = v127;
      v135[3] = v136;
      v135[4] = a1;
      v135[5] = a2;
      v135[6] = v125;
      v135[7] = v110;
      v137 = v168;
      v135[8] = v167;
      v135[9] = v137;
      aBlock[4] = sub_10011F708;
      aBlock[5] = v135;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C7570;
      v138 = _Block_copy(aBlock);
      v139 = v136;
      sub_100069E2C(a1, a2);
      v140 = v127;

      v141 = v160;
      static DispatchQoS.unspecified.getter();
      v170 = _swiftEmptyArrayStorage;
      sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
      v142 = v162;
      v143 = v165;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v138);

      (*(v164 + 8))(v142, v143);
      (*(v161 + 8))(v141, v163);
      (v159)(v134, v166);

      return;
    }

    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

LABEL_17:
  v37 = v29;
  if (v31 != 7)
  {
    goto LABEL_20;
  }

  v38 = v37;
  sub_100069E2C(a1, a2);
  v39 = 0;
  if (sub_1000939AC(a1, a2, 0, 0, 0))
  {
    goto LABEL_20;
  }

  if (v30 == 2)
  {
    v51 = *(a1 + 16);
    v50 = *(a1 + 24);
    v49 = v50 - v51;
    if (!__OFSUB__(v50, v51))
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else if (v30 == 1)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_68:
      swift_once();
LABEL_43:
      v79 = v146;
      v80 = [v146 identifier];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = swift_allocObject();
      v82 = v152;
      v81[2] = v152;
      v81[3] = a1;
      v83 = v167;
      v84 = v168;
      v81[4] = a2;
      v81[5] = v83;
      v81[6] = v84;
      v85 = type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
      v86 = *(v85 + 48);
      v87 = *(v85 + 52);
      v88 = swift_allocObject();
      (*(v153 + 32))(v88 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v22, v19);
      v89 = (v88 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
      *v89 = 0;
      v89[1] = 0;
      v90 = (v88 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
      *v90 = sub_10011F7A8;
      v90[1] = v81;
      sub_100069E2C(a1, a2);
      v91 = v82;

      sub_1000E82EC();
      if (v39)
      {
      }

      return;
    }

    v49 = HIDWORD(a1) - a1;
    goto LABEL_32;
  }

  v49 = BYTE6(a2);
LABEL_32:
  v152 = v4;
  if (v49 < 1)
  {
    goto LABEL_70;
  }

  v52 = Data.subdata(in:)();
  v54 = v53;
  v55 = sub_1000E3F84(v52, v53);
  v150 = 0;
  sub_10006A178(v52, v54);
  aBlock[0] = v55;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  v56 = BidirectionalCollection<>.joined(separator:)();
  v58 = v57;

  v59 = String._bridgeToObjectiveC()();
  v60 = [v38 retrievePeripheralWithAddress:v59];

  if (v60)
  {
    v147 = v56;
    v148 = v58;
    v151 = v38;
    v62 = __chkstk_darwin(v61);
    v4 = &v144 - 4;
    v149 = v60;
    *(&v144 - 2) = v60;
    if (qword_100501D78 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_66;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v93 = [v38 createPeripheralWithAddress:isa andIdentifier:0];

  v94 = Logger.logObject.getter();
  if (v93)
  {
    v95 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = v56;
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      aBlock[0] = v98;
      *v97 = 136315138;
      v99 = sub_1002FFA0C(v96, v58, aBlock);

      *(v97 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v94, v95, "Created new peripheral for %s", v97, 0xCu);
      sub_1000752F4(v98);
    }

    else
    {
    }

    v106 = v167;
    v107 = v93;
    v106(v93, 0);
  }

  else
  {
    v100 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v94, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v103 = v56;
      v104 = v102;
      aBlock[0] = v102;
      *v101 = 136315138;
      v105 = sub_1002FFA0C(v103, v58, aBlock);

      *(v101 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v94, v100, "Failed to create peripheral for %s", v101, 0xCu);
      sub_1000752F4(v104);
    }

    else
    {
    }

    v167(2, 1);
  }
}

id sub_1000EC90C()
{
  ObjectType = swift_getObjectType();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_centralState] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests] = &_swiftEmptySetSingleton;
  v2 = &v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPeripheralEventName];
  *v2 = 0xD000000000000014;
  *(v2 + 1) = 0x8000000100463480;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPairedPeripherals] = &_swiftEmptyDictionarySingleton;
  v3 = &v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanEventName];
  strcpy(&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanEventName], "SESScanPresent");
  v3[15] = -18;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanRequests] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryTransactions] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_maxBTScanRules] = 8;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_maxPeripheralErrorRetries] = 3;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_retryDelaySec] = 0x3FC999999999999ALL;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_rssiCloserDeactivated] = 10;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_rssiFurtherDeactivated] = -120;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_scanRequests] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_sendQueueSize] = 10;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v14, "init");
  v5 = qword_100501DA0;
  v6 = v4;
  if (v5 != -1)
  {
    v12 = v6;
    swift_once();
    v6 = v12;
  }

  v7 = qword_10051B808;
  v8 = v6;
  sub_1001111C0(v8, v7);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v13[4] = sub_10011F414;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100193978;
  v13[3] = &unk_1004C7980;
  v10 = _Block_copy(v13);

  os_state_add_handler();
  _Block_release(v10);

  return v8;
}

_DWORD *sub_1000ECC00()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  v31 = &type metadata for Int;
  *&v30 = v1;
  sub_100075D50(&v30, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v29, 0x536C6172746E6563, 0xEC00000065746174, isUniquelyReferenced_nonNull_native);
  v3 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  v4 = *(*(v0 + v3) + 16);
  v31 = &type metadata for Int;
  *&v30 = v4;
  sub_100075D50(&v30, v29);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v29, 0xD000000000000016, 0x8000000100462BD0, v5);
  v6 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v7 = *(v0 + v6);

  v9 = sub_1000E4D68(v8);

  v31 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v30 = v9;
  sub_100075D50(&v30, v29);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v29, 0xD000000000000014, 0x8000000100462BF0, v10);
  v11 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
  swift_beginAccess();
  v12 = *(v0 + v11);

  v14 = sub_1000E527C(v13);

  v31 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *&v30 = v14;
  sub_100075D50(&v30, v29);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v29, 0xD000000000000012, 0x8000000100462C10, v15);
  v16 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryTransactions;
  swift_beginAccess();
  v17 = *(v0 + v16);
  v31 = sub_100068FC4(&qword_100504078, &qword_10040B388);
  *&v30 = v17;
  sub_100075D50(&v30, v29);

  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v29, 0xD000000000000015, 0x8000000100462CB0, v18);
  v19 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager) != 0;
  v31 = &type metadata for Bool;
  LOBYTE(v30) = v19;
  sub_100075D50(&v30, v29);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v29, 0x6E696E6E75527369, 0xE900000000000067, v20);
  v21 = OBJC_IVAR____TtC10seserviced6DSKBLE_scanRequests;
  swift_beginAccess();
  v22 = *(v0 + v21);

  v24 = sub_1000E55E0(v23);

  v31 = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *&v30 = v24;
  sub_100075D50(&v30, v29);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v29, 0x757165526E616373, 0xEC00000073747365, v25);
  sub_1001950D4(&_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = sub_100015DA0("dskble.state", isa);

  return v27;
}

void sub_1000ED05C(unint64_t a1)
{
  if (qword_100501960 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_1000ED0C0(a1);
}

void sub_1000ED0C0(unint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (!*(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
  {
    return;
  }

  v12 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v12)
  {
    __break(1u);
    return;
  }

  *&v52[0] = v12;
  sub_100068FC4(&qword_100503F60, &qword_10040B2D8);
  if (swift_dynamicCast())
  {
    countAndFlagsBits = v50._countAndFlagsBits;
    if (!*(v50._countAndFlagsBits + 16))
    {
      goto LABEL_27;
    }

    v2 = v1;
    v14 = sub_10008C908(0x746E657645435058, 0xEC000000656D614ELL);
    if ((v15 & 1) == 0)
    {
      goto LABEL_27;
    }

    v50._countAndFlagsBits = *(*(countAndFlagsBits + 56) + 8 * v14);
    swift_unknownObjectRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    v8 = *(&v52[0] + 1);
    if (!*(countAndFlagsBits + 16) || (v11 = *&v52[0], v16 = sub_10008C908(0x707954746E657665, 0xE900000000000065), (v17 & 1) == 0) || (v50._countAndFlagsBits = *(*(countAndFlagsBits + 56) + 8 * v16), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
    {

LABEL_27:

      v23 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v23, v29))
      {

        goto LABEL_31;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v52[0] = v31;
      *v30 = 136315138;
      v32 = Dictionary.description.getter();
      v34 = v33;

      v35 = sub_1002FFA0C(v32, v34, v52);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v23, v29, "Failed to retrieve expected keys from XPC object %s", v30, 0xCu);
      sub_1000752F4(v31);

      goto LABEL_29;
    }

    a1 = *(&v52[0] + 1);
    if (!*(countAndFlagsBits + 16) || (v18 = *&v52[0], v19 = sub_10008C908(0x656369766564, 0xE600000000000000), (v20 & 1) == 0))
    {

      v50 = 0;
      *&v51 = 0;
      *(&v51 + 1) = 1;
LABEL_25:
      v26 = &unk_100503FC0;
      v27 = &unk_10040B310;
      v28 = &v50;
LABEL_26:
      sub_100075768(v28, v26, v27);
      goto LABEL_27;
    }

    v21 = *(*(countAndFlagsBits + 56) + 8 * v19);
    if (([v21 respondsToSelector:"__swift_objectForKeyedSubscript:"] & 1) == 0)
    {
      v50 = 0;
      *&v51 = 0;
      *(&v51 + 1) = 1;
LABEL_24:

      goto LABEL_25;
    }

    v47 = v18;
    v48._countAndFlagsBits = 0x4449656369766564;
    v48._object = 0xE800000000000000;
    swift_unknownObjectRetain();
    v22 = [v21 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v22)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v50 = v48;
      v51 = v49;
      if (*(&v49 + 1) != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

LABEL_34:
    v50 = 0;
    v51 = 0u;
LABEL_35:
    v52[0] = v50;
    v52[1] = v51;
    if (*(&v51 + 1))
    {
      if (swift_dynamicCast())
      {

        v36 = v48;

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *&v52[0] = swift_slowAlloc();
          *v39 = 136315650;
          *(v39 + 4) = sub_1002FFA0C(v11, v8, v52);
          *(v39 + 12) = 2080;
          *(v39 + 14) = sub_1002FFA0C(v47, a1, v52);
          *(v39 + 22) = 2080;
          *(v39 + 24) = sub_1002FFA0C(v36._countAndFlagsBits, v36._object, v52);
          _os_log_impl(&_mh_execute_header, v37, v38, "XPC event from com.apple.bluetooth.discovery %s %s %s", v39, 0x20u);
          swift_arrayDestroy();
        }

        if (v11 == *(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPeripheralEventName) && v8 == *(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPeripheralEventName + 8))
        {

          v40 = v47;
        }

        else
        {
          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v40 = v47;
          if ((v41 & 1) == 0)
          {

LABEL_51:

            return;
          }
        }

        if (v40 == 0x6F46656369766564 && a1 == 0xEB00000000646E75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          *&v52[0] = 0;
          *(&v52[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(52);
          v42._object = 0x8000000100463330;
          v42._countAndFlagsBits = 0xD000000000000032;
          String.append(_:)(v42);
          String.append(_:)(v36);
          String.utf8CString.getter();

          v43 = os_transaction_create();

          swift_beginAccess();
          v44 = v43;
LABEL_49:
          sub_1000C5A0C(v44, v36._countAndFlagsBits, v36._object);
          swift_endAccess();
          return;
        }

        if (v40 == 0x6F4C656369766564 && a1 == 0xEA00000000007473)
        {

LABEL_56:
          swift_beginAccess();
          v44 = 0;
          goto LABEL_49;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v45)
        {
          goto LABEL_56;
        }

        goto LABEL_51;
      }

      goto LABEL_27;
    }

    v26 = &qword_100502420;
    v27 = &qword_10040F310;
    v28 = v52;
    goto LABEL_26;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to convert XPC object to Dictionary", v25, 2u);
LABEL_29:
  }

LABEL_31:
}

void sub_1000ED9C0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
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
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager;
  v11 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  v12 = Logger.logObject.getter();
  if (!v11)
  {
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v12, v15, "Starting DSKBLE", v16, 2u);
    }

    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v18;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v19;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    v20 = v8;
    sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    v21 = objc_allocWithZone(CBCentralManager);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v23 = [v21 initWithDelegate:0 queue:v20 options:isa];

    v24 = *(v1 + v10);
    *(v1 + v10) = v23;
    v25 = v23;

    if (v25)
    {
      [v25 setDelegate:v1];

      v26 = *(v1 + v10);
      if (v26)
      {
        v27 = [v26 state];
        *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState) = v27;
        return;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "DSKBLE is already running", v14, 2u);
  }
}

void sub_1000EDD78()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  i = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *i = qword_10051B7F0;
    (*(v3 + 104))(i, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(i, v2);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v9 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v9)
    {
      break;
    }

    v46 = OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager;
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Stopping DSKBLE", v13, 2u);
    }

    v45 = v10;
    [v10 setDelegate:0];
    v14 = OBJC_IVAR____TtC10seserviced6DSKBLE_scanRequests;
    swift_beginAccess();
    v15 = *(v1 + v14);
    *(v1 + v14) = &_swiftEmptySetSingleton;

    sub_1000EE338();
    v16 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    swift_beginAccess();
    v17 = *(v1 + v16);
    *(v1 + v16) = &_swiftEmptySetSingleton;

    v2 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v44 = *(v1 + v2);
    if ((v44 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v2 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v18 = v49;
      v3 = v50;
      v19 = v51;
      v20 = v52;
      v21 = v53;
    }

    else
    {
      v25 = -1 << *(v44 + 32);
      v3 = v44 + 56;
      v19 = ~v25;
      v26 = -v25;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v21 = v27 & *(v44 + 56);
      v18 = v44;
      swift_bridgeObjectRetain_n();
      v20 = 0;
    }

    v43 = v19;
    for (i = ((v19 + 64) >> 6); v18 < 0; v21 = v31)
    {
      v33 = __CocoaSet.Iterator.next()();
      if (!v33)
      {
        goto LABEL_26;
      }

      v47 = v33;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v32 = v48;
      v30 = v20;
      v31 = v21;
      if (!v48)
      {
        goto LABEL_26;
      }

LABEL_24:
      v34 = *(v32 + 24);
      v2 = v1;
      sub_1000EF154(v34);

      v35 = *(v32 + 24);
      sub_1000EF594(v35, 0);

      v20 = v30;
    }

    v28 = v20;
    v29 = v21;
    v30 = v20;
    if (v21)
    {
LABEL_20:
      v31 = (v29 - 1) & v29;
      v32 = *(*(v18 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));

      if (v32)
      {
        goto LABEL_24;
      }

LABEL_26:

      sub_100093854();

      v36 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
      swift_beginAccess();
      v37 = *(v1 + v36);
      *(v1 + v36) = _swiftEmptyArrayStorage;

      v38 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPairedPeripherals;
      swift_beginAccess();
      v39 = *(v1 + v38);
      *(v1 + v38) = _swiftEmptyDictionarySingleton;

      v40 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryTransactions;
      swift_beginAccess();
      v41 = *(v1 + v40);
      *(v1 + v40) = _swiftEmptyDictionarySingleton;

      v42 = *(v1 + v46);
      *(v1 + v46) = 0;

      *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState) = 4;
      return;
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= i)
      {
        goto LABEL_26;
      }

      v29 = *(v3 + 8 * v30);
      ++v28;
      if (v29)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "DSKBLE is not running", v24, 2u);
  }
}

void sub_1000EE338()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v8 = qword_10051B7F0;
    *v7 = qword_10051B7F0;
    (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
    v9 = v8;
    v10 = _dispatchPreconditionTest(_:)();
    v11 = *(v4 + 8);
    v4 += 8;
    v11(v7, v3);
    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_62:

      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_42;
      }

      v61 = swift_slowAlloc();
      v20 = sub_1001104E4(v61, v10, v3, sub_1000F0748, 0);

      if ((v20 & 0xC000000000000001) == 0)
      {
        goto LABEL_65;
      }

LABEL_57:
      v57 = &unk_100503000;
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_66;
      }

LABEL_58:
      sub_1000E42E0(v20);

      sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100409900;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v59;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v60;
      *(inited + 120) = &type metadata for UInt32;
      *(inited + 96) = 21;

      sub_10008FFDC(inited);
      swift_setDeallocating();
      sub_100068FC4(&qword_100507D30, &unk_100409C90);
      swift_arrayDestroy();
      goto LABEL_102;
    }

    v12 = *(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v12)
    {
      v13 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v13, v38, "Not running", v39, 2u);
      }

      goto LABEL_106;
    }

    v13 = v12;
    v14 = [v13 state];
    if (v14 != 10 && v14 != 5)
    {
      goto LABEL_106;
    }

    v4 = OBJC_IVAR____TtC10seserviced6DSKBLE_scanRequests;
    swift_beginAccess();
    v16 = *(v2 + v4);
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (v16 < 0)
      {
        v17 = *(v2 + v4);
      }

      v18 = *(v2 + v4);

      v19 = __CocoaSet.count.getter();

      if (!v19)
      {
LABEL_37:
        if ([v13 isScanning])
        {
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&_mh_execute_header, v40, v41, "Stopping scan", v42, 2u);
          }

          [v13 stopScan];
        }

        goto LABEL_106;
      }
    }

    else if (!*(v16 + 16))
    {
      goto LABEL_37;
    }

    v3 = *(v2 + v4);
    v121 = v13;
    v122 = v2;
    v120 = v4;
    if ((v3 & 0xC000000000000001) == 0)
    {
      break;
    }

    v20 = &_swiftEmptySetSingleton;
    v125 = &_swiftEmptySetSingleton;

    __CocoaSet.makeIterator()();
    v21 = __CocoaSet.Iterator.next()();
    if (!v21)
    {
LABEL_34:

      v2 = v122;
      v4 = v120;
      if ((v20 & 0xC000000000000001) != 0)
      {
        goto LABEL_57;
      }

      goto LABEL_65;
    }

    v22 = v21;
    v1 = type metadata accessor for DSKBLE.BLEScanRequest();
    v23 = v22;
    v7 = -1;
    v4 = 1;
LABEL_18:
    v124[0] = v23;
    swift_dynamicCast();
    v2 = v123;
    if (v123[7])
    {

      goto LABEL_17;
    }

    v24 = *(v20 + 16);
    if (*(v20 + 24) <= v24)
    {
      sub_10010A5C0(v24 + 1, &unk_100507CF0, &qword_10040B270, &String.hash(into:));
    }

    v20 = v125;
    v25 = v125[5];
    Hasher.init(_seed:)();
    v26 = v2[2];
    v27 = v2[3];
    String.hash(into:)();
    v3 = v124;
    v28 = Hasher._finalize()();
    v29 = v20 + 56;
    v30 = -1 << *(v20 + 32);
    v31 = v28 & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v20 + 56 + 8 * (v31 >> 6))) != 0)
    {
      v33 = __clz(__rbit64((-1 << v31) & ~*(v20 + 56 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_31;
    }

    v34 = 0;
    v35 = (63 - v30) >> 6;
    while (++v32 != v35 || (v34 & 1) == 0)
    {
      v36 = v32 == v35;
      if (v32 == v35)
      {
        v32 = 0;
      }

      v34 |= v36;
      v37 = *(v29 + 8 * v32);
      if (v37 != -1)
      {
        v33 = __clz(__rbit64(~v37)) + (v32 << 6);
LABEL_31:
        *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        *(*(v20 + 48) + 8 * v33) = v2;
        ++*(v20 + 16);
LABEL_17:
        v23 = __CocoaSet.Iterator.next()();
        if (!v23)
        {
          goto LABEL_34;
        }

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
  }

  v43 = *(v3 + 32);
  v44 = v43 & 0x3F;
  v10 = ((1 << v43) + 63) >> 6;
  v1 = 8 * v10;

  if (v44 > 0xD)
  {
    goto LABEL_62;
  }

LABEL_42:
  v7 = v119;
  __chkstk_darwin(v45);
  bzero(v119 - ((v1 + 15) & 0x3FFFFFFFFFFFFFF0), v1);
  v46 = 0;
  v47 = 0;
  v48 = 1 << *(v3 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v3 + 56);
  v51 = (v48 + 63) >> 6;
  while (1)
  {
    if (v50)
    {
      v52 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v53 = v52 | (v47 << 6);
    }

    else
    {
      v54 = v47;
      do
      {
        v47 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_59;
        }

        if (v47 >= v51)
        {
          goto LABEL_56;
        }

        v55 = *(v3 + 56 + 8 * v47);
        ++v54;
      }

      while (!v55);
      v50 = (v55 - 1) & v55;
      v53 = __clz(__rbit64(v55)) | (v47 << 6);
    }

    if (!*(*(*(v3 + 48) + 8 * v53) + 56))
    {
      *(v119 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v1 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v53;
      v56 = __OFADD__(v46++, 1);
      if (v56)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_56:
  v20 = sub_10024A434((v119 - ((v1 + 15) & 0x3FFFFFFFFFFFFFF0)), v10, v46, v3);
  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_57;
  }

LABEL_65:
  v57 = &unk_100503000;
  if (*(v20 + 16))
  {
    goto LABEL_58;
  }

LABEL_66:

  v62 = *(v2 + v4);

  v64 = sub_1000E42E0(v63);
  v119[1] = 0;
  v119[2] = v64;

  v65 = *(v2 + v4);
  if ((v65 & 0xC000000000000001) != 0)
  {
    if (v65 < 0)
    {
      v66 = *(v2 + v4);
    }

    v67 = *(v2 + v4);

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEScanRequest();
    sub_1001081DC(&qword_100503EB8, v68, type metadata accessor for DSKBLE.BLEScanRequest);
    Set.Iterator.init(_cocoa:)();
    v70 = v124[0];
    v69 = v124[1];
    v71 = v124[2];
    v72 = v124[3];
    v73 = v124[4];
  }

  else
  {
    v74 = -1 << *(v65 + 32);
    v69 = v65 + 56;
    v71 = ~v74;
    v75 = -v74;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    else
    {
      v76 = -1;
    }

    v73 = v76 & *(v65 + 56);
    swift_bridgeObjectRetain_n();
    v72 = 0;
    v70 = v65;
  }

  v77 = 0;
  v119[3] = v71;
  v78 = (v71 + 64) >> 6;
  do
  {
    if (v70 < 0)
    {
      v85 = __CocoaSet.Iterator.next()();
      if (!v85)
      {
        goto LABEL_90;
      }

      v123 = v85;
      type metadata accessor for DSKBLE.BLEScanRequest();
      swift_dynamicCast();
      v84 = v125;
      v81 = v72;
      v82 = v73;
      if (!v125)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v79 = v72;
      v80 = v73;
      v81 = v72;
      if (!v73)
      {
        while (1)
        {
          v81 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            break;
          }

          if (v81 >= v78)
          {
            goto LABEL_90;
          }

          v80 = *(v69 + 8 * v81);
          ++v79;
          if (v80)
          {
            goto LABEL_80;
          }
        }

        __break(1u);
        goto LABEL_108;
      }

LABEL_80:
      v82 = (v80 - 1) & v80;
      v83 = *(*(v70 + 48) + ((v81 << 9) | (8 * __clz(__rbit64(v80)))));

      if (!v84)
      {
        goto LABEL_90;
      }
    }

    v86 = v84[7];
    if (!v86)
    {
      __break(1u);
      return;
    }

    v87 = *(v86 + 16);

    v88 = 2;
    if (v87)
    {
      v88 = v87;
    }

    v72 = v81;
    v73 = v82;
    v56 = __OFADD__(v77, v88);
    v77 += v88;
  }

  while (!v56);
  __break(1u);
LABEL_90:
  sub_100093854();

  v57 = &unk_100503000;
  v89 = v122;
  v90 = v122;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v91, v92))
  {

    v91 = v90;
    v95 = v120;
    goto LABEL_101;
  }

  v93 = swift_slowAlloc();
  *v93 = 134217984;
  v94 = v77;
  v95 = v120;
  if (v77 < 9)
  {
    goto LABEL_100;
  }

  v96 = *&v89[v120];
  if ((v96 & 0xC000000000000001) != 0)
  {
    if (v96 < 0)
    {
      v97 = *&v89[v120];
    }

    v98 = __CocoaSet.count.getter();
  }

  else
  {
    v98 = *(v96 + 16);
  }

  v57 = &unk_100503000;
  if (v98 + 0x4000000000000000 < 0)
  {
LABEL_108:
    __break(1u);
  }

  v94 = 2 * v98;
  v89 = v122;
LABEL_100:
  *(v93 + 4) = v94;

  _os_log_impl(&_mh_execute_header, v91, v92, "Computing %ld scan rules", v93, 0xCu);

LABEL_101:

  v125 = &_swiftEmptyArrayStorage;
  v99 = *&v89[v95];

  sub_1000E6F84(v100, v77 < 9, &v125);

  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  v101 = swift_initStackObject();
  *(v101 + 16) = xmmword_100409900;
  *(v101 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v101 + 40) = v102;
  v103 = v125;
  *(v101 + 72) = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *(v101 + 48) = v103;
  *(v101 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v101 + 88) = v104;
  *(v101 + 120) = &type metadata for UInt32;
  *(v101 + 96) = 655360;

  sub_10008FFDC(v101);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();

LABEL_102:

  v105 = v57[208];

  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *v108 = 136315394;
    sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
    v109 = Array.description.getter();
    v111 = v110;

    v112 = sub_1002FFA0C(v109, v111, &v125);

    *(v108 + 4) = v112;
    *(v108 + 12) = 2080;
    v113 = Dictionary.description.getter();
    v115 = v114;

    v116 = sub_1002FFA0C(v113, v115, &v125);

    *(v108 + 14) = v116;
    _os_log_impl(&_mh_execute_header, v106, v107, "Now scanning for services %s with options %s", v108, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v118 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = v121;
  [v121 scanForPeripheralsWithServices:isa options:v118];

LABEL_106:
}

void sub_1000EF154(uint64_t a1)
{
  v27 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (v3[13])(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (v3[1])(v6, v2);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v2)
    {
      break;
    }

    v3 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v25 = *(v3 + v1);
    v26 = v2;
    if ((v25 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      v9 = v2;
      __CocoaSet.makeIterator()();
      v2 = type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v11 = v30;
      v10 = v31;
      v1 = v32;
      v12 = v33;
      v6 = v34;
    }

    else
    {
      v16 = -1 << *(v25 + 32);
      v10 = v25 + 56;
      v1 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v6 = (v18 & *(v25 + 56));
      v11 = v25;
      swift_bridgeObjectRetain_n();
      v19 = v2;
      v12 = 0;
    }

    v24 = v1;
    v20 = (v1 + 64) >> 6;
    while (v11 < 0)
    {
      v23 = __CocoaSet.Iterator.next()();
      if (!v23 || (v28 = v23, type metadata accessor for DSKBLE.BLEPeripheral(), swift_dynamicCast(), (v2 = v29) == 0))
      {
LABEL_25:
        sub_100093854();

        return;
      }

LABEL_22:
      sub_10009393C(0, &qword_100502D20, NSObject_ptr);
      v3 = v2[3];
      v1 = static NSObject.== infix(_:_:)();

      if (v1)
      {
        sub_100093854();

        v13 = v26;
        [v26 cancelPeripheralConnection:v27, v24, v25];
        goto LABEL_24;
      }
    }

    v21 = v12;
    v22 = v6;
    if (v6)
    {
LABEL_18:
      v6 = ((v22 - 1) & v22);
      v2 = *(*(v11 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v22)))));

      if (!v2)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v20)
      {
        goto LABEL_25;
      }

      v22 = *(v10 + 8 * v12);
      ++v21;
      if (v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Not running", v15, 2u);
  }

LABEL_24:
}

void sub_1000EF594(void *a1, uint64_t a2)
{
  v106 = a2;
  v115 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 1);
  v5 = *(v4 + 8);
  __chkstk_darwin(v3);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v108 = *(v8 - 8);
  v9 = *(v108 + 8);
  __chkstk_darwin(v8);
  v107 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for UUID();
  v11 = *(v113 - 8);
  v12 = *(v11 + 8);
  v13 = __chkstk_darwin(v113);
  v111 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v112 = &v98 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  i = *(v16 - 8);
  v18 = *(i + 8);
  __chkstk_darwin(v16);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v21 = qword_10051B7F0;
    *v20 = qword_10051B7F0;
    (*(i + 13))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
    v104 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    v22 = *(i + 1);
    i += 8;
    v22(v20, v16);
    if ((v21 & 1) == 0)
    {
      break;
    }

    if (!*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Not running", v26, 2u);
      }

      return;
    }

    v103 = v7;
    v99 = v8;
    v100 = v4;
    v101 = v3;
    v114 = v11;
    v16 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v105 = v2;
    v102 = v16;
    v110 = *(v2 + v16);
    if ((v110 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v16 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v23 = v125;
      v4 = v126;
      v2 = v127;
      v11 = v128;
      v7 = v129;
    }

    else
    {
      v27 = -1 << *(v110 + 32);
      v4 = (v110 + 56);
      v2 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v7 = (v29 & *(v110 + 56));
      v23 = v110;
      swift_bridgeObjectRetain_n();
      v11 = 0;
    }

    v109 = v2;
    for (i = ((v2 + 64) >> 6); (v23 & 0x8000000000000000) != 0; v7 = v16)
    {
      v32 = __CocoaSet.Iterator.next()();
      if (!v32)
      {
        goto LABEL_26;
      }

      v124 = v32;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v8 = aBlock;
      v20 = v11;
      v16 = v7;
      if (!aBlock)
      {
        goto LABEL_26;
      }

LABEL_22:
      sub_10009393C(0, &qword_100502D20, NSObject_ptr);
      v3 = *(v8 + 24);
      v2 = static NSObject.== infix(_:_:)();

      if (v2)
      {
        sub_100093854();

        v51 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
        v52 = v115;
        v4 = v105;
        v109 = v51;
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();

        v55 = os_log_type_enabled(v53, v54);
        v98 = v52;
        if (v55)
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          aBlock = v57;
          *v56 = 136315138;
          v58 = [v52 identifier];
          v59 = v112;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
          v60 = v113;
          v61 = dispatch thunk of CustomStringConvertible.description.getter();
          v63 = v62;
          v114[1](v59, v60);
          v64 = sub_1002FFA0C(v61, v63, &aBlock);

          *(v56 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v53, v54, "Disconnected %s", v56, 0xCu);
          sub_1000752F4(v57);
        }

        v65 = v103;
        v66 = *(v8 + 128);
        v11 = v114;
        if (v66)
        {
          v67 = v66;
          v68 = [v67 inputStream];
          if (!v68)
          {
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            return;
          }

          v69 = v68;
          [v68 close];

          v70 = [v67 outputStream];
          if (!v70)
          {
            goto LABEL_75;
          }

          v71 = v70;
          [v70 close];

          v72 = [v67 inputStream];
          CFReadStreamSetDispatchQueue(v72, 0);

          v73 = [v67 outputStream];
          CFWriteStreamSetDispatchQueue(v73, 0);

          v74 = [v67 inputStream];
          if (!v74)
          {
            goto LABEL_76;
          }

          v75 = v74;
          [v74 setDelegate:0];

          v76 = [v67 outputStream];
          if (!v76)
          {
            goto LABEL_77;
          }

          v77 = v76;
          [v76 setDelegate:0];
        }

        v78 = *(v8 + 16);

        v79 = v112;
        UUID.init()();
        v80 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        swift_beginAccess();
        (*(v11 + 5))(&v78[v80], v79, v113);
        swift_endAccess();
        v78[OBJC_IVAR____TtC10seserviced4Peer_isConnected] = 0;
        v81 = swift_allocObject();
        v81[2] = v8;
        v81[3] = v78;
        v81[4] = v106;
        v120 = sub_100114174;
        v121 = v81;
        aBlock = _NSConcreteStackBlock;
        v117 = 1107296256;
        v118 = sub_100080830;
        v119 = &unk_1004C73E0;
        v82 = _Block_copy(&aBlock);
        v110 = v78;

        swift_errorRetain();
        v83 = v107;
        static DispatchQoS.unspecified.getter();
        v124 = _swiftEmptyArrayStorage;
        sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
        i = v101;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v82);
        v100[1](v65, i);
        (*(v108 + 1))(v83, v99);

        v7 = *(v8 + 144);
        if (v7)
        {
          v84 = v7;
          v85 = v98;
          i = v84;
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            aBlock = v90;
            *v88 = 138412546;
            *(v88 + 4) = i;
            *v89 = v7;
            *(v88 + 12) = 2080;
            v109 = i;
            v91 = [v85 identifier];
            i = v112;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID);
            v7 = v113;
            v92 = dispatch thunk of CustomStringConvertible.description.getter();
            v94 = v93;
            v114[1](i, v7);
            v95 = sub_1002FFA0C(v92, v94, &aBlock);

            *(v88 + 14) = v95;
            _os_log_impl(&_mh_execute_header, v86, v87, "Releasing voucher (BT) %@ for %s", v88, 0x16u);
            sub_100075768(v89, &unk_100503F70, &unk_10040B2E0);

            sub_1000752F4(v90);
            v11 = v114;
          }

          else
          {
          }

          v4 = v105;
        }

        if (!*(v8 + 32))
        {
          goto LABEL_68;
        }

        if (qword_100501DA0 != -1)
        {
          goto LABEL_73;
        }

        goto LABEL_67;
      }

      v11 = v20;
    }

    v30 = v11;
    v31 = v7;
    v20 = v11;
    if (v7)
    {
LABEL_18:
      v16 = (v31 - 1) & v31;
      v8 = *(*(v23 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v31)))));

      if (v8)
      {
        goto LABEL_22;
      }

LABEL_26:
      sub_100093854();

      v4 = v105;
      v11 = v114;
      goto LABEL_27;
    }

    while (1)
    {
      v20 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v20 >= i)
      {
        v7 = 0;
        goto LABEL_26;
      }

      v31 = *&v4[8 * v20];
      ++v30;
      if (v31)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  __break(1u);
LABEL_73:
  swift_once();
LABEL_67:
  v96 = v112;
  v97 = v113;
  (*(v11 + 2))(v112, *(v8 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v113);
  sub_100337DAC(v96);
  (*(v11 + 1))(v96, v97);
LABEL_68:
  swift_beginAccess();
  sub_10010E308(v8);
  swift_endAccess();

LABEL_27:
  v33 = *&v4[OBJC_IVAR____TtC10seserviced6DSKBLE_centralState];
  if (v33 != 10 && v33 != 5)
  {
    return;
  }

  v35 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
  swift_beginAccess();
  v104 = *&v4[v35];
  if ((v104 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    sub_1001081DC(&unk_100503E70, v36, type metadata accessor for DSKBLE.BLEConnectionRequest);
    Set.Iterator.init(_cocoa:)();
    v16 = aBlock;
    v4 = v117;
    v2 = v118;
    v8 = v119;
    v3 = v120;
  }

  else
  {
    v37 = -1 << *(v104 + 32);
    v4 = (v104 + 56);
    v2 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v3 = (v39 & *(v104 + 56));
    v16 = v104;
    swift_bridgeObjectRetain_n();
    v8 = 0;
  }

  v103 = v2;
  v20 = (v2 + 64) >> 6;
  v110 = (v11 + 16);
  v109 = v11 + 8;
  v108 = v4;
  if ((v16 & 0x8000000000000000) == 0)
  {
LABEL_39:
    v40 = v8;
    v41 = v3;
    v42 = v8;
    if (v3)
    {
LABEL_43:
      v7 = ((v41 - 1) & v41);
      v43 = *(*(v16 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));

      if (v44)
      {
        goto LABEL_47;
      }

      goto LABEL_50;
    }

    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_70;
      }

      if (v42 >= v20)
      {
        goto LABEL_50;
      }

      v41 = *&v4[8 * v42];
      ++v40;
      if (v41)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v45 = __CocoaSet.Iterator.next()();
    if (!v45)
    {
      break;
    }

    v122 = v45;
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    swift_dynamicCast();
    v44 = v123;
    v42 = v8;
    v7 = v3;
    if (!v123)
    {
      break;
    }

LABEL_47:
    v106 = v8;
    v46 = v16;
    v107 = v3;
    v114 = v44;
    v47 = v112;
    v48 = v113;
    (*v110)(v112, *(v44 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v113);
    v49 = [v115 identifier];
    v50 = v111;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = static UUID.== infix(_:_:)();
    i = v109;
    v11 = *v109;
    (*v109)(v50, v48);
    (v11)(v47, v48);
    if (v2)
    {
      sub_100093854();

      sub_1000EA4CC(v114, 0);

      return;
    }

    v8 = v42;
    v3 = v7;
    v16 = v46;
    v4 = v108;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_50:
  sub_100093854();
}

uint64_t sub_1000F075C(uint64_t *a1, char a2, uint64_t *a3)
{
  v3 = *a1;
  if (a2)
  {
    v4 = *(v3 + 56);
    if (v4)
    {
      if (*(v4 + 16))
      {
        v5 = *a1;

        sub_100111CE0(v6, a3, v3);
      }
    }
  }

  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040AA50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  v47 = *(v3 + 16);
  v49 = *(v3 + 24);

  v10._countAndFlagsBits = 12336;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v47;
  *(inited + 56) = v49;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v11;
  result = sub_10013044C(12592, 0xE200000000000000);
  if (v12 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 120) = &type metadata for Data;
  *(inited + 96) = result;
  *(inited + 104) = v12;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v13;
  result = sub_10013044C(12336, 0xE200000000000000);
  if (v14 >> 60 == 15)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 168) = &type metadata for Data;
  *(inited + 144) = result;
  *(inited + 152) = v14;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v15;
  v16 = *(v3 + 32);
  *(inited + 216) = &type metadata for Int8;
  v46 = v16;
  *(inited + 192) = v16;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v17;
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  v20 = String._bridgeToObjectiveC()();
  v21 = objc_opt_self();
  v22 = [v21 UUIDWithString:v20];

  v23 = sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
  *(inited + 264) = v23;
  *(inited + 240) = v22;
  v24 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  v25 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_10012EF08(0, v25[2] + 1, 1, v25);
    *a3 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_10012EF08((v27 > 1), v28 + 1, 1, v25);
    *a3 = v25;
  }

  v25[2] = v28 + 1;
  v25[v28 + 4] = v24;
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10040AA50;
  *(v29 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 40) = v30;
  v48 = *(v3 + 16);
  v50 = *(v3 + 24);

  v31._countAndFlagsBits = 12592;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  *(v29 + 72) = &type metadata for String;
  *(v29 + 48) = v48;
  *(v29 + 56) = v50;
  *(v29 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 88) = v32;
  result = sub_10013044C(12592, 0xE200000000000000);
  if (v33 >> 60 == 15)
  {
    goto LABEL_20;
  }

  *(v29 + 120) = &type metadata for Data;
  *(v29 + 96) = result;
  *(v29 + 104) = v33;
  *(v29 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 136) = v34;
  result = sub_10013044C(12592, 0xE200000000000000);
  if (v35 >> 60 == 15)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  *(v29 + 168) = &type metadata for Data;
  *(v29 + 144) = result;
  *(v29 + 152) = v35;
  *(v29 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 184) = v36;
  *(v29 + 216) = &type metadata for Int8;
  *(v29 + 192) = v46;
  *(v29 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 232) = v37;
  v38 = *(v3 + 16);
  v39 = *(v3 + 24);
  v40 = String._bridgeToObjectiveC()();
  v41 = [v21 UUIDWithString:v40];

  *(v29 + 264) = v23;
  *(v29 + 240) = v41;
  v42 = sub_10008FFDC(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  v43 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v43;
  if ((result & 1) == 0)
  {
    result = sub_10012EF08(0, v43[2] + 1, 1, v43);
    v43 = result;
    *a3 = result;
  }

  v45 = v43[2];
  v44 = v43[3];
  if (v45 >= v44 >> 1)
  {
    result = sub_10012EF08((v44 > 1), v45 + 1, 1, v43);
    v43 = result;
    *a3 = result;
  }

  v43[2] = v45 + 1;
  v43[v45 + 4] = v42;
  return result;
}

uint64_t sub_1000F0C4C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v28 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v29 = v6;
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040AA50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  sub_100069E2C(v4, v5);
  sub_100288788(v6, v7);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v11;
  *(inited + 56) = v10;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v16;
  *(inited + 120) = &type metadata for Data;
  *(inited + 96) = v28;
  *(inited + 104) = v5;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v17;
  *(inited + 168) = &type metadata for Data;
  *(inited + 144) = v29;
  *(inited + 152) = v7;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v18;
  v19 = *(a3 + 32);
  *(inited + 216) = &type metadata for Int8;
  *(inited + 192) = v19;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v20;
  sub_100069E2C(v29, v7);
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() UUIDWithString:v21];

  *(inited + 264) = sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
  *(inited + 240) = v22;
  v23 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  v24 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v24;
  if ((result & 1) == 0)
  {
    result = sub_10012EF08(0, v24[2] + 1, 1, v24);
    v24 = result;
    *a2 = result;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    result = sub_10012EF08((v26 > 1), v27 + 1, 1, v24);
    v24 = result;
    *a2 = result;
  }

  v24[2] = v27 + 1;
  v24[v27 + 4] = v23;
  return result;
}

void sub_1000F0F70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v14 = qword_10051B7F0;
    *v13 = qword_10051B7F0;
    (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
    v15 = v14;
    v16 = _dispatchPreconditionTest(_:)();
    (*(v10 + 8))(v13, v9);
    if ((v16 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v17 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;

    v56 = v17;
    v9 = v2 + v17;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    v20 = os_log_type_enabled(v18, v19);
    v60 = a1;
    v54 = v5;
    v55 = v4;
    v53 = v8;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v63[0] = v22;
      *v21 = 136315138;
      v23 = UUID.uuidString.getter();
      v9 = v24;
      v8 = sub_1002FFA0C(v23, v24, v63);

      *(v21 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v18, v19, "Replacing connected peer %s", v21, 0xCu);
      sub_1000752F4(v22);
    }

    v25 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v57 = v2;
    v59 = *(v2 + v25);
    if ((v59 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v9 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
      Set.Iterator.init(_cocoa:)();
      v2 = v63[0];
      v4 = v63[1];
      v26 = v63[2];
      v10 = v63[3];
      v27 = v63[4];
    }

    else
    {
      v28 = -1 << *(v59 + 32);
      v4 = v59 + 56;
      v26 = ~v28;
      v29 = -v28;
      v30 = v29 < 64 ? ~(-1 << v29) : -1;
      v27 = v30 & *(v59 + 56);
      v2 = v59;
      swift_bridgeObjectRetain_n();
      v10 = 0;
    }

    v58 = v26;
    v5 = (v26 + 64) >> 6;
    if (v2 < 0)
    {
      break;
    }

LABEL_12:
    v31 = v10;
    v32 = v27;
    v13 = v10;
    if (v27)
    {
LABEL_16:
      v8 = ((v32 - 1) & v32);
      v9 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v32)))));

      if (v9)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v13 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v13 >= v5)
      {
        goto LABEL_23;
      }

      v32 = *(v4 + 8 * v13);
      ++v31;
      if (v32)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  while (1)
  {
    v33 = __CocoaSet.Iterator.next()();
    if (!v33)
    {
      break;
    }

    v61 = v33;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v9 = v62;
    v13 = v10;
    v8 = v27;
    if (!v62)
    {
      break;
    }

LABEL_20:
    v34 = *(v9 + 16);

    a1 = static UUID.== infix(_:_:)();

    if (a1)
    {
      sub_100093854();

      v38 = *(v9 + 16);
      v39 = v60;
      *(v60 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) = *(v38 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
      v40 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
      swift_beginAccess();
      v42 = v54;
      v41 = v55;
      v43 = v53;
      (*(v54 + 16))(v53, v38 + v40, v55);
      v44 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
      swift_beginAccess();
      v45 = *(v42 + 40);

      v45(v39 + v44, v43, v41);
      swift_endAccess();
      *(v39 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) = *(v38 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber);
      v46 = *(v38 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
      v47 = *(v38 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
      sub_10006A2BC(v46, v47);

      v48 = (v39 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
      v49 = *(v39 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
      v50 = *(v39 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
      *v48 = v46;
      v48[1] = v47;
      sub_10006A2D0(v49, v50);
      v51 = *(v9 + 16);
      *(v9 + 16) = v39;

      return;
    }

    v10 = v13;
    v27 = v8;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  sub_100093854();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Peer is not connected", v37, 2u);
  }
}

uint64_t sub_1000F1614(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v8) = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

void *sub_1000F1724(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10019F4C4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v9 = *i;

      sub_100068FC4(&unk_100503FB0, &unk_10040B300);
      sub_100068FC4(&qword_100505FD0, &qword_10040B550);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_10019F4C4((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      _swiftEmptyArrayStorage[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1000F1864(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_10019F524(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1000754F0(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10019F524((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1000F1970(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1000754F0(i, v6);
    sub_10009393C(0, &qword_100503F98, CBPeer_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = v7[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void *sub_1000F1A7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v7 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

void sub_1000F1BE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    sub_1000EB524(a3, a4, a5, a6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000F1D5C(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(id, uint64_t), uint64_t a8)
{
  v40 = a7;
  v39 = type metadata accessor for DispatchPredicate();
  v15 = *(v39 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v39);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a1;
  v37 = a5;
  v38 = a8;
  v19[6] = a5;
  v19[7] = a6;
  v19[8] = v40;
  v19[9] = a8;

  v20 = a1;
  sub_100069E2C(a3, a4);
  v21 = qword_100501D90;
  v22 = a2;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_10051B7F0;
  *v18 = qword_10051B7F0;
  v24 = v39;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v39);
  v25 = v23;
  v26 = _dispatchPreconditionTest(_:)();
  v28 = *(v15 + 8);
  v27 = v15 + 8;
  v28(v18, v24);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    v20 = sub_10012E6B0(0, v20[2] + 1, 1, v20);
    *&v22[v26] = v20;
    goto LABEL_8;
  }

  v29 = v22;
  v22 = v20;
  v30 = *(v20 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (v30 == 10 || v30 == 5)
  {
    sub_1000F2064(v29, a3, a4, v20, v37, a6, v40);
  }

  v27 = swift_allocObject();
  *(v27 + 16) = sub_100114D88;
  *(v27 + 24) = v19;
  v26 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  v20 = *(v20 + v26);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22[v26] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v33 = v20[2];
  v32 = v20[3];
  if (v33 >= v32 >> 1)
  {
    v20 = sub_10012E6B0((v32 > 1), v33 + 1, 1, v20);
  }

  v20[2] = v33 + 1;
  v34 = &v20[3 * v33];
  *(v34 + 32) = 1;
  v34[5] = sub_1000B3FF0;
  v34[6] = v27;
  *&v22[v26] = v20;
  swift_endAccess();
}

void sub_1000F2064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(id, uint64_t))
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = [a1 createPeripheralWithAddress:isa andIdentifier:0];

  v13 = Logger.logObject.getter();
  if (v12)
  {
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1002FFA0C(a5, a6, &v21);
      _os_log_impl(&_mh_execute_header, v13, v14, "Created new peripheral for %s", v15, 0xCu);
      sub_1000752F4(v16);
    }

    v20 = v12;
    a7(v12, 0);
  }

  else
  {
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1002FFA0C(a5, a6, &v21);
      _os_log_impl(&_mh_execute_header, v13, v17, "Failed to create peripheral for %s", v18, 0xCu);
      sub_1000752F4(v19);
    }

    a7(2, 1);
  }
}

void sub_1000F22EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_144;
  }

LABEL_2:
  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v11 = *(a1 + 128);
  if (!v11 || (v12 = [v11 outputStream]) == 0)
  {
    v13 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, v16, "Output stream does not exist", v17, 2u);
    }

    goto LABEL_9;
  }

  v13 = v12;
  v108 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
  swift_beginAccess();
  if (![v13 hasSpaceAvailable])
  {
    goto LABEL_9;
  }

  *&v14 = 136315138;
  v103 = v14;
  *(&v15 + 1) = 2;
  v125 = xmmword_1004098F0;
  *&v15 = 134218240;
  v101 = v15;
  v100 = v13;
  v99 = v2;
  v102 = a1;
  while (2)
  {
    v20 = *(a1 + 160);
    if (!v20[2])
    {
      goto LABEL_9;
    }

    v21 = v20[4];
    v5 = v20[5];
    sub_100069E2C(v21, v5);
    sub_100069E2C(v21, v5);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    sub_10006A178(v21, v5);
    v24 = os_log_type_enabled(v22, v23);
    v112 = v21 >> 8;
    v113 = v21 >> 16;
    v114 = v21 >> 24;
    v123 = HIDWORD(v21);
    v115 = v21 >> 40;
    v116 = HIWORD(v21);
    v117 = HIBYTE(v21);
    v118 = v5 >> 8;
    v119 = v5 >> 16;
    v120 = v5 >> 24;
    v121 = HIDWORD(v5);
    v122 = v5 >> 40;
    v126 = v5;
    if (!v24)
    {

      v27 = v5 >> 62;
      if ((v5 >> 62) > 1)
      {
        goto LABEL_66;
      }

LABEL_20:
      if (!v27)
      {
        LOBYTE(v129[0]) = v21;
        BYTE1(v129[0]) = v112;
        BYTE2(v129[0]) = v113;
        BYTE3(v129[0]) = v114;
        BYTE4(v129[0]) = v123;
        BYTE5(v129[0]) = v115;
        BYTE6(v129[0]) = v116;
        HIBYTE(v129[0]) = v117;
        LOBYTE(v129[1]) = v5;
        BYTE1(v129[1]) = v118;
        BYTE2(v129[1]) = v119;
        BYTE3(v129[1]) = v120;
        BYTE4(v129[1]) = v121;
        BYTE5(v129[1]) = v122;
        v29 = [v13 write:v129 maxLength:BYTE6(v5)];
        goto LABEL_75;
      }

      if (v21 <= v21 >> 32)
      {
        v33 = __DataStorage._bytes.getter();
        if (!v33)
        {
          __DataStorage._length.getter();
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        v34 = v33;
        v35 = __DataStorage._offset.getter();
        if (!__OFSUB__(v21, v35))
        {
          v36 = v21 - v35 + v34;
          __DataStorage._length.getter();
          if (v36)
          {
            if (!__OFSUB__(v123, v21))
            {
              v37 = v123 - v21;
              goto LABEL_73;
            }

            goto LABEL_152;
          }

          goto LABEL_169;
        }

LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v128 = v26;
    *v25 = v103;
    v27 = v5 >> 62;
    v124 = v21;
    v107 = v22;
    v106 = v23;
    v105 = v25;
    v104 = v26;
    if ((v5 >> 62) > 1)
    {
      if (v27 != 2)
      {
        v32 = &_swiftEmptyArrayStorage;
        goto LABEL_65;
      }

      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      v28 = v30 - v31;
      if (__OFSUB__(v30, v31))
      {
        goto LABEL_158;
      }

      if (!v28)
      {
LABEL_36:
        v32 = &_swiftEmptyArrayStorage;
        goto LABEL_64;
      }
    }

    else if (v27)
    {
      v38 = v123 - v21;
      if (__OFSUB__(v123, v21))
      {
        goto LABEL_157;
      }

      v28 = v38;
      if (!v38)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v28 = BYTE6(v5);
      if (!BYTE6(v5))
      {
        goto LABEL_36;
      }
    }

    v127 = &_swiftEmptyArrayStorage;
    v4 = v28 & ~(v28 >> 63);
    v8 = &v127;
    sub_10019F3C0(0, v4, 0);
    v32 = v127;
    if (v27 == 2)
    {
      v2 = *(v124 + 16);
    }

    else
    {
      if (v27 != 1)
      {
        if (v28 < 0)
        {
          goto LABEL_163;
        }

        v2 = 0;
        goto LABEL_43;
      }

      v2 = v124;
    }

    if (v28 < 0)
    {
      goto LABEL_155;
    }

LABEL_43:
    v111 = v124;
    v109 = v124 >> 32;
    v110 = BYTE6(v5);
    do
    {
      if (!v4)
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        swift_once();
        goto LABEL_2;
      }

      if (v27 == 2)
      {
        if (v2 < *(v124 + 16))
        {
          goto LABEL_138;
        }

        if (v2 >= *(v124 + 24))
        {
          goto LABEL_141;
        }

        v43 = __DataStorage._bytes.getter();
        if (!v43)
        {
          goto LABEL_167;
        }

        v40 = v43;
        v8 = v5 & 0x3FFFFFFFFFFFFFFFLL;
        v44 = __DataStorage._offset.getter();
        v42 = v2 - v44;
        if (__OFSUB__(v2, v44))
        {
          goto LABEL_143;
        }

        goto LABEL_57;
      }

      if (v27 == 1)
      {
        if (v2 < v111 || v2 >= v109)
        {
          goto LABEL_140;
        }

        v39 = __DataStorage._bytes.getter();
        if (!v39)
        {
          goto LABEL_166;
        }

        v40 = v39;
        v8 = v5 & 0x3FFFFFFFFFFFFFFFLL;
        v41 = __DataStorage._offset.getter();
        v42 = v2 - v41;
        if (__OFSUB__(v2, v41))
        {
          goto LABEL_142;
        }

LABEL_57:
        v8 = *(v40 + v42);
        goto LABEL_60;
      }

      if (v2 >= v110)
      {
        goto LABEL_139;
      }

      LOBYTE(v129[0]) = v124;
      BYTE1(v129[0]) = v112;
      BYTE2(v129[0]) = v113;
      BYTE3(v129[0]) = v114;
      BYTE4(v129[0]) = v123;
      BYTE5(v129[0]) = v115;
      BYTE6(v129[0]) = v116;
      HIBYTE(v129[0]) = v117;
      LOBYTE(v129[1]) = v5;
      BYTE1(v129[1]) = v118;
      BYTE2(v129[1]) = v119;
      BYTE3(v129[1]) = v120;
      BYTE4(v129[1]) = v121;
      BYTE5(v129[1]) = v122;
      v8 = *(v129 + v2);
LABEL_60:
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v45 = swift_allocObject();
      *(v45 + 16) = v125;
      *(v45 + 56) = &type metadata for UInt8;
      *(v45 + 64) = &protocol witness table for UInt8;
      *(v45 + 32) = v8;
      a1 = String.init(format:_:)();
      v47 = v46;
      v127 = v32;
      v49 = v32[2];
      v48 = v32[3];
      if (v49 >= v48 >> 1)
      {
        v8 = &v127;
        sub_10019F3C0((v48 > 1), v49 + 1, 1);
        v32 = v127;
      }

      v32[2] = v49 + 1;
      v50 = &v32[2 * v49];
      v50[4] = a1;
      v50[5] = v47;
      ++v2;
      --v4;
      --v28;
      v5 = v126;
    }

    while (v28);
    v13 = v100;
LABEL_64:
    a1 = v102;
    v21 = v124;
LABEL_65:
    v129[0] = v32;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v51 = BidirectionalCollection<>.joined(separator:)();
    v53 = v52;

    v54 = sub_1002FFA0C(v51, v53, &v128);

    v55 = v105;
    *(v105 + 1) = v54;
    v56 = v107;
    _os_log_impl(&_mh_execute_header, v107, v106, "<<< Sending %s", v55, 0xCu);
    sub_1000752F4(v104);

    if (v27 <= 1)
    {
      goto LABEL_20;
    }

LABEL_66:
    if (v27 != 2)
    {
      memset(v129, 0, 14);
      v29 = [v13 write:v129 maxLength:0];
LABEL_75:
      v62 = v29;
      if (v29 == -1)
      {
        goto LABEL_131;
      }

      if (v27 > 1)
      {
        if (v27 != 2)
        {
          if (!v29)
          {
            goto LABEL_93;
          }

          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_133;
          }

LABEL_102:
          sub_100069E2C(v21, v5);
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = v101;
            *(v75 + 4) = v62;
            *(v75 + 12) = 2048;
            if (v27 > 1)
            {
              if (v27 == 2)
              {
                v78 = *(v21 + 16);
                v77 = *(v21 + 24);
                v65 = __OFSUB__(v77, v78);
                v76 = v77 - v78;
                if (v65)
                {
                  goto LABEL_164;
                }
              }

              else
              {
                v76 = 0;
              }
            }

            else if (v27)
            {
              LODWORD(v76) = v123 - v21;
              if (__OFSUB__(v123, v21))
              {
                goto LABEL_165;
              }

              v76 = v76;
            }

            else
            {
              v76 = BYTE6(v5);
            }

            *(v75 + 14) = v76;
            v79 = v75;
            v80 = v126;
            sub_10006A178(v21, v126);
            _os_log_impl(&_mh_execute_header, v73, v74, "Sent partial data %ld/%ld", v79, 0x16u);
            v5 = v80;
          }

          else
          {
            sub_10006A178(v21, v5);
          }

          if (v27 > 1)
          {
            if (v27 == 2)
            {
              v83 = *(v21 + 16);
              v82 = *(v21 + 24);
              v81 = v82 - v83;
              if (__OFSUB__(v82, v83))
              {
                goto LABEL_160;
              }
            }

            else
            {
              v81 = 0;
            }
          }

          else if (v27)
          {
            if (__OFSUB__(v123, v21))
            {
              goto LABEL_159;
            }

            v81 = v123 - v21;
          }

          else
          {
            v81 = BYTE6(v5);
          }

          if (v81 < v62)
          {
            goto LABEL_146;
          }

          v84 = Data.subdata(in:)();
          v86 = v85;
          swift_beginAccess();
          v87 = *(a1 + 160);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a1 + 160) = v87;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (!*(v87 + 2))
            {
              goto LABEL_130;
            }
          }

          else
          {
            v87 = sub_1001A1598(v87);
            *(a1 + 160) = v87;
            if (!*(v87 + 2))
            {
LABEL_130:
              __break(1u);
LABEL_131:
              v92 = Logger.logObject.getter();
              v93 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v92, v93))
              {
                v94 = swift_slowAlloc();
                *v94 = 0;
                _os_log_impl(&_mh_execute_header, v92, v93, "Failed to write to stream", v94, 2u);
              }

              goto LABEL_135;
            }
          }

          v89 = *(v87 + 4);
          v90 = *(v87 + 5);
          *(v87 + 4) = v84;
          *(v87 + 5) = v86;
          *(a1 + 160) = v87;
          swift_endAccess();
          v91 = v89;
          v5 = v126;
          sub_10006A178(v91, v90);
          goto LABEL_12;
        }

        v64 = *(v21 + 16);
        v63 = *(v21 + 24);
        v65 = __OFSUB__(v63, v64);
        v66 = (v63 - v64);
        if (v65)
        {
          goto LABEL_154;
        }

        if (v29 == v66)
        {
          goto LABEL_93;
        }

LABEL_86:
        if (v27 == 2)
        {
          v72 = *(v21 + 16);
          v71 = *(v21 + 24);
          v65 = __OFSUB__(v71, v72);
          v67 = v71 - v72;
          if (v65)
          {
            goto LABEL_161;
          }
        }

        else if (v27 == 1)
        {
          LODWORD(v67) = v123 - v21;
          if (__OFSUB__(v123, v21))
          {
            goto LABEL_162;
          }

          v67 = v67;
        }

        else
        {
          v67 = BYTE6(v5);
        }

        if (v29 < v67)
        {
          goto LABEL_102;
        }

LABEL_133:
        v92 = Logger.logObject.getter();
        v95 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v92, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 134217984;
          *(v96 + 4) = v62;
          _os_log_impl(&_mh_execute_header, v92, v95, "Sent a message and got %ld bytes written", v96, 0xCu);

          v97 = v21;
          v98 = v5;
          goto LABEL_136;
        }

LABEL_135:
        v97 = v21;
        v98 = v5;
LABEL_136:
        sub_10006A178(v97, v98);

LABEL_9:
        return;
      }

      if (v27)
      {
        if (__OFSUB__(v123, v21))
        {
          goto LABEL_153;
        }

        if (v29 != v123 - v21)
        {
          goto LABEL_86;
        }
      }

      else if (v29 != BYTE6(v5))
      {
        goto LABEL_86;
      }

LABEL_93:
      swift_beginAccess();
      v18 = *(a1 + 160);
      v68 = *(v18 + 2);
      if (!v68)
      {
        goto LABEL_147;
      }

      v69 = *(a1 + 160);
      v70 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 160) = v18;
      if (!v70 || (v68 - 1) > *(v18 + 3) >> 1)
      {
        v18 = sub_10012E5A4(v70, v68, 1, v18);
        *(a1 + 160) = v18;
      }

      sub_10011116C((v18 + 32));
      v19 = *(v18 + 2);
      memmove(v18 + 32, v18 + 48, 16 * v19 - 16);
      *(v18 + 2) = v19 - 1;
      *(a1 + 160) = v18;
      swift_endAccess();
LABEL_12:
      sub_10006A178(v21, v5);
      if (([v13 hasSpaceAvailable]& 1) == 0)
      {
        goto LABEL_9;
      }

      continue;
    }

    break;
  }

  v57 = *(v21 + 16);
  v58 = *(v21 + 24);
  v36 = __DataStorage._bytes.getter();
  if (!v36)
  {
    goto LABEL_70;
  }

  v59 = __DataStorage._offset.getter();
  if (__OFSUB__(v57, v59))
  {
    goto LABEL_156;
  }

  v36 += v57 - v59;
LABEL_70:
  if (__OFSUB__(v58, v57))
  {
    goto LABEL_149;
  }

  v5 = v126;
  __DataStorage._length.getter();
  if (v36)
  {
    v61 = *(v21 + 16);
    v60 = *(v21 + 24);
    v37 = v60 - v61;
    if (!__OFSUB__(v60, v61))
    {
LABEL_73:
      v29 = [v13 write:v36 maxLength:v37];
      goto LABEL_75;
    }

LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

LABEL_170:
  __break(1u);
}

uint64_t sub_1000F30E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != 8)
  {
    if (!a3)
    {
      goto LABEL_14;
    }

    v32[1] = a3;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_14;
    }

    v13 = [v32[0] domain];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {

        goto LABEL_14;
      }
    }

    v20 = [v32[0] code];

    if (v20 == 14)
    {
      v21 = 6;
LABEL_15:
      swift_beginAccess();
      v22 = *(a1 + 64);
      v23 = *(a1 + 72);
      v24 = sub_1000752B0((a1 + 40), v22);
      v25 = *(v22 - 8);
      v26 = *(v25 + 64);
      __chkstk_darwin(v24);
      v28 = v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v28);
      v29 = (*(v23 + 88))(v22, v23);
      (*(v25 + 8))(v28, v22);
      sub_1000E1E2C();
      swift_allocError();
      *v30 = v21;
      v29();
    }

LABEL_14:
    v21 = 3;
    goto LABEL_15;
  }

  swift_beginAccess();
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = sub_1000752B0((a1 + 40), v5);
  v8 = *(v5 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11);
  v12 = (*(v6 + 104))(v5, v6);
  (*(v8 + 8))(v11, v5);
  v12(a2);
}

void sub_1000F3488(int64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
    v12 = v11;
    v13 = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v10, v6);
    if ((v13 & 1) == 0)
    {
      __break(1u);
      return;
    }

    if (!*(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
      }

      return;
    }

    v46 = a1;
    v47 = a2;
    v14 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    swift_beginAccess();
    v50 = v3;
    v6 = *(v3 + v14);
    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v15 = *(v3 + v14);
      }

      swift_unknownObjectRetain();
      v3 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v16, type metadata accessor for DSKBLE.BLEConnectionRequest);
      Set.Iterator.init(_cocoa:)();
      v17 = v55;
      a2 = v56;
      a1 = v57;
      v18 = v58;
      v10 = v59;
    }

    else
    {
      v22 = -1 << *(v6 + 32);
      a2 = v6 + 56;
      a1 = ~v22;
      v23 = -v22;
      v24 = v23 < 64 ? ~(-1 << v23) : -1;
      v10 = v24 & *(v6 + 56);
      v25 = *(v3 + v14);
      swift_bridgeObjectRetain_n();
      v18 = 0;
      v17 = v6;
    }

    v7 = (a1 + 64) >> 6;
    if (v17 < 0)
    {
      break;
    }

LABEL_16:
    v26 = v18;
    v27 = v10;
    v28 = v18;
    if (v10)
    {
LABEL_20:
      v29 = (v27 - 1) & v27;
      v3 = *(*(v17 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));

      if (v3)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v7)
      {
        goto LABEL_27;
      }

      v27 = *(a2 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  while (1)
  {
    v30 = __CocoaSet.Iterator.next()();
    if (!v30)
    {
      break;
    }

    v54 = v30;
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    swift_dynamicCast();
    v3 = v60;
    v28 = v18;
    v29 = v10;
    if (!v60)
    {
      break;
    }

LABEL_24:
    v31 = *(v3 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    if (static UUID.== infix(_:_:)())
    {
      sub_100093854();

      v43 = v47;
      *(v3 + 64) = v46;
      *(v3 + 72) = v43;
      *(v3 + 80) = 0;

      goto LABEL_28;
    }

    v18 = v28;
    v10 = v29;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_27:
  sub_100093854();

LABEL_28:
  v7 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  v32 = v50;
  swift_beginAccess();
  v49 = *(v32 + v7);
  if ((v49 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral);
    Set.Iterator.init(_cocoa:)();
    v33 = v60;
    a2 = v61;
    v3 = v62;
    v34 = v63;
    v6 = v64;
  }

  else
  {
    v35 = -1 << *(v49 + 32);
    a2 = v49 + 56;
    v3 = ~v35;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v6 = v37 & *(v49 + 56);
    v33 = v49;
    swift_bridgeObjectRetain_n();
    v34 = 0;
  }

  v48 = v3;
  a1 = (v3 + 64) >> 6;
  if ((v33 & 0x8000000000000000) == 0)
  {
LABEL_35:
    v38 = v34;
    v39 = v6;
    v10 = v34;
    if (v6)
    {
LABEL_39:
      v40 = (v39 - 1) & v39;
      v41 = *(*(v33 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v39)))));

      if (v41)
      {
        goto LABEL_43;
      }

      goto LABEL_46;
    }

    while (1)
    {
      v10 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_52;
      }

      if (v10 >= a1)
      {
        goto LABEL_46;
      }

      v39 = *(a2 + 8 * v10);
      v38 = (v38 + 1);
      if (v39)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
    v42 = __CocoaSet.Iterator.next()();
    if (!v42)
    {
      break;
    }

    v52 = v42;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v41 = v53;
    v10 = v34;
    v40 = v6;
    if (!v53)
    {
      break;
    }

LABEL_43:
    v3 = *(v41 + 16);

    v7 = static UUID.== infix(_:_:)();

    if (v7)
    {
      sub_100093854();

      v44 = v46;
      v45 = v47;
      *(v41 + 176) = v46;
      *(v41 + 184) = v45;
      *(v41 + 192) = 0;
      if (*(v41 + 168) != 2)
      {
        sub_1000F3B5C(v44, v45, 0, 0x100u, v51);
      }

      return;
    }

    v34 = v10;
    v6 = v40;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_46:
  sub_100093854();
}
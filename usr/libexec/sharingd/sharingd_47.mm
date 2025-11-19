void sub_10061F624(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

void sub_10061F71C(uint64_t a1)
{
  if (a1)
  {
    v2 = static os_log_type_t.error.getter();
  }

  else
  {
    v2 = static os_log_type_t.default.getter();
  }

  v3 = v2;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = v8;
    }

    else
    {
      v9 = 0x8000000100789F30;
      v7 = 0xD000000000000015;
    }

    v10 = sub_10000C4E4(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Activated btBatteryScanner with error %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  else
  {
  }
}

void sub_10061F94C()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v2 = *(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner);
  if (v2)
  {
    v3 = v0;
    v4 = qword_100973B58;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_1009865B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "stopBatteryScanner", v9, 2u);
    }

    [v5 invalidate];
    v10 = *(v3 + v1);
    v11 = *(v10 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner);
    *(v10 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner) = 0;
  }
}

unint64_t sub_10061FB04()
{
  result = qword_100987018;
  if (!qword_100987018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987018);
  }

  return result;
}

uint64_t sub_10061FB58()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 hasTag:v1];

  if (v2)
  {
    return 1;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 hasTag:v3];

  if (v4)
  {
    return 1;
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [v0 hasTag:v5];

  if (v6)
  {
    return 1;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = [v0 hasTag:v8];

  return v9;
}

uint64_t sub_10061FC58(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_10061FDB8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1006200FC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_10061FDB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a1;
  v48 = sub_10028088C(&unk_100987098, &unk_10080DA18);
  v4 = *(*(v48 - 8) + 64);
  v5 = __chkstk_darwin(v48);
  v47 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v36 - v7;
  v45 = type metadata accessor for UUID();
  v8 = *(*(v45 - 8) + 64);
  result = __chkstk_darwin(v45);
  v51 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v13 = *(a3 + 64);
  v40 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v38 = 0;
  v39 = (v14 + 63) >> 6;
  v43 = v10 + 16;
  v44 = v10;
  v42 = v10 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v50 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v12 << 6);
    v21 = v49;
    v23 = v44;
    v22 = v45;
    v24 = *(v44 + 16);
    v25 = v51;
    v24(v51, v49[6] + *(v44 + 72) * v20, v45);
    v26 = v21[7];
    v41 = v20;
    v27 = *(v26 + 8 * v20);
    v28 = v46;
    v24(v46, v25, v22);
    v29 = v47;
    v30 = v48;
    *(v28 + *(v48 + 48)) = v27;
    sub_10000FF90(v28, v29, &unk_100987098, &unk_10080DA18);
    v31 = *(v29 + *(v30 + 48));
    v32 = v27;
    v33 = [v31 state];

    sub_100005508(v28, &unk_100987098, &unk_10080DA18);
    v34 = *(v23 + 8);
    v34(v29, v22);

    result = (v34)(v51, v22);
    v16 = v50;
    if (v33)
    {
      *(v37 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_100620874(v37, v36, v38, v49);
      }
    }
  }

  v18 = v12;
  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= v39)
    {
      return sub_100620874(v37, v36, v38, v49);
    }

    v19 = *(v40 + 8 * v12);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v50 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1006200FC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10061FDB8(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100620174(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10028088C(&qword_100976188, &unk_10080AFA0);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1002D63B0(v17 + 48 * v16, v34);
    sub_1002D6398(v34, v33);
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_1002D6398(v33, (*(v9 + 56) + 48 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1006203D0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = type metadata accessor for SFNWInterfaceType();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  v9 = __chkstk_darwin(v61);
  v60 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = v47 - v11;
  v12 = type metadata accessor for UUID();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = __chkstk_darwin(v12);
  v59 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = v47 - v16;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10028088C(&unk_1009746E0, &unk_1007F65C0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v47[3] = v56 + 16;
  v48 = a2;
  v58 = v56 + 32;
  v21 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v47[1] = v57 + 32;
  v47[2] = v57 + 16;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v26 = a4[6];
    v27 = v56;
    v55 = *(v56 + 72);
    v28 = v50;
    (*(v56 + 16))(v50, v26 + v55 * v25, v12);
    v29 = a4[7];
    v30 = v57;
    v54 = *(v57 + 72);
    v31 = v29 + v54 * v25;
    v32 = v12;
    v33 = v51;
    v34 = v61;
    (*(v57 + 16))(v51, v31, v61);
    v53 = *(v27 + 32);
    v53(v59, v28, v32);
    v35 = *(v30 + 32);
    v36 = v33;
    v12 = v32;
    v35(v60, v36, v34);
    v37 = *(v18 + 40);
    sub_10000D4DC(&qword_100976170, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v38 = -1 << *(v18 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v21 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_26:
    *(v21 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v53((*(v18 + 48) + v41 * v55), v59, v32);
    result = (v35)(*(v18 + 56) + v41 * v54, v60, v61);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47[0];
    v19 = v52;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
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

uint64_t sub_100620874(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v49 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v43 = &v38 - v13;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10028088C(&unk_100976350, &unk_10080B030);
  result = static _DictionaryStorage.allocate(capacity:)();
  v48 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v40 = a4;
  v41 = v9 + 16;
  v47 = v9 + 32;
  v17 = v48 + 64;
  v39 = a1;
  v42 = v9;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[6];
    v46 = *(v9 + 72);
    v23 = v43;
    (*(v9 + 16))(v43, v22 + v46 * v21, v8);
    v24 = *(a4[7] + 8 * v21);
    v45 = *(v9 + 32);
    v45(v49, v23, v8);
    v25 = v48;
    v26 = *(v48 + 40);
    sub_10000D4DC(&qword_100976170, &type metadata accessor for UUID);
    v27 = v24;
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(v25 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v9 = v42;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v17 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v9 = v42;
LABEL_26:
    *(v17 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = v48;
    result = (v45)(*(v48 + 48) + v31 * v46, v49, v8);
    *(*(v36 + 56) + 8 * v31) = v27;
    ++*(v36 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a1 = v39;
    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v48;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v48;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v44 = (v20 - 1) & v20;
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

void sub_100620C08()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = v0;
  v2 = MobileGestalt_copy_hwModelStr_obj();

  if (!v2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3._countAndFlagsBits = 825767242;
  v3._object = 0xE400000000000000;
  v4 = String.hasPrefix(_:)(v3);

  if (v4)
  {
    return;
  }

  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = MobileGestalt_copy_hwModelStr_obj();

  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8._countAndFlagsBits = 842544458;
  v8._object = 0xE400000000000000;
  v9 = String.hasPrefix(_:)(v8);

  if (!v9)
  {
    sub_10062503C();
    if (v10)
    {
      IOObjectRelease(v10);
    }
  }
}

uint64_t sub_100620D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_100620FE4()
{
  v0 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10 - v2;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "remoteAlertHandleDidDeactivate", v7, 2u);
  }

  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_1005FCB7C(v3, 0);
  return sub_100005508(v3, &unk_100976120, &qword_1007F9260);
}

uint64_t sub_1006212B0()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SFB332UIProtocol];
  sub_10028088C(&qword_100974EA0, &qword_1007FBA30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007F5670;
  v1 = sub_1000276B4(0, &qword_100987160, NSUUID_ptr);
  *(v0 + 56) = sub_10028088C(&unk_100987168, &unk_10080DAE0);
  *(v0 + 32) = v1;
  v2 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 initWithArray:isa];

  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

uint64_t sub_10062144C(void *a1)
{
  v1 = [a1 sd_connectionBundleID];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0xD00000000000001CLL && 0x8000000100789280 == v5)
    {
      v7 = 1;
      v3 = 0xD00000000000001CLL;
    }

    else if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v7 = 1;
    }

    else if (v3 == 0xD000000000000023 && 0x80000001007913E0 == v5)
    {
      v7 = 1;
      v3 = 0xD000000000000023;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
    v3 = 0;
    v5 = 0;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_1009865B0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 67109378;
    *(v11 + 4) = v7 & 1;
    *(v11 + 8) = 2080;
    if (v5)
    {
      v13 = v3;
    }

    else
    {
      v13 = 0xD000000000000015;
    }

    if (!v5)
    {
      v5 = 0x8000000100789F30;
    }

    v14 = sub_10000C4E4(v13, v5, &v17);

    *(v11 + 10) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "XPC: shouldAcceptNewConnection: %{BOOL}d. (%s)", v11, 0x12u);
    sub_10000C60C(v12);
  }

  else
  {
  }

  return v7 & 1;
}

void sub_1006216B0(void *a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "didConnect: %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  sub_1005F7090();
}

void sub_100621804(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v57 = &v56 - v11;
  __chkstk_darwin(v10);
  v13 = &v56 - v12;
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v15 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);

  v16 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingDisconnect;
  swift_beginAccess();
  v18 = *(v15 + v17);

  v19 = *(v18 + 16);
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  v58 = v5;
  if (v19)
  {
    sub_10000EBD4(v13);
    v22 = v21;
    v23 = *(v5 + 8);
    v23(v13, v4);

    if (v22)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_1009865B0);
      v25 = a1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v56 = a1;
        v29 = v28;
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v25;
        *v30 = v25;
        v31 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "didDisconnectPeripheral - removing from needingDisconnect: %@", v29, 0xCu);
        sub_100005508(v30, &qword_100975400, &qword_1007F65D0);

        a1 = v56;
      }

      v32 = *(v2 + v14);

      v33 = [v25 identifier];
      v34 = v57;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      sub_1002B25B8(0, v34);
      swift_endAccess();
    }

    p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
  }

  else
  {

    v23 = *(v5 + 8);
    v23(v13, v4);
  }

  v35 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_peripheralsIConnectedTo;
  swift_beginAccess();
  if (*(*(v2 + v36) + 16))
  {
    v37 = *(v2 + v36);

    sub_10000EBD4(v9);
    v39 = v38;
    v23(v9, v4);

    if (v39)
    {
      if (p_opt_class_meths[363] != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000C4AC(v40, qword_1009865B0);
      v41 = a1;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        *(v44 + 4) = v41;
        *v45 = v41;
        v46 = v41;
        _os_log_impl(&_mh_execute_header, v42, v43, "didDisconnectPeripheral - removing from peripheralsIConnectedTo: %@", v44, 0xCu);
        sub_100005508(v45, &qword_100975400, &qword_1007F65D0);
      }

      v47 = [v41 identifier];
      v48 = v57;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      sub_1002B25B8(0, v48);
      swift_endAccess();
    }
  }

  else
  {
    v23(v9, v4);
  }

  if (p_opt_class_meths[363] != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10000C4AC(v49, qword_1009865B0);
  v50 = a1;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    *(v53 + 4) = v50;
    *v54 = v50;
    v55 = v50;
    _os_log_impl(&_mh_execute_header, v51, v52, "didDisconnectPeripheral: %@", v53, 0xCu);
    sub_100005508(v54, &qword_100975400, &qword_1007F65D0);
  }

  sub_1005F7090();
}

uint64_t sub_100621E8C(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v52 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v50[-v8];
  v10 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v54 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v16 = &v50[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v50[-v18];
  __chkstk_darwin(v17);
  v21 = &v50[-v20];
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_1009865B0);
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v55 = v16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v53 = v19;
    v29 = v2;
    v30 = v6;
    v31 = v3;
    v32 = v28;
    *v27 = 138412290;
    *(v27 + 4) = v23;
    *v28 = v23;
    v33 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "didFailToConnect: %@", v27, 0xCu);
    sub_100005508(v32, &qword_100975400, &qword_1007F65D0);
    v3 = v31;
    v6 = v30;
    v2 = v29;
    v19 = v53;
  }

  v34 = [v23 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = v3[7];
  v36 = 1;
  (v35)(v21, 0, 1, v2);
  v37 = *(*(v56 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v37)
  {
    v38 = [v37 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = 0;
  }

  v53 = v35;
  (v35)(v19, v36, 1, v2);
  v39 = *(v6 + 48);
  sub_10000FF90(v21, v9, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v19, &v9[v39], &unk_100976120, &qword_1007F9260);
  v40 = v3;
  v41 = v3[6];
  if (v41(v9, 1, v2) == 1)
  {
    sub_100005508(v19, &unk_100976120, &qword_1007F9260);
    sub_100005508(v21, &unk_100976120, &qword_1007F9260);
    if (v41(&v9[v39], 1, v2) == 1)
    {
      sub_100005508(v9, &unk_100976120, &qword_1007F9260);
LABEL_14:
      v49 = v54;
      (v53)(v54, 1, 1, v2);
      sub_1005FCB7C(v49, 0);
      v42 = &unk_100976120;
      v43 = &qword_1007F9260;
      v44 = v49;
      return sub_100005508(v44, v42, v43);
    }
  }

  else
  {
    sub_10000FF90(v9, v55, &unk_100976120, &qword_1007F9260);
    if (v41(&v9[v39], 1, v2) != 1)
    {
      v45 = v52;
      (v40[4])(v52, &v9[v39], v2);
      sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID);
      v46 = v55;
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = v40[1];
      v47(v45, v2);
      sub_100005508(v19, &unk_100976120, &qword_1007F9260);
      sub_100005508(v21, &unk_100976120, &qword_1007F9260);
      v47(v46, v2);
      result = sub_100005508(v9, &unk_100976120, &qword_1007F9260);
      if ((v51 & 1) == 0)
      {
        return result;
      }

      goto LABEL_14;
    }

    sub_100005508(v19, &unk_100976120, &qword_1007F9260);
    sub_100005508(v21, &unk_100976120, &qword_1007F9260);
    (v40[1])(v55, v2);
  }

  v42 = &unk_100987030;
  v43 = &qword_1007F9330;
  v44 = v9;
  return sub_100005508(v44, v42, v43);
}

void sub_1006224DC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v10 = &unk_1009A0000;
  if (!*(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral))
  {
    v11 = sub_1005F3200();
    if (v12)
    {
      v25 = a1;
      v13 = *(v1 + v9);
      v14 = *(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr + 8);
      if (v14 >> 60 == 15)
      {
LABEL_15:

        v18 = String._bridgeToObjectiveC()();

        v19 = [v25 retrievePeripheralWithAddress:v18];

        v20 = *(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
        *(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral) = v19;

LABEL_16:

        if (*(*(v2 + v9) + v10[461]))
        {
          sub_1005F7090();
        }

        return;
      }

      v24[1] = v11;
      v15 = *(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr);
      v16 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_11;
        }

        v17 = *(v15 + 16);
      }

      else if (!v16)
      {
        goto LABEL_11;
      }

      sub_100294008(v15, v14);
LABEL_11:
      sub_100294008(v15, v14);
      Data.Iterator.init(_:at:)();
      sub_10000D4DC(&unk_100975020, &type metadata accessor for Data.Iterator);
      while (1)
      {
        dispatch thunk of IteratorProtocol.next()();
        if (v27)
        {
          break;
        }

        if (v26)
        {
          sub_10028BCC0(v15, v14);
          (*(v5 + 8))(v8, v4);
          v13 = *(v2 + v9);
          v10 = &unk_1009A0000;
          goto LABEL_15;
        }
      }

      sub_10028BCC0(v15, v14);
      (*(v5 + 8))(v8, v4);
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000C4AC(v21, qword_1009865B0);
      v20 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();
      v10 = &unk_1009A0000;
      if (os_log_type_enabled(v20, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v20, v22, "allNullAddr! Pencil sent all-0 BT addr.", v23, 2u);
      }

      goto LABEL_16;
    }
  }
}

void sub_100622838(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v70 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v69 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v69 - v12;
  v14 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v71 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v20 = &v69 - v19;
  __chkstk_darwin(v18);
  v22 = &v69 - v21;
  v72 = a2;
  v23 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v7;
  v25 = *(v7 + 56);
  v26 = 1;
  v25(v22, 0, 1, v6);
  v75 = v4;
  v73 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v27 = *(*&v4[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v27)
  {
    v28 = [v27 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  v25(v20, v26, 1, v6);
  v29 = *(v10 + 48);
  sub_10000FF90(v22, v13, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v20, &v13[v29], &unk_100976120, &qword_1007F9260);
  v30 = v24;
  v31 = *(v24 + 48);
  if (v31(v13, 1, v6) != 1)
  {
    v33 = v71;
    sub_10000FF90(v13, v71, &unk_100976120, &qword_1007F9260);
    if (v31(&v13[v29], 1, v6) != 1)
    {
      v34 = v69;
      (*(v30 + 32))(v69, &v13[v29], v6);
      sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID);
      v35 = v33;
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v30 + 8);
      v36(v34, v6);
      sub_100005508(v20, &unk_100976120, &qword_1007F9260);
      sub_100005508(v22, &unk_100976120, &qword_1007F9260);
      v36(v35, v6);
      sub_100005508(v13, &unk_100976120, &qword_1007F9260);
      goto LABEL_10;
    }

    sub_100005508(v20, &unk_100976120, &qword_1007F9260);
    sub_100005508(v22, &unk_100976120, &qword_1007F9260);
    (*(v30 + 8))(v33, v6);
    goto LABEL_8;
  }

  sub_100005508(v20, &unk_100976120, &qword_1007F9260);
  sub_100005508(v22, &unk_100976120, &qword_1007F9260);
  if (v31(&v13[v29], 1, v6) != 1)
  {
LABEL_8:
    sub_100005508(v13, &unk_100987030, &qword_1007F9330);
    v32 = 0;
    goto LABEL_10;
  }

  sub_100005508(v13, &unk_100976120, &qword_1007F9260);
  v32 = 1;
LABEL_10:
  v37 = v75;
  v38 = v72;
  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (v39 && (v40 = v39, (sub_10061FB58() & 1) != 0))
  {
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 hasTag:v41];

    LODWORD(v72) = v42 ^ 1;
  }

  else
  {
    LODWORD(v72) = 0;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_10000C4AC(v43, qword_1009865B0);
  v44 = v38;
  v45 = v37;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v71 = v50;
    *v48 = 138413314;
    *(v48 + 4) = v44;
    *v49 = v44;
    *(v48 + 12) = 2048;
    *(v48 + 14) = v74;
    *(v48 + 22) = 2080;
    v51 = *(*&v37[v73] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
    v76 = v50;
    v52 = 1702195828;
    if ((v51 & 1) == 0)
    {
      v52 = 0x65736C6166;
    }

    v53 = 0xE500000000000000;
    if (v51)
    {
      v53 = 0xE400000000000000;
    }

    if (v51 == 2)
    {
      v54 = 0xD000000000000013;
    }

    else
    {
      v54 = v52;
    }

    v55 = v32;
    if (v51 == 2)
    {
      v56 = 0x8000000100799820;
    }

    else
    {
      v56 = v53;
    }

    v57 = v44;
    v58 = sub_10000C4E4(v54, v56, &v76);
    v32 = v55;

    *(v48 + 24) = v58;
    *(v48 + 32) = 1024;
    *(v48 + 34) = v55 & 1;
    *(v48 + 38) = 1024;
    *(v48 + 40) = v72;
    _os_log_impl(&_mh_execute_header, v46, v47, "peerDidRequestPairing!!!! %@, type: %ld, paired? %s, isStoredPeripheral? %{BOOL}d, isTagged? %{BOOL}d", v48, 0x2Cu);
    sub_100005508(v49, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v71);
  }

  if (v32)
  {
    v59 = v75;
    v60 = v73;
    v61 = *&v75[v73];
    v62 = *(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerRequestingPairing);
    *(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerRequestingPairing) = v44;
    v63 = v44;

    v64 = *&v59[v60] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerPairingType;
    *v64 = v74;
    *(v64 + 8) = 0;
    sub_1005F7090();
  }

  else if (v72)
  {
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "peerDidRequestPairing - is a B332 but not the one we're currently trying to pair to. Rejecting.", v67, 2u);
    }

    sub_10027FD18(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v70 respondToPairingRequest:v44 type:v74 accept:0 data:isa];
  }
}

void sub_1006230A0(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v42 = &v41 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v41 - v18;
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  v46 = a1;
  v22 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = 1;
  v47 = *(v4 + 56);
  v48 = v4 + 56;
  v47(v21, 0, 1, v3);
  v45 = v1;
  v43 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v24 = *(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  if (v24)
  {
    v25 = [v24 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  v47(v19, v23, 1, v3);
  v26 = *(v7 + 48);
  sub_10000FF90(v21, v10, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v19, &v10[v26], &unk_100976120, &qword_1007F9260);
  v27 = *(v4 + 48);
  if (v27(v10, 1, v3) == 1)
  {
    sub_100005508(v19, &unk_100976120, &qword_1007F9260);
    sub_100005508(v21, &unk_100976120, &qword_1007F9260);
    if (v27(&v10[v26], 1, v3) == 1)
    {
      sub_100005508(v10, &unk_100976120, &qword_1007F9260);
      v28 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v29 = v42;
  sub_10000FF90(v10, v42, &unk_100976120, &qword_1007F9260);
  if (v27(&v10[v26], 1, v3) == 1)
  {
    sub_100005508(v19, &unk_100976120, &qword_1007F9260);
    sub_100005508(v21, &unk_100976120, &qword_1007F9260);
    (*(v4 + 8))(v29, v3);
LABEL_8:
    sub_100005508(v10, &unk_100987030, &qword_1007F9330);
    v28 = 0;
    goto LABEL_10;
  }

  v30 = v41;
  (*(v4 + 32))(v41, &v10[v26], v3);
  sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID);
  v31 = v29;
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v4 + 8);
  v32(v30, v3);
  sub_100005508(v19, &unk_100976120, &qword_1007F9260);
  sub_100005508(v21, &unk_100976120, &qword_1007F9260);
  v32(v31, v3);
  sub_100005508(v10, &unk_100976120, &qword_1007F9260);
LABEL_10:
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000C4AC(v33, qword_1009865B0);
  v34 = v46;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412546;
    *(v37 + 4) = v34;
    *v38 = v34;
    *(v37 + 12) = 1024;
    *(v37 + 14) = v28 & 1;
    v39 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "peerDidFailToCompletePairing: %@, isStoredPeripheral: %{BOOL}d", v37, 0x12u);
    sub_100005508(v38, &qword_100975400, &qword_1007F65D0);
  }

  if (v28)
  {
    *(*(v45 + v43) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didPairingSucceed) = 0;

    sub_1005F1D24();

    v40 = v44;
    v47(v44, 1, 1, v3);
    sub_1005FCB7C(v40, 0);
    sub_100005508(v40, &unk_100976120, &qword_1007F9260);
  }
}

uint64_t sub_100623718(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_100625170;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EAE18;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

uint64_t sub_1006239F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v27 = a6;
  v28 = a7;
  ObjectType = swift_getObjectType();
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v29 - 8);
  v14 = *(v33 + 64);
  __chkstk_darwin(v29);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  v17 = *(v30 + 64);
  __chkstk_darwin(v32);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  v22 = v27;
  v21 = v28;
  v20[6] = a5;
  v20[7] = v22;
  v20[8] = v21;
  v20[9] = v7;
  v20[10] = ObjectType;
  aBlock[4] = sub_100625004;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EADA0;
  v23 = _Block_copy(aBlock);

  sub_100294008(a3, a4);

  sub_100294008(v22, v21);
  v24 = v7;
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  v25 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v33 + 8))(v16, v25);
  (*(v30 + 8))(v19, v32);
}

uint64_t sub_100623D2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_100624F24;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EABE8;
  v19 = _Block_copy(aBlock);
  v20 = v4;

  sub_100294008(a3, a4);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

uint64_t sub_100624028(int a1, char a2, int a3, char a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v22);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 20) = a1;
  *(v18 + 24) = a4;
  *(v18 + 25) = a2;
  aBlock[4] = sub_100624F14;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EAB98;
  v19 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_10062430C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_100624F0C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EAB48;
  v13 = _Block_copy(aBlock);

  v14 = v1;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_1006245E8(int a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = v3;
  aBlock[4] = sub_100624EFC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EAAF8;
  v17 = _Block_copy(aBlock);
  sub_100294008(a2, a3);
  v18 = v3;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

unint64_t sub_100624918()
{
  result = qword_100987048;
  if (!qword_100987048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987048);
  }

  return result;
}

unint64_t sub_10062496C()
{
  result = qword_100987050;
  if (!qword_100987050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987050);
  }

  return result;
}

uint64_t sub_1006249C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10060D954(a1, v4, v5, v6);
}

uint64_t sub_100624AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100609FFC(a1, v4, v5, v7, v6);
}

uint64_t sub_100624B60(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_10060BD14(a1, a2, v6);
}

void sub_100624C10(int a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = v1 + ((v5 + *(v6 + 80) + 9) & ~*(v6 + 80));

  sub_10060D058(a1, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_100624D24(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10060C5DC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100624E44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C04;

  return sub_1002D65C0(a1, v5);
}

uint64_t sub_100624F34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_10061C12C(a1, v4, v5, v7, v6);
}

void sub_10062503C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_10099E960;
  v7 = off_10099E960;
  if (!off_10099E960)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100625C8C;
    v3[3] = &unk_1008CDA20;
    v3[4] = &v4;
    sub_100625C8C(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0(257);
  }

  else
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"io_service_t _IOAccessoryManagerGetServiceWithPrimaryPort(SInt32)"];
    [v1 handleFailureInFunction:v2 file:@"Daemon-iOS-Bridging-Header.h" lineNumber:103 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100625158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100625178(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1000276B4(0, &qword_100987150, CBUUID_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_100625264(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_1006252EC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = *v1;
    v3 = v2 > 4;
    v4 = (1 << v2) & 0x1A;
    if (!v3 && v4 != 0)
    {
      sub_1005F7090();
    }
  }
}

const char *sub_100625350(int a1)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return "SEish";
      }

      else
      {
        return "J3XXish";
      }
    }

    else if (a1)
    {
      if (a1 != 1)
      {
        return "?";
      }

      return "D22ish";
    }

    else
    {
      return "Unknown";
    }
  }

  else if (a1 <= 5)
  {
    if (a1 == 4)
    {
      return "N112ish";
    }

    else
    {
      return "B520ish";
    }
  }

  else if (a1 == 6)
  {
    return "B620ish";
  }

  else
  {
    if (a1 != 7)
    {
      return "?";
    }

    return "J255ish";
  }
}

uint64_t sub_100625790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005FAA10(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100625884(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

void sub_100625950()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_1005F66A4(v2);
}

uint64_t sub_1006259B4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1006155FC(v8, a1, v4, v5, v6, v7);
}

uint64_t sub_100625A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_100615274(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100625B4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100625B94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_100614F54(a1, v4, v5, v6, v7, v8);
}

void *sub_100625C8C(void *a1)
{
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = qword_10099E968;
  v11 = qword_10099E968;
  if (!qword_10099E968)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100625E78;
    v5[4] = &unk_1008EBCE8;
    v6 = &v8;
    v7 = v5;
    v12 = *off_1008EBCC8;
    v13 = 0;
    v9[3] = _sl_dlopen();
    qword_10099E968 = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *libIOAccessoryManagerLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"Daemon-iOS-Bridging-Header.h" lineNumber:102 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "IOAccessoryManagerGetServiceWithPrimaryPort");
  *(*(a1[4] + 8) + 24) = result;
  off_10099E960 = *(*(a1[4] + 8) + 24);
  return result;
}

void sub_100625E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100625E78(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10099E968 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1006261A0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_100626284, v5, 0);
}

uint64_t sub_100626284()
{
  v1 = v0[7];
  sub_1002940CC(v0[5], v0[10]);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = v0[9];
    v3 = v0[8];
    v4 = v0[5];
    v5 = v0[6];
    sub_10062708C(v0[10], type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    sub_1002940CC(v4, v3);
    swift_beginAccess();
    sub_10046DE64(v2, v3);
    swift_endAccess();
  }

  else
  {
    v2 = v0[10];
  }

  sub_10062708C(v2, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1006263B0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009871F0);
  v1 = sub_10000C4AC(v0, qword_1009871F0);
  if (qword_1009736E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100626478(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_allEndpoints) = &_swiftEmptySetSingleton;
  v34 = a1;
  v18 = UUID.uuidString.getter();
  v20 = v19;
  *(v2 + 16) = v18;
  *(v2 + 24) = v19;
  (*(v14 + 56))(v12, 1, 1, v13);

  sub_10062E9D8(v12, v18, v20, v17);

  v21 = v12;
  v22 = v13;
  sub_100005508(v21, &unk_100976120, &qword_1007F9260);
  (*(v14 + 16))(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_connectableUUID, v17, v13);
  *v8 = nw_endpoint_create_application_service();
  (*(v5 + 104))(v8, enum case for NWEndpoint.opaque(_:), v4);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_displayEndpoint, v8, v4);
  if (qword_100973B78 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_1009871F0);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136315138;
    v28 = *(v2 + 16);
    v29 = *(v2 + 24);

    v30 = sub_10000C4E4(v28, v29, &v35);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Creating NearFieldDevice %s", v26, 0xCu);
    sub_10000C60C(v27);
  }

  v31 = *(v14 + 8);
  v31(v34, v22);
  v31(v17, v22);
  return v2;
}

uint64_t sub_100626894()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_connectableUUID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_displayEndpoint;
  v5 = type metadata accessor for NWEndpoint();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_allEndpoints];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropDiscoveredNearFieldDevice()
{
  result = qword_100987238;
  if (!qword_100987238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006269DC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NWEndpoint();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_100626AC0()
{
  v1 = *v0;
  _StringGuts.grow(_:)(19);

  String.append(_:)(v1[1]);
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000010;
}

uint64_t sub_100626B60(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_100626C64, v6, 0);
}

uint64_t sub_100626C64()
{
  v1 = v0[8];
  sub_1002940CC(v0[5], v0[9]);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    sub_10062708C(v0[9], type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    swift_beginAccess();
    sub_10036E788(v4, v2);
    swift_endAccess();
    sub_100005508(v2, &qword_1009763E0, &qword_1007F95D0);
  }

  else
  {
    sub_10062708C(v0[9], type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v5 = v0[9];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100626DAC()
{
  *(v1 + 40) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_100626E48, v2, 0);
}

uint64_t sub_100626E48()
{
  v1 = **(v0 + 40);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropDiscoveredNearFieldDevice_allEndpoints;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_100626EDC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_1006261A0(a1);
}

uint64_t sub_100626F74(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_100626B60(a1);
}

unint64_t sub_10062700C(uint64_t a1)
{
  result = sub_100627034();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100627034()
{
  result = qword_1009872D8;
  if (!qword_1009872D8)
  {
    type metadata accessor for SDAirDropDiscoveredNearFieldDevice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009872D8);
  }

  return result;
}

uint64_t sub_10062708C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100627110(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for SFAirDropSend.Transfer.State();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = *(*(sub_10028088C(&qword_10097B1B0, &unk_10080DD40) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  v11 = *(*(type metadata accessor for SFAirDrop.TransferIdentifier() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
  v2[17] = v12;
  v13 = *(v12 - 8);
  v2[18] = v13;
  v14 = *(v13 + 64) + 15;
  v2[19] = swift_task_alloc();
  v15 = type metadata accessor for CancellationError();
  v2[20] = v15;
  v16 = *(v15 - 8);
  v2[21] = v16;
  v17 = *(v16 + 64) + 15;
  v2[22] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDropSend.Failure();
  v2[23] = v18;
  v19 = *(v18 - 8);
  v2[24] = v19;
  v20 = *(v19 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v21 = type metadata accessor for SFAirDropSend.Transfer();
  v2[27] = v21;
  v22 = *(v21 - 8);
  v2[28] = v22;
  v23 = *(v22 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2[32] = static AirDropActor.shared;
  v24 = swift_task_alloc();
  v2[33] = v24;
  *v24 = v2;
  v24[1] = sub_1006274E0;

  return sub_1005435A0(0, 0xF000000000000000);
}

uint64_t sub_1006274E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v5 = *(*v2 + 256);
  v8 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v6 = sub_100627B78;
  }

  else
  {
    v6 = sub_10062760C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10062760C()
{
  v1 = v0[34];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[36] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to static SFSecurityScopedURL.withAccess<A>(to:body:)[1];
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_1006276E8;
  v6 = v0[34];
  v7 = v0[31];
  v8 = v0[27];

  return static SFSecurityScopedURL.withAccess<A>(to:body:)(v7, v6, &unk_10080DD58, v3, v8);
}

uint64_t sub_1006276E8()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v10 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = v2[32];
    v5 = sub_100628050;
  }

  else
  {
    v6 = v2[36];
    v7 = v2[34];
    v8 = v2[32];

    v5 = sub_10062781C;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10062781C()
{
  (*(v0[28] + 32))(v0[6], v0[31], v0[27]);
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[22];
  v7 = v0[19];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[12];
  v13 = v0[11];
  v14 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100627930()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_100627A40, v2, 0);
}

uint64_t sub_100627A40()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = v0[26];
  v5 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];

  (*(v7 + 8))(v6, v8);
  v2(v4, v5);
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[22];
  v15 = v0[19];
  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[12];
  v21 = v0[11];
  v22 = v0[10];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100627B78()
{
  v1 = v0[35];
  v0[5] = v1;
  v0[39] = v1;
  v2 = v0[22];
  v3 = v0[20];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];
    (*(v0[24] + 104))(v0[26], enum case for SFAirDropSend.Failure.cancelled(_:), v0[23]);
    (*(v5 + 8))(v4, v6);
    v7 = v0[5];
  }

  else
  {
    v8 = v0[5];

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  v10 = v0[29];
  v9 = v0[30];
  v12 = v0[27];
  v11 = v0[28];
  v41 = v0[25];
  v32 = v0[24];
  v33 = v0[23];
  v34 = v0[26];
  v30 = v0[19];
  v43 = v0[18];
  v44 = v0[17];
  v29 = v0[16];
  v38 = v0[13];
  v39 = v0[15];
  v31 = v0[12];
  v35 = v0[11];
  v36 = v0[14];
  v42 = v0[10];
  v45 = v0[9];
  v46 = v0[8];
  v13 = v0[7];
  v47 = v0[6];
  v14 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v15 = *(v11 + 16);
  v37 = v13;
  v15(v9, v13 + v14, v12);
  SFAirDropSend.Transfer.id.getter();
  v16 = *(v11 + 8);
  v16(v9, v12);
  v15(v10, v13 + v14, v12);
  SFAirDropSend.Transfer.startDate.getter();
  v16(v10, v12);
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  v40 = *(v32 + 16);
  v40(v31, v34, v33);
  v17 = enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:);
  v18 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v31, v17, v18);
  (*(v19 + 56))(v31, 0, 1, v18);
  SFAirDropSend.Transfer.Metrics.result.setter();
  static Date.now.getter();
  (*(v36 + 56))(v35, 0, 1, v38);
  SFAirDropSend.Transfer.Metrics.endDate.setter();
  (*(v32 + 104))(v41, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v33);
  LOBYTE(v17) = static SFAirDropSend.Failure.== infix(_:_:)();
  v20 = *(v32 + 8);
  v0[40] = v20;
  v0[41] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v41, v33);
  v21 = *(v37 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager);
  v22 = *(v37 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
  ObjectType = swift_getObjectType();
  if (v17)
  {
    v24 = 5;
  }

  else
  {
    v24 = 4;
  }

  (*(v22 + 16))(v24, ObjectType, v22);
  v25 = *(sub_10028088C(&unk_100986210, &unk_1008042C0) + 48);
  (*(v43 + 16))(v42, v30, v44);
  v40(&v42[v25], v34, v33);
  (*(v45 + 104))(v42, enum case for SFAirDropSend.Transfer.State.transferFailed(_:), v46);
  sub_100335364(v42, v47);
  (*(v45 + 8))(v42, v46);
  v26 = swift_task_alloc();
  v0[42] = v26;
  *v26 = v0;
  v26[1] = sub_100627930;
  v27 = v0[7];

  return sub_100334168();
}

uint64_t sub_100628050()
{
  v1 = v0[36];
  v2 = v0[34];

  v3 = v0[38];
  v0[5] = v3;
  v0[39] = v3;
  v4 = v0[22];
  v5 = v0[20];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];
    (*(v0[24] + 104))(v0[26], enum case for SFAirDropSend.Failure.cancelled(_:), v0[23]);
    (*(v7 + 8))(v6, v8);
    v9 = v0[5];
  }

  else
  {
    v10 = v0[5];

    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
  }

  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v43 = v0[25];
  v34 = v0[24];
  v35 = v0[23];
  v36 = v0[26];
  v32 = v0[19];
  v45 = v0[18];
  v46 = v0[17];
  v31 = v0[16];
  v40 = v0[13];
  v41 = v0[15];
  v33 = v0[12];
  v37 = v0[11];
  v38 = v0[14];
  v44 = v0[10];
  v47 = v0[9];
  v48 = v0[8];
  v15 = v0[7];
  v49 = v0[6];
  v16 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
  swift_beginAccess();
  v17 = *(v13 + 16);
  v39 = v15;
  v17(v11, v15 + v16, v14);
  SFAirDropSend.Transfer.id.getter();
  v18 = *(v13 + 8);
  v18(v11, v14);
  v17(v12, v15 + v16, v14);
  SFAirDropSend.Transfer.startDate.getter();
  v18(v12, v14);
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  v42 = *(v34 + 16);
  v42(v33, v36, v35);
  v19 = enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:);
  v20 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v33, v19, v20);
  (*(v21 + 56))(v33, 0, 1, v20);
  SFAirDropSend.Transfer.Metrics.result.setter();
  static Date.now.getter();
  (*(v38 + 56))(v37, 0, 1, v40);
  SFAirDropSend.Transfer.Metrics.endDate.setter();
  (*(v34 + 104))(v43, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v35);
  LOBYTE(v19) = static SFAirDropSend.Failure.== infix(_:_:)();
  v22 = *(v34 + 8);
  v0[40] = v22;
  v0[41] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v43, v35);
  v23 = *(v39 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager);
  v24 = *(v39 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
  ObjectType = swift_getObjectType();
  if (v19)
  {
    v26 = 5;
  }

  else
  {
    v26 = 4;
  }

  (*(v24 + 16))(v26, ObjectType, v24);
  v27 = *(sub_10028088C(&unk_100986210, &unk_1008042C0) + 48);
  (*(v45 + 16))(v44, v32, v46);
  v42(&v44[v27], v36, v35);
  (*(v47 + 104))(v44, enum case for SFAirDropSend.Transfer.State.transferFailed(_:), v48);
  sub_100335364(v44, v49);
  (*(v47 + 8))(v44, v48);
  v28 = swift_task_alloc();
  v0[42] = v28;
  *v28 = v0;
  v28[1] = sub_100627930;
  v29 = v0[7];

  return sub_100334168();
}

uint64_t sub_10062853C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100005C04;

  return sub_1006285F4(a1, a2, a4);
}

uint64_t sub_1006285F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_10097B1B0, &unk_10080DD40) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[17] = v7;
  v8 = *(v7 - 8);
  v4[18] = v8;
  v9 = *(v8 + 64) + 15;
  v4[19] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SFAirDrop.TransferIdentifier() - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v14 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v4[24] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v16 = *(*(type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v4[27] = v17;
  v18 = *(v17 - 8);
  v4[28] = v18;
  v19 = *(v18 + 64) + 15;
  v4[29] = swift_task_alloc();
  v20 = *(*(type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v21 = type metadata accessor for SFAirDropSend.Transfer.State();
  v4[31] = v21;
  v22 = *(v21 - 8);
  v4[32] = v22;
  v23 = *(v22 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v24 = *(*(sub_10028088C(&qword_10097B2B0, &unk_100808F70) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v25 = sub_10028088C(&qword_10097B2B8, &qword_1007FE670);
  v4[36] = v25;
  v26 = *(v25 - 8);
  v4[37] = v26;
  v27 = *(v26 + 64) + 15;
  v4[38] = swift_task_alloc();
  v28 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v4[39] = v28;
  v29 = *(v28 - 8);
  v4[40] = v29;
  v30 = *(v29 + 64) + 15;
  v4[41] = swift_task_alloc();
  v31 = type metadata accessor for SFAirDropSend.Transfer();
  v4[42] = v31;
  v32 = *(v31 - 8);
  v4[43] = v32;
  v4[44] = *(v32 + 64);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v33 = type metadata accessor for SFAirDrop.DeclineAction();
  v4[48] = v33;
  v34 = *(v33 - 8);
  v4[49] = v34;
  v35 = *(v34 + 64) + 15;
  v4[50] = swift_task_alloc();
  v36 = type metadata accessor for SFAirDrop.Progress();
  v4[51] = v36;
  v37 = *(v36 - 8);
  v4[52] = v37;
  v38 = *(v37 + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v39 = sub_10028088C(&qword_1009768F8, &unk_1008092B0);
  v4[55] = v39;
  v40 = *(v39 - 8);
  v4[56] = v40;
  v41 = *(v40 + 64) + 15;
  v4[57] = swift_task_alloc();
  v42 = type metadata accessor for SFAirDropSend.Request();
  v4[58] = v42;
  v43 = *(v42 - 8);
  v4[59] = v43;
  v44 = *(v43 + 64) + 15;
  v4[60] = swift_task_alloc();
  v45 = _s10AskRequestVMa();
  v4[61] = v45;
  v46 = *(*(v45 - 8) + 64) + 15;
  v4[62] = swift_task_alloc();
  v47 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v4[63] = swift_task_alloc();
  v48 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v4[64] = v48;
  v49 = *(v48 - 8);
  v4[65] = v49;
  v50 = *(v49 + 64) + 15;
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v51 = static AirDropActor.shared;
  v4[69] = static AirDropActor.shared;

  return _swift_task_switch(sub_100628D14, v51, 0);
}

uint64_t sub_100628D14()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v4 = *(v0[14] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints);

  CurrentValueSubject.value.getter();

  sub_1002FB3B4(v0[8], v3);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100005508(v0[63], &qword_1009763E0, &qword_1007F95D0);
LABEL_10:
    v20 = v0[14] + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing classroom endpoint or sendable urls", v23, 2u);
    }

    v24 = type metadata accessor for SFAirDropSend.Failure();
    sub_10062D080(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for SFAirDropSend.Failure.badRequest(_:), v24);
    swift_willThrow();
    v26 = v0[68];
    v27 = v0[67];
    v28 = v0[66];
    v30 = v0[62];
    v29 = v0[63];
    v31 = v0[60];
    v32 = v0[57];
    v34 = v0[53];
    v33 = v0[54];
    v35 = v0[50];
    v37 = v0[47];
    v38 = v0[46];
    v39 = v0[45];
    v40 = v0[41];
    v41 = v0[38];
    v42 = v0[35];
    v43 = v0[34];
    v44 = v0[33];
    v45 = v0[30];
    v46 = v0[29];
    v47 = v0[26];
    v48 = v0[25];
    v49 = v0[23];
    v50 = v0[20];
    v51 = v0[19];
    v52 = v0[16];
    v53 = v0[15];

    v36 = v0[1];

    return v36();
  }

  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[64];
  sub_10000ECA8(v0[63], v5, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1002940CC(v5, v6);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v19 = v0[67];
    sub_10062D020(v0[68], type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10062D020(v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    goto LABEL_10;
  }

  v8 = v0[12];
  v9 = *v0[67];
  v0[70] = v9;
  if (!*(v8 + 16))
  {
    sub_10062D020(v0[68], type metadata accessor for SDAirDropDiscoveredEndpoint);

    goto LABEL_10;
  }

  v10 = v0[13];
  v11 = v0[14];
  v12 = *(v11 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_urls);
  *(v11 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_urls) = v8;

  type metadata accessor for SDAirDropContentHandlerUtilities();
  v0[71] = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest;

  v13 = SFAirDropSend.Request.requestSource.getter();
  v15 = v14;
  v0[72] = v14;
  v16 = swift_task_alloc();
  v0[73] = v16;
  *v16 = v0;
  v16[1] = sub_100629208;
  v17 = v0[68];

  return sub_1003CEFE4(v10, v13, v15, v17);
}

uint64_t sub_100629208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 584);
  v8 = *v4;
  v6[74] = a1;
  v6[75] = a2;
  v6[76] = a3;
  v6[77] = v3;

  v9 = v5[72];
  v10 = v5[69];

  if (v3)
  {
    v11 = sub_10062AB54;
  }

  else
  {
    v11 = sub_100629364;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100629364()
{
  if (v0[74])
  {
    v1 = v0[76];
    v2 = v0[75];
    sub_1003C42B8(v0[74]);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v3 = v0[71];
  v4 = v0[68];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];
  v8 = v0[13];
  v9 = v0[14];
  swift_beginAccess();
  sub_1004037BC(v1);
  swift_endAccess();
  (*(v6 + 16))(v5, v9 + v3, v7);
  v10 = sub_10032B99C();
  v12 = v11;
  v13 = *(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus);

  v14 = swift_task_alloc();
  v0[78] = v14;
  *v14 = v0;
  v14[1] = sub_100629514;
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[62];
  v18 = v0[60];
  v21 = v0[76];

  return sub_1005A1C54(v17, v18, v10, v12, v13, v8, v16, v15);
}

uint64_t sub_100629514()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 632) = v0;

  v5 = *(v2 + 552);
  if (v0)
  {
    v6 = sub_10062AD44;
  }

  else
  {
    v6 = sub_100629640;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100629640()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  type metadata accessor for URL();
  v4 = v1;
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (*(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_bundleIdentifier + 8))
  {
    v6 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_bundleIdentifier);
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(v0 + 496) + *(*(v0 + 488) + 56));
  if (v8[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v10 = *v8;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v11 = *(v0 + 560);
  v12 = [v11 operationToSendItems:v5.super.isa fromBundleIdentifier:v7 description:0 previewImageData:isa];
  *(v0 + 640) = v12;

  if (v12)
  {
    v76 = *(v0 + 456);
    v13 = *(v0 + 432);
    v14 = *(v0 + 408);
    v15 = *(v0 + 416);
    v78 = *(v0 + 400);
    v16 = *(v0 + 368);
    v17 = *(v0 + 344);
    v72 = v16;
    v74 = *(v0 + 352);
    v18 = *(v0 + 328);
    v64 = *(v0 + 336);
    v66 = *(v0 + 376);
    v68 = *(v0 + 320);
    v70 = *(v0 + 312);
    v80 = *(v0 + 304);
    v19 = *(v0 + 112);
    (*(v15 + 104))(v13, enum case for SFAirDrop.Progress.notStarted(_:), v14);
    *(swift_allocObject() + 16) = v19;
    v20 = v19;
    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    withProgressTask<A, B>(_:initialProgress:operation:)();

    v21 = *(v15 + 8);
    *(v0 + 648) = v21;
    *(v0 + 656) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v13, v14);
    [v12 addTarget:v20 selector:"operationStartedWithOperation:" forOperationEvents:1];
    [v12 addTarget:v20 selector:"operationMadeProgressWithOperation:" forOperationEvents:8];
    [v12 addTarget:v20 selector:"operationEndedWithOperation:" forOperationEvents:6];
    [*&v20[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendOperationQueue] addOperation:v12];
    v22 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    *(v0 + 664) = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer;
    swift_beginAccess();
    v23 = *(v17 + 16);
    *(v0 + 672) = v23;
    *(v0 + 680) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v66, &v20[v22], v64);
    *v18 = 0x662E657261757173;
    v18[1] = 0xEB000000006C6C69;
    (*(v68 + 104))(v18, enum case for SFAirDrop.ButtonConfiguration.symbol(_:), v70);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23(v72, v66, v64);
    v25 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    (*(v17 + 32))(v26 + v25, v72, v64);

    SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
    v27 = *(v17 + 8);
    *(v0 + 688) = v27;
    *(v0 + 696) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v66, v64);

    SFProgressTask.makeAsyncIterator()();
    v28 = sub_10062D080(&qword_100977C00, type metadata accessor for AirDropActor);
    *(v0 + 704) = v28;
    *(v0 + 744) = enum case for SFAirDropSend.Transfer.State.transferring(_:);
    v29 = *(v0 + 552);
    v30 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v31 = swift_task_alloc();
    *(v0 + 712) = v31;
    *v31 = v0;
    v31[1] = sub_100629E5C;
    v32 = *(v0 + 304);
    v33 = *(v0 + 280);
    v34 = *(v0 + 288);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v33, v29, v28, v34, v0 + 72);
  }

  else
  {
    v35 = *(v0 + 112) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to start catalyst send", v38, 2u);
    }

    v39 = *(v0 + 560);
    v40 = *(v0 + 544);
    v41 = *(v0 + 496);

    v42 = type metadata accessor for SFAirDropSend.Failure();
    sub_10062D080(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, enum case for SFAirDropSend.Failure.badRequest(_:), v42);
    swift_willThrow();

    sub_10062D020(v40, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10062D020(v41, _s10AskRequestVMa);
    v44 = *(v0 + 544);
    v45 = *(v0 + 536);
    v46 = *(v0 + 528);
    v48 = *(v0 + 496);
    v47 = *(v0 + 504);
    v49 = *(v0 + 480);
    v50 = *(v0 + 456);
    v52 = *(v0 + 424);
    v51 = *(v0 + 432);
    v53 = *(v0 + 400);
    v56 = *(v0 + 376);
    v57 = *(v0 + 368);
    v58 = *(v0 + 360);
    v59 = *(v0 + 328);
    v60 = *(v0 + 304);
    v61 = *(v0 + 280);
    v62 = *(v0 + 272);
    v63 = *(v0 + 264);
    v65 = *(v0 + 240);
    v67 = *(v0 + 232);
    v69 = *(v0 + 208);
    v71 = *(v0 + 200);
    v73 = *(v0 + 184);
    v75 = *(v0 + 160);
    v77 = *(v0 + 152);
    v79 = *(v0 + 128);
    v81 = *(v0 + 120);

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_100629E5C()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v7 = *v1;

  v4 = *(v2 + 552);
  if (v0)
  {
    v5 = sub_10062AF34;
  }

  else
  {
    v5 = sub_100629F70;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100629F70()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 280);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    v4 = async function pointer to SFProgressTask.finalValue.getter[1];
    v5 = swift_task_alloc();
    *(v0 + 720) = v5;
    *v5 = v0;
    v5[1] = sub_10062A3C8;
    v6 = *(v0 + 456);
    v7 = *(v0 + 440);
    v8 = (v0 + 80);

    return SFProgressTask.finalValue.getter(v8, v7);
  }

  v9 = *(v0 + 544);
  v10 = *(v0 + 528);
  v11 = *(v0 + 512);
  (*(v2 + 32))(*(v0 + 424), v3, v1);
  sub_1002940CC(v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v0 + 528);
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = *(v0 + 208);
      sub_10000ECA8(v13, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v56 = *v14;
      v55 = v14[1];

      v19 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      v15 = *(v0 + 232);
      v14 = *(v0 + 240);
      v17 = *(v0 + 216);
      v16 = *(v0 + 224);
      sub_10000ECA8(v13, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      sub_10032C0AC();
      v56 = UUID.uuidString.getter();
      v55 = v18;
      (*(v16 + 8))(v15, v17);
      v19 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v20 = *(v0 + 192);
    v14 = *(v0 + 200);
    sub_10000ECA8(v13, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
    v21 = v14 + *(v20 + 20);
    v56 = UUID.uuidString.getter();
    v55 = v22;
    v19 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
LABEL_11:
    sub_10062D020(v14, v19);
    goto LABEL_14;
  }

  v23 = *v13;
  v8 = [*v13 identifier];
  if (!v8)
  {
    __break(1u);
    return SFProgressTask.finalValue.getter(v8, v7);
  }

  v24 = v8;
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v25;

LABEL_14:
  v49 = *(v0 + 744);
  v51 = *(v0 + 688);
  v52 = *(v0 + 696);
  v53 = *(v0 + 648);
  v54 = *(v0 + 656);
  v26 = *(v0 + 416);
  v27 = *(v0 + 424);
  v28 = *(v0 + 408);
  v29 = *(v0 + 392);
  v45 = *(v0 + 384);
  v46 = *(v0 + 400);
  v50 = *(v0 + 336);
  v30 = *(v0 + 272);
  v31 = *(v0 + 248);
  v32 = *(v0 + 256);
  v47 = *(v0 + 112);
  v48 = *(v0 + 360);
  v33 = sub_10028088C(&qword_10097B2C8, &qword_1007FE680);
  v34 = v33[12];
  v35 = (v30 + v33[16]);
  v36 = v33[20];
  *v30 = v56;
  *(v30 + 8) = v55;
  (*(v26 + 16))(v30 + v34, v27, v28);
  *v35 = 0;
  v35[1] = 0;
  (*(v29 + 16))(v30 + v36, v46, v45);
  (*(v32 + 104))(v30, v49, v31);
  sub_100335364(v30, v48);
  (*(v32 + 8))(v30, v31);
  v51(v48, v50);
  v53(v27, v28);
  v37 = *(v0 + 704);
  v38 = *(v0 + 552);
  v39 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v40 = swift_task_alloc();
  *(v0 + 712) = v40;
  *v40 = v0;
  v40[1] = sub_100629E5C;
  v41 = *(v0 + 304);
  v42 = *(v0 + 280);
  v43 = *(v0 + 288);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v42, v38, v37, v43, v0 + 72);
}

uint64_t sub_10062A3C8()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v9 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v4 = *(v2 + 552);
    v5 = sub_10062B1B4;
  }

  else
  {
    v6 = *(v2 + 552);
    v7 = *(v2 + 80);

    v5 = sub_10062A4F0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10062A4F0()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  v18 = v0[83];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[42];
  v26 = v0[33];
  v29 = v0[32];
  v30 = v0[31];
  v8 = v0[20];
  v27 = v0[21];
  v19 = v0[19];
  v20 = v0[23];
  v24 = v0[17];
  v25 = v0[22];
  v9 = v0[15];
  v21 = v0[16];
  v22 = v9;
  v23 = v0[18];
  v10 = v0[14];
  v28 = v0[11];
  v4(v5, v10 + v18, v7);
  SFAirDropSend.Transfer.id.getter();
  v2(v5, v7);
  v4(v6, v10 + v18, v7);
  SFAirDropSend.Transfer.startDate.getter();
  v2(v6, v7);
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  v11 = enum case for SFAirDropSend.Transfer.Metrics.TransferResult.success(_:);
  v12 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v21, v11, v12);
  (*(v13 + 56))(v21, 0, 1, v12);
  SFAirDropSend.Transfer.Metrics.result.setter();
  static Date.now.getter();
  (*(v23 + 56))(v22, 0, 1, v24);
  SFAirDropSend.Transfer.Metrics.endDate.setter();
  v14 = &v26[*(sub_10028088C(&qword_10097E9D0, &unk_1007FC200) + 48)];
  (*(v25 + 16))(v26, v20, v27);
  *v14 = 0;
  *(v14 + 1) = 0;
  (*(v29 + 104))(v26, enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:), v30);
  sub_100335364(v26, v28);
  (*(v29 + 8))(v26, v30);
  v15 = swift_task_alloc();
  v0[92] = v15;
  *v15 = v0;
  v15[1] = sub_10062A7D0;
  v16 = v0[14];

  return sub_100334168();
}

uint64_t sub_10062A7D0()
{
  v1 = *(*v0 + 736);
  v2 = *(*v0 + 552);
  v4 = *v0;

  return _swift_task_switch(sub_10062A8E0, v2, 0);
}

uint64_t sub_10062A8E0()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v15 = *(v0 + 536);
  v16 = *(v0 + 528);
  v17 = *(v0 + 504);
  v18 = *(v0 + 480);
  v3 = *(v0 + 448);
  v13 = *(v0 + 456);
  v14 = *(v0 + 496);
  v12 = *(v0 + 440);
  v19 = *(v0 + 432);
  v20 = *(v0 + 424);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = *(v0 + 384);
  v21 = *(v0 + 376);
  v22 = *(v0 + 368);
  v23 = *(v0 + 360);
  v24 = *(v0 + 328);
  v25 = *(v0 + 304);
  v26 = *(v0 + 280);
  v27 = *(v0 + 272);
  v28 = *(v0 + 264);
  v29 = *(v0 + 240);
  v30 = *(v0 + 232);
  v31 = *(v0 + 208);
  v32 = *(v0 + 200);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  v9 = *(v0 + 168);
  v33 = *(v0 + 160);
  v34 = *(v0 + 152);
  v35 = *(v0 + 128);
  v36 = *(v0 + 120);

  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v13, v12);
  sub_10062D020(v2, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10062D020(v14, _s10AskRequestVMa);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10062AB54()
{
  v1 = *(v0 + 544);

  sub_10062D020(v1, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v31 = *(v0 + 616);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v6 = *(v0 + 496);
  v5 = *(v0 + 504);
  v7 = *(v0 + 480);
  v8 = *(v0 + 456);
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v11 = *(v0 + 400);
  v14 = *(v0 + 376);
  v15 = *(v0 + 368);
  v16 = *(v0 + 360);
  v17 = *(v0 + 328);
  v18 = *(v0 + 304);
  v19 = *(v0 + 280);
  v20 = *(v0 + 272);
  v21 = *(v0 + 264);
  v22 = *(v0 + 240);
  v23 = *(v0 + 232);
  v24 = *(v0 + 208);
  v25 = *(v0 + 200);
  v26 = *(v0 + 184);
  v27 = *(v0 + 160);
  v28 = *(v0 + 152);
  v29 = *(v0 + 128);
  v30 = *(v0 + 120);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10062AD44()
{
  v1 = *(v0 + 544);

  sub_10062D020(v1, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v31 = *(v0 + 632);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v6 = *(v0 + 496);
  v5 = *(v0 + 504);
  v7 = *(v0 + 480);
  v8 = *(v0 + 456);
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v11 = *(v0 + 400);
  v14 = *(v0 + 376);
  v15 = *(v0 + 368);
  v16 = *(v0 + 360);
  v17 = *(v0 + 328);
  v18 = *(v0 + 304);
  v19 = *(v0 + 280);
  v20 = *(v0 + 272);
  v21 = *(v0 + 264);
  v22 = *(v0 + 240);
  v23 = *(v0 + 232);
  v24 = *(v0 + 208);
  v25 = *(v0 + 200);
  v26 = *(v0 + 184);
  v27 = *(v0 + 160);
  v28 = *(v0 + 152);
  v29 = *(v0 + 128);
  v30 = *(v0 + 120);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10062AF34()
{
  v1 = *(v0 + 560);
  v39 = *(v0 + 496);
  v41 = *(v0 + 544);
  v2 = *(v0 + 448);
  v37 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = *(v0 + 384);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  v9 = *(v0 + 288);

  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v37, v3);
  sub_10062D020(v41, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v42 = *(v0 + 72);
  sub_10062D020(v39, _s10AskRequestVMa);
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);
  v14 = *(v0 + 496);
  v13 = *(v0 + 504);
  v15 = *(v0 + 480);
  v16 = *(v0 + 456);
  v18 = *(v0 + 424);
  v17 = *(v0 + 432);
  v19 = *(v0 + 400);
  v22 = *(v0 + 376);
  v23 = *(v0 + 368);
  v24 = *(v0 + 360);
  v25 = *(v0 + 328);
  v26 = *(v0 + 304);
  v27 = *(v0 + 280);
  v28 = *(v0 + 272);
  v29 = *(v0 + 264);
  v30 = *(v0 + 240);
  v31 = *(v0 + 232);
  v32 = *(v0 + 208);
  v33 = *(v0 + 200);
  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = *(v0 + 152);
  v38 = *(v0 + 128);
  v40 = *(v0 + 120);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10062B1B4()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v3 = *(v0 + 496);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);
  v6 = *(v0 + 440);
  v8 = *(v0 + 392);
  v7 = *(v0 + 400);
  v9 = *(v0 + 384);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_10062D020(v2, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10062D020(v3, _s10AskRequestVMa);
  v39 = *(v0 + 728);
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);
  v14 = *(v0 + 496);
  v13 = *(v0 + 504);
  v15 = *(v0 + 480);
  v16 = *(v0 + 456);
  v18 = *(v0 + 424);
  v17 = *(v0 + 432);
  v19 = *(v0 + 400);
  v22 = *(v0 + 376);
  v23 = *(v0 + 368);
  v24 = *(v0 + 360);
  v25 = *(v0 + 328);
  v26 = *(v0 + 304);
  v27 = *(v0 + 280);
  v28 = *(v0 + 272);
  v29 = *(v0 + 264);
  v30 = *(v0 + 240);
  v31 = *(v0 + 232);
  v32 = *(v0 + 208);
  v33 = *(v0 + 200);
  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = *(v0 + 152);
  v37 = *(v0 + 128);
  v38 = *(v0 + 120);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10062B40C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_10028088C(&qword_100976928, &qword_1007F98A8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_10062B4E0, v4, 0);
}

uint64_t sub_10062B4E0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
  swift_beginAccess();
  sub_10062D0C8(v1, v2 + v6);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10062B60C(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = type metadata accessor for SFAirDrop.Progress();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = v2;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Classroom send progress", v16, 2u);
    v2 = v21;
  }

  v17 = [a1 totalUnitCount];
  v18 = [a1 completedUnitCount];
  *v13 = 0;
  *(v13 + 1) = v17;
  v13[16] = 0;
  *(v13 + 3) = v18;
  *(v13 + 4) = 0;
  (*(v10 + 104))(v13, enum case for SFAirDrop.Progress.transferring(_:), v9);
  v19 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
  swift_beginAccess();
  if ((*(v5 + 48))(v2 + v19, 1, v4))
  {
    (*(v10 + 8))(v13, v9);
    return swift_endAccess();
  }

  else
  {
    (*(v5 + 16))(v8, v2 + v19, v4);
    swift_endAccess();
    SFProgressContinuation.yield(_:)();
    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }
}

void sub_10062B920(void *a1)
{
  v3 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_urls);
  if (!v8)
  {
LABEL_4:
    v22 = [a1 error];
    sub_10062BBC4(v22);
    v12 = v22;

    return;
  }

  v9 = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_urls);

  v10 = [a1 error];
  if (v10)
  {
    v11 = v10;

    goto LABEL_4;
  }

  v13 = v1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Classroom send succeeded", v16, 2u);
  }

  v17 = *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager);
  v18 = *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
  ObjectType = swift_getObjectType();
  (*(v18 + 16))(2, ObjectType, v18);
  v20 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
  swift_beginAccess();
  if (!(*(v4 + 48))(v13 + v20, 1, v3))
  {
    (*(v4 + 16))(v7, v13 + v20, v3);
    v23 = v8;
    SFProgressContinuation.finish(with:)();
    (*(v4 + 8))(v7, v3);
  }
}

void sub_10062BBC4(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v31 - v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Classroom send failed", v11, 2u);
  }

  if (a1 && (v31[1] = a1, swift_errorRetain(), sub_10028088C(&unk_10097A930, &unk_1007F9050), sub_1004F42D4(), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v31[0];
    v13 = [v31[0] code];
    v14 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager);
    v15 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 16);
    v18 = (v5 + 48);
    if (v13 == 18)
    {
      v17(5, ObjectType, v15);
      v26 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
      swift_beginAccess();
      if (!(*v18)(v2 + v26, 1, v4))
      {
        (*(v5 + 16))(v8, v2 + v26, v4);
        v27 = type metadata accessor for SFAirDropSend.Failure();
        sub_10062D080(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
        swift_allocError();
        (*(*(v27 - 8) + 104))(v28, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v27);
        goto LABEL_13;
      }
    }

    else if (v13 == 404)
    {
      v17(4, ObjectType, v15);
      v19 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
      swift_beginAccess();
      if (!(*v18)(v2 + v19, 1, v4))
      {
        (*(v5 + 16))(v8, v2 + v19, v4);
        type metadata accessor for CancellationError();
        sub_10062D080(&unk_10097A6B0, &type metadata accessor for CancellationError);
        swift_allocError();
        CancellationError.init()();
LABEL_13:
        SFProgressContinuation.fail(with:)();

        goto LABEL_14;
      }
    }

    else
    {
      v17(4, ObjectType, v15);
      v29 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
      swift_beginAccess();
      if (!(*v18)(v2 + v29, 1, v4))
      {
        (*(v5 + 16))(v8, v2 + v29, v4);
        v30 = v12;
        SFProgressContinuation.fail(with:)();

        (*(v5 + 8))(v8, v4);
        return;
      }
    }
  }

  else
  {
    v20 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager);
    v21 = *(v2 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
    v22 = swift_getObjectType();
    (*(v21 + 16))(4, v22, v21);
    v23 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
    swift_beginAccess();
    if (!(*(v5 + 48))(v2 + v23, 1, v4))
    {
      (*(v5 + 16))(v8, v2 + v23, v4);
      v24 = type metadata accessor for SFAirDropSend.Failure();
      sub_10062D080(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, enum case for SFAirDropSend.Failure.badResponse(_:), v24);
      SFProgressContinuation.fail(with:)();
LABEL_14:
      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_10062C204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10062C224, 0, 0);
}

uint64_t sub_10062C224()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10062C2BC, v0, 0);
}

uint64_t sub_10062C2BC()
{
  v1 = *(v0 + 16);
  sub_10062B60C(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10062C33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10062C35C, 0, 0);
}

uint64_t sub_10062C35C()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_10062C3F4, v0, 0);
}

uint64_t sub_10062C3F4()
{
  v1 = *(v0 + 16);
  sub_10062B920(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10062C474(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a3;
  v14 = a3;
  v15 = a1;
  sub_1002B3098(0, 0, v11, a5, v13);
}

uint64_t sub_10062C580(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v37 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SFAirDropSend.Transfer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(Strong + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendOperationQueue);

    [v18 cancelAllOperations];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    (*(v12 + 16))(v15, result + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log, v11);

    (*(v7 + 16))(v10, a2, v6);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = v11;
      v24 = v23;
      v34 = v23;
      v35 = swift_slowAlloc();
      v40 = v35;
      *v24 = 136315138;
      v25 = v37;
      SFAirDropSend.Transfer.id.getter();
      sub_10062D080(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v26 = v39;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v22;
      v29 = v28;
      (*(v38 + 8))(v25, v26);
      (*(v7 + 8))(v10, v6);
      v30 = sub_10000C4E4(v27, v29, &v40);

      v31 = v34;
      *(v34 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v33, "Transfer %s was cancelled.", v31, 0xCu);
      sub_10000C60C(v35);

      return (*(v12 + 8))(v15, v36);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

uint64_t sub_10062C9AC()
{
  sub_100005508(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation, &qword_100976928, &qword_1007F98A8);
  v1 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_bundleIdentifier + 8);

  v2 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_urls);
}

uint64_t _s15ClassroomRunnerCMa_0()
{
  result = qword_1009873C0;
  if (!qword_1009873C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10062CAF4()
{
  sub_10062CBA8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10062CBA8()
{
  if (!qword_1009873D0)
  {
    sub_100280938(&qword_1009764E8, &qword_1007F9790);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1009873D0);
    }
  }
}

uint64_t sub_10062CC0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_10062C33C(a1, v4, v5, v7, v6);
}

uint64_t sub_10062CCCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10062C204(a1, v4, v5, v7, v6);
}

uint64_t sub_10062CD8C()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting classroom send", v4, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager);
  v5 = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 16))(1, ObjectType, v5);
}

uint64_t sub_10062CE6C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005C00;

  return sub_10062853C(a1, a2, v7, v6);
}

uint64_t sub_10062CF20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_10062B40C(a1, v4);
}

uint64_t sub_10062CFBC()
{
  v1 = *(type metadata accessor for SFAirDropSend.Transfer() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10062C580(v2, v3);
}

uint64_t sub_10062D020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10062D080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10062D0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976928, &qword_1007F98A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062D138@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NWInterface.InterfaceSubtype();
  v85 = *(v2 - 8);
  v86 = v2;
  v3 = *(v85 + 64);
  __chkstk_darwin(v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWInterface.InterfaceType();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10028088C(&qword_1009787B0, &qword_1007FB9A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v81 - v13;
  v15 = type metadata accessor for NWPath();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWConnection.currentPath.getter();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100005508(v14, &qword_1009787B0, &qword_1007FB9A0);
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_1009873E0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = a1;
    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Connection does not have a current path", v24, 2u);
      v23 = a1;
    }

    goto LABEL_7;
  }

  v83 = v16;
  v84 = a1;
  v26 = *(v16 + 32);
  v82 = v15;
  v26(v19, v14, v15);
  v27 = v7[13];
  v27(v10, enum case for NWInterface.InterfaceType.cellular(_:), v6);
  v28 = NWPath.usesInterfaceType(_:)();
  v29 = v7[1];
  v29(v10, v6);
  if (v28)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_1009873E0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v83;
    v23 = v84;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Current path is using a cellular interface type", v35, 2u);
    }

    (*(v34 + 8))(v19, v82);
    v25 = &enum case for SFNWInterfaceType.cellular(_:);
    goto LABEL_14;
  }

  v27(v10, enum case for NWInterface.InterfaceType.wiredEthernet(_:), v6);
  v39 = NWPath.usesInterfaceType(_:)();
  v29(v10, v6);
  if (v39)
  {
    v40 = NWPath.isDirect.getter();
    v41 = v83;
    v23 = v84;
    if (v40)
    {
      if (qword_100973B80 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000C4AC(v42, qword_1009873E0);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Current path is using a direct wired interface type", v45, 2u);
      }

      (*(v41 + 8))(v19, v82);
      v25 = &enum case for SFNWInterfaceType.directWired(_:);
    }

    else
    {
      if (qword_100973B80 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_10000C4AC(v58, qword_1009873E0);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "Current path is using a wired interface type", v61, 2u);
      }

      (*(v41 + 8))(v19, v82);
      v25 = &enum case for SFNWInterfaceType.wired(_:);
    }

    goto LABEL_14;
  }

  v27(v10, enum case for NWInterface.InterfaceType.wifi(_:), v6);
  v46 = NWPath.usesInterfaceType(_:)();
  v29(v10, v6);
  if ((v46 & 1) == 0)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_10000C4AC(v62, qword_1009873E0);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v83;
    v23 = v84;
    if (!v65)
    {
      goto LABEL_39;
    }

    v67 = swift_slowAlloc();
    *v67 = 0;
    v68 = "Current path is using an unknown interface subtype";
    goto LABEL_38;
  }

  v48 = v85;
  v47 = v86;
  v49 = *(v85 + 104);
  v49(v5, enum case for NWInterface.InterfaceSubtype.wifiAWDL(_:), v86);
  v50 = NWPath.usesInterfaceSubtype(_:)();
  v51 = *(v48 + 8);
  v51(v5, v47);
  if (v50)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_10000C4AC(v52, qword_1009873E0);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v83;
    v23 = v84;
    if (v55)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Current path is using an AWDL interface subtype", v57, 2u);
    }

    (*(v56 + 8))(v19, v82);
    v25 = &enum case for SFNWInterfaceType.awdl(_:);
    goto LABEL_14;
  }

  v49(v5, enum case for NWInterface.InterfaceSubtype.wifiInfrastructure(_:), v47);
  v69 = NWPath.usesInterfaceSubtype(_:)();
  v51(v5, v47);
  if ((v69 & 1) == 0)
  {
    v66 = v83;
    v23 = v84;
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_10000C4AC(v76, qword_1009873E0);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_39;
    }

    v67 = swift_slowAlloc();
    *v67 = 0;
    v68 = "Current path is using an unknown WiFi interface subtype";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v63, v64, v68, v67, 2u);

LABEL_39:

    (*(v66 + 8))(v19, v82);
LABEL_7:
    v25 = &enum case for SFNWInterfaceType.other(_:);
    goto LABEL_14;
  }

  v70 = NWPath.isDirect.getter();
  v71 = v83;
  v23 = v84;
  if (v70)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000C4AC(v72, qword_1009873E0);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Current path is using a local WiFi interface subtype", v75, 2u);
    }

    (*(v71 + 8))(v19, v82);
    v25 = &enum case for SFNWInterfaceType.localWiFi(_:);
  }

  else
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_10000C4AC(v77, qword_1009873E0);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "Current path is using a WiFi interface subtype", v80, 2u);
    }

    (*(v71 + 8))(v19, v82);
    v25 = &enum case for SFNWInterfaceType.wifi(_:);
  }

LABEL_14:
  v36 = *v25;
  v37 = type metadata accessor for SFNWInterfaceType();
  return (*(*(v37 - 8) + 104))(v23, v36, v37);
}

uint64_t sub_10062DCB4()
{
  v0 = swift_slowAlloc();
  *v0 = 0;
  v0[1] = 0;
  sub_10032BCF4();
  nw_endpoint_set_agent_identifier();
  swift_unknownObjectRelease();
}

void sub_10062DD18(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a2 && a4 && a6)
  {
    _StringGuts.grow(_:)(19);

    v26[0] = 0x70706F7264726961;
    v26[1] = 0xEB000000003A6F72;
    v12._countAndFlagsBits = a3;
    v12._object = a4;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 58;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = a5;
    v14._object = a6;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_1009873E0);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_10000C4E4(0x70706F7264726961, 0xEB000000003A6F72, v26);
      _os_log_impl(&_mh_execute_header, v18, v19, "Setting Internet fallback endpoint with alias: %s", v20, 0xCu);
      sub_10000C60C(v21);
    }

    String.utf8CString.getter();

    nw_endpoint_create_application_service_with_alias();

    NWConnection.nw.getter();
    nw_connection_set_internet_fallback_endpoint();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_1009873E0);
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v23, "Cannot set Internet fallback endpoint", v24, 2u);
    }
  }
}

uint64_t sub_10062E05C(NSObject *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a6;
  v52 = a7;
  v50 = a4;
  v53 = a1;
  v54 = a2;
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NWInterface.InterfaceSubtype();
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002940CC(v7, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v27 = type metadata accessor for NWProtocolTCP.Options();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v49 = NWProtocolTCP.Options.init()();
      dispatch thunk of NWProtocolTCP.Options.enableFastOpen.setter();
      v30 = type metadata accessor for NWProtocolTLS.Options();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      NWProtocolTLS.Options.init()();
      v33 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
      sec_protocol_options_set_peer_authentication_required(v33, 0);
      swift_unknownObjectRelease();
      v34 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
      v60 = v50;
      v61 = a5;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_10062FDCC;
      v59 = &unk_1008EC238;
      v35 = _Block_copy(&aBlock);

      v36 = v53;
      sec_protocol_options_set_verify_block(v34, v35, v53);
      _Block_release(v35);
      swift_unknownObjectRelease();
      v37 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
      v60 = v51;
      v61 = v52;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1003CB76C;
      v59 = &unk_1008EC260;
      v38 = _Block_copy(&aBlock);

      sec_protocol_options_set_challenge_block(v37, v38, v36);
      _Block_release(v38);
      swift_unknownObjectRelease();
      dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
      sec_protocol_options_set_nw_protocol_joining_context();
      swift_unknownObjectRelease();
      type metadata accessor for NWParameters();

      v23 = NWParameters.__allocating_init(tls:tcp:)();
      (*(v55 + 104))(v17, enum case for NWInterface.InterfaceSubtype.wifiAWDL(_:), v14);
      NWParameters.requiredInterfaceSubtype.setter();
      NWParameters.allowLocalEndpointReuse.setter();
      NWParameters.includePeerToPeer.setter();
      NWParameters.preferNoProxies.setter();
      options = nw_http_messaging_create_options();
      nw_http1_set_idle_timeout();
      v40 = NWParameters.nw.getter();
      v41 = nw_parameters_copy_default_protocol_stack(v40);
      swift_unknownObjectRelease();
      nw_protocol_stack_prepend_application_protocol(v41, options);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      NWParameters.nw.getter();
      nw_parameters_set_server_mode();
      swift_unknownObjectRelease();
      NWParameters.nw.getter();
      AirDropID.getter();
      String.utf8CString.getter();

      nw_parameters_set_account_id();
      swift_unknownObjectRelease();

      v24 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      v23 = sub_100636E0C(a3 & 1, 0);
      v24 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    v25 = v24;
    v26 = v21;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1006384F0(v21, v13);
    v23 = sub_100636E0C(a3 & 1, *&v13[*(v10 + 24)]);
    v25 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v26 = v13;
LABEL_8:
    sub_1002F96B0(v26, v25);
    return v23;
  }

  sub_1002F96B0(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000C4AC(v42, qword_1009873E0);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Classroom not applicable for SDNWParameters", v45, 2u);
  }

  v46 = type metadata accessor for SFAirDropSend.Failure();
  sub_100638428(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  v23 = swift_allocError();
  (*(*(v46 - 8) + 104))(v47, enum case for SFAirDropSend.Failure.badRequest(_:), v46);
  swift_willThrow();
  return v23;
}

void __swiftcall IPv6Address.copy_sockaddr_in6()(sockaddr_in6 *__return_ptr retstr)
{
  v1 = sub_10028088C(&qword_1009787A8, &unk_1007FB990);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v23 - v3;
  v5 = IPv6Address.rawValue.getter();
  v7 = v5;
  v8 = v6;
  v9 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    if (v5 > v5 >> 32)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
LABEL_27:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_28;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v17))
    {
      goto LABEL_24;
    }

    v14 = (v7 - v17 + v16);
    __DataStorage._length.getter();
    if (!v14)
    {
LABEL_28:
      __break(1u);
      return;
    }

LABEL_13:
    v18 = *v14;
    v19 = v14[1];
    sub_100026AC0(v7, v8);
    goto LABEL_15;
  }

  if (v9 == 2)
  {
    v10 = *(v5 + 16);
    v11 = __DataStorage._bytes.getter();
    if (!v11)
    {
LABEL_25:
      __DataStorage._length.getter();
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v12 = v11;
    v13 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v13))
    {
      goto LABEL_23;
    }

    v14 = (v10 - v13 + v12);
    __DataStorage._length.getter();
    if (!v14)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

LABEL_14:
  sub_100026AC0(v5, v6);
LABEL_15:
  IPv6Address.interface.getter();
  v20 = type metadata accessor for NWInterface();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v4, 1, v20) == 1)
  {
    sub_100005508(v4, &qword_1009787A8, &unk_1007FB990);
    return;
  }

  v22 = NWInterface.index.getter();
  (*(v21 + 8))(v4, v20);
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v22))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

SecTrustRef sub_10062E930()
{
  v0 = NWConnection.nw.getter();
  v1 = nw_protocol_copy_tls_definition();
  v2 = nw_connection_copy_protocol_metadata(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v2)
  {
    nw_tls_copy_sec_protocol_metadata(v2);
    v3 = sec_protocol_metadata_copy_sec_trust();
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = sec_trust_copy_ref(v3);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v4;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_10062E9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v50 = sub_10028088C(&qword_100987400, &qword_10080DDD0);
  v7 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v51 = &v47 - v8;
  v9 = type metadata accessor for SHA256();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  __chkstk_darwin(v9);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  __chkstk_darwin(v12);
  v52 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.Encoding();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v47 - v22;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a2;
  v57 = a3;
  sub_100443CC4(a1, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {

    sub_100005508(v23, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    (*(v25 + 32))(v28, v23, v24);

    v29._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v29);

    (*(v25 + 8))(v28, v24);
  }

  static String.Encoding.utf8.getter();
  v30 = String.data(using:allowLossyConversion:)();
  v32 = v31;

  (*(v16 + 8))(v19, v15);
  if (v32 >> 60 == 15)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000C4AC(v33, qword_1009873E0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to create combined UUID string", v36, 2u);
    }

    return UUID.init()();
  }

  else
  {
    sub_100638428(&unk_100983280, &type metadata accessor for SHA256);
    v38 = v47;
    v39 = v49;
    dispatch thunk of HashFunction.init()();
    sub_100294008(v30, v32);
    sub_100635718(v30, v32);
    sub_10028BCC0(v30, v32);
    v40 = v52;
    dispatch thunk of HashFunction.finalize()();
    (*(v48 + 8))(v38, v39);
    v42 = v53;
    v41 = v54;
    v43 = v51;
    (*(v53 + 16))(v51, v40, v54);
    *(v43 + *(v50 + 36)) = 16;
    v44 = sub_100635BB8(v43);
    sub_100005508(v43, &qword_100987400, &qword_10080DDD0);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1002D64BC(v44);
      v44 = result;
    }

    v45 = *(v44 + 16);
    if (v45 < 7)
    {
      __break(1u);
    }

    else
    {
      *(v44 + 38) = *(v44 + 38) & 0xF | 0x50;
      if (v45 >= 9)
      {
        *(v44 + 40) = *(v44 + 40) & 0x3F | 0x80;
        v46 = [objc_allocWithZone(NSUUID) initWithUUIDBytes:v44 + 32];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028BCC0(v30, v32);
        return (*(v42 + 8))(v40, v41);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10062F040@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  NWEndpoint.endpointUUID()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  v18 = v12;
  v19 = *(v8 + 8);
  v19(v18, v7);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v20 = v14;
  sub_10062E9D8(v6, v15, v17, v14);

  sub_100005508(v6, &unk_100976120, &qword_1007F9260);
  application_service = nw_endpoint_create_application_service();
  if (!NWEndpoint.nw.getter())
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  device_id = nw_endpoint_get_device_id();
  swift_unknownObjectRelease();
  if (device_id)
  {
    nw_endpoint_set_device_id();
  }

  if (!NWEndpoint.nw.getter())
  {
    goto LABEL_18;
  }

  device_name = nw_endpoint_get_device_name();
  swift_unknownObjectRelease();
  if (device_name)
  {
    nw_endpoint_set_device_name();
  }

  if (!NWEndpoint.nw.getter())
  {
    goto LABEL_19;
  }

  device_model = nw_endpoint_get_device_model();
  swift_unknownObjectRelease();
  if (device_model)
  {
    nw_endpoint_set_device_model();
  }

  if (!NWEndpoint.nw.getter())
  {
    goto LABEL_20;
  }

  contact_id = nw_endpoint_get_contact_id();
  swift_unknownObjectRelease();
  if (contact_id)
  {
    nw_endpoint_set_contact_id();
  }

  v26 = NWEndpoint.nw.getter();
  if (!v26)
  {
LABEL_21:
    __break(1u);
  }

  v27 = nw_endpoint_copy_txt_record(v26);
  swift_unknownObjectRelease();
  if (v27)
  {
    nw_endpoint_set_txt_record();
    swift_unknownObjectRelease();
  }

  v28 = v32;
  *v32 = application_service;
  v29 = enum case for NWEndpoint.opaque(_:);
  v30 = type metadata accessor for NWEndpoint();
  (*(*(v30 - 8) + 104))(v28, v29, v30);
  return (v19)(v20, v7);
}

uint64_t sub_10062F3D4@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v41 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v39 = *(v41 - 8);
  v2 = *(v39 + 64);
  __chkstk_darwin(v41);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SFAirDrop.TXTRecord();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  __chkstk_darwin(v4);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for NWEndpoint();
  v45 = *(v47 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v38 = *(v42 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(v42);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropReceive.AskRequest.senderID.getter();
  UUID.init(uuidString:)();

  v24 = *(v20 + 48);
  v25 = v24(v18, 1, v19);
  v43 = v1;
  if (v25 == 1)
  {
    SFAirDropReceive.AskRequest.id.getter();
    v26 = SFAirDrop.TransferIdentifier.stringValue.getter();
    v28 = v27;
    (*(v38 + 8))(v11, v42);
    (*(v20 + 56))(v16, 1, 1, v19);
    sub_10062E9D8(v16, v26, v28, v23);

    sub_100005508(v16, &unk_100976120, &qword_1007F9260);
    v29 = v20;
    if (v24(v18, 1, v19) != 1)
    {
      sub_100005508(v18, &unk_100976120, &qword_1007F9260);
    }
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    v29 = v20;
  }

  v42 = v23;
  application_service = nw_endpoint_create_application_service();
  v32 = v44;
  v31 = v45;
  *v44 = application_service;
  v33 = v47;
  (*(v31 + 104))(v32, enum case for NWEndpoint.opaque(_:), v47);
  v34 = NWEndpoint.nw.getter();
  v35 = v46;
  if (v34)
  {
    if (SFAirDropReceive.AskRequest.senderIsMe.getter())
    {
      (*(v39 + 104))(v40, enum case for SFAirDrop.DeviceRelationship.sameAccount(_:), v41);
      SFAirDrop.TXTRecord.init(deviceRelationship:)();
      SFAirDrop.TXTRecord.addToEndpoint(_:)();
      SFAirDropReceive.AskRequest.senderComputerName.getter();
      String.utf8CString.getter();

      nw_endpoint_set_device_name();

      SFAirDropReceive.AskRequest.senderModelName.getter();
      String.utf8CString.getter();

      nw_endpoint_set_device_model();
    }

    else
    {
      v38 = v29;
      SFAirDropReceive.AskRequest.contactIdentifier.getter();
      if (v36)
      {
        (*(v39 + 104))(v40, enum case for SFAirDrop.DeviceRelationship.contact(_:), v41);
        SFAirDrop.TXTRecord.init(deviceRelationship:)();
        SFAirDrop.TXTRecord.addToEndpoint(_:)();
        String.utf8CString.getter();

        nw_endpoint_set_contact_id();
      }

      else
      {
        (*(v39 + 104))(v40, enum case for SFAirDrop.DeviceRelationship.stranger(_:), v41);
        SFAirDrop.TXTRecord.init(deviceRelationship:)();
        SFAirDrop.TXTRecord.addToEndpoint(_:)();
        SFAirDropReceive.AskRequest.senderComputerName.getter();
        String.utf8CString.getter();

        nw_endpoint_set_device_name();
      }

      v29 = v38;
    }

    swift_unknownObjectRelease();
    (*(v48 + 8))(v35, v49);

    (*(v31 + 32))(v50, v32, v33);
    return (*(v29 + 8))(v42, v19);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10062FAF4()
{
  v1 = type metadata accessor for NWEndpoint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!NWEndpoint.nw.getter())
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_1009873E0);
    (*(v2 + 16))(v5, v0, v1);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      v17 = NWEndpoint.debugDescription.getter();
      v19 = v18;
      (*(v2 + 8))(v5, v1);
      v20 = sub_10000C4E4(v17, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not convert endpoint %s to nwEndpoint!", v15, 0xCu);
      sub_10000C60C(v16);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
    }

    return 0;
  }

  contact_id = nw_endpoint_get_contact_id();
  device_model = nw_endpoint_get_device_model();
  device_name = nw_endpoint_get_device_name();
  if (contact_id)
  {
    String.init(cString:)();
    contact_id = v9;
  }

  if (device_model)
  {
    String.init(cString:)();
    device_model = v10;
  }

  if (device_name)
  {
    String.init(cString:)();
    device_name = v11;
  }

  swift_unknownObjectRelease();
  if (!contact_id)
  {
    if (device_model)
    {

      goto LABEL_19;
    }

    if (device_name)
    {
      goto LABEL_19;
    }

    return 0;
  }

LABEL_19:

  return 1;
}

uint64_t sub_10062FDCC(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(a2, a3, sub_1004B2790, v9);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_10062FEA4()
{
  v50 = type metadata accessor for NWTXTRecord();
  v0 = *(v50 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v50);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWBrowser.Result.Metadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&qword_100987520, &qword_10080DE20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for NWTXTRecord.Entry();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v51 = &v49 - v19;
  NWBrowser.Result.metadata.getter();
  v20 = (*(v5 + 88))(v8, v4);
  if (v20 == enum case for NWBrowser.Result.Metadata.bonjour(_:))
  {
    (*(v5 + 96))(v8, v4);
    v21 = v50;
    (*(v0 + 32))(v3, v8, v50);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    NWTXTRecord.getEntry(for:)();

    (*(v0 + 8))(v3, v21);
    v22 = v14;
  }

  else
  {
    v23 = v20;
    v24 = enum case for NWBrowser.Result.Metadata.none(_:);
    (*(v14 + 56))(v12, 1, 1, v13);
    v22 = v14;
    if (v23 != v24)
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  if ((*(v22 + 48))(v12, 1, v13) == 1)
  {
    sub_100005508(v12, &qword_100987520, &qword_10080DE20);
    return 0;
  }

  v25 = v51;
  (*(v22 + 32))(v51, v12, v13);
  (*(v22 + 16))(v18, v25, v13);
  if ((*(v22 + 88))(v18, v13) != enum case for NWTXTRecord.Entry.string(_:))
  {
    v36 = *(v22 + 8);
    v36(v25, v13);
    v36(v18, v13);
    return 0;
  }

  (*(v22 + 96))(v18, v13);
  result = *v18;
  v27 = v18[1];
  v28 = HIBYTE(v27) & 0xF;
  v29 = *v18 & 0xFFFFFFFFFFFFLL;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v30 = *v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
    (*(v22 + 8))(v25, v13);

    return 0;
  }

  if ((v27 & 0x1000000000000000) != 0)
  {
    v53 = 0;
    v32 = sub_1003304C8(result, v27, 10);
    v46 = v47;
    goto LABEL_73;
  }

  if ((v27 & 0x2000000000000000) != 0)
  {
    v52[0] = *v18;
    v52[1] = v27 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v28)
      {
        if (--v28)
        {
          v32 = 0;
          v41 = v52 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            if (!is_mul_ok(v32, 0xAuLL))
            {
              break;
            }

            v35 = __CFADD__(10 * v32, v42);
            v32 = 10 * v32 + v42;
            if (v35)
            {
              break;
            }

            ++v41;
            if (!--v28)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

LABEL_82:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v28)
      {
        v32 = 0;
        v44 = v52;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          if (!is_mul_ok(v32, 0xAuLL))
          {
            break;
          }

          v35 = __CFADD__(10 * v32, v45);
          v32 = 10 * v32 + v45;
          if (v35)
          {
            break;
          }

          ++v44;
          if (!--v28)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v28)
    {
      if (--v28)
      {
        v32 = 0;
        v37 = v52 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          if (!is_mul_ok(v32, 0xAuLL))
          {
            break;
          }

          v35 = 10 * v32 >= v38;
          v32 = 10 * v32 - v38;
          if (!v35)
          {
            break;
          }

          ++v37;
          if (!--v28)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v27 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v48 = v18[1];
    result = _StringObject.sharedUTF8.getter();
  }

  v31 = *result;
  if (v31 == 43)
  {
    if (v29 < 1)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v28 = v29 - 1;
    if (v29 != 1)
    {
      v32 = 0;
      if (result)
      {
        v39 = (result + 1);
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            goto LABEL_71;
          }

          if (!is_mul_ok(v32, 0xAuLL))
          {
            goto LABEL_71;
          }

          v35 = __CFADD__(10 * v32, v40);
          v32 = 10 * v32 + v40;
          if (v35)
          {
            goto LABEL_71;
          }

          ++v39;
          if (!--v28)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_63;
    }

LABEL_71:
    v32 = 0;
    LOBYTE(v28) = 1;
    goto LABEL_72;
  }

  if (v31 != 45)
  {
    if (v29)
    {
      v32 = 0;
      if (result)
      {
        while (1)
        {
          v43 = *result - 48;
          if (v43 > 9)
          {
            goto LABEL_71;
          }

          if (!is_mul_ok(v32, 0xAuLL))
          {
            goto LABEL_71;
          }

          v35 = __CFADD__(10 * v32, v43);
          v32 = 10 * v32 + v43;
          if (v35)
          {
            goto LABEL_71;
          }

          ++result;
          if (!--v29)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v29 < 1)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v28 = v29 - 1;
  if (v29 == 1)
  {
    goto LABEL_71;
  }

  v32 = 0;
  if (result)
  {
    v33 = (result + 1);
    while (1)
    {
      v34 = *v33 - 48;
      if (v34 > 9)
      {
        goto LABEL_71;
      }

      if (!is_mul_ok(v32, 0xAuLL))
      {
        goto LABEL_71;
      }

      v35 = 10 * v32 >= v34;
      v32 = 10 * v32 - v34;
      if (!v35)
      {
        goto LABEL_71;
      }

      ++v33;
      if (!--v28)
      {
        goto LABEL_72;
      }
    }
  }

LABEL_63:
  LOBYTE(v28) = 0;
LABEL_72:
  v53 = v28;
  v46 = v28;
LABEL_73:
  (*(v22 + 8))(v25, v13);

  if (v46)
  {
    return 0;
  }

  return v32;
}

uint64_t sub_1006305DC()
{
  v0 = type metadata accessor for NWInterface();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NWBrowser.Result.interfaces.getter();
  v6 = result;
  v7 = 0;
  v13 = *(result + 16);
  v8 = (v1 + 8);
  while (1)
  {
    v10 = v7;
    if (v13 == v7)
    {
      goto LABEL_8;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    (*(v1 + 16))(v4, v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v7, v0);
    if (NWInterface.name.getter() == 0x306C647761 && v11 == 0xE500000000000000)
    {

      (*v8)(v4, v0);
LABEL_8:

      return v13 != v10;
    }

    ++v7;
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v8)(v4, v0);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006307B0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009873E0);
  v1 = sub_10000C4AC(v0, qword_1009873E0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100630930@<X0>(uint64_t a1@<X8>)
{
  String.utf8CString.getter();
  v2 = nw_interface_create_with_name();

  if (v2)
  {
    swift_unknownObjectRelease();
    String.utf8CString.getter();
    v3 = nw_interface_create_with_name();

    if (v3)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (IsAppleInternalBuild())
  {
    String.utf8CString.getter();
    v4 = nw_interface_create_with_name();

    if (v4)
    {
      swift_unknownObjectRelease();
      String.utf8CString.getter();
      v5 = nw_interface_create_with_name();

      if (v5)
      {
        goto LABEL_13;
      }

      __break(1u);
    }
  }

  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009873E0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to initialize nw_interface, defaulting to loopback", v9, 2u);
  }

  String.utf8CString.getter();
  v10 = nw_interface_create_with_name();

  if (!v10)
  {
    __break(1u);
    return result;
  }

LABEL_13:
  NWInterface.init(_:)();
  v12 = type metadata accessor for NWInterface();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 0, 1, v12);
}

uint64_t sub_100630B74(NSObject *a1, _BYTE *a2, void (*a3)(NSObject *, uint64_t))
{
  result = nw_protocol_options_is_quic(a1);
  if (result && (*a2 & 1) == 0)
  {
    v7 = nw_quic_copy_sec_protocol_options(a1);
    sub_10039D0AC();
    v8 = static NSUserDefaults.airdrop.getter();
    v9 = SFAirDropUserDefaults.finalALPN.getter();

    if (v9)
    {
      sec_protocol_options_clear_tls_application_protocols();
    }

    sec_protocol_options_add_tls_application_protocol(v7, "h3");
    type metadata accessor for SFAirDropUserDefaults();
    v10 = static SFAirDropUserDefaults.shared.getter();
    v11 = SFAirDropUserDefaults.quicIdleTimeout.getter();

    nw_quic_set_idle_timeout(a1, v11);
    a3(a1, 1);
    result = swift_unknownObjectRelease();
    *a2 = 1;
  }

  return result;
}

Swift::Int sub_100630C74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10080E0D8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100630CFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_10080E0D8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100630D48@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100638250(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100630DAC()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 8;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_10028088C(&qword_100987528, &qword_10080DE38);
  *v4 = v0;
  v4[1] = sub_100630EB8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x800000010079A1F0, sub_100638718, v2, v5);
}

uint64_t sub_100630EB8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_100631168;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100630FD4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100630FD4()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    v2 = type metadata accessor for SFAirDropSend.Failure();
    sub_100638428(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for SFAirDropSend.Failure.badResponse(_:), v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[2];
    v7 = v0[9];
    v8 = v0[3];
    Data.withUnsafeBytes<A, B>(_:)();
    sub_10028BCC0(v6, v1);
    v9 = v0[5];
    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_100631168()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1006311CC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return _swift_task_switch(sub_1006311F0, 0, 0);
}

uint64_t sub_1006311F0()
{
  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000C4AC(v1, qword_1009873E0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting data stream, expecting %ld", v5, 0xCu);
  }

  *(v0 + 88) = xmmword_1007FAD30;
  v6 = *(v0 + 120);
  if (*(v0 + 104) >= *(v0 + 112))
  {
    v7 = *(v0 + 112);
  }

  else
  {
    v7 = *(v0 + 104);
  }

  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  v11 = sub_10028088C(&qword_100987528, &qword_10080DE38);
  *v10 = v0;
  v10[1] = sub_1006313D8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 64, 0, 0, 0xD000000000000014, 0x800000010079A1F0, sub_100638348, v8, v11);
}

uint64_t sub_1006313D8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;

  v5 = *(v2 + 136);
  if (v0)
  {

    v6 = sub_1006319D0;
  }

  else
  {

    v6 = sub_100631520;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100631520()
{
  v54 = v0;
  v1 = v0[8];
  v2 = v0[9];
  if (v2 >> 60 == 15)
  {
    goto LABEL_20;
  }

  v3 = v0[16];
  sub_100294008(v0[8], v0[9]);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_10028BCC0(v1, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v53 = v7;
    *v6 = 136315138;
    sub_100294008(v1, v2);
    v8 = Data.description.getter();
    v10 = v9;
    sub_10028BCC0(v1, v2);
    v11 = sub_10000C4E4(v8, v10, &v53);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received %s bytes", v6, 0xCu);
    sub_10000C60C(v7);
  }

  Data.append(_:)();
  v12 = sub_10028BCC0(v1, v2);
  v20 = v0[11];
  v21 = v0[12];
  v22 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (!v22)
    {
      v23 = BYTE6(v21);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v22 == 2)
  {
    v25 = *(v20 + 16);
    v24 = *(v20 + 24);
    v26 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (!v26)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(v20), v20))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v23 = HIDWORD(v20) - v20;
LABEL_13:
    v27 = v0[13];
    if (v23 < v27)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          v26 = __OFSUB__(HIDWORD(v20), v20);
          LODWORD(v20) = HIDWORD(v20) - v20;
          if (v26)
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v20 = v20;
        }

        else
        {
          v45 = v20 + 16;
          v43 = *(v20 + 16);
          v44 = *(v45 + 8);
          v26 = __OFSUB__(v44, v43);
          v20 = v44 - v43;
          if (v26)
          {
LABEL_37:
            __break(1u);
            return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
          }
        }
      }

      else
      {
        v20 = BYTE6(v21);
      }

      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v27 = v0[13];
  if (v27 > 0)
  {
    v20 = 0;
LABEL_27:
    v26 = __OFSUB__(v27, v20);
    v46 = v27 - v20;
    if (!v26)
    {
      v47 = v0[15];
      if (v46 >= v0[14])
      {
        v48 = v0[14];
      }

      else
      {
        v48 = v46;
      }

      v49 = swift_task_alloc();
      v0[17] = v49;
      *(v49 + 16) = v47;
      *(v49 + 24) = v48;
      v50 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v51 = swift_task_alloc();
      v0[18] = v51;
      v19 = sub_10028088C(&qword_100987528, &qword_10080DE38);
      *v51 = v0;
      v51[1] = sub_1006313D8;
      v17 = sub_100638348;
      v16 = 0x800000010079A1F0;
      v12 = (v0 + 8);
      v13 = 0;
      v14 = 0;
      v15 = 0xD000000000000014;
      v18 = v49;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_20:
  v28 = v0[16];
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v52 = v0[13];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v53 = v32;
    *v31 = 136315394;
    swift_beginAccess();
    v33 = v0[11];
    v34 = v0[12];
    sub_100294008(v33, v34);
    v35 = Data.description.getter();
    v37 = v36;
    sub_100026AC0(v33, v34);
    v38 = sub_10000C4E4(v35, v37, &v53);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2048;
    *(v31 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v29, v30, "Received %s bytes of total %ld", v31, 0x16u);
    sub_10000C60C(v32);
  }

  swift_beginAccess();
  v40 = v0[11];
  v39 = v0[12];
  sub_100294008(v40, v39);
  sub_100026AC0(v40, v39);
  v41 = v0[1];

  return v41(v40, v39);
}

uint64_t sub_1006319D0()
{
  v18 = v0;
  v1 = v0[16];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    swift_beginAccess();
    v7 = v0[11];
    v8 = v0[12];
    sub_100294008(v7, v8);
    v9 = Data.description.getter();
    v11 = v10;
    sub_100026AC0(v7, v8);
    v12 = sub_10000C4E4(v9, v11, &v17);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received %s bytes of total %ld", v5, 0x16u);
    sub_10000C60C(v6);
  }

  swift_beginAccess();
  v14 = v0[11];
  v13 = v0[12];
  sub_100294008(v14, v13);
  sub_100026AC0(v14, v13);
  v15 = v0[1];

  return v15(v14, v13);
}

uint64_t sub_100631B9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_10028088C(&unk_100987530, &qword_10080DE40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  result = NWConnection.nw.getter();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    v11 = result;
    (*(v6 + 16))(v9, a1, v5);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    (*(v6 + 32))(v13 + v12, v9, v5);
    aBlock[4] = sub_100638350;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100631EC8;
    aBlock[3] = &unk_1008EC1C0;
    v14 = _Block_copy(aBlock);

    nw_connection_receive(v11, a3, a3, v14);
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_100631D74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = swift_unknownObjectRetain();
    v5 = nw_error_copy_cf_error(v4);
    type metadata accessor for CFError(0);
    sub_100638428(&unk_100987420, type metadata accessor for CFError);
    swift_allocError();
    *v6 = v5;
    sub_10028088C(&unk_100987530, &qword_10080DE40);
    CheckedContinuation.resume(throwing:)();
    return swift_unknownObjectRelease();
  }

  else
  {
    if (a1)
    {
      v8 = a1;
      swift_dynamicCast();
    }

    sub_10028088C(&unk_100987530, &qword_10080DE40);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100631EC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v11 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_100631F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;

  return _swift_task_switch(sub_10063200C, 0, 0);
}

uint64_t sub_10063200C()
{
  v1 = *(v0 + 32);
  v2 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(v1);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
    v3 = 0;
    goto LABEL_11;
  }

  v4 = *(*(v0 + 24) + 16);
  v5 = *(*(v0 + 24) + 24);
  v6 = __OFSUB__(v5, v4);
  v3 = v5 - v4;
  if (v6)
  {
    __break(1u);
LABEL_8:
    v7 = *(v0 + 24);
    v8 = *(v0 + 28);
    v6 = __OFSUB__(v8, v7);
    LODWORD(v3) = v8 - v7;
    if (v6)
    {
      __break(1u);
    }

    v3 = v3;
  }

LABEL_11:
  v9 = *(v0 + 48);
  *(v0 + 16) = v3;
  v10 = sub_1005698E0(v0 + 16, v0 + 24);
  v12 = v11;
  *(v0 + 56) = v10;
  *(v0 + 64) = v11;
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(v13 + 32) = 0;
  *(v13 + 40) = v9;
  v14 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_1006321AC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v15, 0, 0, 0xD000000000000016, 0x800000010079A210, sub_100638470, v13, &type metadata for () + 8);
}

uint64_t sub_1006321AC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_100632898;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1006322FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006322FC()
{
  v50 = v2;
  v4 = *(v2 + 32);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_21;
    }

    v6 = *(*(v2 + 24) + 16);
    v7 = *(*(v2 + 24) + 24);
    v8 = __OFSUB__(v7, v6);
    v9 = v7 - v6;
    if (!v8)
    {
      if (v9 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v5)
  {
    v10 = *(v2 + 24);
    v11 = *(v2 + 28);
    v8 = __OFSUB__(v11, v10);
    v12 = v11 - v10;
    if (!v8)
    {
      if (v12 >= 1)
      {
        goto LABEL_11;
      }

LABEL_21:
      sub_100026AC0(*(v2 + 56), *(v2 + 64));
      v32 = *(v2 + 8);

      return v32();
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_27;
  }

  if (!BYTE6(v4))
  {
    goto LABEL_21;
  }

LABEL_11:
  v13 = *(v2 + 40);
  v14 = *(v2 + 24);
  *(v2 + 96) = swift_slowAlloc();
  v15 = objc_allocWithZone(NSInputStream);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v17 = [v15 initWithData:isa];
  *(v2 + 104) = v17;

  [v17 open];
  v3 = &selRef_finishedEventForRecordID_withResults_;
  if (![v17 hasBytesAvailable] || (v18 = objc_msgSend(*(v2 + 104), "read:maxLength:", *(v2 + 96), *(v2 + 40)), v18 < 1))
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_1009873E0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Finished sending stream", v29, 2u);
    }

    v31 = *(v2 + 96);
    v30 = *(v2 + 104);

    [v30 close];

    goto LABEL_21;
  }

  v19 = v18;
  v20 = *(v2 + 96);
  if (v18 <= 0xE)
  {
    *(v2 + 166) = 0;
    *(v2 + 160) = 0;
    *(v2 + 174) = v18;
    memcpy((v2 + 160), v20, v18);
    v0 = *(v2 + 160);
    v1 = *(v2 + 168) | ((*(v2 + 172) | (*(v2 + 174) << 16)) << 32);
  }

  else
  {
    v21 = type metadata accessor for __DataStorage();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = __DataStorage.init(bytes:length:)();
    v25 = v24;
    if (v19 >= 0x7FFFFFFF)
    {
      type metadata accessor for Data.RangeReference();
      v0 = swift_allocObject();
      *(v0 + 16) = 0;
      *(v0 + 24) = v19;
      v1 = v25 | 0x8000000000000000;
    }

    else
    {
      v0 = v19 << 32;
      v1 = v24 | 0x4000000000000000;
    }
  }

  *(v2 + 120) = v0;
  *(v2 + 128) = v1;
  *(v2 + 112) = v1;
  if (qword_100973B80 != -1)
  {
    goto LABEL_34;
  }

LABEL_27:
  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_1009873E0);
  sub_100294008(v0, v1);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  sub_100026AC0(v0, v1);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = v38;
    *v37 = 136315138;
    sub_100294008(v0, v1);
    v39 = Data.description.getter();
    v41 = v40;
    sub_100026AC0(v0, v1);
    v42 = sub_10000C4E4(v39, v41, &v49);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Sending data chunk %s", v37, 0xCu);
    sub_10000C60C(v38);
  }

  v43 = *(v2 + 104);
  v44 = *(v2 + 48);
  sub_100294008(v0, v1);
  v45 = [v43 v3[279]] ^ 1;
  v46 = swift_task_alloc();
  *(v2 + 136) = v46;
  *(v46 + 16) = v0;
  *(v46 + 24) = v1;
  *(v46 + 32) = v45;
  *(v46 + 40) = v44;
  v47 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v48 = swift_task_alloc();
  *(v2 + 144) = v48;
  *v48 = v2;
  v48[1] = sub_100632930;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v48, 0, 0, 0xD000000000000016, 0x800000010079A210, sub_1006386D8, v46, &type metadata for () + 8);
}

uint64_t sub_100632898()
{
  v1 = v0[9];

  v2 = v0[11];
  sub_100026AC0(v0[7], v0[8]);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100632930()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_100632F80;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_100632A80;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100632A80()
{
  v39 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  sub_100026AC0(v1, v2);
  sub_100026AC0(v1, v2);
  if (([v3 hasBytesAvailable] & 1) != 0 && (v4 = *(v0 + 112), v5 = objc_msgSend(*(v0 + 104), "read:maxLength:", *(v0 + 96), *(v0 + 40)), v5 > 0))
  {
    v6 = v5;
    v7 = *(v0 + 96);
    if (v5 <= 0xE)
    {
      *(v0 + 166) = 0;
      *(v0 + 160) = 0;
      *(v0 + 174) = v5;
      memcpy((v0 + 160), v7, v5);
      v13 = *(v0 + 160);
      v4 = v4 & 0xF00000000000000 | *(v0 + 168) | ((*(v0 + 172) | (*(v0 + 174) << 16)) << 32);
      v14 = v4;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      v12 = v11;
      if (v6 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v13 = swift_allocObject();
        *(v13 + 16) = 0;
        *(v13 + 24) = v6;
        v14 = v12 | 0x8000000000000000;
      }

      else
      {
        v13 = v6 << 32;
        v14 = v11 | 0x4000000000000000;
      }
    }

    *(v0 + 120) = v13;
    *(v0 + 128) = v14;
    *(v0 + 112) = v4;
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_1009873E0);
    sub_100294008(v13, v14);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    sub_100026AC0(v13, v14);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136315138;
      sub_100294008(v13, v14);
      v28 = Data.description.getter();
      v30 = v29;
      sub_100026AC0(v13, v14);
      v31 = sub_10000C4E4(v28, v30, &v38);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Sending data chunk %s", v26, 0xCu);
      sub_10000C60C(v27);
    }

    v32 = *(v0 + 104);
    v33 = *(v0 + 48);
    sub_100294008(v13, v14);
    v34 = [v32 hasBytesAvailable] ^ 1;
    v35 = swift_task_alloc();
    *(v0 + 136) = v35;
    *(v35 + 16) = v13;
    *(v35 + 24) = v14;
    *(v35 + 32) = v34;
    *(v35 + 40) = v33;
    v36 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v37 = swift_task_alloc();
    *(v0 + 144) = v37;
    *v37 = v0;
    v37[1] = sub_100632930;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v37, 0, 0, 0xD000000000000016, 0x800000010079A210, sub_1006386D8, v35, &type metadata for () + 8);
  }

  else
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_1009873E0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Finished sending stream", v18, 2u);
    }

    v20 = *(v0 + 96);
    v19 = *(v0 + 104);

    [v19 close];

    sub_100026AC0(*(v0 + 56), *(v0 + 64));
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100632F80()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[13];
  sub_100026AC0(v2, v1);

  sub_100026AC0(v2, v1);

  v4 = v0[19];
  sub_100026AC0(v0[7], v0[8]);
  v5 = v0[1];

  return v5();
}

void sub_100633050(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v6) = a4;
  v33 = sub_10028088C(&qword_1009755D8, &qword_1007F8968);
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v33);
  v32 = &v28 - v12;
  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_1009873E0);
  sub_1002A9924(a2, a3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  sub_10028BCC0(a2, a3);
  if (os_log_type_enabled(v14, v15))
  {
    v28 = a5;
    v31 = a2;
    v30 = v6;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315394;
    v29 = a1;
    if (a3 >> 60 == 15)
    {
      v6 = 0x800000010079A230;
      v18 = 0xD000000000000015;
    }

    else
    {
      v18 = Data.description.getter();
      v6 = v19;
    }

    v20 = sub_10000C4E4(v18, v6, aBlock);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    LOBYTE(v6) = v30;
    *(v16 + 14) = v30 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "Calling send %s - done: %{BOOL}d", v16, 0x12u);
    sub_10000C60C(v17);

    a1 = v29;
    a2 = v31;
  }

  else
  {
  }

  v21 = NWConnection.nw.getter();
  if (a3 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_1006333EC(a2, a3);
  }

  v24 = v32;
  v23 = v33;
  (*(v10 + 16))(v32, a1, v33);
  v25 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v26 = swift_allocObject();
  (*(v10 + 32))(v26 + v25, v24, v23);
  aBlock[4] = sub_100638710;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100531428;
  aBlock[3] = &unk_1008EC210;
  v27 = _Block_copy(aBlock);

  nw_connection_send(v21, v22, _nw_content_context_default_message, v6 & 1, v27);
  _Block_release(v27);
  swift_unknownObjectRelease();
}

uint64_t sub_1006333EC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchData.Deallocator();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = LongHash.init(storage:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EBEC8;
  v15 = _Block_copy(aBlock);
  *v13 = 0;
  v13[1] = v15;
  (*(v10 + 104))(v13, enum case for DispatchData.Deallocator.custom(_:), v9);
  sub_100294008(a1, a2);

  v19 = v13;
  sub_1006358F8(sub_100635E20, v18, a1, a2);
  v16 = DispatchData._bridgeToObjectiveC()();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  return v16;
}

void sub_100633654(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5, char a6)
{
  v11 = sub_10028088C(&qword_1009755D8, &qword_1007F8968);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = aBlock - v14;
  v16 = NWConnection.nw.getter();
  if (a4 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_1006333EC(a3, a4);
  }

  (*(v12 + 16))(v15, a1, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v18, v15, v11);
  aBlock[4] = sub_100635E1C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100531428;
  aBlock[3] = &unk_1008EBE78;
  v20 = _Block_copy(aBlock);

  nw_connection_send(v16, v17, a5, a6 & 1, v20);
  _Block_release(v20);
  swift_unknownObjectRelease();
}

uint64_t sub_100633858(uint64_t a1)
{
  if (a1)
  {
    v1 = swift_unknownObjectRetain();
    v2 = nw_error_copy_cf_error(v1);
    type metadata accessor for CFError(0);
    sub_100638428(&unk_100987420, type metadata accessor for CFError);
    swift_allocError();
    *v3 = v2;
    sub_10028088C(&qword_1009755D8, &qword_1007F8968);
    CheckedContinuation.resume(throwing:)();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10028088C(&qword_1009755D8, &qword_1007F8968);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100633940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 112) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_10063396C, 0, 0);
}

uint64_t sub_10063396C()
{
  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v2 >> 62;
  *(v0 + 56) = 0;
  if ((v2 >> 62) > 1)
  {
    v4 = 0;
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    v4 = v5 - v6;
    if (!__OFSUB__(v5, v6))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(v2);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = HIDWORD(v1) - v1;
LABEL_12:
  v7 = *(v0 + 40);
  *(v0 + 64) = v4;
  v8 = v7;
  if (v4 > v7)
  {
    goto LABEL_23;
  }

  if (v3 <= 1)
  {
    if (!v3)
    {
      v8 = BYTE6(v2);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v3 != 2)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v10 = v1 + 16;
  v1 = *(v1 + 16);
  v9 = *(v10 + 8);
  v8 = v9 - v1;
  if (__OFSUB__(v9, v1))
  {
    __break(1u);
LABEL_20:
    v11 = __OFSUB__(HIDWORD(v1), v1);
    v12 = HIDWORD(v1) - v1;
    if (v11)
    {
LABEL_31:
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)();
    }

    v8 = v12;
  }

LABEL_23:
  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_1009873E0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v14, v15, "Sending %ld bytes", v16, 0xCu);
  }

  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = v4 <= v7;
  v18 = *(v0 + 48);
  v19 = *(v0 + 112);
  v20 = *(v0 + 24);
  v21 = *(v0 + 32);
  v22 = *(v0 + 16);
  v23 = Data._Representation.subscript.getter();
  v25 = v24;
  *(v0 + 72) = v23;
  *(v0 + 80) = v24;
  v26 = v17 & v19;
  v27 = swift_task_alloc();
  *(v0 + 88) = v27;
  *(v27 + 16) = v18;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = v22;
  *(v27 + 48) = v26;
  v28 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v29 = swift_task_alloc();
  *(v0 + 96) = v29;
  *v29 = v0;
  v29[1] = sub_100633C1C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100633C1C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_100634054;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_100633D38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100633D38()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  sub_100026AC0(*(v0 + 72), *(v0 + 80));
  if (v1 > v2)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 40);
    v5 = v3 + v4;
    if (__OFADD__(v3, v4))
    {
      __break(1u);
      goto LABEL_39;
    }

    *(v0 + 56) = v5;
    v6 = *(v0 + 32);
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 != 2)
      {
        v8 = 0;
        goto LABEL_16;
      }

      v11 = *(*(v0 + 24) + 16);
      v12 = *(*(v0 + 24) + 24);
      v13 = __OFSUB__(v12, v11);
      v8 = v12 - v11;
      if (!v13)
      {
LABEL_16:
        v16 = v8 - v5;
        if (!__OFSUB__(v8, v5))
        {
          *(v0 + 64) = v16;
          if (v16 > v4)
          {
            v17 = v5 + v4;
            if (!__OFADD__(v5, v4))
            {
              goto LABEL_31;
            }

            __break(1u);
          }

          else if (v7 <= 1)
          {
            if (!v7)
            {
              v17 = BYTE6(v6);
LABEL_31:
              v23 = type metadata accessor for Logger();
              sub_10000C4AC(v23, qword_1009873E0);
              v24 = Logger.logObject.getter();
              v25 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v24, v25))
              {
                v26 = swift_slowAlloc();
                *v26 = 134217984;
                if (__OFSUB__(v17, v5))
                {
LABEL_41:
                  __break(1u);
                  goto LABEL_42;
                }

                *(v26 + 4) = v17 - v5;
                _os_log_impl(&_mh_execute_header, v24, v25, "Sending %ld bytes", v26, 0xCu);
              }

              if (v17 >= v5)
              {
                v27 = v16 <= v4;
                v28 = *(v0 + 48);
                v29 = *(v0 + 112);
                v30 = *(v0 + 24);
                v31 = *(v0 + 32);
                v32 = *(v0 + 16);
                v33 = Data._Representation.subscript.getter();
                v35 = v34;
                *(v0 + 72) = v33;
                *(v0 + 80) = v34;
                v36 = swift_task_alloc();
                *(v0 + 88) = v36;
                *(v36 + 16) = v28;
                *(v36 + 24) = v33;
                *(v36 + 32) = v35;
                *(v36 + 40) = v32;
                *(v36 + 48) = v27 & v29;
                v37 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
                v38 = swift_task_alloc();
                *(v0 + 96) = v38;
                *v38 = v0;
                v38[1] = sub_100633C1C;

                return withCheckedThrowingContinuation<A>(isolation:function:_:)();
              }

LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            goto LABEL_28;
          }

          if (v7 != 2)
          {
            v17 = 0;
            goto LABEL_31;
          }

          v18 = *(*(v0 + 24) + 16);
          v19 = *(*(v0 + 24) + 24);
          v17 = v19 - v18;
          if (!__OFSUB__(v19, v18))
          {
            goto LABEL_31;
          }

          __break(1u);
LABEL_28:
          v20 = *(v0 + 24);
          v21 = *(v0 + 28);
          v13 = __OFSUB__(v21, v20);
          v22 = v21 - v20;
          if (v13)
          {
LABEL_43:
            __break(1u);
            return withCheckedThrowingContinuation<A>(isolation:function:_:)();
          }

          v17 = v22;
          goto LABEL_31;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (!v7)
    {
      v8 = BYTE6(v6);
      goto LABEL_16;
    }

    v14 = *(v0 + 24);
    v15 = *(v0 + 28);
    v13 = __OFSUB__(v15, v14);
    LODWORD(v8) = v15 - v14;
    if (v13)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v8 = v8;
    goto LABEL_16;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100634054()
{
  v1 = v0[11];
  sub_100026AC0(v0[9], v0[10]);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1006340C4(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100987430, qword_10080DDD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = NWConnection.nw.getter();
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_100635E3C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100631EC8;
  aBlock[3] = &unk_1008EBF18;
  v10 = _Block_copy(aBlock);

  nw_connection_receive_message(v7, v10);
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_10063427C(void *a1, NSObject *a2, char a3, uint64_t a4)
{
  if (!a2)
  {
    v9 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, enum case for SFAirDropReceive.Failure.badRequest(_:), v9);
    aBlock = v10;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    return CheckedContinuation.resume(throwing:)();
  }

  if (a4)
  {
    swift_unknownObjectRetain();
    v5 = swift_unknownObjectRetain();
    v6 = nw_error_copy_cf_error(v5);
    type metadata accessor for CFError(0);
    sub_100638428(&unk_100987420, type metadata accessor for CFError);
    v7 = swift_allocError();
    *v8 = v6;
    aBlock = v7;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    CheckedContinuation.resume(throwing:)();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  v15 = nw_protocol_copy_http_definition();
  v16 = nw_content_context_copy_protocol_metadata(a2, v15);
  swift_unknownObjectRelease();
  if (!v16)
  {
LABEL_17:
    v28 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, enum case for SFAirDropReceive.Failure.badRequest(_:), v28);
    aBlock = v29;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    CheckedContinuation.resume(throwing:)();
    return swift_unknownObjectRelease();
  }

  if (!nw_http_metadata_copy_request())
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v40 = 0;
  v41 = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = &v40;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100635E64;
  *(v18 + 24) = v17;
  v38 = sub_100635E80;
  v39 = v18;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100634828;
  v37 = &unk_1008EBF90;
  v19 = _Block_copy(&aBlock);

  nw_http_request_access_path();
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    v20 = v41;
    if (v41)
    {
      v21 = a1;
      v22 = v40;
      if (v21)
      {
        v23 = v21;

        v24 = v23;
        v25 = swift_dynamicCast();
        if (v25)
        {
          v26 = aBlock;
        }

        else
        {
          v26 = 0;
        }

        if (v25)
        {
          v27 = v35;
        }

        else
        {
          v27 = 0xC000000000000000;
        }
      }

      else
      {

        v26 = 0;
        v27 = 0xC000000000000000;
      }

      aBlock = v22;
      v35 = v20;
      v36 = v26;
      v37 = v27;
      v38 = v16;
      LOBYTE(v39) = a3 & 1;

      sub_100294008(v26, v27);
      swift_unknownObjectRetain();
      sub_10028088C(&qword_100987430, qword_10080DDD8);
      CheckedContinuation.resume(returning:)();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_100026AC0(v26, v27);
    }

    else
    {
      v31 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, enum case for SFAirDropReceive.Failure.badRequest(_:), v31);
      aBlock = v32;
      sub_10028088C(&qword_100987430, qword_10080DDD8);
      CheckedContinuation.resume(throwing:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100634854(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_10028088C(&qword_100987430, qword_10080DDD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  result = NWConnection.nw.getter();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    v11 = result;
    (*(v6 + 16))(v9, a1, v5);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    (*(v6 + 32))(v13 + v12, v9, v5);
    aBlock[4] = sub_100635EA8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100631EC8;
    aBlock[3] = &unk_1008EBFE0;
    v14 = _Block_copy(aBlock);

    nw_connection_receive(v11, 0, a3, v14);
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_100634A2C(void *a1, NSObject *a2, char a3, uint64_t a4)
{
  if (!a2)
  {
    v9 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, enum case for SFAirDropReceive.Failure.badRequest(_:), v9);
    aBlock = v10;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    return CheckedContinuation.resume(throwing:)();
  }

  if (a4)
  {
    swift_unknownObjectRetain();
    v5 = swift_unknownObjectRetain();
    v6 = nw_error_copy_cf_error(v5);
    type metadata accessor for CFError(0);
    sub_100638428(&unk_100987420, type metadata accessor for CFError);
    v7 = swift_allocError();
    *v8 = v6;
    aBlock = v7;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    CheckedContinuation.resume(throwing:)();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  v14 = nw_protocol_copy_http_definition();
  v15 = nw_content_context_copy_protocol_metadata(a2, v14);
  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_17:
    v28 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, enum case for SFAirDropReceive.Failure.badRequest(_:), v28);
    aBlock = v29;
    sub_10028088C(&qword_100987430, qword_10080DDD8);
    CheckedContinuation.resume(throwing:)();
    return swift_unknownObjectRelease();
  }

  if (!nw_http_metadata_copy_request())
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v41 = 0;
  v42 = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = &v41;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100638720;
  *(v17 + 24) = v16;
  v39 = sub_100638714;
  v40 = v17;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100634828;
  v38 = &unk_1008EC058;
  v18 = _Block_copy(&aBlock);

  nw_http_request_access_path();
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v19 = v42;
    if (v42)
    {
      v20 = v41;

      v21 = sub_100635024(v20, v19);
      v23 = v22;
      v24 = 0xC000000000000000;
      if (a1)
      {
        v25 = a1;
        v26 = swift_dynamicCast();
        if (v26)
        {
          v27 = aBlock;
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          v24 = v36;
        }
      }

      else
      {
        v27 = 0;
      }

      aBlock = v21;
      v36 = v23;
      v37 = v27;
      v38 = v24;
      v39 = v15;
      LOBYTE(v40) = a3 & 1;

      sub_100294008(v27, v24);
      swift_unknownObjectRetain();
      sub_10028088C(&qword_100987430, qword_10080DDD8);
      CheckedContinuation.resume(returning:)();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_100026AC0(v27, v24);
    }

    else
    {
      v31 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, enum case for SFAirDropReceive.Failure.badRequest(_:), v31);
      aBlock = v32;
      sub_10028088C(&qword_100987430, qword_10080DDD8);
      CheckedContinuation.resume(throwing:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100634FDC(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = String.init(cString:)();
    v4 = a2[1];
    *a2 = v3;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100635024(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v2 = String.init(cString:)();
  }

  else
  {
    _StringGuts._slowWithCString<A>(_:)();

    return v4;
  }

  return v2;
}

uint64_t sub_1006350D8(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100987518, &unk_10080DE10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = NWConnection.nw.getter();
  (*(v3 + 16))(v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v6, v2);
  aBlock[4] = sub_100638228;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100631EC8;
  aBlock[3] = &unk_1008EC170;
  v10 = _Block_copy(aBlock);

  nw_connection_receive_message(v7, v10);
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_100635290(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v8 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for SFAirDropReceive.Failure.badRequest(_:), v8);
    sub_10028088C(&qword_100987518, &unk_10080DE10);
    return CheckedContinuation.resume(throwing:)();
  }

  if (a4)
  {
    swift_unknownObjectRetain();
    v5 = swift_unknownObjectRetain();
    v6 = nw_error_copy_cf_error(v5);
    type metadata accessor for CFError(0);
    sub_100638428(&unk_100987420, type metadata accessor for CFError);
    swift_allocError();
    *v7 = v6;
    sub_10028088C(&qword_100987518, &unk_10080DE10);
    CheckedContinuation.resume(throwing:)();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    v12 = nw_protocol_copy_http_definition();
    v13 = nw_content_context_copy_protocol_metadata(a2, v12);
    swift_unknownObjectRelease();
    if (v13)
    {
      if (nw_http_metadata_copy_response())
      {
        status_code = nw_http_response_get_status_code();
        sub_100638250(status_code);
        v15 = 0xC000000000000000;
        if (a1)
        {
          v16 = a1;
          v17 = swift_dynamicCast();
          if (v17)
          {
            a1 = v20;
          }

          else
          {
            a1 = 0;
          }

          if (v17)
          {
            v15 = v21;
          }
        }

        sub_100294008(a1, v15);
        sub_10028088C(&qword_100987518, &unk_10080DE10);
        CheckedContinuation.resume(returning:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_100026AC0(a1, v15);
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    v18 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100638428(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, enum case for SFAirDropReceive.Failure.badRequest(_:), v18);
    sub_10028088C(&qword_100987518, &unk_10080DE10);
    CheckedContinuation.resume(throwing:)();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1006355FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchData.Deallocator();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  return DispatchData.init(bytesNoCopy:deallocator:)();
}

uint64_t sub_1006356E8@<X0>(uint64_t *a1@<X8>)
{
  result = String.init(cString:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100635718(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_100638428(&unk_100983280, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100635A30(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_100635A30(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_100638428(&unk_100983280, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1006358F8(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_100635B10(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_100635B10(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_100635A30(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100638428(&unk_100983280, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100635B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_100635BB8(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_100638428(&qword_100987408, &type metadata accessor for SHA256Digest);
  dispatch thunk of Sequence.makeIterator()();
  result = sub_10028088C(&qword_100987400, &qword_10080DDD0);
  v7 = *(a1 + *(result + 36));
  v8 = v27[0];
  v9 = _swiftEmptyArrayStorage;
  v10 = 0;
  if (v7)
  {
    v11 = v27[1];
    v12 = &_swiftEmptyArrayStorage[4];
    do
    {
      v13 = *(v8 + 16);
      if (v11 == v13)
      {
        break;
      }

      if (v11 >= v13)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = *(v8 + v11 + 32);
      if (!v10)
      {
        v15 = *(v9 + 3);
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        sub_10028088C(&unk_100987410, &unk_1007FB010);
        v18 = swift_allocObject();
        v19 = 2 * j__malloc_size(v18) - 64;
        *(v18 + 2) = v17;
        *(v18 + 3) = v19;
        v20 = v18 + 32;
        v21 = *(v9 + 3) >> 1;
        if (*(v9 + 2))
        {
          v22 = v9 + 32;
          if (v18 != v9 || v20 >= &v22[v21])
          {
            memmove(v18 + 32, v22, v21);
          }

          *(v9 + 2) = 0;
        }

        v12 = &v20[v21];
        v10 = (v19 >> 1) - v21;

        v9 = v18;
      }

      v23 = __OFSUB__(v10--, 1);
      if (v23)
      {
        goto LABEL_23;
      }

      *v12++ = v14;
      ++v11;
      --v7;
    }

    while (v7);
  }

  v24 = *(v9 + 3);
  if (v24 < 2)
  {
    return v9;
  }

  v25 = v24 >> 1;
  v23 = __OFSUB__(v25, v10);
  v26 = v25 - v10;
  if (!v23)
  {
    *(v9 + 2) = v26;
    return v9;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100635E80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100635ED0(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 32;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v7 += 8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  if (v6)
  {
    sub_10028088C(&qword_100987510, &qword_1007F83C8);
    v11 = swift_allocObject();
    result = j__malloc_size(v11);
    v13 = result - 32;
    if (result < 32)
    {
      v13 = result - 25;
    }

    v14 = v13 >> 3;
    v11[2] = v6;
    v11[3] = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    while (1)
    {
      v17 = v5 <= a2;
      if (a3 > 0)
      {
        v17 = v5 >= a2;
      }

      if (v17)
      {
        break;
      }

      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      *v15++ = v5;
      v5 = v18;
      if (!--v6)
      {
        v5 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage[3];

  v15 = &_swiftEmptyArrayStorage[4];
  v16 = v19 >> 1;
LABEL_22:
  v20 = v5 <= a2;
  if (a3 > 0)
  {
    v20 = v5 >= a2;
  }

  if (!v20)
  {
    v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v22 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v22 = v21;
        if (!v16)
        {
          goto LABEL_31;
        }

        v22 = v21;
      }

      else if (!v16)
      {
LABEL_31:
        v23 = v11[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_53;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_10028088C(&qword_100987510, &qword_1007F83C8);
        v26 = swift_allocObject();
        v27 = j__malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = v11[3] >> 1;
        if (v11[2])
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
        v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = __OFSUB__(v16--, 1);
      if (v10)
      {
        goto LABEL_52;
      }

      *v15++ = v5;
      v33 = v22 <= a2;
      if (a3 > 0)
      {
        v33 = v22 >= a2;
      }

      v5 = v22;
    }

    while (!v33);
  }

  v34 = v11[3];
  if (v34 < 2)
  {
    return v11;
  }

  v35 = v34 >> 1;
  v10 = __OFSUB__(v35, v16);
  v36 = v35 - v16;
  if (!v10)
  {
    v11[2] = v36;
    return v11;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_100636164(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    application_service_quic_using_identity = nw_parameters_create_application_service_quic_using_identity();
  }

  else
  {
    application_service_quic_using_identity = nw_parameters_create_application_service_quic();
  }

  v8 = application_service_quic_using_identity;
  if (application_service_quic_using_identity)
  {
    nw_parameters_set_prohibit_constrained(application_service_quic_using_identity, 1);
    aBlock = 0xD00000000000001BLL;
    v26 = 0x8000000100799FF0;
    swift_unknownObjectRetain();
    static String.Encoding.utf8.getter();
    sub_10001229C();
    StringProtocol.cString(using:)();
    (*(v3 + 8))(v6, v2);
    nw_parameters_set_source_application_by_bundle_id();

    nw_parameters_set_include_peer_to_peer(v8, 1);
    nw_parameters_set_attach_protocol_listener();
    nw_parameters_set_server_mode();
    if (sub_1004E701C())
    {
      nw_parameters_set_local_only(v8, 0);
    }

    else
    {
      if (a1)
      {
        nw_parameters_set_required_interface_subtype();
      }

      nw_parameters_set_multipath_service(v8, nw_multipath_service_disabled);
    }

    type metadata accessor for SFAirDropUserDefaults();
    v9 = static SFAirDropUserDefaults.shared.getter();
    v10 = SFAirDropUserDefaults.cellularUsageEnabled.getter();

    if ((v10 & 1) == 0)
    {
      nw_parameters_set_prohibit_expensive(v8, 1);
      empty = xpc_array_create_empty();
      v12 = XPC_ARRAY_APPEND.getter();
      xpc_array_set_uint64(empty, v12, 2uLL);
      nw_parameters_set_prohibited_interface_types();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v31 = 0;
    v13 = nw_parameters_copy_default_protocol_stack(v8);
    v14 = swift_allocObject();
    *(v14 + 16) = &v31;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1006381F8;
    *(v15 + 24) = v14;
    v29 = sub_10044EDA8;
    v30 = v15;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10044CCA4;
    v28 = &unk_1008EC120;
    v16 = _Block_copy(&aBlock);

    nw_protocol_stack_iterate_application_protocols(v13, v16);
    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }

    else
    {
      if (v31 == 1)
      {
        type metadata accessor for NWParameters();
        swift_unknownObjectRetain();
        v17 = NWParameters.__allocating_init(_:)();
        NWParameters.preferNoProxies.setter();
        options = nw_http3_create_options();
        v19 = NWParameters.nw.getter();
        v20 = nw_parameters_copy_default_protocol_stack(v19);
        swift_unknownObjectRelease();
        nw_protocol_stack_prepend_application_protocol(v20, options);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v17;
      }

      aBlock = 0;
      v26 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v22._countAndFlagsBits = 0xD00000000000003ALL;
      v22._object = 0x800000010079A180;
      String.append(_:)(v22);
      v24 = v13;
      sub_10028088C(&qword_100987498, &unk_10080DDF0);
      _print_unlocked<A, B>(_:_:)();
      v23._countAndFlagsBits = 0x74656D6172617020;
      v23._object = 0xED0000203A737265;
      String.append(_:)(v23);
      v24 = v8;
      sub_10028088C(&unk_100987500, &unk_10080DE00);
      _print_unlocked<A, B>(_:_:)();
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100636668(void *a1)
{
  v1 = 0x3E656E6F6E3CLL;
  if (a1)
  {
    certificateRef = 0;
    v2 = a1;
    v3 = SecIdentityCopyCertificate(v2, &certificateRef);
    if (certificateRef)
    {
      v4 = v3;
      v5 = certificateRef;
      if (v4 == noErr.getter())
      {
        v6 = SecCertificateCopyIssuerSHA256Digest();
        if (v6)
        {
          v7 = v6;
          v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v9;

          sub_100467BE4(v8, v10);
          sub_10028088C(&unk_100976C20, &unk_1007F9D80);
          sub_1003117AC();
          BidirectionalCollection<>.joined(separator:)();

          sub_10054141C(16);

          v1 = static String._fromSubstring(_:)();

          sub_100026AC0(v8, v10);

          return v1;
        }
      }
    }
  }

  return v1;
}

uint64_t *sub_100636820(uint64_t *a1)
{
  v2 = *a1;
  v3 = NWConnection.nw.getter();
  nw_connection_copy_parameters(v3);
  swift_unknownObjectRelease();
  NWConnection.nw.getter();
  v4 = nw_connection_create_with_connection();
  swift_unknownObjectRelease();
  if (!v4)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_1009873E0);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v1 = swift_slowAlloc();
      v35 = v1;
      *v19 = 136315138;
      v20 = NWConnection.debugDescription.getter();
      v22 = sub_10000C4E4(v20, v21, &v35);

      *(v19 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to create connection from existing connection %s", v19, 0xCu);
      sub_10000C60C(v1);
    }

    v23 = type metadata accessor for SFAirDropSend.Failure();
    sub_100638428(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for SFAirDropSend.Failure.unsupportedConnection(_:), v23);
    swift_willThrow();
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  v5 = NWConnection.__allocating_init(_:)();
  if (!v5)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_1009873E0);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v1 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v1 = 136315138;
      v29 = NWConnection.debugDescription.getter();
      v31 = sub_10000C4E4(v29, v30, &v35);

      *(v1 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to initialize new connection %s", v1, 0xCu);
      sub_10000C60C(v28);
    }

    v32 = type metadata accessor for SFAirDropSend.Failure();
    sub_100638428(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, enum case for SFAirDropSend.Failure.unsupportedConnection(_:), v32);
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_17:
    swift_unknownObjectRelease();
    return v1;
  }

  v1 = v5;
  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009873E0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = NWConnection.debugDescription.getter();
    v12 = sub_10000C4E4(v10, v11, &v35);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = NWConnection.debugDescription.getter();
    v15 = sub_10000C4E4(v13, v14, &v35);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Created connection %s from existing connection %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100636E0C(char a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    application_service_quic_using_identity = nw_parameters_create_application_service_quic_using_identity();
  }

  else
  {
    application_service_quic_using_identity = nw_parameters_create_application_service_quic();
  }

  v10 = application_service_quic_using_identity;
  if (application_service_quic_using_identity)
  {
    nw_parameters_set_prohibit_constrained(application_service_quic_using_identity, 1);
    aBlock = 0xD00000000000001BLL;
    v34 = 0x8000000100799FF0;
    swift_unknownObjectRetain();
    static String.Encoding.utf8.getter();
    sub_10001229C();
    StringProtocol.cString(using:)();
    (*(v5 + 8))(v8, v4);
    nw_parameters_set_source_application_by_bundle_id();

    nw_parameters_set_include_peer_to_peer(v10, 1);
    if (sub_1004E701C())
    {
      if ((a1 & 1) == 0)
      {
        nw_parameters_set_local_only(v10, 0);
      }
    }

    else
    {
      nw_parameters_set_required_interface_subtype();
      nw_parameters_set_multipath_service(v10, nw_multipath_service_disabled);
    }

    type metadata accessor for SFAirDropUserDefaults();
    v11 = static SFAirDropUserDefaults.shared.getter();
    v12 = SFAirDropUserDefaults.cellularUsageEnabled.getter();

    if ((v12 & 1) == 0)
    {
      nw_parameters_set_prohibit_expensive(v10, 1);
      empty = xpc_array_create_empty();
      v14 = XPC_ARRAY_APPEND.getter();
      xpc_array_set_uint64(empty, v14, 2uLL);
      nw_parameters_set_prohibited_interface_types();
      swift_unknownObjectRelease();
    }

    v15 = xpc_array_create_empty();
    v16 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_uint64(v15, v16, 0x3EAuLL);
    nw_parameters_set_preferred_interface_subtypes();
    v39 = 0;
    v17 = nw_parameters_copy_default_protocol_stack(v10);
    v18 = swift_allocObject();
    *(v18 + 16) = &v39;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100638554;
    *(v19 + 24) = v18;
    v37 = sub_10063871C;
    v38 = v19;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_10044CCA4;
    v36 = &unk_1008EC2D8;
    v20 = _Block_copy(&aBlock);

    nw_protocol_stack_iterate_application_protocols(v17, v20);
    _Block_release(v20);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if (v20)
    {
      __break(1u);
    }

    else
    {
      if (v39 == 1)
      {
        v21 = xpc_array_create(0, 0);
        v22 = XPC_ARRAY_APPEND.getter();
        xpc_array_set_string(v21, v22, "com.apple.rapport.browse");
        v23 = xpc_array_create(0, 0);
        v24 = XPC_ARRAY_APPEND.getter();
        xpc_array_set_string(v23, v24, "RapportBrowseAgent");
        nw_parameters_set_preferred_netagent_classes();
        swift_unknownObjectRelease();
        type metadata accessor for NWParameters();
        swift_unknownObjectRetain();
        v25 = NWParameters.__allocating_init(_:)();
        NWParameters.preferNoProxies.setter();
        options = nw_http3_create_options();
        v27 = NWParameters.nw.getter();
        v28 = nw_parameters_copy_default_protocol_stack(v27);
        swift_unknownObjectRelease();
        nw_protocol_stack_prepend_application_protocol(v28, options);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        NWParameters.nw.getter();
        nw_parameters_set_server_mode();
        swift_unknownObjectRelease();
        NWParameters.nw.getter();
        AirDropID.getter();
        String.utf8CString.getter();

        nw_parameters_set_account_id();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v25;
      }

      aBlock = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v30._countAndFlagsBits = 0xD00000000000003ALL;
      v30._object = 0x800000010079A180;
      String.append(_:)(v30);
      v32 = v17;
      sub_10028088C(&qword_100987498, &unk_10080DDF0);
      _print_unlocked<A, B>(_:_:)();
      v31._countAndFlagsBits = 0x74656D6172617020;
      v31._object = 0xED0000203A737265;
      String.append(_:)(v31);
      v32 = v10;
      sub_10028088C(&unk_100987500, &unk_10080DE00);
      _print_unlocked<A, B>(_:_:)();
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1006373F8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = sub_100091420(v1);
    if (!v2)
    {
LABEL_6:

      return 0x3E656E6F6E3CLL;
    }

    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SecCertificate(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      goto LABEL_6;
    }
  }

  return 0x3E656E6F6E3CLL;
}

void sub_100637614(char a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v38[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = 0xD000000000000027;
  v38[1] = 0x800000010079A1C0;
  static String.Encoding.utf8.getter();
  sub_10001229C();
  v7 = StringProtocol.cString(using:)();
  (*(v3 + 8))(v6, v2);
  HIDWORD(v37) = -1;
  if (v7)
  {
    v8 = (v7 + 32);
  }

  else
  {
    v8 = 0;
  }

  v9 = notify_register_check(v8, &v37 + 1);
  if (v9)
  {
    v10 = v9;

    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_1009873E0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_10;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_10000C4E4(0xD000000000000027, 0x800000010079A1C0, v38);
    *(v14 + 12) = 1024;
    *(v14 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed to registered check for notification %s with status %u", v14, 0x12u);
    sub_10000C60C(v15);

LABEL_9:

LABEL_10:

    return;
  }

  if (HIDWORD(v37) == -1)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_1009873E0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10000C4E4(0xD000000000000027, 0x800000010079A1C0, v38);
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to registered check token for notification %s", v19, 0xCu);
      sub_10000C60C(v20);
    }
  }

  v21 = notify_set_state(SHIDWORD(v37), a1 & 1);
  if (v21)
  {
    v22 = v21;

    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_1009873E0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_28;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_10000C4E4(0xD000000000000027, 0x800000010079A1C0, v38);
    *(v26 + 12) = 1024;
    *(v26 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to set state for notification %s with status %u", v26, 0x12u);
    sub_10000C60C(v27);
    goto LABEL_27;
  }

  v28 = notify_post(v8);

  if (!v28)
  {
    if (qword_100973B80 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000C4AC(v33, qword_1009873E0);
    v12 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v12, v34))
    {
      goto LABEL_10;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_10000C4E4(0xD000000000000027, 0x800000010079A1C0, v38);
    *(v35 + 12) = 1024;
    *(v35 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v12, v34, "Posted notification %s for cellular interface in use %{BOOL}d", v35, 0x12u);
    sub_10000C60C(v36);

    goto LABEL_9;
  }

  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000C4AC(v29, qword_1009873E0);
  v24 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_10000C4E4(0xD000000000000027, 0x800000010079A1C0, v38);
    *(v31 + 12) = 1024;
    *(v31 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v24, v30, "Failed to post notification %s with status %u", v31, 0x12u);
    sub_10000C60C(v32);
LABEL_27:
  }

LABEL_28:

  notify_cancel(SHIDWORD(v37));
}

uint64_t sub_100637CD0(NSObject *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10028088C(&unk_10097F330, &qword_1007F9410);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = aBlock - v10;
  v12 = sub_10028088C(&qword_1009787A8, &unk_1007FB990);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = aBlock - v14;
  v16 = type metadata accessor for NWProtocolTCP.Options();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableFastOpen.setter();
  v19 = type metadata accessor for NWProtocolTLS.Options();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  NWProtocolTLS.Options.init()();
  if (a1)
  {
    v22 = a1;
LABEL_6:
    swift_unknownObjectRetain();
    v26 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
    sec_protocol_options_set_local_identity(v26, v22);
    swift_unknownObjectRelease();
    v27 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
    sec_protocol_options_set_peer_authentication_optional(v27, 1);
    swift_unknownObjectRelease();
    v28 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10062FDCC;
    aBlock[3] = &unk_1008EC080;
    v29 = _Block_copy(aBlock);

    sec_protocol_options_set_verify_block(v28, v29, a2);
    _Block_release(v29);
    swift_unknownObjectRelease();
    type metadata accessor for NWParameters();

    v30 = NWParameters.__allocating_init(tls:tcp:)();
    NWParameters.allowLocalEndpointReuse.setter();
    sub_100630930(v15);
    NWParameters.requiredInterface.setter();
    v31 = *(sub_10028088C(&qword_1009787B8, &qword_1007FB9A8) + 48);
    NWEndpoint.Host.init(stringLiteral:)();
    NWEndpoint.Port.init(integerLiteral:)();
    v32 = enum case for NWEndpoint.hostPort(_:);
    v33 = type metadata accessor for NWEndpoint();
    v34 = *(v33 - 8);
    (*(v34 + 104))(v11, v32, v33);
    (*(v34 + 56))(v11, 0, 1, v33);
    NWParameters.requiredLocalEndpoint.setter();
    NWParameters.preferNoProxies.setter();
    NWParameters.nw.getter();
    nw_parameters_set_attach_protocol_listener();
    swift_unknownObjectRelease();
    NWParameters.nw.getter();
    nw_parameters_set_server_mode();
    swift_unknownObjectRelease();
    options = nw_http_messaging_create_options();
    nw_http1_set_idle_timeout();
    v36 = NWParameters.nw.getter();
    v37 = nw_parameters_copy_default_protocol_stack(v36);
    swift_unknownObjectRelease();
    nw_protocol_stack_prepend_application_protocol(v37, options);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v30;
  }

  v23 = String._bridgeToObjectiveC()();
  SelfSignedIdentity = _CFHTTPServerCreateSelfSignedIdentity();

  if (SelfSignedIdentity)
  {
    v25 = sec_identity_create(SelfSignedIdentity);
    if (v25)
    {
      v22 = v25;

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100638124(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_10001229C();
  v2 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];

    v9 = static String._fromSubstring(_:)();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100638250(int a1)
{
  if (a1 <= 408)
  {
    if (a1 > 399)
    {
      switch(a1)
      {
        case 400:
          return 3;
        case 401:
          return 4;
        case 403:
          return 5;
      }
    }

    else
    {
      switch(a1)
      {
        case 100:
          return 0;
        case 200:
          return 1;
        case 204:
          return 2;
      }
    }
  }

  else if (a1 <= 500)
  {
    switch(a1)
    {
      case 409:
        return 6;
      case 417:
        return 7;
      case 500:
        return 8;
    }
  }

  else if (a1 > 503)
  {
    if (a1 == 504)
    {
      return 11;
    }

    if (a1 == 507)
    {
      return 12;
    }
  }

  else
  {
    if (a1 == 501)
    {
      return 9;
    }

    if (a1 == 503)
    {
      return 10;
    }
  }

  return 13;
}

uint64_t sub_100638378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(sub_10028088C(a5, a6) - 8);
  v13 = v7 + ((*(v12 + 80) + 16) & ~*(v12 + 80));

  return a7(a1, a2, a3, a4, v13);
}

uint64_t sub_100638428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006384F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100638594(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && a1[24])
  {
    return (*a1 + 244);
  }

  v3 = *a1;
  v4 = v3 >= 0xD;
  v5 = v3 - 13;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1006385D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 12;
    }
  }

  return result;
}

unint64_t sub_100638650()
{
  result = qword_100987540;
  if (!qword_100987540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987540);
  }

  return result;
}

uint64_t sub_100638724@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10028088C(&qword_100982518, &unk_100808DA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for SDAirDropServerConnection(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_uploadConnection;
  swift_beginAccess();
  sub_10000FF90(v1 + v15, v6, &qword_100982518, &unk_100808DA0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100005508(v6, &qword_100982518, &unk_100808DA0);
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_100987550);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "UPLOAD connection is not active", v19, 2u);
    }

    v20 = enum case for SFNWInterfaceType.other(_:);
    v21 = type metadata accessor for SFNWInterfaceType();
    return (*(*(v21 - 8) + 104))(a1, v20, v21);
  }

  else
  {
    sub_10064FAD4(v6, v14, type metadata accessor for SDAirDropServerConnection);
    sub_10064FA6C(v14, v12, type metadata accessor for SDAirDropServerConnection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v24 = *v12;
    if (EnumCaseMultiPayload >= 2)
    {
      v25 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      v26 = type metadata accessor for UUID();
      (*(*(v26 - 8) + 8))(&v12[v25], v26);
    }

    sub_10062D138(a1);

    return sub_10064FB84(v14, type metadata accessor for SDAirDropServerConnection);
  }
}

uint64_t sub_100638A98(uint64_t a1, void *a2)
{
  v3 = sub_10002CDC0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100638B44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 496) = a5;
  *(v6 + 504) = v5;
  *(v6 + 161) = a4;
  *(v6 + 480) = a2;
  *(v6 + 488) = a3;
  *(v6 + 472) = a1;
  v7 = *(*(sub_10028088C(&qword_100982518, &unk_100808DA0) - 8) + 64) + 15;
  *(v6 + 512) = swift_task_alloc();
  v8 = type metadata accessor for SDAirDropServerConnection(0);
  *(v6 + 520) = v8;
  v9 = *(v8 - 8);
  *(v6 + 528) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 536) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  *(v6 + 544) = static AirDropActor.shared;

  return _swift_task_switch(sub_100638C84, v11, 0);
}

uint64_t sub_100638C84()
{
  v1 = *(*(v0 + 504) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_deviceStatus);
  if ([v1 screenStateSupportsAirDrop])
  {
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100987550);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received DISCOVER request", v5, 2u);
    }

    v6 = *(v0 + 536);
    v7 = *(v0 + 520);
    v8 = *(v0 + 496);

    sub_10064FA6C(v8, v6, type metadata accessor for SDAirDropServerConnection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = *v6;
    if (EnumCaseMultiPayload >= 2)
    {
      v11 = *(v0 + 536);
      v12 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      v13 = type metadata accessor for UUID();
      (*(*(v13 - 8) + 8))(v11 + v12, v13);
    }

    v14 = sub_10062E930();
    *(v0 + 552) = v14;

    if (!v14)
    {
      v19 = swift_task_alloc();
      *(v0 + 664) = v19;
      *v19 = v0;
      v20 = sub_10063A114;
      goto LABEL_44;
    }

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "TLS SecTrust present, continue DISCOVER", v17, 2u);
    }

    v18 = *(v0 + 480);

    if (v18 >> 60 == 15)
    {
      v19 = swift_task_alloc();
      *(v0 + 648) = v19;
      *v19 = v0;
      v20 = sub_100639F70;
LABEL_44:
      v19[1] = v20;
      v70 = *(v0 + 496);
      v71 = *(v0 + 504);

      return sub_100645B70(v71, v70);
    }

    sub_1002A9924(*(v0 + 472), *(v0 + 480));
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Sender record data present, continue DISCOVER", v35, 2u);
    }

    v37 = *(v0 + 472);
    v36 = *(v0 + 480);

    isa = Data._bridgeToObjectiveC()().super.isa;
    v39 = sub_10009229C(isa, v14, 0);

    if (!v39)
    {
      v19 = swift_task_alloc();
      *(v0 + 632) = v19;
      *v19 = v0;
      v20 = sub_100639E44;
      goto LABEL_44;
    }

    v41 = *(v0 + 472);
    v40 = *(v0 + 480);
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    sub_10046A92C(v41, v40, v14);
    if (v45)
    {

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Peer is blocked, decline DISCOVER", v48, 2u);
      }

      v50 = *(v0 + 472);
      v49 = *(v0 + 480);

      v51 = type metadata accessor for SFAirDropReceive.Failure();
      sub_10064FB3C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v51 - 8) + 104))(v52, enum case for SFAirDropReceive.Failure.declined(_:), v51);
      swift_willThrow();
      sub_10028BCC0(v50, v49);

      v53 = *(v0 + 536);
      v54 = *(v0 + 512);

      v55 = *(v0 + 8);

      return v55();
    }

    else
    {
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Validated record data, continue DISCOVER", v58, 2u);
      }

      v59 = [v1 copyMyAppleIDSecIdentity];
      if (!v59 || (v59, (sub_100469580(v42, v44, v14) & 1) == 0))
      {

        v19 = swift_task_alloc();
        *(v0 + 616) = v19;
        *v19 = v0;
        v20 = sub_100639C98;
        goto LABEL_44;
      }

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Sender trusted, finish DISCOVER", v62, 2u);
      }

      v63 = *(v0 + 504);
      v64 = *(v0 + 161);
      v65 = *(v0 + 488);

      v66 = sub_10046AB74();
      *(v0 + 560) = v66;
      v115 = v67;
      *(v0 + 568) = v67;
      v68 = [*(v63 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_nearbyAgent) idSelfIdentity];
      v69 = 0;
      *(v0 + 576) = v68;
      if ((v64 & 1) == 0 && (v65 & 0x4000) != 0)
      {
        v69 = (*(v0 + 489) >> 4) & 1;
      }

      if (![v1 discoverableLevel] && !v69)
      {

        v19 = swift_task_alloc();
        *(v0 + 600) = v19;
        *v19 = v0;
        v20 = sub_100639AB8;
        goto LABEL_44;
      }

      v72 = [objc_opt_self() capabilitiesForCurrentDevice];
      v73 = [v72 opaqueRepresentation];

      if (v73)
      {
        v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v75;
        v114 = v74;
      }

      else
      {
        v113 = 0xF000000000000000;
        v114 = 0;
      }

      v76 = [v1 someComputerName];
      if (v76)
      {
        v77 = v76;
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = v79;
        v112 = v78;
      }

      else
      {
        v111 = 0;
        v112 = 0;
      }

      v80 = [v1 modelName];
      if (v80)
      {
        v81 = v80;
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v83;
        v110 = v82;
      }

      else
      {
        v109 = 0;
        v110 = 0;
      }

      if (v68)
      {
        v84 = [v68 deviceIRKData];
        if (v84)
        {
          v85 = v84;
          v86 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;
        }

        else
        {
          v86 = 0;
          v88 = 0xF000000000000000;
        }

        v92 = [v68 edPKData];
        v90 = v86;
        if (v92)
        {
          v93 = v92;
          v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v107 = v95;
          v108 = v94;
        }

        else
        {
          v107 = 0xF000000000000000;
          v108 = 0;
        }

        v96 = [v68 idsDeviceID];
        if (v96)
        {
          v97 = v96;
          v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v99 = v98;
        }

        else
        {
          v106 = 0;
          v99 = 0;
        }

        v105 = v99;
        v89 = [v68 featureFlags];
        v91 = v88;
      }

      else
      {
        v89 = 0;
        v105 = 0;
        v106 = 0;
        v90 = 0;
        v107 = 0xF000000000000000;
        v108 = 0;
        v91 = 0xF000000000000000;
      }

      v100 = sub_1001BC3B0(v89);
      v101 = [v1 discoverableLevel] != 0;
      sub_1002A9924(v66, v115);
      sub_10028BCC0(0, 0xF000000000000000);
      sub_10028BCC0(0, 0xF000000000000000);
      sub_10028BCC0(0, 0xF000000000000000);
      sub_10028BCC0(0, 0xF000000000000000);
      *(v0 + 16) = v114;
      *(v0 + 24) = v113;
      *(v0 + 32) = v112;
      *(v0 + 40) = v111;
      *(v0 + 48) = v66;
      *(v0 + 56) = v115;
      *(v0 + 64) = v110;
      *(v0 + 72) = v109;
      *(v0 + 80) = v90;
      *(v0 + 88) = v91;
      *(v0 + 96) = v108;
      *(v0 + 104) = v107;
      *(v0 + 112) = v106;
      *(v0 + 120) = v105;
      *(v0 + 128) = v100;
      *(v0 + 136) = 0;
      *(v0 + 144) = v42;
      *(v0 + 152) = v44;
      *(v0 + 160) = v101;
      *(v0 + 168) = v114;
      *(v0 + 176) = v113;
      *(v0 + 184) = v112;
      *(v0 + 192) = v111;
      *(v0 + 200) = v66;
      *(v0 + 208) = v115;
      *(v0 + 216) = v110;
      *(v0 + 224) = v109;
      *(v0 + 232) = v90;
      *(v0 + 240) = v91;
      *(v0 + 248) = v108;
      *(v0 + 256) = v107;
      *(v0 + 264) = v106;
      *(v0 + 272) = v105;
      *(v0 + 280) = v100;
      *(v0 + 288) = 0;
      *(v0 + 296) = v42;
      *(v0 + 304) = v44;
      *(v0 + 312) = v101;
      sub_1003CB81C(v0 + 16, v0 + 320);
      sub_1003CB878(v0 + 168);
      v102 = swift_task_alloc();
      *(v0 + 584) = v102;
      *v102 = v0;
      v102[1] = sub_1006398D0;
      v103 = *(v0 + 496);
      v104 = *(v0 + 504);

      return sub_1006460E4(v0 + 16, v103);
    }
  }

  else
  {
    if (qword_100973B88 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100987550);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Screen is off, rejecting DISCOVER", v24, 2u);
    }

    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v27 = *(v0 + 512);
    v28 = *(v0 + 496);

    sub_10064FA6C(v28, v27, type metadata accessor for SDAirDropServerConnection);
    (*(v25 + 56))(v27, 0, 1, v26);
    v29 = swift_task_alloc();
    *(v0 + 672) = v29;
    *v29 = v0;
    v29[1] = sub_10063A248;
    v31 = *(v0 + 504);
    v30 = *(v0 + 512);

    return sub_100645498(v30);
  }
}
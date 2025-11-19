uint64_t sub_10002B050(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;

  return sub_100028248(sub_1000DAB5C, a1, v1);
}

uint64_t sub_10002B0A4()
{
  v1 = v0[49];
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  v7 = v0[38];
  v6 = v0[39];
  return v0[50];
}

unint64_t sub_10002B0EC()
{
  result = qword_1001BB418;
  if (!qword_1001BB418)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB418);
  }

  return result;
}

void sub_10002B170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int64_t a17, uint64_t a18)
{
  sub_10000355C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if ((v18 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    v26 = sub_100005B00();
    type metadata accessor for InferenceProviderAsset(v26);
    sub_10000CCB4();
    sub_10005FAF0(v27, v28);
    sub_100011A70();
    Set.Iterator.init(_cocoa:)();
    v19 = a14;
    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
    a17 = 0;
    v40 = *(v18 + 32);
    sub_100011E24();
    a15 = v19 + 56;
    a16 = ~v42;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(v41 << v43);
    }

    else
    {
      v44 = v41;
    }

    a18 = v44 & *(v19 + 56);
    if (!v23)
    {
      goto LABEL_26;
    }
  }

  if (!v21)
  {
LABEL_26:
    *v25 = v19;
    v25[1] = a15;
    v25[2] = a16;
    v25[3] = a17;
    v25[4] = a18;
    sub_100005F10();
    return;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    v45 = a16;
    v46 = v25;
    v33 = 0;
    v34 = (a16 + 64) >> 6;
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v19 < 0)
      {
        if (!__CocoaSet.Iterator.next()() || (type metadata accessor for InferenceProviderAsset(0), sub_1000358A4(), swift_dynamicCast(), (v39 = a13) == 0))
        {
LABEL_25:
          a16 = v45;
          v25 = v46;
          goto LABEL_26;
        }
      }

      else
      {
        if (!a18)
        {
          while (1)
          {
            v36 = a17 + 1;
            if (__OFADD__(a17, 1))
            {
              break;
            }

            if (v36 >= v34)
            {
              a18 = 0;
              goto LABEL_25;
            }

            a18 = *(a15 + 8 * v36);
            ++a17;
            if (a18)
            {
              a17 = v36;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        sub_100011268();
        v38 = *(*(v19 + 48) + ((a17 << 9) | (8 * v37)));

        if (!v39)
        {
          goto LABEL_25;
        }
      }

      *v23++ = v39;
      ++v33;
      if (v35 == v21)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10002B334()
{
  v3 = v1[26];
  v4 = v1[27];
  v5 = v0 + *(v1[30] + 20);
  v6 = v1[29];

  return sub_100116D68(v5, v6);
}

void *sub_10002B370(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v8 = sub_100002F04(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100002B8C();
  v13 = v12 - v11;
  result = sub_10000E8DC(a4);
  v15 = result;
  v16 = 0;
  v17 = a4 & 0xC000000000000001;
  v18 = a4 & 0xFFFFFFFFFFFFFF8;
  v28 = v13;
  while (1)
  {
    if (v15 == v16)
    {
      return _swiftEmptyArrayStorage;
    }

    if (v17)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = result;
    }

    else
    {
      if (v16 >= *(v18 + 16))
      {
        goto LABEL_14;
      }

      v19 = *(a4 + 8 * v16 + 32);
    }

    if (__OFADD__(v16, 1))
    {
      break;
    }

    v20 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0();
    sub_10001938C(v20 + v19, v13);
    LOBYTE(v20) = a2(v13);
    sub_1000193F0(v13);
    if (v20)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v21 = v15;
      v22 = v18;
      v23 = v17;
      v24 = a4;
      v25 = a2;
      v26 = a3;
      v27 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a3 = v26;
      a2 = v25;
      a4 = v24;
      v17 = v23;
      v18 = v22;
      v15 = v21;
      v13 = v28;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v16;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_10002B524()
{
  sub_1000055B0();
  v2 = sub_1000494E8();
  v37 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(v2);
  v3 = sub_100002C00(v37);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v36 = v7 - v6;
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      v34 = v1;
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      v8 = sub_100005B00();
      type metadata accessor for InferenceProviderAsset(v8);
      sub_1000056C4();
      sub_100011B14(v9, v10);
      sub_100036724();
      Set.Iterator.init(_cocoa:)();
      v1 = v38[4];
      v35 = v38[5];
      v11 = v38[6];
      v12 = v38[7];
      v13 = v38[8];
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (!*(v1 + 16))
  {
LABEL_26:
    sub_100002EEC();
    return;
  }

  v14 = *(v1 + 32);
  sub_100011E24();
  v15 = *(v1 + 56);
  v35 = v1 + 56;
  v11 = ~v16;
  sub_10000A5E8();
  v13 = v17 & v18;

  v12 = 0;
  v34 = v1;
LABEL_6:
  while (1)
  {
    v19 = v12;
    if ((v1 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for InferenceProviderAsset(0), sub_1000358A4(), swift_dynamicCast(), v0 = v38[0], v24 = v13, !v38[0]))
    {
LABEL_24:
      v21 = v35;
LABEL_25:
      sub_100019334(v1, v21, v11, v19, v13);
      sub_100011CBC(v34);
      goto LABEL_26;
    }

LABEL_15:
    v27 = v13;
    v28 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    v13 = v24;
    sub_1000192DC(v28 + v0, v36);
    v29 = *(*(v36 + *(v37 + 40)) + 16);
    sub_100019338();

    if (v29)
    {
      sub_100019334(v1, v35, v11, v19, v27);
      v30 = v34;
      v38[0] = v34;

      while ((sub_1000453EC(v30) & 1) == 0)
      {

        v32 = sub_100058460(v31, v38);

        if (!v32)
        {
          goto LABEL_29;
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v33 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v33 >> 1)
        {
          sub_1000127D4(v33);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        sub_1000588F0(v32);
        sub_100042D9C();

        v30 = v38[0];
      }

      goto LABEL_26;
    }
  }

  v20 = v12;
  v21 = v35;
  if (v13)
  {
LABEL_11:
    sub_1000062A0();
    v24 = v23 & v22;
    v25 = *(v1 + 48);
    sub_10004D404(v26);
    if (!v0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= ((v11 + 64) >> 6))
    {
      v13 = 0;
      goto LABEL_25;
    }

    ++v20;
    if (*(v35 + 8 * v12))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_10002B8AC()
{
  type metadata accessor for Date();
  v0 = *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 32);
  sub_10002B0EC();
  return dispatch thunk of static Comparable.<= infix(_:_:)() & 1;
}

void sub_10002B918(uint64_t a1)
{
  sub_10000E8DC(a1);
  v5 = type metadata accessor for InferenceProviderAsset(0);
  sub_1000059C0();
  sub_10000814C(v6, v7);
  sub_100012484();
  v9[1] = Set.init(minimumCapacity:)();
  sub_10000E8DC(a1);
  sub_10001D2F0();
  while (1)
  {
    if (v5 == v1)
    {

      return;
    }

    if (v2)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_11;
      }

      v8 = *(a1 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    sub_10001A264(v9, v8);

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

BOOL sub_10002BA24(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10002BA5C()
{
  sub_100002BAC();
  *(v1 + 256) = v2;
  *(v1 + 264) = v0;
  *(v1 + 520) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  v6 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  *(v1 + 272) = v6;
  sub_100002F04(v6);
  v8 = *(v7 + 64);
  *(v1 + 280) = sub_100002C58();
  State = type metadata accessor for LoadState();
  *(v1 + 288) = State;
  sub_100002F44(State);
  *(v1 + 296) = v10;
  v12 = *(v11 + 64);
  *(v1 + 304) = sub_10000F0C0();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  v13 = sub_100002C10();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10002BB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v20 = v16[33];
  v21 = v16[30];
  v22 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  v16[42] = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v16[43] = v22;
  sub_100004CBC();
  swift_beginAccess();
  sub_100004CBC();
  swift_beginAccess();
  for (i = 0; ; i = v16[44] + 1)
  {
    v16[44] = i;
    if (i == 100)
    {
      break;
    }

    sub_100013AC4();
    if (v22)
    {
      v56 = sub_10001922C(v24);
      v19(v56);
      v57 = qword_1001B8930;

      if (v57 != -1)
      {
        sub_100005154();
        swift_once();
      }

      v58 = sub_10001CF88();
      sub_10000641C(v58, qword_1001BB110);
      v59 = sub_100012D9C();
      v19(v59);

      v60 = v18;
      v61 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_1000DAFD0();
      sub_100011230();
      sub_100004D58();
      if (v62)
      {
        LODWORD(a11) = v18;
        v60 = v16[30];
        sub_100002F10();
        v63 = swift_slowAlloc();
        sub_100011828();
        swift_slowAlloc();
        sub_100013FE8();
        *v63 = 136315394;
        v64 = sub_100027434();
        sub_1000359D4(v64, v65, v66, v67, v68);
        sub_1000DAEC4();
        sub_100031678();
        sub_100002D0C();
        sub_100011B14(v69, v70);
        sub_100060720();
        v71 = sub_100009DA0();
        enum case for LoadState.dynamicMode(_:)(v71);
        v72 = sub_1000037BC();
        sub_100004A3C(v72, v73, v74);
        sub_10000A08C();

        *(v63 + 14) = v60;
        sub_100018CCC(&_mh_execute_header, "unloadAsset for %s found pendingTransitionTask to %s", v18);
        sub_100057A54();
        sub_100061AD8();

        sub_1000039CC();
      }

      else
      {

        v81 = sub_10001992C();
        enum case for LoadState.dynamicMode(_:)(v81);
      }

      v16[46] = &enum case for LoadState.dynamicMode(_:);
      v82 = async function pointer to Task.value.getter[1];
      v83 = swift_task_alloc();
      sub_1000DAD8C(v83);
      sub_100065020(&qword_1001B8F60, &unk_100171260);
      sub_10001E520();
      *v60 = v84;
      sub_10000A8B8();
      v60[1] = v85;
      sub_100006308();
      sub_100003D04();

      return Task.value.getter(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    sub_1000DAC20();

    sub_10002D91C();
    sub_100032848();
    sub_10005D750(v25);
    if (v26)
    {
      if (MEMORY[0x10])
      {
LABEL_24:
        sub_100037EA8();
        sub_100002EE0();
        v75 = swift_allocObject();
        sub_1000127B8(v75);
LABEL_26:

        sub_1000059F8();
        sub_100003D04();

        return _swift_task_switch(v77, v78, v79);
      }
    }

    else if (__CocoaSet.count.getter())
    {
      goto LABEL_24;
    }

    v27 = v16[45];
    sub_100053B5C();
    sub_1000DABCC();

    sub_10002D91C();
    sub_100032848();
    sub_1000192B0(v28);
    if (v26)
    {
      if (MEMORY[0x10])
      {
LABEL_25:
        sub_100037EA8();
        sub_100002EE0();
        v76 = swift_allocObject();
        sub_100004BD8(v76);
        goto LABEL_26;
      }
    }

    else if (__CocoaSet.count.getter())
    {
      goto LABEL_25;
    }
  }

  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v29 = sub_100053B80();
  sub_10000641C(v29, qword_1001BB110);
  sub_10000D0E8();

  v30 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    v31 = v16[30];
    sub_10000A05C();
    swift_slowAlloc();
    sub_10000A45C();
    swift_slowAlloc();
    sub_100006030();
    LODWORD(enum case for LoadState.dynamicMode(_:)) = 136315138;
    v32 = sub_100027434();
    sub_1000359D4(v32, v33, v34, v35, v36);
    sub_100007BA0();
    *(&enum case for LoadState.dynamicMode(_:) + 4) = v18;
    sub_1000033FC();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    sub_100003324(v17);
    sub_1000039CC();

    sub_10000BFCC();
  }

  type metadata accessor for ModelManagerError();
  sub_1000113B0();
  sub_100011B14(v42, v43);
  sub_100013D58();
  v44 = swift_allocError();
  sub_10002AB60(v44, v45);
  sub_1000076C8();
  (*(v46 + 104))();
  swift_willThrow();
  sub_10004D130();

  sub_100001F00();
  sub_100003D04();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10002C278(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100065020(a2, a3);
  sub_100006098(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10002C2D4()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;
  *(v2 + 288) = v0;

  if (v0)
  {
    v8 = sub_10011890C;
  }

  else
  {
    v9 = *(v2 + 272);

    v8 = sub_10002C410;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10002C410()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = sub_10000205C();
  if (sub_10000C6C0(v3, v4, v2) == 1)
  {
    sub_10002C278(v1, &qword_1001BBA80, &qword_100172440);
    v5 = *(v0 + 264);

    *(v0 + 145) = 1;
    v6 = *(v0 + 256);

    if (qword_1001B8A78 != -1)
    {
      sub_10000877C();
    }

    v7 = type metadata accessor for Logger();
    sub_100002FD0(v7, qword_1001BCD78);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (sub_100002F80(v9))
    {
      v10 = sub_100007648();
      sub_10000A240(v10);
      sub_100003DD0();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      sub_100002F64();
    }

    v16 = *(v0 + 152);

    sub_100004C24();
    Strong = swift_weakLoadStrong();
    *(v0 + 336) = Strong;
    if (!Strong)
    {
      sub_100005CE0();
      os_activity_scope_leave((v8 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_10000A7FC();

      __asm { BRAA            X1, X16 }
    }

    sub_10000A7FC();

    return _swift_task_switch(v18, v19, v20);
  }

  else
  {
    v22 = *(v0 + 240);
    v23 = *(v0 + 200);
    v24 = *(v0 + 208);
    v25 = *(v0 + 184);
    v26 = *(v0 + 192);
    v41 = *(v0 + 176);
    v27 = *(v0 + 248) + 15;
    (*(v22 + 32))(*(v0 + 256), v1, v2);

    static ContinuousClock.Instant.now.getter();
    v28 = swift_task_alloc();
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v29 = *(v22 + 8);
    *(v0 + 296) = v29;
    *(v0 + 304) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v28, v2);

    static Duration.seconds(_:)();
    ContinuousClock.Instant.advanced(by:)();
    *(v0 + 312) = *(v26 + 8);
    *(v0 + 320) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = sub_100003754();
    v31(v30);
    *(v0 + 128) = xmmword_1001723E0;
    *(v0 + 144) = 0;
    static Clock<>.continuous.getter();
    v32 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
    v33 = swift_task_alloc();
    *(v0 + 328) = v33;
    sub_10002C7C4(&qword_1001BBA88, &type metadata accessor for ContinuousClock);
    *v33 = v0;
    v33[1] = sub_1000106D8;
    v34 = *(v0 + 208);
    v35 = *(v0 + 176);
    v36 = *(v0 + 160);
    sub_10000A7FC();

    return static Task<>.sleep<A>(until:tolerance:clock:)();
  }
}

uint64_t sub_10002C7C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002CB9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10002CBE0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    sub_100011D90(result, a2);
  }

  return result;
}

uint64_t sub_10002CC20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CC90(unint64_t a1)
{
  v5 = variable initialization expression of InferenceProviderManager.updatesReceived();
  v6 = sub_10002D020(&v32, a1, 0, 1, v5);
  v7 = sub_10000E8DC(a1);
  v8 = v32;
  if (v32 == v7)
  {
    sub_10002CF8C(a1);
    return v6;
  }

  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = v7;
  sub_10010C3D8(0, a1);
  sub_10010C3D8(v8, a1);
  v3 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v8)
  {
    type metadata accessor for InferenceProviderAsset(0);

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v9);
      v9 = v10;
    }

    while (v8 != v10);
  }

  else
  {
  }

  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_14:

    v12 = _CocoaArrayWrapper.subscript.getter();
    v13 = v16;
    i = v17;
    v14 = v18;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  i = 0;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  v13 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v14 = (2 * v8) | 1;
LABEL_15:
  v30 = v3;
  v31 = v2;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];

  if (__OFSUB__(v14 >> 1, i))
  {
    goto LABEL_36;
  }

  if (v20 != (v14 >> 1) - i)
  {
    goto LABEL_37;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v3 = v30;
  if (i)
  {
    goto LABEL_22;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v15)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v33 = v6;
    v34 = i;
    if (v1 < v8)
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_10010C3D8(v1, a1);
    if (!v3)
    {

      goto LABEL_29;
    }

    if (v8 < v1)
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_unknownObjectRelease();
    v3 = v30;
    v2 = v31;
LABEL_12:
    sub_10010A754(v12, v13, i, v14);
  }

  type metadata accessor for InferenceProviderAsset(0);

  v21 = v8;
  do
  {
    v22 = v21 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v21);
    v21 = v22;
  }

  while (v1 != v22);
LABEL_29:

  if (v2)
  {
    v23 = _CocoaArrayWrapper.subscript.getter();
    v24 = v26;
    v8 = v27;
    v25 = v28;
  }

  else
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v1) | 1;
  }

  sub_10010A8CC(v23, v24, v8, v25);
  swift_unknownObjectRelease();

  return v33;
}

void *sub_10002CF8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      v4 = v3;
      v1 = sub_1000106D0(v3, 0);
      sub_100149310();
      v6 = v5;

      if (v6 == v4)
      {
        return v1;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_10002D020(uint64_t *a1, int64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_10000E8DC(a2);
  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  v11 = static _HashTable.scale(forCapacity:)();
  if (v11 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = v12;
  }

  if (v13 > 4)
  {
    v15 = _HashTable.init(scale:reservedScale:)();
    sub_10010B2E8(&v17, a2, (v15 + 16));
    *a1 = v17;
  }

  else
  {
    if (sub_10000E8DC(a2) >= 2)
    {
      if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
      {
        v14 = sub_10010C120(a2, sub_10010C430);
      }

      else
      {
        v14 = sub_10002D12C((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      }
    }

    else
    {
      v14 = sub_10000E8DC(a2);
    }

    v15 = 0;
    *a1 = v14;
  }

  return v15;
}

uint64_t sub_10002D12C(uint64_t a1, uint64_t a2)
{
  v11 = sub_10002D24C(_swiftEmptyArrayStorage);
  result = specialized ContiguousArray.reserveCapacity(_:)();
  for (i = 0; ; ++i)
  {
    if (i == a2)
    {
LABEL_9:

      return a2;
    }

    if (a2 < 0)
    {
      break;
    }

    v6 = *(a1 + 8 * i);
    v7 = v11[2];

    v8 = 4;
    while (v7)
    {
      type metadata accessor for InferenceProviderAsset(0);
      v9 = sub_100019CE4(v6, v11[v8++]);
      --v7;
      if (v9)
      {

        a2 = i;
        goto LABEL_9;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v10 = v11[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    __chkstk_darwin(a1);
    v9 = 0;
    v10 = 0;
    __chkstk_darwin((v3 + 63) >> 6);
    static _UnsafeBitSet._withTemporaryBitSet(wordCount:run:)();
  }

  else
  {
    if (!(_swiftEmptyArrayStorage >> 62) || (v5 = _CocoaArrayWrapper.endIndex.getter()) == 0 || (v6 = v5, sub_1000106D0(v5, 0), sub_100149310(), v8 = v7, , v8 == v6))
    {

      return 0;
    }

    __break(1u);
  }

  __break(1u);

  result = sub_10002CB9C(v9, v10);
  __break(1u);
  return result;
}

uint64_t sub_10002D450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_10002D4FC(a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

void *sub_10002D4A0(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = a3(&v8);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_10002CBE0(v6, v7);
  }

  return result;
}

uint64_t sub_10002D4FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  _UnsafeBitSet.insertAll(upTo:)(v6);
  v7 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_10002C7C4(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset);
    Set.Iterator.init(_cocoa:)();
    v7 = v41;
    v8 = v42;
    v9 = v43;
    v10 = v44;
    v11 = v45;
  }

  else
  {
    v12 = -1 << *(a4 + 32);
    v8 = a4 + 56;
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

    v11 = v14 & *(a4 + 56);

    v10 = 0;
  }

  v32 = v9;
  v15 = (v9 + 64) >> 6;
  v16 = a3 + 32;
  v33 = v6;
  v39 = a2;
  for (i = v7; ; v7 = i)
  {
    v17 = v11;
    v38 = v10;
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()())
    {
      a2 = v39;
      goto LABEL_30;
    }

    type metadata accessor for InferenceProviderAsset(0);
    swift_dynamicCast();
    v20 = v46;
    v40 = v17;
    a2 = v39;
    if (!v46)
    {
LABEL_29:
      v10 = v38;
LABEL_30:
      sub_100019334(v7, v8, v32, v10, v17);
      v28 = *a1;
      v29 = a1[1];
      v30 = variable initialization expression of InferenceProviderManager.updatesReceived();

      return sub_10002C80C(v28, v29, v33, 0, v30, a2, a3);
    }

LABEL_17:
    v36 = v17;
    if (a2)
    {

      sub_100143334(v20, v16, v6, (a2 + 16));
      j = v21;
      v24 = v23;

      if ((v24 & 1) == 0 && (j & 0x8000000000000000) == 0)
      {
LABEL_20:
        if (_UnsafeBitSet.remove(_:)(j))
        {
          if (v33 == 1)
          {
            goto LABEL_33;
          }

          --v33;
        }
      }
    }

    else
    {
      for (j = 0; v6 != j; ++j)
      {
        type metadata accessor for InferenceProviderAsset(0);
        v25 = *(v16 + 8 * j);

        v27 = sub_100019CE4(v26, v20);

        if (v27)
        {
          goto LABEL_20;
        }
      }
    }

    a2 = v39;
    v11 = v40;
  }

  v18 = v10;
  v19 = v11;
  if (v11)
  {
LABEL_13:
    v40 = (v19 - 1) & v19;
    v20 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v19)))));

    if (!v20)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      v17 = 0;
      goto LABEL_29;
    }

    v19 = *(v8 + 8 * v10);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_33:
  sub_10002D24C(_swiftEmptyArrayStorage);

  sub_100019334(i, v8, v32, v38, v36);
  return 0;
}

BOOL sub_10002D88C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + a1;
  sub_100004BA0();
  v2 = *&v1[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 40)];

  v3 = InferenceProviderAssetDescriptor.identifier.getter();
  v5 = sub_10000A130(v3, v4, v2);

  return v5;
}

void sub_10002D928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000055B0();
  v74 = v27;
  v75 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v71 = a26;
  v72 = v39;
  v73 = a25;
  v40 = a23;
  v41 = a22;
  v42 = a21;
  if (sub_1000136A8())
  {
    v43 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v62 = &v58;
    sub_100002F04(v43);
    v45 = *(v44 + 64);
    sub_100004B1C();
    __chkstk_darwin(v46);
    v59 = &v58 - v47;
    v48 = sub_100003370(v26 + 5, v26[8]);
    v60 = &v58;
    v49 = __chkstk_darwin(v48);
    v65 = v26;
    v66 = v38;
    *(&v58 - 14) = v26;
    *(&v58 - 13) = v38;
    v67 = v36;
    v68 = v34;
    *(&v58 - 12) = v36;
    *(&v58 - 11) = v34;
    v69 = v32;
    v70 = v30;
    *(&v58 - 10) = v32;
    *(&v58 - 9) = a24;
    *(&v58 - 8) = v73;
    *(&v58 - 7) = a22;
    v53 = a23;
    v54 = v75;
    LOBYTE(v55) = a21 & 1;
    v56 = v74;
    v57 = v30;
    v50 = v59;
    sub_1000084CC(v49);
    sub_1000030E4();
    v64 = a22;
    HIDWORD(v63) = a21;
    v61 = a23;
    if (a21)
    {
    }

    v51 = sub_1000128AC();
    sub_10000A6F0(v51);
    sub_10000ECD8(v50, &qword_1001BD070, &qword_100173948);
    v40 = v61;
    v32 = v69;
    v30 = v70;
    v36 = v67;
    v34 = v68;
    v26 = v65;
    v38 = v66;
    v41 = v64;
    v42 = BYTE4(v63);
  }

  v52 = v26[10];
  LOBYTE(v53) = v42 & 1;
  sub_10002F77C(v72, v38, v36, v34, v32, v74, v30, v75, v53, v41, v40, a24, v73, v71, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  sub_100002EEC();
}

uint64_t sub_10002DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v36 = a8;
  v35 = a7;
  v34 = a6;
  v33 = a5;
  v53 = a14;
  v39 = a13;
  v38 = a12;
  v37 = a11;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v17 = sub_100065020(&qword_1001BD078, &qword_100173950);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v33 - v19;
  v21 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:);
  v22 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  sub_100009BFC(v20, 0, 1, v22);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v23 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = a9;
  v52 = a10;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v25 = sub_100065020(&qword_1001BD090, &qword_100173970);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = (&v33 - v27);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition();
  v29 = swift_allocBox();
  v40 = v37;
  v41 = v38 & 1;
  v42 = v39;
  v43 = v53;
  static Buildable.with(_:)();
  *v28 = v29;
  v30 = enum case for GenerativeFunctionsInstrumentationMetadata.assetTransition(_:);
  v31 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v31 - 8) + 104))(v28, v30, v31);
  sub_100009BFC(v28, 0, 1, v31);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_10002DEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v54 = a8;
  v51 = a1;
  v52 = a7;
  v49 = a5;
  v50 = a6;
  v48 = a4;
  v60 = a10;
  v55 = a9;
  v11 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v46 - v13;
  v15 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  __chkstk_darwin(v15);
  v46 = &v46 - v17;
  v18 = sub_100065020(&qword_1001BB410, &unk_100172340);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v46 - v20;
  v22 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v46 - v25;
  v27 = sub_100065020(&qword_1001BD088, &qword_100173968);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v46 - v29;
  v31 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v56 = a3;
  v57 = v48;
  v58 = v49;
  v59 = v50;
  v32 = v53;
  static Buildable.with(_:)();
  v53 = v32;
  sub_100009BFC(v30, 0, 1, v31);
  GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();
  sub_10002E90C(v52, v21, &qword_1001BB410, &unk_100172340);
  if (sub_10000C6C0(v21, 1, v22) == 1)
  {
    sub_10000ECD8(v21, &qword_1001BB410, &unk_100172340);
  }

  else
  {
    (*(v23 + 32))(v26, v21, v22);
    v33 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
    v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v33 - 8);
    v36 = &v46 - v35;
    UUIDIdentifier.uuid.getter();
    v37 = type metadata accessor for UUID();
    sub_100009BFC(v36, 0, 1, v37);
    GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
    (*(v23 + 8))(v26, v22);
  }

  sub_10002E90C(v54, v14, &qword_1001BB408, &unk_100171DC0);
  if (sub_10000C6C0(v14, 1, v15) == 1)
  {
    sub_10000ECD8(v14, &qword_1001BB408, &unk_100171DC0);
  }

  else
  {
    v39 = v46;
    v38 = v47;
    (*(v47 + 32))(v46, v14, v15);
    v40 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
    v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v40 - 8);
    v43 = &v46 - v42;
    UUIDIdentifier.uuid.getter();
    v44 = type metadata accessor for UUID();
    sub_100009BFC(v43, 0, 1, v44);
    GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();
    (*(v38 + 8))(v39, v15);
  }

  return GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.setter();
}

uint64_t sub_10002E3FC()
{
  sub_100004C44();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_10002E41C(v3, v4, v5);
}

uint64_t sub_10002E41C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100065020(&qword_1001BD0B0, &qword_100173990);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  sub_10002E5C8(a2, a3 & 1, (&v16 - v7));
  v9 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason();
  sub_100009BFC(v8, 0, 1, v9);
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.reason.setter();
  v10 = sub_100065020(&qword_1001BD0B8, &qword_100173998);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002E72C((&v16 - v12));
  State = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState();
  sub_100009BFC(&v16 - v12, 0, 1, State);
  v14 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.fromState.setter();
  __chkstk_darwin(v14);
  sub_10002E72C((&v16 - v12));
  sub_100009BFC(&v16 - v12, 0, 1, State);
  return GenerativeFunctionsInstrumentationMetadata.AssetTransition.toState.setter();
}

uint64_t sub_10002E5C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason();
    v6 = sub_100002C00(v5);
    v8 = *(v7 + 104);
    v9 = v6;
    switch(a1)
    {
      case 1:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.userInitiated(_:);
        break;
      case 2:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.policyChange(_:);
        break;
      case 3:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.memoryBudgetPressure(_:);
        break;
      case 4:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.assetVersionChange(_:);
        break;
      case 5:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.policyChangeCriticalMemory(_:);
        break;
      case 6:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.purgeInactiveAssets(_:);
        break;
      case 7:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.policyChangeBackgroundSession(_:);
        break;
      case 8:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.acquisitionError(_:);
        break;
      case 9:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.connectionTermination(_:);
        break;
      default:
        v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.prewarm(_:);
        break;
    }

    v16 = *v10;
    v15 = a3;
  }

  else
  {
    *a3 = a1;
    v11 = enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.unknown(_:);
    v12 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason();
    v13 = sub_100002C00(v12);
    v8 = *(v14 + 104);
    v9 = v13;
    v15 = a3;
    v16 = v11;
  }

  return v8(v15, v16, v9);
}

uint64_t sub_10002E72C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for LoadState();
  v5 = *(State - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(State);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, State);
  v9 = (*(v5 + 88))(v8, State);
  if (v9 == enum case for LoadState.unloaded(_:))
  {
    v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.unloaded(_:);
  }

  else if (v9 == enum case for LoadState.dynamicMode(_:))
  {
    v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.dynamicMode(_:);
  }

  else
  {
    if (v9 != enum case for LoadState.loaded(_:))
    {
      *a1 = 0;
      v15 = enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.unknown(_:);
      v16 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState();
      sub_100002C00(v16);
      (*(v17 + 104))(a1, v15);
      return (*(v5 + 8))(v8, State);
    }

    v10 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.loaded(_:);
  }

  v11 = *v10;
  v12 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState();
  sub_100002C00(v12);
  return (*(v13 + 104))(a1, v11);
}

uint64_t sub_10002E90C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100065020(a3, a4);
  sub_100002C00(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10002E96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100009C8C(a1, a2, a3);
  v7 = sub_100065020(v5, v6);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_10002E9D0()
{
  result = qword_1001B8F58;
  if (!qword_1001B8F58)
  {
    sub_10006A614(&qword_1001B8F48, &qword_10016FB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8F58);
  }

  return result;
}

uint64_t sub_10002EA34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002EA7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002EAC4()
{
  v2 = *(v0 + 336);
  v3 = *(v0 + 240);
}

uint64_t sub_10002EB0C()
{
  sub_100001ED0();
  sub_1000135C4();
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v4[1] = sub_10006FA64;

  return sub_10002EBA8(v2, v1, v0);
}

uint64_t sub_10002EBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v5 = *(*(sub_100065020(&qword_1001BA488, &qword_100170FE8) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = type metadata accessor for RequestPriority();
  v3[18] = v6;
  v7 = *(v6 - 8);
  v3[19] = v7;
  v8 = *(v7 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100030D90, a2, 0);
}

Class sub_10002ECE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100002D24();
  swift_beginAccess();
  sub_1000332D4(v10 + v4, v4, a2, a3 & 1, a4, a1, &v12);
  result = swift_endAccess();
  if (!v5)
  {
    return v12.isa;
  }

  return result;
}

uint64_t sub_10002ED80()
{

  return sub_1000192DC(v2 + v0, v1);
}

uint64_t sub_10002ED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v31;
  *(v8 + 364) = a7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 32) = a4;
  v9 = type metadata accessor for InferenceError();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v12 = type metadata accessor for AssetCost();
  *(v8 + 96) = v12;
  v13 = *(v12 - 8);
  *(v8 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v15 = type metadata accessor for ModelManagerError();
  *(v8 + 120) = v15;
  v16 = *(v15 - 8);
  *(v8 + 128) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v18 = *(*(sub_100065020(&qword_1001BB408, &unk_100171DC0) - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v19 = *(*(sub_100065020(&qword_1001BB410, &unk_100172340) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v20 = type metadata accessor for InferenceProviderDescriptor();
  *(v8 + 160) = v20;
  v21 = *(v20 - 8);
  *(v8 + 168) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  State = type metadata accessor for LoadState();
  *(v8 + 184) = State;
  v24 = *(State - 8);
  *(v8 + 192) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v26 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v8 + 216) = v26;
  v27 = *(v26 - 8);
  *(v8 + 224) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();

  return (_swift_task_switch)(sub_10002F0C0, 0);
}

uint64_t sub_10002F0C0()
{
  v81 = *(v0 + 232);
  v1 = *(v0 + 208);
  v79 = *(v0 + 216);
  v72 = v1;
  v2 = *(v0 + 192);
  v83 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v76 = *(v0 + 160);
  v78 = *(v0 + 152);
  v80 = *(v0 + 144);
  v82 = *(v0 + 364);
  v88 = *(v0 + 48);
  v5 = *(v0 + 32);
  v84 = *(v0 + 56);
  v86 = *(v0 + 40);
  type metadata accessor for RequestMetadata();
  UUIDIdentifier.init()();
  v6 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
  *(v0 + 240) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
  v7 = *(v5 + v6 + 32);
  v77 = *(v5 + v6 + 24);
  sub_100003370((v5 + v6), v77);
  v8 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  *(v0 + 248) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  v9 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  v74 = v10;
  v75 = v9;
  v91 = v8;
  v73 = InferenceProviderAssetDescriptor.version.getter();
  v12 = v11;
  LODWORD(v11) = enum case for LoadState.unloaded(_:);
  *(v0 + 360) = enum case for LoadState.unloaded(_:);
  v13 = *(v2 + 104);
  *(v0 + 256) = v13;
  *(v0 + 264) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v90 = v11;
  v89 = v13;
  v13(v1);
  v14 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection;
  *(v0 + 272) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection;
  v92 = v5;
  v15 = (v5 + v14);
  v16 = v15[3];
  v17 = v15[4];
  v18 = sub_100003754();
  sub_100003370(v18, v19);
  sub_100003048();
  v20(v16, v17);
  v21 = InferenceProviderDescriptor.id.getter();
  v23 = v22;
  v24 = *(v3 + 8);
  *(v0 + 280) = v24;
  *(v0 + 288) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v71 = v24;
  v24(v4, v76);
  sub_100003978();
  sub_100009BFC(v25, v26, v27, v79);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100003978();
  sub_100009BFC(v28, v29, v30, v31);
  *(v0 + 296) = (*(v7 + 40))(v81, v75, v74, v73, v12, v86, v72, v88, v82 & 1, v21, v23, v78, v80, v84, v77, v7);

  sub_10000ECD8(v80, &qword_1001BB408, &unk_100171DC0);
  sub_10000ECD8(v78, &qword_1001BB410, &unk_100172340);
  v32 = *(v2 + 8);
  *(v0 + 304) = v32;
  *(v0 + 312) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v72, v83);
  if (qword_1001B8938 != -1)
  {
    sub_100005C90();
    swift_once();
  }

  v33 = *(v0 + 32);
  v34 = type metadata accessor for Logger();
  *(v0 + 320) = sub_10000641C(v34, qword_1001BB478);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = *(v0 + 176);
    v87 = *(v0 + 160);
    v38 = sub_1000267F8();
    sub_1000080A4();
    *v38 = 136315394;
    v39 = type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100005168();
    sub_100011B5C(v40, v41);
    v85 = v36;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_10001127C(v42, v43);
    sub_100013E7C();

    *(v38 + 4) = v39;
    *(v38 + 12) = 2080;
    v45 = v15[3];
    v44 = v15[4];
    sub_100003370(v15, v45);
    (*(v44 + 8))(v45, v44);
    sub_10000866C();
    sub_100011B5C(v46, v47);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v71(v37, v87);
    v51 = sub_10001993C();
    sub_100004A3C(v51, v50, v52);
    sub_100005974();
    v53 = v91;
    v54 = v92;

    *(v38 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v35, v85, "Unloading asset %s from %s", v38, 0x16u);
    sub_10000BEE8();
    sub_100002BD0();

    sub_100002BD0();
  }

  else
  {

    v53 = v91;
    v54 = v92;
  }

  v55 = *(v0 + 200);
  v56 = *(v0 + 184);
  v57 = v15[3];
  v58 = v15[4];
  v59 = sub_100002CBC();
  sub_100003370(v59, v60);
  v61 = sub_10001E4A8();
  v89(v61, v90, v56);
  v62 = *(v58 + 40);
  sub_100004B94();
  v93 = (v63 + *v63);
  v65 = *(v64 + 4);
  v66 = swift_task_alloc();
  *(v0 + 328) = v66;
  *v66 = v0;
  v66[1] = sub_100039628;
  v67 = *(v0 + 232);
  v68 = *(v0 + 200);
  v69 = *(v0 + 40);

  return v93(v54 + v53, v68, v69, v67, v57, v58);
}

uint64_t sub_10002F6B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000CBE4(a1, a2, a3, a4);
  sub_100002C00(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000062B0();
  v9(v8);
  return v4;
}

void sub_10002F77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1000055B0();
  v26 = v25;
  v130 = v27;
  v147 = v28;
  v148 = v29;
  v31 = v30;
  v132 = v32;
  v152 = v33;
  v131 = v34;
  v146 = v35;
  v36 = *(*(sub_100065020(&qword_1001BB410, &unk_100172340) - 8) + 64);
  sub_100004B1C();
  __chkstk_darwin(v37);
  v39 = &v127 - v38;
  sub_10002E96C(a24, &v127 - v38, &qword_1001BB410);
  v40 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  if (sub_10000C6C0(v39, 1, v40) == 1)
  {
    sub_10000ED30(v39, &qword_1001BB410, &unk_100172340);
    v134 = 0;
    v150 = 0xE000000000000000;
  }

  else
  {
    v134 = UUIDIdentifier.uuidString.getter();
    v150 = v41;
    (*(*(v40 - 8) + 8))(v39, v40);
  }

  v42 = *(*(sub_100065020(&qword_1001BB408, &unk_100171DC0) - 8) + 64);
  sub_100004B1C();
  __chkstk_darwin(v43);
  v45 = &v127 - v44;
  sub_10002E96C(a25, &v127 - v44, &qword_1001BB408);
  v46 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v47 = sub_10000C6C0(v45, 1, v46);
  v151 = a23;
  v153 = v31;
  if (v47 == 1)
  {
    sub_10000ED30(v45, &qword_1001BB408, &unk_100171DC0);
    v133 = 0;
    v154 = 0xE000000000000000;
  }

  else
  {
    v133 = UUIDIdentifier.uuidString.getter();
    v154 = v48;
    (*(*(v46 - 8) + 8))(v45, v46);
  }

  v144 = OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_signPoster;
  v149 = *(&v26->isa + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_assetTransitionPostString);
  v135 = *(&v26[2].isa + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_assetTransitionPostString);
  v142 = type metadata accessor for OSSignpostID();
  v143 = &v127;
  v49 = sub_100002BDC(v142);
  v141 = v50;
  v52 = *(v51 + 64);
  __chkstk_darwin(v49);
  v140 = v53;
  sub_100002D4C();
  OSSignposter.logHandle.getter();
  v136 = a23;
  v54 = OSSignpostID.init(log:)();
  v139 = &v127;
  v55 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v54);
  sub_100002B8C();
  v58 = v57 - v56;
  v145 = v59;
  (*(v59 + 16))(v57 - v56, v146, v40);
  State = type metadata accessor for LoadState();
  v137 = v40;
  v138 = &v127;
  v61 = sub_100002BDC(State);
  v146 = v26;
  v63 = v62;
  v65 = *(v64 + 64);
  __chkstk_darwin(v61);
  v66 = &v127 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(v63 + 16);
  v68 = v67(v66, v147, State);
  v147 = &v127;
  __chkstk_darwin(v68);
  v67(v66, v148, State);
  sub_100018380();

  v69 = sub_100013554();
  v72 = sub_100009C8C(v69, v70, v71);
  sub_100016484(v72);

  v73 = OSSignposter.logHandle.getter();
  LODWORD(v148) = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v77 = *(v63 + 8);
    v77(v66, State);
    v77(v66, State);
    v78 = (*(v145 + 8))(v58, v137);
    v79 = v136;
    goto LABEL_25;
  }

  v128 = v58;
  v144 = v66;
  v129 = v66;
  v146 = v73;
  if (v135)
  {
    v74 = v149;
    if (!HIDWORD(v149))
    {
      sub_100011408();
      if (v80)
      {
        __break(1u);
        goto LABEL_32;
      }

      sub_100005704();
      if (!(!v80 & v81))
      {
        sub_100013D88();
        if (v74 <= 0x7F)
        {
          v82 = v74 + 1;
LABEL_17:
          v155[0] = (v82 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v82) & 0x18)));
          v76 = v152;

          v75 = v153;

          v149 = v155;
          goto LABEL_18;
        }

        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      if (v74 < 0x800)
      {
        v82 = (v74 >> 6) + ((v74 & 0x3F) << 8) + 33217;
        goto LABEL_17;
      }

LABEL_32:
      sub_100013D88();
      goto LABEL_17;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v149)
  {
    __break(1u);
    goto LABEL_27;
  }

  sub_100013D88();
  v76 = v152;
  v75 = v153;
LABEL_18:
  v83 = v128;
  v152 = a22;
  v84 = swift_slowAlloc();
  v153 = swift_slowAlloc();
  v155[0] = v153;
  *v84 = 136448258;
  sub_10002E9D0();
  v85 = v137;
  dispatch thunk of CustomStringConvertible.description.getter();
  v87 = v86;
  (*(v66 + 1))(v83, v85);
  v88 = sub_10002A12C();
  v90 = sub_100004A3C(v88, v87, v89);

  *(v84 + 4) = v90;
  *(v84 + 12) = 2082;
  *(v84 + 14) = sub_100004A3C(v131, v76, v155);
  *(v84 + 22) = 2082;
  if (v75)
  {
    v91 = v75;
  }

  else
  {
    v91 = 0xE300000000000000;
  }

  v92 = sub_10002A12C();
  v94 = sub_100004A3C(v92, v91, v93);

  *(v84 + 24) = v94;
  *(v84 + 32) = 2082;
  sub_10002EA34(&qword_1001BA478, &type metadata accessor for LoadState);
  v95 = v144;
  sub_100005FEC();
  dispatch thunk of CustomStringConvertible.description.getter();
  v97 = v96;
  v98 = *(v66 + 1);
  v98(v95, v63);
  v99 = sub_10002A12C();
  v101 = sub_100004A3C(v99, v97, v100);

  *(v84 + 34) = v101;
  *(v84 + 42) = 2082;
  v102 = v129;
  sub_100005FEC();
  v103 = dispatch thunk of CustomStringConvertible.description.getter();
  v105 = v104;
  v98(v102, v63);
  v106 = sub_10002A12C();
  v108 = sub_100004A3C(v106, v105, v107);

  *(v84 + 44) = v108;
  *(v84 + 52) = 2050;
  if (sub_1000136A8())
  {
    v109 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason();
    v110 = sub_100002BDC(v109);
    v112 = v111;
    v114 = *(v113 + 64);
    __chkstk_darwin(v110);
    sub_1000086BC();
    sub_10002E5C8(v130, a21 & 1, v103);
    v115 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.rawValue.getter();
    (*(v112 + 8))(v103, v109);
  }

  else
  {
    v115 = 0;
  }

  v79 = v136;
  *(v84 + 54) = v115;
  *(v84 + 62) = 2082;
  *(v84 + 64) = sub_100004A3C(v152, v151, v155);
  *(v84 + 72) = 2082;
  sub_100004A3C(v134, v150, v155);
  sub_100061AE8();
  *(v84 + 74) = v115;
  *(v84 + 82) = 2082;
  sub_100004A3C(v133, v154, v155);
  sub_100061AE8();
  *(v84 + 84) = v115;
  v116 = OSSignpostID.rawValue.getter();
  v117 = v146;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v146, v148, v116, v149, "assetTransitionIdentifier: %{public, signpost.description=attribute,public}s,\nassetIdentifier: %{public, signpost.description=attribute,public}s,\nassetVersion: %{public, signpost.description=attribute,public}s,\nfromState: %{public, signpost.description=attribute,public}s,\ntoState: %{public, signpost.description=attribute,public}s,\nreason: %{public, signpost.description=attribute,public}ld,\ninferenceProviderIdentifier: %{public, signpost.description=attribute,public}s,\nRequestUUID: %{public, signpost.description=attribute,public}s,\nsessionIdentifier: %{public, signpost.description=attribute,public}s", v84, 0x5Cu);
  swift_arrayDestroy();
  sub_100002BB8();
  sub_100002BB8();

LABEL_25:
  __chkstk_darwin(v78);
  sub_100002D4C();
  v119 = v141;
  v118 = v142;
  v120 = sub_100009DB8();
  v121(v120, v79, v118);
  v122 = type metadata accessor for OSSignpostIntervalState();
  sub_1000038EC(v122);
  sub_100003170();
  OSSignpostIntervalState.init(id:isOpen:)();
  v123 = *(v119 + 8);
  v124 = sub_100005FEC();
  v125(v124);
  type metadata accessor for TelemetryIntervalState();
  v126 = sub_1000126B4();
  sub_10003533C(v126);
  sub_100002EEC();
}

uint64_t sub_100030274()
{
  v3 = *(v0 + 16);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_10003028C()
{
  v2 = *(v0 + 336);
  v3 = *(v0 + 240);
}

void sub_1000302A8()
{
  v3 = *(v0 + 336);
  v4 = *(v0 + 312);
}

uint64_t *sub_1000302D4()
{
  State = type metadata accessor for LoadState();
  v1 = sub_100002BDC(State);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002B8C();
  v6 = v3[2];
  v7 = sub_10000D01C();
  v8(v7);
  v9 = v3[11];
  v10 = sub_100002CBC();
  v12 = v11(v10);
  if (v12 == enum case for LoadState.unloaded(_:))
  {
    type metadata accessor for _OSActivity();
    sub_100005640();
    swift_allocObject();
    v13 = "Unloading InferenceProvider asset";
    v14 = 33;
  }

  else
  {
    v15 = v12;
    if (v12 == enum case for LoadState.dynamicMode(_:))
    {
      type metadata accessor for _OSActivity();
      sub_100005640();
      swift_allocObject();
      v13 = "Making InferenceProvider asset dynamic";
      v14 = 38;
    }

    else
    {
      v18 = enum case for LoadState.loaded(_:);
      type metadata accessor for _OSActivity();
      sub_100005640();
      swift_allocObject();
      if (v15 != v18)
      {
        v16 = sub_10001B160("Unknown InferenceProvider asset transition", 42, 2);
        v19 = v3[1];
        v20 = sub_100002CBC();
        v21(v20);
        return v16;
      }

      v13 = "Loading InferenceProvider asset";
      v14 = 31;
    }
  }

  return sub_10001B160(v13, v14, 2);
}

uint64_t sub_100030490()
{
  sub_100002BAC();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[27] = v5;
  v6 = type metadata accessor for ModelManagerError();
  v1[32] = v6;
  sub_100002F44(v6);
  v1[33] = v7;
  v9 = *(v8 + 64);
  v1[34] = sub_100002C58();
  v10 = type metadata accessor for InferenceProviderAssetDescriptor();
  v1[35] = v10;
  sub_100002F44(v10);
  v1[36] = v11;
  v13 = *(v12 + 64);
  v1[37] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[38] = State;
  sub_100002F44(State);
  v1[39] = v15;
  v17 = *(v16 + 64);
  v1[40] = sub_10000F0C0();
  v1[41] = swift_task_alloc();
  v18 = sub_100002C10();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_1000305E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000133FC();
  a25 = v27;
  a26 = v28;
  sub_10000C72C();
  a24 = v26;
  v29 = *(v26 + 328);
  v30 = *(v26 + 304);
  v31 = *(v26 + 312);
  v32 = *(v26 + 224);
  v33 = sub_1000302D4();
  *(v26 + 336) = v33;
  *(v26 + 456) = enum case for LoadState.loaded(_:);
  v34 = *(v31 + 104);
  *(v26 + 344) = v34;
  *(v26 + 352) = (v31 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v34(v29);
  sub_1000076B0();
  sub_10002EA7C(v35, v36);
  LOBYTE(v32) = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v31 + 8);
  *(v26 + 360) = v37;
  *(v26 + 368) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38 = sub_100003754();
  v37(v38);
  if ((v32 & 1) != 0 || (v39 = *(v26 + 248), *(v39 + 112)))
  {
    v103 = v37;
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v40 = *(v26 + 312);
    v102 = *(v26 + 320);
    v42 = *(v26 + 296);
    v41 = *(v26 + 304);
    v44 = *(v26 + 280);
    v43 = *(v26 + 288);
    v45 = *(v26 + 248);
    v47 = *(v26 + 216);
    v46 = *(v26 + 224);
    v48 = type metadata accessor for Logger();
    *(v26 + 376) = sub_10000641C(v48, qword_1001B9FA0);
    (*(v43 + 16))(v42, v47, v44);
    (*(v40 + 16))(v102, v46, v41);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v26 + 320);
    v53 = *(v26 + 296);
    v54 = *(v26 + 304);
    v56 = *(v26 + 280);
    v55 = *(v26 + 288);
    if (v51)
    {
      v101 = *(v26 + 248);
      v57 = swift_slowAlloc();
      a15 = swift_slowAlloc();
      *v57 = 136315650;
      sub_10002EA7C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
      v100 = v50;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v61 = *(v55 + 8);
      v62 = sub_100004CB0();
      v63(v62);
      sub_100004A3C(v58, v60, &a15);
      sub_10000E86C();

      *(v57 + 4) = v53;
      *(v57 + 12) = 2080;
      sub_1000076B0();
      sub_10002EA7C(v64, v65);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_1000294DC();
      (v103)(v52, v54);
      v66 = sub_100036724();
      sub_100004A3C(v66, v67, v68);
      sub_10000E86C();

      *(v57 + 14) = v52;
      *(v57 + 22) = 2080;
      v69 = type metadata accessor for InferenceProviderDescriptor();
      sub_10000509C();
      sub_10002EA7C(v70, v71);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_100004A3C(v72, v73, &a15);
      sub_100019130();
      *(v57 + 24) = v69;
      _os_log_impl(&_mh_execute_header, v49, v100, "InferenceProvider transition asset %s to %s executing on %s", v57, 0x20u);
      swift_arrayDestroy();
      sub_100003420();
      sub_10000706C();
    }

    else
    {

      (v103)(v52, v54);
      v74 = *(v55 + 8);
      v75 = sub_100004CB0();
      v76(v75);
    }

    v77 = swift_task_alloc();
    *(v26 + 384) = v77;
    *v77 = v26;
    v77[1] = sub_10003FEB4;
    v78 = *(v26 + 248);
    sub_1000037A0();

    return sub_100030B84();
  }

  else
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
      v39 = *(v26 + 248);
    }

    v81 = type metadata accessor for Logger();
    sub_100002FD0(v81, qword_1001B9FA0);

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = *(v26 + 248);
      sub_100007698();
      a15 = sub_10000359C();
      *v39 = 136315138;
      v85 = type metadata accessor for InferenceProviderDescriptor();
      sub_10000509C();
      sub_10002EA7C(v86, v87);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_100004A3C(v88, v89, &a15);
      sub_100012918();
      *(v39 + 4) = v85;
      sub_100013710(&_mh_execute_header, v90, v91, "Implicitly succeeding a loadOut for an exited InferenceProvider %s");
      sub_100002C88();
      sub_100004B78();
    }

    sub_100004B50();
    os_activity_scope_leave((v33 + 3));
    swift_endAccess();
    sub_10001C130();

    sub_100002F54();
    sub_1000037A0();

    return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_100030D90()
{
  v128 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);
  v119 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_loadingCount;
  v5 = *(v0 + 128);
  v6 = enum case for RequestPriority.none(_:);
  if (*(v4 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_loadingCount) <= 0)
  {
    v7 = enum case for RequestPriority.none(_:);
  }

  else
  {
    v7 = enum case for RequestPriority.background(_:);
  }

  v125 = *(v3 + 104);
  v125(*(v0 + 184), v7, v2);
  v10 = *(v3 + 32);
  v8 = v3 + 32;
  v9 = v10;
  v11 = sub_10000CC04();
  v10(v11);
  sub_100065020(&qword_1001BA498, &qword_100171008);
  v12 = (*(v8 + 48) + 32) & ~*(v8 + 48);
  v124 = *(v8 + 40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100170BD0;
  v14 = v13 + v12;
  v15 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest;
  sub_10000BF7C();
  v120 = v4;
  v118 = v15;
  v16 = *(v4 + v15);

  sub_100031710(v17, v5);

  v18 = sub_100014484();
  if (sub_10000C6C0(v18, v19, v2) == 1)
  {
    v20 = *(v0 + 144);
    v21 = *(v0 + 128);
    v125(v14, v6, v20);
    v22 = sub_100014484();
    v24 = v6;
    v25 = v9;
    if (sub_10000C6C0(v22, v23, v20) != 1)
    {
      sub_10000ECD8(*(v0 + 128), &qword_1001BA488, &qword_100170FE8);
    }
  }

  else
  {
    v9(v14, *(v0 + 128), *(v0 + 144));
    v24 = v6;
    v25 = v9;
  }

  v26 = *(v0 + 144);
  v27 = *(v0 + 136);
  v28 = *(*(v0 + 152) + 16);
  (v28)(v14 + v124, *(v0 + 192), v26);
  sub_100034F10(v13, v27);
  swift_setDeallocating();
  sub_10003A2E0();
  v29 = sub_100014484();
  v31 = sub_10000C6C0(v29, v30, v26);
  v32 = *(v0 + 176);
  if (v31 == 1)
  {
    v33 = *(v0 + 144);
    v34 = *(v0 + 136);
    v125(v32, v24, v33);
    if (sub_10000C6C0(v34, 1, v33) != 1)
    {
      sub_10000ECD8(*(v0 + 136), &qword_1001BA488, &qword_100170FE8);
    }
  }

  else
  {
    v25(v32, *(v0 + 136), *(v0 + 144));
  }

  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v35 = *(v0 + 168);
  v36 = *(v0 + 176);
  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  v39 = type metadata accessor for Logger();
  v40 = sub_10000641C(v39, qword_1001B9FA0);
  v41 = sub_1000062B0();
  v28(v41);
  swift_retain_n();
  v121 = v40;
  v42 = v40;
  v43 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_10002EB00();
  log = v43;
  v45 = &unk_1001BE000;
  v122 = v24;
  if (os_log_type_enabled(v43, v44))
  {
    v46 = *(v0 + 168);
    v48 = *(v0 + 152);
    v47 = *(v0 + 160);
    v49 = *(v0 + 144);
    v116 = *(v0 + 112);
    v50 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *v50 = 136316162;
    v117 = v42;
    v51 = type metadata accessor for InferenceProviderDescriptor();
    sub_10000509C();
    sub_10002EA7C(v52, v53);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    sub_100004A3C(v54, v55, &v127);
    sub_100012918();
    *(v50 + 4) = v51;
    *(v50 + 12) = 2080;
    (v28)(v47, v46, v49);
    sub_100003754();
    String.init<A>(describing:)();
    sub_1000294DC();
    v57 = *(v48 + 8);
    v57(v46, v49);
    v58 = sub_100036724();
    sub_100004A3C(v58, v59, v60);
    sub_10000E86C();

    *(v50 + 14) = v56;
    *(v50 + 22) = 2080;
    v61 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activePriority;
    sub_100004BA0();
    (v28)(v47, v116 + v61, v49);
    sub_100003754();
    v62 = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = String.init<A>(describing:)();
    v65 = sub_100004A3C(v63, v64, &v127);

    *(v50 + 24) = v65;
    *(v50 + 32) = 2048;
    v66 = *(v120 + v119);

    *(v50 + 34) = v66;

    *(v50 + 42) = 2048;
    v67 = *(*(v120 + v118) + 16);

    *(v50 + 44) = v67;

    _os_log_impl(&_mh_execute_header, log, v117, "InferenceProviderExtensionConnection %s setCurrentState to %s from %s [%ld, %ld]", v50, 0x34u);
    swift_arrayDestroy();
    sub_100003420();
    v45 = &unk_1001BE000;
    sub_100002BB8();
  }

  else
  {
    v69 = *(v0 + 144);
    v68 = *(v0 + 152);
    v70 = *(v0 + 112);

    v57 = *(v68 + 8);
    v62 = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71 = sub_10000D01C();
    (v57)(v71);
  }

  *(v0 + 200) = v57;
  v72 = *(v0 + 176);
  v73 = *(v0 + 160);
  v74 = *(v0 + 144);
  v75 = *(v0 + 112);
  v76 = v45[235];
  sub_100004BA0();
  (v28)(v73, v75 + v76, v74);
  v77 = sub_100001F70();
  LOBYTE(v72) = sub_100116BA4(v77, v78);
  *(v0 + 208) = v62;
  v79 = sub_1000060A4();
  v80 = v57;
  (v57)(v79);
  v81 = *(v0 + 112);
  if ((v72 & 1) != 0 && *(v81 + 112))
  {
    v82 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_10002EB00();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = sub_100007648();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v121, "InferenceProviderExtensionConnection setCurrentState not updating state", v84, 2u);
      sub_100002BB8();
    }

    v85 = v82;
LABEL_26:
    v100 = *(v0 + 200);
    v99 = *(v0 + 208);
    v101 = *(v0 + 184);
    v102 = *(v0 + 192);
    v104 = *(v0 + 168);
    v103 = *(v0 + 176);
    v105 = *(v0 + 160);
    v107 = *(v0 + 136);
    v106 = *(v0 + 144);
    v126 = *(v0 + 128);

    v100(v103, v106);
    v100(v102, v106);

    sub_100002F54();

    return v108();
  }

  v86 = *(v0 + 176);
  v88 = *(v0 + 152);
  v87 = *(v0 + 160);
  v89 = *(v0 + 144);
  sub_100004B50();
  (*(v88 + 24))(v75 + v76, v86, v89);
  swift_endAccess();
  v90 = *(v81 + 168);

  os_unfair_lock_lock((v90 + 24));
  v91 = *(v90 + 16);
  *(v0 + 216) = v91;
  *(v90 + 16) = 0;
  os_unfair_lock_unlock((v90 + 24));

  v125(v87, v122, v89);
  v92 = sub_1000062B0();
  LOBYTE(v86) = sub_100116BA4(v92, v93);
  v80(v87, v89);
  if (v86)
  {
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();
    if (sub_100002F80(v95))
    {
      v96 = sub_100007648();
      sub_10000A240(v96);
      sub_1000059D8(&_mh_execute_header, v97, v98, "InferenceProviderExtensionConnection setCurrentState no active requests");
      sub_100002F64();
    }

    sub_10003FAA8(v91);
    v85 = v91;
    goto LABEL_26;
  }

  v110 = *(v0 + 176);
  v125(*(v0 + 160), enum case for RequestPriority.foreground(_:), *(v0 + 144));
  v111 = sub_100001F70();
  *(v0 + 240) = sub_100116BA4(v111, v112) & 1;
  v113 = sub_1000060A4();
  (v80)(v113);
  v114 = swift_task_alloc();
  *(v0 + 224) = v114;
  *v114 = v0;
  v114[1] = sub_10003F89C;
  v115 = *(v0 + 112);

  return sub_100031AD0();
}

uint64_t sub_1000316A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_10002CC20(a12, a1);
}

void sub_1000316EC()
{

  os_unfair_lock_lock(v0 + 6);
}

uint64_t sub_100031710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RequestPriority();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v39 - v13;
  __chkstk_darwin(v12);
  v46 = &v39 - v15;
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  if (v19)
  {
    v39 = a2;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = v5[9];
    v27 = *(a1 + 56) + v26 * v21;
    v28 = v5[2];
    v41 = v5 + 2;
    v42 = v26;
    v40 = v28;
    v28(v14, v27, v4);
    v29 = v5[4];
    v29(v46, v14, v4);
    v44 = v5 + 4;
    v45 = a1;
    v30 = (v5 + 1);

    v32 = v46;
    while (v22)
    {
      v33 = v20;
LABEL_15:
      v34 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v35 = v43;
      v40(v43, *(v45 + 56) + (v34 | (v33 << 6)) * v42, v4);
      v29(v11, v35, v4);
      sub_10002EA7C(&qword_1001B9428, &type metadata accessor for RequestPriority);
      v36 = dispatch thunk of static Comparable.< infix(_:_:)();
      v37 = *v30;
      if (v36)
      {
        v37(v32, v4);
        result = (v29)(v32, v11, v4);
      }

      else
      {
        result = (v37)(v11, v4);
      }

      v20 = v33;
    }

    while (1)
    {
      v33 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v33 >= v23)
      {

        v38 = v39;
        v29(v39, v46, v4);
        return sub_100009BFC(v38, 0, 1, v4);
      }

      v22 = *(v16 + 8 * v33);
      ++v20;
      if (v22)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (1)
    {
      v20 = v19 + 1;
      if (v19 + 1 >= v23)
      {
        break;
      }

      v25 = *(a1 + 72 + 8 * v19);
      v24 += 64;
      ++v19;
      if (v25)
      {
        v39 = a2;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) + v24;
        goto LABEL_9;
      }
    }

    return sub_100009BFC(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_100031AD0()
{
  sub_100001ED0();
  v1[57] = v2;
  v1[58] = v0;
  v1[56] = v3;
  v4 = type metadata accessor for BuiltInInferenceProvider();
  v1[59] = v4;
  sub_100002F44(v4);
  v1[60] = v5;
  v7 = *(v6 + 64);
  v1[61] = sub_10000F0C0();
  v1[62] = swift_task_alloc();
  v8 = type metadata accessor for InferenceProviderExtensionConnection.ProviderIdentification(0);
  v1[63] = v8;
  sub_100002F04(v8);
  v10 = *(v9 + 64);
  v1[64] = sub_100002C58();
  sub_1000071A8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100031BE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100031C88();
}

uint64_t sub_100031C88()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[5] = v4;
  sub_100002F44(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_10000BF98();
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for ModelXPCRequest.CancelSessionRequest();
  v1[9] = v8;
  sub_100002F44(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_100002C58();
  v12 = sub_100003000();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100031D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, os_log_type_t a12)
{
  sub_100007B84();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v14 = sub_100011210();
  sub_10000641C(v14, qword_1001BE400);
  v15 = sub_100008440();
  v16(v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v19 = sub_10000320C(v18);
  v21 = v12[10];
  v20 = v12[11];
  v22 = v12[9];
  if (v19)
  {
    v23 = v12[8];
    v47 = v12[9];
    v25 = v12[5];
    v24 = v12[6];
    sub_100007698();
    sub_100003890();
    sub_100003658(4.8149e-34);
    ModelXPCRequest.CancelSessionRequest.sessionID.getter();
    sub_100005070();
    sub_1000082D4(v26, v27, v28);
    sub_100003E14();
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = sub_100036E74();
    v31(v30);
    v32 = sub_100003318();
    v33(v32, v47);
    v34 = sub_100036724();
    sub_100004A3C(v34, v35, v36);
    sub_100012FD0();
    *(v13 + 4) = v29;
    sub_10000EEC0(&_mh_execute_header, "XPC Handling Cancellation of session %s", a12);
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v37 = sub_100003318();
    v38(v37, v22);
  }

  v39 = v12[7];
  v40 = v12[4];
  sub_100002EC0(v12[3]);
  v12[12] = *(v41 + 128);

  ModelXPCRequest.CancelSessionRequest.sessionID.getter();
  v42 = swift_task_alloc();
  v43 = sub_1000457C0(v42);
  *v43 = v44;
  v43[1] = sub_100044DA0;
  sub_1000031B8(v12[7]);
  sub_100003D04();

  return sub_10003240C();
}

uint64_t sub_100031F88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100032030();
}

uint64_t sub_100032030()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[5] = v4;
  sub_100002F44(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_100002C58();
  v8 = type metadata accessor for ModelXPCRequest.DeleteSessionRequest();
  v1[8] = v8;
  sub_100002F44(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = sub_100002C58();
  v12 = sub_100003000();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100032130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, os_log_type_t a12)
{
  sub_100007B84();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v15 = v12[9];
  v14 = v12[10];
  v16 = v12[8];
  v17 = v12[4];
  v18 = type metadata accessor for Logger();
  sub_10000641C(v18, qword_1001BE400);
  v19 = sub_100008440();
  v20(v19);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = sub_10000320C(v22);
  v25 = v12[9];
  v24 = v12[10];
  v26 = v12[8];
  if (v23)
  {
    v49 = v12[8];
    v27 = v12[6];
    v28 = v12[7];
    v29 = v12[5];
    sub_100007698();
    sub_100003890();
    sub_100003658(4.8149e-34);
    ModelXPCRequest.DeleteSessionRequest.sessionID.getter();
    sub_100005070();
    sub_1000082D4(v30, v31, v32);
    sub_100003E14();
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = sub_100036E74();
    v35(v34);
    v36 = sub_100003318();
    v37(v36, v49);
    v38 = sub_100036724();
    sub_100004A3C(v38, v39, v40);
    sub_100012FD0();
    *(v13 + 4) = v33;
    sub_10000EEC0(&_mh_execute_header, "XPC Handling deleteSessionRequest for client session %s", a12);
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v41 = sub_100003318();
    v42(v41, v26);
  }

  v43 = v12[7];
  v44 = v12[4];
  sub_100002EC0(v12[3]);
  v12[11] = *(v45 + 128);

  ModelXPCRequest.DeleteSessionRequest.sessionID.getter();
  v46 = swift_task_alloc();
  v12[12] = v46;
  *v46 = v12;
  v46[1] = sub_100045C30;
  sub_1000031B8(v12[7]);
  sub_100003D04();

  return sub_100032368();
}

__n128 sub_100032354(unint64_t a1)
{
  v2[10].n128_u64[0] = a1;
  result = v2[2];
  *(a1 + 16) = v3;
  *(a1 + 24) = v1;
  return result;
}

uint64_t sub_100032368()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = type metadata accessor for RequestCancellationReason();
  v1[7] = v3;
  sub_100002F44(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = sub_100002C58();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10003240C()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[7] = v3;
  sub_100002F44(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = sub_10000F0C0();
  v1[10] = swift_task_alloc();
  v7 = type metadata accessor for RequestCancellationReason();
  v1[11] = v7;
  sub_100002F44(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = sub_100002C58();
  v11 = sub_100002C10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100032514()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v2[42];
  sub_100003370(v2 + 38, v2[41]);
  v4 = *(v3 + 72);
  sub_1000135D0();
  v0[10] = v5();
  sub_100004CBC();
  swift_beginAccess();
  v6 = v2[14];
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;

  v8 = sub_100018BC4(sub_1000352A4, v7, v6);
  v0[11] = v8;

  if (v8)
  {
    (*(v0[8] + 104))(v0[9], enum case for RequestCancellationReason.clientDisavowal(_:), v0[7]);
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_1000450F8;
    v10 = v0[9];
    v11 = v0[6];
    sub_100003D20();

    return sub_100036A94();
  }

  else
  {
    v15 = v0[9];
    v14 = v0[10];
    v17 = v0[5];
    v16 = v0[6];
    v18 = v16[42];
    sub_100003370(v16 + 38, v16[41]);
    v19 = sub_100005E60();
    v20(v19);

    sub_100001F00();
    sub_100003D20();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

void sub_1000326E0(uint64_t a1)
{
  if (sub_1000136A8())
  {
    v3 = sub_100065020(&qword_1001BD070, &qword_100173948);
    sub_100002F04(v3);
    v5 = *(v4 + 64);
    sub_100004B1C();
    __chkstk_darwin(v6);
    v8 = &v15[-v7];
    v9 = sub_100003370(v1 + 5, v1[8]);
    v10 = __chkstk_darwin(v9);
    *&v15[-16] = a1;
    sub_1000084CC(v10);
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    v11 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    sub_100005914(v8, v12, v13, v11);
    sub_10000ECD8(v8, &qword_1001BD070, &qword_100173948);
  }

  v14 = v1[10];
  sub_100036794();
}

void sub_100032848()
{
  sub_10000A274();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v60 = *v3;
  State = type metadata accessor for LoadState();
  v10 = sub_100002BDC(State);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100002B8C();
  v63 = v16 - v15;
  v52 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v17 = sub_100002C00(v52);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100002B8C();
  v22 = v21 - v20;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v51 = v0;

    v62 = __CocoaSet.makeIterator()();
    HIDWORD(v57) = *v2;
    v56 = (v12 + 104);
    v54 = (v12 + 8);
    v59 = v6;
    while (1)
    {
      v23 = __CocoaSet.Iterator.next()();
      if (!v23)
      {

        goto LABEL_24;
      }

      v24 = v4;
      v65 = v23;
      swift_dynamicCast();
      v25 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      sub_100005C78();
      sub_1000192DC(v25 + v79, v22);
      (*v56)(v63, HIDWORD(v57), State);
      sub_100002D0C();
      sub_100011B14(&dword_1001BA628, v26);
      sub_1000DAE34();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_1000DAE34();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v65 == v74 && v66 == v75)
      {
        break;
      }

      sub_100012D24();
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
LABEL_16:
        (*v54)(v63, State);
        sub_100008654();
        sub_100019338();
        v4 = v24;
LABEL_17:
        v32 = sub_100005980();
        if (!sub_10002D88C(v32))
        {
          goto LABEL_21;
        }

        v40 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v40)
        {
          sub_100080444(v40 + 1, v33, v34, v35, v36, v37, v38, v39, v49, v51, v52, v54, v56, v57, v59, v60, v62, v63, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
        }

        v41 = *(&_swiftEmptySetSingleton + 5);
        Hasher.init(_seed:)();
        sub_10001214C();
        v42 = Hasher._finalize()();
        sub_100012B94(v42, *(&_swiftEmptySetSingleton + 32));
        _HashTable.nextHole(atOrAfter:)();
        sub_1000119F0();
        sub_1000DAD98(v43);
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v44) = v79;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
        v29 = v22 + *(v52 + 20);
        sub_1000DAE34();
        dispatch thunk of RawRepresentable.rawValue.getter();
        sub_1000DAE34();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v65 == v74 && v66 == v75)
        {
          break;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v54)(v63, State);
        sub_100008654();
        sub_100019338();
        v4 = v24;
        if (v31)
        {
          goto LABEL_17;
        }

LABEL_21:
      }
    }

    goto LABEL_16;
  }

  sub_100032D10(v8, v6, v4, v2, v45, v46, v47, v48, v49, v50, v52, v53, v55, v57, v58, v60, v61, v63, v64, v66);
  if (v0)
  {
  }

  else
  {

LABEL_24:
  }

  sub_100005874();
}

uint64_t sub_100032CD8()
{
  v2 = *(*(v0 + 152) + *(v0 + 296));
}

__n128 sub_100032CF8(uint64_t a1)
{
  *(v2 + 40) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

void sub_100032D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000A274();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = v20;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  State = type metadata accessor for LoadState();
  v32 = sub_100002BDC(State);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  sub_100002B8C();
  v39 = v38 - v37;
  v80 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v40 = sub_100002C00(v80);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  sub_100002B8C();
  v92 = v44 - v43;
  LOBYTE(v43) = *(v31 + 32);
  v45 = v43 & 0x3F;
  v46 = ((1 << v43) + 63) >> 6;
  v47 = 8 * v46;

  if (v45 > 0xD)
  {
    goto LABEL_32;
  }

  while (2)
  {
    v91 = v39;
    v79 = v25;
    v77 = &v76;
    __chkstk_darwin(v48);
    v78 = v46;
    v81 = &v76 - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v46, v81);
    v82 = 0;
    v46 = 0;
    v88 = v29;
    v89 = v31;
    v49 = *(v31 + 56);
    v31 += 56;
    v50 = *(v31 - 24);
    sub_100002F28();
    v39 = v56 & v55;
    v25 = (v57 + 63) >> 6;
    HIDWORD(v86) = *v24;
    v84 = (v34 + 8);
    v85 = (v34 + 104);
    v47 = State;
    v87 = v27;
    while (v39)
    {
      sub_1000DB34C();
LABEL_10:
      v62 = v58 | (v46 << 6);
      v63 = *(v89 + 48);
      v83 = v62;
      v34 = *(v63 + 8 * v62);
      v64 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      sub_100005C78();
      sub_1000192DC(v64 + v34, v92);
      (*v85)(v91, HIDWORD(v86), v47);
      sub_100002D0C();
      sub_100011B14(&dword_1001BA628, v65);

      sub_10004EF18();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_10004EF18();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v95 == v93 && v96 == v94)
      {
        goto LABEL_21;
      }

      sub_100012D24();
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v67)
      {
        goto LABEL_22;
      }

      v68 = v92 + *(v80 + 20);
      v69 = State;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v70 = v91;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v24 = v94;
      if (v95 == v93 && v96 == v94)
      {
LABEL_21:

LABEL_22:
        v47 = State;
        (*v84)(v91, State);
        sub_100008654();
        sub_100019338();
        goto LABEL_23;
      }

      sub_100012D24();
      HIDWORD(v76) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v84)(v70, v69);
      sub_100008654();
      sub_100019338();
      v47 = v69;
      if ((v76 & 0x100000000) != 0)
      {
LABEL_23:
        v27 = v87;
        v29 = v88;
        v24 = sub_10002D88C(v87);

        if (v24)
        {
          sub_1000267BC();
          *(v81 + v72) |= v73;
          if (__OFADD__(v82++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

        v27 = v87;
        v29 = v88;
      }
    }

    v59 = v46;
    while (1)
    {
      v46 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v46 >= v25)
      {
        sub_1000120FC(v81, v78, v82, v89, v51, v52, v53, v54, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, State, v91, v92, v93, v94, v95, v96, v97);
        sub_1000DB020(&a16);

        goto LABEL_29;
      }

      ++v59;
      if (*(v31 + 8 * v46))
      {
        sub_1000062A0();
        v39 = v61 & v60;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_32:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v75 = swift_slowAlloc();

  sub_1000D85CC(v75, v46);

  sub_100002BD0();

  if (v25)
  {

    sub_1000DB3C4();
  }

  else
  {

LABEL_29:
  }

  sub_100005874();
}

void sub_100033268()
{
  v1 = v0[34];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[18];
  v5 = v0[15];
}

uint64_t sub_10003328C()
{

  return RequestMetadata.id.getter();
}

void sub_1000332B8()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[37];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  v7 = v0[25];
  v8 = v0[23];
}

uint64_t sub_1000332D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, NSObject *a7@<X8>)
{
  v212 = a7;
  v209 = a6;
  v205 = a5;
  v208 = a4;
  v207 = a3;
  v9 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  v206 = *(v9 - 8);
  v10 = *(v206 + 64);
  __chkstk_darwin(v9 - 8);
  v211 = &v192 - v11;
  v12 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v210 = &v192 - v14;
  v15 = type metadata accessor for InferenceProviderDescriptor();
  v215 = *(v15 - 8);
  v216 = v15;
  v16 = *(v215 + 64);
  __chkstk_darwin(v15);
  v214 = &v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for LoadState();
  v217 = *(State - 8);
  v18 = *(v217 + 64);
  v19 = __chkstk_darwin(State);
  v20 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v192 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v192 - v25;
  v27 = __chkstk_darwin(v24);
  v218 = &v192 - v28;
  __chkstk_darwin(v27);
  v30 = &v192 - v29;
  v31 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  if (*(a1 + *(v31 + 52)))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000641C(v32, qword_1001BB478);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_12;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v219[0] = v36;
    *v35 = 136315138;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = sub_100004A3C(v37, v38, v219);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Tried to unload invalidated asset: %s", v35, 0xCu);
    sub_100003324(v36);

LABEL_11:

LABEL_12:

    v58 = type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
    swift_allocError();
    (*(*(v58 - 8) + 104))(v59, enum case for ModelManagerError.internalError(_:), v58);
    return swift_willThrow();
  }

  v40 = v31;
  v41 = *(v31 + 28);
  if (*(a1 + v41))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000641C(v42, qword_1001BB478);

    v33 = Logger.logObject.getter();
    v43 = a2;
    v44 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v33, v44))
    {
      goto LABEL_12;
    }

    v45 = swift_slowAlloc();
    v219[0] = swift_slowAlloc();
    *v45 = 136315394;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = sub_100004A3C(v46, v47, v219);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    v49 = (v43 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v50 = *(v43 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v51 = *(v43 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370(v49, v50);
    v52 = v214;
    (*(v51 + 8))(v50, v51);
    sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
    v53 = v216;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    (*(v215 + 8))(v52, v53);
    v57 = sub_100004A3C(v54, v56, v219);

    *(v45 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v33, v44, "unloadIfNecessary called with pending transition task for %s with %s", v45, 0x16u);
    swift_arrayDestroy();

    goto LABEL_11;
  }

  v196 = v10;
  v198 = v26;
  v197 = v41;
  v203 = a2;
  v204 = v30;
  v61 = v217 + 16;
  v62 = *(v217 + 16);
  v63 = v30;
  v64 = State;
  v62(v63, a1, State);
  v65 = *(v40 + 20);
  v201 = v61;
  v202 = v65;
  v66 = v218;
  v67 = v64;
  v68 = v204;
  v200 = v62;
  v62(v218, a1 + v65, v67);
  if (sub_100116D68(v68, v66))
  {
    v69 = *(*(a1 + *(v40 + 48)) + 16);
    v70 = v203;
    if (v69)
    {
      if (qword_1001B8938 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_10000641C(v71, qword_1001BB478);

      v72 = Logger.logObject.getter();
      v73 = v70;
      v74 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v74))
      {
        v75 = swift_slowAlloc();
        v219[0] = swift_slowAlloc();
        *v75 = 136315650;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = sub_100004A3C(v76, v77, v219);

        *(v75 + 4) = v78;
        *(v75 + 12) = 2080;
        v79 = (v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
        v80 = *(v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
        v81 = *(v73 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
        sub_100003370(v79, v80);
        v82 = v214;
        (*(v81 + 8))(v80, v81);
        sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
        v83 = v216;
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v85;
        (*(v215 + 8))(v82, v83);
        v87 = sub_100004A3C(v84, v86, v219);

        *(v75 + 14) = v87;
        *(v75 + 22) = 2048;
        *(v75 + 24) = v69;
        _os_log_impl(&_mh_execute_header, v72, v74, "Not unloading asset %s from %s: in use by %ld execution groups", v75, 0x20u);
        swift_arrayDestroy();

        v68 = v204;
      }

      sub_1000DA26C();
      swift_allocError();
      *v88 = 0;
      v88[1] = 0;
      swift_willThrow();
      v89 = *(v217 + 8);
      v90 = State;
      v89(v218, State);
      return (v89)(v68, v90);
    }

    else
    {
      v199 = a1;
      if (qword_1001B8938 != -1)
      {
        swift_once();
      }

      v127 = type metadata accessor for Logger();
      v128 = sub_10000641C(v127, qword_1001BB478);

      v194 = v128;
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.default.getter();

      v131 = os_log_type_enabled(v129, v130);
      v132 = v198;
      if (v131)
      {
        v133 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v219[0] = v195;
        *v133 = 136315394;
        LODWORD(v193) = v130;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
        v134 = dispatch thunk of CustomStringConvertible.description.getter();
        v136 = sub_100004A3C(v134, v135, v219);

        *(v133 + 4) = v136;
        *(v133 + 12) = 2080;
        v137 = *(v70 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
        v138 = *(v70 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
        sub_100003370((v70 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v137);
        v139 = v214;
        (*(v138 + 8))(v137, v138);
        sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
        v140 = v216;
        v141 = dispatch thunk of CustomStringConvertible.description.getter();
        v143 = v142;
        (*(v215 + 8))(v139, v140);
        v144 = sub_100004A3C(v141, v143, v219);

        *(v133 + 14) = v144;
        _os_log_impl(&_mh_execute_header, v129, v193, "unloadIfNecessary entering for asset %s with %s", v133, 0x16u);
        swift_arrayDestroy();
      }

      v145 = enum case for LoadState.unloaded(_:);
      v146 = v217;
      v147 = State;
      v193 = *(v217 + 104);
      v193(v132, enum case for LoadState.unloaded(_:), State);
      sub_100011B5C(&qword_1001BA468, &type metadata accessor for LoadState);
      v148 = dispatch thunk of static Equatable.== infix(_:_:)();
      v150 = *(v146 + 8);
      v149 = (v146 + 8);
      v151 = v132;
      v152 = v147;
      v153 = v150;
      v150(v151, v147);
      v195 = v150;
      if (v148)
      {
        v154 = v203;

        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v219[0] = swift_slowAlloc();
          *v157 = 136315394;
          type metadata accessor for InferenceProviderAssetDescriptor();
          sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
          v158 = dispatch thunk of CustomStringConvertible.description.getter();
          v160 = sub_100004A3C(v158, v159, v219);

          *(v157 + 4) = v160;
          *(v157 + 12) = 2080;
          v161 = (v154 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
          v162 = *(v154 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
          v163 = *(v154 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
          sub_100003370(v161, v162);
          v164 = v214;
          (*(v163 + 8))(v162, v163);
          sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
          v165 = v216;
          v166 = dispatch thunk of CustomStringConvertible.description.getter();
          v168 = v167;
          (*(v215 + 8))(v164, v165);
          v169 = sub_100004A3C(v166, v168, v219);

          *(v157 + 14) = v169;
          _os_log_impl(&_mh_execute_header, v155, v156, "Not unloading asset %s from %s: already unloaded", v157, 0x16u);
          swift_arrayDestroy();

          v170 = State;
          v171 = v195;
          v195(v218, State);
          v172 = v204;
        }

        else
        {

          v170 = State;
          v171 = v195;
          v195(v218, State);
          v172 = v68;
        }

        result = v171(v172, v170);
        v212->isa = 0;
      }

      else
      {
        v173 = v199;
        v174 = v202;
        v153(v199 + v202, v152);
        v193((v173 + v174), v145, v152);
        strcpy(v219, "Unload asset ");
        HIWORD(v219[1]) = -4864;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
        v175 = v203;
        v176._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v176);

        v215 = v219[1];
        v216 = v219[0];
        v177 = type metadata accessor for TaskPriority();
        sub_100009BFC(v210, 1, 1, v177);
        v200(v198, v68, v152);
        sub_10001E72C(v205, v211, &qword_1001BB3F8, &qword_100171D50);
        v205 = sub_100011B5C(&qword_1001B8BB8, type metadata accessor for InferenceProviderAssetManager);
        v178 = v217;
        v179 = (*(v217 + 80) + 40) & ~*(v217 + 80);
        v180 = (v18 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
        v181 = (*(v206 + 80) + v180 + 9) & ~*(v206 + 80);
        v182 = (v196 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
        v183 = swift_allocObject();
        v214 = v149;
        v184 = v209;
        v185 = v205;
        v183[2] = v209;
        v183[3] = v185;
        v183[4] = v175;
        v186 = v183 + v179;
        v187 = State;
        (*(v178 + 32))(v186, v198, State);
        v188 = v183 + v180;
        *v188 = v207;
        v188[8] = v208 & 1;
        sub_10002F6B4(v211, v183 + v181, &qword_1001BB3F8, &qword_100171D50);
        *(v183 + v182) = v184;
        swift_retain_n();

        sub_100128ED0();
        v190 = v189;
        v191 = v195;
        v195(v218, v187);
        v191(v68, v187);
        *(v199 + v197) = v190;
        v212->isa = v190;
      }
    }
  }

  else
  {
    v199 = a1;
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_10000641C(v91, qword_1001BB478);
    v92 = State;
    v93 = v200;
    v200(v23, v68, State);
    v93(v20, v218, v92);
    v94 = v203;

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v219[0] = v213;
      *v97 = 136315906;
      sub_100011B5C(&qword_1001BA478, &type metadata accessor for LoadState);
      v212 = v95;
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      v101 = *(v217 + 8);
      LODWORD(v211) = v96;
      v102 = v23;
      v103 = v101;
      v101(v102, State);
      v104 = sub_100004A3C(v98, v100, v219);

      *(v97 + 4) = v104;
      *(v97 + 12) = 2080;
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      v107 = v106;
      v103(v20, State);
      v92 = State;
      v108 = sub_100004A3C(v105, v107, v219);

      *(v97 + 14) = v108;
      *(v97 + 22) = 2080;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = sub_100004A3C(v109, v110, v219);

      *(v97 + 24) = v111;
      *(v97 + 32) = 2080;
      v112 = *(v94 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v113 = *(v94 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370((v94 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v112);
      v114 = *(v113 + 8);
      v115 = v214;
      v116 = v113;
      v117 = v217;
      v114(v112, v116);
      sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
      v118 = v216;
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v121 = v120;
      (*(v215 + 8))(v115, v118);
      v122 = sub_100004A3C(v119, v121, v219);

      *(v97 + 34) = v122;
      v123 = v103;
      v124 = v212;
      _os_log_impl(&_mh_execute_header, v212, v211, "unloadIfNecessary called with unmatching states (%s != %s) for %s with %s", v97, 0x2Au);
      swift_arrayDestroy();

      v68 = v204;
    }

    else
    {

      v117 = v217;
      v123 = *(v217 + 8);
      v123(v20, v92);
      v123(v23, v92);
    }

    (*(v117 + 24))(v199 + v202, v68, v92);
    v125 = type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
    swift_allocError();
    (*(*(v125 - 8) + 104))(v126, enum case for ModelManagerError.internalError(_:), v125);
    swift_willThrow();
    v123(v218, v92);
    return (v123)(v68, v92);
  }

  return result;
}

uint64_t sub_100034A9C()
{
  State = type metadata accessor for LoadState();
  sub_100002BDC(State);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 40) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 9) & ~v10;
  v13 = *(v12 + 64);
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  v15 = *(v0 + 32);

  (*(v3 + 8))(v0 + v6, State);
  v16 = type metadata accessor for AuditToken();
  if (!sub_10000C1F0(v0 + v11))
  {
    sub_100006098(v16);
    (*(v17 + 8))(v0 + v11, v16);
  }

  v18 = (v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v18);

  return _swift_deallocObject(v0, v18 + 8, v4 | v10 | 7);
}

uint64_t sub_100034C28()
{
  v2 = v1;
  State = type metadata accessor for LoadState();
  sub_100002F44(State);
  v6 = (*(v5 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v7);
  v9 = (v6 + *(v8 + 80) + 9) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  sub_100018CEC();
  v12 = *(v0 + 32);
  v13 = v0 + v6;
  v14 = *(v0 + v6);
  v15 = *(v13 + 8);
  v17 = *(v0 + v16);
  v18 = swift_task_alloc();
  *(v2 + 16) = v18;
  *v18 = v2;
  v18[1] = sub_10006FA64;
  sub_1000038D8();

  return sub_10002ED98(v19, v20, v21, v22, v23, v14, v15, v24);
}

uint64_t sub_100034DC8()
{
  sub_100003884();
  v1 = *(v0 + 24);
  v2 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  sub_100065020(&qword_1001BA490, &qword_100171000);
  v4 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v3 = v0;
  v3[1] = sub_10003FC5C;
  v5 = *(v0 + 24);

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v4, 0xD00000000000001CLL, 0x8000000100176500);
}

uint64_t sub_100034F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RequestPriority();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v10, v13, v4);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      v12(v9, v13 + *(v5 + 72) * i, v4);
      sub_10002EA7C(&qword_1001B9428, &type metadata accessor for RequestPriority);
      v16 = dispatch thunk of static Comparable.< infix(_:_:)();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v9, v4);
      }

      else
      {
        v17(v9, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return sub_100009BFC(v18, 0, 1, v4);
  }

  else
  {

    return sub_100009BFC(a2, 1, 1, v4);
  }
}

uint64_t sub_10003517C(void *a1)
{
  v2 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_100004B1C();
  __chkstk_darwin(v7);
  v8 = *a1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  Session.Metadata.id.getter();
  type metadata accessor for Session();
  LOBYTE(v8) = static UUIDIdentifier.== infix(_:_:)();
  v9 = *(v4 + 8);
  v10 = sub_100004CA4();
  v11(v10);
  return v8 & 1;
}

uint64_t sub_1000352C0()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1000352E0()
{

  return sub_1000B9C64(v2, v1, v5, v0, v3, v4);
}

void sub_100035348(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100035368()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000353A0()
{

  return InferenceProviderRequestConfiguration.requestUUID.getter();
}

uint64_t sub_1000353C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10005D918();
  sub_1000033DC();
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v16 = v14[5];
  v17 = type metadata accessor for Logger();
  v14[11] = sub_10000641C(v17, qword_1001B9A18);
  swift_retain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v14[5];
  if (v20)
  {
    v15 = swift_slowAlloc();
    sub_1000033D0();
    a10 = swift_slowAlloc();
    *v15 = 136315394;
    v22 = sub_10001AFF8();
    v25 = sub_10000CB58(v22, v23, v24);

    *(v15 + 4) = v25;
    *(v15 + 12) = 1024;
    v26 = AuditToken.processIdentifier.getter();

    *(v15 + 14) = v26;

    _os_log_impl(&_mh_execute_header, v18, v19, "Removing session %s for pid %d", v15, 0x12u);
    sub_100003324(a10);
    sub_100002BD0();

    sub_1000039CC();
  }

  else
  {
    v27 = v14[5];
  }

  v28 = v14[7];
  v29 = v14[5];
  sub_100004B50();
  v30 = sub_100036B48(v29);
  swift_endAccess();
  v31 = v14[5];
  if (v30)
  {

    v32 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100019920();

    if (sub_10000A384())
    {
      v33 = v14[5];
      sub_10000A05C();
      v34 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_1000265BC();
      *v34 = 136315138;
      v35 = sub_10001AFF8();
      sub_10000CB58(v35, v36, v37);
      sub_100007BA0();
      *(v34 + 4) = v21;
      sub_1000033FC();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      sub_100003324(v15);
      sub_1000039CC();

      sub_100002BD0();
    }

    v43 = *(v14[7] + 456);
    v14[12] = v43;
    if (v43)
    {
      v44 = async function pointer to Task<>.value.getter[1];

      v45 = swift_task_alloc();
      v14[13] = v45;
      *v45 = v14;
      v45[1] = sub_1000929C8;
      sub_100016688();

      return Task<>.value.getter(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      sub_10004575C();
      v75 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100019920();

      if (sub_10000A384())
      {
        v76 = v14[5];
        sub_10000A05C();
        v77 = swift_slowAlloc();
        sub_1000033D0();
        swift_slowAlloc();
        sub_1000265BC();
        *v77 = 136315138;
        v78 = sub_10001AFF8();
        sub_10000CB58(v78, v79, v80);
        sub_100007BA0();
        *(v77 + 4) = v21;
        sub_1000033FC();
        _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
        sub_100003324(v15);
        sub_1000039CC();

        sub_100002BD0();
      }

      v86 = v14[5];
      v87 = sub_10000D070(v14[7]);
      v14[14] = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
      Session.Metadata.onBehalfOfPID.getter();
      v88 = *v87;
      v89 = swift_task_alloc();
      v90 = sub_10000D03C(v89);
      *v90 = v91;
      sub_1000094C8(v90);
      sub_100016688();

      return sub_100037440();
    }
  }

  else
  {
    v54 = v14[5];

    v55 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_100019920();

    if (sub_10000A384())
    {
      v56 = v14[5];
      sub_10000A05C();
      v57 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_1000265BC();
      *v57 = 136315138;
      v58 = sub_10001AFF8();
      sub_10000CB58(v58, v59, v60);
      sub_100007BA0();
      *(v57 + 4) = v21;
      sub_1000033FC();
      _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
      sub_100003324(v15);
      sub_1000039CC();

      sub_100002BD0();
    }

    v66 = v14[10];

    sub_100001F00();
    sub_100016688();

    return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12);
  }
}

uint64_t sub_10003588C()
{
  *(v1 + 8) = v0;
  v3 = *(v2 + 128);
  return 0;
}

uint64_t sub_1000358B0()
{
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[34];
  v6 = v0[35];
}

uint64_t sub_1000358E4()
{
  v0 = sub_100065020(&qword_1001BD098, &qword_100173978);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.remove(_:);
  v5 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  sub_100009BFC(v3, 0, 1, v5);
  return GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.sessionEventType.setter();
}

uint64_t sub_1000359D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_100004A3C(a1, a2, va);
}

uint64_t sub_1000359EC()
{

  return dispatch thunk of InstantProtocol.advanced(by:)();
}

uint64_t sub_100035A10()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 120);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100035B08()
{
  sub_10001446C();
  sub_10000636C();
  sub_10004575C();
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    v4 = v0[5];
    sub_10000A05C();
    v5 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v5 = 136315138;
    v6 = sub_10001AFF8();
    sub_10000CB58(v6, v7, v8);
    sub_100007BA0();
    *(v5 + 4) = v2;
    sub_1000033FC();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_100003324(v1);
    sub_1000039CC();

    sub_100002BD0();
  }

  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_10003617C;
  v15 = v0[6];
  v16 = v0[5];
  sub_1000031B8(v0[7]);
  sub_100003770();

  return sub_100036E84();
}

uint64_t sub_100035C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_100004B70(sub_100035C54, 0);
}

uint64_t sub_100035C54()
{
  sub_100002BAC();
  v0 = swift_task_alloc();
  sub_100032CF8(v0);
  v1 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v2 = swift_task_alloc();
  v3 = sub_10000AC24(v2);
  *v3 = v4;
  v3[1] = sub_100035D70;
  sub_1000194B4();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

void sub_100035D20()
{
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
}

uint64_t sub_100035D3C()
{
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
}

uint64_t sub_100035D60()
{
  result = v0 + 136;
  v2 = *(v0 + 136);
  return result;
}

uint64_t sub_100035D70()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100035E70()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[15];
  v3 = v1[13];
  v4 = v1[12];
  v5 = v1[11];
  v6 = v1[6];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v4 + 8);
  v10 = sub_100001F70();
  v11(v10);
  v12 = sub_100003DE0();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100035FC0()
{
  sub_100001EF4();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v5 = v1[7];
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  sub_100001F00();

  return v8();
}

uint64_t sub_100036100()
{
  sub_100002BAC();
  v1[24] = v0;
  v2 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v1[25] = v2;
  sub_100002F04(v2);
  v4 = *(v3 + 64);
  v1[26] = sub_100002C58();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10003617C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 128);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100036294()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 128);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000363A0()
{
  v3 = *(*(v0 + 48) + 8 * v1);
}

uint64_t sub_1000363BC()
{
  *(v0 + 176) = v1;

  return swift_errorRetain();
}

void sub_1000363DC()
{
  sub_1000055B0();
  v28 = v4;
  v6 = v5;
  sub_100026F40();
  v9 = sub_100065020(v7, v8);
  sub_100002BDC(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_100004B1C();
  __chkstk_darwin(v14);
  v16 = v24 - v15;
  if (*(v2 + 16))
  {
    v17 = *(v2 + 40);
    sub_1000081B4();
    v26 = v1;
    v27 = v0;
    sub_10001B2C0(v6, v1);
    v24[1] = v3;
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v25 = v2;
    v18 = *(v2 + 32);
    sub_100011E24();
    v21 = ~v20;
    do
    {
      v22 = v19 & v21;
      if (((1 << (v19 & v21)) & *(v2 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v11 + 16))(v16, *(v25 + 48) + *(v11 + 72) * v22, v9);
      sub_1000039B4();
      sub_10001B2C0(v28, v26);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v11 + 8))(v16, v9);
      v19 = v22 + 1;
    }

    while ((v23 & 1) == 0);
  }

  sub_100002EEC();
}

uint64_t sub_100036588()
{
  v2 = v0[101];
  v3 = v0[100];
  v5 = v0[99];
  v6 = v0[96];
  v7 = v0[93];
}

uint64_t sub_1000365C4()
{
  sub_10001446C();
  sub_10000636C();
  sub_10004575C();
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    v4 = v0[5];
    sub_10000A05C();
    v5 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v5 = 136315138;
    v6 = sub_10001AFF8();
    sub_10000CB58(v6, v7, v8);
    sub_100007BA0();
    *(v5 + 4) = v2;
    sub_1000033FC();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_100003324(v1);
    sub_1000039CC();

    sub_100002BD0();
  }

  v14 = v0[10];
  v15 = *(v0[7] + 168);
  v16 = v0[5] + v0[14];
  Session.Metadata.id.getter();
  v17 = swift_task_alloc();
  v0[18] = v17;
  *v17 = v0;
  v17[1] = sub_100044FA8;
  sub_100007884(v0[10]);
  sub_100003770();

  return sub_100038A40();
}

uint64_t sub_100036730()
{
  *(v0 + *(v1 + 24)) = 0;

  return swift_beginAccess();
}

uint64_t sub_100036758()
{
  v2 = *(v0 + 248);
}

uint64_t sub_100036778()
{
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);

  return type metadata accessor for ModelManagerError();
}

void sub_100036794()
{
  sub_1000055B0();
  v2 = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100004B1C();
  __chkstk_darwin(v8);
  sub_100018A10();
  sub_100008458(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_removeSessionPostString);
  v10 = *(v9 + 16);
  v11 = type metadata accessor for OSSignpostID();
  v12 = sub_100002BDC(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  (*(v5 + 16))(v0, v2, v3);
  v15 = OSSignposter.logHandle.getter();
  v16 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v32 = v16;
  if ((v10 & 1) == 0)
  {
    if (!v33)
    {
      __break(1u);
LABEL_5:

      v17 = (*(v5 + 8))(v0, v3);
LABEL_11:
      __chkstk_darwin(v17);
      v26 = sub_100018688();
      v27(v26);
      v28 = type metadata accessor for OSSignpostIntervalState();
      sub_1000038EC(v28);
      sub_100003170();
      OSSignpostIntervalState.init(id:isOpen:)();
      v29 = sub_100019BCC();
      v30(v29, v14);
      type metadata accessor for TelemetryIntervalState();
      v31 = sub_1000126B4();
      sub_10003533C(v31);
      sub_100002EEC();
      return;
    }

LABEL_10:
    v21 = swift_slowAlloc();
    v22 = sub_1000031E0();
    v34 = v22;
    *v21 = 136446210;
    v23 = UUIDIdentifier.uuidString.getter();
    sub_100004A3C(v23, v24, &v34);
    sub_100061AE8();
    *(v21 + 4) = v10;
    (*(v5 + 8))(v0, v3);
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v32, v25, v33, "sessionIdentifier: %{public, signpost.description=attribute,public}s", v21, 0xCu);
    sub_100003324(v22);
    sub_100002BB8();
    sub_100002BB8();

    goto LABEL_11;
  }

  sub_10000A46C();
  if (v18)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_100011408();
  if (!v19)
  {
    sub_100005704();
    if (!(!v19 & v20))
    {
      sub_10001382C();
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_100036A94()
{
  sub_100002BAC();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[8] = v4;
  sub_100002F44(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = sub_100002C58();
  v8 = sub_100002C10();

  return _swift_task_switch(v8, v9, v10);
}

void sub_100036C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10000355C();
  a29 = v31;
  a30 = v34;
  v35 = v32;
  v36 = *v30;
  v37 = *v30 + 56;
  v38 = -1 << *(*v30 + 32);
  v39 = (v32 + 1) & ~v38;
  if (((1 << v39) & *(v37 + 8 * (v39 >> 6))) != 0)
  {
    v40 = v33;
    v41 = ~v38;

    v42 = _HashTable.previousHole(before:)();
    if ((*(v37 + 8 * (v39 >> 6)) & (1 << v39)) != 0)
    {
      v43 = (v42 + 1) & v41;
      do
      {
        v44 = *(v36 + 40);
        v45 = *(*(v36 + 48) + 8 * v39);
        Hasher.init(_seed:)();

        v40(&a10);
        Hasher._finalize()();
        sub_100019498();

        v46 = &a10 & v41;
        if (v35 >= v43)
        {
          if (v46 >= v43 && v35 >= v46)
          {
LABEL_15:
            v49 = *(v36 + 48);
            v50 = (v49 + 8 * v35);
            v51 = (v49 + 8 * v39);
            if (v35 != v39 || v50 >= v51 + 1)
            {
              *v50 = *v51;
              v35 = v39;
            }
          }
        }

        else if (v46 >= v43 || v35 >= v46)
        {
          goto LABEL_15;
        }

        v39 = (v39 + 1) & v41;
      }

      while (((*(v37 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
    }

    *(v37 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v35) - 1;
  }

  else
  {
    *(v37 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v32) - 1;
  }

  v53 = *(v36 + 16);
  v54 = __OFSUB__(v53, 1);
  v55 = v53 - 1;
  if (v54)
  {
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v55;
    ++*(v36 + 36);
    sub_100005F10();
  }
}

uint64_t sub_100036E00()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100036E38(uint64_t a1, unint64_t a2)
{

  return sub_100004A3C(a1, a2, (v2 - 80));
}

uint64_t sub_100036E50()
{

  return swift_willThrow();
}

uint64_t sub_100036E84()
{
  sub_100002BAC();
  v3 = v2;
  v1[2] = v4;
  v1[3] = v0;
  v5 = type metadata accessor for RequestCancellationReason();
  v1[4] = v5;
  sub_100002F44(v5);
  v1[5] = v6;
  v1[6] = *(v7 + 64);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100037BD0, v3, 0);
}

uint64_t sub_100036F44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10006FA64;

  return sub_100037DFC(a1, a2, v10, a4, a5);
}

uint64_t sub_10003700C()
{
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
}

uint64_t sub_10003702C(uint64_t a1, uint64_t a2)
{
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v3 = sub_100065020(&qword_1001BD078, &qword_100173950);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19[-v5];
  v7 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:);
  v8 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  sub_100009BFC(v6, 0, 1, v8);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v9 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v20 = a2;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v11 = sub_100065020(&qword_1001BD090, &qword_100173970);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19[-v13];
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent();
  v15 = swift_allocBox();
  static Buildable.with(_:)();
  *v14 = v15;
  v16 = enum case for GenerativeFunctionsInstrumentationMetadata.modelManagerSessionEvent(_:);
  v17 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v17 - 8) + 104))(v14, v16, v17);
  sub_100009BFC(v14, 0, 1, v17);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_1000372F8()
{
  v0 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1 = sub_100002BDC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100005630();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  Session.Metadata.id.getter();
  Session.Metadata.id.getter();
  type metadata accessor for Session();
  v12 = static UUIDIdentifier.== infix(_:_:)();
  v13 = *(v3 + 8);
  v13(v8, v0);
  v13(v11, v0);
  return v12 & 1;
}

uint64_t sub_100037440()
{
  sub_100002BAC();
  *(v1 + 64) = v0;
  *(v1 + 116) = v2;
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  *(v1 + 72) = sub_100002C58();
  v6 = sub_100065020(&qword_1001BC0B0, &qword_100172970);
  *(v1 + 80) = v6;
  v7 = *(v6 - 8);
  *(v1 + 88) = v7;
  v8 = *(v7 + 64);
  *(v1 + 96) = sub_100002C58();
  v9 = sub_100002C10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100037528()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 116);
  v6 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider__monitoredPids;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v7(v1, v4 + v6, v3);
  *(v0 + 104) = v5;
  v8 = CountedSet.count(of:)();
  v9 = *(v2 + 8);
  v9(v1, v3);
  if (v8)
  {
    v10 = *(v0 + 96);
    v11 = *(v0 + 80);
    v32 = v9;
    v12 = *(v0 + 116);
    *(v0 + 108) = v12;
    swift_beginAccess();
    CountedSet.remove(_:)();
    swift_endAccess();
    v7(v10, v4 + v6, v11);
    *(v0 + 112) = v12;
    v13 = CountedSet.count(of:)();
    v32(v10, v11);
    if (!v13)
    {
      v14 = *(v0 + 64);
      v15 = *(v0 + 72);
      v16 = *(v0 + 116);
      v17 = type metadata accessor for TaskPriority();
      sub_100007098(v17);
      sub_10000870C();
      sub_10000E784(v18, v19);
      v20 = swift_allocObject();
      sub_10000EEE0(v20);
      sub_1000186A4();
    }
  }

  else
  {
    if (qword_1001B8968 != -1)
    {
      sub_100005224();
    }

    v21 = type metadata accessor for Logger();
    sub_100002FD0(v21, qword_1001BBF20);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (sub_100002F80(v23))
    {
      v24 = *(v0 + 116);
      v25 = sub_100003788();
      sub_10000A300(v25, 1.5047e-36);
      sub_100002DA4(&_mh_execute_header, v26, v27, "Cannot stop monitoring pid that is not being monitored: %d");
      sub_100002F64();
    }
  }

  v28 = *(v0 + 96);
  v29 = *(v0 + 72);

  sub_100001F00();

  return v30();
}

uint64_t sub_1000377AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = v14[5];
  v16 = v14[6];
  sub_100004CBC();
  swift_beginAccess();
  v18 = *(v16 + 112);
  v19 = swift_task_alloc();
  *(v19 + 16) = v17;

  v20 = sub_100018BC4(sub_100035284, v19, v18);
  v14[14] = v20;

  if (v20)
  {
    (*(v14[12] + 104))(v14[13], enum case for RequestCancellationReason.clientDisavowal(_:), v14[11]);
    v21 = swift_task_alloc();
    v22 = sub_10000D03C(v21);
    *v22 = v23;
    v22[1] = sub_100035E70;
    v24 = v14[13];
    sub_1000031B8(v14[6]);
    sub_100003540();

    return sub_100036E84();
  }

  else
  {
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v28 = v14[8];
    v27 = v14[9];
    v29 = v14[7];
    v30 = v14[5];
    v31 = type metadata accessor for Logger();
    sub_10000641C(v31, qword_1001B9A18);
    v33 = *(v28 + 16);
    v32 = (v28 + 16);
    v34 = sub_100007660();
    v35(v34);
    v36 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100006390();
    v38 = os_log_type_enabled(v36, v37);
    v40 = v14[8];
    v39 = v14[9];
    v41 = v14[7];
    if (v38)
    {
      sub_10000A05C();
      v42 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_1000265BC();
      *v42 = 136315138;
      sub_100005070();
      sub_10001B27C(v43, v44, v45);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_100045E40();
      v46 = *(v40 + 8);
      v47 = sub_100005E8C();
      v48(v47);
      v49 = sub_10000CD1C();
      sub_100004A3C(v49, v50, v51);
      sub_100005974();

      *(v42 + 4) = v39;
      sub_1000033FC();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      sub_100003324(v32);
      sub_1000039CC();

      sub_100002BD0();
    }

    else
    {

      v57 = *(v40 + 8);
      v58 = sub_100005E8C();
      v59(v58);
    }

    v60 = v14[13];
    v61 = v14[9];
    v62 = v14[10];
    v63 = v14[7];
    v64 = v14[5];
    v65 = type metadata accessor for ModelManagerError();
    sub_100005C00();
    sub_100015F10(v66, 255, v67);
    sub_100007894();
    swift_allocError();
    sub_100045E40();
    UUIDIdentifier.uuid.getter();
    sub_100006098(v65);
    (*(v68 + 104))(v15);
    swift_willThrow();

    sub_100001F00();
    sub_100003540();

    return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_100037B24()
{
  sub_10001881C();
  sub_100003884();
  sub_1000135C4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100004B00(v4);
  *v5 = v6;
  sub_10014B0AC(v5);
  sub_10000CD38();
  sub_100007BB8();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100037BD0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v6 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState;
  *(v7 + 16) = 1;
  v8 = *(v7 + 8);
  v0[8] = v8;
  (*(v4 + 16))(v1, v5, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[9] = v10;
  *(v10 + 16) = v6;
  (*(v4 + 32))(v10 + v9, v1, v3);

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_100035FC0;

  return sub_100035C34(v8, &unk_100172FD0, v10);
}

uint64_t sub_100037D44()
{
  v1 = type metadata accessor for RequestCancellationReason();
  sub_100002BDC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100037DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v6 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100037ED8, 0, 0);
}

uint64_t sub_100038278()
{
  v1 = *(v0 + 24);

  sub_100002EE0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000382B0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[22];
  v3 = v1[21];
  v4 = v1[20];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  sub_100001F00();

  return v7();
}

uint64_t sub_1000383C8()
{
  sub_100002BAC();
  v1 = *(*(v0 + 48) + 296);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  sub_100004B28(v2);

  return sub_100036100();
}

void sub_100038454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v14 = (*(v12 + 192) + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_100009E10();
  swift_beginAccess();
  v15 = v14[1];
  *(v12 + 216) = v15;
  v16 = *(v15 + 16);
  *(v12 + 224) = v16;
  if (v16)
  {
    *(v12 + 232) = *v14;

    v17 = 0;
    v18 = &unk_100172C48;
    v19 = &qword_1001B8F40;
LABEL_3:
    *(v12 + 240) = v17;
    v20 = sub_100143420(v17, *(v12 + 216));
    *(v12 + 248) = v20;
    a9 = v20;
    v21 = v20 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
    sub_100009E10();
    swift_beginAccess();
    v22 = *v21;
    v23 = *(v21 + 16);
    *(v12 + 48) = *(v21 + 32);
    *(v12 + 16) = v22;
    *(v12 + 32) = v23;
    v24 = vextq_s8(*(v12 + 24), *(v12 + 24), 8uLL);
    *(v12 + 128) = vextq_s8(*(v12 + 40), *(v12 + 40), 8uLL);
    *(v12 + 144) = v24;
    sub_100036E68();
    sub_10001E72C(v25, v26, v27, v28);
    sub_100036E68();
    sub_10001E72C(v29, v30, v31, v32);
    sub_10000CD38();
    sub_10001E72C(v33, v34, v35, v36);
    sub_100042D18();
    v37 = sub_10006CF3C();
    sub_10000C750();
    sub_10000ED84(v38, v39);
    sub_10000C750();
    sub_10000ED84(v40, v41);
    sub_100006570();
    sub_10000ED84(v42, v43);
    sub_10000ED84(v12 + 128, &qword_1001B8F40);
    sub_10000E8DC(v37);
    sub_10014B428();
    while (v13 != v18)
    {
      if (&unk_100172C40)
      {
        sub_100003D88();
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= qword_1001BC480)
        {
          goto LABEL_22;
        }

        sub_10014B2AC();
      }

      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v44 = *(v12 + 200);
      v45 = *(v12 + 208);
      v46 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      sub_100005DD8();
      sub_10005CAA8(v19 + v46, v45);
      LOBYTE(v44) = *(v45 + *(v44 + 24));
      sub_1000115C8();
      sub_10000D300();

      ++v18;
      if ((v44 & 1) == 0)
      {

        v17 = sub_10002B138();
        v18 = &unk_100172C48;
        v19 = &qword_1001B8F40;
        if (v47)
        {
          v48 = *(v12 + 232);
          v49 = *(v12 + 216);

          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    v59 = swift_task_alloc();
    *(v12 + 256) = v59;
    *v59 = v12;
    v59[1] = sub_10012FAF4;
    sub_1000031B8(*(v12 + 192));
    sub_1000062BC();

    sub_10006CD0C(v60);
  }

  else
  {
LABEL_15:
    v50 = *(v12 + 208);

    sub_100001F00();
    sub_1000062BC();

    v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
  }
}

uint64_t sub_100038770()
{
  sub_10001446C();
  sub_10000636C();
  sub_10004575C();
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    v4 = v0[5];
    sub_10000A05C();
    v5 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v5 = 136315138;
    v6 = sub_10001AFF8();
    sub_10000CB58(v6, v7, v8);
    sub_100007BA0();
    *(v5 + 4) = v2;
    sub_1000033FC();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_100003324(v1);
    sub_1000039CC();

    sub_100002BD0();
  }

  v14 = *(v0[7] + 296);
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  sub_100004B28(v15);
  sub_100003770();

  return sub_100036100();
}

uint64_t sub_100038898()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 136);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100038990()
{
  sub_100002BAC();
  v1 = v0[10];
  v2 = *(v0[6] + 168);
  v3 = v0[14] + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  Session.Metadata.id.getter();
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100044BD4;
  sub_100007884(v0[10]);

  return sub_100038A40();
}

uint64_t sub_100038A40()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[7] = v3;
  sub_100002F44(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = sub_10000F0C0();
  v1[10] = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

char *sub_100038E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v28 = v4;
    v9 = &_swiftEmptySetSingleton;
    v40 = &_swiftEmptySetSingleton;
    v27 = a2;

    __CocoaSet.makeIterator()();
    while (1)
    {
      v10 = __CocoaSet.Iterator.next()();
      if (!v10)
      {
        break;
      }

      v29 = v10;
      type metadata accessor for InferenceProviderAsset(0);
      swift_dynamicCast();
      v11 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100002D24();
      swift_beginAccess();
      v12 = a3(&v11[v38]);
      swift_endAccess();
      v20 = v38;
      if (v12)
      {
        v21 = *(v9 + 2);
        if (*(v9 + 3) <= v21)
        {
          sub_100080444(v21 + 1, v13, v14, v15, v16, v17, v18, v19, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, vars0, vars8);
        }

        v9 = v40;
        v22 = *(v40 + 5);
        Hasher.init(_seed:)();
        sub_10001214C();
        v23 = Hasher._finalize()();
        sub_100012804(v23, v40[32]);
        v24 = _HashTable.nextHole(atOrAfter:)();
        *&v40[((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56] |= 1 << v24;
        *(*(v40 + 6) + 8 * v24) = v20;
        ++*(v40 + 2);
      }

      else
      {
      }
    }

    return v9;
  }

  else
  {

    v26 = sub_100011E30(a1, a2, a3, a4);

    return v26;
  }
}

void sub_100039014(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 44));

  sub_10003905C();
}

uint64_t sub_100039080()
{

  GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.identifier.setter();

  return GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.version.setter();
}

uint64_t sub_10003913C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100039174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v13 = *(*(v12 + 248) + 112);
  *(v12 + 400) = v13;
  if (v13)
  {
    sub_1000185A8(&async function pointer to dispatch thunk of InferenceProviderXPCSender.transitionAsset(withDescriptor:to:from:requestIdentifier:));
    sub_100007BCC();
    v14 = swift_task_alloc();
    *(v12 + 408) = v14;
    *v14 = v12;
    v14[1] = sub_10003A4D8;
    v15 = *(v12 + 232);
    v16 = *(v12 + 240);
    v17 = *(v12 + 224);
    sub_1000031B8(*(v12 + 216));
    sub_100001FBC();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v28 = *(v12 + 360);
    v27 = *(v12 + 368);
    v29 = *(v12 + 352);
    v30 = *(v12 + 224);
    (*(v12 + 344))(*(v12 + 328), *(v12 + 456), *(v12 + 304));
    v31 = sub_10000D01C();
    LOBYTE(v30) = sub_100116D68(v31, v32);
    v33 = sub_100001F70();
    v28(v33);
    v34 = *(v12 + 376);
    if (v30)
    {
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (sub_100002F80(v36))
      {
        v37 = sub_100007648();
        sub_10000A240(v37);
        sub_1000059D8(&_mh_execute_header, v38, v39, "Load in called for terminated extension");
        sub_100002F64();
      }

      v40 = *(v12 + 256);

      sub_1000085DC();
      sub_10002EA7C(v41, v42);
      *(v12 + 424) = sub_10000A418();
      swift_task_alloc();
      sub_100004B34();
      *(v12 + 432) = v43;
      *v43 = v44;
      sub_100012F7C(v43);
      sub_100001FBC();

      return sub_1000A5930(v45);
    }

    else
    {
      v47 = *(v12 + 248);

      v48 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_1000089B8();
      if (sub_10000A384())
      {
        v49 = *(v12 + 248);
        sub_100007698();
        sub_100003890();
        sub_10003EAA0();
        *v47 = 136315138;
        v50 = type metadata accessor for InferenceProviderDescriptor();
        sub_10000509C();
        sub_10002EA7C(v51, v52);
        v53 = sub_1000094F0();
        sub_1000239D4(v53, v54, v55, v56);
        sub_100007BA0();
        *(v47 + 4) = v50;
        sub_1000033FC();
        _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
        sub_100001F88();
        sub_10000706C();
      }

      v62 = *(v12 + 336);
      v63 = *(v12 + 248);
      sub_100002C70();
      sub_100039484(v64, v65, v66);
      sub_100004B50();
      os_activity_scope_leave((v62 + 24));
      swift_endAccess();
      sub_10001C130();

      sub_100002F54();
      sub_100001FBC();

      return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_100039484(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  v6 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v7 = sub_100002F04(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v10 = type metadata accessor for Logger();
  sub_100002FD0(v10, qword_1001B9FA0);
  v11 = Logger.logObject.getter();
  v12 = a2();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_100007648();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 2u);
    sub_100002BB8();
  }

  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v14, v15, v16, v17);
  sub_10001135C();
  v20 = sub_10002EA7C(v18, v19);
  sub_100005640();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = v20;
  v21[4] = a1;
  swift_retain_n();
  sub_1000652FC();
}

uint64_t sub_100039628()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  v5 = v2[41];
  *v4 = *v1;
  *(v3 + 336) = v0;

  v6 = v2[39];
  v7 = v2[38];
  v8 = v2[25];
  v9 = v2[23];
  v10 = v2[8];
  v7(v8, v9);
  sub_100007088();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10003979C()
{
  sub_100002BAC();
  v1 = *(v0 + 336);
  sub_100042BE4(*(v0 + 145));

  return _swift_task_switch(sub_100042C44, 0, 0);
}

uint64_t sub_100039838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26)
{
  sub_1000133FC();
  a25 = v27;
  a26 = v28;
  sub_10000C72C();
  a24 = v26;
  sub_100024640(v29, v30, &qword_1001B9CB0, &qword_100171E70);
  if (!v26[15])
  {
    sub_10000ED84((v26 + 12), &qword_1001B9CB0);
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v54 = v26[40];
    v55 = v26[37];
    v56 = v26[38];
    v58 = v26[28];
    v57 = v26[29];
    v59 = v26[27];
    v61 = v26[23];
    v60 = v26[24];
    v62 = type metadata accessor for Logger();
    sub_10000641C(v62, qword_1001BB110);
    v63 = *(v56 + 16);
    sub_1000DB290();
    v64();
    v65 = *(v58 + 16);
    v66 = sub_1000125D0();
    v67(v66);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v26[40];
    v73 = v26[37];
    v72 = v26[38];
    v74 = v26[28];
    v75 = v26[29];
    v76 = v26[27];
    if (v70)
    {
      sub_100002F10();
      a12 = v68;
      v77 = swift_slowAlloc();
      sub_100011828();
      a14 = swift_slowAlloc();
      *v77 = 136315394;
      sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
      v78 = sub_1000494F4();
      LODWORD(a11) = v69;
      v80 = v79;
      v81 = *(v72 + 8);
      v82 = sub_100004CB0();
      v83(v82);
      sub_100004A3C(v78, v80, &a14);
      sub_10000E86C();

      *(v77 + 4) = v71;
      *(v77 + 12) = 2080;
      sub_10000950C();
      sub_100011B14(v84, v85);
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = *(v74 + 8);
      v88 = sub_100007B78();
      v89(v88);
      v90 = sub_100036724();
      sub_100004A3C(v90, v91, v92);
      sub_10000E86C();

      *(v77 + 14) = v86;
      sub_10000C720();
      _os_log_impl(v93, v94, v95, v96, v97, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_10000BFCC();
    }

    else
    {

      v135 = *(v74 + 8);
      v136 = sub_100007B78();
      v137(v136);
      v138 = *(v72 + 8);
      v139 = sub_100004CB0();
      v140(v139);
    }

    v141 = v26[24];
    v142 = type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v143, v144);
    sub_100007894();
    v145 = swift_allocError();
    v147 = v146;
    *v146 = InferenceProviderDescriptor.description.getter();
    v147[1] = v148;
    sub_100006098(v142);
    (*(v149 + 104))(v147);
    v168 = v145;
    swift_willThrow();
    sub_10000ED84((v26 + 2), &qword_1001B9CB0);
    goto LABEL_20;
  }

  sub_1000DB4A4();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v31 = v26[42];
  v33 = v26[37];
  v32 = v26[38];
  v34 = v26[23];
  v35 = v26[20];
  v36 = type metadata accessor for Logger();
  v26[45] = sub_10000641C(v36, qword_1001BB110);
  v26[46] = *(v32 + 16);
  v26[47] = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v37 = sub_100005E98();
  v38(v37);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (sub_1000264AC())
  {
    v41 = v26[42];
    v43 = v26[37];
    v42 = v26[38];
    a10 = v26[20];
    a11 = v26[44];
    sub_100002F10();
    v44 = swift_slowAlloc();
    sub_100011828();
    a12 = swift_slowAlloc();
    a14 = a12;
    *v44 = 136315394;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v48 = *(v42 + 8);
    v49 = sub_1000037BC();
    v48(v49);
    sub_100004A3C(v45, v47, &a14);
    sub_100001F0C();

    sub_1000DAFB0();
    v50 = sub_1000BF6D8(a10);
    v51 = Array.description.getter();
    v53 = v52;

    sub_100004A3C(v51, v53, &a14);
    sub_100005974();

    *(v44 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v39, v40, "Session %s trying to prewarm assets %s", v44, 0x16u);
    sub_10001E558();
    swift_arrayDestroy();
    sub_100061AD8();

    sub_100002BD0();
  }

  else
  {
    v98 = v26[42];
    v99 = v26[37];
    v100 = v26[38];

    v48 = *(v100 + 8);
    v101 = sub_100007660();
    v48(v101);
  }

  v26[48] = v48;
  v103 = v26[35];
  v102 = v26[36];
  v105 = v26[33];
  v104 = v26[34];
  v106 = v26[26] + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100004CBC();
  swift_beginAccess();
  v107 = *(v104 + 16);
  v108 = sub_10000CF04();
  v109(v108);
  (*(v104 + 104))(v103, enum case for AssetPolicy.unloadCached(_:), v105);
  sub_100011B14(&qword_1001B9230, &type metadata accessor for AssetPolicy);
  sub_1000071D0();
  v110 = dispatch thunk of static Equatable.== infix(_:_:)();
  v111 = *(v104 + 8);
  v111(v103, v105);
  v112 = sub_10000CDA4();
  (v111)(v112);
  if (v110)
  {
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    if (sub_100002F80(v114))
    {
      v115 = sub_100007648();
      sub_10000BF10(v115);
      sub_10000C720();
      _os_log_impl(v116, v117, v118, v119, v120, 2u);
      sub_10000BFCC();
    }

    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v121, v122);
    v123 = sub_10000C700();
    v125 = v124;
    *v124 = *(v106 + *(_s6PolicyVMa_0() + 32));
    sub_1000080BC();
    (*(v126 + 104))(v125);
    v168 = v123;
    swift_willThrow();

    sub_10000ED84((v26 + 2), &qword_1001B9CB0);
    sub_100003324(v26 + 7);
LABEL_20:
    v151 = v26[41];
    v150 = v26[42];
    v153 = v26[39];
    v152 = v26[40];
    v155 = v26[35];
    v154 = v26[36];
    v157 = v26[31];
    v156 = v26[32];
    v158 = v26[29];
    v159 = v26[30];

    sub_100001F00();
    sub_1000037A0();

    return v161(v160, v161, v162, v163, v164, v165, v166, v167, a9, a10, a11, a12, v168, a14, a15, a16, a17, a18);
  }

  v127 = swift_task_alloc();
  v26[49] = v127;
  *v127 = v26;
  v127[1] = sub_10004950C;
  v128 = v26[26];
  v129 = v26[21];
  sub_1000031B8(v26[20]);
  sub_1000037A0();

  return sub_100023A48(v130, v131, v132);
}

uint64_t sub_10003A070()
{
  sub_100002BAC();
  sub_1000DAF50(v0[26]);
  swift_task_alloc();
  sub_100004B34();
  v0[43] = v1;
  *v1 = v2;
  v1[1] = sub_10003A10C;
  v3 = v0[24];
  v4 = sub_10004AE38();

  return sub_1000253E8(v4, v5);
}

uint64_t sub_10003A10C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 344);
  *v4 = *v2;
  *(v3 + 352) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 208);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10003A220()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_100030490();
}

uint64_t sub_10003A2E0()
{
  v1 = *(*(type metadata accessor for RequestPriority() - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  sub_100002EE0();

  return _swift_deallocClassInstance(v3, v4, v5);
}

id sub_10003A354()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = String._bridgeToObjectiveC()();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

id sub_10003A3E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();

  sub_10000E2C0(0, &qword_1001BA4B8, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:isa];

  return v7;
}

uint64_t sub_10003A4D8()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 408);
  *v4 = *v2;
  *(v3 + 416) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 248);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10003A5EC()
{

  return swift_slowAlloc();
}

uint64_t sub_10003A608()
{
  sub_100002BAC();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  v1[25] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[26] = State;
  sub_100002F44(State);
  v1[27] = v7;
  v9 = *(v8 + 64);
  v1[28] = sub_10000F0C0();
  v1[29] = swift_task_alloc();
  v10 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[30] = v10;
  sub_100002F04(v10);
  v12 = *(v11 + 64);
  v1[31] = sub_10000F0C0();
  v1[32] = swift_task_alloc();
  v13 = type metadata accessor for AssetCost();
  v1[33] = v13;
  sub_100002F44(v13);
  v1[34] = v14;
  v16 = *(v15 + 64);
  v1[35] = sub_100002C58();
  v17 = sub_100002C10();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_10003A760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v209 = a8;
  v208 = a7;
  v206 = a6;
  v213 = a5;
  v212 = a4;
  v214 = a3;
  v215 = a9;
  v229 = a2;
  v10 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  v210 = *(v10 - 8);
  v211 = *(v210 + 64);
  __chkstk_darwin(v10 - 8);
  v219 = &v189 - v11;
  v12 = sub_100065020(&qword_1001BB410, &unk_100172340);
  v205 = *(v12 - 8);
  v207 = *(v205 + 64);
  __chkstk_darwin(v12 - 8);
  v217 = (&v189 - v13);
  v14 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v218 = &v189 - v16;
  v17 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  v204 = *(v17 - 8);
  v18 = *(v204 + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v216 = &v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v203 = &v189 - v20;
  v21 = type metadata accessor for InferenceProviderDescriptor();
  v222 = *(v21 - 8);
  v223 = v21;
  v22 = *(v222 + 64);
  __chkstk_darwin(v21);
  v221 = &v189 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v189 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v189 - v29;
  State = type metadata accessor for LoadState();
  v225 = *(State - 8);
  v226 = State;
  v32 = *(v225 + 64);
  v33 = __chkstk_darwin(State);
  v34 = &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v37 = &v189 - v36;
  v38 = __chkstk_darwin(v35);
  v220 = &v189 - v39;
  v40 = __chkstk_darwin(v38);
  v224 = &v189 - v41;
  __chkstk_darwin(v40);
  v43 = &v189 - v42;
  v44 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  if (*(a1 + *(v44 + 52)))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000641C(v45, qword_1001BB478);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_12;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v227 = v49;
    *v48 = 136315138;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = sub_100004A3C(v50, v51, &v227);

    *(v48 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "Tried to load invalidated asset: %s", v48, 0xCu);
    sub_100003324(v49);

LABEL_11:

LABEL_12:

    v71 = type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
    swift_allocError();
    (*(*(v71 - 8) + 104))(v72, enum case for ModelManagerError.internalError(_:), v71);
    return swift_willThrow();
  }

  v53 = v44;
  v54 = *(v44 + 28);
  if (*(a1 + v54))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_10000641C(v55, qword_1001BB478);
    v56 = v229;

    v46 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v46, v57))
    {
      goto LABEL_12;
    }

    v58 = swift_slowAlloc();
    v227 = swift_slowAlloc();
    *v58 = 136315394;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = sub_100004A3C(v59, v60, &v227);

    *(v58 + 4) = v61;
    *(v58 + 12) = 2080;
    v62 = (v56 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v63 = *(v56 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v64 = *(v56 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370(v62, v63);
    v65 = v221;
    (*(v64 + 8))(v63, v64);
    sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
    v66 = v223;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    (*(v222 + 8))(v65, v66);
    v70 = sub_100004A3C(v67, v69, &v227);

    *(v58 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v46, v57, "loadIfNeccesary called with pending transition task for %s with %s", v58, 0x16u);
    swift_arrayDestroy();

    goto LABEL_11;
  }

  v195 = v28;
  v196 = v18;
  v197 = v54;
  v74 = v225 + 16;
  v75 = *(v225 + 16);
  v76 = v43;
  v202 = v43;
  v77 = v226;
  v75(v76, a1, v226);
  v78 = *(v53 + 20);
  v201 = a1;
  v200 = v78;
  v79 = a1 + v78;
  v80 = v224;
  v81 = v202;
  v199 = v74;
  v198 = v75;
  v75(v224, v79, v77);
  if (sub_100116D68(v81, v80))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    v83 = sub_10000641C(v82, qword_1001BB478);
    v84 = v229;

    v192 = v83;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      LODWORD(v194) = v86;
      v87 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v227 = v193;
      *v87 = 136315394;
      InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
      v88 = v84;
      v89 = type metadata accessor for CustomAssetConfiguration();
      if (sub_10000C6C0(v30, 1, v89) == 1)
      {
        sub_10000ECD8(v30, &qword_1001B9D00, &qword_100171E00);
        v90 = InferenceProviderAssetDescriptor.identifier.getter();
        v92 = v91;
      }

      else
      {
        v90 = CustomAssetConfiguration.identifier.getter();
        v92 = v128;
        (*(*(v89 - 8) + 8))(v30, v89);
      }

      v129 = sub_100004A3C(v90, v92, &v227);

      *(v87 + 4) = v129;
      *(v87 + 12) = 2080;
      v130 = *(v88 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v131 = *(v88 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370((v88 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v130);
      v132 = v221;
      (*(v131 + 8))(v130, v131);
      sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
      v133 = v87;
      v134 = v223;
      v135 = dispatch thunk of CustomStringConvertible.description.getter();
      v137 = v136;
      (*(v222 + 8))(v132, v134);
      v138 = sub_100004A3C(v135, v137, &v227);

      *(v133 + 14) = v138;
      _os_log_impl(&_mh_execute_header, v85, v194, "loadIfNecessary entering for asset %s with %s", v133, 0x16u);
      swift_arrayDestroy();

      v81 = v202;
    }

    else
    {
    }

    v139 = enum case for LoadState.loaded(_:);
    v141 = v225;
    v140 = v226;
    v142 = *(v225 + 104);
    v143 = v220;
    v142(v220, enum case for LoadState.loaded(_:), v226);
    v144 = sub_100116D68(v81, v143);
    v145 = v140;
    v146 = v140;
    v147 = *(v141 + 8);
    v147(v143, v146);
    v194 = v141 + 8;
    v193 = v147;
    if (v144)
    {
      v190 = v142;
      v191 = v139;
      v148 = v202;
      v149 = v195;
      InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
      v150 = type metadata accessor for CustomAssetConfiguration();
      if (sub_10000C6C0(v149, 1, v150) == 1)
      {
        sub_10000ECD8(v149, &qword_1001B9D00, &qword_100171E00);
        v151 = type metadata accessor for AuditToken();
        v152 = v203;
        sub_100009BFC(v203, 1, 1, v151);
LABEL_32:
        sub_10000ECD8(v152, &qword_1001BB3F8, &qword_100171D50);
        v154 = v229;

        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v227 = swift_slowAlloc();
          *v157 = 136315394;
          type metadata accessor for InferenceProviderAssetDescriptor();
          sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
          v158 = dispatch thunk of CustomStringConvertible.description.getter();
          v160 = sub_100004A3C(v158, v159, &v227);

          *(v157 + 4) = v160;
          *(v157 + 12) = 2080;
          v161 = (v154 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
          v162 = *(v154 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
          v163 = *(v154 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
          sub_100003370(v161, v162);
          v164 = v221;
          (*(v163 + 8))(v162, v163);
          sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
          v165 = v223;
          v166 = dispatch thunk of CustomStringConvertible.description.getter();
          v168 = v167;
          (*(v222 + 8))(v164, v165);
          v169 = sub_100004A3C(v166, v168, &v227);

          *(v157 + 14) = v169;
          _os_log_impl(&_mh_execute_header, v155, v156, "Not loading asset %s into %s: already loaded", v157, 0x16u);
          swift_arrayDestroy();
        }

        v170 = v226;
        v171 = v193;
        v193(v224, v226);
        result = v171(v148, v170);
        *v215 = 0;
        return result;
      }

      v152 = v203;
      CustomAssetConfiguration.auditToken.getter();
      (*(*(v150 - 8) + 8))(v149, v150);
      v153 = type metadata accessor for AuditToken();
      if (sub_10000C6C0(v152, 1, v153) == 1)
      {
        goto LABEL_32;
      }

      sub_10000ECD8(v152, &qword_1001BB3F8, &qword_100171D50);
      v145 = v226;
      v147 = v193;
      v139 = v191;
      v142 = v190;
    }

    v172 = v201;
    v173 = v200;
    v147(v201 + v200, v145);
    v174 = v139;
    v175 = v145;
    v142((v172 + v173), v174, v145);
    v227 = 0x7373412064616F4CLL;
    v228 = 0xEB00000000207465;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
    v176._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v176);

    v226 = v227;
    v223 = v228;
    v177 = type metadata accessor for TaskPriority();
    sub_100009BFC(v218, 1, 1, v177);
    sub_10001E72C(v206, v217, &qword_1001BB410, &unk_100172340);
    sub_10001E72C(v208, v219, &qword_1001BB408, &unk_100171DC0);
    v198(v220, v202, v145);
    sub_10001E72C(v209, v216, &qword_1001BB3F8, &qword_100171D50);
    v178 = sub_100011B5C(&qword_1001B8BB8, type metadata accessor for InferenceProviderAssetManager);
    v179 = (*(v205 + 80) + 57) & ~*(v205 + 80);
    v180 = (v207 + *(v210 + 80) + v179) & ~*(v210 + 80);
    v181 = v225;
    v182 = (v211 + *(v225 + 80) + v180) & ~*(v225 + 80);
    v183 = (v32 + *(v204 + 80) + v182) & ~*(v204 + 80);
    v184 = swift_allocObject();
    v185 = v214;
    *(v184 + 16) = v214;
    *(v184 + 24) = v178;
    *(v184 + 32) = v229;
    *(v184 + 40) = v185;
    *(v184 + 48) = v212;
    *(v184 + 56) = v213 & 1;
    sub_10002F6B4(v217, v184 + v179, &qword_1001BB410, &unk_100172340);
    sub_10002F6B4(v219, v184 + v180, &qword_1001BB408, &unk_100171DC0);
    (*(v181 + 32))(v184 + v182, v220, v175);
    sub_10002F6B4(v216, v184 + v183, &qword_1001BB3F8, &qword_100171D50);
    swift_retain_n();

    sub_100128ED0();
    v187 = v186;
    v188 = v193;
    v193(v224, v175);
    v188(v202, v175);
    *(v201 + v197) = v187;
    *v215 = v187;
  }

  if (qword_1001B8938 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for Logger();
  sub_10000641C(v93, qword_1001BB478);
  v94 = v226;
  v95 = v198;
  v198(v37, v81, v226);
  v95(v34, v224, v94);

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    LODWORD(v218) = v97;
    v99 = v98;
    v219 = swift_slowAlloc();
    v227 = v219;
    *v99 = 136315906;
    sub_100011B5C(&qword_1001BA478, &type metadata accessor for LoadState);
    v217 = v96;
    v100 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v101;
    v103 = *(v225 + 8);
    v220 = ((v225 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v103(v37, v226);
    v104 = sub_100004A3C(v100, v102, &v227);

    *(v99 + 4) = v104;
    *(v99 + 12) = 2080;
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    v107 = v106;
    v103(v34, v226);
    v94 = v226;
    v108 = sub_100004A3C(v105, v107, &v227);

    *(v99 + 14) = v108;
    *(v99 + 22) = 2080;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
    v109 = v229;
    v110 = dispatch thunk of CustomStringConvertible.description.getter();
    v112 = sub_100004A3C(v110, v111, &v227);

    *(v99 + 24) = v112;
    *(v99 + 32) = 2080;
    v113 = v202;
    v114 = *(v109 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v115 = *(v109 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370((v109 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v114);
    v116 = v221;
    (*(v115 + 8))(v114, v115);
    sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
    v117 = v223;
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    v120 = v119;
    v121 = v116;
    v122 = v225;
    (*(v222 + 8))(v121, v117);
    v123 = sub_100004A3C(v118, v120, &v227);

    *(v99 + 34) = v123;
    v124 = v217;
    _os_log_impl(&_mh_execute_header, v217, v218, "loadIfNecessary called with unmatching states (%s != %s) for %s with %s", v99, 0x2Au);
    swift_arrayDestroy();

    v125 = v103;
    v81 = v113;
  }

  else
  {

    v122 = v225;
    v125 = *(v225 + 8);
    v220 = ((v225 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v125(v34, v94);
    v125(v37, v94);
  }

  (*(v122 + 24))(v201 + v200, v81, v94);
  v126 = type metadata accessor for ModelManagerError();
  sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
  swift_allocError();
  (*(*(v126 - 8) + 104))(v127, enum case for ModelManagerError.internalError(_:), v126);
  swift_willThrow();
  v125(v224, v94);
  return (v125)(v81, v94);
}

uint64_t sub_10003C024()
{
  v1 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F44(v1);
  v36 = *(v2 + 80);
  v3 = (v36 + 57) & ~v36;
  v5 = *(v4 + 64);
  v6 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F44(v6);
  v8 = *(v7 + 80);
  v9 = (v3 + v5 + v8) & ~v8;
  v11 = *(v10 + 64);
  State = type metadata accessor for LoadState();
  sub_100002BDC(State);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = (v9 + v11 + v14) & ~v14;
  v17 = *(v16 + 64);
  v18 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v18);
  v20 = *(v19 + 80);
  v21 = v15 + v17 + v20;
  v35 = *(v22 + 64);
  v23 = *(v0 + 2);
  swift_unknownObjectRelease();
  v24 = *(v0 + 4);

  v25 = *(v0 + 5);

  v26 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  if (!sub_10000C6C0(&v0[v3], 1, v26))
  {
    sub_100006098(v26);
    (*(v27 + 8))(&v0[v3], v26);
  }

  v28 = v21 & ~v20;
  v29 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  if (!sub_10000C6C0(&v0[v9], 1, v29))
  {
    sub_100006098(v29);
    (*(v30 + 8))(&v0[v9], v29);
  }

  (*(v13 + 8))(&v0[v15], State);
  v31 = type metadata accessor for AuditToken();
  if (!sub_10000C1F0(&v0[v28]))
  {
    sub_100006098(v31);
    (*(v32 + 8))(&v0[v28], v31);
  }

  return _swift_deallocObject(v0, v28 + v35, v36 | v8 | v14 | v20 | 7);
}

uint64_t sub_10003C328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v18 = *(v14 + 184);
  v19 = type metadata accessor for Logger();
  *(v14 + 288) = sub_100002FD0(v19, qword_1001BB110);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v14 + 184);
    sub_10000A05C();
    swift_slowAlloc();
    sub_10000A45C();
    swift_slowAlloc();
    sub_1000265BC();
    *v15 = 136315138;
    sub_1000BF9CC(v22);
    Array.description.getter();
    sub_100045E40();

    v23 = sub_10000CD1C();
    v17 = sub_100004A3C(v23, v24, v25);

    *(v15 + 4) = v17;
    sub_10000C720();
    _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    sub_100003324(v16);
    sub_1000039CC();

    sub_10000BFCC();
  }

  *(v14 + 344) = enum case for LoadState.loaded(_:);
  *(v14 + 348) = enum case for LoadState.unloaded(_:);
  sub_1000DADE8();
  AssetCost.onDeviceMemory.getter();
  v31 = sub_10003638C();
  v32(v31);
  if (sub_10003EC04() >= v17)
  {
    v37 = *(v14 + 288);
    Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (!sub_100002F80(v38))
    {
LABEL_9:
      sub_1000133B8();

      sub_100002F54();
      sub_100003540();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
    }

LABEL_8:
    v39 = sub_100007648();
    sub_10000BF10(v39);
    sub_1000195D4(&_mh_execute_header);
    sub_10000BFCC();

    goto LABEL_9;
  }

  v33 = *(v14 + 184);
  v34 = *(v14 + 192);
  sub_10004FAAC();
  v36 = sub_10002B164(v35);
  v49 = v36;
  if (!v36)
  {
    v55 = *(v14 + 288);
    Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (!sub_100002F80(v56))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v50 = *(v14 + 240);
  *(v14 + 304) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_1000DB1C0();
  v51 = *(v14 + 48);
  sub_100003370((v14 + 16), *(v14 + 40));
  v52 = sub_100009E94();
  v53(v52);
  v54 = *(v14 + 288);
  sub_100003324((v14 + 16));

  v57 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000DAEE8();

  if (sub_100042D00())
  {
    sub_10000A05C();
    v59 = swift_slowAlloc();
    sub_1000033D0();
    v91 = swift_slowAlloc();
    sub_1000DB48C(4.8149e-34);
    sub_100027434();
    sub_1000DAF38();

    v60 = sub_100004CB0();
    sub_100004A3C(v60, v61, v62);
    sub_100005974();

    *(v59 + 4) = v49;
    sub_10000A39C(&_mh_execute_header, v63, v64, "unloadIfNeededToMakeRoom unloading %s");
    sub_100003324(v91);
    sub_100005864();

    sub_100002BD0();
  }

  if (*(v49 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
  {
    v65 = *(v14 + 344);
    v66 = *(v14 + 256);
    v67 = *(v14 + 232);
    v68 = *(v14 + 208);
    v69 = *(v14 + 216);
    sub_100005C78();
    v70 = sub_10000CF04();
    sub_1000192DC(v70, v71);
    v72 = sub_100057838();
    v73(v72);
    v74 = sub_1000125D0();
    v76 = sub_100116D68(v74, v75);
    v77 = *(v14 + 256);
    if (v76)
    {
      v78 = sub_1000440CC();
      v79(v78);
      sub_100008654();
      sub_100019338();
LABEL_22:
      v82 = swift_task_alloc();
      v83 = sub_100053C2C(v82);
      *v83 = v84;
      sub_10000A24C(v83);
      sub_100005F60();
      sub_100003540();

      return sub_1000486EC();
    }

    sub_10002B334();
    sub_1000DB080();
    v80 = sub_100003754();
    v81(v80);
    sub_100008654();
    sub_100019338();
    if (v67)
    {
      goto LABEL_22;
    }
  }

  v86 = sub_1000DB26C();
  sub_100007098(v86);
  v87 = swift_task_alloc();
  v88 = sub_1000530C4(v87);
  *v88 = v89;
  sub_100009C64(v88);
  sub_100005F60();
  sub_100003540();

  return sub_10002BA5C();
}

uint64_t sub_10003C8E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100002D24();
  swift_beginAccess();
  sub_10003A760(v14 + v6, v6, a1, a2, a3 & 1, a4, a5, a6, &v16);
  result = swift_endAccess();
  if (!v7)
  {
    return v16;
  }

  return result;
}

uint64_t sub_10003D1D4()
{
  sub_1000055B0();
  v1 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F44(v1);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F44(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v11);
  v13 = *(v12 + 80);
  v14 = v8 + v10 + v13;
  v16 = *(v15 + 64);
  v17 = *(v0 + 16);

  v18 = *(v0 + 24);

  v19 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  if (!sub_10004655C(v19))
  {
    sub_1000076C8();
    (*(v20 + 8))(v0 + v3, v10);
  }

  v21 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  if (!sub_10000C6C0(v0 + v8, 1, v21))
  {
    sub_1000076C8();
    (*(v22 + 8))(v0 + v8, v21);
  }

  v23 = type metadata accessor for AuditToken();
  if (!sub_10004655C(v23))
  {
    sub_1000076C8();
    (*(v24 + 8))(v0 + (v14 & ~v13), v21);
  }

  sub_100002EEC();

  return _swift_deallocObject(v25, v26, v27);
}

uint64_t sub_10003D418(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v48 = *a3;
  State = type metadata accessor for LoadState();
  v8 = *(State - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(State);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v12 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v41 = v3;
    v42 = &_swiftEmptySetSingleton;
    v65 = &_swiftEmptySetSingleton;
    v44 = a3;

    v43 = a2;

    v49 = __CocoaSet.makeIterator()();
    HIDWORD(v47) = enum case for LoadState.loaded(_:);
    v46 = (v8 + 104);
    v15 = (v8 + 8);
    while (1)
    {
      v16 = __CocoaSet.Iterator.next()();
      if (!v16)
      {

        a1 = v42;
        goto LABEL_23;
      }

      v50 = v16;
      swift_dynamicCast();
      v17 = v64;
      v18 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      sub_1000192DC(v18 + v17, v14);
      (*v46)(v11, HIDWORD(v47), State);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v50 == v59 && v51 == v60)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          (*v15)(v11, State);
          sub_100019338();
          goto LABEL_16;
        }
      }

      v21 = &v14[*(v45 + 20)];
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v50 == v59 && v51 == v60)
      {

        (*v15)(v11, State);
        sub_100019338();
LABEL_21:
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v15)(v11, State);
        sub_100019338();
        if (v23)
        {
          goto LABEL_21;
        }

LABEL_16:
        if (!sub_10002D88C(v17))
        {
          goto LABEL_21;
        }

        v31 = v64;
        v32 = v42[2];
        if (v42[3] <= v32)
        {
          sub_100080444(v32 + 1, v24, v25, v26, v27, v28, v29, v30, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
        }

        v33 = v65;
        v34 = *(v65 + 5);
        Hasher.init(_seed:)();
        sub_10001214C();
        Hasher._finalize()();
        v35 = -1 << v33[32];
        v36 = _HashTable.nextHole(atOrAfter:)();
        *&v33[((v36 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56] |= 1 << v36;
        *(*(v33 + 6) + 8 * v36) = v31;
        v37 = *(v33 + 2) + 1;
        v42 = v33;
        *(v33 + 2) = v37;
      }
    }
  }

  v38 = sub_100049A6C(a1, a2, a3);
  if (v3)
  {
  }

  else
  {
    a1 = v38;

LABEL_23:
  }

  return a1;
}

uint64_t sub_10003D984()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[26];
  v4 = v0[23];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100028248(sub_1000279B0, v5, v1);

  sub_10002B524();
  v0[52] = v6;
  v7 = swift_task_alloc();
  v0[53] = v7;
  *v7 = v0;
  v7[1] = sub_10004A618;
  v8 = v0[26];
  sub_1000031B8(v0[50]);
  sub_100003D20();

  return sub_10003A608();
}

uint64_t sub_10003DA6C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10003DA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DADC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v21 = _swiftEmptyArrayStorage;
  result = sub_10000E8DC(a3);
  v8 = result;
  v9 = 0;
  v10 = v4 & 0xC000000000000001;
  v18 = v4;
  v19 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 == v9)
    {

      return v21;
    }

    if (v10)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = result;
    }

    else
    {
      if (v9 >= *(v19 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(v4 + 8 * v9 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      break;
    }

    v20 = v11;
    v12 = a1(&v20);
    if (v3)
    {
    }

    if (v12)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v8;
      v14 = v10;
      v15 = a1;
      v16 = a2;
      v17 = v21[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a2 = v16;
      a1 = v15;
      v10 = v14;
      v8 = v13;
      v4 = v18;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

BOOL sub_10003DC64()
{
  v1 = type metadata accessor for Date();
  v2 = sub_100002BDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v9 = v8 - v7;
  static Date.now.getter();
  v10 = sub_100010EB0();
  v15 = v0;
  v16 = v9;
  v11 = sub_10003DADC(sub_100043D54, v14, v10);
  v12 = sub_10000E8DC(v11);

  (*(v4 + 8))(v9, v1);
  return v12 != 0;
}

uint64_t sub_10003DD74()
{
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[32];
  v5 = v0[29];

  return static Task<>.isCancelled.getter();
}

uint64_t sub_10003DDA0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10003DDBC(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

uint64_t sub_10003DDDC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  sub_100012A00();
  result = _HashTable.startBucket.getter();
  v3 = *(a1 + 36);
  return result;
}

void *sub_10003DE74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004CBC();
  swift_beginAccess();
  if ((*(v2 + v1) & 0xC000000000000001) != 0)
  {
    v3 = &_swiftEmptySetSingleton;
    v38 = &_swiftEmptySetSingleton;
    sub_1000DAF00();
    swift_retain_n();

    __CocoaSet.makeIterator()();
    while (1)
    {
      v4 = __CocoaSet.Iterator.next()();
      if (!v4)
      {
        break;
      }

      v25 = v4;
      type metadata accessor for InferenceProviderAsset(0);
      swift_dynamicCast();
      v5 = v37;
      v6 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v37;
      swift_beginAccess();
      if (*(*&v6[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 48)] + 16))
      {
        v14 = v3[2];
        if (v3[3] <= v14)
        {
          sub_100080444(v14 + 1, v7, v8, v9, v10, v11, v12, v13, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
        }

        v3 = v38;
        v15 = v38[5];
        Hasher.init(_seed:)();
        sub_10001214C();
        Hasher._finalize()();
        v16 = -1 << *(v38 + 32);
        v17 = _HashTable.nextHole(atOrAfter:)();
        sub_1000DAD98((v17 >> 3) & 0x1FFFFFFFFFFFFFF8);
        *(v38[6] + 8 * v18) = v5;
        ++v38[2];
      }

      else
      {
      }
    }

    sub_1000DAF00();
  }

  else
  {

    sub_1000DAF44();
    return sub_100011E30(v19, v20, v21, v22);
  }

  return v3;
}

void sub_10003E06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10000355C();
  a29 = v30;
  a30 = v38;
  v39 = v35;
  v40 = v34;
  v41 = v31;
  if ((v34 & 0xC000000000000001) == 0)
  {
    if (v33)
    {
      v42 = v37;
      v43 = v36;
      v44 = (v35)(0);
      sub_1000DB38C();
      if (__CocoaSet.Index.age.getter() == *(v40 + 36))
      {
        sub_1000DB38C();
        a18 = __CocoaSet.Index.element.getter();
        swift_dynamicCast();
        v45 = a9;
        v46 = *(v40 + 40);
        Hasher.init(_seed:)();
        v43(&a9);
        Hasher._finalize()();
        v47 = *(v40 + 32);
        sub_100011E24();
        v50 = ~v49;
        while (1)
        {
          v41 = v48 & v50;
          if (((*(v40 + 56 + (((v48 & v50) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v48 & v50)) & 1) == 0)
          {
            goto LABEL_21;
          }

          v51 = *(*(v40 + 48) + 8 * v41);

          v42(v52, v45);
          sub_10014B320();
          if (v44)
          {
            goto LABEL_15;
          }

          v48 = v41 + 1;
        }
      }

      __break(1u);
    }

    else if ((v31 & 0x8000000000000000) == 0 && 1 << *(v34 + 32) > v31)
    {
      if ((*(v34 + 8 * (v31 >> 6) + 56) >> v31))
      {
        if (*(v34 + 36) != v32)
        {
          __break(1u);
LABEL_15:
        }

        v53 = *(*(v40 + 48) + 8 * v41);

        goto LABEL_17;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:

    __break(1u);
    goto LABEL_22;
  }

  if (v33)
  {
    sub_1000DB38C();
    a18 = __CocoaSet.element(at:)();
    v39(0);
    sub_1000358A4();
    swift_dynamicCast();
LABEL_17:
    sub_100005F10();
    return;
  }

LABEL_22:
  __break(1u);
}

void sub_10003E244()
{
  sub_1000055B0();
  v54 = v0;
  v1 = type metadata accessor for AssetCost();
  v2 = sub_100002BDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100009C24();
  v55 = v7;
  sub_100002F1C();
  v9 = __chkstk_darwin(v8);
  v11 = &v50 - v10;
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = sub_10003DE74();
  sub_10003E5A4();
  sub_10003E8D4(v15, v14);
  v17 = v16;

  sub_10003E8D4(v18, v17);
  v20 = v19;
  AssetCost.init(onDeviceMemory:)();
  v21 = *(v4 + 16);
  v57 = v11;
  v58 = v1;
  v53 = v13;
  v21(v11, v13, v1);
  v52 = v20;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v22 = sub_100005B00();
    type metadata accessor for InferenceProviderAsset(v22);
    sub_1000056C4();
    sub_100011B14(v23, v24);
    Set.Iterator.init(_cocoa:)();
    v20 = v61;
    v25 = v62;
    v27 = v63;
    v26 = v64;
    v28 = v65;
  }

  else
  {
    v29 = *(v20 + 32);
    sub_100011E24();
    v25 = v20 + 56;
    v30 = *(v20 + 56);
    v27 = ~v31;
    sub_10000A5E8();
    v28 = v32 & v33;

    v26 = 0;
  }

  v51 = v27;
  v34 = (v27 + 64) >> 6;
  v56 = (v4 + 8);
  v35 = (v4 + 32);
  if (v20 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v36 = v26;
    v37 = v26;
    if (!v28)
    {
      break;
    }

LABEL_9:
    sub_1000062A0();
    v40 = v39 & v38;
    v41 = *(v20 + 48);
    sub_10004D404(v42);
    if (!v17)
    {
LABEL_16:
      sub_100019334(v20, v25, v51, v26, v28);
      v49 = v58;
      (*v35)(v54, v57, v58);

      (*v56)(v53, v49);
      sub_100002EEC();
      return;
    }

    while (1)
    {
      v44 = v20;
      v45 = v55;
      v46 = v57;
      static AssetCost.+ infix(_:_:)();

      v47 = v58;
      (*v56)(v46, v58);
      v48 = v45;
      v20 = v44;
      (*v35)(v46, v48, v47);
      v26 = v37;
      v28 = v40;
      if ((v44 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      v43 = __CocoaSet.Iterator.next()();
      if (v43)
      {
        v59 = v43;
        type metadata accessor for InferenceProviderAsset(0);
        sub_1000358A4();
        swift_dynamicCast();
        v17 = v60;
        v37 = v26;
        v40 = v28;
        if (v60)
        {
          continue;
        }
      }

      goto LABEL_16;
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      v28 = 0;
      goto LABEL_16;
    }

    ++v36;
    if (*(v25 + 8 * v37))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10003E5A4()
{
  sub_1000055B0();
  v3 = v0;
  State = type metadata accessor for LoadState();
  v5 = sub_100002BDC(State);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002B8C();
  sub_1000281B0();
  v10 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_1000183F4();
  swift_beginAccess();
  if ((*(v10 + v3) & 0xC000000000000001) == 0)
  {

    sub_1000DAF44();
    sub_100011E30(v38, v39, v40, v41);
    goto LABEL_22;
  }

  v11 = &_swiftEmptySetSingleton;
  v61 = &_swiftEmptySetSingleton;
  sub_10005FA6C();

  v45 = __CocoaSet.makeIterator()();
  HIDWORD(v44) = enum case for LoadState.loaded(_:);
  v12 = (v7 + 104);
  v13 = (v7 + 8);
  while (1)
  {
    v14 = __CocoaSet.Iterator.next()();
    if (!v14)
    {
      break;
    }

    v47 = v14;
    type metadata accessor for InferenceProviderAsset(0);
    sub_1000358A4();
    swift_dynamicCast();
    v15 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v60;
    sub_100002D24();
    swift_beginAccess();
    (*v12)(v1, HIDWORD(v44), State);
    sub_100002D0C();
    sub_100011B14(&dword_1001BA628, v16);
    sub_1000DAF88();
    sub_1000DAF88();
    if (v58 == v56 && v59 == v57)
    {
LABEL_15:

      goto LABEL_16;
    }

    sub_100012D24();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000DB45C();

    if (v2)
    {
LABEL_16:
      v30 = *v13;
      v31 = sub_1000DB0E0();
      v32(v31);
      swift_endAccess();
LABEL_17:
      v33 = *(v11 + 2);
      if (*(v11 + 3) <= v33)
      {
        sub_1000DB474(v23, v24, v25, v26, v27, v28, v29, v33, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
      }

      v11 = v61;
      v34 = *(v61 + 5);
      Hasher.init(_seed:)();
      sub_10001214C();
      v35 = Hasher._finalize()();
      sub_100012B94(v35, v61[32]);
      _HashTable.nextHole(atOrAfter:)();
      sub_1000119F0();
      sub_100027838(v36);
      sub_1000DB05C(v37);
    }

    else
    {
      v18 = &v15[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 20)];
      sub_1000DAF88();
      sub_1000DAF88();
      if (v58 == v56 && v59 == v57)
      {
        goto LABEL_15;
      }

      sub_100012D24();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000DB45C();

      v20 = *v13;
      v21 = sub_1000DB0E0();
      v22(v21);
      swift_endAccess();
      if (v2)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_22:
  sub_100002EEC();
}

void sub_10003E8D4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v21[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    v3 = sub_10002A104();
    type metadata accessor for InferenceProviderAsset(v3);
    sub_1000059C0();
    sub_10000814C(v4, v5);
    sub_1000062B0();
    Set.Iterator.init(_cocoa:)();
    v2 = v21[2];
    v6 = v21[3];
    v7 = v21[4];
    v8 = v21[5];
    v9 = v21[6];
  }

  else
  {
    v8 = 0;
    sub_100012A00();
    v6 = v2 + 56;
    v7 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(v10 << v12);
    }

    else
    {
      v13 = v10;
    }

    v9 = v13 & *(v2 + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v8;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    sub_1000062A0();
    v18 = v17 & v16;
    v20 = *(*(v2 + 48) + ((v15 << 9) | (8 * v19)));

    if (!v20)
    {
LABEL_18:
      sub_1000060A4();
      sub_100007F18();
      return;
    }

    while (1)
    {
      sub_10001A264(v21, v20);

      v8 = v15;
      v9 = v18;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for InferenceProviderAsset(0);
        swift_dynamicCast();
        v20 = v21[0];
        v15 = v8;
        v18 = v9;
        if (v21[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_18;
    }

    ++v14;
    if (*(v6 + 8 * v15))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10003EAE8(uint64_t a1)
{
  State = type metadata accessor for LoadState();
  v3 = *(State - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(State);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for LoadState.loaded(_:), State);
  if (sub_100116D68(a1, v6))
  {
    v7 = 1;
  }

  else
  {
    v8 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
    v7 = sub_100116D68(a1 + *(v8 + 20), v6);
  }

  (*(v3 + 8))(v6, State);
  return v7 & 1;
}

unint64_t sub_10003EC04()
{
  v1 = v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100004CBC();
  swift_beginAccess();
  v2 = (v1 + *(_s6PolicyVMa_0() + 20));
  if (v2[1])
  {
    return *(*sub_100003370((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24)) + 112);
  }

  v3 = *v2;
  if (*(*sub_100003370((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24)) + 112) < v3)
  {
    return *(*sub_100003370((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24)) + 112);
  }

  return v3;
}

uint64_t sub_10003ECC8()
{
  sub_10000CB70();
  sub_100003884();
  v1 = v0[58];
  type metadata accessor for _OSActivity();
  v0[65] = swift_initStackObject();
  v2 = sub_10001B160("Launching extension and taking assertion", 40, 2);
  v0[66] = v2;
  v3 = v0[58];
  if (*(v1 + 112))
  {
    v4 = v2;
    v5 = *(v3 + 120);
    if (v5)
    {
      [v5 pid];
      v6 = swift_task_alloc();
      v0[79] = v6;
      *v6 = v0;
      v6[1] = sub_1000A72D8;
      v7 = v0[57];
      v8 = v0[58];
      v9 = v0[56];
      sub_100004CC8();

      return sub_10003F198();
    }

    else
    {
      if (qword_1001B8900 != -1)
      {
        sub_100005C18();
      }

      v24 = type metadata accessor for Logger();
      sub_100002FD0(v24, qword_1001B9FA0);
      v25 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      sub_100006390();
      if (os_log_type_enabled(v25, v26))
      {
        *sub_100007648() = 0;
        sub_1000031C4();
        _os_log_impl(v27, v28, v29, v30, v31, 2u);
        sub_10000706C();
      }

      v32 = type metadata accessor for ModelManagerError();
      sub_1000085DC();
      sub_10002EA7C(v33, v34);
      swift_allocError();
      sub_100006098(v32);
      (*(v35 + 104))();
      swift_willThrow();
      sub_100004B50();
      os_activity_scope_leave((v4 + 3));
      swift_endAccess();
      sub_10000C998();

      sub_100007A20();
      sub_100004CC8();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43);
    }
  }

  else if (*(v3 + 164) == 1)
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v12 = type metadata accessor for Logger();
    sub_100002FD0(v12, qword_1001B9FA0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (sub_100002F80(v14))
    {
      v15 = sub_100007648();
      sub_10000A240(v15);
      sub_1000059D8(&_mh_execute_header, v16, v17, "Failing launch of extension because previous extension instance is cleaning up");
      sub_100002F64();
    }

    type metadata accessor for ModelManagerError();
    sub_1000085DC();
    sub_10002EA7C(v18, v19);
    v0[67] = sub_10000C700();
    v20 = swift_task_alloc();
    v0[68] = v20;
    *v20 = v0;
    v20[1] = sub_1000A6B18;
    v21 = v0[58];
    sub_100013E54();
    sub_100004CC8();

    return sub_1000A5930(v22);
  }

  else
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v44 = type metadata accessor for Logger();
    sub_100002FD0(v44, qword_1001B9FA0);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (sub_100002F80(v46))
    {
      v47 = sub_100007648();
      sub_10000A240(v47);
      sub_1000059D8(&_mh_execute_header, v48, v49, "InferenceProviderExtensionConnection setCurrentState creating new sender part");
      sub_100002F64();
    }

    v50 = swift_task_alloc();
    v0[69] = v50;
    *v50 = v0;
    v50[1] = sub_100056CF0;
    v51 = v0[58];
    sub_100004CC8();

    return sub_1000A88D0();
  }
}

uint64_t sub_10003F198()
{
  sub_100002BAC();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 24) = v3;
  *(v1 + 76) = v4;
  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10003F228()
{
  v3 = [objc_opt_self() identifierWithPid:*(v0 + 76)];
  if (v3)
  {
    v4 = v3;
    sub_10000E2C0(0, &qword_1001BA4A0, RBSProcessHandle_ptr);
    v5 = v4;
    v24 = sub_10001B620(v5);
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v25 = type metadata accessor for Logger();
    sub_100002FD0(v25, qword_1001B9FA0);
    v26 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100006390();
    if (os_log_type_enabled(v26, v27))
    {
      *sub_100007648() = 0;
      sub_10000CC6C();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      sub_100004B78();
    }

    v33 = *(v0 + 32);
    v34 = *(v0 + 40);
    v57 = *(v0 + 24);

    _StringGuts.grow(_:)(30);

    type metadata accessor for InferenceProviderDescriptor();
    sub_10000509C();
    sub_10002EA7C(v35, v36);
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v37);

    v38 = [objc_opt_self() targetWithPid:{objc_msgSend(v24, "pid")}];
    sub_100065020(&dword_1001BA4A8, &qword_100171010);
    sub_100005640();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100170BC0;
    sub_10000E2C0(0, &qword_1001BA4B0, RBSDomainAttribute_ptr);

    *(v39 + 32) = sub_10003A354();
    v40 = objc_allocWithZone(RBSAssertion);
    v41 = sub_10003A3E8(0xD00000000000001CLL, 0x8000000100176590, v38);
    *(v0 + 16) = 0;
    v42 = [v41 acquireWithError:v0 + 16];
    v43 = *(v0 + 16);
    if (v42)
    {
      v44 = *(*(v0 + 40) + 168);
      *(swift_task_alloc() + 16) = v41;
      v45 = v43;

      os_unfair_lock_lock((v44 + 24));
      sub_10003F810((v44 + 16));
      os_unfair_lock_unlock((v44 + 24));

      v54 = *(v0 + 8);
      sub_100003D04();

      __asm { BRAA            X2, X16 }
    }

    v46 = v43;
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v6 = type metadata accessor for Logger();
    sub_100002FD0(v6, qword_1001B9FA0);
    v7 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_100006390();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 76);
      sub_100007698();
      sub_100003890();
      sub_10003EAA0();
      *v1 = 136315138;
      *(v0 + 72) = v9;
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_1000239D4(v10, v11, v12, v13);
      sub_100007BA0();
      *(v1 + 4) = v2;
      sub_1000033FC();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      sub_100001F88();
      sub_10000706C();
    }

    v19 = type metadata accessor for ModelManagerError();
    sub_1000085DC();
    sub_10002EA7C(v20, v21);
    v22 = sub_10000A418();
    sub_100006098(v19);
    (*(v23 + 104))();
    swift_willThrow();
  }

  *(v0 + 48) = v22;
  type metadata accessor for ModelManagerError();
  sub_1000085DC();
  sub_10002EA7C(v47, v48);
  *(v0 + 56) = sub_10000C700();
  v49 = swift_task_alloc();
  *(v0 + 64) = v49;
  *v49 = v0;
  v49[1] = sub_1000A6954;
  v50 = *(v0 + 40);
  sub_100013E54();
  sub_100003D04();

  return sub_1000A5930(v51);
}

uint64_t sub_10003F83C()
{
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[28];
  v5 = v0[29];
}

uint64_t sub_10003F858()
{
  v3 = v0 + *(v1 - 128);

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10003F89C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 224);
  *(v3 + 240);
  v6 = *v2;
  sub_100004B40();
  *v7 = v6;
  *(v8 + 232) = v0;

  sub_10000A9E0();
  v10 = *(v9 + 112);
  sub_10000E700();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10003F9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_10003FAA8(*(v12 + 216));
  v13 = *(v12 + 208);
  v14 = *(v12 + 192);
  v15 = *(v12 + 200);
  v17 = *(v12 + 176);
  v16 = *(v12 + 184);
  v19 = *(v12 + 160);
  v18 = *(v12 + 168);
  v21 = *(v12 + 136);
  v20 = *(v12 + 144);
  v31 = *(v12 + 128);

  v15(v17, v20);
  v15(v14, v20);

  sub_100002F54();
  sub_1000062BC();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

void sub_10003FAA8(void *a1)
{
  if (a1)
  {
    v1 = qword_1001B8900;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000641C(v3, qword_1001B9FA0);
    v13 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      v8 = [v13 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_100004A3C(v9, v11, &v14);

      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "InferenceProviderExtensionConnection setCurrentState invalidating assertion %s", v6, 0xCu);
      sub_100003324(v7);
    }

    [v13 invalidate];
  }
}

uint64_t sub_10003FC5C()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *(v5 + 24);
  v8 = *v1;
  sub_100002B9C();
  *v9 = v8;

  v10 = *(v3 + 24);
  if (v0)
  {
    v11 = sub_1000A78D8;
  }

  else
  {
    v11 = sub_10003A4D4;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_10003FD9C()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    v9 = *(v3 + 16);

    return _swift_task_switch(sub_1000A95F4, v9, 0);
  }

  else
  {
    sub_100001F00();

    return v10();
  }
}

uint64_t sub_10003FEB4()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 384);
  *v4 = *v2;
  *(v3 + 392) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 248);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10003FFC8()
{
  sub_100001ED0();
  v1 = v0[50];
  v2 = v0[42];
  v3 = v0[31];

  sub_100002C70();
  sub_100039484(v3, v4, v5);
  sub_100004B50();
  os_activity_scope_leave((v2 + 24));
  swift_endAccess();
  sub_10001C130();

  sub_100002F54();

  return v6();
}

uint64_t sub_100040094()
{
  v2 = v0[40];
  v3 = v0[4];

  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    sub_100012DB0();
    sub_1000062D8();
    sub_100012BB4(4.8151e-34);
    sub_100005168();
    sub_100011B5C(v5, v6);
    v7 = sub_1000060D8();
    sub_100036E38(v7, v8);
    sub_100013E7C();

    v9 = sub_1000113C8();
    v10(v9, v1);
    sub_10000866C();
    sub_100011B5C(v11, v12);
    sub_1000035E8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_10000588C();
    v46(v13);
    v14 = sub_100008004();
    sub_100004A3C(v14, v15, v16);
    sub_10000A868();

    *(v3 + 14) = v2;
    sub_1000033FC();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    sub_10002A110();
    sub_1000039CC();

    sub_100002BD0();
  }

  sub_100013AE4();
  InferenceProviderAssetDescriptor.version.getter();
  v22 = AssetCost.onDeviceMemory.getter();
  v30 = sub_100007910(v22, v23, v24, v25, v26, v27, v28, v29, v38, v39, v40, v41, v42, v43);
  v31(v30);

  (v46)(v44, v45);
  v32 = swift_task_alloc();
  v0[43] = v32;
  *v32 = v0;
  sub_100002008(v32);
  v33 = v0[4];
  v35 = sub_1000031B8(v34);

  return sub_100041158(v35, v36);
}

uint64_t sub_1000402B0()
{
  v2 = *(v0 + 16);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000402D8()
{
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
}

uint64_t *sub_1000402F4()
{
  result = sub_100003370((v0 + 152), *(v0 + 176));
  v2 = *result;
  return result;
}

uint64_t sub_100040330(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 320);
  v4 = *(v2 + 296);
  v5 = *(v2 + 424);
  return result;
}

uint64_t sub_100040528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v37 = a7;
  v38 = a8;
  v36 = a6;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v13 = sub_100065020(&qword_1001BD078, &qword_100173950);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v36 - v15;
  v17 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.end(_:);
  v18 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  sub_100009BFC(v16, 0, 1, v18);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v19 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = v36;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v21 = sub_100065020(&qword_1001BD090, &qword_100173970);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = (&v36 - v23);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition();
  v25 = swift_allocBox();
  v39 = v37;
  v40 = v38;
  static Buildable.with(_:)();
  *v24 = v25;
  v26 = enum case for GenerativeFunctionsInstrumentationMetadata.assetTransition(_:);
  v27 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v27 - 8) + 104))(v24, v26, v27);
  sub_100009BFC(v24, 0, 1, v27);
  result = GenerativeFunctionsInstrumentationEvent.metadata.setter();
  if (a9)
  {
    v29 = sub_100065020(&qword_1001BD080, &unk_100173958);
    v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v29 - 8);
    v32 = (&v36 - v31);
    swift_getErrorValue();
    v33 = v46;
    v34 = v47;
    swift_errorRetain();
    sub_1000BA718(v33, v34, v32);
    v35 = type metadata accessor for GenerativeFunctionsInstrumentationError();
    sub_100009BFC(v32, 0, 1, v35);
    GenerativeFunctionsInstrumentationEvent.error.setter();
  }

  return result;
}

uint64_t sub_100040900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100065020(&qword_1001BD088, &qword_100173968);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v16[-v12];
  v14 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  static Buildable.with(_:)();
  sub_100009BFC(v13, 0, 1, v14);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();
}

uint64_t sub_100040A30(uint64_t a1, uint64_t a2, char a3)
{
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.memoryCostKB.setter();
  v4 = sub_100065020(&qword_1001BD0A8, &qword_100173988);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result();
  v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.failure(_:);
  if (a3)
  {
    v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.success(_:);
  }

  (*(*(v8 - 8) + 104))(v7, *v9, v8);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result();
  sub_100009BFC(v7, 0, 1, v8);
  return GenerativeFunctionsInstrumentationMetadata.AssetTransition.result.setter();
}

void sub_100040B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1000055B0();
  v23 = v22;
  v98 = v24;
  v96 = v25;
  v97 = v26;
  v28 = v27;
  v30 = v29;
  v95 = v31;
  v33 = v32;
  v34 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  sub_100004B1C();
  __chkstk_darwin(v39);
  sub_100004BF4();
  sub_100003058(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_assetTransitionPostString);
  v100 = v41;
  v101 = v40;
  v99 = *(v42 + 16);
  v43 = *(v23 + 16);
  (*(v36 + 16))(v21, v33);
  sub_100041104();
  v103 = v30;

  v104 = v28;

  v44 = sub_100013554();
  v47 = sub_100009C8C(v44, v45, v46);
  sub_100016484(v47);
  swift_errorRetain();
  v48 = OSSignposter.logHandle.getter();
  v49 = type metadata accessor for OSSignpostID();
  v50 = sub_100002BDC(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  __chkstk_darwin(v50);
  sub_100002B8C();
  v57 = v56 - v55;
  OSSignpostIntervalState.signpostID.getter();
  v94 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v52 + 8))(v57, v49);
    (*(v36 + 8))(v21, v101);
LABEL_28:
    sub_100002EEC();
    return;
  }

  v91 = v21;
  v92 = v48;
  v58 = v101;
  v93 = v52;
  if ((v99 & 1) == 0)
  {

    v59 = v57;
    v60 = v100;
    if (v100)
    {
      v61 = v36;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (v100 >> 32)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_100011408();
  if (!v62)
  {
    sub_100005704();
    if (!(!v62 & v63))
    {
      v59 = v57;
      v61 = v36;

      v60 = &v105;
LABEL_10:
      v64 = type metadata accessor for OSSignpostError();
      v65 = sub_100002BDC(v64);
      v67 = v66;
      v69 = *(v68 + 64);
      __chkstk_darwin(v65);
      sub_1000086BC();

      checkForErrorAndConsumeState(state:)();

      v70 = *(v67 + 88);
      v71 = sub_100001F70();
      v72(v71);
      if (&enum case for OSSignpostError.doubleEnd(_:) && (sub_100003468(&enum case for OSSignpostError.doubleEnd(_:)), v62))
      {
        v73 = 0;
        v74 = 0;
        v102 = "[Error] Interval already ended";
      }

      else
      {
        v75 = *(v67 + 8);
        v76 = sub_100001F70();
        v77(v76);
        v102 = "assetTransitionIdentifier: %{public, signpost.description=attribute,public}s,\nassetIdentifier: %{public, signpost.description=attribute,public}s,\nassetVersion: %{public, signpost.description=attribute,public}s,\nmemoryCostKB: %{public, signpost.description=attribute,public}llu,\nresult: %{public, signpost.description=attribute,public}s,\nhasError: %{public, signpost.description=attribute,public}s";
        v74 = 2;
        v73 = 6;
      }

      v78 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v78 = v74;
      *(v78 + 1) = v73;
      *(v78 + 2) = 2082;
      sub_10002E9D0();
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      (*(v61 + 8))(v91, v58);
      v82 = sub_100004A3C(v79, v81, &v105);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2082;
      *(v78 + 14) = sub_100004A3C(v95, v103, &v105);
      *(v78 + 22) = 2082;
      if (v104)
      {
        v83 = v96;
      }

      else
      {
        v83 = 3157552;
      }

      if (v104)
      {
        v84 = v104;
      }

      else
      {
        v84 = 0xE300000000000000;
      }

      v85 = sub_100004A3C(v83, v84, &v105);

      *(v78 + 24) = v85;
      *(v78 + 32) = 2050;
      *(v78 + 34) = v97;
      *(v78 + 42) = 2082;
      if (v98)
      {
        v86 = 0x73736563637573;
      }

      else
      {
        v86 = 0x6572756C696166;
      }

      v87 = sub_100004A3C(v86, 0xE700000000000000, &v105);

      *(v78 + 44) = v87;
      *(v78 + 52) = 2082;
      if (a21)
      {
        v88 = 1702195828;
      }

      else
      {
        v88 = 0x65736C6166;
      }

      v89 = sub_10000CF80(v88);

      *(v78 + 54) = v89;
      v90 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v92, v94, v90, v60, v102, v78, 0x3Eu);
      sub_100012500();
      swift_arrayDestroy();
      sub_100003A4C();
      sub_100012A9C();

      (*(v93 + 8))(v59, v49);
      goto LABEL_28;
    }

    goto LABEL_31;
  }

LABEL_32:
  __break(1u);
}

unint64_t sub_100041104()
{
  result = qword_1001BB9A8;
  if (!qword_1001BB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB9A8);
  }

  return result;
}

uint64_t sub_100041158(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  return sub_100004B70(sub_100041178, a1);
}

uint64_t sub_100041178()
{
  sub_100001ED0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_100002D24();
  swift_beginAccess();
  sub_10000D154();
  sub_10004121C(v3, v4, v5);
  swift_endAccess();
  sub_100001F00();

  return v6();
}

uint64_t sub_10004121C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  State = type metadata accessor for LoadState();
  v7 = *(State - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(State);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, State);
  sub_100011B5C(&qword_1001BA468, &type metadata accessor for LoadState);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v7 + 8);
  v12(v10, State);
  if ((v11 & 1) == 0)
  {
    v42 = a3;
    v44 = a1;
    v13 = enum case for LoadState.unloaded(_:);
    v14 = *(v7 + 104);
    v14(v10, enum case for LoadState.unloaded(_:), State);
    v43 = a2;
    v15 = sub_100116D68(a2, v10);
    v12(v10, State);
    if (v15)
    {
      v16 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
      a1 = v44;
      v17 = (v44 + *(v16 + 60));
      v18 = v17[3];
      v19 = v17[4];
      sub_100003370(v17, v18);
      (*(v19 + 32))(v18, v19);
LABEL_10:
      a2 = v43;
      goto LABEL_11;
    }

    v14(v10, v13, State);
    a1 = v44;
    v20 = sub_100116D68(v44, v10);
    v12(v10, State);
    if ((v20 & 1) == 0)
    {
      goto LABEL_10;
    }

    v21 = (a1 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 60));
    v22 = v21[3];
    v23 = v21[4];
    sub_100003370(v21, v22);
    v24 = v45;
    (*(v23 + 24))(v22, v23);
    if (v24)
    {
      if (qword_1001B8938 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000641C(v25, qword_1001BB478);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = v45;
        *v28 = 136315138;
        v41 = v26;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v27;
        v32 = sub_100004A3C(v29, v30, &v46);

        *(v28 + 4) = v32;
        v33 = v31;
        v34 = v41;
        _os_log_impl(&_mh_execute_header, v41, v33, "finishPendingTransitionTask failed to lock asset: %s", v28, 0xCu);
        sub_100003324(v45);
      }

      else
      {
      }
    }

    a2 = v43;
  }

LABEL_11:
  v35 = *(v7 + 24);
  v35(a1, a2, State);
  v36 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v35(a1 + *(v36 + 20), a2, State);
  v37 = *(v36 + 28);
  v38 = *(a1 + v37);

  *(a1 + v37) = 0;
  return result;
}

uint64_t sub_1000416B0()
{
  sub_100001EF4();
  v2 = v1[43];
  v3 = v1[39];
  v4 = v1[38];
  v5 = v1[26];
  v6 = v1[23];
  v7 = v1[8];
  v8 = *v0;
  sub_100002B9C();
  *v9 = v8;

  v10 = sub_100001F70();
  v4(v10);
  v11 = sub_100003DE0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100041814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = v14[37];
  v17 = v14[28];
  v16 = v14[29];
  v19 = v14[26];
  v18 = v14[27];
  v20 = v14[25];
  v21 = v14[22];
  v23 = v14[18];
  v22 = v14[19];
  v24 = v14[17];
  v37 = v14[14];
  v38 = v14[11];

  v25 = *(v17 + 8);
  v26 = sub_100001F70();
  v27(v26);

  sub_100001F00();
  sub_100003540();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, a12, a13, a14);
}

uint64_t sub_1000418F8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 480);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[61] = v0;

  if (v0)
  {
    v9 = v3[59];
    v10 = v3[33];

    v11 = sub_1000D514C;
    v12 = v10;
  }

  else
  {
    v12 = v3[33];
    v11 = sub_100041A08;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_100041A08()
{
  sub_100001ED0();
  v1 = *(v0 + 472);

  v2 = *(v0 + 472);
  sub_100019B9C();
  sub_100005C78();
  v3 = sub_10000D01C();
  sub_1000192DC(v3, v4);
  sub_1000456B4();
  v5 = sub_100007660();
  sub_10003DA78(v5, v6);
  swift_endAccess();
  sub_100053B98();
  v7 = sub_1000189DC();
  v8(v7);

  sub_10000CB84();

  sub_100002F54();

  return v9();
}

uint64_t sub_100041AD0()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  v6 = *(v2 + 320);
  v7 = *(v2 + 264);
  if (v0)
  {
  }

  sub_10002C278(v6, &qword_1001BB3F8, &qword_100171D50);

  return _swift_task_switch(sub_100041C40, v7, 0);
}

uint64_t sub_100041C44()
{
  v215 = v0;
  v2 = *(v0 + 488);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  (*(v5 + 16))(*(v0 + 312), *(v0 + 440) + *(v0 + 448), v4);
  (*(v5 + 104))(v3, v2, v4);
  sub_10002C7C4(&dword_1001BA628, &type metadata accessor for LoadState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v6 = *(v0 + 192);
  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = *(v0 + 288);
  v10 = (*(v0 + 296) + 8);
  if (*(v0 + 184) == *(v0 + 200) && v6 == *(v0 + 208))
  {
    v18 = *v10;
    (*v10)(*(v0 + 304), *(v0 + 288));
    v19 = sub_100003754();
    v18(v19);
  }

  else
  {
    v12 = *(v0 + 192);
    v13 = *(v0 + 208);
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15 = *v10;
    (*v10)(v8, v9);
    v16 = sub_100003754();
    v15(v16);

    if ((v14 & 1) == 0)
    {
      v17 = *(v0 + 440);
      goto LABEL_9;
    }
  }

  v6 = (v0 + 248);
  sub_10001A264(v214, *(v0 + 440));
LABEL_9:

  v20 = *(v0 + 432);
  if (v20)
  {
    v21 = v20 - 1;
    *(v0 + 432) = v20 - 1;
    if (!__OFSUB__(v20, 1))
    {
      v22 = *(v0 + 424);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_16;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v21 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v22 + 8 * v21 + 32);

LABEL_16:
        sub_10000CF98();
        swift_retain_n();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        loga = v24;
        if (os_log_type_enabled(v24, v25))
        {
          v26 = *(v0 + 344);
          v27 = *(v0 + 352);
          v200 = *(v0 + 336);
          v206 = *(v0 + 272);
          v209 = *(v0 + 264);
          v28 = swift_slowAlloc();
          v211 = sub_1000031E0();
          v214[0] = v211;
          *v28 = 136315650;

          *(v0 + 216) = InferenceProviderAssetDescriptor.description.getter();
          *(v0 + 224) = v29;

          v30._countAndFlagsBits = 8250;
          v30._object = 0xE200000000000000;
          String.append(_:)(v30);

          v203 = v25;
          v31 = *(v0 + 216);
          v32 = *(v0 + 224);
          v34 = *(v23 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
          v33 = *(v23 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
          sub_100003370((v23 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v34);
          v35 = sub_100012588();
          v36(v35);
          InferenceProviderDescriptor.description.getter();
          v37 = sub_10000CE94();
          v38(v37, v200);
          *(v0 + 232) = v31;
          *(v0 + 240) = v32;

          v39._countAndFlagsBits = v33;
          v39._object = v34;
          String.append(_:)(v39);

          v40 = sub_100004A3C(*(v0 + 232), *(v0 + 240), v214);

          *(v28 + 4) = v40;
          *(v28 + 12) = 1024;
          v41 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v23;
          sub_100004BA0();
          LODWORD(v41) = v41[*(v206 + 56)];

          *(v28 + 14) = v41;

          sub_10002ABB4();
          *(v28 + 20) = v41;

          _os_log_impl(&_mh_execute_header, loga, v203, "Transitioning asset %s with update available %{BOOL}d and dynamic mode %{BOOL}d", v28, 0x18u);
          sub_100003324(v211);
          sub_100002F64();
          sub_100002BB8();
        }

        else
        {
          v42 = *(v0 + 264);
        }

        v43 = *(v0 + 272);
        v44 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        *(v0 + 448) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v45 = &v44[v23];
        sub_100004BA0();
        if (v45[*(v43 + 56)] == 1)
        {
          v46 = *(v0 + 328);
          type metadata accessor for AuditToken();
          sub_100003978();
          sub_100009BFC(v47, v48, v49, v50);
          v51 = swift_task_alloc();
          *(v0 + 456) = v51;
          *v51 = v0;
          sub_100007B00(v51);
        }

        else
        {
          if (*(v23 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
          {
            v52 = swift_task_alloc();
            *(v0 + 464) = v52;
            *v52 = v0;
            v52[1] = sub_100053C74;
            sub_100003C58();
            sub_100007968();

            return sub_1000486EC();
          }

          v55 = *(v0 + 320);
          type metadata accessor for AuditToken();
          sub_100003978();
          sub_100009BFC(v56, v57, v58, v59);
          v60 = swift_task_alloc();
          *(v0 + 472) = v60;
          *v60 = v0;
          sub_100007EB0(v60);
          v61 = *(v0 + 320);
        }

        sub_100003C58();
        sub_100007968();

        return sub_10002BA5C();
      }

      __break(1u);
LABEL_47:
      v116 = v9;
      v117 = *(v0 + 360);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.fault.getter();
      if (sub_100006168(v119))
      {
        v120 = sub_100007698();
        v121 = sub_1000031E0();
        v214[0] = v121;
        *v120 = 136315138;
        type metadata accessor for InferenceProviderAsset(0);
        sub_100002E08();
        sub_10002C7C4(v122, v123);

        v124 = Set.description.getter();
        v126 = v125;

        v127 = sub_100004A3C(v124, v126, v214);

        *(v120 + 4) = v127;
        sub_100007CF4(&_mh_execute_header, v128, v129, "All remaining assets that need transitioning have failed to unload or move to dynamic, %s");
        sub_100003324(v121);
        sub_100012A9C();
        sub_100002F64();
      }

      v130 = *(v0 + 392);
      v132 = *(v0 + 368);
      v131 = *(v0 + 376);
      v133 = type metadata accessor for ModelManagerError();
      sub_10000528C();
      sub_10002C7C4(v134, v135);
      sub_100008194();
      sub_100006098(v133);
      (*(v136 + 104))();
      swift_willThrow();

      v1 = *(v131 + 8);
      (v1)(v130, v132);
      goto LABEL_55;
    }

    __break(1u);
  }

  else
  {
    v63 = *(v0 + 360);
    v6 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    v65 = sub_100002F80(v64);
    v7 = *(v0 + 424);
    if (v65)
    {
      *sub_100007648() = 0;

      sub_100010C24(&_mh_execute_header, v66, v67, "Finished transitioning assets");
      sub_100002BB8();
      goto LABEL_33;
    }
  }

LABEL_33:

  v68 = *(v0 + 264);
  v69 = sub_100019684();
  v70 = *(v0 + 264);
  if (v69)
  {
    v71 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];
    v72 = *(v0 + 264);

    v73 = swift_task_alloc();
    *(v0 + 480) = v73;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    *v73 = v0;
    sub_100019AF4();
    v216 = &protocol witness table for Never;
    sub_1000058D8(&type metadata for Never);
    sub_100007968();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v74, v75, v76);
  }

  v77 = sub_100010EB0();
  v78 = v77;
  if (v77 >> 62)
  {
    goto LABEL_62;
  }

  if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_63:
    v172 = *(v0 + 360);

    Logger.logObject.getter();
    v173 = static os_log_type_t.default.getter();
    if (sub_100002F80(v173))
    {
      v174 = sub_100007648();
      sub_10000A240(v174);
      sub_100003DD0();
      _os_log_impl(v175, v176, v177, v178, v179, 2u);
      sub_100002F64();
    }

    sub_100003630();
    v180 = sub_100006348();
    (v1)(v180);
    sub_100003978();
    sub_100009BFC(v181, v182, v183, v7);
LABEL_66:
    v184 = sub_100006588();
    (v1)(v184);
    v185 = *(v0 + 248);

    sub_100001F00();
    goto LABEL_67;
  }

LABEL_39:
  sub_10002CC90(v78);
  sub_100036758();
  sub_100019274();
  v82 = sub_10002D264(v79, v80, v81);
  v9 = v83;
  v192 = v7;

  v7 = *(v9 + 16);
  if (!v7)
  {
    goto LABEL_47;
  }

  v84 = *(v0 + 368);
  v78 = *(v0 + 376);
  v198 = *(v0 + 272);
  v85 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v85);
  v188 = *(v86 + 64) + 15;
  v196 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v87, v88, v89, v84);
  v204 = (v78 + 16);
  v194 = v82;

  v90 = 0;
  v190 = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v207 = (v78 + 8);
  v201 = v9;
  while (1)
  {
    if (v90 >= v7)
    {
      __break(1u);
LABEL_62:
      if (!sub_10001890C())
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    sub_10000A980();
    v91 = *(v9 + 8 * v90 + 32);
    v92 = swift_task_alloc();
    v93 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0();
    sub_10001938C(v93 + v91, v1);
    swift_task_alloc();
    v94 = &v1[*(v198 + 36)];
    v95 = &v1[*(v198 + 32)];
    v78 = sub_10002B0EC();

    v96 = sub_100018A64();
    v104 = sub_100013EE0(v96, v97, v98, v99, v100, v101, v102, v103, v188, v190, v192, v194, v196, v198, v201, v204);
    v78(v104);
    v105 = sub_1000193F0(v1);
    sub_100011990(v105, v106, v107, v108, v109, v110, v111, v112, v189, v191, v193, v195, v197, v199, v202, v205, v207, v208, v210);
    v1 = *v207;
    v113 = sub_10000CDA4();
    (v1)(v113);

    v114 = static Date.> infix(_:_:)();

    if (v114)
    {
      break;
    }

    ++v90;
    (v1)(v92, *(v0 + 368));

    v9 = v201;
    v7 = *(v201 + 16);
    if (v90 == v7)
    {

      v115 = v201;

      goto LABEL_51;
    }
  }

  v137 = *(v0 + 368);
  v138 = *(v0 + 376);

  v115 = v201;

  sub_10002C278(v196, &qword_1001BBA80, &qword_100172440);
  (*(v138 + 32))(v196, v92, v137);
  sub_1000070D0(v196);

LABEL_51:
  v139 = *(v0 + 368);
  v140 = swift_task_alloc();
  sub_10002CC20(v196, v140);
  sub_100007204();
  sub_10002C278(v140, &qword_1001BBA80, &qword_100172440);

  if (v139 != 1)
  {
    sub_1000082B4();
    sub_100003904();
    (v78)();
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = *(v0 + 368);
      v157 = sub_100007698();
      *v157 = 134217984;
      sub_100004BA0();
      swift_task_alloc();
      v158 = sub_10000CDA4();
      sub_10002CC20(v158, v159);
      v160 = sub_10000205C();
      v74 = sub_10000C6C0(v160, v161, v156);
      if (v74 == 1)
      {
        __break(1u);
        return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v74, v75, v76);
      }

      sub_1000456E8();
      v163 = v162;
      v164 = sub_10000F200();
      (v1)(v164);
      v165 = sub_100001F70();
      (v1)(v165);

      *(v157 + 4) = v163;
      sub_1000080F4(&_mh_execute_header, v166, v155, "Additional assets need transitioning, next task wake in %f seconds");
      sub_100002BB8();

      (v1)(log, v156);
    }

    else
    {
      v167 = *(v0 + 392);
      v168 = *(v0 + 368);

      v169 = sub_10000F200();
      (v1)(v169);
      v170 = sub_100001F70();
      (v1)(v170);
    }

    v171 = *(v0 + 256);
    sub_100004BA0();
    sub_10002CC20(v196, v171);
    sub_10002C278(v196, &qword_1001BBA80, &qword_100172440);

    goto LABEL_66;
  }

  v141 = *(v0 + 360);

  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v142, v143))
  {
    v90 = sub_100007698();
    v144 = sub_1000031E0();
    v214[0] = v144;
    *v90 = 136315138;
    v145 = sub_1001196B4(v194, v115);
    v147 = sub_100004A3C(v145, v146, v214);

    *(v90 + 4) = v147;
    sub_1000034C8(&_mh_execute_header, v148, v149, "Remaining transition candidates %s generated task wake times in the past.  Ending asset transition task");
    sub_100003324(v144);
    sub_100002BB8();
    sub_100012A9C();
  }

  v116 = sub_1000076D8();
  sub_10000528C();
  sub_10002C7C4(v150, v151);
  sub_10000A418();
  sub_100006098(v116);
  (*(v152 + 104))();
  swift_willThrow();

  (v1)(v90, v91);
  sub_10002C278(v196, &qword_1001BBA80, &qword_100172440);

LABEL_55:
  sub_100012894();
  v153 = *(v0 + 280);
  (v1)(v116);

  sub_100001F00();
LABEL_67:
  sub_100007968();

  return v186();
}

uint64_t sub_100042BE4(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask);
  *(v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask) = 0;

  if (a1)
  {
    result = sub_10003DC64();
    if (result)
    {

      return sub_100043844();
    }
  }

  return result;
}

void sub_100042C44()
{
  sub_100003884();
  sub_100005CE0();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  sub_100001F00();
  sub_100004CC8();

  __asm { BRAA            X1, X16 }
}

BOOL sub_100042D00()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100042D18()
{

  return sub_10001E72C(v0 + 128, v0 + 184, v1, v2);
}

void sub_100042D44()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}
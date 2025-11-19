uint64_t sub_1000C703C()
{
  v1 = *(*v0 + 44920);
  v2 = *(*v0 + 44912);
  v3 = *(*v0 + 8593);
  v5 = *v0;

  return _swift_task_switch(sub_1000C7188, 0, 0);
}

uint64_t sub_1000C7188()
{
  v54 = v0;
  memcpy(v0 + 5428, v0 + 5489, 0x1E8uLL);
  if (sub_1000A257C((v0 + 5428)) == 1)
  {
    goto LABEL_6;
  }

  memcpy(v0 + 5367, v0 + 5428, 0x1E8uLL);
  if (!v0[5424])
  {
    sub_10000BE18((v0 + 5489), &qword_100839998, &qword_1006DCAA0);
LABEL_6:
    v7 = v0[5579];
    v8 = v0[5577];
    (*(v0[5607] + 104))(v0[5608], enum case for DIPError.Code.missingAttributeConfig(_:), v0[5606]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v7[2];

    v10 = v7[3];

    memcpy(v0 + 1075, v7 + 4, 0x2181uLL);
    sub_10000BE18((v0 + 1075), &qword_100839990, &unk_1006C19E0);
    v11 = v7[1078];

    v12 = v7[1079];

    v13 = v7[1080];

    v14 = v7[1083];

    v15 = v0[5579];
    v16 = v15[1085];

    v17 = v15[1086];
    swift_unknownObjectRelease();
    v18 = v15[1091];

    v19 = v15[1092];

    v20 = v15[1093];

    v21 = v15[1094];

    type metadata accessor for LegacySynthesizedWorkflows();
    swift_deallocPartialClassInstance();
    v22 = v0[5613];
    v23 = v0[5610];
    v24 = v0[5609];
    v25 = v0[5608];
    v26 = v0[5605];
    v27 = v0[5602];
    v28 = v0[5601];
    v29 = v0[5600];
    v30 = v0[5597];
    v44 = v0[5596];
    v45 = v0[5593];
    v46 = v0[5592];
    v47 = v0[5589];
    v48 = v0[5588];
    v49 = v0[5585];
    v31 = v0[5582];

    v32 = v0[1];

    return v32();
  }

  v1 = v0[5597];
  sub_10000BBC4(v0[5577] + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_persoWorkflow, v1, &unk_100839970, &qword_1006C19C0);
  v2 = sub_100007224(&qword_1008399A0, &qword_1006D48E0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[5597];
  v6 = v0[5579];
  if (v4 == 1)
  {
    sub_10000BE18((v0 + 5489), &qword_100839998, &qword_1006DCAA0);
    sub_10000BE18(v5, &unk_100839970, &qword_1006C19C0);
    *(v6 + 8648) = _swiftEmptyArrayStorage;
LABEL_14:
    v42 = swift_task_alloc();
    v0[5616] = v42;
    *v42 = v0;
    v42[1] = sub_1000C7764;
    v43 = v0[5579];

    return sub_1000CA7DC();
  }

  v34 = v0[5597];
  JWSSignedJSON.payload.getter();
  v35 = v0[5574];
  (*(v3 + 8))(v5, v2);
  *(v6 + 8648) = v35;
  v36 = *(v35 + 16);
  v50 = v35;

  if (!v36)
  {
LABEL_13:
    sub_10000BE18((v0 + 5489), &qword_100839998, &qword_1006DCAA0);

    goto LABEL_14;
  }

  v37 = 0;
  v38 = (v35 + 64);
  while (v37 < *(v50 + 16))
  {
    v39 = v0[5579];
    ++v37;
    v40 = *v38;
    v41 = *(v38 - 3);
    v51[0] = *(v38 - 4);
    v51[1] = v41;
    v52 = *(v38 - 1);
    v53 = v40;

    sub_1000C8480(v51, v39, (v0 + 5367));

    v38 += 5;
    if (v36 == v37)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C7764(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 44928);
  v6 = *v2;
  *(*v2 + 44936) = v1;

  if (v1)
  {
    v7 = sub_1000C80E4;
  }

  else
  {
    *(v4 + 44944) = a1;
    v7 = sub_1000C7898;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000C7898()
{
  v1 = v0 + 5120;
  v2 = v0[5617];
  v3 = v0[5579];
  v4 = v3[1085];
  v3[1085] = v0[5618];

  v5 = v3[2];
  swift_beginAccess();

  sub_1000E5888(v6, v3 + 1093);
  v87 = v0;
  if (v2)
  {
    v7 = v0[5577];
    swift_endAccess();

    v8 = v0[5579];

    v9 = v0[5613];
    v10 = v0[5610];
    v11 = v0[5609];
    v12 = v0[5608];
    v13 = v0[5605];
    v14 = v0[5602];
    v15 = v0[5601];
    v16 = v0[5600];
    v17 = v0[5597];
    v18 = v0[5596];
    v64 = v1[473];
    v68 = v1[472];
    v72 = v1[469];
    v77 = v1[468];
    v81 = v1[465];
    v19 = v1[462];

    v20 = v87[1];

    return v20();
  }

  else
  {
    v22 = v0[5579];
    swift_endAccess();

    if (*(v22 + 24))
    {
      v23 = v0[5579];
      swift_beginAccess();

      sub_1000E5888(v24, (v23 + 8752));
      swift_endAccess();
    }

    v25 = v0[5596];
    v26 = v0[5595];
    v27 = v0[5594];
    v85 = v0[5591];
    v78 = v0[5593];
    v82 = v0[5590];
    v65 = v0[5592];
    v69 = v0[5589];
    v28 = v0[5587];
    v73 = v0[5586];
    v63 = v0[5579];
    sub_10001F8D4(0, &qword_1008399A8, OS_dispatch_source_ptr);
    v0[5573] = _swiftEmptyArrayStorage;
    sub_1000F09F8(&qword_1008399B0, 255, &type metadata accessor for OS_dispatch_source.TimerFlags);
    sub_100007224(&qword_1008399B8, &qword_1006D48E8);
    sub_1000BA30C(&unk_1008399C0, &qword_1008399B8, &qword_1006D48E8);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
    v29 = static OS_dispatch_queue.main.getter();
    v30 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

    (*(v26 + 8))(v25, v27);
    swift_beginAccess();
    v31 = *(v63 + 8688);
    *(v63 + 8688) = v30;
    swift_unknownObjectRelease();
    static DispatchTime.now()();
    *v69 = 600;
    (*(v28 + 104))(v69, enum case for DispatchTimeInterval.seconds(_:), v73);
    + infix(_:_:)();
    v32 = *(v28 + 8);
    v32(v69, v73);
    v33 = v82;
    v83 = *(v85 + 8);
    v83(v65, v33);
    if (*(v63 + 8688))
    {
      v34 = v0[5589];
      v35 = v0[5588];
      v66 = v0[5593];
      v70 = v0[5586];
      v74 = v0[5579];
      swift_getObjectType();
      v36 = enum case for DispatchTimeInterval.never(_:);
      v37 = type metadata accessor for DispatchTimeInterval();
      v38 = *(*(v37 - 8) + 104);
      v38(v34, v36, v37);
      *v35 = 0;
      v38(v35, enum case for DispatchTimeInterval.nanoseconds(_:), v37);
      swift_unknownObjectRetain();
      OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
      swift_unknownObjectRelease();
      v32(v35, v70);
      v32(v34, v70);
      if (*(v74 + 8688))
      {
        v39 = v0[5585];
        v40 = v0[5584];
        v41 = v0[5582];
        v42 = v0[5581];
        v75 = v0[5580];
        v79 = v0[5583];
        v43 = v0[5579];
        swift_getObjectType();
        v44 = swift_allocObject();
        swift_weakInit();
        v1[434] = sub_1000F7138;
        v1[435] = v44;
        v1[430] = _NSConcreteStackBlock;
        v1[431] = 1107296256;
        v1[432] = sub_100503A7C;
        v1[433] = &unk_100806DF8;
        v45 = _Block_copy(v87 + 5550);
        swift_unknownObjectRetain();

        static DispatchQoS.unspecified.getter();
        sub_1000C8600();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v45);
        swift_unknownObjectRelease();
        (*(v42 + 8))(v41, v75);
        (*(v40 + 8))(v39, v79);
        v46 = v1[435];
      }
    }

    v47 = v1[459];
    swift_beginAccess();
    v48 = v1[473];
    v49 = v1[470];
    v50 = v1[457];
    if (*(v47 + 8688))
    {
      swift_endAccess();
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();

      v83(v48, v49);
    }

    else
    {
      v83(v1[473], v1[470]);
      swift_endAccess();
    }

    v51 = v1[493];
    v52 = v1[490];
    v53 = v1[489];
    v54 = v1[488];
    v55 = v1[485];
    v56 = v1[482];
    v57 = v1[481];
    v58 = v1[480];
    v59 = v1[477];
    v60 = v1[476];
    v67 = v1[473];
    v71 = v1[472];
    v76 = v1[469];
    v80 = v1[468];
    v84 = v1[465];
    v86 = v1[462];

    v61 = v87[1];
    v62 = v1[459];

    return v61(v62);
  }
}

uint64_t sub_1000C80E4()
{
  v1 = v0[5577];

  v21 = v0[5617];
  v2 = v0[5579];

  v3 = v0[5613];
  v4 = v0[5610];
  v5 = v0[5609];
  v6 = v0[5608];
  v7 = v0[5605];
  v8 = v0[5602];
  v9 = v0[5601];
  v10 = v0[5600];
  v11 = v0[5597];
  v15 = v0[5596];
  v16 = v0[5593];
  v17 = v0[5592];
  v18 = v0[5589];
  v19 = v0[5588];
  v20 = v0[5585];
  v12 = v0[5582];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000C8244(void *a1, uint64_t a2)
{
  v2 = a1;
  if (!a2)
  {
LABEL_30:

    return v2;
  }

  v4 = a1[2];

  if (!v4)
  {
    return a2;
  }

  v6 = sub_1006973D4(v5);
  v26 = v2;

  v8 = *(a2 + 16);
  if (!v8)
  {
    v2 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a2 + 32;
  v11 = v6 + 56;
  v2 = _swiftEmptyArrayStorage;
  v27 = a2 + 32;
  do
  {
    v12 = v9;
    while (1)
    {
      if (v12 >= v8)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      v9 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_33;
      }

      if (*(v6 + 16))
      {
        break;
      }

LABEL_7:
      v12 = v9;
      if (v9 == v8)
      {
        goto LABEL_28;
      }
    }

    v13 = (v10 + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v6 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(v6 + 32);
    v19 = v17 & ~v18;
    if (((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_6:

      goto LABEL_7;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(v6 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100172D4C(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v24 = _swiftEmptyArrayStorage[2];
    v23 = _swiftEmptyArrayStorage[3];
    if (v24 >= v23 >> 1)
    {
      result = sub_100172D4C((v23 > 1), v24 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v24 + 1;
    v25 = &_swiftEmptyArrayStorage[2 * v24];
    v25[4] = v15;
    v25[5] = v14;
    v10 = v27;
  }

  while (v9 != v8);
LABEL_28:

  if (!_swiftEmptyArrayStorage[2])
  {

    v2 = v26;
    goto LABEL_30;
  }

  return v2;
}

uint64_t sub_1000C8480(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  if (v8 && v8[2])
  {
    v10 = v8[4];
    v11 = v8[5];
    swift_beginAccess();
  }

  else
  {
    if (!v9 || (v16 = *(a3 + 464)) == 0 || !*(v16 + 16) || (v17 = sub_10003ADCC(v7, v9), (v18 & 1) == 0))
    {
      swift_beginAccess();

      v20 = *(a2 + 8728);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(a2 + 8728);
      *(a2 + 8728) = 0x8000000000000000;
      v14 = 0;
      v15 = 0xE000000000000000;
      goto LABEL_11;
    }

    v19 = (*(v16 + 56) + 16 * v17);
    v10 = *v19;
    v11 = v19[1];
    swift_beginAccess();
  }

  v12 = *(a2 + 8728);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a2 + 8728);
  *(a2 + 8728) = 0x8000000000000000;
  v14 = v10;
  v15 = v11;
LABEL_11:
  sub_10016D3BC(v14, v15, 0, 0xE000000000000000, v6, v5, isUniquelyReferenced_nonNull_native);

  *(a2 + 8728) = v22;
  return swift_endAccess();
}

uint64_t sub_1000C8600()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000F09F8(&unk_1008341E0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_1000BA30C(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000C86F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2303] = v3;
  v4[2302] = a3;
  v4[2301] = a2;
  v4[2300] = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[2304] = v5;
  v6 = *(v5 - 8);
  v4[2305] = v6;
  v7 = *(v6 + 64) + 15;
  v4[2306] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v4[2307] = v8;
  v9 = *(v8 - 8);
  v4[2308] = v9;
  v10 = *(v9 + 64) + 15;
  v4[2309] = swift_task_alloc();
  v11 = type metadata accessor for DispatchTimeInterval();
  v4[2310] = v11;
  v12 = *(v11 - 8);
  v4[2311] = v12;
  v13 = *(v12 + 64) + 15;
  v4[2312] = swift_task_alloc();
  v4[2313] = swift_task_alloc();
  v14 = type metadata accessor for DispatchTime();
  v4[2314] = v14;
  v15 = *(v14 - 8);
  v4[2315] = v15;
  v16 = *(v15 + 64) + 15;
  v4[2316] = swift_task_alloc();
  v4[2317] = swift_task_alloc();
  v17 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v4[2318] = v17;
  v18 = *(v17 - 8);
  v4[2319] = v18;
  v19 = *(v18 + 64) + 15;
  v4[2320] = swift_task_alloc();
  v20 = *(*(sub_100007224(&unk_100839970, &qword_1006C19C0) - 8) + 64) + 15;
  v4[2321] = swift_task_alloc();
  v21 = type metadata accessor for DIPError.Code();
  v4[2322] = v21;
  v22 = *(v21 - 8);
  v4[2323] = v22;
  v23 = *(v22 + 64) + 15;
  v4[2324] = swift_task_alloc();
  v24 = *(*(sub_100007224(&qword_100835540, &qword_1006C19D0) - 8) + 64) + 15;
  v4[2325] = swift_task_alloc();
  v25 = sub_100007224(&unk_100839980, &qword_1006C0A08);
  v4[2326] = v25;
  v26 = *(v25 - 8);
  v4[2327] = v26;
  v27 = *(v26 + 64) + 15;
  v4[2328] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8A78, 0, 0);
}

uint64_t sub_1000C8A78()
{
  v1 = *(v0 + 18616);
  v2 = *(v0 + 18608);
  v3 = *(v0 + 18600);
  v4 = *(v0 + 18424);
  v5 = *(v0 + 18408);
  sub_1000F09E4((v0 + 16));
  memcpy((v4 + 32), (v0 + 16), 0x2181uLL);
  *(v4 + 8680) = 0u;
  *(v4 + 8696) = 0u;
  *(v4 + 8705) = 0u;
  *(v4 + 8728) = sub_10003E3EC(_swiftEmptyArrayStorage);
  *(v4 + 8736) = _swiftEmptyArrayStorage;
  *(v4 + 8744) = sub_10003E400(_swiftEmptyArrayStorage);
  *(v4 + 8752) = sub_10003E400(_swiftEmptyArrayStorage);
  *(v4 + 8720) = 1;
  sub_10000BBC4(v5 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow, v3, &qword_100835540, &qword_1006C19D0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 18600);
    v7 = *(v0 + 18592);
    v8 = *(v0 + 18584);
    v9 = *(v0 + 18576);
    v10 = *(v0 + 18416);
    v11 = *(v0 + 18408);
    v12 = *(v0 + 18400);

    sub_10000BE18(v6, &qword_100835540, &qword_1006C19D0);
    (*(v8 + 104))(v7, enum case for DIPError.Code.serverResponseInconsistent(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    memcpy((v0 + 8600), (v4 + 32), 0x2181uLL);
    sub_10000BE18(v0 + 8600, &qword_100839990, &unk_1006C19E0);
    v13 = *(v0 + 18424);
    v14 = v13[1085];

    v15 = v13[1086];
    swift_unknownObjectRelease();
    v16 = v13[1091];

    v17 = v13[1092];

    v18 = v13[1093];

    v19 = v13[1094];

    type metadata accessor for LegacySynthesizedWorkflows();
    swift_deallocPartialClassInstance();
    v20 = *(v0 + 18624);
    v21 = *(v0 + 18600);
    v22 = *(v0 + 18592);
    v23 = *(v0 + 18568);
    v24 = *(v0 + 18560);
    v25 = *(v0 + 18536);
    v26 = *(v0 + 18528);
    v27 = *(v0 + 18504);
    v28 = *(v0 + 18496);
    v29 = *(v0 + 18472);
    v46 = *(v0 + 18448);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v32 = *(v0 + 18624);
    v33 = *(v0 + 18616);
    v34 = *(v0 + 18608);
    v35 = *(v0 + 18424);
    v36 = *(v0 + 18416);
    v37 = *(v0 + 18408);
    v38 = *(v0 + 18400);
    (*(v33 + 32))(v32, *(v0 + 18600), v34);
    JWSSignedJSON.payload.getter();
    (*(v33 + 8))(v32, v34);
    v39 = *(v0 + 18376);
    *(v35 + 8672) = 0;
    *(v35 + 16) = v39;
    if (*(v37 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_nonces))
    {
      v40 = *(v37 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_nonces);
    }

    else
    {
      v40 = _swiftEmptyArrayStorage;
    }

    *(v35 + 8640) = v40;
    *(v35 + 8696) = 0;
    *(v35 + 8712) = 0;
    *(v35 + 24) = v38[3];
    v41 = v38[1078];
    *(v35 + 8616) = v38[1077];
    *(v35 + 8624) = v41;
    *(v35 + 8632) = v38[1079];
    v42 = v38[1083];
    *(v35 + 8656) = v38[1082];
    *(v35 + 8664) = v42;
    *(v35 + 8704) = v38[1088];
    v43 = *(v39 + 176);

    v44 = sub_1000C8244(v43, v36);
    *(v0 + 18632) = v44;

    if (qword_100832CF8 != -1)
    {
      swift_once();
    }

    v45 = swift_task_alloc();
    *(v0 + 18640) = v45;
    *v45 = v0;
    v45[1] = sub_1000C8FF4;

    return sub_1005B0A4C(v0 + 17672, 0, 0, v44, 1, 0);
  }
}

uint64_t sub_1000C8FF4()
{
  v1 = *(*v0 + 18640);
  v2 = *(*v0 + 18632);
  v4 = *v0;

  return _swift_task_switch(sub_1000C910C, 0, 0);
}

uint64_t sub_1000C910C()
{
  memcpy(v0 + 2148, v0 + 2209, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2148)) != 1)
  {
    if (v0[2205])
    {
      v1 = v0[2206];
      v2 = v0[2321];
      sub_10000BBC4(v0[2301] + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_persoWorkflow, v2, &unk_100839970, &qword_1006C19C0);
      v3 = sub_100007224(&qword_1008399A0, &qword_1006D48E0);
      v4 = *(v3 - 8);
      v5 = (*(v4 + 48))(v2, 1, v3);
      v6 = v0[2321];
      v7 = v0[2303];
      if (v5 == 1)
      {
        v8 = v0[2300];
        sub_10000BE18((v0 + 2209), &qword_100839998, &qword_1006DCAA0);
        sub_10000BE18(v6, &unk_100839970, &qword_1006C19C0);
        *(v7 + 8648) = *(v8 + 8648);

LABEL_48:
        v91 = swift_task_alloc();
        v0[2331] = v91;
        *v91 = v0;
        v91[1] = sub_1000C9A58;
        v92 = v0[2303];

        return sub_1000CA7DC();
      }

      JWSSignedJSON.payload.getter();
      v37 = v0[2299];
      (*(v4 + 8))(v6, v3);
      *(v7 + 8648) = v37;
      v38 = *(v37 + 16);

      if (!v38)
      {
LABEL_47:
        sub_10000BE18((v0 + 2209), &qword_100839998, &qword_1006DCAA0);

        goto LABEL_48;
      }

      v39 = 0;
      v40 = (v37 + 64);
      v95 = v1;
      v96 = v37;
      v94 = v38;
      while (1)
      {
        if (v39 >= *(v37 + 16))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        v44 = *(v40 - 3);
        v100 = *(v40 - 4);
        v46 = *(v40 - 2);
        v45 = *(v40 - 1);
        v47 = *v40;
        if (!v46 || !v46[2])
        {
          if (v47)
          {
            v61 = v1 == 0;
          }

          else
          {
            v61 = 1;
          }

          if (v61 || !*(v1 + 16))
          {
            goto LABEL_13;
          }

          v62 = *(v40 - 2);

          swift_bridgeObjectRetain_n();
          v63 = sub_10003ADCC(v45, v47);
          v98 = v44;
          v65 = v64;

          if (v65)
          {
            v66 = v0[2303];
            v67 = (*(v1 + 56) + 16 * v63);
            v68 = v67[1];
            v93 = *v67;
            swift_beginAccess();
            v69 = v68;

            v70 = *(v66 + 8728);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v72 = *(v66 + 8728);
            *(v66 + 8728) = 0x8000000000000000;
            v74 = sub_10003ADCC(v100, v98);
            v75 = v72[2];
            v76 = (v73 & 1) == 0;
            result = v75 + v76;
            if (__OFADD__(v75, v76))
            {
              goto LABEL_57;
            }

            v77 = v73;
            if (v72[3] >= result)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v1 = v95;
                if ((v73 & 1) == 0)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                result = sub_100170590();
                v1 = v95;
                if ((v77 & 1) == 0)
                {
                  goto LABEL_43;
                }
              }
            }

            else
            {
              sub_100167CE0(result, isUniquelyReferenced_nonNull_native);
              result = sub_10003ADCC(v100, v98);
              if ((v77 & 1) != (v78 & 1))
              {
LABEL_51:

                return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              }

              v74 = result;
              v1 = v95;
              if ((v77 & 1) == 0)
              {
LABEL_43:
                v72[(v74 >> 6) + 8] |= 1 << v74;
                v87 = (v72[6] + 16 * v74);
                *v87 = v100;
                v87[1] = v98;
                v88 = (v72[7] + 32 * v74);
                *v88 = v93;
                v88[1] = v69;
                v88[2] = 0;
                v88[3] = 0xE000000000000000;
                v89 = v72[2];
                v57 = __OFADD__(v89, 1);
                v90 = v89 + 1;
                if (v57)
                {
                  goto LABEL_58;
                }

                v72[2] = v90;
LABEL_45:
                v37 = v96;
                v38 = v94;
                *(v0[2303] + 8728) = v72;
                swift_endAccess();

LABEL_46:

                goto LABEL_13;
              }
            }

            v83 = (v72[7] + 32 * v74);
            v84 = v83[1];
            v85 = v83[3];
            *v83 = v93;
            v83[1] = v69;
            v83[2] = 0;
            v83[3] = 0xE000000000000000;

            goto LABEL_45;
          }

          goto LABEL_46;
        }

        v48 = *v40;
        v49 = v0[2303];
        v50 = v46[5];
        v97 = v46[4];
        swift_beginAccess();

        v51 = *(v49 + 8728);

        v52 = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(v49 + 8728);
        *(v49 + 8728) = 0x8000000000000000;
        result = sub_10003ADCC(v100, v44);
        v55 = v53[2];
        v56 = (v54 & 1) == 0;
        v57 = __OFADD__(v55, v56);
        v58 = v55 + v56;
        if (v57)
        {
          goto LABEL_55;
        }

        v59 = v54;
        if (v53[3] < v58)
        {
          break;
        }

        if (v52)
        {
          goto LABEL_33;
        }

        v86 = result;
        sub_100170590();
        result = v86;
        v37 = v96;
        if ((v59 & 1) == 0)
        {
LABEL_34:
          v53[(result >> 6) + 8] |= 1 << result;
          v79 = (v53[6] + 16 * result);
          *v79 = v100;
          v79[1] = v44;
          v80 = (v53[7] + 32 * result);
          *v80 = v97;
          v80[1] = v50;
          v80[2] = 0;
          v80[3] = 0xE000000000000000;
          v81 = v53[2];
          v57 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (v57)
          {
            goto LABEL_56;
          }

          v53[2] = v82;
          goto LABEL_12;
        }

LABEL_11:
        v41 = (v53[7] + 32 * result);
        v42 = v41[1];
        v43 = v41[3];
        *v41 = v97;
        v41[1] = v50;
        v41[2] = 0;
        v41[3] = 0xE000000000000000;

LABEL_12:
        *(v0[2303] + 8728) = v53;
        swift_endAccess();

        v38 = v94;
        v1 = v95;
LABEL_13:
        ++v39;
        v40 += 5;
        if (v38 == v39)
        {
          goto LABEL_47;
        }
      }

      sub_100167CE0(v58, v52);
      result = sub_10003ADCC(v100, v44);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_51;
      }

LABEL_33:
      v37 = v96;
      if ((v59 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_11;
    }

    sub_10000BE18((v0 + 2209), &qword_100839998, &qword_1006DCAA0);
  }

  v9 = v0[2303];
  v10 = v0[2301];
  v11 = v0[2300];
  (*(v0[2323] + 104))(v0[2324], enum case for DIPError.Code.missingAttributeConfig(_:), v0[2322]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = v9[2];

  v13 = v9[3];

  memcpy(v0 + 1075, v9 + 4, 0x2181uLL);
  sub_10000BE18((v0 + 1075), &qword_100839990, &unk_1006C19E0);
  v14 = v9[1078];

  v15 = v9[1079];

  v16 = v9[1080];

  v17 = v9[1083];

  v18 = v0[2303];
  v19 = v18[1085];

  v20 = v18[1086];
  swift_unknownObjectRelease();
  v21 = v18[1091];

  v22 = v18[1092];

  v23 = v18[1093];

  v24 = v18[1094];

  type metadata accessor for LegacySynthesizedWorkflows();
  swift_deallocPartialClassInstance();
  v25 = v0[2328];
  v26 = v0[2325];
  v27 = v0[2324];
  v28 = v0[2321];
  v29 = v0[2320];
  v30 = v0[2317];
  v31 = v0[2316];
  v32 = v0[2313];
  v33 = v0[2312];
  v34 = v0[2309];
  v99 = v0[2306];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1000C9A58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 18648);
  v6 = *v2;
  *(*v2 + 18656) = v1;

  if (v1)
  {
    v7 = sub_1000CA344;
  }

  else
  {
    *(v4 + 18664) = a1;
    v7 = sub_1000C9B80;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000C9B80()
{
  v1 = v0[2332];
  v2 = v0[2303];
  v3 = v2[1085];
  v2[1085] = v0[2333];

  v4 = v2[2];
  swift_beginAccess();

  sub_1000E5888(v5, v2 + 1093);
  if (v1)
  {
    v6 = v0[2301];
    v7 = v0[2300];
    swift_endAccess();

    v8 = v0[2303];

    v9 = v0[2328];
    v10 = v0[2325];
    v11 = v0[2324];
    v12 = v0[2321];
    v13 = v0[2320];
    v14 = v0[2317];
    v15 = v0[2316];
    v16 = v0[2313];
    v17 = v0[2312];
    v72 = v0[2309];
    v75 = v0[2306];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v63 = v0[2320];
    v64 = v0[2319];
    v20 = v0[2318];
    v76 = v0[2315];
    v70 = v0[2317];
    v73 = v0[2314];
    v21 = v0[2313];
    v22 = v0[2311];
    v65 = v0[2316];
    v67 = v0[2310];
    v23 = v0[2303];
    v24 = v0[2300];
    swift_endAccess();

    swift_beginAccess();
    v25 = *(v24 + 8752);
    swift_beginAccess();
    v26 = *(v23 + 8752);
    *(v23 + 8752) = v25;

    sub_10001F8D4(0, &qword_1008399A8, OS_dispatch_source_ptr);
    v0[2298] = _swiftEmptyArrayStorage;
    sub_1000F09F8(&qword_1008399B0, 255, &type metadata accessor for OS_dispatch_source.TimerFlags);
    sub_100007224(&qword_1008399B8, &qword_1006D48E8);
    sub_1000BA30C(&unk_1008399C0, &qword_1008399B8, &qword_1006D48E8);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
    v27 = static OS_dispatch_queue.main.getter();
    v28 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

    (*(v64 + 8))(v63, v20);
    swift_beginAccess();
    v29 = *(v23 + 8688);
    *(v23 + 8688) = v28;
    swift_unknownObjectRelease();
    static DispatchTime.now()();
    *v21 = 600;
    (*(v22 + 104))(v21, enum case for DispatchTimeInterval.seconds(_:), v67);
    + infix(_:_:)();
    v30 = *(v22 + 8);
    v30(v21, v67);
    v31 = v73;
    v74 = *(v76 + 8);
    v74(v65, v31);
    if (*(v23 + 8688))
    {
      v32 = v0[2313];
      v33 = v0[2312];
      v34 = v0[2310];
      v66 = v0[2317];
      v68 = v0[2303];
      swift_getObjectType();
      v35 = enum case for DispatchTimeInterval.never(_:);
      v36 = type metadata accessor for DispatchTimeInterval();
      v37 = *(*(v36 - 8) + 104);
      v37(v32, v35, v36);
      *v33 = 0;
      v37(v33, enum case for DispatchTimeInterval.nanoseconds(_:), v36);
      swift_unknownObjectRetain();
      OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
      swift_unknownObjectRelease();
      v30(v33, v34);
      v30(v32, v34);
      if (*(v68 + 8688))
      {
        v38 = v0[2309];
        v39 = v0[2308];
        v40 = v0[2306];
        v41 = v0[2305];
        v69 = v0[2304];
        v71 = v0[2307];
        v42 = v0[2303];
        swift_getObjectType();
        v43 = swift_allocObject();
        swift_weakInit();
        v0[2274] = sub_1000F7138;
        v0[2275] = v43;
        v0[2270] = _NSConcreteStackBlock;
        v0[2271] = 1107296256;
        v0[2272] = sub_100503A7C;
        v0[2273] = &unk_100806DD0;
        v44 = _Block_copy(v0 + 2270);
        swift_unknownObjectRetain();

        static DispatchQoS.unspecified.getter();
        sub_1000C8600();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v44);
        swift_unknownObjectRelease();
        (*(v41 + 8))(v40, v69);
        (*(v39 + 8))(v38, v71);
        v45 = v0[2275];
      }
    }

    v46 = v0[2303];
    swift_beginAccess();
    v47 = v0[2317];
    v48 = v0[2314];
    v49 = v0[2301];
    v50 = v0[2300];
    if (*(v46 + 8688))
    {
      swift_endAccess();
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();

      v74(v47, v48);
    }

    else
    {
      v74(v0[2317], v0[2314]);
      swift_endAccess();
    }

    v51 = v0[2328];
    v52 = v0[2325];
    v53 = v0[2324];
    v54 = v0[2321];
    v55 = v0[2320];
    v56 = v0[2317];
    v57 = v0[2316];
    v58 = v0[2313];
    v59 = v0[2312];
    v60 = v0[2309];
    v77 = v0[2306];

    v61 = v0[1];
    v62 = v0[2303];

    return v61(v62);
  }
}

uint64_t sub_1000CA344()
{
  v1 = v0[2301];
  v2 = v0[2300];

  v17 = v0[2332];
  v3 = v0[2303];

  v4 = v0[2328];
  v5 = v0[2325];
  v6 = v0[2324];
  v7 = v0[2321];
  v8 = v0[2320];
  v9 = v0[2317];
  v10 = v0[2316];
  v11 = v0[2313];
  v12 = v0[2312];
  v13 = v0[2309];
  v16 = v0[2306];

  v14 = v0[1];

  return v14();
}

void *sub_1000CA468(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v1[1086])
  {
    swift_getObjectType();
    v28 = v2;
    v29[4] = nullsub_7;
    v29[5] = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 1107296256;
    v29[2] = sub_100503A7C;
    v29[3] = &unk_100806E48;
    v12 = _Block_copy(v29);
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    sub_1000C8600();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v12);
    swift_unknownObjectRelease();
    (*(v3 + 8))(v6, v28);
    (*(v8 + 8))(v11, v7);
    if (v1[1086])
    {
      v13 = v1[1086];
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }
  }

  v14 = v1[2];

  v15 = v1[3];

  memcpy(v29, v1 + 4, 0x2181uLL);
  sub_10000BE18(v29, &qword_100839990, &unk_1006C19E0);
  v16 = v1[1078];

  v17 = v1[1079];

  v18 = v1[1080];

  v19 = v1[1081];

  v20 = v1[1083];

  v21 = v1[1085];

  v22 = v1[1086];
  swift_unknownObjectRelease();
  v23 = v1[1091];

  v24 = v1[1092];

  v25 = v1[1093];

  v26 = v1[1094];

  return v1;
}

uint64_t sub_1000CA784(uint64_t a1)
{
  sub_1000CA468(a1);

  return swift_deallocClassInstance();
}

uint64_t sub_1000CA7DC()
{
  v1[8] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000CA89C, 0, 0);
}

uint64_t sub_1000CA89C()
{
  v1 = v0[8];
  if (*(v1 + 8720) != 1)
  {
    v11 = *(v1 + 24);
    if (v11)
    {
      v4 = *(v11 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
      v3 = *(v11 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_pagination);
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage;
    }

    v0[20] = v3;
    v0[21] = v4;
    v15 = *(v1 + 16);
    v5 = v15[20];
    v6 = v15[21];
    v0[22] = v6;
    v7 = v15[22];
    v0[23] = v7;
    swift_beginAccess();
    v8 = *(v1 + 8728);
    v0[24] = v8;
    v0[25] = *(v1 + 8736);

    v9 = swift_task_alloc();
    v0[26] = v9;
    *v9 = v0;
    v10 = sub_1000CAEC8;
    goto LABEL_11;
  }

  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_pagination);
  v0[12] = v3;
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
    v0[13] = v4;
    v5 = v2[20];
    v6 = v2[21];
    v0[14] = v6;
    v7 = v2[22];
    v0[15] = v7;
    swift_beginAccess();
    v8 = *(v1 + 8728);
    v0[16] = v8;
    v0[17] = *(v1 + 8736);

    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v10 = sub_1000CAC70;
LABEL_11:
    v9[1] = v10;

    return sub_1000E4DA4(v4, v3, v5, v6, v7, v8);
  }

  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000CAC70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000CAE1C, 0, 0);
  }

  else
  {
    v8 = v4[16];
    v7 = v4[17];
    v10 = v4[14];
    v9 = v4[15];
    v12 = v4[12];
    v11 = v4[13];

    v13 = v4[11];

    v14 = *(v6 + 8);

    return v14(a1);
  }
}

uint64_t sub_1000CAE1C()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];

  v7 = v0[19];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000CAEC8(uint64_t a1)
{
  v4 = *v2;
  v3 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;

  v7 = v3[25];
  v8 = v3[24];
  v9 = v3[23];
  v10 = v3[22];
  v11 = v3[21];
  v12 = v3[20];
  if (v1)
  {

    v13 = v4[11];

    v14 = *(v6 + 8);

    return v14();
  }

  else
  {

    v16 = v4[11];

    v17 = *(v6 + 8);

    return v17(a1);
  }
}

uint64_t sub_1000CB118()
{
  v1 = *(v0 + 16);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);

  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = *(v0 + 24);
  if (v3)
  {
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0xEB00000000454C42;
    v5 = 0x414C494156414E55;
  }

  v6._countAndFlagsBits = v5;
  v6._object = v4;
  String.append(_:)(v6);

  return v8;
}

uint64_t sub_1000CB1B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v3 + 16) + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_recipientCertificates);
  if (v12 && *(v12 + 16))
  {

    v13 = sub_10003ADCC(a1, a2);
    if (v14)
    {
      v15 = v13;
      v16 = *(v12 + 56);
      v17 = type metadata accessor for RecipientEncryptionCertificate();
      (*(*(v17 - 8) + 16))(a3, v16 + *(*(v17 - 8) + 72) * v15, v17);
    }
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v20 = 0xD00000000000002DLL;
  v21 = 0x80000001006FEFD0;
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  String.append(_:)(v19);
  (*(v8 + 104))(v11, enum case for DIPError.Code.serverResponseInconsistent(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_1000CB45C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 24);
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_recipientCertificates);
    if (v13)
    {
      if (*(v13 + 16))
      {

        v14 = sub_10003ADCC(a1, a2);
        if (v15)
        {
          v16 = v14;
          v17 = *(v13 + 56);
          v18 = type metadata accessor for RecipientEncryptionCertificate();
          (*(*(v18 - 8) + 16))(a3, v17 + *(*(v18 - 8) + 72) * v16, v18);
        }
      }
    }
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v21 = 0xD00000000000002CLL;
  v22 = 0x80000001006FEF70;
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  String.append(_:)(v20);
  (*(v8 + 104))(v11, enum case for DIPError.Code.serverResponseInconsistent(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_1000CB704()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = *(v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = *(v2 + 16);
    v9 = 152 * v6 + 32;
    v10 = v6;
    while (1)
    {
      if (v10 >= v8)
      {
        __break(1u);
        return result;
      }

      v11 = *(v2 + v9 + 16);
      v37 = *(v2 + v9);
      v38 = v11;
      v12 = *(v2 + v9 + 32);
      v13 = *(v2 + v9 + 48);
      v14 = *(v2 + v9 + 80);
      v41 = *(v2 + v9 + 64);
      v42 = v14;
      v39 = v12;
      v40 = v13;
      v15 = *(v2 + v9 + 96);
      v16 = *(v2 + v9 + 112);
      v17 = *(v2 + v9 + 128);
      v46 = *(v2 + v9 + 144);
      v44 = v16;
      v45 = v17;
      v43 = v15;
      if (BYTE8(v40) != 2 && (BYTE8(v40) & 1) != 0)
      {
        break;
      }

      ++v10;
      v9 += 152;
      if (v3 == v10)
      {
        goto LABEL_14;
      }
    }

    sub_1000F059C(&v37, v36);
    result = swift_isUniquelyReferenced_nonNull_native();
    v47 = v7;
    if ((result & 1) == 0)
    {
      result = sub_100172D6C(0, v7[2] + 1, 1);
      v7 = v47;
    }

    v19 = v7[2];
    v18 = v7[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_100172D6C((v18 > 1), v19 + 1, 1);
      v7 = v47;
    }

    v6 = v10 + 1;
    v7[2] = v19 + 1;
    v20 = &v7[19 * v19];
    v21 = v38;
    *(v20 + 2) = v37;
    *(v20 + 3) = v21;
    v22 = v39;
    v23 = v40;
    v24 = v42;
    *(v20 + 6) = v41;
    *(v20 + 7) = v24;
    *(v20 + 4) = v22;
    *(v20 + 5) = v23;
    v25 = v43;
    v26 = v44;
    v27 = v45;
    v20[22] = v46;
    *(v20 + 9) = v26;
    *(v20 + 10) = v27;
    *(v20 + 8) = v25;
  }

  while (v3 - 1 != v10);
LABEL_14:

  v28 = v7[2];
  if (!v28)
  {

    return _swiftEmptyArrayStorage;
  }

  *&v37 = _swiftEmptyArrayStorage;
  sub_100172D4C(0, v28, 0);
  v29 = v37;
  v30 = v7 + 5;
  do
  {
    v32 = *(v30 - 1);
    v31 = *v30;
    *&v37 = v29;
    v33 = *(v29 + 16);
    v34 = *(v29 + 24);

    if (v33 >= v34 >> 1)
    {
      sub_100172D4C((v34 > 1), v33 + 1, 1);
      v29 = v37;
    }

    *(v29 + 16) = v33 + 1;
    v35 = v29 + 16 * v33;
    *(v35 + 32) = v32;
    *(v35 + 40) = v31;
    v30 += 19;
    --v28;
  }

  while (v28);

  return v29;
}

void *sub_1000CB970()
{
  v1 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for HardwareAttestationType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  if (*(v10 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes))
  {
    v11 = *(v10 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes);
  }

  else
  {
    sub_10000BBC4(v10 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, v4, &qword_1008353E0, &qword_1006C0F18);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10000BE18(v4, &qword_1008353E0, &qword_1006C0F18);
      v11 = _swiftEmptyArrayStorage;
    }

    else
    {
      v13 = *(v6 + 32);
      v12 = v6 + 32;
      v13(v9, v4, v5);
      sub_100007224(&qword_100839BC0, &qword_1006D49B0);
      v14 = *(v12 + 40);
      v15 = (*(v12 + 48) + 32) & ~*(v12 + 48);
      v11 = swift_allocObject();
      *(v11 + 1) = xmmword_1006BF520;
      v13(v11 + v15, v9, v5);
    }
  }

  return v11;
}

void *sub_1000CBB78()
{
  v1 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for HardwareAttestationType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 24);
  if (!v10)
  {
    (*(v6 + 56))(v4, 1, 1, v5);
LABEL_6:
    sub_10000BE18(v4, &qword_1008353E0, &qword_1006C0F18);
    return _swiftEmptyArrayStorage;
  }

  v11 = *(v10 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes);
  if (!v11)
  {
    sub_10000BBC4(v10 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, v4, &qword_1008353E0, &qword_1006C0F18);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      v15 = *(v6 + 32);
      v14 = v6 + 32;
      v15(v9, v4, v5);
      sub_100007224(&qword_100839BC0, &qword_1006D49B0);
      v16 = *(v14 + 40);
      v17 = (*(v14 + 48) + 32) & ~*(v14 + 48);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1006BF520;
      v15((v11 + v17), v9, v5);
      return v11;
    }

    goto LABEL_6;
  }

  v12 = *(v10 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes);

  return v11;
}

void *sub_1000CBD9C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
  v2 = *(v1 + 16);
  if (v2)
  {

    sub_100172D4C(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v6 >= v7 >> 1)
      {
        sub_100172D4C((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v6];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 19;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000CBE90()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() standardUserDefaults];
  v8._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceAccountAssessmentServerData.getter();
  v9 = NSUserDefaults.internalBool(forKey:)(v8);

  if (v9)
  {
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "INTERNAL SETTING switched to FORCE AssessmentServer Data", v12, 2u);
    }

    (*(v3 + 8))(v6, v2);
    LOBYTE(v13) = 1;
  }

  else
  {
    v13 = *(v1 + 24);
    if (v13)
    {
      LOBYTE(v13) = *(v13 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentDeviceData);
    }
  }

  return v13 & 1;
}

uint64_t sub_1000CC038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableACLChecking.getter();
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v11 = *(*(v3 + 16) + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_applicationACL);
    v14[0] = a1;
    v14[1] = a2;
    __chkstk_darwin(v9);
    v13[2] = v14;

    v10 = sub_10035C8E4(sub_1000F713C, v13, v11);
  }

  return v10 & 1;
}

uint64_t sub_1000CC144(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableACLChecking.getter();
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v11 = *(v3 + 24);
    if (v11 && (v12 = *(v11 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_applicationACL)) != 0)
    {
      v15[0] = a1;
      v15[1] = a2;
      __chkstk_darwin(v9);
      v14[2] = v15;

      v10 = sub_10035C8E4(sub_1000307C0, v14, v12);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

uint64_t sub_1000CC260()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.assessBeforeProof.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
LABEL_30:
    LOBYTE(v6) = 1;
    return v6 & 1;
  }

  v5 = *(v1 + 24);
  if (!v5 || (v6 = *(v5 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_assessBeforeProof), v6 == 2))
  {
    v7 = *(*(v1 + 16) + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_verifiedClaimFields);
    if (v7)
    {
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        if ((v7 & 0xC000000000000001) != 0)
        {

          v8 = 0;
          while (1)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v11 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            v12 = *(v10 + 24);
            if (v12)
            {
              if (*(v10 + 16) == 0x746E656D75636F64 && v12 == 0xE800000000000000)
              {

                swift_unknownObjectRelease();
                goto LABEL_33;
              }

              v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
              swift_unknownObjectRelease();
              if (v14)
              {

                LOBYTE(v6) = 0;
                return v6 & 1;
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }

            ++v8;
            if (v11 == i)
            {

              goto LABEL_30;
            }
          }

          __break(1u);
        }

        else
        {
          v7 += 32;
          v8 = *(v8 + 16);
          while (v8)
          {
            v15 = *(*v7 + 24);
            if (v15)
            {
              v16 = *(*v7 + 16) == 0x746E656D75636F64 && v15 == 0xE800000000000000;
              if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
LABEL_33:
                LOBYTE(v6) = 0;
                return v6 & 1;
              }
            }

            --v8;
            v7 += 8;
            LOBYTE(v6) = 1;
            if (!--i)
            {
              return v6 & 1;
            }
          }
        }

        __break(1u);
LABEL_36:
        ;
      }
    }

    goto LABEL_30;
  }

  return v6 & 1;
}

uint64_t sub_1000CC460()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  result = __chkstk_darwin(v4);
  v7 = &v16 - v6;
  if (*(v0 + 8672))
  {
    return sub_1005A0FE8(0x14uLL);
  }

  v8 = *(v0 + 8696);
  v9 = *(v0 + 8640);
  if (v8 >= *(v9 + 16))
  {
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "no more fresh nonces to use", v15, 2u);
    }

    (*(v2 + 8))(v7, v1);
    return 0;
  }

  else if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 + 16 * v8;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);
    *(v0 + 8696) = v8 + 1;

    return v12;
  }

  return result;
}

uint64_t sub_1000CC728(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v36);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = (&v33 - v14);
  v40 = type metadata accessor for DispatchTime();
  v42 = *(v40 - 8);
  v16 = *(v42 + 64);
  v17 = __chkstk_darwin(v40);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v41 = &v33 - v20;
  v21 = v1[1080];
  v1[1080] = a1;

  v1[1087] = 0;
  swift_beginAccess();
  if (v1[1086])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.suspend()();
    swift_unknownObjectRelease();
  }

  static DispatchTime.now()();
  *v15 = 600;
  v22 = v9[13];
  v22(v15, enum case for DispatchTimeInterval.seconds(_:), v8);
  + infix(_:_:)();
  v23 = v9[1];
  v23(v15, v8);
  v24 = *(v42 + 8);
  v42 += 8;
  v39 = v24;
  v24(v19, v40);
  if (v1[1086])
  {
    v25 = v1[1086];
    swift_getObjectType();
    v22(v15, enum case for DispatchTimeInterval.never(_:), v8);
    *v13 = 0;
    v22(v13, enum case for DispatchTimeInterval.nanoseconds(_:), v8);
    swift_unknownObjectRetain();
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    swift_unknownObjectRelease();
    v23(v13, v8);
    v23(v15, v8);
    if (v1[1086])
    {
      v26 = v1[1086];
      swift_getObjectType();
      v27 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1000F25F0;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100503A7C;
      aBlock[3] = &unk_100806E20;
      v28 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v29 = v33;
      static DispatchQoS.unspecified.getter();
      v30 = v35;
      sub_1000C8600();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v28);
      swift_unknownObjectRelease();
      (*(v37 + 8))(v30, v38);
      (*(v34 + 8))(v29, v36);

      if (v1[1086])
      {
        v31 = v1[1086];
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.resume()();
        swift_unknownObjectRelease();
      }
    }
  }

  return v39(v41, v40);
}

uint64_t sub_1000CCCA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 8640);
    *(result + 8640) = _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1000CCD08(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8632);
  if (v2 && (v3 = *(v1 + 8704), v3 < *(v2 + 16)))
  {
    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = v2 + 16 * v3;
      v11 = *(v4 + 32);
      v12 = *(v4 + 40);

      v6 = String.init<A>(_:)();
      *(a1 + 24) = &type metadata for String;
      *(a1 + 32) = &off_1007FDA60;
      *a1 = v6;
      *(a1 + 8) = v7;
      v8 = *(v1 + 8704);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (!v9)
      {
        *(v1 + 8704) = v10;
        return;
      }
    }

    __break(1u);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

id sub_1000CCDC0()
{
  v1 = *(v0 + 8712);
  v2 = sub_1000C6148();
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 >= v3)
  {
    return 0;
  }

  v5 = *(v0 + 8712);
  v6 = *(v0 + 8680);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = *(v0 + 8680);

    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    result = v9;
    v10 = *(v0 + 8712);
    v7 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v6 + 8 * v5 + 32);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
LABEL_8:
      *(v0 + 8712) = v7;
      return result;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1000CCEAC(char a1)
{
  result = 0x7265566C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x616353746E6F7266;
      break;
    case 2:
      result = 0x6E6163536B636162;
      break;
    case 3:
    case 4:
    case 15:
    case 17:
      result = 0x746E656D75636F64;
      break;
    case 5:
      result = 0x6569666C6573;
      break;
    case 6:
      result = 0x7373656E6576696CLL;
      break;
    case 7:
      result = 0x65766973736170;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x7461726F6C707865;
      break;
    case 10:
      result = 0x6953726566667562;
      break;
    case 11:
      result = 0x6957656C62617473;
      break;
    case 12:
      result = 0x72466E6163536469;
      break;
    case 13:
      result = 0x6172466F65646976;
      break;
    case 14:
      result = 0x547463655278616DLL;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000CD104(uint64_t a1)
{
  v3 = v1;
  v4 = __chkstk_darwin(a1);
  v5 = sub_100007224(&qword_100839960, &qword_1006D48C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31[-v8 - 8];
  v10 = v4[4];
  sub_10000BA08(v4, v4[3]);
  sub_1000F08B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v46[0] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v55 = v6;
  memcpy(v54, v3 + 2, 0x41BuLL);
  memcpy(v46, v3 + 2, sizeof(v46));
  v45[1055] = 1;
  sub_10000BBC4(v54, v45, &qword_100839950, &qword_1006D48C0);
  sub_1000F0990();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v45, v46, 0x41BuLL);
  sub_10000BE18(v45, &qword_100839950, &qword_1006D48C0);
  memcpy(v53, v3 + 134, 0x41BuLL);
  memcpy(v44, v3 + 134, sizeof(v44));
  v43[1055] = 2;
  sub_10000BBC4(v53, v43, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v43, v44, 0x41BuLL);
  sub_10000BE18(v43, &qword_100839950, &qword_1006D48C0);
  memcpy(v52, v3 + 266, 0x41BuLL);
  memcpy(v42, v3 + 266, sizeof(v42));
  v41[1055] = 3;
  sub_10000BBC4(v52, v41, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v41, v42, 0x41BuLL);
  sub_10000BE18(v41, &qword_100839950, &qword_1006D48C0);
  memcpy(v51, v3 + 398, 0x41BuLL);
  memcpy(v40, v3 + 398, sizeof(v40));
  v39[1055] = 4;
  sub_10000BBC4(v51, v39, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v39, v40, 0x41BuLL);
  sub_10000BE18(v39, &qword_100839950, &qword_1006D48C0);
  memcpy(v50, v3 + 530, 0x41BuLL);
  memcpy(v38, v3 + 530, sizeof(v38));
  v37[1055] = 5;
  sub_10000BBC4(v50, v37, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v37, v38, 0x41BuLL);
  sub_10000BE18(v37, &qword_100839950, &qword_1006D48C0);
  memcpy(v49, v3 + 662, 0x41BuLL);
  memcpy(v36, v3 + 662, sizeof(v36));
  v35[1055] = 6;
  sub_10000BBC4(v49, v35, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v35, v36, 0x41BuLL);
  sub_10000BE18(v35, &qword_100839950, &qword_1006D48C0);
  memcpy(v48, v3 + 794, 0x41BuLL);
  memcpy(v34, v3 + 794, sizeof(v34));
  v33[1055] = 7;
  sub_10000BBC4(v48, v33, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v33, v34, 0x41BuLL);
  sub_10000BE18(v33, &qword_100839950, &qword_1006D48C0);
  v32[0] = v3[926];
  v31[0] = 8;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10009E8DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v14 = *(v3 + 1854);
  v15 = *(v3 + 7420);
  LOBYTE(v32[0]) = 9;
  v31[0] = v15;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = v3[928];
  v17 = *(v3 + 7432);
  LOBYTE(v32[0]) = 10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v18 = v3[930];
  v19 = *(v3 + 7448);
  LOBYTE(v32[0]) = 11;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v20 = v3[932];
  v21 = *(v3 + 7464);
  LOBYTE(v32[0]) = 12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v22 = v3[934];
  v23 = *(v3 + 7480);
  LOBYTE(v32[0]) = 13;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v24 = *(v3 + 1871);
  v25 = *(v3 + 7488);
  LOBYTE(v32[0]) = 14;
  v31[0] = v25;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  memcpy(v47, v3 + 937, 0x41BuLL);
  memcpy(v32, v3 + 937, 0x41BuLL);
  v31[1055] = 15;
  sub_10000BBC4(v47, v31, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v31, v32, 0x41BuLL);
  sub_10000BE18(v31, &qword_100839950, &qword_1006D48C0);
  v26 = v3[1069];
  v27 = *(v3 + 8560);
  HIBYTE(v30) = 16;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v28 = v3[1071];
  v29 = *(v3 + 8576);
  HIBYTE(v30) = 17;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v55 + 8))(v9, v5);
}

uint64_t sub_1000CDBC8(char a1)
{
  result = 0x656E697272756C62;
  switch(a1)
  {
    case 1:
      result = 0x426563616C70616CLL;
      break;
    case 2:
      result = 0x657275736F707865;
      break;
    case 3:
      result = 0x7473694464726163;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 12:
    case 36:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6374695064616568;
      break;
    case 7:
      result = 0x6C6C6F5264616568;
      break;
    case 8:
      result = 0x77615964616568;
      break;
    case 9:
      result = 0x73656361466D756ELL;
      break;
    case 10:
      result = 0x65676E615278756CLL;
      break;
    case 11:
    case 14:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
    case 16:
    case 41:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x666E6F4365636166;
      break;
    case 18:
      result = 0x75516569666C6573;
      break;
    case 19:
    case 21:
      result = 0x746E656D75636F64;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 22:
      v3 = 1952867692;
      goto LABEL_32;
    case 23:
      result = 0x6972447468676972;
      break;
    case 24:
      result = 0x74666972447075;
      break;
    case 25:
      v3 = 1853321060;
LABEL_32:
      result = v3 | 0x6669724400000000;
      break;
    case 26:
      result = 0x6544373134666470;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0x6572616C67;
      break;
    case 29:
      result = 0x61436F7475417369;
      break;
    case 30:
      result = 0x5465727574706163;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0x6556746567726174;
      break;
    case 33:
      result = 0x74614D797A7A7566;
      break;
    case 34:
      result = 0x7373656E6576696CLL;
      break;
    case 35:
      result = 0x456873616C467369;
      break;
    case 37:
      result = 0x686374614D72636FLL;
      break;
    case 38:
      result = 0x5378656C706D6F63;
      break;
    case 39:
      result = 0x6165706552626F64;
      break;
    case 40:
      result = 0x6165706552656F64;
      break;
    case 42:
      result = 0xD000000000000017;
      break;
    case 43:
      result = 0x526E6163537A726DLL;
      break;
    case 44:
      result = 0x636F44664F656761;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000CE150(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839F70, &qword_1006D5FE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F47D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *v24 = *v3;
  *&v24[9] = *(v3 + 9);
  v29 = 0;
  sub_1000F4B9C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    *v24 = *(v3 + 32);
    *&v24[9] = *(v3 + 41);
    v29 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 64);
    *&v24[9] = *(v3 + 73);
    v29 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 96);
    *&v24[9] = *(v3 + 105);
    v29 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 128);
    *&v24[9] = *(v3 + 137);
    v29 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 160);
    *&v24[9] = *(v3 + 169);
    v29 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 192);
    *&v24[9] = *(v3 + 201);
    v29 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 224);
    *&v24[9] = *(v3 + 233);
    v29 = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 256);
    *&v24[9] = *(v3 + 265);
    v29 = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 288);
    *&v24[9] = *(v3 + 297);
    v29 = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 320);
    *&v24[9] = *(v3 + 329);
    v29 = 10;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 352);
    *&v24[9] = *(v3 + 361);
    v29 = 11;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 384);
    *&v24[9] = *(v3 + 393);
    v29 = 12;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 416);
    *&v24[9] = *(v3 + 425);
    v29 = 13;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 448);
    *&v24[9] = *(v3 + 457);
    v29 = 14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 480);
    *&v24[9] = *(v3 + 489);
    v29 = 15;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 512);
    *&v24[9] = *(v3 + 521);
    v29 = 16;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 544);
    *&v24[9] = *(v3 + 553);
    v29 = 17;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 576);
    *&v24[9] = *(v3 + 585);
    v29 = 18;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 608);
    *&v24[9] = *(v3 + 617);
    v29 = 19;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 640);
    *&v24[9] = *(v3 + 649);
    v29 = 20;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 672);
    *&v24[9] = *(v3 + 681);
    v29 = 21;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 704);
    *&v24[9] = *(v3 + 713);
    v29 = 22;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 736);
    *&v24[9] = *(v3 + 745);
    v29 = 23;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 768);
    *&v24[9] = *(v3 + 777);
    v29 = 24;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 800);
    *&v24[9] = *(v3 + 809);
    v29 = 25;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 832);
    v24[16] = *(v3 + 848);
    v29 = 26;
    sub_1000F4BF0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 856);
    v24[16] = *(v3 + 872);
    v29 = 27;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 928);
    v25 = *(v3 + 912);
    v26 = v12;
    v27 = *(v3 + 944);
    v28 = *(v3 + 960);
    v13 = *(v3 + 896);
    *v24 = *(v3 + 880);
    *&v24[16] = v13;
    v29 = 28;
    sub_1000F4C44();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 961);
    v24[0] = 29;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 962);
    v24[0] = 30;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + 963);
    v24[0] = 31;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 964);
    v24[0] = 32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + 965);
    v24[0] = 33;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 966);
    v24[0] = 34;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 967);
    v24[0] = 35;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 968);
    v24[0] = 36;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *v24 = *(v3 + 976);
    v29 = 37;
    sub_100007224(&qword_100839F38, &qword_1006D5FD0);
    sub_1000F4C98();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 984);
    v29 = 38;
    sub_100007224(&qword_100839F50, &qword_1006D5FD8);
    sub_1000F4D70();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 992);
    v24[8] = *(v3 + 1000);
    v29 = 39;
    sub_1000F4E48();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 1008);
    v24[8] = *(v3 + 1016);
    v29 = 40;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 1024);
    v24[8] = *(v3 + 1032);
    v29 = 41;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v24 = *(v3 + 1040);
    v24[8] = *(v3 + 1048);
    v29 = 42;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v3 + 1049);
    v24[0] = 43;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 1050);
    v24[0] = 44;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000CED94(void *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v15[1] = a5;
  v15[2] = a3;
  v8 = sub_100007224(&qword_10083A168, &qword_1006D6D68);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5EDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v18 = 0;
  sub_100007224(&unk_10083A0F0, &unk_1006C96E0);
  sub_1000AF4BC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v5)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v17 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000CEF74(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_100007224(&qword_10083A178, &qword_1006D6D70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5F30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v4)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v16 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000CF128(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083A188, &qword_1006D6D80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5FD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v21[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = v3[4];
  v16 = *(v3 + 40);
  v21[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  v21[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v20 = *(v3 + 64);
  v21[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000CF310(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a4;
  v7 = sub_100007224(&qword_10083A190, &qword_1006D6D88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F6094();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v14 = v16;
    v20 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v14;
    v19 = 2;
    sub_100007224(&qword_10083A140, &qword_1006D6D58);
    sub_1000F6214();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000CF514(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083A2C8, &qword_1006D7988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F6FA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v17[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = *(v3 + 8);
  v17[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000CF6B4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083A180, &qword_1006D6D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5F84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 4);
  v25[15] = 0;
  v25[12] = v12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + 1);
  v14 = *(v3 + 16);
  v25[11] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = *(v3 + 3);
  v16 = *(v3 + 32);
  v25[10] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = *(v3 + 5);
  v18 = *(v3 + 48);
  v25[9] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = *(v3 + 7);
  v20 = *(v3 + 64);
  v25[8] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v21 = *(v3 + 65);
  v25[7] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v23 = *(v3 + 9);
  v24 = *(v3 + 80);
  v25[6] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000CF8F8(void *a1)
{
  v3 = sub_100007224(&qword_10083A1A8, &qword_1006D6D90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F61C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000CFA80(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083A0D0, &qword_1006D6D18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5E34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v24 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v23 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v22 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[6];
    v20[15] = 3;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v3[7];
    v20[14] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[8];
    v20[13] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000CFCD4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839EE0, &qword_1006D5FB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F4424();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v14 = *(v3 + 4);
    v28 = *(v3 + 3);
    v29 = v14;
    v15 = *(v3 + 2);
    v27[0] = *(v3 + 1);
    v27[1] = v15;
    v23 = v13;
    v24 = v28;
    v25 = *(v3 + 4);
    v30 = v3[10];
    v26 = v3[10];
    v22 = v27[0];
    v21 = 1;
    sub_1000F4674(v27, v19);
    sub_1000F46AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19[2] = v24;
    v19[3] = v25;
    v20 = v26;
    v19[1] = v23;
    v19[0] = v22;
    sub_1000F44CC(v19);
    v18 = v3[11];
    v17[7] = 2;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000CFF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E5A54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000CFFAC(uint64_t a1)
{
  v2 = sub_1000F08B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CFFE8(uint64_t a1)
{
  v2 = sub_1000F08B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000D0024(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  result = sub_1000E6014(v2);
  if (!v1)
  {
    return memcpy(v4, __src, 0x2181uLL);
  }

  return result;
}

uint64_t sub_1000D00AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E7230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D00E0(uint64_t a1)
{
  v2 = sub_1000F47D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D011C(uint64_t a1)
{
  v2 = sub_1000F47D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000D0158@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000E8048(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x41BuLL);
  }

  return result;
}

uint64_t sub_1000D01BC()
{
  v1 = 0x636974796C616E61;
  if (*v0 != 1)
  {
    v1 = 0x797469726F697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_1000D0218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EAF3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D0240(uint64_t a1)
{
  v2 = sub_1000F5EDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D027C(uint64_t a1)
{
  v2 = sub_1000F5EDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D02B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000EB058(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1000D0320()
{
  v1 = 0x636974796C616E61;
  if (*v0 != 1)
  {
    v1 = 0x797469726F697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1000D037C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EB290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D03A4(uint64_t a1)
{
  v2 = sub_1000F5F30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D03E0(uint64_t a1)
{
  v2 = sub_1000F5F30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D041C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000EB3AC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 1) = BYTE1(result) & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1000D045C(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000CEF74(a1, v2 | *v1, *(v1 + 1), v1[16]);
}

uint64_t sub_1000D049C()
{
  v1 = *v0;
  v2 = 0x64726F7779656BLL;
  v3 = 0x797469726F697270;
  v4 = 0x696669746E656469;
  if (v1 != 3)
  {
    v4 = 0x636974796C616E61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x636E6172656C6F74;
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

uint64_t sub_1000D0548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EB590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D0570(uint64_t a1)
{
  v2 = sub_1000F5FD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D05AC(uint64_t a1)
{
  v2 = sub_1000F5FD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000D05E8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000EB754(a1, v6);
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

uint64_t sub_1000D0654()
{
  v1 = 0x797469726F697270;
  if (*v0 != 1)
  {
    v1 = 0x736C616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1000D06B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EBA98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D06DC(uint64_t a1)
{
  v2 = sub_1000F6094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0718(uint64_t a1)
{
  v2 = sub_1000F6094();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D0754@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000EBBB8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000D07A4()
{
  v1 = 0x74617261706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6C6F687365726874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000D0800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EBDF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D0828(uint64_t a1)
{
  v2 = sub_1000F6FA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0864(uint64_t a1)
{
  v2 = sub_1000F6FA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D08A0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000EBF18(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000D0900()
{
  v1 = *v0;
  v2 = 0x6E6F6C69737065;
  v3 = 0x636974796C616E61;
  if (v1 != 5)
  {
    v3 = 0x797469726F697270;
  }

  v4 = 0x5372657473756C63;
  if (v1 != 3)
  {
    v4 = 0x6C6163736E776F64;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E696F506E696DLL;
  if (v1 != 1)
  {
    v5 = 0x6E65746E496E696DLL;
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

uint64_t sub_1000D0A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EC16C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D0A28(uint64_t a1)
{
  v2 = sub_1000F5F84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0A64(uint64_t a1)
{
  v2 = sub_1000F5F84();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D0AA0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000EC3D4(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000D0B14()
{
  if (*v0)
  {
    result = 0x636974796C616E61;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_1000D0B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D0C30(uint64_t a1)
{
  v2 = sub_1000F61C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0C6C(uint64_t a1)
{
  v2 = sub_1000F61C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D0CA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000EC6C4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1000D0CDC(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  return sub_1000CF8F8(a1);
}

unint64_t sub_1000D0CFC()
{
  v1 = *v0;
  v2 = 0x6F697461526975;
  v3 = 0x676E69646F636E65;
  v4 = 0xD000000000000014;
  if (v1 == 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1000D0DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EC86C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D0DEC(uint64_t a1)
{
  v2 = sub_1000F5E34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0E28(uint64_t a1)
{
  v2 = sub_1000F5E34();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000D0E64@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000ECA70(a1, v6);
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

uint64_t sub_1000D0ED0()
{
  v1 = 0x726F466567616D69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000D0F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000ECE74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D0F58(uint64_t a1)
{
  v2 = sub_1000F4424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0F94(uint64_t a1)
{
  v2 = sub_1000F4424();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D0FD0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000ECF98(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1000D1034(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x676E6972616873;
  }

  else
  {
    v4 = 0x676E69666F6F7270;
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
    v6 = 0x676E6972616873;
  }

  else
  {
    v6 = 0x676E69666F6F7270;
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

Swift::Int sub_1000D10DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D1160()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000D11D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000D125C(uint64_t *a1@<X8>)
{
  v2 = 0x676E69666F6F7270;
  if (*v1)
  {
    v2 = 0x676E6972616873;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000D134C()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_1000D1388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FEAD0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D1468(uint64_t a1)
{
  v2 = sub_1000DE094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D14A4(uint64_t a1)
{
  v2 = sub_1000DE094();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D14E0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1000D153C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&unk_100839BB0, &unk_1006D49A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000DE094();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 32);
    v15[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D16BC(uint64_t *a1)
{
  v4 = sub_100007224(&qword_1008397E0, &qword_1006D4830);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000DE094();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for ServerEndPoint();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + 24) = v10;
    v14 = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 32) = v12 & 1;
  }

  sub_10000BB78(a1);
  return v1;
}

unint64_t sub_1000D1904()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
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

uint64_t sub_1000D1998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000ED2B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D19C0(uint64_t a1)
{
  v2 = sub_1000DE0E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D19FC(uint64_t a1)
{
  v2 = sub_1000DE0E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D1A38()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC8coreidvd22UserInputValidationURL_encryptionAlgorithm;
  v4 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC8coreidvd22UserInputValidationURL_encryptionCertificate + 8];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000D1B20()
{
  result = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
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

uint64_t sub_1000D1BD0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&unk_100839BA0, &qword_1006D4998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000DE0E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v19[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v19[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 48);
    v19[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19[12] = 3;
    type metadata accessor for EncryptionParamsAlgorithmIdentifier();
    sub_1000F09F8(&qword_1008378A8, 255, &type metadata accessor for EncryptionParamsAlgorithmIdentifier);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + OBJC_IVAR____TtC8coreidvd22UserInputValidationURL_encryptionCertificate);
    v17 = *(v3 + OBJC_IVAR____TtC8coreidvd22UserInputValidationURL_encryptionCertificate + 8);
    v19[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D1E38(uint64_t *a1)
{
  v3 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_1008397F0, &qword_1006D4838);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v29 = a1;
  sub_10000BA08(a1, v13);
  sub_1000DE0E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v14 = v28;
    type metadata accessor for UserInputValidationURL(0);
    v19 = *(*v14 + 48);
    v20 = *(*v14 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v8;
    v34 = 0;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v28;
    *(v28 + 16) = v16;
    *(v14 + 24) = v17;
    v33 = 1;
    *(v14 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v14 + 40) = v18;
    v32 = 2;
    *(v14 + 48) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v31 = 3;
    sub_1000F09F8(&qword_100839800, 255, &type metadata accessor for EncryptionParamsAlgorithmIdentifier);
    v26 = v6;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 32))(v14 + OBJC_IVAR____TtC8coreidvd22UserInputValidationURL_encryptionAlgorithm, v26, v3);
    v30 = 4;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24 = v23;
    (*(v15 + 8))(v11, v7);
    v25 = (v14 + OBJC_IVAR____TtC8coreidvd22UserInputValidationURL_encryptionCertificate);
    *v25 = v22;
    v25[1] = v24;
  }

  sub_10000BB78(v29);
  return v14;
}

uint64_t sub_1000D2270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_1008398B0, &qword_1006D4890);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F02F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000D2404@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for UserInputValidationURL(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_1000D1E38(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

Swift::Int sub_1000D2490()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D2540()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000D25DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000D2688@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000ED464(*a1);
  *a2 = result;
  return result;
}

void sub_1000D26B8(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE800000000000000;
  v5 = 0x65646F6373736170;
  if (*v1 != 2)
  {
    v5 = 7958113;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x64496F6962;
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

uint64_t sub_1000D27D4()
{
  if (*v0)
  {
    result = 0x6954746567726174;
  }

  else
  {
    result = 0x72656469766F7270;
  }

  *v0;
  return result;
}

uint64_t sub_1000D2814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6954746567726174 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D28F4(uint64_t a1)
{
  v2 = sub_1000F02F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2930(uint64_t a1)
{
  v2 = sub_1000F02F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D296C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000ED4B0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000D29BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7475626972747461;
  v4 = 0xEB00000000644965;
  if (v2 != 1)
  {
    v3 = 25705;
    v4 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74615070756F7267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000068;
  }

  v7 = 0x7475626972747461;
  v8 = 0xEB00000000644965;
  if (*a2 != 1)
  {
    v7 = 25705;
    v8 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74615070756F7267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000068;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000D2AB8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D2B5C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000D2BEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000D2C8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000ED694(*a1);
  *a2 = result;
  return result;
}

void sub_1000D2CBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000068;
  v4 = 0xEB00000000644965;
  v5 = 0x7475626972747461;
  if (v2 != 1)
  {
    v5 = 25705;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74615070756F7267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000D2D1C()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 25705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74615070756F7267;
  }
}

unint64_t sub_1000D2D78@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000ED694(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D2DA0(uint64_t a1)
{
  v2 = sub_1000DE13C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2DDC(uint64_t a1)
{
  v2 = sub_1000DE13C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000D2E18(uint64_t *a1)
{
  v4 = sub_100007224(&qword_100839808, &qword_1006D4840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000DE13C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for VerifiedClaimField();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v1[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v1[3] = v10;
    v18 = 1;
    v1[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v1[5] = v11;
    v17 = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v5 + 8))(v8, v4);
    v1[6] = v13;
    v1[7] = v15;
  }

  sub_10000BB78(a1);
  return v1;
}

uint64_t sub_1000D3044()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_1000D30B0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839B98, &qword_1006D4990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000DE13C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[2];
  v12 = v3[3];
  v18[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[4];
  v14 = v3[5];
  v18[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = v3[6];
  v17 = v3[7];
  v18[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D3250(void *a1)
{
  v3 = sub_100007224(&qword_10083A0D8, &qword_1006D6D20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5E88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1000D33D8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6F697463656C6573;
    v6 = 0x676E69646F636E65;
    v7 = 0xD000000000000014;
    if (a1 != 3)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74756F656D6974;
    v2 = 0x6B6174655278616DLL;
    if (a1 != 9)
    {
      v2 = 0x656C616373;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 != 6)
    {
      v3 = 0x656E696C6576696CLL;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000D3554(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839EF0, &qword_1006D5FB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F44FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v26) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v26 = v3[2];
    v27 = 1;
    sub_100007224(&qword_100839EB8, &qword_1006D5FA0);
    sub_1000F4700();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[3];
    LOBYTE(v26) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + 2);
    v27 = 3;
    sub_1000F477C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = *(v3 + 3);
    v27 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[8];
    v15 = *(v3 + 72);
    LOBYTE(v26) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v3[10];
    v17 = *(v3 + 88);
    LOBYTE(v26) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + 89);
    LOBYTE(v26) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[12];
    v20 = *(v3 + 104);
    LOBYTE(v26) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v3[14];
    v22 = *(v3 + 120);
    LOBYTE(v26) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v3[16];
    v24 = *(v3 + 136);
    LOBYTE(v26) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D3890(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_100007224(&qword_100839F08, &qword_1006D5FC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F4620();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1000D3A24(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000013;
    v7 = 0x736567616D69;
    if (a1 != 10)
    {
      v7 = 0x65646F4E61746164;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x72456E4F65646F63;
    v9 = 0xD000000000000015;
    if (a1 != 7)
    {
      v9 = 0xD00000000000001DLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0xD000000000000015;
    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0x6E65646469487369;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6465726975716572;
    if (a1 != 1)
    {
      v4 = 0xD000000000000015;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000D3BB8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839900, &qword_1006D48B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F0344();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v27) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 16);
    LOBYTE(v27) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    LOBYTE(v27) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + 56);
    LOBYTE(v27) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 57);
    LOBYTE(v27) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v3[8];
    v21 = v3[9];
    LOBYTE(v27) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[10];
    v23 = v3[11];
    LOBYTE(v27) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v3[12];
    v25 = v3[13];
    LOBYTE(v27) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v27 = v3[14];
    v29 = 9;
    sub_100007224(&qword_1008398C8, &qword_1006D48A0);
    sub_1000F0604();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v27 = v3[15];
    v29 = 10;
    sub_100007224(&qword_1008398E0, &qword_1006D48A8);
    sub_1000F06DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v3 + 8);
    v28 = v3[18];
    v29 = 11;
    sub_1000F07B4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D3F08(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839840, &qword_1006D4860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F0030();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v17[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = *(v3 + 32);
  v17[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D40A8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701273968;
    v6 = 0x656C746954627573;
    if (a1 != 2)
    {
      v6 = 0x73646C656966;
    }

    if (a1)
    {
      v5 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6570795465676170;
    v2 = 0x6E6F6974706163;
    if (a1 != 7)
    {
      v2 = 0x7373416567616D69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x736C6562616CLL;
    if (a1 != 4)
    {
      v3 = 0x6C6562616CLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000D41B4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&unk_100839880, &qword_1006D4880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F0084();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v24) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v24) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v3[5];
    HIBYTE(v23) = 3;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = v3[6];
    HIBYTE(v23) = 4;
    sub_100007224(&qword_100839868, &qword_1006D4878);
    sub_1000F0218();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = v3[7];
    v17 = v3[8];
    LOBYTE(v24) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v3[9];
    v19 = v3[10];
    LOBYTE(v24) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = v3[11];
    v21 = v3[12];
    LOBYTE(v24) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v3[13];
    HIBYTE(v23) = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D44F4@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_1000D4588()
{
  if (*v0)
  {
    result = 0x6874646977;
  }

  else
  {
    result = 0x746867696568;
  }

  *v0;
  return result;
}

uint64_t sub_1000D45BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D4690(uint64_t a1)
{
  v2 = sub_1000F5E88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D46CC(uint64_t a1)
{
  v2 = sub_1000F5E88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D4708@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000ED6E0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1000D4734(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1000D3250(a1);
}

uint64_t sub_1000D4758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000ED888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D4780(uint64_t a1)
{
  v2 = sub_1000F44FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D47BC(uint64_t a1)
{
  v2 = sub_1000F44FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000D47F8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000EDC1C(a1, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 121) = *(v9 + 9);
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1000D486C()
{
  if (*v0)
  {
    result = 0x74615070756F7267;
  }

  else
  {
    result = 0x6564756C636E69;
  }

  *v0;
  return result;
}

uint64_t sub_1000D48AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6564756C636E69 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74615070756F7267 && a2 == 0xE900000000000068)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D4990(uint64_t a1)
{
  v2 = sub_1000F4620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D49CC(uint64_t a1)
{
  v2 = sub_1000F4620();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D4A08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000EE1D0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000D4A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EE37C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D4A8C(uint64_t a1)
{
  v2 = sub_1000F0344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D4AC8(uint64_t a1)
{
  v2 = sub_1000F0344();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D4B04@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000EE744(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t sub_1000D4B90()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x656D737365737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74615070756F7267;
  }
}

uint64_t sub_1000D4BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EEE08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D4C24(uint64_t a1)
{
  v2 = sub_1000F0030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D4C60(uint64_t a1)
{
  v2 = sub_1000F0030();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D4C9C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000EEF34(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000D4D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EF180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D4D2C(uint64_t a1)
{
  v2 = sub_1000F0084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D4D68(uint64_t a1)
{
  v2 = sub_1000F0084();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000D4DA4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000EF454(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1000D4E10()
{
  v1 = v0;
  _StringGuts.grow(_:)(87);
  v2._countAndFlagsBits = 0x203A65676170;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  v34 = *v0;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x20656C7469740ALL;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 1));
  v5._countAndFlagsBits = 0x6C7469746275730ALL;
  v5._object = 0xEA00000000002065;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + 3));
  v6._countAndFlagsBits = 0x2073646C6569660ALL;
  v6._object = 0xE800000000000000;
  String.append(_:)(v6);
  v7 = v0[5];
  v8._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x20736C6562616C0ALL;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  if (v0[6])
  {
    v10 = v0[6];
  }

  v11 = Array.description.getter();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x707954656761700ALL;
  v15._object = 0xEA00000000002065;
  String.append(_:)(v15);
  v17 = v1[9];
  v16 = v1[10];
  if (v16)
  {
    v18 = v1[9];
  }

  else
  {
    v18 = 0;
  }

  if (v16)
  {
    v19 = v1[10];
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20._countAndFlagsBits = v18;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x6E6F69747061630ALL;
  v21._object = 0xE900000000000020;
  String.append(_:)(v21);
  v23 = v1[11];
  v22 = v1[12];
  if (v22)
  {
    v24 = v1[11];
  }

  else
  {
    v24 = 0;
  }

  if (v22)
  {
    v25 = v1[12];
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  v26._countAndFlagsBits = v24;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x73416567616D690ALL;
  v27._object = 0xED00002073746573;
  String.append(_:)(v27);
  if (v1[13])
  {
    v28 = v1[13];
  }

  v29 = Array.description.getter();
  v31 = v30;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  return 0;
}

uint64_t sub_1000D50C4(void *a1)
{
  v3 = sub_100007224(&qword_100839828, &qword_1006D4850);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000EFFDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000D529C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = sub_100007224(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v13 = a1[4];
  sub_10000BA08(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v6;
  v15 = v6[1];
  v25 = 0;
  v16 = v22[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v16)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v17 = v6[2];
  v18 = v6[3];
  v24 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = v6[4];
  v21 = v6[5];
  v23 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000D5444(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_100007224(&qword_10083A0A8, &qword_1006D6D00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5DE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2 & 1;
  v16 = 0;
  sub_1000F42F8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000D55F0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839E60, &qword_1006D5F88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F4028();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 4);
    v22 = *(v3 + 3);
    v23 = v17;
    v24 = *(v3 + 5);
    v21 = 3;
    sub_1000F4250();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = *(v3 + 7);
    v22 = *(v3 + 6);
    v23 = v18;
    v24 = *(v3 + 8);
    v21 = 4;
    sub_1000F42A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v22) = *(v3 + 144);
    v21 = 5;
    sub_1000F42F8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v22 = v3[19];
    v21 = 6;
    sub_100007224(&qword_100839E48, &qword_1006D5F80);
    sub_1000F434C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D58D4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839FB8, &qword_1006D5FE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F3FD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(type metadata accessor for EncryptionCertificateInStringFormat(0) + 24);
    v17[13] = 2;
    type metadata accessor for EncryptedMessageEntity();
    sub_1000F09F8(&qword_100839FC0, 255, &type metadata accessor for EncryptedMessageEntity);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D5AF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v22 - v6;
  v8 = sub_100007224(&qword_100839E08, &qword_1006D5F70);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  __chkstk_darwin(v8);
  v11 = v22 - v10;
  v12 = type metadata accessor for EncryptionCertificateInStringFormat(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F3FD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v23 = v12;
  v17 = v25;
  v18 = v26;
  v29 = 0;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v15[1] = v19;
  v22[1] = v19;
  v28 = 1;
  v15[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15[3] = v20;
  type metadata accessor for EncryptedMessageEntity();
  v27 = 2;
  sub_1000F09F8(&qword_100839E18, 255, &type metadata accessor for EncryptedMessageEntity);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v17 + 8))(v11, v18);
  sub_1000B1FC8(v7, v15 + *(v23 + 24), &qword_100834D98, &unk_1006C03B0);
  sub_1000F1F64(v15, v24);
  sub_10000BB78(a1);
  return sub_1000F1FC8(v15);
}

uint64_t sub_1000D5E44(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x4E79616C70736964;
      break;
    case 3:
      result = 0x72656469766F7270;
      break;
    case 4:
      result = 0x617A696E6167726FLL;
      break;
    case 5:
      result = 0x7972747375646E69;
      break;
    case 6:
      result = 1701869940;
      break;
    case 7:
      v3 = 0x68636E75616CLL;
      goto LABEL_20;
    case 8:
      v3 = 0x746567726174;
LABEL_20:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6574726F70707573;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x4C746C7561666564;
      break;
    case 13:
      result = 0x736E6F4372657375;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0x75706E4972657375;
      break;
    case 17:
      result = 0xD00000000000001CLL;
      break;
    case 18:
      result = 0x4155656C62616E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D60D4()
{
  v1 = 0x656C746954627573;
  if (*v0 != 1)
  {
    v1 = 2036625250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1000D6124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EFB5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D614C(uint64_t a1)
{
  v2 = sub_1000F5CE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6188(uint64_t a1)
{
  v2 = sub_1000F5CE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000D624C()
{
  v1 = 0x664F7265626D756ELL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000016;
  }

  v2 = 0xD00000000000001ALL;
  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D62E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EFC70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D6308(uint64_t a1)
{
  v2 = sub_1000EFFDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6344(uint64_t a1)
{
  v2 = sub_1000EFFDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D6380@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000EFDE4(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = result;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000D63B4(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return sub_1000D50C4(a1);
}

uint64_t sub_1000D63D8()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x614E746E65746E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69546E6F74747562;
  }
}

uint64_t sub_1000D6448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F0A90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D6470(uint64_t a1)
{
  v2 = sub_1000F5D38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D64AC(uint64_t a1)
{
  v2 = sub_1000F5D38();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D652C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, _OWORD *a5@<X8>)
{
  sub_1000F0BB8(a1, a2, a3, a4, v9);
  if (!v5)
  {
    v8 = v9[1];
    *a5 = v9[0];
    a5[1] = v8;
    result = *&v10;
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000D65C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4D49536C617564;
  }

  else
  {
    v4 = 0x4953656C676E6973;
  }

  if (v3)
  {
    v5 = 0xE90000000000004DLL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x4D49536C617564;
  }

  else
  {
    v6 = 0x4953656C676E6973;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE90000000000004DLL;
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

Swift::Int sub_1000D6670()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D66F8()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000D676C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000D67FC(uint64_t *a1@<X8>)
{
  v2 = 0x4953656C676E6973;
  if (*v1)
  {
    v2 = 0x4D49536C617564;
  }

  v3 = 0xE90000000000004DLL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000D68F0()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 0x6F697469646E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1000D6930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D6A14(uint64_t a1)
{
  v2 = sub_1000F5DE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6A50(uint64_t a1)
{
  v2 = sub_1000F5DE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D6A8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000F0E0C(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000D6AE0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6F697469646E6F63;
  if (v1 != 5)
  {
    v3 = 7629921;
  }

  v4 = 0x6C6961746564;
  if (v1 != 3)
  {
    v4 = 0x7373656E69737562;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E65746E6F63;
  if (v1 != 1)
  {
    v5 = 0x69546E6F74747562;
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

uint64_t sub_1000D6BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F0FD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D6BE0(uint64_t a1)
{
  v2 = sub_1000F4028();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6C1C(uint64_t a1)
{
  v2 = sub_1000F4028();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D6C58@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000F121C(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_1000D6CCC()
{
  v1 = 0x676E696E676973;
  if (*v0 != 1)
  {
    v1 = 0x6E65697069636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656572674179656BLL;
  }
}

uint64_t sub_1000D6D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F1770(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D6D5C(uint64_t a1)
{
  v2 = sub_1000F3FD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6D98(uint64_t a1)
{
  v2 = sub_1000F3FD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D6E64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000F1894();
  *a2 = result;
  return result;
}

uint64_t sub_1000D6E94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D5E44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D6EDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F1894();
  *a1 = result;
  return result;
}

uint64_t sub_1000D6F10(uint64_t a1)
{
  v2 = sub_1000F2024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6F4C(uint64_t a1)
{
  v2 = sub_1000F2024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D6FB4(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v37 - v7;
  v9 = sub_100007224(&qword_100839AD0, &qword_1006D4958);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v38 = a1;
  sub_10000BA08(a1, v14);
  sub_1000F2024();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v16 = v38;
    type metadata accessor for LegacyWorkflow(0);
    v24 = *(*v3 + 48);
    v25 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    v26 = v16;
  }

  else
  {
    LOBYTE(v39) = 0;
    *(v3 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 24) = v17;
    LOBYTE(v39) = 1;
    *(v3 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 40) = v18;
    LOBYTE(v39) = 2;
    *(v3 + 48) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 56) = v19;
    LOBYTE(v39) = 3;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = 0;
    *(v3 + 64) = v20;
    *(v3 + 72) = v21;
    LOBYTE(v39) = 4;
    *(v3 + 80) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 88) = v22;
    LOBYTE(v39) = 5;
    *(v3 + 96) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 104) = v23;
    v40 = 6;
    sub_1000F2078();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 112) = v39;
    LOBYTE(v39) = 7;
    *(v3 + 120) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v3 + 128) = v28;
    LOBYTE(v39) = 8;
    *(v3 + 136) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 144) = v29;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v40 = 9;
    sub_10007FD2C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 152) = v39;
    LOBYTE(v39) = 10;
    *(v3 + 160) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 168) = v30;
    v40 = 11;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 176) = v39;
    LOBYTE(v39) = 12;
    *(v3 + 184) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 192) = v31;
    v40 = 13;
    sub_1000F20CC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 200) = v39;
    type metadata accessor for HardwareAttestationType();
    LOBYTE(v39) = 14;
    sub_1000F09F8(&qword_100839AF0, 255, &type metadata accessor for HardwareAttestationType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B1FC8(v8, v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, &qword_1008353E0, &qword_1006C0F18);
    sub_100007224(&qword_100839AF8, &qword_1006D4960);
    v40 = 15;
    sub_1000F2120();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes) = v39;
    sub_100007224(&qword_100839B08, &qword_1006D4968);
    v40 = 16;
    sub_1000F21D8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v39;
    if (!v39)
    {
      v32 = _swiftEmptyArrayStorage;
    }

    *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields) = v32;
    LOBYTE(v39) = 17;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = (v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate);
    *v34 = v33;
    v34[1] = v35;
    LOBYTE(v39) = 18;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v10 + 8))(v13, v9);
    *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_enableUAM) = v36;
    v26 = v38;
  }

  sub_10000BB78(v26);
  return v3;
}

void *sub_1000D7BB4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[22];

  v12 = v0[24];

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, &qword_1008353E0, &qword_1006C0F18);
  v13 = *(v0 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes);

  v14 = *(v0 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);

  v15 = *(v0 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate + 8);

  return v0;
}

void sub_1000D7CC0()
{
  sub_1000F2FD4(319, &qword_100835458, &type metadata accessor for HardwareAttestationType);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000D7DD0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839B60, &qword_1006D4988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F2024();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  LOBYTE(v35) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    LOBYTE(v35) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    LOBYTE(v35) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 64);
    v18 = *(v3 + 72);
    LOBYTE(v35) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 80);
    v20 = *(v3 + 88);
    LOBYTE(v35) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 96);
    v22 = *(v3 + 104);
    LOBYTE(v35) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v35) = *(v3 + 112);
    v36 = 6;
    sub_1000F23B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = *(v3 + 120);
    v24 = *(v3 + 128);
    LOBYTE(v35) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + 136);
    v26 = *(v3 + 144);
    LOBYTE(v35) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = *(v3 + 152);
    v36 = 9;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = *(v3 + 160);
    v28 = *(v3 + 168);
    LOBYTE(v35) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = *(v3 + 176);
    v36 = 11;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = *(v3 + 184);
    v30 = *(v3 + 192);
    LOBYTE(v35) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v35) = *(v3 + 200);
    v36 = 13;
    sub_1000F240C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v35) = 14;
    type metadata accessor for HardwareAttestationType();
    sub_1000F09F8(&qword_100836DC8, 255, &type metadata accessor for HardwareAttestationType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v35 = *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes);
    v36 = 15;
    sub_100007224(&qword_100839AF8, &qword_1006D4960);
    sub_1000F2460();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v35 = *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
    v36 = 16;
    sub_100007224(&qword_100839B08, &qword_1006D4968);
    sub_1000F2518();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31 = *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate);
    v32 = *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate + 8);
    LOBYTE(v35) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_enableUAM);
    LOBYTE(v35) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000D8308(char a1)
{
  result = 0x746163696C707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 7107700;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0x6974616E69676170;
      break;
    case 10:
      result = 0x65726564726F6E75;
      break;
    case 11:
      result = 0x74696B64756F6C63;
      break;
    case 12:
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000023;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D85A0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 248))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000D8618(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_1000D86C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D8748(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_1000D87B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D8820@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000F4E9C();
  *a2 = result;
  return result;
}

unint64_t sub_1000D8850@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000D8308(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D8898@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F4E9C();
  *a1 = result;
  return result;
}

uint64_t sub_1000D88C0(uint64_t a1)
{
  v2 = sub_1000F22B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D88FC(uint64_t a1)
{
  v2 = sub_1000F22B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D8964(uint64_t *a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v98 = *(v2 - 1);
  v99 = v2;
  v3 = *(v98 + 64);
  __chkstk_darwin(v2);
  v103 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for EncryptedMessageEntity();
  v95 = *(v97 - 8);
  v5 = *(v95 + 64);
  __chkstk_darwin(v97);
  v96 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecipientEncryptionCertificate();
  v101 = *(v7 - 8);
  v102 = v7;
  v8 = *(v101 + 64);
  __chkstk_darwin(v7);
  v100 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPCertUsage();
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = v93[8];
  v12 = __chkstk_darwin(v10);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v83 - v15;
  v17 = type metadata accessor for DIPOIDVerifier();
  v104 = *(v17 - 8);
  v18 = *(v104 + 64);
  __chkstk_darwin(v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100007224(&qword_100839B20, &qword_1006D4970);
  v105 = *(v21 - 8);
  v22 = *(v105 + 64);
  __chkstk_darwin(v21);
  v24 = &v83 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v107 = a1;
  sub_10000BA08(a1, v26);
  sub_1000F22B0();
  v27 = v106;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v31 = v108;
    sub_10000BB78(v107);
    type metadata accessor for LegacyINOWorkflow(0);
    v32 = *(*v31 + 48);
    v33 = *(*v31 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v90 = v16;
    v91 = v14;
    v92 = v20;
    v106 = v17;
    v28 = v105;
    v29 = sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v110 = 0;
    v30 = sub_10007FD2C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v89 = v30;
    v35 = v108;
    *(v108 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_applicationACL) = v109[0];
    sub_100007224(&qword_100839A58, &qword_1006D4920);
    v110 = 1;
    sub_1000F1C80();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v35 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_acceptedVerifiedClaims) = v109[0];
    sub_100007224(&qword_100839B30, &qword_1006D4978);
    v110 = 2;
    sub_1000F2304();
    v88 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    rawValue = v109[0]._rawValue;
    if (!v109[0]._rawValue)
    {
      rawValue = _swiftEmptyArrayStorage;
    }

    *(v35 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_verifiedClaimFields) = rawValue;
    LOBYTE(v109[0]._rawValue) = 3;
    *(v35 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_claimDataConsistency) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v109[0]._rawValue) = 5;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v38;
    v86 = v37;
    v87 = v29;
    LOBYTE(v109[0]._rawValue) = 6;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v41;
    v85 = v40;
    sub_100007224(&qword_100839A88, &qword_1006D4930);
    v110 = 7;
    sub_1000F1DDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v84 = v39;
    v43 = v109[0]._rawValue;
    sub_100007224(&unk_100839A40, &qword_1006C1B50);
    v110 = 9;
    sub_10009F8C4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v83 = v43;
    *(v35 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_pagination) = v109[0];
    sub_100007224(&qword_100835478, &qword_1006D4980);
    v110 = 10;
    sub_10009F55C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v35 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_unorderedUI) = v109[0];
    LOBYTE(v109[0]._rawValue) = 11;
    v44 = v21;
    v45 = v24;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v108 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_cloudkitRetry;
    *v47 = v46;
    *(v47 + 8) = v48 & 1;
    LOBYTE(v109[0]._rawValue) = 12;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v108 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_connectToWifiReminderInDays;
    *v50 = v49;
    *(v50 + 8) = v51 & 1;
    LOBYTE(v109[0]._rawValue) = 13;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v108 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_provisioningRetryTimeoutInDays;
    *v53 = v52;
    *(v53 + 8) = v54 & 1;
    LOBYTE(v109[0]._rawValue) = 14;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = v108 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_deleteIncompleteCredentialAfterDays;
    *v56 = v55;
    *(v56 + 8) = v57 & 1;
    LOBYTE(v109[0]._rawValue) = 15;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = v108 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_deleteInactiveKeysAfterDays;
    *v59 = v58;
    *(v59 + 8) = v60 & 1;
    LOBYTE(v109[0]._rawValue) = 16;
    v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v108 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_base64EncodeImage) = (v61 == 2) | v61 & 1;
    LOBYTE(v109[0]._rawValue) = 17;
    *(v108 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_isBiomeFedStatsEnabled) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v109[0]._rawValue) = 18;
    *(v108 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_isLivenessConsentOptinEnabled) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v109[0]._rawValue) = 4;
    v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v63)
    {
      v64 = sub_1000FAB98(v62, v63);
    }

    else
    {
      v64 = 0;
      v65 = 1;
    }

    v66 = v108 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_claimTTL;
    *v66 = v64;
    *(v66 + 8) = v65 & 1;
    v109[3]._rawValue = type metadata accessor for DateProvider();
    v109[4]._rawValue = &protocol witness table for DateProvider;
    sub_100032DBC(v109);
    DateProvider.init()();
    DIPOIDVerifier.init(dateProvider:)();
    v110 = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v109[0]._rawValue)
    {
      DIPOIDVerifier.setIntermediates(fromBase64DER:)(v109[0]);
    }

    if (v84 && v42)
    {

      v67 = v93[13];
      v67(v90, enum case for DIPCertUsage.inoEncryption(_:), v94);
      v89 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
      v68 = v94;
      v69 = v93[1];
      v70 = v90;
      ++v93;
      v90 = v69;
      v69(v70, v94);

      v67(v91, enum case for DIPCertUsage.inoSigning(_:), v68);
      v71 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
      v90(v91, v94);

      (*(v95 + 104))(v96, enum case for EncryptedMessageEntity.ino(_:), v97);
      v103 = v89;
      v99 = v71;
      RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
      sub_100007224(&unk_100839AB0, &qword_1006D4938);
      v72 = (sub_100007224(&qword_100834798, &qword_1006D4940) - 8);
      v73 = *(*v72 + 72);
      v74 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1006BF520;
      v76 = (v75 + v74);
      v77 = v72[14];
      *v76 = 0x746C7561666564;
      *(v76 + 1) = 0xE700000000000000;
      v78 = v101;
      v79 = v102;
      (*(v101 + 16))(&v76[v77], v100, v102);
      v80 = sub_10003E654(v75);
      swift_setDeallocating();
      sub_10000BE18(v76, &qword_100834798, &qword_1006D4940);
      swift_deallocClassInstance();

      (*(v78 + 8))(v100, v79);
    }

    else
    {

      if (v83)
      {
        v80 = sub_1000C5F68(&_swiftEmptyDictionarySingleton, v83, v92, sub_1000D9BB0);
      }

      else
      {
        v80 = 0;
      }
    }

    v81 = v107;
    *(v108 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_recipientCertificates) = v80;
    sub_100020260(v81, v109);
    sub_1000D6FB4(v109);
    (*(v28 + 8))(v45, v44);
    v82 = *(v104 + 8);
    v31 = v108;

    v82(v92, v106);
    sub_10000BB78(v107);
  }

  return v31;
}

uint64_t sub_1000D9BB0(uint64_t a1, Swift::String *a2, uint64_t a3)
{
  v130 = a3;
  v138 = a2;
  v116 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v121 = *(v3 - 8);
  v122 = v3;
  v4 = *(v121 + 64);
  __chkstk_darwin(v3);
  v123 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EncryptedMessageEntity();
  v128 = *(v6 - 8);
  v129 = v6;
  v7 = *(v128 + 64);
  __chkstk_darwin(v6);
  v114 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v115 = &v109 - v11;
  v126 = type metadata accessor for DIPOIDVerifier();
  v134 = *(v126 - 8);
  v12 = *(v134 + 64);
  v13 = __chkstk_darwin(v126);
  v117 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v124 = &v109 - v15;
  v16 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v113 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v109 - v21;
  __chkstk_darwin(v20);
  v24 = &v109 - v23;
  v25 = sub_100007224(&unk_100839AC0, &unk_1006D4948);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v112 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v120 = (&v109 - v30);
  v31 = __chkstk_darwin(v29);
  v118 = &v109 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v109 - v34;
  __chkstk_darwin(v33);
  v37 = &v109 - v36;
  v38 = type metadata accessor for DIPCertUsage();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v43 = &v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v109 - v44;
  sub_10000BBC4(v138, v37, &unk_100839AC0, &unk_1006D4948);
  v46 = *(v37 + 1);

  v127 = v25;
  v47 = &v37[*(v25 + 48)];
  v48 = v129;
  v110 = type metadata accessor for EncryptionCertificateInStringFormat(0);
  sub_10000BBC4(&v47[*(v110 + 24)], v24, &qword_100834D98, &unk_1006C03B0);
  v49 = v47;
  v50 = v128;
  sub_1000F1FC8(v49);
  v51 = *(v50 + 48);
  v111 = v50 + 48;
  v119 = v51;
  v52 = v51(v24, 1, v48);
  v131 = v39;
  v132 = v38;
  v135 = v45;
  v133 = v43;
  if (v52 == 1)
  {
    goto LABEL_2;
  }

  sub_10000BBC4(v24, v22, &qword_100834D98, &unk_1006C03B0);
  v54 = (*(v50 + 88))(v22, v48);
  if (v54 == enum case for EncryptedMessageEntity.idvServer(_:))
  {
    v55 = v132;
    v56 = *(v131 + 104);
    v56(v135, enum case for DIPCertUsage.inoEncryption(_:), v132);
    v56(v133, enum case for DIPCertUsage.inoSigning(_:), v55);
    goto LABEL_5;
  }

  v85 = v50;
  v86 = v131;
  v38 = v132;
  v58 = v134;
  v87 = v138;
  if (v54 == enum case for EncryptedMessageEntity.ino(_:))
  {
    goto LABEL_13;
  }

  if (v54 != enum case for EncryptedMessageEntity.athena(_:) && v54 != enum case for EncryptedMessageEntity.assessor(_:))
  {
    if (v54 == enum case for EncryptedMessageEntity.issuer(_:))
    {
      v88 = &enum case for DIPCertUsage.identityEncryptionExternal(_:);
      goto LABEL_14;
    }

    if (v54 != enum case for EncryptedMessageEntity.livenessReview(_:))
    {
      v45 = v135;
      (*(v85 + 8))(v22, v48);
      v39 = v86;
      v43 = v133;
LABEL_2:
      v53 = *(v39 + 104);
      v53(v45, enum case for DIPCertUsage.inoEncryption(_:), v38);
      v53(v43, enum case for DIPCertUsage.inoSigning(_:), v38);
LABEL_5:
      sub_10000BE18(v24, &qword_100834D98, &unk_1006C03B0);
      v57 = v138;
      v58 = v134;
      goto LABEL_6;
    }

LABEL_13:
    v88 = &enum case for DIPCertUsage.inoEncryption(_:);
LABEL_14:
    v89 = *(v131 + 104);
    v89(v135, *v88, v132);
    v89(v133, enum case for DIPCertUsage.inoSigning(_:), v38);
    sub_10000BE18(v24, &qword_100834D98, &unk_1006C03B0);
    v57 = v87;
    goto LABEL_6;
  }

  v107 = v135;
  sub_10000BE18(v24, &qword_100834D98, &unk_1006C03B0);
  v108 = *(v86 + 104);
  v108(v107, enum case for DIPCertUsage.accountAssessmentServerEncryption(_:), v38);
  v108(v133, enum case for DIPCertUsage.accountAssessmentServerSigning(_:), v38);
  v57 = v87;
LABEL_6:
  v59 = *(v58 + 16);
  v60 = v124;
  v61 = v126;
  v59(v124, v130, v126);
  sub_10000BBC4(v57, v35, &unk_100839AC0, &unk_1006D4948);
  v62 = *(v35 + 1);

  v63 = v127;
  v64 = &v35[*(v127 + 48)];
  v65 = v57;
  v67 = *v64;
  v66 = *(v64 + 1);

  sub_1000F1FC8(v64);
  v68 = v125;
  v69 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
  if (v68)
  {
    (*(v58 + 8))(v60, v61);

    v70 = v132;
    v71 = v133;
LABEL_8:
    v136 = 0;
    v137 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v72._countAndFlagsBits = 0xD000000000000034;
    v72._object = 0x80000001006FEF30;
    String.append(_:)(v72);
    String.append(_:)(*v138);
    (*(v121 + 104))(v123, enum case for DIPError.Code.internalError(_:), v122);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v73 = *(v131 + 8);
    v73(v71, v70);
    return (v73)(v135, v70);
  }

  v109 = v69;
  v125 = 0;
  v75 = *(v58 + 8);
  v134 = v58 + 8;
  v75(v60, v61);

  v76 = v118;
  sub_10000BBC4(v65, v118, &unk_100839AC0, &unk_1006D4948);
  v77 = *(v76 + 8);

  v78 = v76 + *(v63 + 48);
  v80 = *(v78 + 16);
  v79 = *(v78 + 24);

  sub_1000F1FC8(v78);
  if (v79)
  {
    v81 = v117;
    v59(v117, v130, v61);
    v71 = v133;
    v82 = v125;
    v83 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    v84 = v119;
    if (v82)
    {
      v75(v81, v61);

      v70 = v132;
      goto LABEL_8;
    }

    v90 = v83;
    v125 = 0;
    v75(v81, v61);

    v91 = v132;
  }

  else
  {
    v90 = 0;
    v91 = v132;
    v84 = v119;
  }

  v92 = v138;
  v93 = v120;
  sub_10000BBC4(v138, v120, &unk_100839AC0, &unk_1006D4948);
  v94 = v93[1];
  v134 = *v93;
  v132 = v94;
  v95 = v112;
  sub_10000BBC4(v92, v112, &unk_100839AC0, &unk_1006D4948);
  v96 = *(v95 + 8);

  v97 = v127;
  v98 = v95 + *(v127 + 48);
  v99 = v113;
  sub_10000BBC4(v98 + *(v110 + 24), v113, &qword_100834D98, &unk_1006C03B0);
  sub_1000F1FC8(v98);
  v100 = v129;
  if (v84(v99, 1, v129) == 1)
  {
    (*(v128 + 104))(v114, enum case for EncryptedMessageEntity.ino(_:), v100);
    if (v84(v99, 1, v100) != 1)
    {
      sub_10000BE18(v99, &qword_100834D98, &unk_1006C03B0);
    }
  }

  else
  {
    (*(v128 + 32))(v114, v99, v100);
  }

  v101 = *(v97 + 48);
  v102 = v90;
  v103 = v109;
  v104 = v115;
  RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
  v105 = type metadata accessor for RecipientEncryptionCertificate();
  (*(*(v105 - 8) + 56))(v104, 0, 1, v105);
  sub_10014C0FC(v104, v134, v132);

  v106 = *(v131 + 8);
  v106(v133, v91);
  v106(v135, v91);
  return sub_1000F1FC8(v120 + v101);
}

uint64_t sub_1000DA8DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_applicationACL);

  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_acceptedVerifiedClaims);

  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_verifiedClaimFields);

  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_recipientCertificates);

  v5 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_pagination);

  v6 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_unorderedUI);
}

uint64_t sub_1000DA95C()
{
  sub_1000D7BB4();
  v1 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_applicationACL);

  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_acceptedVerifiedClaims);

  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_verifiedClaimFields);

  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_recipientCertificates);

  v5 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_pagination);

  v6 = *(v0 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_unorderedUI);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1000DAAE0(char a1)
{
  result = 0x4C525565636E6F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x55676E6972616873;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6974616E69676170;
      break;
    case 6:
    case 8:
    case 19:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x746163696C707061;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x62616D75736E6F63;
      break;
    case 11:
    case 23:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x466564756C636E69;
      break;
    case 13:
      result = 0xD000000000000028;
      break;
    case 14:
      result = 0xD000000000000023;
      break;
    case 15:
    case 22:
      v3 = 9;
      goto LABEL_22;
    case 16:
      result = 0x697463656E6E6F63;
      break;
    case 17:
      result = 0xD000000000000021;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0x46676E6972616873;
      break;
    case 21:
      v3 = 13;
LABEL_22:
      result = v3 | 0xD000000000000012;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DAE38(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000DAAE0(*a1);
  v5 = v4;
  if (v3 == sub_1000DAAE0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000DAEC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000DAAE0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000DAF24()
{
  sub_1000DAAE0(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000DAF78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000DAAE0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000DAFD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000F4EF0();
  *a2 = result;
  return result;
}

unint64_t sub_1000DB008@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000DAAE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000DB03C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F4EF0();
  *a1 = result;
  return result;
}

uint64_t sub_1000DB070(uint64_t a1)
{
  v2 = sub_1000F1A9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DB0AC(uint64_t a1)
{
  v2 = sub_1000F1A9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DB114(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

uint64_t sub_1000DB16C(uint64_t *a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v149 = *(v2 - 8);
  v150 = v2;
  v3 = *(v149 + 64);
  __chkstk_darwin(v2);
  v151 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v148 = &v125 - v7;
  v8 = type metadata accessor for EncryptedMessageEntity();
  v144 = *(v8 - 8);
  v145 = v8;
  v9 = *(v144 + 64);
  __chkstk_darwin(v8);
  v143 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecipientEncryptionCertificate();
  v146 = *(v11 - 8);
  v147 = v11;
  v12 = *(v146 + 64);
  __chkstk_darwin(v11);
  v138 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPCertUsage();
  v141 = *(v14 - 8);
  v142 = v14;
  v15 = *(v141 + 64);
  v16 = __chkstk_darwin(v14);
  v140 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v139 = &v125 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v125 - v21;
  __chkstk_darwin(v20);
  v24 = &v125 - v23;
  v25 = type metadata accessor for DIPOIDVerifier();
  v152 = *(v25 - 8);
  v26 = *(v152 + 64);
  __chkstk_darwin(v25);
  v28 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100007224(&qword_1008399F8, &qword_1006D4900);
  v153 = *(v29 - 8);
  v30 = *(v153 + 64);
  __chkstk_darwin(v29);
  v32 = &v125 - v31;
  v33 = a1[3];
  v34 = a1[4];
  v155 = a1;
  sub_10000BA08(a1, v33);
  sub_1000F1A9C();
  v35 = v154;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {
    sub_10000BB78(v155);
    v37 = v156;
    goto LABEL_4;
  }

  v135 = v24;
  v136 = v22;
  v137 = v28;
  v154 = v25;
  type metadata accessor for ServerEndPoint();
  v161 = 0;
  sub_1000F09F8(&qword_100839A08, v36, type metadata accessor for ServerEndPoint);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v41 = v156;
  *(v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_nonceURL) = v157;
  v161 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v41 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_sharingURL) = v157;
  LOBYTE(v157) = 2;
  v133 = 0;
  *(v41 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_allowUrlOverride) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100007224(&qword_100839A10, &qword_1006D4908);
  v161 = 3;
  sub_1000F1AF0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v52 = OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userInputFieldValidationURLs;
  *(v41 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userInputFieldValidationURLs) = v157;
  sub_100007224(&qword_100839A28, &unk_1006D4910);
  v161 = 4;
  sub_1000F1BA8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v41 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareableAttributes) = v157;
  sub_100007224(&unk_100839A40, &qword_1006C1B50);
  v161 = 5;
  sub_10009F8C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v41 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_pagination) = v157;
  sub_100007224(&qword_100839A58, &qword_1006D4920);
  v161 = 6;
  sub_1000F1C80();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v41 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_acceptedVerifiedClaims) = v157;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v161 = 7;
  sub_10007FD2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v41 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_applicationACL) = v157;
  LOBYTE(v157) = 8;
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  v134 = 0;
  *(v41 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareAccountAssessment) = v53 & 1;
  LOBYTE(v157) = 9;
  v132 = v29;
  v54 = v32;
  v55 = v134;
  v56 = KeyedDecodingContainer.decode(_:forKey:)();
  v134 = v55;
  if (v55 || (*(v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareINOAssessment) = v56 & 1, sub_100007224(&qword_100839A70, &qword_1006D4928), v161 = 10, sub_1000F1D58(), v57 = v134, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v134 = v57) != 0))
  {
    (*(v153 + 8))(v32, v132);
    LODWORD(v154) = 0;
    LODWORD(v153) = 0;
    v58 = 0;
    LODWORD(v152) = 0;
LABEL_20:
    v59 = v133;
    v37 = v156;
    sub_10000BB78(v155);
    v42 = *(v37 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_nonceURL);

    if (!v59)
    {
      v47 = *(v37 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_sharingURL);
    }

    v43 = *(v37 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userInputFieldValidationURLs);

    v48 = *(v37 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareableAttributes);

    v44 = *(v37 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_pagination);

    v49 = *(v37 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_acceptedVerifiedClaims);

    v45 = *(v37 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_applicationACL);

    if (v154)
    {
      sub_10000BE18(v37 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentCertificate, &qword_1008399F0, &unk_1006DA210);
      if (v153)
      {
LABEL_10:
        v46 = *(v37 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_recipientCertificates);

        if ((v58 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }
    }

    else if (v153)
    {
      goto LABEL_10;
    }

    if (!v58)
    {
LABEL_11:
      if (v152)
      {
        goto LABEL_16;
      }

      goto LABEL_4;
    }

LABEL_15:
    v50 = *(v37 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_consumableDSD);

    if (v152)
    {
LABEL_16:
      v51 = *(v37 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userAuthorizationBundleName + 8);
    }

LABEL_4:
    type metadata accessor for LegacySPWorkflow(0);
    v38 = *(*v37 + 48);
    v39 = *(*v37 + 52);
    swift_deallocPartialClassInstance();
    return v37;
  }

  *(v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_consumableDSD) = v157;
  LOBYTE(v157) = 13;
  v60 = v134;
  v130 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v131 = v61;
  v134 = v60;
  if (v60)
  {
    (*(v153 + 8))(v32, v132);
LABEL_25:
    LODWORD(v154) = 0;
    LODWORD(v153) = 0;
    LODWORD(v152) = 0;
    v58 = 1;
    goto LABEL_20;
  }

  LOBYTE(v157) = 14;
  v128 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v129 = v62;
  v134 = 0;
  LOBYTE(v157) = 17;
  v127 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v134 = 0;
  v64 = v63;
  LOBYTE(v157) = 18;
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v134 = 0;
  v66 = v65;
  sub_100007224(&qword_100839A88, &qword_1006D4930);
  v161 = 19;
  sub_1000F1DDC();
  v67 = v134;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v134 = v67;
  if (v67)
  {
    (*(v153 + 8))(v32, v132);

LABEL_24:

    goto LABEL_25;
  }

  v68 = v157;
  LOBYTE(v157) = 11;
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v134 = 0;
  *(v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_includeEncryptedTSID) = v69;
  LOBYTE(v157) = 12;
  v70 = v134;
  v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v134 = v70;
  if (v70)
  {
    goto LABEL_33;
  }

  *(v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_includeFGuid) = v71;
  LOBYTE(v157) = 15;
  v72 = v134;
  v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v134 = v72;
  if (v72)
  {
    goto LABEL_33;
  }

  *(v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentDeviceData) = v73;
  v161 = 16;
  sub_1000F1EBC();
  v74 = v134;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v134 = v74;
  if (v74)
  {
    goto LABEL_33;
  }

  v75 = v159;
  v76 = v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_connectivity;
  v77 = v158;
  *v76 = v157;
  *(v76 + 16) = v77;
  *(v76 + 32) = v75;
  v161 = 20;
  sub_1000F1F10();
  v78 = v134;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v134 = v78;
  if (v78 || (*(v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_sharingFormat) = v157, LOBYTE(v157) = 22, v79 = v134, v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v134 = v79) != 0))
  {
LABEL_33:
    (*(v153 + 8))(v32, v132);

    goto LABEL_24;
  }

  v82 = (v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userAuthorizationBundleName);
  *v82 = v80;
  v82[1] = v81;
  LOBYTE(v157) = 23;
  v83 = v134;
  v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v134 = v83;
  if (v83)
  {
    goto LABEL_37;
  }

  v86 = v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_dsdValidityInSeconds;
  *v86 = v84;
  *(v86 + 8) = v85 & 1;
  LOBYTE(v157) = 24;
  v87 = v134;
  v88 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v134 = v87;
  if (v87 || (*(v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_useExternalGSToken) = v88, LOBYTE(v157) = 25, v89 = v134, v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v134 = v89) != 0))
  {
LABEL_37:
    (*(v153 + 8))(v32, v132);

LABEL_38:
    LODWORD(v154) = 0;
    LODWORD(v153) = 0;
    v58 = 1;
LABEL_39:
    LODWORD(v152) = 1;
    goto LABEL_20;
  }

  *(v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_assessBeforeProof) = v90;
  *(&v158 + 1) = type metadata accessor for DateProvider();
  v159 = &protocol witness table for DateProvider;
  sub_100032DBC(&v157);
  DateProvider.init()();
  DIPOIDVerifier.init(dateProvider:)();
  v161 = 21;
  v91 = v134;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v134 = v91;
  if (v91)
  {
    (*(v153 + 8))(v32, v132);

LABEL_42:

LABEL_43:
    (*(v152 + 8))(v137, v154);
    goto LABEL_38;
  }

  if (v157)
  {
    DIPOIDVerifier.setIntermediates(fromBase64DER:)(v157);
  }

  if (v64 && v66)
  {

    v126 = *(v141 + 104);
    v126(v135, enum case for DIPCertUsage.spEncryption(_:), v142);
    v92 = v134;
    v127 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    if (v92)
    {
      (*(v141 + 8))(v135, v142);

      (*(v149 + 104))(v151, enum case for DIPError.Code.internalError(_:), v150);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
      v100 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v134 = v100;
      swift_willThrow();

      (*(v153 + 8))(v32, v132);
      goto LABEL_43;
    }

    v96 = v142;
    v97 = *(v141 + 8);
    v98 = v135;
    v135 = (v141 + 8);
    v125 = v97;
    v97(v98, v142);

    v126(v136, enum case for DIPCertUsage.spSigning(_:), v96);
    v99 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    v134 = 0;
    v101 = v99;
    v125(v136, v142);

    (*(v144 + 104))(v143, enum case for EncryptedMessageEntity.sp(_:), v145);
    v102 = v127;
    v136 = v101;
    v103 = v138;
    RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
    sub_100007224(&unk_100839AB0, &qword_1006D4938);
    v104 = (sub_100007224(&qword_100834798, &qword_1006D4940) - 8);
    v105 = *(*v104 + 72);
    v106 = (*(*v104 + 80) + 32) & ~*(*v104 + 80);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1006BF520;
    v108 = (v107 + v106);
    v109 = v104[14];
    *v108 = 0x746C7561666564;
    *(v108 + 1) = 0xE700000000000000;
    v111 = v146;
    v110 = v147;
    (*(v146 + 16))(&v108[v109], v103, v147);
    v95 = sub_10003E654(v107);
    swift_setDeallocating();
    sub_10000BE18(v108, &qword_100834798, &qword_1006D4940);
    swift_deallocClassInstance();

    (*(v111 + 8))(v103, v110);
  }

  else
  {

    if (v68)
    {
      v93 = v134;
      v94 = sub_1000C5F68(&_swiftEmptyDictionarySingleton, v68, v137, sub_1000DCFD0);
      v134 = v93;
      if (v93)
      {
        (*(v153 + 8))(v32, v132);

        goto LABEL_42;
      }

      v95 = v94;
    }

    else
    {
      v95 = 0;
    }
  }

  *(v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_recipientCertificates) = v95;
  if (!v131)
  {
    v114 = &v159;
LABEL_62:
    v115 = *(v114 - 32);

    (*(v146 + 56))(v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentCertificate, 1, 1, v147);
    goto LABEL_63;
  }

  if (!v129)
  {
    v114 = &v160;
    goto LABEL_62;
  }

  v112 = *(v141 + 104);
  v112(v139, enum case for DIPCertUsage.accountAssessmentServerEncryption(_:), v142);
  v113 = v134;
  v138 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
  if (v113)
  {
    (*(v141 + 8))(v139, v142);

    (*(v149 + 104))(v151, enum case for DIPError.Code.internalError(_:), v150);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
    v122 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v134 = v122;
    swift_willThrow();

    (*(v153 + 8))(v54, v132);
    (*(v152 + 8))(v137, v154);
    LODWORD(v154) = 0;
LABEL_68:
    LODWORD(v153) = 1;
    v58 = 1;
    goto LABEL_39;
  }

  v120 = v142;
  v121 = *(v141 + 8);
  v121(v139, v142);

  v112(v140, enum case for DIPCertUsage.accountAssessmentServerSigning(_:), v120);
  DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
  v134 = 0;
  v121(v140, v142);

  (*(v144 + 104))(v143, enum case for EncryptedMessageEntity.athena(_:), v145);
  v124 = v148;
  RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
  (*(v146 + 56))(v124, 0, 1, v147);
  sub_1000B1FC8(v124, v156 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentCertificate, &qword_1008399F0, &unk_1006DA210);
LABEL_63:
  v116 = *(v156 + v52);

  v118 = v134;
  sub_1000C5AA0(v117, v137);
  v134 = v118;
  if (v118)
  {
    (*(v153 + 8))(v54, v132);

    (*(v152 + 8))(v137, v154);
    LODWORD(v154) = 1;
    goto LABEL_68;
  }

  sub_100020260(v155, &v157);
  v119 = v134;
  sub_1000D6FB4(&v157);
  (*(v153 + 8))(v54, v132);
  if (v119)
  {
    (*(v152 + 8))(v137, v154);
    sub_10000BB78(v155);
    return v156;
  }

  else
  {
    v123 = *(v152 + 8);
    v37 = v156;

    v123(v137, v154);
    sub_10000BB78(v155);
  }

  return v37;
}

uint64_t sub_1000DCFD0(uint64_t a1, uint64_t a2, void *a3)
{
  v96 = a3;
  v99 = a2;
  v84 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  __chkstk_darwin(v3);
  v93 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v81 = v76 - v8;
  v80 = type metadata accessor for EncryptedMessageEntity();
  v79 = *(v80 - 8);
  v9 = *(v79 + 64);
  __chkstk_darwin(v80);
  v82 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v83 = v76 - v13;
  v102 = type metadata accessor for DIPCertUsage();
  v14 = *(v102 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v102);
  v87 = v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v76 - v18;
  v20 = sub_100007224(&unk_100839AC0, &unk_1006D4948);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v89 = v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v90 = (v76 - v25);
  v26 = __chkstk_darwin(v24);
  v88 = v76 - v27;
  __chkstk_darwin(v26);
  v29 = v76 - v28;
  v30 = type metadata accessor for DIPOIDVerifier();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v85 = v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = v76 - v35;
  v97 = v31;
  v98 = v37;
  v39 = *(v31 + 16);
  v38 = v31 + 16;
  v86 = v39;
  (v39)(v76 - v35, v96);
  sub_10000BBC4(v99, v29, &unk_100839AC0, &unk_1006D4948);
  v40 = *(v29 + 1);

  v94 = v20;
  v41 = &v29[*(v20 + 48)];
  v42 = *v41;
  v43 = *(v41 + 1);

  sub_1000F1FC8(v41);
  v44 = *(v14 + 104);
  v44(v19, enum case for DIPCertUsage.spEncryption(_:), v102);
  v45 = v95;
  v46 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
  if (v45)
  {

    (*(v14 + 8))(v19, v102);
    (*(v97 + 8))(v36, v98);
    v47 = v99;
    v100 = 0;
    v101 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v48._countAndFlagsBits = 0xD000000000000033;
    v48._object = 0x80000001006FEE70;
    String.append(_:)(v48);
    String.append(_:)(*v47);
    (*(v91 + 104))(v93, enum case for DIPError.Code.internalError(_:), v92);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v76[1] = v38;
    v77 = v44;
    v95 = v46;

    v78 = *(v14 + 8);
    v78(v19, v102);
    v50 = v97 + 8;
    v51 = *(v97 + 8);
    v51(v36, v98);
    v52 = v88;
    sub_10000BBC4(v99, v88, &unk_100839AC0, &unk_1006D4948);
    v53 = *(v52 + 8);

    v54 = v52 + *(v94 + 48);
    v55 = *(v54 + 16);
    v56 = *(v54 + 24);

    sub_1000F1FC8(v54);
    if (v56)
    {
      v97 = v50;
      v57 = v85;
      v86(v85, v96, v98);
      v58 = v87;
      v77(v87, enum case for DIPCertUsage.spSigning(_:), v102);
      v96 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
      v60 = v89;
      v59 = v90;

      v78(v58, v102);
      v51(v57, v98);
      v61 = v99;
    }

    else
    {
      v96 = 0;
      v61 = v99;
      v60 = v89;
      v59 = v90;
    }

    sub_10000BBC4(v61, v59, &unk_100839AC0, &unk_1006D4948);
    v62 = v59[1];
    v102 = *v59;
    v99 = v62;
    sub_10000BBC4(v61, v60, &unk_100839AC0, &unk_1006D4948);
    v63 = *(v60 + 8);

    v64 = v60 + *(v94 + 48);
    v65 = type metadata accessor for EncryptionCertificateInStringFormat(0);
    v66 = v81;
    sub_10000BBC4(v64 + *(v65 + 24), v81, &qword_100834D98, &unk_1006C03B0);
    sub_1000F1FC8(v64);
    v67 = v79;
    v68 = *(v79 + 48);
    v69 = v80;
    v70 = v68(v66, 1, v80);
    v71 = v83;
    if (v70 == 1)
    {
      (*(v67 + 104))(v82, enum case for EncryptedMessageEntity.sp(_:), v69);
      if (v68(v66, 1, v69) != 1)
      {
        sub_10000BE18(v66, &qword_100834D98, &unk_1006C03B0);
      }
    }

    else
    {
      (*(v67 + 32))(v82, v66, v69);
    }

    v72 = *(v94 + 48);
    v73 = v96;
    v74 = v95;
    RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
    v75 = type metadata accessor for RecipientEncryptionCertificate();
    (*(*(v75 - 8) + 56))(v71, 0, 1, v75);
    sub_10014C0FC(v71, v102, v99);

    return sub_1000F1FC8(v90 + v72);
  }
}

uint64_t sub_1000DD98C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_nonceURL);

  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_sharingURL);

  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userInputFieldValidationURLs);

  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareableAttributes);

  v5 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_pagination);

  v6 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_acceptedVerifiedClaims);

  v7 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_applicationACL);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentCertificate, &qword_1008399F0, &unk_1006DA210);
  v8 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_recipientCertificates);

  v9 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_consumableDSD);

  v10 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userAuthorizationBundleName + 8);
}

uint64_t sub_1000DDA70()
{
  sub_1000D7BB4();
  v1 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_nonceURL);

  v2 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_sharingURL);

  v3 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userInputFieldValidationURLs);

  v4 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareableAttributes);

  v5 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_pagination);

  v6 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_acceptedVerifiedClaims);

  v7 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_applicationACL);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentCertificate, &qword_1008399F0, &unk_1006DA210);
  v8 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_recipientCertificates);

  v9 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_consumableDSD);

  v10 = *(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userAuthorizationBundleName + 8);

  return v0;
}

uint64_t sub_1000DDB68(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_1000DDBEC()
{
  sub_1000F2FD4(319, &unk_1008395E8, &type metadata accessor for RecipientEncryptionCertificate);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

__n128 sub_1000DDD1C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000DDD30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000DDD78(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000DDDCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1000DDE14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DDE90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1000DDED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000DDF90()
{
  result = qword_1008397C8;
  if (!qword_1008397C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008397C8);
  }

  return result;
}

unint64_t sub_1000DDFE8()
{
  result = qword_1008397D0;
  if (!qword_1008397D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008397D0);
  }

  return result;
}

unint64_t sub_1000DE040()
{
  result = qword_1008397D8;
  if (!qword_1008397D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008397D8);
  }

  return result;
}

unint64_t sub_1000DE094()
{
  result = qword_1008397E8;
  if (!qword_1008397E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008397E8);
  }

  return result;
}

unint64_t sub_1000DE0E8()
{
  result = qword_1008397F8;
  if (!qword_1008397F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008397F8);
  }

  return result;
}

unint64_t sub_1000DE13C()
{
  result = qword_100839810;
  if (!qword_100839810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839810);
  }

  return result;
}

uint64_t sub_1000DE190(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  *a2 = a1;

  if (*a2 && *(*a2 + 16))
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "got PhoneNumber", v13, 2u);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1000DE2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1208) = v16;
  *(v8 + 1200) = a8;
  *(v8 + 1192) = a7;
  *(v8 + 1184) = a6;
  *(v8 + 1176) = a5;
  *(v8 + 1168) = a4;
  *(v8 + 1160) = a3;
  *(v8 + 1152) = a1;
  v10 = type metadata accessor for DIPError.Code();
  *(v8 + 1216) = v10;
  v11 = *(v10 - 8);
  *(v8 + 1224) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 1232) = swift_task_alloc();
  *(v8 + 1240) = *a2;
  v13 = *(a2 + 24);
  *(v8 + 1256) = *(a2 + 16);
  *(v8 + 1264) = v13;
  *(v8 + 1272) = *(a2 + 32);
  *(v8 + 1288) = *(a2 + 48);

  return _swift_task_switch(sub_1000DE404, 0, 0);
}

uint64_t sub_1000DE404()
{
  v1 = v0;
  v2 = v0[160];
  v0[143] = _swiftEmptyArrayStorage;
  result = sub_10003E868(_swiftEmptyArrayStorage);
  v4 = *(v2 + 16);
  v0[162] = v4;
  v121 = v0;
  if (!v4)
  {
    v27 = v0[161];
    if (v27)
    {
      v28 = v0[151];
      v29 = v1[150];
      sub_1000F26FC(v29, (v1 + 2));
      sub_1000E4B24(v27, v29, v28, v1 + 143);
      sub_1000F2758(v29);
    }

    v44 = v1[149];
    v45 = sub_10003D21C(_swiftEmptyArrayStorage);
    v46 = v44 + 64;
    v47 = -1;
    v48 = -1 << *(v44 + 32);
    if (-v48 < 64)
    {
      v47 = ~(-1 << -v48);
    }

    v49 = v47 & *(v44 + 64);
    v50 = (63 - v48) >> 6;
    v120 = v44;

    v51 = 0;
    v118 = v50;
    for (i = v44 + 64; ; v46 = i)
    {
      if (!v49)
      {
        while (1)
        {
          v54 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v54 >= v50)
          {
            v75 = v45;
            v76 = v1[150];
            v77 = v1[149];

            v78 = *(v76 + 464);
            if (v78)
            {
              v79 = v1 + 157;
              if (*(v78 + 16))
              {
                v80 = sub_10003ADCC(v1[156], v1[157]);
                if (v81)
                {
                  v82 = (*(v78 + 56) + 16 * v80);
                  v79 = v82 + 1;
                  goto LABEL_37;
                }
              }
            }

            else
            {
              v79 = v1 + 157;
            }

            v82 = v1 + 156;
LABEL_37:
            v83 = *v82;
            v84 = *v79;

            sub_1000E0BF8(v83, v84, v75);

            if (v78)
            {
              v85 = v1 + 159;
              if (*(v78 + 16))
              {
                v86 = sub_10003ADCC(v1[158], v1[159]);
                if (v87)
                {
                  v88 = (*(v78 + 56) + 16 * v86);
                  v85 = v88 + 1;
LABEL_59:
                  v105 = *v88;
                  v106 = *v85;

                  sub_1000E0BF8(v105, v106, v75);
                  v110 = v1[155];
                  v122 = v1[144];
                  v124 = v1[154];

                  v111 = v1[143];
                  v112 = [objc_allocWithZone(DIPage) init];
                  sub_10001F8D4(0, &unk_1008399D0, DIAttribute_ptr);
                  v113 = v112;
                  isa = Array._bridgeToObjectiveC()().super.isa;
                  [v113 setAttributes:isa];

                  v115 = String._bridgeToObjectiveC()();

                  [v113 setTitle:v115];

                  v116 = String._bridgeToObjectiveC()();

                  [v113 setSubTitle:v116];

                  [v113 setPage:v110];
                  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
                  v117 = Dictionary._bridgeToObjectiveC()().super.isa;
                  [v113 setServerValidationGroup:v117];

                  *v122 = v113;

                  v109 = v1[1];
                  goto LABEL_60;
                }
              }
            }

            else
            {
              v85 = v1 + 159;
            }

            v88 = v1 + 158;
            goto LABEL_59;
          }

          v49 = *(v46 + 8 * v54);
          ++v51;
          if (v49)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v54 = v51;
LABEL_22:
      v55 = __clz(__rbit64(v49)) | (v54 << 6);
      v56 = (*(v120 + 48) + 16 * v55);
      v58 = *v56;
      v57 = v56[1];
      v59 = (*(v120 + 56) + 32 * v55);
      v60 = v59[1];
      v123 = *v59;
      v61 = v59[3];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = sub_10003ADCC(v58, v57);
      v65 = v45[2];
      v66 = (v63 & 1) == 0;
      result = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_67;
      }

      v67 = v63;
      if (v45[3] >= result)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10016F53C();
        }
      }

      else
      {
        sub_100165FC0(result, isUniquelyReferenced_nonNull_native);
        v68 = sub_10003ADCC(v58, v57);
        if ((v67 & 1) != (v69 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v64 = v68;
      }

      v49 &= v49 - 1;
      if (v67)
      {

        v52 = (v45[7] + 16 * v64);
        v53 = v52[1];
        *v52 = v123;
        v52[1] = v60;
      }

      else
      {
        v45[(v64 >> 6) + 8] |= 1 << v64;
        v70 = (v45[6] + 16 * v64);
        *v70 = v58;
        v70[1] = v57;
        v71 = (v45[7] + 16 * v64);
        *v71 = v123;
        v71[1] = v60;

        v72 = v45[2];
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          goto LABEL_68;
        }

        v45[2] = v74;
      }

      v51 = v54;
      v1 = v121;
      v50 = v118;
    }
  }

  v5 = v0[160];
  v6 = v0[145];
  v0[163] = result;
  v0[164] = 0;
  if (!v5[2])
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v8 = v5[4];
  v7 = v5[5];
  v9 = *(v6 + 16);

  if (v9)
  {
    v10 = sub_10003ADCC(v8, v7);
    if (v11)
    {
      v12 = v1[149];
      v13 = *(v1[145] + 56) + 152 * v10;
      v14 = *(v13 + 16);
      *(v1 + 63) = *v13;
      *(v1 + 65) = v14;
      v15 = *(v13 + 80);
      v17 = *(v13 + 32);
      v16 = *(v13 + 48);
      *(v1 + 71) = *(v13 + 64);
      *(v1 + 73) = v15;
      *(v1 + 67) = v17;
      *(v1 + 69) = v16;
      v19 = *(v13 + 112);
      v18 = *(v13 + 128);
      v20 = *(v13 + 96);
      v1[81] = *(v13 + 144);
      *(v1 + 77) = v19;
      *(v1 + 79) = v18;
      *(v1 + 75) = v20;
      if (*(v12 + 16))
      {
        sub_1000F059C((v1 + 63), (v1 + 82));
        v21 = sub_10003ADCC(v8, v7);
        v22 = v1[149];
        if (v23)
        {
          v24 = (*(v22 + 56) + 32 * v21);
          v26 = *v24;
          v25 = v24[1];
        }

        else
        {
          v26 = 0;
          v25 = 0;
        }
      }

      else
      {
        sub_1000F059C((v1 + 63), (v1 + 120));
        v26 = 0;
        v25 = 0;
        v22 = v1[149];
      }

      v1[165] = v25;
      if (*(v22 + 16))
      {
        v89 = sub_10003ADCC(v8, v7);
        v91 = v90;

        if (v91)
        {
          v92 = *(v1[149] + 56) + 32 * v89;
          v94 = *(v92 + 16);
          v93 = *(v92 + 24);

          goto LABEL_48;
        }
      }

      else
      {
      }

      v94 = 0;
      v93 = 0;
LABEL_48:
      v1[166] = v93;
      *(v1 + 139) = *(v1 + 63);
      v95 = v1[139];
      v96 = v1[140];
      v1[167] = v96;
      if (v95 == 0xD000000000000010 && 0x80000001006F93E0 == v96 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v97 = v1[148];
        v98 = v1[147];

        sub_10001F8D4(0, &qword_100839BE0, DIAttributeDocument_ptr);
        sub_1000F059C((v1 + 63), (v1 + 101));

        v99 = swift_task_alloc();
        v1[168] = v99;
        *v99 = v1;
        v99[1] = sub_1000DEFDC;
        v100 = v1[148];
        v101 = v1[147];
        v102 = v1[146];

        return sub_1000E1450((v1 + 63), v102, v101, v100);
      }

      else
      {
        v103 = swift_task_alloc();
        v1[169] = v103;
        *v103 = v1;
        v103[1] = sub_1000DF110;
        v104 = v1[148];

        return sub_1000E1AD8((v1 + 63), v26, v25, v94, v93, v104);
      }
    }

    v30 = v1[163];
  }

  v31 = v1[154];
  v32 = v1[153];
  v33 = v1[152];
  _StringGuts.grow(_:)(43);

  v34._countAndFlagsBits = v8;
  v34._object = v7;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD000000000000013;
  v35._object = 0x80000001006FF0E0;
  String.append(_:)(v35);
  (*(v32 + 104))(v31, enum case for DIPError.Code.unknownAttribute(_:), v33);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v36 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v37 = *(*v36 + 72);
  v38 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1006BF520;
  v40 = v39 + v38;
  v41 = (v40 + v36[14]);
  v42 = enum case for DIPError.PropertyKey.attributeID(_:);
  v43 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v43 - 8) + 104))(v40, v42, v43);
  v41[3] = &type metadata for String;
  v41[4] = &protocol witness table for String;
  *v41 = v8;
  v41[1] = v7;
  sub_10003C9C0(v39);
  swift_setDeallocating();
  sub_10000BE18(v40, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v107 = v121[154];
  v108 = v121[143];

  v109 = v121[1];
LABEL_60:

  return v109();
}

uint64_t sub_1000DEFDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1344);
  v6 = *v2;

  if (v1)
  {
    v4[172] = v1;
    sub_1000F05D4((v4 + 63));
    v7 = sub_1000E0048;
  }

  else
  {
    v4[170] = 0;
    v4[171] = a1;
    v7 = sub_1000DF268;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000DF110(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1352);
  v11 = *v2;

  v6 = v4[166];
  if (v1)
  {
    v7 = v4[165];

    v4[172] = v1;
    sub_1000F05D4((v4 + 63));
    v8 = sub_1000E0048;
  }

  else
  {
    v9 = v4[165];

    v4[170] = 0;
    v4[171] = a1;
    v8 = sub_1000DF268;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000DF268()
{
  v3 = v0;
  v4 = *(v0 + 1368);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 1144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_85:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  isUniquelyReferenced_nonNull_native = v3 + 504;
  v6 = v3 + 1112;
  v7 = *(v3 + 1368);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v8 = *(v3 + 552);
  v141 = v3;
  if (!v8)
  {
    v23 = *(v3 + 1312);
    v24 = *(v3 + 1296);

    sub_1000F05D4(v3 + 504);
    if (v23 + 1 != v24)
    {
      v22 = *(v3 + 1312) + 1;
      goto LABEL_18;
    }

    v137 = *(v3 + 1304);
LABEL_14:
    v25 = *(v3 + 1360);
    v26 = *(v3 + 1288);
    if (v26)
    {
      v27 = *(v3 + 1208);
      v28 = *(v3 + 1200);
      sub_1000F26FC(v28, v3 + 16);
      sub_1000E4B24(v26, v28, v27, (v3 + 1144));
      v136 = v25;
      sub_1000F2758(v28);
    }

    else
    {
      v136 = *(v3 + 1360);
    }

    v66 = *(v3 + 1192);
    v67 = sub_10003D21C(_swiftEmptyArrayStorage);
    v68 = v66 + 64;
    v69 = -1;
    v70 = -1 << *(v66 + 32);
    if (-v70 < 64)
    {
      v69 = ~(-1 << -v70);
    }

    v71 = v69 & *(v66 + 64);
    v1 = (63 - v70) >> 6;
    v140 = v66;

    v72 = 0;
    v138 = v1;
    for (i = v66 + 64; ; v68 = i)
    {
      if (!v71)
      {
        while (1)
        {
          v6 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            break;
          }

          if (v6 >= v1)
          {
            v91 = v67;
            v92 = *(v3 + 1200);
            v93 = *(v3 + 1192);

            v94 = *(v92 + 464);
            if (v94)
            {
              v95 = (v3 + 1256);
              v96 = v136;
              if (*(v94 + 16) && (v97 = sub_10003ADCC(*(v3 + 1248), *(v3 + 1256)), (v98 & 1) != 0))
              {
                v99 = (*(v94 + 56) + 16 * v97);
                v95 = v99 + 1;
              }

              else
              {
                v99 = (v3 + 1248);
              }
            }

            else
            {
              v95 = (v3 + 1256);
              v99 = (v3 + 1248);
              v96 = v136;
            }

            v100 = *v99;
            v101 = *v95;

            sub_1000E0BF8(v100, v101, v91);
            if (v96)
            {

              goto LABEL_60;
            }

            if (v94)
            {
              v102 = (v3 + 1272);
              if (*(v94 + 16))
              {
                v103 = sub_10003ADCC(*(v3 + 1264), *(v3 + 1272));
                if (v104)
                {
                  v105 = (*(v94 + 56) + 16 * v103);
                  v102 = v105 + 1;
LABEL_59:
                  v106 = *v105;
                  v107 = *v102;

                  sub_1000E0BF8(v106, v107, v91);
                  v111 = *(v3 + 1240);
                  v142 = *(v3 + 1152);
                  v144 = *(v3 + 1232);

                  v112 = *(v3 + 1144);
                  v113 = [objc_allocWithZone(DIPage) init];
                  sub_10001F8D4(0, &unk_1008399D0, DIAttribute_ptr);
                  v114 = v113;
                  isa = Array._bridgeToObjectiveC()().super.isa;
                  [v114 setAttributes:isa];

                  v116 = String._bridgeToObjectiveC()();

                  [v114 setTitle:v116];

                  v117 = String._bridgeToObjectiveC()();

                  [v114 setSubTitle:v117];

                  [v114 setPage:v111];
                  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
                  v118 = Dictionary._bridgeToObjectiveC()().super.isa;
                  [v114 setServerValidationGroup:v118];

                  *v142 = v114;

                  v119 = *(v3 + 8);
                  goto LABEL_61;
                }
              }
            }

            else
            {
              v102 = (v3 + 1272);
            }

            v105 = (v3 + 1264);
            goto LABEL_59;
          }

          v71 = *(v68 + 8 * v6);
          ++v72;
          if (v71)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v6 = v72;
LABEL_36:
      v75 = __clz(__rbit64(v71)) | (v6 << 6);
      v76 = (*(v140 + 48) + 16 * v75);
      v3 = *v76;
      v77 = v76[1];
      v78 = (*(v140 + 56) + 32 * v75);
      v79 = v78[1];
      v143 = *v78;
      v2 = v78[3];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = sub_10003ADCC(v3, v77);
      v81 = v67[2];
      v82 = (v80 & 1) == 0;
      v83 = v81 + v82;
      if (__OFADD__(v81, v82))
      {
        goto LABEL_84;
      }

      v1 = v80;
      if (v67[3] >= v83)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10016F53C();
        }
      }

      else
      {
        sub_100165FC0(v83, isUniquelyReferenced_nonNull_native);
        v84 = sub_10003ADCC(v3, v77);
        if ((v1 & 1) != (v85 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v8 = v84;
      }

      v71 &= v71 - 1;
      if (v1)
      {

        v73 = (v67[7] + 16 * v8);
        v74 = v73[1];
        *v73 = v143;
        v73[1] = v79;
      }

      else
      {
        v67[(v8 >> 6) + 8] |= 1 << v8;
        v86 = (v67[6] + 16 * v8);
        *v86 = v3;
        v86[1] = v77;
        v87 = (v67[7] + 16 * v8);
        *v87 = v143;
        v87[1] = v79;

        v88 = v67[2];
        v89 = __OFADD__(v88, 1);
        v90 = v88 + 1;
        if (v89)
        {
          __break(1u);
          goto LABEL_87;
        }

        v67[2] = v90;
      }

      v72 = v6;
      v3 = v141;
      v1 = v138;
    }
  }

  v1 = *(v3 + 544);
  v9 = *(v3 + 1304);
  v10 = *(v9 + 16);

  if (!v10 || (v11 = sub_10003ADCC(v1, v8), v9 = *(v3 + 1304), (v12 & 1) == 0))
  {
    v18 = *(v3 + 1368);
    v19 = *(v3 + 1336);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v2 = swift_allocObject();
    v20 = *v6;
    *(v2 + 16) = xmmword_1006BF520;
    *(v2 + 32) = v20;

    sub_1000F05D4(v3 + 504);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v145 = v9;
    sub_10016D5CC(v2, v1, v8, v21);

    goto LABEL_10;
  }

  v2 = *(*(v9 + 56) + 8 * v11);
  sub_10004D7A0(v3 + 1112, v3 + 1128);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_1003C5110((v13 > 1), v14 + 1, 1, v2);
    }

    v15 = *(v3 + 1368);
    v16 = *(v3 + 1304);
    *(v2 + 16) = v14 + 1;
    *(v2 + 16 * v14 + 32) = *v6;
    sub_1000F05D4(isUniquelyReferenced_nonNull_native);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v145 = v16;
    sub_10016D5CC(v2, v1, v8, v17);

LABEL_10:
    v22 = *(v3 + 1312) + 1;
    if (v22 == *(v3 + 1296))
    {
      goto LABEL_14;
    }

    *(v3 + 1304) = v145;
LABEL_18:
    *(v3 + 1312) = v22;
    v29 = *(v3 + 1280);
    if (v22 < *(v29 + 16))
    {
      break;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    v2 = sub_1003C5110(0, *(v2 + 16) + 1, 1, v2);
  }

  v30 = v29 + 16 * v22;
  v32 = *(v30 + 32);
  v31 = *(v30 + 40);
  v33 = *(*(v3 + 1160) + 16);

  if (v33)
  {
    v34 = sub_10003ADCC(v32, v31);
    if (v35)
    {
      v36 = *(v3 + 1192);
      v37 = *(*(v3 + 1160) + 56) + 152 * v34;
      v38 = *(v37 + 16);
      *isUniquelyReferenced_nonNull_native = *v37;
      *(isUniquelyReferenced_nonNull_native + 16) = v38;
      v39 = *(v37 + 80);
      v41 = *(v37 + 32);
      v40 = *(v37 + 48);
      *(isUniquelyReferenced_nonNull_native + 64) = *(v37 + 64);
      *(isUniquelyReferenced_nonNull_native + 80) = v39;
      *(isUniquelyReferenced_nonNull_native + 32) = v41;
      *(isUniquelyReferenced_nonNull_native + 48) = v40;
      v43 = *(v37 + 112);
      v42 = *(v37 + 128);
      v44 = *(v37 + 96);
      *(isUniquelyReferenced_nonNull_native + 144) = *(v37 + 144);
      *(isUniquelyReferenced_nonNull_native + 112) = v43;
      *(isUniquelyReferenced_nonNull_native + 128) = v42;
      *(isUniquelyReferenced_nonNull_native + 96) = v44;
      if (*(v36 + 16))
      {
        sub_1000F059C(isUniquelyReferenced_nonNull_native, v3 + 656);
        v45 = sub_10003ADCC(v32, v31);
        v46 = *(v3 + 1192);
        if (v47)
        {
          v48 = (*(v46 + 56) + 32 * v45);
          v50 = *v48;
          v49 = v48[1];
        }

        else
        {
          v50 = 0;
          v49 = 0;
        }
      }

      else
      {
        sub_1000F059C(isUniquelyReferenced_nonNull_native, v3 + 960);
        v50 = 0;
        v49 = 0;
        v46 = *(v3 + 1192);
      }

      *(v3 + 1320) = v49;
      if (*(v46 + 16))
      {
        v120 = sub_10003ADCC(v32, v31);
        v122 = v121;

        if (v122)
        {
          v123 = *(*(v3 + 1192) + 56) + 32 * v120;
          v125 = *(v123 + 16);
          v124 = *(v123 + 24);

          goto LABEL_71;
        }
      }

      else
      {
      }

      v125 = 0;
      v124 = 0;
LABEL_71:
      *(v3 + 1328) = v124;
      *v6 = *isUniquelyReferenced_nonNull_native;
      v126 = *(v3 + 1112);
      v127 = *(v3 + 1120);
      *(v3 + 1336) = v127;
      if (v126 == 0xD000000000000010 && 0x80000001006F93E0 == v127 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v128 = *(v3 + 1184);
        v129 = *(v3 + 1176);

        sub_10001F8D4(0, &qword_100839BE0, DIAttributeDocument_ptr);
        sub_1000F059C(isUniquelyReferenced_nonNull_native, v3 + 808);

        v130 = swift_task_alloc();
        *(v3 + 1344) = v130;
        *v130 = v3;
        v130[1] = sub_1000DEFDC;
        v131 = *(v3 + 1184);
        v132 = *(v3 + 1176);
        v133 = *(v3 + 1168);

        return sub_1000E1450(isUniquelyReferenced_nonNull_native, v133, v132, v131);
      }

      else
      {
        v134 = swift_task_alloc();
        *(v3 + 1352) = v134;
        *v134 = v3;
        v134[1] = sub_1000DF110;
        v135 = *(v3 + 1184);

        return sub_1000E1AD8(isUniquelyReferenced_nonNull_native, v50, v49, v125, v124, v135);
      }
    }
  }

  v51 = *(v3 + 1304);
  v52 = *(v3 + 1232);
  v53 = *(v3 + 1224);
  v54 = *(v3 + 1216);
  _StringGuts.grow(_:)(43);

  v55._countAndFlagsBits = v32;
  v55._object = v31;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 0xD000000000000013;
  v56._object = 0x80000001006FF0E0;
  String.append(_:)(v56);
  (*(v53 + 104))(v52, enum case for DIPError.Code.unknownAttribute(_:), v54);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v57 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v58 = *(*v57 + 72);
  v59 = (*(*v57 + 80) + 32) & ~*(*v57 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1006BF520;
  v61 = v60 + v59;
  v62 = (v61 + v57[14]);
  v63 = enum case for DIPError.PropertyKey.attributeID(_:);
  v64 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v64 - 8) + 104))(v61, v63, v64);
  v62[3] = &type metadata for String;
  v62[4] = &protocol witness table for String;
  *v62 = v32;
  v62[1] = v31;
  sub_10003C9C0(v60);
  swift_setDeallocating();
  v65 = v61;
  v3 = v141;
  sub_10000BE18(v65, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_60:

  v108 = *(v3 + 1232);
  v109 = *(v3 + 1144);

  v119 = *(v3 + 8);
LABEL_61:

  return v119();
}

uint64_t sub_1000E0048()
{
  v1 = v0[163];

  v2 = v0[172];
  v3 = v0[154];
  v4 = v0[143];

  v5 = v0[1];

  return v5();
}

void sub_1000E00C0(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v156 = a4;
  v133 = type metadata accessor for Logger();
  v132 = *(v133 - 8);
  v8 = *(v132 + 64);
  v9 = __chkstk_darwin(v133);
  v11 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v131 = &v129 - v12;
  v13 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v15 = a1[3];
  v17 = a1[4];
  v19 = a1[6];
  v18 = a1[7];
  v147 = a1[5];
  v148 = v18;
  v21 = a1[8];
  v20 = a1[9];
  v136 = v17;
  v137 = v21;
  v145 = v20;
  v23 = a1[10];
  v22 = a1[11];
  v142 = v19;
  v143 = v22;
  v24 = a1[13];
  v144 = a1[12];
  v149 = v24;
  v26 = a1[14];
  v25 = a1[15];
  v138 = v23;
  v139 = v26;
  v146 = v25;
  v27 = a1[17];
  v140 = a1[16];
  v141 = v27;
  v134 = a1[19];
  v28 = [objc_allocWithZone(DIAttributeLabel) init];
  v29 = String._bridgeToObjectiveC()();
  [v28 setIdentifier:v29];

  v30 = *(a2 + 464);
  if (v30)
  {
    if (*(v30 + 16))
    {
      v31 = *(a2 + 464);
      v32 = sub_10003ADCC(v16, v15);
      if (v33)
      {
        v34 = (*(v30 + 56) + 16 * v32);
        v36 = *v34;
        v35 = v34[1];
      }
    }
  }

  v37 = String._bridgeToObjectiveC()();

  [v28 setDefaultValue:v37];

  v38 = [v28 defaultValue];
  if (!v38)
  {
    goto LABEL_22;
  }

  v135 = v4;
  v39 = v38;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v154 = v40;
  v155 = v42;
  v152 = 0xD000000000000012;
  v153 = 0x80000001006FF100;
  sub_10001F298();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {

LABEL_22:
    v61 = v156;
    v63 = v148;
    v62 = v149;
    v64 = v147;
    if (v147)
    {
      if (v30)
      {
        v65 = *(v30 + 16);

        if (v65)
        {
          v66 = sub_10003ADCC(v136, v64);
          if (v67)
          {
            v68 = (*(v30 + 56) + 16 * v66);
            v70 = *v68;
            v69 = v68[1];
          }
        }
      }

      else
      {
      }

      v71 = String._bridgeToObjectiveC()();

      [v28 setButtonTitle:v71];
    }

    if (v63)
    {
      if (v30)
      {
        if (*(v30 + 16))
        {
          v72 = sub_10003ADCC(v142, v63);
          if (v73)
          {
            v74 = (*(v30 + 56) + 16 * v72);
            v75 = v74[1];
            v142 = *v74;
          }
        }
      }

      v76 = String._bridgeToObjectiveC()();

      [v28 setDetailTitle:v76];

      if (v30)
      {
        if (*(v30 + 16))
        {
          v77 = sub_10003ADCC(v137, v145);
          if (v78)
          {
            v79 = (*(v30 + 56) + 16 * v77);
            v80 = *v79;
            v145 = v79[1];
          }
        }

        v81 = String._bridgeToObjectiveC()();

        [v28 setDetailSubtitle:v81];

        if (*(v30 + 16))
        {
          v82 = sub_10003ADCC(v138, v143);
          if (v83)
          {
            v84 = (*(v30 + 56) + 16 * v82);
            v85 = *v84;
            v143 = v84[1];
          }
        }
      }

      else
      {

        v86 = String._bridgeToObjectiveC()();

        [v28 setDetailSubtitle:v86];
      }

      v87 = String._bridgeToObjectiveC()();

      [v28 setDetailBody:v87];
    }

    if (v62)
    {
      if (v30)
      {
        if (*(v30 + 16))
        {
          v88 = sub_10003ADCC(v144, v62);
          if (v89)
          {
            v90 = (*(v30 + 56) + 16 * v88);
            v91 = v90[1];
            v144 = *v90;
          }
        }
      }

      v92 = String._bridgeToObjectiveC()();

      [v28 setBusinessChatButtonTitle:v92];

      if (v30)
      {
        if (*(v30 + 16))
        {
          v93 = sub_10003ADCC(v139, v146);
          if (v94)
          {
            v95 = (*(v30 + 56) + 16 * v93);
            v96 = *v95;
            v146 = v95[1];
          }
        }

        v97 = String._bridgeToObjectiveC()();

        [v28 setBusinessChatIdentifier:v97];

        if (*(v30 + 16))
        {
          v98 = sub_10003ADCC(v140, v141);
          if (v99)
          {
            v100 = (*(v30 + 56) + 16 * v98);
            v101 = *v100;
            v102 = v100[1];
          }
        }
      }

      else
      {

        v103 = String._bridgeToObjectiveC()();

        [v28 setBusinessChatIdentifier:v103];
      }

      v104 = String._bridgeToObjectiveC()();

      [v28 setBusinessChatIntentName:v104];
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v128 = *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_60;
  }

  v43 = *a3;
  if (!v43 || (v44 = v43[2]) == 0)
  {

LABEL_60:
    return;
  }

  v45 = v134;
  if (v44 == 1 || !v134 || !v134[2])
  {
    v154 = v40;
    v155 = v42;
    v152 = 0xD000000000000012;
    v153 = 0x80000001006FF100;
    v56 = v43[5];
    v150 = v43[4];
    v151 = v56;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v57 = String._bridgeToObjectiveC()();

    [v28 setDefaultValue:v57];

    defaultLogger()();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "replaced 1 phone numbers", v60, 2u);
    }

    (*(v132 + 8))(v11, v133);
    goto LABEL_22;
  }

  if (!v45[2])
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v47 = v45[5];
  v46 = v45[6];
  if (v30)
  {
    v48 = *(v30 + 16);
    v49 = v45[6];

    if (v48)
    {

      v50 = sub_10003ADCC(v47, v46);
      v52 = v51;

      if (v52)
      {
        v53 = (*(v30 + 56) + 16 * v50);
        v55 = *v53;
        v54 = v53[1];
      }
    }
  }

  else
  {
    v105 = v45[6];
  }

  v106 = String._bridgeToObjectiveC()();

  [v28 setDefaultValue:v106];

  v107 = v43[2];
  if (!v107)
  {
    goto LABEL_71;
  }

  if (v107 != 1)
  {
    v109 = v43[4];
    v108 = v43[5];
    v111 = v43[6];
    v110 = v43[7];

    v112 = [v28 defaultValue];
    if (v112)
    {
      v113 = v112;
      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v134 = v110;
      v115 = v114;
      v130 = v111;
      v117 = v116;

      v154 = v115;
      v155 = v117;
      v152 = 0xD000000000000012;
      v153 = 0x80000001006FF100;
      v150 = v109;
      v151 = v108;
      v118 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v120 = v119;

      v154 = v118;
      v155 = v120;
      v152 = 0xD000000000000014;
      v153 = 0x80000001006FF120;
      v150 = v130;
      v151 = v134;
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v121 = String._bridgeToObjectiveC()();
    }

    else
    {

      v121 = 0;
    }

    v122 = v133;
    v123 = v132;

    [v28 setDefaultValue:v121];

    v124 = v131;
    defaultLogger()();
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&_mh_execute_header, v125, v126, "replaced 2 phone numbers", v127, 2u);
    }

    (*(v123 + 8))(v124, v122);
    goto LABEL_22;
  }

LABEL_72:
  __break(1u);
}
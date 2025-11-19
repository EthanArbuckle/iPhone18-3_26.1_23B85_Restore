uint64_t sub_100002A38(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002D40;

  return sub_100002AD0(a1, v1);
}

uint64_t sub_100002AD0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100002B6C, 0, 0);
}

uint64_t sub_100002B6C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[7];
    v5 = v0[5];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v3;
    v7[5] = v5;
    v8 = v5;
    sub_1001D7F30(0, 0, v4, &unk_1004D23C8, v7);
  }

  v9 = v0[7];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_100002C98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002CE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10004B564(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002D40(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100002E3C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_100002EF4(a1, v5);
}

uint64_t sub_100002EF4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003784;

  return v7(a1);
}

uint64_t sub_100002FEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1000030AC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000030AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000368C;

  return sub_100003148(a5);
}

uint64_t sub_100003148(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100003168, v1, 0);
}

uint64_t sub_100003168()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC13findmylocated12FenceService_connectionPool);
  v2 = *(&async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:) + 1);
  v6 = (&async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:) + async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100003538;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_10000324C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for FenceServiceClient();
  v6 = sub_1000032D4(&qword_1005B09A0, v5, type metadata accessor for FenceServiceClient);

  return static XPCAcceptedClient.== infix(_:_:)(v2, v3, v4, v6);
}

uint64_t sub_1000032D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t *sub_10000331C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100003380(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for FenceServiceClient();
  *(v1 + 24) = swift_allocObject();

  return _swift_task_switch(sub_1000033F8, 0, 0);
}

uint64_t sub_1000033F8()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_defaultActor_initialize();
  *(v2 + 112) = v1;
  v3 = v0[1];
  v4 = v0[3];

  return v3(v4);
}

Swift::Int sub_100003468()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for FenceServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000034C0()
{
  v1 = *v0;
  type metadata accessor for FenceServiceClient();
  sub_1000032D4(&qword_1005B09A0, v2, type metadata accessor for FenceServiceClient);
  return XPCAcceptedClient.hash(into:)();
}

uint64_t sub_100003538()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v5 = *(v2 + 24);

    return _swift_task_switch(sub_10024D3CC, v5, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_100003690()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003788()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003948(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = type metadata accessor for FenceClientRequest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  if (swift_weakLoadStrong())
  {
    v11 = type metadata accessor for PropertyListDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    _Block_copy(a4);
    PropertyListDecoder.init()();
    sub_1000032D4(&qword_1005B09C0, 255, &type metadata accessor for FenceClientRequest);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_10000623C;
    *(v15 + 24) = v10;

    sub_100003E24(v9, sub_100005EFC, v15);

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    sub_1002519F0();
    swift_allocError();
    _Block_copy(a4);
    v14 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v14);
  }
}

uint64_t sub_100003DB4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003DEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v22 = *v3;
  v5 = type metadata accessor for FenceClientRequest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v6 + 32))(v17 + v14, v8, v5);
  *(v17 + v15) = v3;
  v18 = (v17 + v16);
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v22;

  sub_1001D7F30(0, 0, v12, &unk_1004D2368, v17);
}

uint64_t sub_100004070()
{
  v1 = type metadata accessor for FenceClientRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10000417C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003690;

  return sub_100004230(a1, v4, v5, v6);
}

uint64_t sub_100004230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100005FC0;

  return daemon.getter();
}

uint64_t sub_1000042C4(uint64_t a1)
{
  v3 = *(*v2 + 3760);
  v4 = *v2;
  v4[471] = a1;
  v4[472] = v1;

  if (v1)
  {
    v5 = v4[441];

    return _swift_task_switch(sub_10020E684, v5, 0);
  }

  else
  {
    v6 = v4[469];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[473] = v8;
    *v8 = v4;
    v8[1] = sub_10000443C;

    return daemon.getter();
  }
}

uint64_t sub_10000443C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 3784);
  v5 = *v1;
  v3[474] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[475] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_1000093B0(&qword_1005A9118, type metadata accessor for AccountService);
  *v7 = v5;
  v7[1] = sub_100008B48;
  v10 = v3[465];
  v11 = v3[464];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100004610()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t sub_100004640()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_100004670(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000046BC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for Friend();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100024EF4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100237D20(&type metadata accessor for Friend, &qword_1005B0568, &qword_1004D1EB8);
      goto LABEL_12;
    }

    sub_100024BD8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1000093F8(&qword_1005AE9B8, &type metadata accessor for Friend);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100004984(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000049D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100004A24(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FenceClientRequest() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100003690;

  return sub_100004B80(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_100004B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[105] = a7;
  v7[104] = a6;
  v7[103] = a5;
  v7[102] = a4;
  v8 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v7[106] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8) + 64) + 15;
  v7[107] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005B09C8, &qword_1004D2378) - 8) + 64) + 15;
  v7[108] = swift_task_alloc();
  v11 = type metadata accessor for Fence.TriggerPosition();
  v7[109] = v11;
  v12 = *(v11 - 8);
  v7[110] = v12;
  v13 = *(v12 + 64) + 15;
  v7[111] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005B09D0, &unk_1004D2380) - 8) + 64) + 15;
  v7[112] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v7[113] = swift_task_alloc();
  v16 = type metadata accessor for PersonHandle();
  v7[114] = v16;
  v17 = *(v16 - 8);
  v7[115] = v17;
  v18 = *(v17 + 64) + 15;
  v7[116] = swift_task_alloc();
  v19 = type metadata accessor for Fence.ID();
  v7[117] = v19;
  v20 = *(v19 - 8);
  v7[118] = v20;
  v21 = *(v20 + 64) + 15;
  v7[119] = swift_task_alloc();
  v7[120] = swift_task_alloc();
  v7[121] = swift_task_alloc();
  v22 = sub_10004B564(&qword_1005B09D8, &qword_1004D2390);
  v7[122] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v7[123] = swift_task_alloc();
  v24 = type metadata accessor for Fence();
  v7[124] = v24;
  v25 = *(v24 - 8);
  v7[125] = v25;
  v26 = *(v25 + 64) + 15;
  v7[126] = swift_task_alloc();
  v7[127] = swift_task_alloc();
  v7[128] = swift_task_alloc();
  v27 = type metadata accessor for FenceClientRequest();
  v7[129] = v27;
  v28 = *(v27 - 8);
  v7[130] = v28;
  v29 = *(v28 + 64) + 15;
  v7[131] = swift_task_alloc();

  return _swift_task_switch(sub_100004F40, 0, 0);
}

uint64_t sub_100004F40()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  (*(v2 + 16))(v1, v0[102], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for FenceClientRequest.saveFence(_:))
  {
    v5 = v0[131];
    v6 = v0[128];
    v7 = v0[125];
    v8 = v0[124];
    (*(v0[130] + 96))(v5, v0[129]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = swift_task_alloc();
    v0[132] = v9;
    *v9 = v0;
    v9[1] = sub_10024DC8C;
    v10 = v0[128];
    v11 = v0[127];
    v12 = v0[103];

    return sub_100261468(v11, v10);
  }

  if (v4 == enum case for FenceClientRequest.deleteFence(_:))
  {
    v14 = v0[131];
    v15 = v0[121];
    v16 = v0[118];
    v17 = v0[117];
    (*(v0[130] + 96))(v14, v0[129]);
    (*(v16 + 32))(v15, v14, v17);
    v18 = swift_task_alloc();
    v0[134] = v18;
    *v18 = v0;
    v18[1] = sub_10024DFBC;
    v19 = v0[121];
    v20 = v0[103];

    return sub_10026591C(v19);
  }

  if (v4 == enum case for FenceClientRequest.acceptFence(_:))
  {
    v21 = v0[131];
    v22 = v0[120];
    v23 = v0[118];
    v24 = v0[117];
    (*(v0[130] + 96))(v21, v0[129]);
    (*(v23 + 32))(v22, v21, v24);
    v25 = swift_task_alloc();
    v0[143] = v25;
    *v25 = v0;
    v25[1] = sub_10024ECDC;
    v26 = v0[126];
    v27 = v0[120];
    v28 = v0[103];

    return sub_1002684B8(v26, v27);
  }

  if (v4 == enum case for FenceClientRequest.muteFences(_:))
  {
    v29 = v0[131];
    v30 = v0[125];
    v31 = v0[124];
    v32 = v0[116];
    v33 = v0[115];
    v34 = v0[114];
    v35 = v0[113];
    v36 = v0[112];
    (*(v0[130] + 96))(v29, v0[129]);
    v37 = *(sub_10004B564(&qword_1005B09E8, &qword_1004D23A0) + 48);
    (*(v33 + 32))(v32, v29, v34);
    sub_1001A5538(v29 + v37, v35);
    (*(v30 + 56))(v36, 1, 1, v31);
    v38 = swift_task_alloc();
    v0[145] = v38;
    *v38 = v0;
    v38[1] = sub_10024F018;
    v39 = v0[116];
    v40 = v0[113];
    v41 = v0[112];
    v42 = v0[103];

    return sub_1002695FC(v39, v40, v41);
  }

  if (v4 == enum case for FenceClientRequest.triggerFence(_:))
  {
    v43 = v0[131];
    v44 = v0[119];
    v45 = v0[118];
    v46 = v0[117];
    v47 = v0[111];
    v48 = v0[110];
    v49 = v0[109];
    v50 = v0[107];
    (*(v0[130] + 96))(v43, v0[129]);
    v51 = *(sub_10004B564(&qword_1005B09E0, &qword_1004D2398) + 48);
    (*(v45 + 32))(v44, v43, v46);
    (*(v48 + 32))(v47, v43 + v51, v49);
    v52 = type metadata accessor for Fence.AcceptanceStatus();
    (*(*(v52 - 8) + 56))(v50, 1, 1, v52);
    v53 = swift_task_alloc();
    v0[147] = v53;
    *v53 = v0;
    v53[1] = sub_10024F358;
    v54 = v0[119];
    v55 = v0[111];
    v56 = v0[108];
    v57 = v0[107];
    v58 = v0[103];

    return sub_1002789EC(v56, v54, v55, v57);
  }

  if (v4 == enum case for FenceClientRequest.fences(_:))
  {
    v59 = async function pointer to daemon.getter[1];
    v60 = swift_task_alloc();
    v0[136] = v60;
    *v60 = v0;
    v61 = sub_10024E2B4;
LABEL_23:
    v60[1] = v61;

    return daemon.getter();
  }

  if (v4 == enum case for FenceClientRequest.startStreaming(_:))
  {
    v62 = v0[103];

    return _swift_task_switch(sub_1000057C8, v62, 0);
  }

  else
  {
    if (v4 == enum case for FenceClientRequest.forceRefreshClient(_:))
    {
      v63 = async function pointer to daemon.getter[1];
      v60 = swift_task_alloc();
      v0[149] = v60;
      *v60 = v0;
      v61 = sub_10024F6DC;
      goto LABEL_23;
    }

    v64 = v0[131];
    v65 = v0[130];
    v66 = v0[129];
    v67 = v0[123];
    v68 = v0[122];
    v69 = v0[105];
    v70 = v0[104];
    sub_10005CF04();
    v71 = swift_allocError();
    *v72 = 1;
    *v67 = v71;
    swift_storeEnumTagMultiPayload();
    v70(v67);
    sub_100002CE0(v67, &qword_1005B09D8, &qword_1004D2390);
    (*(v65 + 8))(v64, v66);
    v73 = v0[131];
    v74 = v0[128];
    v75 = v0[127];
    v76 = v0[126];
    v77 = v0[123];
    v78 = v0[121];
    v79 = v0[120];
    v80 = v0[119];
    v81 = v0[116];
    v82 = v0[113];
    v84 = v0[112];
    v85 = v0[111];
    v86 = v0[108];
    v87 = v0[107];
    v88 = v0[106];

    v83 = v0[1];

    return v83();
  }
}

uint64_t sub_1000057C8()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = sub_1000032D4(&qword_1005AF4A8, 255, type metadata accessor for FenceService);
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v2;
  swift_retain_n();
  sub_10020D620(0, 0, v1, &unk_1004D0730, v5);

  return _swift_task_switch(sub_100005918, 0, 0);
}

uint64_t sub_100005918()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[105];
  v4 = v0[104];
  v5 = enum case for FenceResponse.void(_:);
  v6 = type metadata accessor for FenceResponse();
  (*(*(v6 - 8) + 104))(v1, v5, v6);
  swift_storeEnumTagMultiPayload();
  v4(v1);
  sub_100002CE0(v1, &qword_1005B09D8, &qword_1004D2390);
  v7 = v0[131];
  v8 = v0[128];
  v9 = v0[127];
  v10 = v0[126];
  v11 = v0[123];
  v12 = v0[121];
  v13 = v0[120];
  v14 = v0[119];
  v15 = v0[116];
  v16 = v0[113];
  v19 = v0[112];
  v20 = v0[111];
  v21 = v0[108];
  v22 = v0[107];
  v23 = v0[106];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100005AD8(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = type metadata accessor for FenceResponse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005B09D8, &qword_1004D2390);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v28 - v11);
  sub_100005F04(a1, &v28 - v11, &qword_1005B09D8, &qword_1004D2390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1005A80F0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFFA0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v17 = 136446466;
      *(v17 + 4) = sub_10000D01C(0xD000000000000016, 0x80000001004E5C30, &v29);
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v20;
      *v18 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: %{public}@", v17, 0x16u);
      sub_100002CE0(v18, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v19);
    }

    swift_errorRetain();
    a2(0, 0xF000000000000000, v13);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v22 = type metadata accessor for PropertyListEncoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1000032D4(&qword_1005B09F0, 255, &type metadata accessor for FenceResponse);
    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v27 = v26;
    sub_100005F6C(v25, v26);
    a2(v25, v27, 0);
    sub_1000049D0(v25, v27);

    sub_1000049D0(v25, v27);
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100005F04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004B564(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005F6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005FC0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000032D4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1000032D4(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10000629C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

void sub_1000061A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_100006264(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000629C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_100250F70, v7, 0);
  }

  else
  {
    v8 = v4[4];

    v9 = swift_task_alloc();
    v4[8] = v9;
    *v9 = v6;
    v9[1] = sub_100012068;

    return sub_100006424();
  }
}

uint64_t sub_100006424()
{
  v1[441] = v0;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v1[442] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[443] = v3;
  v4 = *(v3 - 8);
  v1[444] = v4;
  v5 = *(v4 + 64) + 15;
  v1[445] = swift_task_alloc();
  v6 = *(type metadata accessor for FenceRecord() - 8);
  v1[446] = v6;
  v7 = *(v6 + 64) + 15;
  v1[447] = swift_task_alloc();
  v1[448] = swift_task_alloc();
  v1[449] = swift_task_alloc();
  v1[450] = swift_task_alloc();
  v8 = type metadata accessor for Friend();
  v1[451] = v8;
  v9 = *(v8 - 8);
  v1[452] = v9;
  v10 = *(v9 + 64) + 15;
  v1[453] = swift_task_alloc();
  v11 = type metadata accessor for Handle();
  v1[454] = v11;
  v12 = *(v11 - 8);
  v1[455] = v12;
  v13 = *(v12 + 64) + 15;
  v1[456] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v1[457] = swift_task_alloc();
  v15 = type metadata accessor for Account();
  v1[458] = v15;
  v16 = *(v15 - 8);
  v1[459] = v16;
  v17 = *(v16 + 64) + 15;
  v1[460] = swift_task_alloc();
  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v1[461] = v19;
  *v19 = v1;
  v19[1] = sub_100006760;

  return daemon.getter();
}

uint64_t type metadata accessor for FenceRecord()
{
  result = qword_1005AE690;
  if (!qword_1005AE690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006760(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 3688);
  v12 = *v1;
  v3[462] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[463] = v6;
  v7 = type metadata accessor for Daemon();
  v3[464] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000093B0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[465] = v9;
  v10 = sub_1000093B0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1000069F4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100006964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000069AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000069F4(uint64_t a1)
{
  v3 = *(*v2 + 3704);
  v4 = *v2;
  v4[466] = a1;
  v4[467] = v1;

  if (v1)
  {
    v5 = v4[441];

    return _swift_task_switch(sub_10020E330, v5, 0);
  }

  else
  {
    v6 = v4[462];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[468] = v8;
    *v8 = v4;
    v8[1] = sub_100006B6C;

    return daemon.getter();
  }
}

uint64_t sub_100006B6C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 3744);
  v5 = *v1;
  v3[469] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[470] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000093B0(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_1000042C4;
  v10 = v3[465];
  v11 = v3[464];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100006D44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006D8C()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

size_t sub_100006DC4(size_t a1, int64_t a2, char a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B00D8, &qword_1004D1668, type metadata accessor for FriendRecord);
  *v3 = result;
  return result;
}

uint64_t sub_100006E08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100006E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100006EC8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = type metadata accessor for DatabaseState();
  (*(*(v6 - 8) + 16))(a1, v3 + v4, v6);

  os_unfair_lock_unlock((v3 + v5));
}

unint64_t sub_100006F90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001616C(a5, a6);
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

uint64_t sub_10000709C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007100()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_10000722C, v3, 0);
}

uint64_t sub_10000722C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  swift_beginAccess();
  sub_100005F04(v1 + v3, v2, &qword_1005A9110, &qword_1004C25F8);
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000072D0()
{
  v1 = *(*v0 + 3848);
  v2 = *(*v0 + 3528);
  v4 = *v0;

  return _swift_task_switch(sub_1000073E0, v2, 0);
}

uint64_t sub_1000073E0()
{
  v39 = v0;
  v1 = v0[459];
  v2 = v0[458];
  v3 = v0[457];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[480];
    v5 = v0[476];
    v6 = v0[471];
    v7 = v0[466];

    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    sub_10005CF04();
    v8 = swift_allocError();
    *v9 = 3;
    swift_willThrow();

    sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1004C1900;
    *(v10 + 32) = 33;
    v11 = sub_10004C9A8(v8);
    *(v10 + 64) = &type metadata for String;
    *(v10 + 72) = &off_10058C398;
    *(v10 + 40) = v11;
    *(v10 + 48) = v12;
    v13 = sub_1000105C0(v10);
    swift_setDeallocating();
    sub_100002CE0(v10 + 32, &qword_1005A8790, &qword_1004C0EB0);
    swift_deallocClassInstance();
    v14 = sub_10004C68C(3u, v13);
    v16 = v15;
    v18 = v17;

    sub_10001157C(v14, v16, v18);

    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFF18);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v22 = 136446466;
      *(v22 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v38);
      *(v22 + 12) = 2114;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s failed: %{public}@", v22, 0x16u);
      sub_100002CE0(v23, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v24);
    }

    v26 = v0[460];
    v27 = v0[457];
    v28 = v0[456];
    v29 = v0[453];
    v30 = v0[450];
    v31 = v0[449];
    v32 = v0[448];
    v33 = v0[447];
    v34 = v0[445];
    v35 = v0[442];

    v36 = v0[1];

    return v36(&_swiftEmptyArrayStorage);
  }

  else
  {
    (*(v1 + 32))(v0[460], v3, v2);

    return _swift_task_switch(sub_100007834, 0, 0);
  }
}

uint64_t sub_100007834()
{
  v1 = *(*(v0 + 3768) + 128);
  v2 = swift_task_alloc();
  *(v0 + 3856) = v2;
  *v2 = v0;
  v2[1] = sub_10000826C;

  return sub_1000078C8();
}

uint64_t sub_1000078E8()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_10000790C, v1, 0);
}

uint64_t sub_10000790C()
{
  v1 = *(v0 + 64);
  type metadata accessor for CloudStorageDatabase();
  sub_1001CC028(&qword_1005AF100, type metadata accessor for CloudStorageDatabase);
  *(v0 + 72) = Database.readConnection.getter();

  return _swift_task_switch(sub_100007A54, 0, 0);
}

uint64_t type metadata accessor for CloudStorageDatabase()
{
  result = qword_1005AEF28;
  if (!qword_1005AEF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007A0C()
{
  v1 = OBJC_IVAR____TtC13findmylocated20CloudStorageDatabase_connectionPair;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100007A54()
{
  if (v0[9])
  {
    if (qword_1005A8000 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Table();
    v2 = sub_10000A6F0(v1, qword_1005DFD08);
    v0[5] = v1;
    v0[6] = &protocol witness table for Table;
    v3 = sub_10000331C(v0 + 2);
    (*(*(v1 - 8) + 16))(v3, v2, v1);
    v4 = sub_100007C60();

    sub_100004984(v0 + 2);
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = type metadata accessor for DatabaseError();
    sub_1001CC028(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for DatabaseError.notConnected(_:), v7);
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100007C60()
{
  v0 = type metadata accessor for FenceRecord();
  v60 = *(v0 - 8);
  v1 = *(v60 + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v59 = (v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v5 = v51 - v4;
  v6 = sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v51 - v11;
  v13 = type metadata accessor for Row();
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v51 - v19;
  __chkstk_darwin(v18);
  v22 = v51 - v21;
  v23 = v61;
  result = Connection.prepare(_:)();
  if (!v23)
  {
    v57 = v17;
    v58 = v13;
    v52 = v20;
    v53 = v22;
    v54 = v12;
    v51[0] = v5;
    v25 = result;

    v26 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
    v62 = &_swiftEmptyArrayStorage;
    sub_10001910C(0, v26 & ~(v26 >> 63), 0);
    v27 = v62;
    v51[1] = v25;
    result = dispatch thunk of _AnySequenceBox._makeIterator()();
    v61 = result;
    if (v26 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    if (v26)
    {
      v28 = (v55 + 48);
      v29 = (v55 + 16);
      v56 = (v55 + 8);
      v30 = v58;
      while (1)
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v28)(v10, 1, v30);
        if (result == 1)
        {
          goto LABEL_19;
        }

        v31 = v57;
        (*v29)(v57, v10, v30);
        v32 = v59;
        sub_1001C56C8(v31, v59);
        (*v56)(v10, v30);
        v62 = v27;
        v34 = v27[2];
        v33 = v27[3];
        if (v34 >= v33 >> 1)
        {
          sub_10001910C(v33 > 1, v34 + 1, 1);
          v32 = v59;
          v27 = v62;
        }

        v27[2] = v34 + 1;
        sub_1001CCB04(v32, v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v34, type metadata accessor for FenceRecord);
        --v26;
        v30 = v58;
        if (!v26)
        {
          goto LABEL_11;
        }
      }
    }

    v30 = v58;
LABEL_11:
    v35 = v54;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v36 = v35;
    v37 = v55;
    v59 = *(v55 + 48);
    if ((v59)(v35, 1, v30) != 1)
    {
      v39 = *(v37 + 32);
      v38 = v37 + 32;
      v58 = v39;
      v40 = (v38 - 16);
      v55 = v38;
      v41 = (v38 - 24);
      v42 = v51[0];
      do
      {
        v43 = v53;
        v58(v53, v36, v30);
        v44 = v52;
        (*v40)(v52, v43, v30);
        sub_1001C56C8(v44, v42);
        v45 = v42;
        (*v41)(v43, v30);
        v62 = v27;
        v46 = v30;
        v48 = v27[2];
        v47 = v27[3];
        if (v48 >= v47 >> 1)
        {
          sub_10001910C(v47 > 1, v48 + 1, 1);
          v45 = v51[0];
          v27 = v62;
        }

        v27[2] = v48 + 1;
        sub_1001CCB04(v45, v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v48, type metadata accessor for FenceRecord);
        v49 = v54;
        v42 = v45;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v36 = v49;
        v50 = (v59)(v49, 1, v46);
        v30 = v46;
      }

      while (v50 != 1);
    }

    sub_100002CE0(v36, &qword_1005AF468, &qword_1004D06C0);
    sub_10004B564(&qword_1005AF470, &qword_1004D06C8);
    result = swift_allocObject();
    *(result + 16) = v27;
  }

  return result;
}

uint64_t sub_10000826C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3856);
  v6 = *v2;
  *(*v2 + 3864) = v1;

  if (v1)
  {
    v7 = sub_10020DB88;
  }

  else
  {
    *(v4 + 3872) = a1;
    v7 = sub_100008394;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100008394()
{
  v1 = v0[484];
  v2 = v0[466];
  v0[485] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  return _swift_task_switch(sub_10000F1E4, v2, 0);
}

uint64_t sub_100008414()
{
  v1[153] = v0;
  v2 = *(*(sub_10004B564(&qword_1005AF468, &qword_1004D06C0) - 8) + 64) + 15;
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v3 = type metadata accessor for Row();
  v1[156] = v3;
  v4 = *(v3 - 8);
  v1[157] = v4;
  v5 = *(v4 + 64) + 15;
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();

  return _swift_task_switch(sub_10000F5EC, 0, 0);
}

uint64_t sub_100008530()
{
  if (!v0[163])
  {
    v5 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DatabaseError.notConnected(_:), v5);
    swift_willThrow();
    goto LABEL_7;
  }

  if (qword_1005A8158 != -1)
  {
    swift_once();
  }

  v1 = v0[162];
  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E00D8);
  v0[151] = v2;
  v0[152] = &protocol witness table for Table;
  v4 = sub_10000331C(v0 + 148);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  Connection.prepare(_:)();
  if (v1)
  {

    sub_100004984(v0 + 148);
LABEL_7:
    v7 = v0[160];
    v8 = v0[159];
    v9 = v0[158];
    v10 = v0[155];
    v11 = v0[154];

    v12 = v0[1];

    return v12();
  }

  sub_100004984(v0 + 148);
  v14 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  sub_10000F708(0, v14 & ~(v14 >> 63), 0);
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  if (v14 < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (v14)
  {
    v15 = v0[157];
    v16 = (v15 + 48);
    v17 = (v15 + 16);
    v18 = (v15 + 8);
    do
    {
      v19 = v0[156];
      v20 = v0[154];
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v16)(v20, 1, v19);
      if (result == 1)
      {
        goto LABEL_27;
      }

      v21 = v0[158];
      (*v17)(v21, v0[154], v0[156]);
      sub_10033C560(v21, (v0 + 2));
      (*v18)(v0[154], v0[156]);
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_10000F708((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      memcpy(&_swiftEmptyArrayStorage[73 * v23 + 4], v0 + 2, 0x241uLL);
    }

    while (--v14);
  }

  v24 = v0[157];
  v25 = v0[156];
  v26 = v0[155];
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v44 = *(v24 + 48);
  if (v44(v26, 1, v25) != 1)
  {
    v33 = v0[157];
    v43 = *(v33 + 32);
    v34 = (v33 + 16);
    v35 = (v33 + 8);
    do
    {
      v36 = v0[160];
      v37 = v0[159];
      v38 = v0[156];
      v43(v36, v0[155], v38);
      (*v34)(v37, v36, v38);
      sub_10033C560(v37, (v0 + 75));
      (*v35)(v0[160], v0[156]);
      v40 = _swiftEmptyArrayStorage[2];
      v39 = _swiftEmptyArrayStorage[3];
      if (v40 >= v39 >> 1)
      {
        sub_10000F708((v39 > 1), v40 + 1, 1);
      }

      v41 = v0[156];
      v42 = v0[155];
      _swiftEmptyArrayStorage[2] = v40 + 1;
      memcpy(&_swiftEmptyArrayStorage[73 * v40 + 4], v0 + 75, 0x241uLL);
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (v44(v42, 1, v41) != 1);
  }

  v27 = v0[160];
  v28 = v0[159];
  v29 = v0[158];
  v30 = v0[155];
  v31 = v0[154];

  sub_100002CE0(v30, &qword_1005AF468, &qword_1004D06C0);

  v32 = v0[1];

  return v32(_swiftEmptyArrayStorage);
}

uint64_t sub_100008B24()
{
  v1 = v0[441];
  v0[488] = v0[440];
  return _swift_task_switch(sub_10000F8DC, v1, 0);
}

uint64_t sub_100008B48(uint64_t a1)
{
  v3 = *(*v2 + 3800);
  v4 = *v2;
  v4[476] = a1;
  v4[477] = v1;

  if (v1)
  {
    v5 = v4[441];

    return _swift_task_switch(sub_10020E9E4, v5, 0);
  }

  else
  {
    v6 = v4[474];

    v7 = swift_task_alloc();
    v4[478] = v7;
    *v7 = v4;
    v7[1] = sub_10000E7C8;
    v8 = v4[441];

    return sub_100008CC0();
  }
}

uint64_t sub_100008CC0()
{
  *(v1 + 24) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_100008D54;

  return daemon.getter();
}

uint64_t sub_100008D54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000093F8(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1000097E8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100008F30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008F78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008FC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000090E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000091B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000092D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000093B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000093F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000094D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000095A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000095F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000096C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000097A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000097E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = v4[3];

    return _swift_task_switch(sub_10021C2F0, v7, 0);
  }

  else
  {
    v8 = v4[5];

    v9 = swift_task_alloc();
    v4[9] = v9;
    *v9 = v6;
    v9[1] = sub_10000E51C;

    return sub_100009970();
  }
}

uint64_t sub_100009970()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return _swift_task_switch(sub_1000099B8, 0, 0);
}

uint64_t sub_1000099B8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = sub_10004B564(&qword_1005B0578, &qword_1004D5CA0);
  *v5 = v0;
  v5[1] = sub_10000E400;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x6E656972466C6C61, 0xEC00000029287364, sub_100009CCC, v3, v6);
}

uint64_t sub_100009AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v15 = *(a2 + 136);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100009CD4()
{
  v2 = *(sub_10004B564(&qword_1005B1C48, &qword_1004D5C78) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100003690;

  return sub_100009DE8(v4, v0 + v3);
}

uint64_t sub_100009DE8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for FriendRecord(0);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005B0B88, &qword_1004D5CC0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100009F18, 0, 0);
}

uint64_t sub_100009F18()
{
  v1 = *(*(v0 + 32) + 128);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10000C71C;

  return sub_100009FAC();
}

uint64_t sub_100009FCC()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_100009FF0, v1, 0);
}

uint64_t sub_100009FF0()
{
  v1 = *(v0 + 64);
  sub_10000A0A4();
  *(v0 + 72) = 0;
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_10000A39C, v2, 0);
}

void sub_10000A0A4()
{
  v0 = type metadata accessor for SystemInfo.DeviceLockState();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  static SystemInfo.lockState.getter();
  (*(v1 + 104))(v5, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v0);
  sub_100006D44(&qword_1005B19E8, &type metadata accessor for SystemInfo.DeviceLockState);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if (v8)
  {
    if (qword_1005A8128 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005B1890);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_10000D01C(0x7261745365666173, 0xED00002928707574, &v16);
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s Not starting up before first unlock!", v13, 0xCu);
      sub_100004984(v14);
    }
  }

  else
  {
    type metadata accessor for LocalStorageDatabase();
    sub_100006D44(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
    Database.startup()();
  }
}

uint64_t sub_10000A39C()
{
  v1 = *(v0 + 64);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 80) = Database.readConnection.getter();

  return _swift_task_switch(sub_10000A4E4, 0, 0);
}

uint64_t type metadata accessor for LocalStorageDatabase()
{
  result = qword_1005B18D0;
  if (!qword_1005B18D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A49C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A4E4()
{
  if (v0[10])
  {
    if (qword_1005A8138 != -1)
    {
      swift_once();
    }

    v1 = v0[9];
    v2 = type metadata accessor for Table();
    v3 = sub_10000A6F0(v2, qword_1005E0078);
    v0[5] = v2;
    v0[6] = &protocol witness table for Table;
    v4 = sub_10000331C(v0 + 2);
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    v5 = sub_10000A728();

    sub_100004984(v0 + 2);
    if (!v1)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {
    v8 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for DatabaseError.notConnected(_:), v8);
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000A6F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000A728()
{
  v0 = type metadata accessor for FriendRecord(0);
  v60 = *(v0 - 8);
  v1 = *(v60 + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v59 = (v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v5 = v51 - v4;
  v6 = sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v51 - v11;
  v13 = type metadata accessor for Row();
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v51 - v19;
  __chkstk_darwin(v18);
  v22 = v51 - v21;
  v23 = v61;
  result = Connection.prepare(_:)();
  if (!v23)
  {
    v57 = v17;
    v58 = v13;
    v52 = v20;
    v53 = v22;
    v54 = v12;
    v51[0] = v5;
    v25 = result;

    v26 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
    v62 = &_swiftEmptyArrayStorage;
    sub_100006DC4(0, v26 & ~(v26 >> 63), 0);
    v27 = v62;
    v51[1] = v25;
    result = dispatch thunk of _AnySequenceBox._makeIterator()();
    v61 = result;
    if (v26 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    if (v26)
    {
      v28 = (v55 + 48);
      v29 = (v55 + 16);
      v56 = (v55 + 8);
      v30 = v58;
      while (1)
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v28)(v10, 1, v30);
        if (result == 1)
        {
          goto LABEL_19;
        }

        v31 = v57;
        (*v29)(v57, v10, v30);
        v32 = v59;
        sub_10000AD34(v31, v59);
        (*v56)(v10, v30);
        v62 = v27;
        v34 = v27[2];
        v33 = v27[3];
        if (v34 >= v33 >> 1)
        {
          sub_100006DC4(v33 > 1, v34 + 1, 1);
          v32 = v59;
          v27 = v62;
        }

        v27[2] = v34 + 1;
        sub_10033C458(v32, v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v34, type metadata accessor for FriendRecord);
        --v26;
        v30 = v58;
        if (!v26)
        {
          goto LABEL_11;
        }
      }
    }

    v30 = v58;
LABEL_11:
    v35 = v54;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v36 = v35;
    v37 = v55;
    v59 = *(v55 + 48);
    if ((v59)(v35, 1, v30) != 1)
    {
      v39 = *(v37 + 32);
      v38 = v37 + 32;
      v58 = v39;
      v40 = (v38 - 16);
      v55 = v38;
      v41 = (v38 - 24);
      v42 = v51[0];
      do
      {
        v43 = v53;
        v58(v53, v36, v30);
        v44 = v52;
        (*v40)(v52, v43, v30);
        sub_10000AD34(v44, v42);
        v45 = v42;
        (*v41)(v43, v30);
        v62 = v27;
        v46 = v30;
        v48 = v27[2];
        v47 = v27[3];
        if (v48 >= v47 >> 1)
        {
          sub_100006DC4(v47 > 1, v48 + 1, 1);
          v45 = v51[0];
          v27 = v62;
        }

        v27[2] = v48 + 1;
        sub_10033C458(v45, v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v48, type metadata accessor for FriendRecord);
        v49 = v54;
        v42 = v45;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v36 = v49;
        v50 = (v59)(v49, 1, v46);
        v30 = v46;
      }

      while (v50 != 1);
    }

    sub_100002CE0(v36, &qword_1005AF468, &qword_1004D06C0);
    sub_10004B564(&qword_1005B1DD8, &qword_1004D6078);
    result = swift_allocObject();
    *(result + 16) = v27;
  }

  return result;
}

uint64_t sub_10000AD34@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v3 = v2;
  v6 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v117 = v108 - v8;
  v9 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v115 = v108 - v11;
  v12 = type metadata accessor for FriendRecord(0);
  v13 = v12[36];
  v14 = type metadata accessor for Handle();
  v15 = *(v14 - 1);
  v16 = *(v15 + 56);
  v140 = v13;
  v120 = v14;
  v119 = v16;
  v118 = v15 + 56;
  (v16)(a2 + v13, 1, 1);
  if (qword_1005A81A8 != -1)
  {
    swift_once();
  }

  v137 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v137, qword_1005E01E0);
  Row.subscript.getter();
  v17 = v143;
  *a2 = v142;
  a2[1] = v17;
  v131 = v17;
  if (qword_1005A81B0 != -1)
  {
    swift_once();
  }

  v18 = sub_10004B564(&qword_1005B1A08, &qword_1004D5FF0);
  sub_10000A6F0(v18, qword_1005E01F8);
  Row.subscript.getter();
  v19 = v143;
  a2[2] = v142;
  a2[3] = v19;
  v130 = v19;
  if (qword_1005A81B8 != -1)
  {
    swift_once();
  }

  v139 = sub_10004B564(&qword_1005B1A10, &unk_1004D5800);
  sub_10000A6F0(v139, qword_1005E0210);
  Row.subscript.getter();
  if (v143 == 1)
  {
    v20 = v12[6];
    v21 = type metadata accessor for IDSStatus();
    (*(*(v21 - 8) + 56))(a2 + v20, 1, 1, v21);
  }

  else
  {
    v22 = a2 + v12[6];
    IDSStatus.init(rawValue:)();
  }

  v23 = v12[16];
  if (qword_1005A81C0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E0228);
  Row.subscript.getter();
  v24 = v143;
  v25 = (a2 + v12[7]);
  *v25 = v142;
  v25[1] = v24;
  v129 = v24;
  if (qword_1005A81C8 != -1)
  {
    swift_once();
  }

  v26 = sub_10004B564(&qword_1005B1A18, &qword_1004D5810);
  sub_10000A6F0(v26, qword_1005E0240);
  Row.subscript.getter();
  *(a2 + v12[8]) = v142;
  if (qword_1005A81D0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E0258);
  Row.subscript.getter();
  v27 = v143;
  v28 = (a2 + v12[9]);
  *v28 = v142;
  v28[1] = v27;
  v128 = v27;
  if (qword_1005A81D8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E0270);
  Row.subscript.getter();
  v29 = v143;
  v30 = (a2 + v12[10]);
  *v30 = v142;
  v30[1] = v29;
  v127 = v29;
  if (qword_1005A81E0 != -1)
  {
    swift_once();
  }

  v138 = sub_10004B564(&qword_1005B1A20, &qword_1004D5818);
  sub_10000A6F0(v138, qword_1005E0288);
  Row.subscript.getter();
  *(a2 + v12[11]) = v142;
  if (qword_1005A81F0 != -1)
  {
    swift_once();
  }

  v31 = (a2 + v23);
  sub_10000A6F0(v18, qword_1005E02B8);
  Row.subscript.getter();
  v32 = v143;
  v33 = (a2 + v12[13]);
  *v33 = v142;
  v33[1] = v32;
  v126 = v32;
  if (qword_1005A81F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E02D0);
  Row.subscript.getter();
  v34 = v143;
  v35 = (a2 + v12[14]);
  *v35 = v142;
  v35[1] = v34;
  v125 = v34;
  if (qword_1005A8208 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E0300);
  Row.subscript.getter();
  v36 = v143;
  *v31 = v142;
  v31[1] = v36;
  v124 = v36;
  if (qword_1005A81E8 != -1)
  {
    swift_once();
  }

  v37 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v37, qword_1005E02A0);
  Row.subscript.getter();
  v38 = v143;
  if (v143 >> 60 == 15)
  {
    v39 = 0;
    v123 = 0;
  }

  else
  {
    v136 = v37;
    v40 = v142;
    v41 = type metadata accessor for PropertyListDecoder();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9E80);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v3 = v2;
    if (v2)
    {

      sub_10001A794(v40, v38);

      v39 = 0;
      v123 = 0;
      v3 = 0;
    }

    else
    {
      sub_10001A794(v40, v38);

      v39 = v142;
      v123 = v142;
    }

    v37 = v136;
  }

  *(a2 + v12[12]) = v39;
  if (qword_1005A8200 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v137, qword_1005E02E8);
  Row.subscript.getter();
  v44 = v143;
  v45 = (a2 + v12[15]);
  *v45 = v142;
  v45[1] = v44;
  v122 = v44;
  if (qword_1005A8210 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E0318);
  Row.subscript.getter();
  v46 = v143;
  v47 = (a2 + v12[17]);
  v114 = v142;
  *v47 = v142;
  v47[1] = v46;
  if (qword_1005A8218 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E0330);
  Row.subscript.getter();
  v48 = v143;
  v49 = (a2 + v12[18]);
  v113 = v142;
  *v49 = v142;
  v49[1] = v48;
  v137 = v48;
  if (qword_1005A8220 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v139, qword_1005E0348);
  Row.subscript.getter();
  if (v143 == 1)
  {
    v50 = v12[19];
    v51 = type metadata accessor for IDSStatus();
    (*(*(v51 - 8) + 56))(a2 + v50, 1, 1, v51);
  }

  else
  {
    v52 = a2 + v12[19];
    IDSStatus.init(rawValue:)();
  }

  if (qword_1005A8228 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E0360);
  Row.subscript.getter();
  v53 = v143;
  v54 = (a2 + v12[20]);
  v112 = v142;
  *v54 = v142;
  v54[1] = v53;
  v136 = v53;
  if (qword_1005A8238 != -1)
  {
    swift_once();
  }

  v55 = sub_10004B564(&qword_1005B1A28, &unk_1004D5820);
  sub_10000A6F0(v55, qword_1005E0390);
  Row.subscript.getter();
  v56 = v143;
  v57 = a2 + v12[22];
  v111 = v142;
  *v57 = v142;
  v116 = v56;
  v57[8] = v56;
  if (qword_1005A8240 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E03A8);
  Row.subscript.getter();
  v58 = v143;
  v59 = (a2 + v12[23]);
  *v59 = v142;
  v59[1] = v58;
  v121 = v58;
  if (qword_1005A8248 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E03C0);
  Row.subscript.getter();
  v60 = v143;
  v61 = (a2 + v12[24]);
  v110 = v142;
  *v61 = v142;
  v61[1] = v60;
  v135 = v60;
  if (qword_1005A8250 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v138, qword_1005E03D8);
  Row.subscript.getter();
  v62 = v12[25];
  v109 = v142;
  *(a2 + v62) = v142;
  if (qword_1005A8260 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E0408);
  Row.subscript.getter();
  v63 = v143;
  v64 = (a2 + v12[27]);
  v108[3] = v142;
  *v64 = v142;
  v64[1] = v63;
  v138 = v63;
  if (qword_1005A8268 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v18, qword_1005E0420);
  Row.subscript.getter();
  v65 = v143;
  v66 = (a2 + v12[28]);
  v108[2] = v142;
  *v66 = v142;
  v66[1] = v65;
  v134 = v65;
  if (qword_1005A8270 != -1)
  {
    swift_once();
  }

  v139 = v46;
  sub_10000A6F0(v18, qword_1005E0438);
  Row.subscript.getter();
  v67 = v143;
  v68 = (a2 + v12[29]);
  v108[1] = v142;
  *v68 = v142;
  v68[1] = v67;
  v133 = v67;
  if (qword_1005A8258 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v37, qword_1005E03F0);
  Row.subscript.getter();
  v69 = v143;
  if (v143 >> 60 == 15)
  {
    v70 = 0;
  }

  else
  {
    v71 = v142;
    v72 = type metadata accessor for PropertyListDecoder();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9E80);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v3)
    {

      sub_10001A794(v71, v69);

      v70 = 0;
      v3 = 0;
    }

    else
    {
      sub_10001A794(v71, v69);

      v70 = v142;
    }
  }

  v75 = v12[26];
  v132 = v70;
  *(a2 + v75) = v70;
  if (qword_1005A8230 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v37, qword_1005E0378);
  Row.subscript.getter();
  v76 = v143;
  if (v143 >> 60 == 15)
  {
    v77 = 0;
  }

  else
  {
    v78 = v142;
    v79 = type metadata accessor for PropertyListDecoder();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005AE840, &qword_1004CF2E8);
    sub_10001C960();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v3)
    {

      sub_10001A794(v78, v76);

      v77 = 0;
      v3 = 0;
    }

    else
    {
      sub_10001A794(v78, v76);

      v77 = v142;
    }
  }

  *(a2 + v12[21]) = v77;
  if (qword_1005A8278 != -1)
  {
    swift_once();
  }

  v82 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  sub_10000A6F0(v82, qword_1005E0450);
  Row.subscript.getter();
  *(a2 + v12[30]) = v142;
  if (qword_1005A8280 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v82, qword_1005E0468);
  Row.subscript.getter();
  *(a2 + v12[31]) = v142;
  if (qword_1005A8288 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v82, qword_1005E0480);
  Row.subscript.getter();
  *(a2 + v12[32]) = v142;
  if (qword_1005A8290 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v82, qword_1005E0498);
  Row.subscript.getter();
  *(a2 + v12[33]) = v142;
  if (qword_1005A8298 != -1)
  {
    swift_once();
  }

  v83 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v83, qword_1005E04B0);
  Row.subscript.getter();
  v84 = v142;
  v85 = v143;
  v86 = type metadata accessor for PropertyListDecoder();
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10004B564(&qword_1005B1DE0, &qword_1004D6080);
  sub_10001D550();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {

    v98 = sub_100017710(v142);

    *(a2 + v12[34]) = v98;
    if (qword_1005A82A0 != -1)
    {
      swift_once();
    }

    v99 = sub_10004B564(&qword_1005B1A30, &qword_1004D6050);
    sub_10000A6F0(v99, qword_1005E04C8);
    sub_10001D2D8();
    Row.subscript.getter();
    *(a2 + v12[35]) = v142;
    if (v139)
    {
      if (v77)
      {
        if ((v116 & 1) == 0)
        {
          sub_100005F04(a2 + v12[19], v117, &qword_1005AE998, &unk_1004D6030);
          v108[0] = v77;

          swift_bridgeObjectRetain_n();

          v131 = 0;

          v106 = v115;
          Handle.init(withID:qualifiedIdentifier:serverID:idsStatus:dsid:expiresByGroupId:trackingTimestamp:hashedDSID:favoriteOrder:reachable:pushIdentifiers:prettyName:contactIdentifier:siblingIdentifiers:)();
          sub_1000049D0(v84, v85);
          v107 = type metadata accessor for Row();
          (*(*(v107 - 8) + 8))(a1, v107);
          v119(v106, 0, 1, v120);
          return sub_1000228E0(v106, a2 + v140);
        }

        v100 = type metadata accessor for Row();
        v101 = *(*(v100 - 8) + 8);

        v101(a1, v100);
        sub_1000049D0(v84, v85);
      }

      else
      {
        v103 = type metadata accessor for Row();
        v104 = *(*(v103 - 8) + 8);

        v104(a1, v103);
        sub_1000049D0(v84, v85);
      }
    }

    else
    {
      v102 = type metadata accessor for Row();
      (*(*(v102 - 8) + 8))(a1, v102);
      sub_1000049D0(v84, v85);
    }

    v105 = v140;
    sub_100002CE0(a2 + v140, &qword_1005B3360, &unk_1004C6AA0);
    return v119(a2 + v105, 1, 1, v120);
  }

  sub_1000049D0(v84, v85);

  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  sub_10000A6F0(v89, qword_1005E0AC8);
  swift_errorRetain();
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v141 = v3;
    v142 = v120;
    *v92 = 136446210;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v93 = String.init<A>(describing:)();
    LODWORD(v119) = v91;
    v95 = sub_10000D01C(v93, v94, &v142);

    *(v92 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v90, v119, "Read FriendRecord error: %{public}s", v92, 0xCu);
    sub_100004984(v120);
  }

  swift_willThrow();
  v96 = type metadata accessor for Row();
  (*(*(v96 - 8) + 8))(a1, v96);

  sub_100002CE0(a2 + v12[6], &qword_1005AE998, &unk_1004D6030);

  sub_100002CE0(a2 + v12[19], &qword_1005AE998, &unk_1004D6030);

  return sub_100002CE0(a2 + v140, &qword_1005B3360, &unk_1004C6AA0);
}

uint64_t sub_10000C71C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_10030C45C;
  }

  else
  {
    v5 = sub_10000C830;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000C830()
{
  v51 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[7];

  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v6 = *(v4 + 48);
  v5 = v4 + 48;
  v49 = v6;
  if (v6(v2, 1, v3) != 1)
  {
    goto LABEL_6;
  }

  v7 = &_swiftEmptySetSingleton;
  while (1)
  {

    v8 = v7[2];
    if (!v8)
    {
      break;
    }

    v9 = sub_10022BCF4(v7[2], 0);
    v10 = *(type metadata accessor for Friend() - 8);
    v11 = sub_10023EAA8(&v50, &v9[(*(v10 + 80) + 32) & ~*(v10 + 80)], v8, v7);
    sub_10000E3F8();
    if (v11 == v8)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_6:
    v46 = v0[9];
    v48 = v0[6];
    v12 = v0[14];
    v7 = &_swiftEmptySetSingleton;
    v47 = v5;
    do
    {
      sub_100318718(v0[11], v0[10], type metadata accessor for FriendRecord);
      if (qword_1005A8490 != -1)
      {
        swift_once();
      }

      v21 = v0[9];
      v20 = v0[10];
      v22 = v0[8];
      v23 = type metadata accessor for Logger();
      sub_10000A6F0(v23, qword_1005E0A98);
      sub_100318DB4(v20, v21, type metadata accessor for FriendRecord);
      sub_100318DB4(v20, v22, type metadata accessor for FriendRecord);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      v26 = os_log_type_enabled(v24, v25);
      v28 = v0[8];
      v27 = v0[9];
      if (v26)
      {
        v29 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v29 = 141558787;
        *(v29 + 4) = 1752392040;
        *(v29 + 12) = 2081;
        v30 = *v27;
        v31 = *(v46 + 8);

        sub_100318F00(v27, type metadata accessor for FriendRecord);
        v32 = sub_10000D01C(v30, v31, &v50);

        *(v29 + 14) = v32;
        *(v29 + 22) = 2160;
        *(v29 + 24) = 1752392040;
        *(v29 + 32) = 2081;
        v13 = v48;
        v33 = *(v28 + *(v48 + 136));
        type metadata accessor for FriendInfoOption(0);
        sub_10000D108(&unk_1005AEA60, 255, type metadata accessor for FriendInfoOption);
        v34 = Set.description.getter();
        v36 = v35;
        sub_100318F00(v28, type metadata accessor for FriendRecord);
        v37 = sub_10000D01C(v34, v36, &v50);

        *(v29 + 34) = v37;
        _os_log_impl(&_mh_execute_header, v24, v25, "Local storage service record:\nid:%{private,mask.hash}s\ntypes:%{private,mask.hash}s", v29, 0x2Au);
        swift_arrayDestroy();

        v5 = v47;
      }

      else
      {

        sub_100318F00(v28, type metadata accessor for FriendRecord);
        sub_100318F00(v27, type metadata accessor for FriendRecord);
        v13 = v48;
      }

      v15 = v0[10];
      v14 = v0[11];
      v16 = v0[6];
      v17 = *(v15 + *(v13 + 136));
      v18 = swift_task_alloc();
      *(v18 + 16) = v15;
      v19 = sub_10000D338(sub_10000D778, v18, v17);

      v7 = sub_10000E19C(v19, v7);

      sub_100318F00(v15, type metadata accessor for FriendRecord);
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (v49(v14, 1, v16) != 1);
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_14:
  v38 = v0[13];
  v39 = v0[5];
  v0[3] = v9;
  sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  CheckedContinuation.resume(returning:)();

  v41 = v0[10];
  v40 = v0[11];
  v43 = v0[8];
  v42 = v0[9];

  v44 = v0[1];

  return v44();
}

uint64_t sub_10000CDB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
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
      v13 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 144);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000CEEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000CF54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000CFBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000D01C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006F90(v11, 0, 0, 1, a1, a2);
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
    sub_10000709C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004984(v11);
  return v7;
}

uint64_t sub_10000D108(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10000D164(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for HandleType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for ClientOrigin();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v16 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

void *sub_10000D338(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v5 = sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v36 - v7;
  v47 = type metadata accessor for Friend();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v47);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v41 = &v36 - v13;
  v14 = type metadata accessor for FriendInfoOption(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3 + 56;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a3 + 56);
  v23 = (v20 + 63) >> 6;
  v45 = (v9 + 48);
  v40 = v9;
  v43 = (v9 + 32);
  v24 = v16;
  v48 = a3;

  v26 = 0;
  v44 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v27 = v26;
    if (!v22)
    {
      break;
    }

LABEL_8:
    sub_10027499C(*(v48 + 48) + *(v24 + 72) * (__clz(__rbit64(v22)) | (v26 << 6)), v18, type metadata accessor for FriendInfoOption);
    v46(v18);
    if (v3)
    {
      sub_100274A04(v18, type metadata accessor for FriendInfoOption);
      v35 = v44;

      return v35;
    }

    v22 &= v22 - 1;
    sub_100274A04(v18, type metadata accessor for FriendInfoOption);
    if ((*v45)(v8, 1, v47) == 1)
    {
      result = sub_100002CE0(v8, &qword_1005A9188, &unk_1004D80D0);
    }

    else
    {
      v39 = v24;
      v28 = *v43;
      (*v43)(v41, v8, v47);
      v38 = v28;
      v28(v42, v41, v47);
      v29 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1001FCB80(0, v29[2] + 1, 1, v29);
      }

      v31 = v29[2];
      v30 = v29[3];
      v44 = v29;
      v32 = v31 + 1;
      v24 = v39;
      if (v31 >= v30 >> 1)
      {
        v36 = v31;
        v37 = v31 + 1;
        v34 = sub_1001FCB80(v30 > 1, v31 + 1, 1, v44);
        v31 = v36;
        v32 = v37;
        v44 = v34;
      }

      v33 = v44;
      v44[2] = v32;
      result = (v38)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v31, v42, v47);
    }
  }

  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      return v44;
    }

    v22 = *(v19 + 8 * v26);
    ++v27;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v71 = type metadata accessor for ClientOrigin();
  v69 = *(v71 - 8);
  v4 = *(v69 + 64);
  __chkstk_darwin(v71);
  v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v77 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v62 - v10;
  v11 = type metadata accessor for HandleType();
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  __chkstk_darwin(v11);
  v75 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v65 = &v62 - v19;
  v20 = __chkstk_darwin(v18);
  v74 = &v62 - v21;
  __chkstk_darwin(v20);
  v23 = &v62 - v22;
  v24 = type metadata accessor for Handle();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = __chkstk_darwin(v24);
  v73 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v78 = &v62 - v29;
  v30 = sub_10004B564(&qword_1005AE988, &qword_1004CF4E8);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v62 - v32;
  v34 = type metadata accessor for FriendInfoOption(0);
  v35 = *(v34 - 1);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for FriendRecord(0);
  v39 = *(v2 + *(v66 + 136));
  v80 = a1;
  sub_100023898(sub_100023B20, v39, v33);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    v40 = &qword_1005AE988;
    v41 = &qword_1004CF4E8;
    v42 = v33;
LABEL_5:
    sub_100002CE0(v42, v40, v41);
    v44 = 1;
    v45 = v79;
    goto LABEL_19;
  }

  sub_100023DCC(v33, v38);
  v64 = v2;
  sub_100023E30(a1, v23);
  v43 = v25[6];
  if (v43(v23, 1, v24) == 1)
  {
    sub_100006E08(v38, type metadata accessor for FriendInfoOption);
    v40 = &qword_1005B3360;
    v41 = &unk_1004C6AA0;
    v42 = v23;
    goto LABEL_5;
  }

  v63 = a1;
  v46 = v25;
  v47 = v25[4];
  v47(v78, v23, v24);
  v48 = v65;
  sub_100005F04(&v38[v34[12]], v65, &qword_1005B3360, &unk_1004C6AA0);
  if (v43(v48, 1, v24) == 1)
  {
    v49 = v66;
    sub_100005F04(v64 + *(v66 + 144), v74, &qword_1005B3360, &unk_1004C6AA0);
    v50 = v43(v48, 1, v24);
    v51 = v72;
    if (v50 != 1)
    {
      sub_100002CE0(v48, &qword_1005B3360, &unk_1004C6AA0);
    }
  }

  else
  {
    v52 = v74;
    v47(v74, v48, v24);
    (v46[7])(v52, 0, 1, v24);
    v51 = v72;
    v49 = v66;
  }

  (v46[2])(v73, v78, v24);
  (*(v67 + 16))(v75, v63, v68);
  sub_100005F04(&v38[v34[8]], v76, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(&v38[v34[7]], v77, &unk_1005AE5B0, &qword_1004C32F0);
  (*(v69 + 16))(v51, &v38[v34[5]], v71);
  if (v38[v34[14]] == 2)
  {
    v53 = *(v64 + v49[30]);
  }

  if (v38[v34[13]] == 2)
  {
    v54 = *(v64 + v49[31]);
  }

  v72 = v24;
  v55 = v38[v34[16]];
  v62 = v46;
  if (v55 == 2)
  {
    v56 = *(v64 + v49[32]);
  }

  if (v38[v34[15]] == 2)
  {
    v57 = *(v64 + v49[33]);
  }

  v58 = v38[v34[11]];
  v59 = v74;
  sub_100005F04(v74, v70, &qword_1005B3360, &unk_1004C6AA0);
  v45 = v79;
  Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)();
  sub_100002CE0(v59, &qword_1005B3360, &unk_1004C6AA0);
  (v62[1])(v78, v72);
  sub_100006E08(v38, type metadata accessor for FriendInfoOption);
  v44 = 0;
LABEL_19:
  v60 = type metadata accessor for Friend();
  return (*(*(v60 - 8) + 56))(v45, v44, 1, v60);
}

size_t sub_10000DFC0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10004B564(a5, a6);
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

uint64_t sub_10000E19C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v9, v16, v4);
      sub_1000247D8(v11, v9);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

char *sub_10000E2FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10004B564(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E400()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_100306354;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_10000E648;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000E51C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 24);
  v8 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v6 = sub_10021C4BC;
  }

  else
  {
    v6 = sub_10000E664;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10000E664()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  v7 = v0[7];
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager load LocalStorage All friends count:%ld", v8, 0xCu);
  }

  else
  {
    v9 = v0[10];
  }

  v10 = v0[10];
  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_10000E7C8(uint64_t a1)
{
  v2 = *(*v1 + 3824);
  v3 = *(*v1 + 3528);
  v5 = *v1;
  *(*v1 + 3832) = a1;

  return _swift_task_switch(sub_10000E924, v3, 0);
}

size_t sub_10000E8E0(size_t a1, int64_t a2, char a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B0048, &qword_1004D15A0, &type metadata accessor for Handle);
  *v3 = result;
  return result;
}

uint64_t sub_10000E924()
{
  v1 = v0[479];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[455];
    v4 = v0[452];
    sub_10000E8E0(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v20 = *(v4 + 56);
    v21 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[456];
      v9 = v0[453];
      v10 = v0[451];
      v21(v9, v6, v10);
      Friend.handle.getter();
      (*v7)(v9, v10);
      v12 = *(&_swiftEmptyArrayStorage + 2);
      v11 = *(&_swiftEmptyArrayStorage + 3);
      if (v12 >= v11 >> 1)
      {
        sub_10000E8E0(v11 > 1, v12 + 1, 1);
      }

      v13 = v0[456];
      v14 = v0[454];
      *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v6 += v20;
      --v2;
    }

    while (v2);
  }

  v15 = v0[479];

  v0[480] = &_swiftEmptyArrayStorage;
  v16 = swift_task_alloc();
  v0[481] = v16;
  *v16 = v0;
  v16[1] = sub_1000072D0;
  v17 = v0[476];
  v18 = v0[457];

  return sub_10000EB24(v18);
}

uint64_t sub_10000EB24(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  v3 = type metadata accessor for Account.TokenStatus();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10000EC0C, v1, 0);
}

uint64_t sub_10000EC0C()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = v0[5];
    (*(v0[9] + 104))(v0[10], enum case for Account.TokenStatus.success(_:), v0[8]);
    Account.init(icloudIdentifier:dsid:authTokenStatus:appToken:appHostName:apsEnvironment:peopleURL:authToken:)();
    v2 = type metadata accessor for Account();
    (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
    v3 = v0[10];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[6];
    v7 = v0[7];
    sub_10000EE98(&qword_1005B5608, type metadata accessor for AccountService);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_100007100;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_10000EE98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AFA48, &unk_1004D1178);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  if (*(a2 + OBJC_IVAR____TtC13findmylocated14AccountService_isInitialized))
  {
    if (qword_1005A85C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0D48);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Init is done. Resume all.", v12, 2u);
    }

    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_1005A85C8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005E0D48);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Init in progress; appending continuation.", v17, 2u);
    }

    (*(v5 + 16))(v8, a1, v4);
    v18 = OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations;
    v19 = *(a2 + OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v18) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1001FD52C(0, v19[2] + 1, 1, v19);
      *(a2 + v18) = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1001FD52C(v21 > 1, v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    result = (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v8, v4);
    *(a2 + v18) = v19;
  }

  return result;
}

uint64_t sub_10000F1E4()
{
  v1 = *(v0 + 3728);
  v2 = sub_1000093B0(&qword_1005AAB90, type metadata accessor for LocalStorageService);
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 3888) = v4;
  v5 = sub_10004B564(&qword_1005AD8F0, &qword_1004CAE58);
  *v4 = v0;
  v4[1] = sub_1000193DC;
  v6 = *(v0 + 3728);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3520, v1, v2, 0x65636E65466C6C61, 0xEB00000000292873, sub_10000840C, v6, v5);
}

uint64_t sub_10000F314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10004B564(&qword_1005B1C38, &qword_1004D5B88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v7 + 32))(v12 + v11, v10, v6);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v13 = *(a2 + 176);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10000F508()
{
  v2 = *(sub_10004B564(&qword_1005B1C38, &qword_1004D5B88) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_100019150(v4, v0 + v3);
}

uint64_t sub_10000F5EC()
{
  v1 = *(*(v0 + 1224) + 112);
  *(v0 + 1288) = v1;
  return _swift_task_switch(sub_10000F610, v1, 0);
}

uint64_t sub_10000F610()
{
  v1 = *(v0 + 1288);
  sub_10000A0A4();
  *(v0 + 1296) = 0;
  v2 = *(v0 + 1288);

  return _swift_task_switch(sub_100019204, v2, 0);
}

char *sub_10000F708(char *a1, int64_t a2, char a3)
{
  result = sub_1000192B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000F728(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_10030EBCC;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_10000F850;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000F850()
{
  v1 = v0[5];
  v0[3] = v0[8];
  sub_10004B564(&qword_1005B1C38, &qword_1004D5B88);
  CheckedContinuation.resume(returning:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10000F8DC()
{
  v123 = v0;
  v1 = v0[485];
  v2 = &_swiftEmptyDictionarySingleton;
  __dst[0] = &_swiftEmptyDictionarySingleton;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[487];
    v5 = v0[446];
    v6 = v0[450];
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v8 = *(v5 + 72);
    sub_1001C2B80(v1 + v7, v6);
    sub_10021A630(__dst, v6);
    if (v4)
    {
      v9 = v0[450];

      sub_1001769EC(v9);
    }

    sub_1001769EC(v0[450]);
    if (v3 != 1)
    {
      v13 = v8 + v7;
      v14 = 1;
      while (v14 < *(v1 + 16))
      {
        v15 = v0[450];
        sub_1001C2B80(v0[485] + v13, v15);
        sub_10021A630(__dst, v15);
        ++v14;
        sub_1001769EC(v0[450]);
        v13 += v8;
        if (v3 == v14)
        {
          goto LABEL_9;
        }
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_9:
    v11 = 0;
    v12 = __dst[0];
  }

  else
  {
    v11 = v0[487];
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v16 = v0[488];
  v121 = &_swiftEmptyDictionarySingleton;
  v17 = v16[2];
  if (v17)
  {
    memcpy(v0 + 2, v16 + 4, 0x241uLL);
    memcpy(__dst, v16 + 4, 0x241uLL);
    sub_10005D0C0((v0 + 2), (v0 + 75));
    sub_10021AB34(&v121, __dst);
    if (v11)
    {

      memcpy(v0 + 148, __dst, 0x241uLL);
      sub_10005D11C((v0 + 148));
    }

    memcpy(v0 + 221, __dst, 0x241uLL);
    sub_10005D11C((v0 + 221));
    if (v17 != 1)
    {
      v18 = v12;
      v19 = (v16 + 77);
      v20 = 1;
      while (v20 < v16[2])
      {
        memcpy(v0 + 2, v19, 0x241uLL);
        memcpy(__dst, v19, 0x241uLL);
        sub_10005D0C0((v0 + 2), (v0 + 75));
        sub_10021AB34(&v121, __dst);
        ++v20;
        memcpy(v0 + 221, __dst, 0x241uLL);
        sub_10005D11C((v0 + 221));
        v19 += 584;
        if (v17 == v20)
        {
          v12 = v18;
          goto LABEL_20;
        }
      }

LABEL_74:
      __break(1u);
LABEL_75:
      swift_once();
      goto LABEL_40;
    }

LABEL_20:
    v11 = 0;
    v2 = v121;
  }

  v116 = v16;
  v117 = v17;
  v114 = v12;
  v115 = v11;
  v118 = v1;
  if (v3)
  {
    v21 = v0[446];
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = v0[485] + v22;
    v24 = *(v21 + 72);
    v25 = &_swiftEmptyArrayStorage;
    do
    {
      sub_1001C2B80(v23, v0[449]);
      if (v2[2] && (sub_1001FD868(v0[449]), (v26 & 1) != 0))
      {
        sub_1001769EC(v0[449]);
      }

      else
      {
        sub_1001C2B80(v0[449], v0[448]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1001FD48C(0, v25[2] + 1, 1, v25);
        }

        v28 = v25[2];
        v27 = v25[3];
        v29 = v25;
        if (v28 >= v27 >> 1)
        {
          v29 = sub_1001FD48C(v27 > 1, v28 + 1, 1, v25);
        }

        v30 = v0[448];
        sub_1001769EC(v0[449]);
        *(v29 + 16) = v28 + 1;
        v25 = v29;
        sub_100176988(v30, v29 + v22 + v28 * v24);
      }

      v23 += v24;
      --v3;
    }

    while (v3);

    v1 = v118;
  }

  else
  {

    v25 = &_swiftEmptyArrayStorage;
  }

  v31 = v25[2];
  if (!v31)
  {
    goto LABEL_44;
  }

  v32 = v25;
  v33 = v0[446];
  v34 = v0[444];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1004C2310;
  *(v35 + 32) = 30;
  *(v35 + 64) = &type metadata for String;
  *(v35 + 72) = &off_10058C398;
  *(v35 + 40) = 0xD000000000000023;
  *(v35 + 48) = 0x80000001004E57B0;
  *(v35 + 80) = 31;
  *(v35 + 112) = &type metadata for Int;
  *(v35 + 120) = &off_10058C3A8;
  *(v35 + 88) = v31;
  v36 = sub_1000105C0(v35);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v37 = sub_10004C68C(3u, v36);
  v39 = v38;
  v41 = v40;

  sub_10001157C(v37, v39, v41);

  __dst[0] = &_swiftEmptyArrayStorage;
  sub_1002394E8(0, v31, 0);
  v42 = __dst[0];
  v43 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v119 = *(v33 + 72);
  v113 = v31;
  do
  {
    v44 = v0[447];
    v45 = v0[445];
    v46 = v0[443];
    sub_1001C2B80(v43, v44);
    (*(v34 + 16))(v45, v44, v46);
    sub_1001769EC(v44);
    __dst[0] = v42;
    v48 = v42[2];
    v47 = v42[3];
    if (v48 >= v47 >> 1)
    {
      sub_1002394E8(v47 > 1, v48 + 1, 1);
      v42 = __dst[0];
    }

    v49 = v0[445];
    v50 = v0[443];
    v42[2] = v48 + 1;
    (*(v34 + 32))(v42 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v48, v49, v50);
    v43 += v119;
    --v31;
  }

  while (v31);
  if (qword_1005A80B8 != -1)
  {
    goto LABEL_75;
  }

LABEL_40:
  v51 = type metadata accessor for Logger();
  sub_10000A6F0(v51, qword_1005DFF18);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = v0[443];
    v55 = swift_slowAlloc();
    __dst[0] = swift_slowAlloc();
    *v55 = 136446722;
    *(v55 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, __dst);
    *(v55 + 12) = 2050;
    *(v55 + 14) = v113;
    *(v55 + 22) = 2082;
    v56 = Array.description.getter();
    v58 = v57;

    v59 = sub_10000D01C(v56, v58, __dst);

    *(v55 + 24) = v59;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s no fmsFence for %{public}ld CKFence : %{public}s", v55, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v1 = v118;
LABEL_44:
  if (v117)
  {
    v60 = 0;
    v61 = v0[488] + 32;
    v62 = &_swiftEmptyArrayStorage;
    do
    {
      v63 = v116[2];
      v64 = v63 >= v60;
      v65 = v63 - v60;
      if (v64)
      {
        v66 = v65;
      }

      else
      {
        v66 = 0;
      }

      v67 = (v61 + 584 * v60++);
      while (1)
      {
        if (!v66)
        {
          __break(1u);
          goto LABEL_73;
        }

        memcpy(v0 + 294, v67, 0x241uLL);
        v68 = v0[299];
        if (v68)
        {
          if ((v68 & 0x2000000000000000) != 0 ? HIBYTE(v68) & 0xF : v0[298] & 0xFFFFFFFFFFFFLL)
          {
            break;
          }
        }

        --v66;
        ++v60;
        v67 += 584;
        if (v60 - v117 == 1)
        {
          goto LABEL_64;
        }
      }

      sub_10005D0C0((v0 + 294), (v0 + 367));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v62;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000F708(0, v62[2] + 1, 1);
        v62 = __dst[0];
      }

      v72 = v62[2];
      v71 = v62[3];
      if (v72 >= v71 >> 1)
      {
        sub_10000F708((v71 > 1), v72 + 1, 1);
        v62 = __dst[0];
      }

      v62[2] = v72 + 1;
      memcpy(&v62[73 * v72 + 4], v0 + 294, 0x241uLL);
    }

    while (v60 != v117);
  }

  else
  {
    v62 = &_swiftEmptyArrayStorage;
  }

LABEL_64:
  v73 = v0[485];
  v74 = v62[2];
  v75 = *(v1 + 16);

  if (v74 == v75)
  {

    v76 = v114;
  }

  else
  {
    v77 = v0[488];
    v78 = v0[442];
    v79 = v0[441];
    v80 = type metadata accessor for TaskPriority();
    (*(*(v80 - 8) + 56))(v78, 1, 1, v80);
    v81 = sub_1000093B0(&qword_1005AFFB0, type metadata accessor for DataManager);
    v82 = swift_allocObject();
    v82[2] = v79;
    v82[3] = v81;
    v76 = v114;
    v82[4] = v62;
    v82[5] = v114;
    v82[6] = v79;
    v82[7] = v77;
    swift_retain_n();

    sub_1001D7F30(0, 0, v78, &unk_1004D1DF8, v82);
  }

  v83 = v0[488];
  v84 = v0[480];
  v85 = v0[460];
  v86 = swift_task_alloc();
  v86[2] = v76;
  v86[3] = v85;
  v86[4] = v84;
  v87 = sub_100019510(sub_10021B2E4, v86, v83);

  v88 = v87[2];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v89 = swift_allocObject();
  *(v89 + 32) = 34;
  *(v89 + 16) = xmmword_1004C2310;
  *(v89 + 64) = &type metadata for Int;
  *(v89 + 72) = &off_10058C3A8;
  *(v89 + 40) = v88;
  *(v89 + 80) = 33;
  *(v89 + 112) = &type metadata for String;
  *(v89 + 120) = &off_10058C398;
  *(v89 + 88) = 1701736270;
  *(v89 + 96) = 0xE400000000000000;
  v90 = sub_1000105C0(v89);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v91 = sub_10004C68C(3u, v90);
  v93 = v92;
  v95 = v94;

  sub_10001157C(v91, v93, v95);

  __dst[0] = v87;

  sub_100011E48(__dst);
  if (v115)
  {
  }

  else
  {
    v96 = v0[476];
    v97 = v0[471];
    v98 = v0[466];
    v99 = v0[460];
    v100 = v0[459];
    v101 = v0[458];

    v120 = __dst[0];
    (*(v100 + 8))(v99, v101);
    v102 = v0[460];
    v103 = v0[457];
    v104 = v0[456];
    v105 = v0[453];
    v106 = v0[450];
    v107 = v0[449];
    v108 = v0[448];
    v109 = v0[447];
    v110 = v0[445];
    v111 = v0[442];

    v112 = v0[1];

    return v112(v120);
  }
}

uint64_t sub_100010568()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1000105C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0078, &qword_1004D1610);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, v11, &qword_1005A8790, &qword_1004C0EB0);
      v5 = v11[0];
      result = sub_1000106F8(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_100010BD4(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
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

unint64_t sub_1000106F8(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_100010780(a1);
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_100010BEC(a1, v4);
}

unint64_t sub_100010780(char a1)
{
  result = 0x65636E6546646461;
  switch(a1)
  {
    case 1:
      result = 0x746E6169726176;
      break;
    case 2:
      result = 0x726F7461657263;
      break;
    case 3:
      result = 0x7265776F6C6C6F66;
      break;
    case 4:
    case 22:
      result = 0xD000000000000018;
      break;
    case 5:
    case 23:
      result = 0xD00000000000001ALL;
      break;
    case 6:
    case 7:
    case 18:
    case 26:
      result = 0xD000000000000010;
      break;
    case 8:
    case 37:
      v3 = 9;
      goto LABEL_21;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
    case 25:
      result = 0xD000000000000015;
      break;
    case 14:
    case 28:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x6567676972547369;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x636E65466574756DLL;
      break;
    case 20:
      result = 0x6E6F697469736F70;
      break;
    case 21:
      result = 0x6E61747065636361;
      break;
    case 24:
    case 29:
    case 36:
      result = 0xD000000000000013;
      break;
    case 27:
      result = 0xD000000000000012;
      break;
    case 30:
      result = 0x7573734961746164;
      break;
    case 31:
      v3 = 13;
LABEL_21:
      result = v3 | 0xD000000000000012;
      break;
    case 32:
      result = 0xD000000000000027;
      break;
    case 33:
      result = 0xD000000000000022;
      break;
    case 34:
      result = 0x756F4365636E6566;
      break;
    case 35:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100010BD4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100010BEC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = sub_100010780(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_100010780(a1) && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

uint64_t sub_100010CF4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4B43747065636361;
    v7 = 0x65636E6546646461;
    v8 = 0x616E614D61746164;
    if (a1 != 3)
    {
      v8 = 0x65466574656C6564;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6546747065636361;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x766E496572616873;
    v2 = 0x4672656767697274;
    if (a1 != 9)
    {
      v2 = 0x6546657461647075;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x636E65466574756DLL;
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0x54534449646E6573;
    }

    if (a1 != 5)
    {
      v3 = v4;
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

unint64_t sub_100010EA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0068, &qword_1004D1600);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v13, &qword_1005B0070, &qword_1004D1608);
      v5 = v13;
      v6 = v14;
      result = sub_100011104(v13, v14, &String.hash(into:), sub_10001145C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010BD4(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_100011004(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100011068(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8798, &qword_1004C0EB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011104(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

uint64_t sub_100011198(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10004B564(&qword_1005B0068, &qword_1004D1600);
  v36 = a2;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_100010BD4(v25, v37);
      }

      else
      {
        sub_100011004(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100010BD4(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_10001145C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100011514(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A8798, &qword_1004C0EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001157C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[3] = &type metadata for FencesReliabilityMetric;
  v22[4] = &off_10058C238;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    v3 = String._bridgeToObjectiveC()();
    sub_100011004(v22, v21);
    v4 = swift_allocObject();
    sub_100010BD4(v21, v4 + 16);
    v19 = sub_100011AE4;
    v20 = v4;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_1000119E4;
    v18 = &unk_100597D00;
    v5 = _Block_copy(v17);

    v6 = AnalyticsSendEventLazy();
    _Block_release(v5);

    if (!v6)
    {
      if (qword_1005A7E80 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000A6F0(v7, qword_1005DFA50);
      sub_100011004(v22, v17);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *&v21[0] = v11;
        *v10 = 136446210;
        v12 = sub_100011AEC(v17, v18);
        v13 = *v12;
        v14 = v12[1];

        sub_100004984(v17);
        v15 = sub_10000D01C(v13, v14, v21);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s is not enabled in the current config", v10, 0xCu);
        sub_100004984(v11);
      }

      else
      {

        sub_100004984(v17);
      }
    }
  }

  return sub_100004984(v22);
}

uint64_t sub_100011808()
{
  sub_100004984((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100011854(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011894(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000118F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000119A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000119B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000119D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Class sub_1000119E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100011D18();
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100011A70(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_100011AEC(a1, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v4 = sub_100011B38(v3);

  return v4;
}

void *sub_100011AEC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100011B38(uint64_t a1)
{
  sub_10004B564(&qword_1005A8A40, &qword_1004C18E0);
  result = static _DictionaryStorage.copy(original:)();
  v3 = 0;
  v27 = result;
  v28 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v26 = result + 64;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v29 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = *(v28 + 56);
      v16 = (*(v28 + 48) + 16 * v14);
      v17 = v16[1];
      v33 = *v16;
      sub_100011004(v15 + 40 * v14, v30);
      v18 = v31;
      v19 = v32;
      sub_100011AEC(v30, v31);
      v20 = *(v19 + 8);

      v21 = v20(v18, v19);
      sub_100004984(v30);
      result = v27;
      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v22 = (v27[6] + 16 * v14);
      *v22 = v33;
      v22[1] = v17;
      *(v27[7] + 8 * v14) = v21;
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;
      v9 = v29;
      if (!v29)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

NSString sub_100011D08()
{
  v1 = *v0;
  v2 = v0[1];
  return String._bridgeToObjectiveC()();
}

unint64_t sub_100011D18()
{
  result = qword_1005B3440;
  if (!qword_1005B3440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B3440);
  }

  return result;
}

Swift::Int sub_100011E48(void **a1)
{
  v2 = *(type metadata accessor for Fence() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100011EF0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100011F3C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100011F3C(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        type metadata accessor for Fence();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Fence() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100219354(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_100218FB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100012068(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *v1;
  v3[9] = a1;

  v6 = swift_task_alloc();
  v3[10] = v6;
  *v6 = v5;
  v6[1] = sub_100013518;
  v7 = v3[2];

  return sub_1000121BC(a1);
}

uint64_t sub_1000121BC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for XPCAlarm.Criteria.Options();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(type metadata accessor for XPCAlarm.Criteria() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for XPCAlarm();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = type metadata accessor for Fence.ID();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v13 = type metadata accessor for Fence.Schedule.Matcher();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();
  v16 = type metadata accessor for Fence.Variant();
  v2[18] = v16;
  v17 = *(v16 - 8);
  v2[19] = v17;
  v18 = *(v17 + 64) + 15;
  v2[20] = swift_task_alloc();
  v19 = type metadata accessor for Fence.Schedule();
  v2[21] = v19;
  v20 = *(v19 - 8);
  v2[22] = v20;
  v21 = *(v20 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v22 = type metadata accessor for Fence();
  v2[25] = v22;
  v23 = *(v22 - 8);
  v2[26] = v23;
  v24 = *(v23 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v25 = type metadata accessor for Date();
  v2[29] = v25;
  v26 = *(v25 - 8);
  v2[30] = v26;
  v27 = *(v26 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v28 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_1000125E8, v1, 0);
}

uint64_t sub_1000125E8()
{
  v182 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updating scheduler timer", v4, 2u);
  }

  v5 = v0[41];
  v6 = v0[37];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[3];

  v135 = *(v8 + 56);
  v135(v5, 1, 1, v7);
  static Date.now.getter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v0[26];
    v12 = v0[19];
    v14 = *(v11 + 16);
    v11 += 16;
    v13 = v14;
    v15 = v0[3] + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v16 = (v12 + 88);
    v175 = (v11 - 8);
    v148 = (v12 + 96);
    v149 = (v12 + 8);
    v17 = v0[22];
    v147 = (v17 + 32);
    v18 = v0[30];
    v146 = (v17 + 16);
    v178 = (v18 + 8);
    v138 = (v18 + 48);
    v136 = (v18 + 32);
    v19 = *(v11 + 56);
    v172 = enum case for Fence.Variant.scheduled(_:);
    v143 = (v17 + 8);
    v144 = (v0[16] + 8);
    v142 = (v18 + 16);
    v137 = (v0[13] + 8);
    v150 = v16;
    v151 = v14;
    v145 = v19;
    while (1)
    {
      v22 = v0[20];
      v23 = v0[18];
      v13(v0[28], v15, v0[25]);
      Fence.variant.getter();
      if ((*v16)(v22, v23) == v172)
      {
        break;
      }

      v20 = v0[20];
      v21 = v0[18];
      (*v175)(v0[28], v0[25]);
      (*v149)(v20, v21);
LABEL_8:
      v15 += v19;
      if (!--v10)
      {
        goto LABEL_25;
      }
    }

    v168 = v15;
    v170 = v10;
    v25 = v0[36];
    v24 = v0[37];
    v26 = v0[35];
    v27 = v0[29];
    v29 = v0[23];
    v28 = v0[24];
    v31 = v0[20];
    v30 = v0[21];
    v32 = v0[17];
    (*v148)(v31, v0[18]);
    (*v147)(v28, v31, v30);
    (*v146)(v29, v28, v30);
    Fence.Schedule.Matcher.init(schedule:)();
    Fence.Schedule.Matcher.nextStartOrEndDate(from:)();
    static Date.distantFuture.getter();
    sub_1002AB19C(&qword_1005AE5D0, &type metadata accessor for Date);
    LOBYTE(v32) = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *v178;
    (*v178)(v26, v27);
    if (v32 & 1) != 0 || (v34 = v0[36], v35 = v0[37], v36 = v0[29], sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date), (dispatch thunk of static Comparable.< infix(_:_:)()))
    {
      v37 = v0[28];
      v38 = v0[27];
      v39 = v0[25];
      (*v142)(v0[33], v0[36], v0[29]);
      v13 = v151;
      v151(v38, v37, v39);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v0[33];
      v44 = v0[28];
      v45 = v0[29];
      v46 = v0[27];
      v162 = v0[24];
      v165 = v0[25];
      v156 = v0[36];
      v159 = v0[21];
      v152 = v0[15];
      v154 = v0[17];
      if (v42)
      {
        v47 = v0[14];
        v139 = v0[12];
        v48 = swift_slowAlloc();
        v181[0] = swift_slowAlloc();
        *v48 = 136446466;
        v140 = v41;
        v49 = Date.localISO8601.getter();
        v141 = v44;
        v51 = v50;
        v33(v43, v45);
        v52 = sub_10000D01C(v49, v51, v181);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2082;
        Fence.id.getter();
        sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        (*v137)(v47, v139);
        v56 = *v175;
        (*v175)(v46, v165);
        v57 = sub_10000D01C(v53, v55, v181);

        *(v48 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v40, v140, "    Invalid next scheduled date: %{public}s.     FenceID: %{public}s", v48, 0x16u);
        swift_arrayDestroy();
        v13 = v151;

        v33(v156, v45);
        (*v144)(v154, v152);
        (*v143)(v162, v159);
        v56(v141, v165);
      }

      else
      {

        v58 = *v175;
        (*v175)(v46, v165);
        v33(v43, v45);
        v33(v156, v45);
        (*v144)(v154, v152);
        (*v143)(v162, v159);
        v58(v44, v165);
      }

      v15 = v168;
      v10 = v170;
      v16 = v150;
      v19 = v145;
      goto LABEL_8;
    }

    v166 = v33;
    v59 = v0[40];
    v60 = v0[29];
    sub_100005F04(v0[41], v59, &unk_1005AE5B0, &qword_1004C32F0);
    v61 = *v138;
    v62 = (*v138)(v59, 1, v60);
    v63 = v0[40];
    if (v62 == 1)
    {
      v64 = v0[28];
      v66 = v0[24];
      v65 = v0[25];
      v67 = v0[21];
      (*v144)(v0[17], v0[15]);
      (*v143)(v66, v67);
      (*v175)(v64, v65);
      sub_100002CE0(v63, &unk_1005AE5B0, &qword_1004C32F0);
      v15 = v168;
      v16 = v150;
      v19 = v145;
    }

    else
    {
      v68 = v0[36];
      v69 = v0[34];
      v70 = v0[29];
      v71 = v0[24];
      v160 = v0[25];
      v163 = v0[28];
      v72 = v0[21];
      v73 = v0[17];
      v74 = v0[15];
      v157 = *v136;
      (*v136)(v69, v63, v70);
      v75 = static Date.< infix(_:_:)();
      v166(v69, v70);
      (*v144)(v73, v74);
      (*v143)(v71, v72);
      (*v175)(v163, v160);
      v15 = v168;
      v16 = v150;
      v19 = v145;
      if (v75)
      {
        v76 = v0[41];
        v77 = v0[36];
        v78 = v0[29];
        sub_100002CE0(v76, &unk_1005AE5B0, &qword_1004C32F0);
        v157(v76, v77, v78);
        v79 = v76;
        v80 = v78;
        goto LABEL_22;
      }
    }

    v81 = v0[39];
    v82 = v0[29];
    sub_100005F04(v0[41], v81, &unk_1005AE5B0, &qword_1004C32F0);
    if (v61(v81, 1, v82) != 1)
    {
      v87 = v0[39];
      v166(v0[36], v0[29]);
      sub_100002CE0(v87, &unk_1005AE5B0, &qword_1004C32F0);
      goto LABEL_24;
    }

    v83 = v0[41];
    v84 = v0[39];
    v85 = v0[36];
    v86 = v0[29];
    sub_100002CE0(v83, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v84, &unk_1005AE5B0, &qword_1004C32F0);
    (*v136)(v83, v85, v86);
    v79 = v83;
    v80 = v86;
LABEL_22:
    v135(v79, 0, 1, v80);
LABEL_24:
    v10 = v170;
    v13 = v151;
    goto LABEL_8;
  }

LABEL_25:
  v88 = v0[38];
  v89 = v0[29];
  v90 = v0[30];
  sub_100005F04(v0[41], v88, &unk_1005AE5B0, &qword_1004C32F0);
  if ((*(v90 + 48))(v88, 1, v89) == 1)
  {
    v91 = v0[41];
    v92 = v0[38];
    (*(v0[30] + 8))(v0[37], v0[29]);
    sub_100002CE0(v91, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v92, &unk_1005AE5B0, &qword_1004C32F0);
    v94 = v0[40];
    v93 = v0[41];
    v95 = v0[38];
    v96 = v0[39];
    v98 = v0[36];
    v97 = v0[37];
    v100 = v0[34];
    v99 = v0[35];
    v102 = v0[32];
    v101 = v0[33];
    v153 = v0[31];
    v155 = v0[28];
    v158 = v0[27];
    v161 = v0[24];
    v164 = v0[23];
    v167 = v0[20];
    v169 = v0[17];
    v171 = v0[14];
    v173 = v0[11];
    v176 = v0[8];
    v179 = v0[7];

    v103 = v0[1];

    return v103();
  }

  else
  {
    v105 = v0[31];
    v106 = v0[32];
    v107 = v0[29];
    v108 = v0[30];
    (*(v108 + 32))(v106, v0[38], v107);
    v109 = *(v108 + 16);
    v109(v105, v106, v107);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    v112 = os_log_type_enabled(v110, v111);
    v114 = v0[30];
    v113 = v0[31];
    v115 = v0[29];
    if (v112)
    {
      v116 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v181[0] = v177;
      *v116 = 136446210;
      v174 = Date.localISO8601.getter();
      v180 = v109;
      v118 = v117;
      v121 = *(v114 + 8);
      v120 = v114 + 8;
      v119 = v121;
      v121(v113, v115);
      v122 = sub_10000D01C(v174, v118, v181);
      v109 = v180;

      *(v116 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v110, v111, "Updating scheduler timer with nextTriggerDate: %{public}s", v116, 0xCu);
      sub_100004984(v177);
    }

    else
    {

      v123 = *(v114 + 8);
      v120 = v114 + 8;
      v119 = v123;
      v123(v113, v115);
    }

    v0[42] = v120;
    v0[43] = v119;
    v124 = v0[7];
    v125 = v0[8];
    v126 = v0[5];
    v127 = v0[6];
    v109(v0[35], v0[32], v0[29]);
    sub_10004B564(&qword_1005B0BD0, &qword_1004D28B0);
    v128 = *(v127 + 72);
    v129 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_1004C1900;
    static XPCAlarm.Criteria.Options.userVisible.getter();
    v0[2] = v130;
    sub_1002AB19C(&qword_1005B0BD8, &type metadata accessor for XPCAlarm.Criteria.Options);
    sub_10004B564(&qword_1005B0BE0, &qword_1004D28B8);
    sub_10001DF0C(&qword_1005B0BE8, &qword_1005B0BE0, &qword_1004D28B8);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCAlarm.Criteria.init(date:options:)();
    v131 = async function pointer to XPCAlarm.init(identifier:criteria:)[1];
    v132 = swift_task_alloc();
    v0[44] = v132;
    *v132 = v0;
    v132[1] = sub_100294678;
    v133 = v0[11];
    v134 = v0[8];

    return XPCAlarm.init(identifier:criteria:)(v133, 0xD000000000000031, 0x80000001004DE440, v134);
  }
}

uint64_t sub_100013518()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v3;
  v4[1] = sub_100015198;
  v5 = v1[9];
  v6 = v1[2];

  return sub_100013670(v5);
}

uint64_t sub_100013670(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for XPCAlarm.Criteria.Options();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(type metadata accessor for XPCAlarm.Criteria() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = type metadata accessor for XPCAlarm();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = type metadata accessor for Fence.ID();
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();
  v13 = type metadata accessor for Calendar.SearchDirection();
  v2[18] = v13;
  v14 = *(v13 - 8);
  v2[19] = v14;
  v15 = *(v14 + 64) + 15;
  v2[20] = swift_task_alloc();
  v16 = type metadata accessor for Fence.Schedule.Matcher();
  v2[21] = v16;
  v17 = *(v16 - 8);
  v2[22] = v17;
  v18 = *(v17 + 64) + 15;
  v2[23] = swift_task_alloc();
  v19 = type metadata accessor for Fence.Variant();
  v2[24] = v19;
  v20 = *(v19 - 8);
  v2[25] = v20;
  v21 = *(v20 + 64) + 15;
  v2[26] = swift_task_alloc();
  v22 = type metadata accessor for Fence.Schedule();
  v2[27] = v22;
  v23 = *(v22 - 8);
  v2[28] = v23;
  v24 = *(v23 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v25 = type metadata accessor for Fence.Participant();
  v2[31] = v25;
  v26 = *(v25 - 8);
  v2[32] = v26;
  v27 = *(v26 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v28 = type metadata accessor for Fence.AcceptanceStatus();
  v2[35] = v28;
  v29 = *(v28 - 8);
  v2[36] = v29;
  v30 = *(v29 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v31 = type metadata accessor for Fence();
  v2[39] = v31;
  v32 = *(v31 - 8);
  v2[40] = v32;
  v33 = *(v32 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v34 = type metadata accessor for Date();
  v2[44] = v34;
  v35 = *(v34 - 8);
  v2[45] = v35;
  v36 = *(v35 + 64) + 15;
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v37 = *(*(sub_10004B564(&qword_1005B09D0, &unk_1004D2380) - 8) + 64) + 15;
  v2[54] = swift_task_alloc();
  v38 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();

  return _swift_task_switch(sub_100013C18, v1, 0);
}

uint64_t sub_100013C18()
{
  v260 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  v4 = *(v0 + 352);
  v5 = *(v0 + 360);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);
  v8 = *(v0 + 48);
  v9 = *(v5 + 56);
  *(v0 + 472) = v9;
  *(v0 + 480) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 1, 1, v4);
  v10 = *(v7 + 56);
  *(v0 + 488) = v10;
  *(v0 + 496) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v3, 1, 1, v6);
  static Date.now.getter();
  v11 = *(v8 + 16);
  *(v0 + 504) = v11;
  if (!v11)
  {
LABEL_20:
    v79 = *(v0 + 440);
    v80 = *(v0 + 352);
    v81 = *(v0 + 360);
    sub_100005F04(*(v0 + 464), v79, &unk_1005AE5B0, &qword_1004C32F0);
    v82 = (*(v81 + 48))(v79, 1, v80);
    v83 = *(v0 + 440);
    if (v82 == 1)
    {
      sub_100002CE0(*(v0 + 440), &unk_1005AE5B0, &qword_1004C32F0);
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      sub_10000A6F0(v84, qword_1005DFF88);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();
      v87 = os_log_type_enabled(v85, v86);
      v88 = *(v0 + 464);
      v90 = *(v0 + 424);
      v89 = *(v0 + 432);
      v91 = *(v0 + 352);
      v92 = *(v0 + 360);
      if (v87)
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "No fence to set invite timer for", v93, 2u);
      }

      (*(v92 + 8))(v90, v91);
      sub_100002CE0(v88, &unk_1005AE5B0, &qword_1004C32F0);
      v94 = v89;
    }

    else
    {
      v107 = *(v0 + 408);
      v108 = *(v0 + 352);
      v109 = *(v0 + 360);
      (*(v109 + 32))(*(v0 + 384), *(v0 + 440), v108);
      static Date.distantFuture.getter();
      sub_1002AB19C(&qword_1005AE5D0, &type metadata accessor for Date);
      v110 = dispatch thunk of static Equatable.== infix(_:_:)();
      v111 = *(v109 + 8);
      *(v0 + 568) = v111;
      *(v0 + 576) = (v109 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v111(v107, v108);
      if ((v110 & 1) == 0)
      {
        if (qword_1005A80E8 != -1)
        {
          swift_once();
        }

        v131 = *(v0 + 376);
        v132 = *(v0 + 384);
        v133 = *(v0 + 352);
        v134 = *(v0 + 360);
        v135 = type metadata accessor for Logger();
        sub_10000A6F0(v135, qword_1005DFF88);
        v136 = *(v134 + 16);
        v136(v131, v132, v133);
        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v137, v138))
        {
          v250 = v136;
          v257 = v111;
          v139 = *(v0 + 432);
          v140 = *(v0 + 312);
          v141 = *(v0 + 320);
          v142 = swift_slowAlloc();
          v259 = swift_slowAlloc();
          *v142 = 136446466;
          swift_beginAccess();
          if ((*(v141 + 48))(v139, 1, v140))
          {
            v143 = 0xE300000000000000;
            v144 = 7104878;
          }

          else
          {
            v177 = *(v0 + 320);
            v176 = *(v0 + 328);
            v178 = *(v0 + 312);
            v179 = *(v0 + 128);
            v180 = *(v0 + 136);
            v232 = v178;
            v239 = *(v0 + 120);
            (*(v177 + 16))(v176, *(v0 + 432));
            Fence.id.getter();
            (*(v177 + 8))(v176, v232);
            v181 = Fence.ID.uuidString.getter();
            v143 = v182;
            (*(v179 + 8))(v180, v239);
            v144 = v181;
          }

          v183 = *(v0 + 376);
          v184 = *(v0 + 352);
          v185 = sub_10000D01C(v144, v143, &v259);

          *(v142 + 4) = v185;
          *(v142 + 12) = 2082;
          v186 = Date.localISO8601.getter();
          v188 = v187;
          v257(v183, v184);
          v189 = sub_10000D01C(v186, v188, &v259);

          *(v142 + 14) = v189;
          _os_log_impl(&_mh_execute_header, v137, v138, "Setting invite timer for fence %{public}s at %{public}s", v142, 0x16u);
          swift_arrayDestroy();

          v136 = v250;
        }

        else
        {
          v145 = *(v0 + 376);
          v146 = *(v0 + 352);

          v111(v145, v146);
        }

        v190 = *(v0 + 80);
        v191 = *(v0 + 88);
        v192 = *(v0 + 64);
        v193 = *(v0 + 72);
        v136(*(v0 + 408), *(v0 + 384), *(v0 + 352));
        sub_10004B564(&qword_1005B0BD0, &qword_1004D28B0);
        v194 = *(v193 + 72);
        v195 = (*(v193 + 80) + 32) & ~*(v193 + 80);
        v196 = swift_allocObject();
        *(v196 + 16) = xmmword_1004C1900;
        static XPCAlarm.Criteria.Options.userVisible.getter();
        *(v0 + 40) = v196;
        sub_1002AB19C(&qword_1005B0BD8, &type metadata accessor for XPCAlarm.Criteria.Options);
        sub_10004B564(&qword_1005B0BE0, &qword_1004D28B8);
        sub_10001DF0C(&qword_1005B0BE8, &qword_1005B0BE0, &qword_1004D28B8);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        XPCAlarm.Criteria.init(date:options:)();
        v197 = async function pointer to XPCAlarm.init(identifier:criteria:)[1];
        v198 = swift_task_alloc();
        *(v0 + 584) = v198;
        *v198 = v0;
        v198[1] = sub_100295F68;
        v199 = *(v0 + 112);
        v200 = *(v0 + 88);

        return XPCAlarm.init(identifier:criteria:)(v199, 0xD00000000000002FLL, 0x80000001004DE480, v200);
      }

      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v112 = *(v0 + 384);
      v114 = *(v0 + 360);
      v113 = *(v0 + 368);
      v115 = *(v0 + 352);
      v116 = type metadata accessor for Logger();
      sub_10000A6F0(v116, qword_1005DFF88);
      (*(v114 + 16))(v113, v112, v115);
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();
      v119 = os_log_type_enabled(v117, v118);
      v120 = *(v0 + 464);
      v122 = *(v0 + 424);
      v121 = *(v0 + 432);
      v256 = *(v0 + 384);
      v123 = *(v0 + 368);
      v124 = *(v0 + 352);
      if (v119)
      {
        v230 = v118;
        v125 = swift_slowAlloc();
        v249 = v121;
        v126 = swift_slowAlloc();
        v259 = v126;
        *v125 = 136315138;
        v237 = v122;
        v244 = v120;
        v127 = Date.localISO8601.getter();
        v129 = v128;
        v111(v123, v124);
        v130 = sub_10000D01C(v127, v129, &v259);

        *(v125 + 4) = v130;
        _os_log_impl(&_mh_execute_header, v117, v230, "Invalid invite timer date: %s", v125, 0xCu);
        sub_100004984(v126);

        v111(v256, v124);
        v111(v237, v124);
        sub_100002CE0(v244, &unk_1005AE5B0, &qword_1004C32F0);
        v94 = v249;
      }

      else
      {

        v111(v123, v124);
        v111(v256, v124);
        v111(v122, v124);
        sub_100002CE0(v120, &unk_1005AE5B0, &qword_1004C32F0);
        v94 = v121;
      }
    }

    sub_100002CE0(v94, &qword_1005B09D0, &unk_1004D2380);
    v96 = *(v0 + 456);
    v95 = *(v0 + 464);
    v98 = *(v0 + 440);
    v97 = *(v0 + 448);
    v100 = *(v0 + 424);
    v99 = *(v0 + 432);
    v102 = *(v0 + 408);
    v101 = *(v0 + 416);
    v103 = *(v0 + 392);
    v104 = *(v0 + 400);
    v205 = *(v0 + 384);
    v206 = *(v0 + 376);
    v207 = *(v0 + 368);
    v208 = *(v0 + 344);
    v209 = *(v0 + 336);
    v210 = *(v0 + 328);
    v211 = *(v0 + 304);
    v213 = *(v0 + 296);
    v215 = *(v0 + 272);
    v217 = *(v0 + 264);
    v220 = *(v0 + 240);
    v222 = *(v0 + 232);
    v223 = *(v0 + 208);
    v226 = *(v0 + 184);
    v229 = *(v0 + 160);
    v236 = *(v0 + 136);
    v243 = *(v0 + 112);
    v248 = *(v0 + 88);
    v255 = *(v0 + 80);

    v105 = *(v0 + 8);

    return v105();
  }

  v12 = 0;
  v13 = *(v0 + 320);
  *(v0 + 592) = *(v13 + 80);
  *(v0 + 596) = enum case for Fence.AcceptanceStatus.pendingHidden(_:);
  *(v0 + 600) = enum case for Fence.Participant.me(_:);
  *(v0 + 604) = enum case for Fence.Variant.oneTime(_:);
  *(v0 + 608) = enum case for Fence.Variant.recurring(_:);
  *(v0 + 612) = enum case for Fence.Variant.scheduled(_:);
  *(v0 + 616) = enum case for Calendar.SearchDirection.forward(_:);
  *(v0 + 512) = *(v13 + 72);
  *(v0 + 520) = *(v13 + 16);
  while (1)
  {
    *(v0 + 528) = v12;
    v14 = *(v0 + 596);
    v16 = *(v0 + 296);
    v15 = *(v0 + 304);
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    v19 = *(v0 + 320) + 16;
    (*(v0 + 520))(*(v0 + 344), *(v0 + 48) + ((*(v0 + 592) + 32) & ~*(v0 + 592)) + *(v0 + 512) * v12, *(v0 + 312));
    Fence.acceptanceStatus.getter();
    (*(v18 + 104))(v16, v14, v17);
    v20 = static Fence.AcceptanceStatus.== infix(_:_:)();
    v21 = *(v18 + 8);
    v21(v16, v17);
    v21(v15, v17);
    if (v20)
    {
      v22 = *(v0 + 600);
      v23 = *(v0 + 344);
      v25 = *(v0 + 264);
      v24 = *(v0 + 272);
      v26 = *(v0 + 248);
      v27 = *(v0 + 256);
      Fence.findee.getter();
      (*(v27 + 104))(v25, v22, v26);
      LOBYTE(v23) = static Fence.Participant.== infix(_:_:)();
      v28 = *(v27 + 8);
      v28(v25, v26);
      v28(v24, v26);
      if (v23)
      {
        break;
      }
    }

    (*(*(v0 + 320) + 8))(*(v0 + 344), *(v0 + 312));
LABEL_4:
    v12 = *(v0 + 528) + 1;
    if (v12 == *(v0 + 504))
    {
      goto LABEL_20;
    }
  }

  v29 = *(v0 + 608);
  v30 = *(v0 + 604);
  v31 = *(v0 + 344);
  v33 = *(v0 + 200);
  v32 = *(v0 + 208);
  v34 = *(v0 + 192);
  Fence.variant.getter();
  v35 = (*(v33 + 88))(v32, v34);
  if (v35 == v30 || v35 == v29)
  {
    v51 = *(v0 + 200);
    v50 = *(v0 + 208);
    v52 = *(v0 + 192);
    (*(*(v0 + 320) + 8))(*(v0 + 344), *(v0 + 312));
    (*(v51 + 8))(v50, v52);
    goto LABEL_4;
  }

  if (v35 != *(v0 + 612))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v221 = *(v0 + 616);
  v246 = *(v0 + 424);
  v252 = *(v0 + 416);
  v218 = *(v0 + 408);
  v36 = *(v0 + 360);
  v240 = *(v0 + 352);
  v216 = *(v0 + 344);
  v38 = *(v0 + 232);
  v37 = *(v0 + 240);
  v39 = *(v0 + 216);
  v40 = *(v0 + 224);
  v41 = *(v0 + 208);
  v212 = *(v0 + 184);
  v227 = *(v0 + 176);
  v233 = *(v0 + 168);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v214 = *(v0 + 144);
  (*(*(v0 + 200) + 96))(v41, *(v0 + 192));
  v224 = v37;
  (*(v40 + 32))(v37, v41, v39);
  (*(v40 + 16))(v38, v37, v39);
  Fence.Schedule.Matcher.init(schedule:)();
  v44 = v218;
  Fence.updatedAt.getter();
  (*(v42 + 104))(v43, v221, v214);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)();
  (*(v42 + 8))(v43, v214);
  v45 = *(v36 + 8);
  *(v0 + 536) = v45;
  *(v0 + 544) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v219 = v45;
  v45(v44, v240);
  (*(v227 + 8))(v212, v233);
  (*(v40 + 8))(v224, v39);
  sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date);
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    v46 = *(v0 + 456);
    v47 = *(v0 + 352);
    v48 = *(v0 + 360);
    sub_100005F04(*(v0 + 464), v46, &unk_1005AE5B0, &qword_1004C32F0);
    v49 = *(v48 + 48);
    if (v49(v46, 1, v47) == 1)
    {
      sub_100002CE0(*(v0 + 456), &unk_1005AE5B0, &qword_1004C32F0);
      goto LABEL_16;
    }

    v53 = *(v0 + 416);
    v54 = *(v0 + 400);
    v55 = *(v0 + 352);
    v56 = *(*(v0 + 360) + 32);
    v56(v54, *(v0 + 456), v55);
    LOBYTE(v53) = static Date.< infix(_:_:)();
    v219(v54, v55);
    if (v53)
    {
      v247 = *(v0 + 488);
      v253 = *(v0 + 496);
      v228 = *(v0 + 480);
      v225 = *(v0 + 472);
      v57 = *(v0 + 464);
      v58 = *(v0 + 432);
      v59 = *(v0 + 416);
      v60 = *(v0 + 352);
      v61 = *(v0 + 320);
      v234 = *(v0 + 312);
      v241 = *(v0 + 344);
      sub_100002CE0(v57, &unk_1005AE5B0, &qword_1004C32F0);
      v56(v57, v59, v60);
      v225(v57, 0, 1, v60);
      sub_100002CE0(v58, &qword_1005B09D0, &unk_1004D2380);
      (*(v61 + 32))(v58, v241, v234);
      v62 = v58;
      v63 = v234;
    }

    else
    {
LABEL_16:
      v64 = *(v0 + 448);
      v65 = *(v0 + 352);
      sub_100005F04(*(v0 + 464), v64, &unk_1005AE5B0, &qword_1004C32F0);
      if (v49(v64, 1, v65) != 1)
      {
        v75 = *(v0 + 448);
        v76 = *(v0 + 344);
        v77 = *(v0 + 312);
        v78 = *(v0 + 320);
        v219(*(v0 + 416), *(v0 + 352));
        (*(v78 + 8))(v76, v77);
        sub_100002CE0(v75, &unk_1005AE5B0, &qword_1004C32F0);
        goto LABEL_4;
      }

      v247 = *(v0 + 488);
      v254 = *(v0 + 496);
      v66 = *(v0 + 472);
      v67 = *(v0 + 464);
      v68 = *(v0 + 448);
      v69 = *(v0 + 432);
      v70 = *(v0 + 416);
      v71 = *(v0 + 352);
      v72 = *(v0 + 360);
      v235 = *(v0 + 480);
      v242 = *(v0 + 344);
      v73 = *(v0 + 312);
      v74 = *(v0 + 320);
      sub_100002CE0(v67, &unk_1005AE5B0, &qword_1004C32F0);
      sub_100002CE0(v68, &unk_1005AE5B0, &qword_1004C32F0);
      (*(v72 + 32))(v67, v70, v71);
      v66(v67, 0, 1, v71);
      sub_100002CE0(v69, &qword_1005B09D0, &unk_1004D2380);
      (*(v74 + 32))(v69, v242, v73);
      v62 = v69;
      v63 = v73;
    }

    v247(v62, 0, 1, v63);
    goto LABEL_4;
  }

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v147 = *(v0 + 520);
  v148 = *(v0 + 416);
  v258 = *(v0 + 392);
  v150 = *(v0 + 352);
  v149 = *(v0 + 360);
  v152 = *(v0 + 336);
  v151 = *(v0 + 344);
  v153 = *(v0 + 312);
  v154 = type metadata accessor for Logger();
  sub_10000A6F0(v154, qword_1005DFF88);
  v147(v152, v151, v153);
  (*(v149 + 16))(v258, v148, v150);
  v155 = Logger.logObject.getter();
  v156 = static os_log_type_t.default.getter();
  v157 = os_log_type_enabled(v155, v156);
  v158 = *(v0 + 392);
  v159 = *(v0 + 352);
  v160 = *(v0 + 336);
  v162 = *(v0 + 312);
  v161 = *(v0 + 320);
  if (v157)
  {
    v245 = *(v0 + 352);
    v231 = *(v0 + 312);
    v164 = *(v0 + 128);
    v163 = *(v0 + 136);
    v165 = *(v0 + 120);
    v251 = v155;
    v166 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    *v166 = 136446466;
    v238 = v156;
    Fence.id.getter();
    sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v167 = dispatch thunk of CustomStringConvertible.description.getter();
    v169 = v168;
    (*(v164 + 8))(v163, v165);
    v170 = *(v161 + 8);
    v170(v160, v231);
    v171 = sub_10000D01C(v167, v169, &v259);

    *(v166 + 4) = v171;
    *(v166 + 12) = 2082;
    v172 = Date.localISO8601.getter();
    v174 = v173;
    v219(v158, v245);
    v175 = sub_10000D01C(v172, v174, &v259);

    *(v166 + 14) = v175;
    _os_log_impl(&_mh_execute_header, v251, v238, "Invite date for %{public}s is in the past (%{public}s). Triggering the fence invitation.", v166, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v219(v158, v159);
    v170 = *(v161 + 8);
    v170(v160, v162);
  }

  *(v0 + 552) = v170;
  v201 = swift_task_alloc();
  *(v0 + 560) = v201;
  *v201 = v0;
  v201[1] = sub_10029499C;
  v202 = *(v0 + 424);
  v203 = *(v0 + 344);
  v204 = *(v0 + 56);

  return sub_1002A9B6C(v203, v202);
}

uint64_t sub_100015198()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000152A8, v2, 0);
}

uint64_t sub_1000152A8()
{
  *(v0 + 96) = *(*(v0 + 16) + OBJC_IVAR____TtC13findmylocated12FenceService_connectionPool);
  sub_10004B564(&qword_1005B0990, &qword_1004D2310);
  sub_10001534C();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000153B0, v2, v1);
}

unint64_t sub_10001534C()
{
  result = qword_1005B0998;
  if (!qword_1005B0998)
  {
    sub_10004B610(&qword_1005B0990, &qword_1004D2310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0998);
  }

  return result;
}

uint64_t sub_1000153B0()
{
  v1 = v0[12];
  v2 = v0[2];
  v0[13] = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_100015420, v2, 0);
}

uint64_t sub_100015420()
{
  v1 = v0[13];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = v0[13];
    }

    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*(v1 + 16))
  {
LABEL_5:
    v3 = v0[13];
    v4 = v0[9];
    v5 = v0[2];
    sub_1000032D4(&qword_1005AF4A8, 255, type metadata accessor for FenceService);
    v6 = swift_task_alloc();
    v0[14] = v6;
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v7 = async function pointer to withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)[1];
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_100015FC4;

    return withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)();
  }

  v9 = v0[13];
  v10 = v0[9];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000155D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000368C;

  return sub_100015684(a1, a2, v7, v6);
}

uint64_t sub_100015684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a2;
  v5 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10001983C, 0, 0);
}

uint64_t sub_100015730()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1000157DC(v2, v3, v5, v4);
}

uint64_t sub_1000157DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for FenceDaemonRequest();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = type metadata accessor for FenceResponse();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100019CF0, 0, 0);
}

uint64_t sub_100015904(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100019DC0, v2, 0);
}

uint64_t sub_100015930(uint64_t a1)
{
  v4 = *(type metadata accessor for FenceDaemonRequest() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_100015A34(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100015A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return _swift_task_switch(sub_100015A58, 0, 0);
}

uint64_t sub_100015A58()
{
  v1 = v0[11];
  v2 = async function pointer to XPCAcceptedClient.proxy(errorHandler:)[1];

  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = type metadata accessor for FenceServiceClient();
  v6 = sub_1000032D4(&qword_1005B09A0, v5, type metadata accessor for FenceServiceClient);
  *v3 = v0;
  v3[1] = sub_100015B60;
  v8 = v0[10];
  v7 = v0[11];

  return XPCAcceptedClient.proxy(errorHandler:)(v0 + 8, sub_100251614, v7, v4, v6);
}

uint64_t sub_100015B60()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_10025136C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_10001A180;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100015C7C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[4];

    return _swift_task_switch(sub_1002510E0, v4, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100015DB8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FenceResponse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v18 = a3;
      swift_errorRetain();
    }

    else
    {
      sub_10005CF04();
      v14 = swift_allocError();
      *v15 = 0;
      v18 = v14;
    }

    OnceCheckedContinuation.resume(throwing:)();
  }

  else
  {
    v11 = type metadata accessor for PropertyListDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_100005F6C(a1, a2);
    PropertyListDecoder.init()();
    sub_1000032D4(&qword_1005B09B0, 255, &type metadata accessor for FenceResponse);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    OnceCheckedContinuation.resume(returning:)();
    sub_10001A794(a1, a2);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_100015FC4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v11 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_100250FD4;
  }

  else
  {
    v6 = v2[13];
    v7 = v2[14];
    v8 = v2[9];
    v9 = v2[2];

    v5 = sub_100016108;
    v4 = v9;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100016108()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

char *sub_10001616C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100016B44(a1, a2);
  sub_10001A7A8(&off_10058A548);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

uint64_t sub_1000161D0()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B4C(&qword_1005B2568, &type metadata accessor for LocationRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[13];
  v9 = v0[11];
  v11 = v0[6];
  v10 = v0[7];

  v12 = *(v5 + 48);
  v13 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B4C(&qword_1005B2558, &type metadata accessor for ClientID);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v14 = v0[8];

  return _swift_task_switch(sub_100016CE8, v14, 0);
}

uint64_t sub_100016580(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = *(*(sub_10004B564(&qword_1005A92D8, &qword_1004C2898) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = *(*(type metadata accessor for RequestOrigin() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for Friend();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v10 = type metadata accessor for Handle();
  v3[20] = v10;
  v11 = *(v10 - 8);
  v3[21] = v11;
  v12 = *(v11 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v13 = type metadata accessor for ClientID.ConnectionType();
  v3[30] = v13;
  v14 = *(v13 - 8);
  v3[31] = v14;
  v15 = *(v14 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v3[34] = Priority;
  v17 = *(Priority - 8);
  v3[35] = v17;
  v18 = *(v17 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v19 = type metadata accessor for LocationRequest();
  v3[39] = v19;
  v20 = *(v19 - 8);
  v3[40] = v20;
  v21 = *(v20 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return _swift_task_switch(sub_100017B94, v2, 0);
}

uint64_t sub_100016968(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 400);
  v12 = *v1;
  *(v3 + 408) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 416) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100016E78(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100016E78(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10001BFD8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

char *sub_100016B44(uint64_t a1, unint64_t a2)
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

  v6 = sub_100016C74(v5, 0);
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
        v7 = sub_100016C74(v10, 0);
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

void *sub_100016C74(uint64_t a1, uint64_t a2)
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

  sub_10004B564(&qword_1005AC298, &unk_1004C68F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100016CE8()
{
  v1 = v0[8];
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[18] = v3;
    *v3 = v0;
    v3[1] = sub_1003967F8;
    v4 = v0[16];
    v5 = v0[13];

    return sub_100016580(v4, v5);
  }

  else
  {
    v7 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[21] = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();

    return _swift_task_switch(sub_100396934, 0, 0);
  }
}

uint64_t sub_100016E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100016EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for HandleType();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001BDC8, 0, 0);
}

uint64_t sub_100016F84()
{
  v2 = *(sub_10004B564(&qword_1005B1C48, &qword_1004D5C78) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100016EC0(v4, v5, v0 + v3);
}

uint64_t sub_10001706C()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[55] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_100388A48;
  v7 = v0[53];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1000171D8()
{
  if (!v0[25])
  {
    v6 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for DatabaseError.notConnected(_:), v6);
    swift_willThrow();
LABEL_19:
    v17 = v0[22];
    v18 = v0[19];
    v19 = v0[16];
    v20 = v0[13];

    v21 = v0[1];

    return v21();
  }

  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  (*(v1 + 16))(v2, v0[9], v3);
  v4 = (*(v1 + 88))(v2, v3);
  if (v4 == enum case for HandleType.follower(_:))
  {
    v5 = 2;
  }

  else if (v4 == enum case for HandleType.following(_:))
  {
    v5 = 4;
  }

  else if (v4 == enum case for HandleType.futureFollower(_:))
  {
    v5 = 8;
  }

  else if (v4 == enum case for HandleType.futureFollowing(_:))
  {
    v5 = 16;
  }

  else
  {
    if (v4 != enum case for HandleType.pendingOffer(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v5 = 32;
  }

  if (qword_1005A8138 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v0[17], qword_1005E0078);
  if (qword_1005A82A0 != -1)
  {
    swift_once();
  }

  v30 = v0[24];
  v8 = v0[18];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  v28 = v0[19];
  v29 = v0[14];
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[11];
  sub_10000A6F0(v14, qword_1005E04C8);
  v0[7] = v5;
  sub_10001D2D8();
  & infix<A>(_:_:)();
  v0[8] = 0;
  != infix<A>(_:_:)();
  (*(v12 + 8))(v13, v14);
  QueryType.filter(_:)();
  (*(v11 + 8))(v10, v29);
  v0[5] = v9;
  v0[6] = &protocol witness table for Table;
  v15 = sub_10000331C(v0 + 2);
  (*(v8 + 16))(v15, v28, v9);
  v16 = sub_10000A728();
  if (v30)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    sub_100004984(v0 + 2);
    goto LABEL_19;
  }

  v23 = v0[22];
  v24 = v0[16];
  v25 = v0[13];
  v26 = v16;
  (*(v0[18] + 8))(v0[19], v0[17]);

  sub_100004984(v0 + 2);

  v27 = v0[1];

  return v27(v26);
}

uint64_t sub_1000176A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004B564(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100017710(uint64_t a1)
{
  v2 = type metadata accessor for FriendInfoOption(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_1000093F8(&unk_1005AEA60, type metadata accessor for FriendInfoOption);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1002413D8(v12, v7, type metadata accessor for FriendInfoOption);
      sub_100017F98(v9, v7);
      sub_1002412D8(v9);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_10001788C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FriendInfoOption(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1002357C8(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_100237A68();
      goto LABEL_12;
    }

    v28 = v11;
    sub_100238484(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for HandleType();
  sub_1000093F8(&qword_1005AE818, &type metadata accessor for HandleType);
  dispatch thunk of Hashable.hash(into:)();
  v18 = Hasher._finalize()();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1002413D8(*(v16 + 48) + v21 * a2, v13, type metadata accessor for FriendInfoOption);
      v22 = static HandleType.== infix(_:_:)();
      sub_1002412D8(v13);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100241440(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for FriendInfoOption);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100017B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017B4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017B94()
{
  v37 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[45] = sub_10000A6F0(v5, qword_1005E0B28);
  v6 = *(v3 + 16);
  v0[46] = v6;
  v0[47] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[44];
  v11 = v0[39];
  v12 = v0[40];
  if (v9)
  {
    v13 = v0[38];
    v35 = v8;
    v14 = v0[34];
    v15 = v0[35];
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E8920, &v36);
    *(v16 + 12) = 2082;
    v34 = v11;
    LocationRequest.priority.getter();
    sub_100016E78(&qword_1005B2460, &type metadata accessor for LocatePriority);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v34);
    v21 = sub_10000D01C(v17, v19, &v36);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v35, "%{public}s request priority: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[48] = v20;
  v23 = v0[32];
  v22 = v0[33];
  v24 = v0[30];
  v25 = v0[31];
  v26 = v0[4];
  ClientID.connectionType.getter();
  (*(v25 + 104))(v23, enum case for ClientID.ConnectionType.background(_:), v24);
  LOBYTE(v26) = static ClientID.ConnectionType.== infix(_:_:)();
  v27 = *(v25 + 8);
  v27(v23, v24);
  v27(v22, v24);
  if (v26)
  {
    v28 = *(v0[5] + OBJC_IVAR____TtC13findmylocated15LocationService_backgroundLocationsTimeoutManager);
    v29 = swift_task_alloc();
    v0[49] = v29;
    *v29 = v0;
    v29[1] = sub_10038891C;
    v30 = v0[4];

    return sub_10033FF6C(v30);
  }

  else
  {
    v32 = async function pointer to daemon.getter[1];
    v33 = swift_task_alloc();
    v0[50] = v33;
    *v33 = v0;
    v33[1] = sub_100016968;

    return daemon.getter();
  }
}

uint64_t sub_100017F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for FriendInfoOption(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for HandleType();
  sub_1000093F8(&qword_1005AE818, &type metadata accessor for HandleType);
  dispatch thunk of Hashable.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1002413D8(*(v10 + 48) + v16 * v14, v9, type metadata accessor for FriendInfoOption);
      v17 = static HandleType.== infix(_:_:)();
      sub_1002412D8(v9);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1002412D8(a2);
    sub_1002413D8(*(v10 + 48) + v16 * v14, v22, type metadata accessor for FriendInfoOption);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002413D8(a2, v9, type metadata accessor for FriendInfoOption);
    v23 = *v3;
    sub_10001788C(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = v23;
    sub_100241440(a2, v20, type metadata accessor for FriendInfoOption);
    return 1;
  }
}

uint64_t sub_1000181EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100018254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FriendInfoOption.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v49 = v46 - v5;
  v6 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v50 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = v46 - v10;
  v11 = type metadata accessor for ClientOrigin();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  __chkstk_darwin(v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HandleType();
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  __chkstk_darwin(v15);
  v55 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004B564(&qword_1005AE860, &qword_1004CF2F0);
  v56 = *(v18 - 8);
  v57 = v18;
  v19 = *(v56 + 64);
  __chkstk_darwin(v18);
  v21 = v46 - v20;
  v22 = type metadata accessor for FriendInfoOption(0);
  v23 = *(*(v22 - 1) + 64);
  __chkstk_darwin(v22);
  v25 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10001D604();
  v58 = v21;
  v27 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    return sub_100004984(a1);
  }

  v28 = v54;
  v59 = a1;
  v47 = v25;
  LOBYTE(v61) = 0;
  sub_10001C918(&qword_1005AE868, &type metadata accessor for HandleType);
  v29 = v55;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v15;
  v31 = *(v53 + 32);
  v32 = v47;
  v55 = v30;
  v31(v47, v29);
  LOBYTE(v61) = 1;
  sub_10001C918(&qword_1005AE870, &type metadata accessor for ClientOrigin);
  v33 = v52;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v51 + 32))(&v32[v22[5]], v14, v33);
  sub_10004B564(&qword_1005AE840, &qword_1004CF2E8);
  v60 = 2;
  sub_10001C960();
  v46[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v32[v22[6]] = v61;
  type metadata accessor for Date();
  LOBYTE(v61) = 3;
  sub_10001C918(&qword_1005A9820, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000176A8(v28, &v32[v22[7]], &unk_1005AE5B0, &qword_1004C32F0);
  LOBYTE(v61) = 4;
  v34 = v50;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000176A8(v34, &v32[v22[8]], &unk_1005AE5B0, &qword_1004C32F0);
  LOBYTE(v61) = 5;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = &v32[v22[9]];
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v61) = 6;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = &v32[v22[10]];
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v61) = 7;
  v47[v22[11]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  type metadata accessor for Handle();
  LOBYTE(v61) = 8;
  sub_10001C918(&qword_1005AE888, &type metadata accessor for Handle);
  v41 = v49;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000176A8(v41, &v47[v22[12]], &qword_1005B3360, &unk_1004C6AA0);
  LOBYTE(v61) = 9;
  v47[v22[13]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v61) = 10;
  v47[v22[14]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v61) = 11;
  v47[v22[15]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v61) = 12;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v56 + 8))(v58, v57);
  v44 = v47;
  v43 = v48;
  v47[v22[16]] = v42;
  sub_1000181EC(v44, v43, type metadata accessor for FriendInfoOption);
  sub_100004984(v59);
  return sub_100006E08(v44, type metadata accessor for FriendInfoOption);
}

uint64_t sub_100018D64()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100019024(v2, v3, v5);
}

uint64_t sub_100018F14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018F70()
{
  v1 = *(v0 + 184);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 200) = Database.readConnection.getter();

  return _swift_task_switch(sub_1000171D8, 0, 0);
}

uint64_t sub_100019024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10001B8E8, a1, 0);
}

uint64_t sub_10001904C()
{
  v1 = *(*(v0 + 80) + 112);
  *(v0 + 184) = v1;
  return _swift_task_switch(sub_10001C530, v1, 0);
}

uint64_t sub_100019070()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10001B5C4, v0, 0);
}

size_t sub_10001910C(size_t a1, int64_t a2, char a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B00A8, &qword_1004D1638, type metadata accessor for FenceRecord);
  *v3 = result;
  return result;
}

uint64_t sub_100019150(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_100019170, 0, 0);
}

uint64_t sub_100019170()
{
  v1 = *(*(v0 + 32) + 128);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_10000F728;

  return sub_100008414();
}

uint64_t sub_100019204()
{
  v1 = *(v0 + 1288);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 1304) = Database.readConnection.getter();

  return _swift_task_switch(sub_100008530, 0, 0);
}

char *sub_1000192B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B00E0, &qword_1004D1680);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 584);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[584 * v8])
    {
      memmove(v12, v13, 584 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000193DC()
{
  v2 = *v1;
  v3 = *(*v1 + 3888);
  v10 = *v1;
  *(*v1 + 3896) = v0;

  if (v0)
  {
    v4 = v2[485];
    v5 = v2[480];
    v6 = v2[466];

    v7 = sub_10020DF84;
    v8 = v6;
  }

  else
  {
    v8 = v2[466];
    v7 = sub_100008B24;
  }

  return _swift_task_switch(v7, v8, 0);
}

void *sub_100019510(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v7 = sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Fence();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v38 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v32 = &v27 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return &_swiftEmptyArrayStorage;
  }

  v18 = (a3 + 32);
  v33 = (v15 + 32);
  v34 = (v15 + 48);
  v19 = &_swiftEmptyArrayStorage;
  v30 = v11;
  v31 = a2;
  v28 = a1;
  v29 = v15;
  v27 = v10;
  while (1)
  {
    memcpy(v37, v18, 0x241uLL);
    memcpy(v36, v18, 0x241uLL);
    sub_10005D0C0(v37, v35);
    a1(v36);
    if (v3)
    {
      break;
    }

    memcpy(v35, v36, 0x241uLL);
    sub_10005D11C(v35);
    if ((*v34)(v10, 1, v11) == 1)
    {
      sub_100002CE0(v10, &qword_1005B09D0, &unk_1004D2380);
    }

    else
    {
      v20 = v32;
      v21 = *v33;
      (*v33)(v32, v10, v11);
      v21(v38, v20, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1001FD464(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      v24 = v19;
      v10 = v27;
      if (v23 >= v22 >> 1)
      {
        v24 = sub_1001FD464(v22 > 1, v23 + 1, 1, v19);
      }

      *(v24 + 16) = v23 + 1;
      v19 = v24;
      v25 = v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23;
      v11 = v30;
      v21(v25, v38, v30);
      a1 = v28;
    }

    v18 += 584;
    if (!--v17)
    {
      return v19;
    }
  }

  memcpy(v35, v36, 0x241uLL);
  sub_10005D11C(v35);

  return v19;
}

uint64_t sub_10001983C()
{
  v1 = v0[17];
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = v0[17];
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for FenceServiceClient();
    sub_1000032D4(&qword_1005B0988, v3, type metadata accessor for FenceServiceClient);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v0[2];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);
    v12 = v0[17];

    v7 = 0;
  }

  v39 = v0 + 7;
  v13 = (v6 + 64) >> 6;
  v42 = v5;
  v43 = v1;
  v40 = v13;
  v41 = v0;
  while (v1 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v0[15] = v21, type metadata accessor for FenceServiceClient(), swift_dynamicCast(), v20 = v0[14], v18 = v7, v19 = v8, !v20))
    {
LABEL_29:
      v37 = v0[19];
      v36 = v0[20];
      sub_10000E3F8();

      v38 = v0[1];

      return v38();
    }

LABEL_21:
    v44 = v19;
    v23 = v0[19];
    v22 = v0[20];
    v24 = v0[18];
    v25 = type metadata accessor for TaskPriority();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v22, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = 0;
    v28 = v27 + 2;
    v27[3] = 0;
    v27[4] = v20;
    v27[5] = v24;
    sub_100005F04(v22, v23, &qword_1005A9690, &qword_1004C2A00);
    LODWORD(v23) = (*(v26 + 48))(v23, 1, v25);

    v29 = v41[19];
    if (v23 == 1)
    {
      sub_100002CE0(v41[19], &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v26 + 8))(v29, v25);
    }

    v0 = v41;
    if (*v28)
    {
      v30 = v27[3];
      v31 = *v28;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v32 = dispatch thunk of Actor.unownedExecutor.getter();
      v34 = v33;
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = *v41[16];

    if (v34 | v32)
    {
      v14 = v39;
      *v39 = 0;
      v39[1] = 0;
      v41[9] = v32;
      v41[10] = v34;
    }

    else
    {
      v14 = 0;
    }

    v13 = v40;
    v15 = v41[20];
    v41[11] = 1;
    v41[12] = v14;
    v41[13] = v35;
    swift_task_create();

    result = sub_100002CE0(v15, &qword_1005A9690, &qword_1004C2A00);
    v7 = v18;
    v8 = v44;
    v5 = v42;
    v1 = v43;
  }

  v16 = v7;
  v17 = v8;
  v18 = v7;
  if (v8)
  {
LABEL_17:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
      goto LABEL_29;
    }

    v17 = *(v5 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100019CA8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100019CF0()
{
  v1 = v0[5];
  v2 = v0[4];
  *v0[6] = v0[3];
  (*(v1 + 104))();

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_10001A374;
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[2];

  return sub_100015904(v4, v5);
}

uint64_t sub_100019DC0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for FenceResponse();
  *v3 = v0;
  v3[1] = sub_100015C7C;
  v5 = *(v0 + 16);

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v5, 0x75716552656B616DLL, 0xEF293A5F28747365, sub_100015928, v1, v4);
}

uint64_t sub_100019EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FenceDaemonRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a1;
  (*(v7 + 32))(&v15[v14], &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_1001D7F30(0, 0, v12, &unk_1004D2358, v15);
}

uint64_t sub_10001A0AC()
{
  v1 = type metadata accessor for FenceDaemonRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001A180()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for FenceDaemonRequest();
  sub_1000032D4(&qword_1005B09A8, 255, &type metadata accessor for FenceDaemonRequest);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    swift_unknownObjectRelease();
    v0[9] = v1;
    v9 = v0[11];
    OnceCheckedContinuation.resume(throwing:)();
  }

  else
  {
    v10 = v0[11];
    v11 = v7;
    v12 = v8;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_100015FBC;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10001A6E8;
    v0[5] = &unk_1005977F8;
    v14 = _Block_copy(v0 + 2);
    v15 = v0[7];

    [v3 request:isa completion:v14];
    _Block_release(v14);

    sub_1000049D0(v11, v12);

    swift_unknownObjectRelease();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10001A374()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100251060;
  }

  else
  {
    v6 = sub_10001A4E4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001A4E4()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v3 + 16);
  v4(v1, v0[10], v2);
  v5 = (*(v3 + 88))(v1, v2);
  v6 = *(v3 + 8);
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  if (v5 == enum case for FenceResponse.void(_:))
  {
    v10 = v0[6];
    v6(v0[10], v0[7]);
    v6(v8, v9);
  }

  else
  {
    v6(v0[9], v0[7]);
    type metadata accessor for FenceServiceClient.Failure(0);
    sub_1000032D4(&qword_1005A9140, 255, type metadata accessor for FenceServiceClient.Failure);
    swift_allocError();
    v4(v12, v7, v9);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v6(v7, v9);
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[6];
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10001A6E8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_10001A794(v4, v9);
}

uint64_t sub_10001A794(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000049D0(a1, a2);
  }

  return a1;
}

uint64_t sub_10001A7A8(uint64_t result)
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

  result = sub_10001B7F4(result, v12, 1, v3);
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

uint64_t sub_10001A8B8(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for LocationServiceClient();
  *(v1 + 24) = swift_allocObject();

  return _swift_task_switch(sub_1000033F8, 0, 0);
}

uint64_t sub_10001A930(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10001ABE0, v1, 0);
}

uint64_t sub_10001A950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000368C;

  return sub_10001A930(a5);
}

uint64_t sub_10001A9EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_10001A950(a1, v4, v5, v7, v6);
}

uint64_t sub_10001AAAC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10001BA68, 0, 0);
}

uint64_t sub_10001AB48(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002D40;

  return sub_10001AAAC(a1, v1);
}

uint64_t sub_10001ABE0()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);
  v2 = *(&async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:) + 1);
  v6 = (&async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:) + async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_10001ACF0;
  v4 = v0[2];

  return v6(v4);
}

Swift::Int sub_10001AC98()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for LocationServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001ACF0()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v5 = *(v2 + 24);

    return _swift_task_switch(sub_100349DE4, v5, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_10001AE44()
{
  v1 = *v0;
  type metadata accessor for LocationServiceClient();
  sub_10001AEBC(&qword_1005B23F8, v2, type metadata accessor for LocationServiceClient);
  return XPCAcceptedClient.hash(into:)();
}

uint64_t sub_10001AEBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_10001AF04(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v51 = &v46 - v10;
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v54 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v46 - v21;
  __chkstk_darwin(v20);
  v24 = &v46 - v23;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_10000A6F0(v25, qword_1005E0B28);
  v53 = a1;
  sub_100005F04(a1, v24, &qword_1005A96E0, &qword_1004C2A80);
  v50 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v48 = v12;
    v49 = v2;
    v29 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55[0] = v47;
    *v29 = 136446466;
    *(v29 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E8170, v55);
    *(v29 + 12) = 2082;
    sub_100005F04(v24, v22, &qword_1005A96E0, &qword_1004C2A80);
    if ((*(v5 + 48))(v22, 1, v4) == 1)
    {
      sub_100002CE0(v22, &qword_1005A96E0, &qword_1004C2A80);
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v30 = UUID.uuidString.getter();
      v31 = v32;
      (*(v5 + 8))(v22, v4);
    }

    sub_100002CE0(v24, &qword_1005A96E0, &qword_1004C2A80);
    v33 = sub_10000D01C(v30, v31, v55);

    *(v29 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s %{public}s", v29, 0x16u);
    swift_arrayDestroy();

    v12 = v48;
  }

  else
  {

    sub_100002CE0(v24, &qword_1005A96E0, &qword_1004C2A80);
  }

  v34 = v54;
  sub_100005F04(v53, v54, &qword_1005A96E0, &qword_1004C2A80);
  v35 = *(v5 + 48);
  if (v35(v34, 1, v4) == 1)
  {
    type metadata accessor for Transaction();
    v36 = static Transaction.currentNSXPCConnection.getter();
    if (v36)
    {
      v37 = v36;
      NSXPCConnection.id.getter();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    (*(v5 + 56))(v19, v38, 1, v4);
    if (v35(v34, 1, v4) != 1)
    {
      sub_100002CE0(v34, &qword_1005A96E0, &qword_1004C2A80);
    }
  }

  else
  {
    (*(v5 + 32))(v19, v34, v4);
    (*(v5 + 56))(v19, 0, 1, v4);
  }

  if (v35(v19, 1, v4) == 1)
  {
    sub_100002CE0(v19, &qword_1005A96E0, &qword_1004C2A80);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55[0] = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E8170, v55);
      _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s. Failed to get current client XPC connection ID", v41, 0xCu);
      sub_100004984(v42);
    }
  }

  else
  {
    (*(v5 + 32))(v12, v19, v4);
    v43 = v52;
    (*(v5 + 16))(v52, v12, v4);
    swift_beginAccess();
    v44 = v51;
    sub_10001CFF8(v51, v43);
    v45 = *(v5 + 8);
    v45(v44, v4);
    swift_endAccess();
    v45(v12, v4);
  }
}

uint64_t sub_10001B5C4()
{
  v13 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E8950, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v0[4] = 0x80000001004E8950;
  v7 = v0[2];
  v6 = v0[3];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_10001AF04(v6);
  sub_100002CE0(v6, &qword_1005A96E0, &qword_1004C2A80);
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_10001C418;
  v10 = v0[2];

  return sub_10001CC28();
}

char *sub_10001B7F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005AC298, &unk_1004C68F0);
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

uint64_t sub_10001B8E8()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100027424;

    return sub_100019070();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003A6218, 0, 0);
  }
}

uint64_t sub_10001BA68()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[7];
    v5 = v0[5];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v3;
    v7[5] = v5;
    v8 = v5;
    sub_1001D7F30(0, 0, v4, &unk_1004D6B28, v7);
  }

  v9 = v0[7];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_10001BB94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001BBDC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_10004B564(&qword_1005B1A30, &qword_1004D6050);
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = type metadata accessor for Table();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v11 = *(v10 + 64) + 15;
  v2[19] = swift_task_alloc();
  v12 = type metadata accessor for HandleType();
  v2[20] = v12;
  v13 = *(v12 - 8);
  v2[21] = v13;
  v14 = *(v13 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10001904C, 0, 0);
}

uint64_t sub_10001BDC8()
{
  v20 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 + 16);
  *(v0 + 80) = v3;
  if (v3)
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 144) = v7;
    *(v0 + 88) = *(v5 + 56);
    *(v0 + 96) = v6;
    *(v0 + 104) = 0;
    *(v0 + 112) = &_swiftEmptySetSingleton;
    v6(*(v0 + 72), v1 + ((v7 + 32) & ~v7), v4);
    v8 = *(v2 + 128);
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = sub_100022CCC;
    v10 = *(v0 + 72);

    return sub_10001BBDC(v10);
  }

  v12 = *(&_swiftEmptySetSingleton + 2);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = sub_10022BCF4(*(&_swiftEmptySetSingleton + 2), 0);
  v14 = *(type metadata accessor for Friend() - 8);
  v15 = sub_10023EAA8(&v19, &v13[(*(v14 + 80) + 32) & ~*(v14 + 80)], v12, &_swiftEmptySetSingleton);
  sub_10000E3F8();
  if (v15 != v12)
  {
    __break(1u);
LABEL_8:

    v13 = _swiftEmptyArrayStorage;
  }

  v16 = *(v0 + 48);
  *(v0 + 24) = v13;
  sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  CheckedContinuation.resume(returning:)();
  v17 = *(v0 + 72);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10001BFD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  v4[53] = a1;
  v4[54] = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = sub_10038A4EC;
  }

  else
  {
    v9 = v4[51];

    v8 = sub_10001706C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10001C110()
{
  v1 = v0[4];
  v2 = *(v1 + 128);
  v0[6] = v2;
  if (v2)
  {
    v3 = async function pointer to Task<>.value.getter[1];

    v4 = swift_task_alloc();
    v0[7] = v4;
    v5 = type metadata accessor for SecureLocationsManagerAdapter();
    *v4 = v0;
    v4[1] = sub_10001C808;
    v6 = v0 + 3;
  }

  else
  {
    v7 = v0[5];
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    v2 = sub_1001D8544(0, 0, v7, &unk_1004D6B38, v9);
    v0[8] = v2;
    v10 = *(v1 + 128);
    *(v1 + 128) = v2;

    v11 = async function pointer to Task<>.value.getter[1];
    v12 = swift_task_alloc();
    v0[9] = v12;
    v5 = type metadata accessor for SecureLocationsManagerAdapter();
    *v12 = v0;
    v12[1] = sub_100345094;
    v6 = v0 + 2;
  }

  return Task<>.value.getter(v6, v2, v5);
}

uint64_t sub_10001C2D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C314()
{
  v1 = v0[2];
  v2 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService);
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100026BD0;
  v5 = v0[6];
  v6 = v0[4];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v1, v2, 0xD00000000000001CLL, v6, sub_10001D658, v5, &type metadata for () + 8);
}

uint64_t sub_10001C418(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10001C314, v3, 0);
}

uint64_t sub_10001C530()
{
  v1 = *(v0 + 184);
  sub_10000A0A4();
  *(v0 + 192) = 0;
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_100018F70, v2, 0);
}

uint64_t sub_10001C61C(uint64_t a1, char a2)
{
  *(v3 + 848) = v2;
  *(v3 + 1032) = a2;
  *(v3 + 840) = a1;
  *(v3 + 856) = *v2;
  v4 = type metadata accessor for Date();
  *(v3 + 864) = v4;
  v5 = *(v4 - 8);
  *(v3 + 872) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 880) = swift_task_alloc();
  v7 = type metadata accessor for HandleType();
  *(v3 + 888) = v7;
  v8 = *(v7 - 8);
  *(v3 + 896) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 904) = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  *(v3 + 912) = v11;
  *v11 = v3;
  v11[1] = sub_10002C8B8;

  return daemon.getter();
}

uint64_t sub_10001C798()
{
  v1 = v0[6];

  v2 = v0[3];
  v3 = v0[5];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_10001C808()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10001C798, v2, 0);
}

uint64_t sub_10001C918(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001C960()
{
  result = qword_1005AE878;
  if (!qword_1005AE878)
  {
    sub_10004B610(&qword_1005AE840, &qword_1004CF2E8);
    sub_10001C918(&qword_1005AE880, &type metadata accessor for GroupID);
    sub_10001C918(&qword_1005A9820, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AE878);
  }

  return result;
}

unint64_t sub_10001CA70(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6E696769726FLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7441657461657263;
      break;
    case 4:
      result = 0x797269707865;
      break;
    case 5:
      result = 0x4449726576726573;
      break;
    case 6:
      result = 0x657469726F766166;
      break;
    case 7:
      result = 0x746F4E646574706FLL;
      break;
    case 8:
      result = 0x6E614872656E776FLL;
      break;
    case 9:
      result = 0xD000000000000023;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001CC28()
{
  *(v1 + 32) = v0;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10001C110, v0, 0);
}

uint64_t sub_10001CCC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}
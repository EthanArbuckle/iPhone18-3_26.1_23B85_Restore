uint64_t sub_100308C74()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  (*(v0 + 64))(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  *(v0 + 80) = 0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  return _swift_task_switch(sub_10030BDD8, v4, 0);
}

uint64_t sub_100308D20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  v9 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1004B03A0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1004B03A8;
  v16[5] = v15;
  v17 = a3;

  sub_10030AFC8(0, 0, v11, &unk_1004B03B0, v16);
}

uint64_t sub_100308EB0(int a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_10030BDCC;

  return sub_100308B2C(v6, v8, a2);
}

uint64_t sub_100308F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_100308FBC, v5, 0);
}

uint64_t sub_100308FBC()
{
  v1 = v0[7];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4._object = 0x80000001004B4EC0;
    v4._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v4))
    {
      v5 = *(v0[7] + 112);
      v0[9] = v5;
      v6 = *v5 + 488;
      v0[10] = *v6;
      v0[11] = v6 & 0xFFFFFFFFFFFFLL | 0xFC85000000000000;

      return _swift_task_switch(sub_1003090E0, v5, 0);
    }
  }

  v7 = v0[7];
  v8 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003090E0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), 1);
  *(v0 + 96) = 0;
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  return _swift_task_switch(sub_100309194, v4, 0);
}

uint64_t sub_100309194()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003091F8()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_100309260(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, const void *a6)
{
  v11 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = a1;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1004B0380;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1004B0388;
  v18[5] = v17;
  v19 = a3;
  v20 = a5;

  sub_10030AFC8(0, 0, v13, &unk_1004B0390, v18);
}

uint64_t sub_100309404(int a1, uint64_t a2, int a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v5[4] = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v5[5] = v11;

  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_100309510;

  return sub_100308F94(v7, v9, a2, v10, v12);
}

uint64_t sub_100309510()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1003096D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_100309700, v4, 0);
}

uint64_t sub_100309700()
{
  v1 = v0[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4._object = 0x80000001004B4EC0;
    v4._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v4))
    {
      v5 = *(v0[5] + 112);
      v0[7] = v5;
      v6 = *v5 + 496;
      v0[8] = *v6;
      v0[9] = v6 & 0xFFFFFFFFFFFFLL | 0xC378000000000000;

      return _swift_task_switch(sub_100309824, v5, 0);
    }
  }

  v7 = v0[5];
  v8 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100309824()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  (*(v0 + 64))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 88));
  *(v0 + 80) = 0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  return _swift_task_switch(sub_1003098D4, v4, 0);
}

uint64_t sub_1003098D4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100309938()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1003099A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, const void *a6)
{
  v11 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = v14;
  *(v15 + 48) = a1;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1004B0360;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1004B0368;
  v18[5] = v17;
  v19 = a3;

  sub_10030AFC8(0, 0, v13, &unk_1004B0370, v18);
}

uint64_t sub_100309B40(int a1, uint64_t a2, char a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;

  v11 = swift_task_alloc();
  v5[5] = v11;
  *v11 = v5;
  v11[1] = sub_10030BDCC;

  return sub_1003096D8(v8, v10, a2, a3);
}

uint64_t sub_100309C2C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100309C50, v2, 0);
}

uint64_t sub_100309C50()
{
  v1 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4._object = 0x80000001004B4EC0;
    v4._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v4))
    {
      v5 = *(v0[4] + 112);
      v0[6] = v5;
      v6 = *v5 + 504;
      v0[7] = *v6;
      v0[8] = v6 & 0xFFFFFFFFFFFFLL | 0x67F3000000000000;

      return _swift_task_switch(sub_100309D74, v5, 0);
    }
  }

  v7 = v0[4];
  v8 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100309D74()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  (*(v0 + 56))(*(v0 + 16), *(v0 + 24));
  *(v0 + 72) = 0;
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);

  return _swift_task_switch(sub_100309E1C, v4, 0);
}

uint64_t sub_100309E1C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100309E80()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_100309EE8(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1004B0340;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004B0348;
  v14[5] = v13;
  v15 = a3;

  sub_10030AFC8(0, 0, v9, &unk_1004B0350, v14);
}

uint64_t sub_10030A074(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10030A148;

  return sub_100309C2C(v4, v6);
}

uint64_t sub_10030A148()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10030A30C()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4._object = 0x80000001004B4EC0;
    v4._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v4))
    {
      v5 = *(v0[2] + 112);
      v0[4] = v5;
      v6 = *(*v5 + 512);

      v13 = (v6 + *v6);
      v7 = v6[1];
      v8 = swift_task_alloc();
      v0[5] = v8;
      *v8 = v0;
      v8[1] = sub_10030A4CC;

      return v13();
    }
  }

  v10 = v0[2];
  v11 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10030A4CC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_10030A658;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 16);

    v5 = sub_10030A5F4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10030A5F4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030A658()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t sub_10030A6C0(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1004B02F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004B0308;
  v12[5] = v11;

  sub_10030AFC8(0, 0, v7, &unk_1004B0318, v12);
}

uint64_t sub_10030A838(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10030A8E0;

  return sub_10030A2EC();
}

uint64_t sub_10030A8E0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

id sub_10030AA68(void *a1)
{
  v2 = v1;
  if (qword_1005943E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100037644(v4, qword_10059B950);
  v5 = a1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v2;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v2;
    v9[1] = a1;

    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "WiFiAwarePairingStoreInstance[%@] Invalidating unauthorized connection: %@", v8, 0x16u);
    sub_10005DC58(&qword_10058B780, &qword_100480AC0);
    swift_arrayDestroy();
  }

  return [v5 invalidate];
}

uint64_t sub_10030ABFC()
{
  v1 = v0;
  if (qword_1005943E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100037644(v2, qword_10059B950);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v1;
    *v6 = v1;

    _os_log_impl(&_mh_execute_header, v3, v4, "WiFiAwarePairingStoreInstance[%@] de-initialized", v5, 0xCu);
    sub_100016290(v6, &qword_10058B780, &qword_100480AC0);
  }

  v7 = *(v1 + 112);

  v8 = *(v1 + 128);

  swift_unknownObjectWeakDestroy();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10030AD64()
{
  sub_10030ABFC();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10030AD90()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_10030ADF8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10030BDD0;

  return v7();
}

uint64_t sub_10030AEE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1002CB380;

  return v8();
}

uint64_t sub_10030AFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_10030B6DC(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100016290(v11, &qword_1005985E0, &unk_1004B0F80);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);

    return v22;
  }

LABEL_8:
  sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10030B2B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10030B3AC;

  return v7(a1);
}

uint64_t sub_10030B3AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10030B4A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10030BDD0;

  return sub_10030A838(v2, v3);
}

uint64_t sub_10030B550()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10030BDD0;

  return sub_10030ADF8(v2, v3, v5);
}

uint64_t sub_10030B610(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10030BDD0;

  return sub_10030AEE0(a1, v4, v5, v7);
}

uint64_t sub_10030B6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030B74C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10030BDD0;

  return sub_10030B2B4(a1, v5);
}

uint64_t sub_10030B804(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1002CB380;

  return sub_10030B2B4(a1, v5);
}

uint64_t sub_10030B8BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10030BDD0;

  return sub_10030A074(v2, v3, v4);
}

uint64_t sub_10030B970()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10030BDD0;

  return sub_100309B40(v2, v3, v4, v6, v5);
}

uint64_t sub_10030BA38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10030BDD0;

  return sub_100309404(v2, v3, v4, v5, v6);
}

uint64_t sub_10030BB00()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10030BDD0;

  return sub_100308EB0(v2, v3, v5, v4);
}

uint64_t sub_10030BBC0()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10030BDD0;

  return sub_1003087AC(v5, v2, v3, v4, v6, v7, v8);
}

uint64_t sub_10030BCA0()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10030BCE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1002CB380;

  return sub_1003080E0(v2, v3);
}

uint64_t sub_10030BD8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

BOOL sub_10030BDDC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for UUID() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10001AD5C(&qword_100597540, &type metadata accessor for UUID);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_10030BEE8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = a2();
  v13 = *v5;
  v6 = *(v5 + 16);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 64);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v8 += 5;
      a3(v9, v10, v11);
      --v7;
    }

    while (v7);
  }

  return v13;
}

_UNKNOWN **sub_10030BFFC()
{
  v1 = *(v0 + 24) | (*(v0 + 28) << 32);
  v2 = *(v0 + 8) != 1 || (v1 & 0xFF00000000) == 0x300000000;
  if (v2 || (static Channel.isValid(channel:on:with:)(v1, HIDWORD(v1), v1 >> 40) & 1) == 0)
  {
    return &off_1005729A0;
  }

  else
  {
    return &off_100572978;
  }
}

uint64_t sub_10030C05C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin();
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + *(v4 + 36), v2);
  return String.init<A>(describing:)();
}

uint64_t sub_10030C120(uint64_t a1)
{
  v2 = *(a1 + 36);
  v7 = *(a1 + 16);
  v3 = v7;
  v4 = sub_1000297D4(v6);
  (*(*(v3 - 8) + 16))(v4, v1 + v2, v3);
  return Mirror.init(reflecting:)();
}

uint64_t sub_10030C1A8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = *(a2 + 16);
  v5 = v2 + *(a2 + 36);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10030C248(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10030C1A8(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_10030C2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  sub_10030C1A8(v6, a2);
  return Hasher._finalize()();
}

void sub_10030C374(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for PriorityRadioConstraint();
  Hasher._combine(_:)(*(v1 + v3[5]));
  RadioResources.SymbolicChannel.hash(into:)(a1, *(v1 + v3[6]), *(v1 + v3[6] + 8));
  v4 = (v1 + v3[7]);
  v5 = v4[17];
  LOBYTE(v3) = v4[18];
  v6 = v4[19];
  v7 = v4[20];
  v8 = v4[21];
  v9 = v4[22];
  v10 = v4[23];
  Hasher._combine(_:)(v4[16]);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
}

Swift::Int sub_10030C4A4()
{
  Hasher.init(_seed:)();
  sub_10030C374(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10030C4E8()
{
  Hasher.init(_seed:)();
  sub_10030C374(v1);
  return Hasher._finalize()();
}

uint64_t sub_10030C528()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin();
  v6 = &v23 - v5;
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v24 = v3;
    sub_10002AA40(&v30);
    v25 = v30;
    v29[0] = *v31;
    *(v29 + 14) = *(&v31[3] + 2);
    v27 = *&v31[7];
    v28 = v32;
    v9 = *(*v8 + 200);

    v11 = v9(v10);
    v33 = *WiFiDriverCapabilities.supportsDualBand.unsafeMutableAddressor();
    v26 = v11;
    sub_1000C2A14();

    v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();

    HIDWORD(v23) = v12 & 1;
    v14 = v9(v13);

    v33 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
    v26 = v14;

    v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();

    v16 = v15 & 1;
    sub_1003EB210(v6);
    v17 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = *(v2 + 80);
    *(v19 + 24) = *(v2 + 88);
    *(v19 + 40) = *(v2 + 104);
    *(v19 + 48) = v18;
    v20 = qword_1005960E0;
    swift_beginAccess();
    v21 = v17;
    ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v21, (v1 + v20), sub_100317454, v19, v24, &v33);
    swift_endAccess();

    sub_100016290(v6, &qword_100594D50, &unk_1004AEBF0);
    if (*v34)
    {
      v22 = *&v34[16] | (*&v34[20] << 32);
    }

    else
    {
      v22 = 0x300000000;
    }

    v33 = v25;
    v34[0] = BYTE4(v23);
    v34[1] = v16;
    *&v34[2] = v29[0];
    *&v34[16] = *(v29 + 14);
    v35 = v22;
    v36 = WORD2(v22);
    v37 = v27;
    v38 = v28;
    sub_10002B214(&v33);
  }

  return result;
}

uint64_t sub_10030C8AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 28);
  v4 = *(a2 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2)
    {
      v6 = v4 | (v3 << 32);
    }

    else
    {
      v6 = 0x300000000;
    }

    sub_10002AA40(v7);
    v8[0] = *v7;
    v8[1] = *&v7[8];
    v11 = *&v7[19];
    v12 = v7[27];
    v9 = v6;
    v10 = WORD2(v6);
    sub_10002B214(v8);
  }

  return result;
}

uint64_t sub_10030C964()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10005DC58(&unk_10059A3D0, &qword_1004B0730);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_10040DCDC(v6);
    v9 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = *(v2 + 80);
    *(v11 + 24) = *(v2 + 88);
    *(v11 + 40) = *(v2 + 104);
    *(v11 + 48) = v10;
    v12 = qword_1005960E8;
    swift_beginAccess();
    v13 = v9;
    ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v13, (v1 + v12), sub_1003173A4, v11, v3, v37);
    swift_endAccess();

    sub_100016290(v6, &unk_10059A3D0, &qword_1004B0730);
    v14._rawValue = v37[0];
    sub_10002AA40(v37);
    v40 = v38;
    v41 = v39;
    sub_10002AC5C(&v40, v42);
    sub_10002ACB8(v37);
    v34 = v40;
    v35 = v41;
    v33 = v8;
    v15 = sub_100019B10();
    RadioResources.SymbolicChannel.Resolver.primaryChannel.setter(v15 & 0xFFFFFFFFFFFFLL);
    v16 = sub_10002AF00();
    RadioResources.SymbolicChannel.Resolver.secondaryChannel.setter(v16 & 0xFFFFFFFFFFFFLL);
    RadioResources.SymbolicChannel.Resolver.update(preferredChannels:)(v14);

    LODWORD(v14._rawValue) = v34;
    v17 = WORD2(v34);
    v30 = DWORD2(v34);
    v28 = WORD6(v34);
    v32 = v35;
    v29 = WORD2(v35);
    v31 = *(&v35 + 1);
    v19 = *(v1 + qword_1005960F0 + 8);
    v20 = *(v1 + qword_1005960F0 + 16);
    v21 = *(v1 + qword_1005960F0 + 24);
    v22 = *(v1 + qword_1005960F0 + 32);
    v23 = *(v1 + qword_1005960F0 + 40);
    v24 = *(v1 + qword_1005960F0 + 48);
    v25 = HIWORD(v20);
    v26 = HIWORD(v21);
    v27 = HIWORD(v22);
    v36[0] = *(v1 + qword_1005960F0);
    v18 = v36[0];
    v36[1] = v19;
    v36[2] = v20;
    v36[3] = v21;
    v36[4] = v22;
    v36[5] = v23;
    v36[6] = v24;
    sub_10002996C(v36, v42);

    v42[0] = v18;
    v42[1] = v19;
    rawValue = v14._rawValue;
    v44 = v17;
    v45 = v25;
    v47 = v28;
    v46 = v30;
    v48 = v26;
    v50 = v29;
    v49 = v32;
    v51 = v27;
    v52 = v31;
    v53 = v24;
    sub_10002B214(v42);
  }

  return result;
}

uint64_t sub_10030CCD8(uint64_t a1, void **a2)
{
  v2._rawValue = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10002AA40(v4);
    RadioResources.SymbolicChannel.Resolver.update(preferredChannels:)(v2);
    sub_10002B214(v4);
  }

  return result;
}

uint64_t sub_10030CD60()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_10030CD98();
  return v3;
}

uint64_t sub_10030CD98()
{
  Logger.init(subsystem:category:)();
  *(v0 + qword_1005960E0) = 0;
  swift_weakInit();
  *(v0 + qword_1005960E8) = 0;
  swift_weakInit();
  swift_weakInit();
  v1 = v0 + qword_1005960F0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v0 + qword_1005960F8) = &_swiftEmptyDictionarySingleton;
  return v0;
}

uint64_t sub_10030CE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a4;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v15)
  {
    dispatch thunk of Identifiable.id.getter();
    swift_beginAccess();
    v18 = sub_1003AD518(v8, v20);
    (*(v5 + 8))(v8, v4, v18);
    sub_100016290(v20, &unk_100597470, &unk_1004B07E0);
    swift_endAccess();
    return sub_10002A698();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10030D0A0()
{
  v1 = qword_10059B968;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1005960E0);

  swift_weakDestroy();
  v4 = *(v0 + qword_1005960E8);

  swift_weakDestroy();
  swift_weakDestroy();
  v5 = *(v0 + qword_1005960F0 + 8);
  v6 = *(v0 + qword_1005960F0 + 16);
  v7 = *(v0 + qword_1005960F0 + 24);
  v8 = *(v0 + qword_1005960F0 + 32);
  v9 = *(v0 + qword_1005960F0 + 40);
  v10 = *(v0 + qword_1005960F0 + 48);
  sub_1000299A4(*(v0 + qword_1005960F0));
  v11 = *(v0 + qword_1005960F8);

  return v0;
}

uint64_t sub_10030D180()
{
  sub_10030D0A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10030D1FC(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  v7 = *(a2 + 16);
  if (v7 != 2)
  {
    if (v7 != 1)
    {
      if (!v7 && (a3 & 1) == 0)
      {
        v8 = TimeBitmap.all.unsafeMutableAddressor();
        v9 = *v8;
        v10 = *(v8 + 1);
        v11 = *(v8 + 2);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v13 = *(AssociatedConformanceWitness + 32);
        v14 = swift_checkMetadataState();
        return v13(v9, v10, v11, 1, 2, a4, v14, AssociatedConformanceWitness);
      }

      goto LABEL_11;
    }

    if ((a3 & 1) == 0)
    {
      if (a5 & 1) != 0 || (a6)
      {
        v53 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
        v54 = *v53;
        v55 = v53[1];
        v56 = v53[2];
        swift_getAssociatedTypeWitness();
        v57 = swift_getAssociatedConformanceWitness();
        v58 = *(v57 + 32);
        v59 = swift_checkMetadataState();
        v58(v54, v55, v56, 1, 2, a4, v59, v57);
        v60 = TimeBitmap.inverted()(*v53, v53[1], v53[2]);
        return (v58)(v60);
      }

      v16 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v17 = *v16;
      v18 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v61 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v17, *v18, *v18, *v18);
      v20 = v19;
      v22 = v21;
      swift_getAssociatedTypeWitness();
      v23 = swift_getAssociatedConformanceWitness();
      v24 = *(v23 + 32);
      v25 = swift_checkMetadataState();
      (v24)(v61, v20, v22, 0, 2, a4, v25, v23);
      v26 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v18, *v16, *v18, *v18);
      v24(v26);
      v27 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v18, *v18, *v16, *v16);
      return (v24)(v27);
    }

LABEL_11:
    v28 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
    v29 = *v28;
    v30 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v31 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v29, *v30, *v30, *v30);
    v33 = v32;
    v35 = v34;
    v36 = a4;
    swift_getAssociatedTypeWitness();
    v37 = swift_getAssociatedConformanceWitness();
    v38 = *(v37 + 32);
    v39 = swift_checkMetadataState();
    (v38)(v31, v33, v35, 0, 2, v36, v39, v37);
    v40 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v30, *v28, *v30, *v30);
    return v38(v40);
  }

  if (a3)
  {
    goto LABEL_11;
  }

  if ((a5 & 1) == 0)
  {
    v41 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
    v42 = *v41;
    v43 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v44 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v42, *v43, *v43, *v43);
    v62 = v45;
    v63 = v44;
    v47 = v46;
    v48 = a4;
    swift_getAssociatedTypeWitness();
    v49 = swift_getAssociatedConformanceWitness();
    v24 = *(v49 + 32);
    v50 = swift_checkMetadataState();
    (v24)(v63, v62, v47, 0, 2, v48, v50, v49);
    v51 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v43, *v41, *v43, *v43);
    v24(v51);
    v52 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v43, *v43, *v41, *v43);
    v24(v52);
    v27 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v43, *v43, *v43, *v41);
    return (v24)(v27);
  }

  return result;
}

uint64_t sub_10030D76C(char a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, uint64_t a6, char a7, char a8, unint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = *(a2 + 16);
  if (!v24 && (a3 & 1) == 0)
  {
    v25 = TimeBitmap.all.unsafeMutableAddressor();
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = a6;
    v29 = *(v25 + 2);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = *(AssociatedConformanceWitness + 32);
    v32 = swift_checkMetadataState();
    v33 = v26;
    v34 = v27;
    v35 = v29;
    v36 = a4;
    v37 = a5;
    v38 = v28;
    return v31(v33, v34, v35, v36, v37, v38, v32, AssociatedConformanceWitness);
  }

  v143 = a6;
  if (v24 > 2)
  {
    if (v24 == 3)
    {
      if ((a3 & 1) == 0)
      {
        v56 = (a2 + 37);
        v57 = 4;
        while (--v57)
        {
          v58 = v56 + 8;
          v59 = *v56;
          v60 = *(v56 - 1);
          v61 = Channel.isDFS.getter(*(v56 - 5));
          v56 = v58;
          if (v61)
          {
            goto LABEL_31;
          }
        }

        if (a7)
        {
          v72 = (a2 + 39);
          while (*(v72 - 1) != 1)
          {
            v72 += 8;
            if (!--v24)
            {
              goto LABEL_42;
            }
          }

          v89 = *v72;
        }

LABEL_42:
        swift_getAssociatedTypeWitness();
        v90 = swift_getAssociatedConformanceWitness();
        v91 = *(v90 + 32);
        v92 = swift_checkMetadataState();
        (v91)(a12, a13, a14, a4, a5, v143, v92, v90);
        (v91)(a15, a16, a17, 0, 0, v143, v92, v90);
        v93 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
        v94 = *v93;
        v95 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
        v96 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v94, v94, *v95, *v93);
        v91(v96);
        v97 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v93, *v93, *v93, *v95);
        return (v91)(v97);
      }
    }

    else if (v24 == 4 && (a3 & 1) == 0)
    {
      v43 = (a2 + 39);
      v44 = 5;
      while (--v44)
      {
        v45 = *v43;
        v43 += 8;
        if (v45 == 1)
        {
          v46 = (a2 + 37);
          v47 = 5;
          while (--v47)
          {
            v48 = v46 + 8;
            v49 = *v46;
            v50 = *(v46 - 1);
            v51 = Channel.isDFS.getter(*(v46 - 5));
            v46 = v48;
            if (v51)
            {
              goto LABEL_31;
            }
          }

          v78 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
          v79 = *v78;
          v80 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
          v145 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v79, *v80, *v80, *v80);
          v140 = v82;
          v142 = v81;
          swift_getAssociatedTypeWitness();
          v83 = swift_getAssociatedConformanceWitness();
          v84 = *(v83 + 32);
          v85 = swift_checkMetadataState();
          (v84)(v145, v142, v140, a4, a5, v143, v85, v83);
          v86 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v80, *v78, *v80, *v80);
          v84(v86);
          v87 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v80, *v80, *v78, *v80);
          v84(v87);
          v88 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v80, *v80, *v80, *v78);
          return (v84)(v88);
        }
      }
    }

LABEL_31:
    v62 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
    v63 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v64 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v62, v62, *v63, *v63);
    v66 = v65;
    v68 = v67;
    swift_getAssociatedTypeWitness();
    v69 = swift_getAssociatedConformanceWitness();
    v70 = *(v69 + 32);
    v71 = swift_checkMetadataState();
    return v70(v64, v66, v68, a4, a5, v143, v71, v69);
  }

  v139 = a13;
  v141 = a14;
  if (v24 == 1)
  {
    if ((a3 & 1) == 0)
    {
      if ((a7 & 1) != 0 || a8 == 1 && (v73 = *(a2 + 36), *(a2 + 37), Channel.isDFS.getter(*(a2 + 32))))
      {
        swift_getAssociatedTypeWitness();
        v52 = swift_getAssociatedConformanceWitness();
        v53 = *(v52 + 32);
        v54 = swift_checkMetadataState();
        (v53)(a9, a10, a11, a4, a5, v143, v54, v52);
        v55 = TimeBitmap.inverted()(a9, a10, a11);
        return v53(v55);
      }

      else
      {
        swift_getAssociatedTypeWitness();
        v74 = swift_getAssociatedConformanceWitness();
        v75 = *(v74 + 32);
        v76 = swift_checkMetadataState();
        (v75)(a12, a13, a14, a4, a5, v143, v76, v74);
        v77 = TimeBitmap.inverted()(a12, a13, a14);
        return v75(v77);
      }
    }

    goto LABEL_31;
  }

  if (v24 != 2)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    goto LABEL_31;
  }

  v40 = a15;
  v41 = *(a2 + 36);
  *(a2 + 37);
  if (Channel.isDFS.getter(*(a2 + 32)))
  {
    goto LABEL_31;
  }

  v42 = *(a2 + 44);
  *(a2 + 45);
  if (Channel.isDFS.getter(*(a2 + 40)))
  {
    goto LABEL_31;
  }

  if (a7)
  {
    if (*(a2 + 38) == 1)
    {
LABEL_13:
      v144 = 0;
    }

    else
    {
      if (*(a2 + 46) != 1)
      {
        goto LABEL_58;
      }

LABEL_64:
      v144 = 1;
    }

    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = *(AssociatedConformanceWitness + 32);
    v129 = swift_checkMetadataState();
    v31(a12, v139, v141, a4, a5, v143, v129, AssociatedConformanceWitness);
    v31(v40, a16, a17, v144 == 0, 0, v143, v129, AssociatedConformanceWitness);
    v130 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v131 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
    v33 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v130, v130, *v131, *v131);
    v36 = v144;
    v37 = 0;
    v38 = v143;
    v32 = v129;
    return v31(v33, v34, v35, v36, v37, v38, v32, AssociatedConformanceWitness);
  }

  if (a8 == 1)
  {
    v98 = *(a2 + 32);
    v99 = *(a2 + 37);
    v136 = *(a2 + 39);
    v137 = *(a2 + 38);
    v138 = *(a2 + 36);
    v100 = _swiftEmptyArrayStorage;
    if (!Channel.isDFS.getter(v98))
    {
      goto LABEL_49;
    }

    v135 = v98;
    v147 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000C06E4(0, _swiftEmptyArrayStorage[2] + 1, 1);
      v100 = _swiftEmptyArrayStorage;
    }

    v102 = _swiftEmptyArrayStorage[2];
    v101 = _swiftEmptyArrayStorage[3];
    v103 = v102 + 1;
    if (v102 < v101 >> 1)
    {
      goto LABEL_48;
    }

    goto LABEL_70;
  }

LABEL_58:
  while (1)
  {
    v141 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
    v116 = *v141;
    v139 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v146 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v116, v116, *v139, *v139);
    v118 = v117;
    v120 = v119;
    swift_getAssociatedTypeWitness();
    v121 = swift_getAssociatedConformanceWitness();
    v102 = v121 + 32;
    v122 = *(v121 + 32);
    v123 = swift_checkMetadataState();
    v124 = v118;
    v40 = v123;
    v125 = a4;
    a4 = v122;
    v126 = a5;
    a5 = v143;
    v99 = a1;
    (v122)(v146, v124, v120, v125, v126, v143, v123, v121);
    if ((*(a2 + 39) & 1) == 0 && (*(a2 + 47) & 1) == 0)
    {
      break;
    }

    v101 = *(a2 + 39);
    if (v101 == 1)
    {
      v101 = *(a2 + 47);
      if ((v101 & 1) == 0)
      {
        v127 = *v141;
        v128 = *v139;
        goto LABEL_67;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_70:
    v134 = v103;
    sub_1000C06E4((v101 > 1), v103, 1);
    v103 = v134;
    v100 = v147;
LABEL_48:
    v100[2] = v103;
    v104 = &v100[v102];
    *(v104 + 8) = v135;
    *(v104 + 36) = v138;
    *(v104 + 37) = v99;
    *(v104 + 38) = v137;
    *(v104 + 39) = v136;
LABEL_49:
    v105 = *(a2 + 40);
    v106 = *(a2 + 45);
    v136 = *(a2 + 47);
    v137 = *(a2 + 46);
    v138 = *(a2 + 44);
    if (Channel.isDFS.getter(v105))
    {
      v147 = v100;
      v135 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000C06E4(0, v100[2] + 1, 1);
      }

      v108 = v100[2];
      v107 = v100[3];
      v109 = v108 + 1;
      if (v108 >= v107 >> 1)
      {
        sub_1000C06E4((v107 > 1), v108 + 1, 1);
        v109 = v108 + 1;
      }

      v100[2] = v109;
      v110 = &v100[v108];
      *(v110 + 8) = v135;
      *(v110 + 36) = v138;
      *(v110 + 37) = v106;
      *(v110 + 38) = v137;
      *(v110 + 39) = v136;
    }

    v111 = v100[2];

    if (v111 == 1)
    {
      v112 = *(a2 + 36);
      v113 = *(a2 + 37);
      if (Channel.isDFS.getter(*(a2 + 32)))
      {
        goto LABEL_13;
      }

      v114 = *(a2 + 44);
      v115 = *(a2 + 45);
      if (Channel.isDFS.getter(*(a2 + 40)))
      {
        goto LABEL_64;
      }
    }
  }

  v132 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v139, *v139, *v141, *v139);
  v122(v132);
  v127 = *v141;
  v128 = *v139;
LABEL_67:
  v133 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v128, v128, v128, v127);
  return (v122)(v133);
}

uint64_t NANQualityOfService.update<A>(schedule:)(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  if (a2 == 5)
  {
    if ((*(a4 + 56))(a3, a4))
    {
      v7 = v6;
      v8 = 6;
      goto LABEL_7;
    }

    v9 = v6;
    v10 = 6;
  }

  else
  {
    if (a2 != 4)
    {
      return result;
    }

    if ((*(a4 + 56))(a3, a4))
    {
      v7 = v6;
      v8 = 0;
LABEL_7:

      return sub_100316058(v7, v8, a3, a4);
    }

    v9 = v6;
    v10 = 0;
  }

  return sub_1003169D0(v9, v10, a3, a4);
}

char *sub_10030E494(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100596330, &qword_1004B0808);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10030E5D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&unk_100597450, &qword_1004B16D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10030E6FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100596328, &qword_1004B0800);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10030E81C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_100596368, &qword_1004B0890);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_100596370, &qword_1004B0898);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10030E98C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100596378, &unk_1004B08A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10030EAB4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_100596318, &unk_1004B07D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&unk_100595FB0, &unk_1004B01A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10030EBFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100596380, &qword_1004B08B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10030ECF0(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&unk_100598760, &qword_1004B0928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AWDLTrafficRegistrationService(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10030EE18(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D600, &qword_1004B0920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

size_t sub_10030EF58(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005DC58(a5, a6);
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

uint64_t sub_10030F148(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_100595310, &unk_1004B07A0);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(byte_1004B0994[v21]);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10030F3E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_100597410, &unk_1004B4D50);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v39 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 6 * v21);
      v42 = *v22;
      v23 = v22[1];
      v24 = v22[3];
      v25 = v22[4];
      v40 = v22[5];
      v41 = v22[2];
      v26 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(&v43, (v25 << 32) | (v40 << 40) | (v24 << 24) | (v41 << 16) | (v23 << 8) | v42);
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 6 * v16);
      *v17 = v42;
      v17[1] = v23;
      v17[2] = v41;
      v17[3] = v24;
      v17[4] = v25;
      v17[5] = v40;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v39 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

Swift::Int sub_10030F6F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_100596338, &unk_1004B0810);
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v46 = (v5 + 64);
    v47 = v5;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v44 = v3;
    v45 = (v10 + 63) >> 6;
    v13 = v7 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v18 = (v12 - 1) & v12;
LABEL_17:
      v22 = v17 | (v9 << 6);
      v23 = v8;
      v48 = v18;
      v24 = *(v5 + 56);
      v25 = (*(v5 + 48) + 6 * v22);
      v49 = *v25;
      v26 = v25[1];
      v27 = v25[2];
      v28 = v25[3];
      v29 = v25[4];
      v30 = v25[5];
      v31 = (v24 + 24 * v22);
      if (a2)
      {
        v52 = *v31;
        v32 = *(v31 + 2);
      }

      else
      {
        v33 = *(v31 + 2);
        v50 = *v31;
        v51 = v33;
        sub_100012400(&v50, &v52, &qword_100599440, &qword_1004B3620);
        v52 = v50;
        v32 = v51;
      }

      v53 = v32;
      v34 = *(v23 + 40);
      Hasher.init(_seed:)();
      v35 = v29;
      NANClusterChangeEvent.hash(into:)(&v50, (v29 << 32) | (v30 << 40) | (v28 << 24) | (v27 << 16) | (v26 << 8) | v49);
      result = Hasher._finalize()();
      v8 = v23;
      v36 = -1 << *(v23 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v13 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v13 + 8 * v38);
          if (v42 != -1)
          {
            v14 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v37) & ~*(v13 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v23 + 48) + 6 * v14);
      *v15 = v49;
      v15[1] = v26;
      v15[2] = v27;
      v15[3] = v28;
      v15[4] = v35;
      v15[5] = v30;
      v16 = *(v23 + 56) + 24 * v14;
      *v16 = v52;
      *(v16 + 16) = v53;
      ++*(v23 + 16);
      v5 = v47;
      v12 = v48;
    }

    v19 = v9;
    result = v46;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v45)
      {
        break;
      }

      v21 = v46[v9];
      ++v19;
      if (v21)
      {
        v17 = __clz(__rbit64(v21));
        v18 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v43 = 1 << *(v5 + 32);
      if (v43 >= 64)
      {
        bzero(v46, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v46 = -1 << v43;
      }

      *(v5 + 16) = 0;
    }

    v3 = v44;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10030FAB0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10005DC58(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v41 = (v15 - 1) & v15;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 6 * v23);
      v44 = *v24;
      v25 = v24[1];
      v26 = v24[3];
      v27 = v24[4];
      v42 = v24[5];
      v43 = v24[2];
      v28 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(&v45, (v27 << 32) | (v42 << 40) | (v26 << 24) | (v43 << 16) | (v25 << 8) | v44);
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 6 * v18);
      *v19 = v44;
      v19[1] = v25;
      v19[2] = v43;
      v19[3] = v26;
      v19[4] = v27;
      v19[5] = v42;
      *(*(v10 + 56) + 8 * v18) = v28;
      ++*(v10 + 16);
      v7 = v39;
      v15 = v41;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10030FDF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_10059B230, &unk_1004B2400);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100310060(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_100595390, &qword_1004AF260);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1003102E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_10059B100, &qword_1004B07B0);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 80 * v22);
      if (v40)
      {
        v47 = v26[1];
        v48 = v26[2];
        v49 = v26[3];
        v50 = v26[4];
        v46 = *v26;
      }

      else
      {
        v41 = *v26;
        v27 = v26[4];
        v29 = v26[1];
        v28 = v26[2];
        v44 = v26[3];
        v45 = v27;
        v42 = v29;
        v43 = v28;

        sub_1002CE52C(&v41, &v46);
        v48 = v43;
        v49 = v44;
        v50 = v45;
        v46 = v41;
        v47 = v42;
      }

      v30 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 80 * v16);
      v18[1] = v47;
      v18[2] = v48;
      v18[3] = v49;
      v18[4] = v50;
      *v18 = v46;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100310664(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_1005962E8, &qword_1004B0748);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = a2;
    v39 = v3;
    v40 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 8 * v22);
      v25 = *v24;
      v26 = *(v24 + 4);
      v27 = *(v24 + 5);
      v28 = (v23 + 24 * v22);
      v42 = *v28;
      v43 = *(v28 + 2);
      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      Channel.hash(into:)(&v41, (v26 << 32) | (v27 << 40) | v25);
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

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 8 * v16;
      *v17 = v25;
      *(v17 + 4) = v26;
      *(v17 + 5) = v27;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v42;
      *(v18 + 16) = v43;
      ++*(v8 + 16);
      v5 = v40;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v38)
    {
      v37 = 1 << *(v5 + 32);
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

    v3 = v39;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100310940(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_10005DC58(a3, a4);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v50 = v14;
    v51 = v10;
    v42 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v43 = (v11 + 16);
    v44 = v11;
    v47 = (v11 + 32);
    v25 = result + 64;
    v45 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v49 = *(v11 + 72);
      v32 = v31 + v49 * v30;
      if (v46)
      {
        (*v47)(v50, v32, v51);
        v48 = *(*(v15 + 56) + 16 * v30);
      }

      else
      {
        (*v43)(v50, v32, v51);
        v48 = *(*(v15 + 56) + 16 * v30);
      }

      v33 = *(v18 + 40);
      sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v11 = v44;
        v15 = v45;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v11 = v44;
      v15 = v45;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v47)(*(v18 + 48) + v49 * v26, v50, v51);
      *(*(v18 + 56) + 16 * v26) = v48;
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v7 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v42;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

Swift::Int sub_100310D18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_10059B250, &unk_1004B08C0);
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v5 + 16))
  {
    v39 = a2;
    v9 = 0;
    v40 = v3;
    v41 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 64;
    v42 = v5;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v43 = (v12 - 1) & v12;
LABEL_17:
      v21 = v17 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 6 * v21);
      v24 = v23[5];
      v25 = v23[4];
      v26 = v23[3];
      v27 = v23[2];
      v28 = v23[1];
      v29 = *v23;
      v44 = *(v22 + 8 * v21);
      v30 = *(v8 + 40);
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(&v45, (v24 << 40) | (v25 << 32) | (v26 << 24) | (v27 << 16) | (v28 << 8) | v29);
      result = Hasher._finalize()();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v8 + 48) + 6 * v15);
      *v16 = v29;
      v16[1] = v28;
      v16[2] = v27;
      v16[3] = v26;
      v16[4] = v25;
      v16[5] = v24;
      *(*(v8 + 56) + 8 * v15) = v44;
      ++*(v8 + 16);
      v5 = v42;
      v12 = v43;
    }

    v18 = v9;
    result = v41;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v13)
      {
        break;
      }

      v20 = v41[v9];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v39)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero(v41, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v41 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v40;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100311004(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_100596388, &qword_1004B08B8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1003112FC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10005DC58(a3, a4);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_100311584(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = *(type metadata accessor for NANPeer.Service(0) - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_10005DC58(&unk_10059B130, &unk_1004B0840);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_1002E0034(v27, v8, type metadata accessor for NANPeer.Service);
      }

      else
      {
        sub_1003173B4(v27, v8, type metadata accessor for NANPeer.Service);
      }

      v28 = *(v12 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = sub_1002E0034(v8, *(v12 + 56) + v26 * v20, type metadata accessor for NANPeer.Service);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1003118E4(uint64_t a1, int a2)
{
  v3 = v2;
  v38 = *(type metadata accessor for NANAttribute(0) - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin();
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v9 = *(*v3 + 24);
  }

  sub_10005DC58(&unk_1005952B0, &unk_1004AF1B0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v37 = v3;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v8 + 48) + v23);
      v25 = *(v38 + 72);
      v26 = *(v8 + 56) + v25 * v23;
      if (v39)
      {
        sub_1002E0034(v26, v40, type metadata accessor for NANAttribute);
      }

      else
      {
        sub_1003173B4(v26, v40, type metadata accessor for NANAttribute);
      }

      v27 = *(v11 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(byte_1004B0994[v24]);
      result = Hasher._finalize()();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + v19) = v24;
      result = sub_1002E0034(v40, *(v11 + 56) + v25 * v19, type metadata accessor for NANAttribute);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
  return result;
}

uint64_t sub_100311C4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_100595318, &qword_1004AF220);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
    v37 = v3;
    v38 = v5;
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
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 8 * v21);
      v24 = *(v23 + 5);
      v25 = *(v23 + 4);
      v26 = *v23;
      v39 = *(v22 + v21);
      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      Channel.hash(into:)(&v40, (v24 << 40) | (v25 << 32) | v26);
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 8 * v16;
      *v17 = v26;
      *(v17 + 4) = v25;
      *(v17 + 5) = v24;
      *(*(v8 + 56) + v16) = v39;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v36)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100311F30(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v56 = a6;
  v9 = v6;
  v51 = *(a3(0) - 8);
  v12 = *(v51 + 64);
  __chkstk_darwin();
  v55 = &v49 - v13;
  v14 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v15 = *(*v9 + 24);
  }

  sub_10005DC58(a4, a5);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v14 + 16))
  {
    v49 = v9;
    v50 = v14;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v24 = result + 64;
    while (v22)
    {
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v31 = v28 | (v18 << 6);
      v32 = *(v14 + 56);
      v33 = (*(v14 + 48) + 6 * v31);
      v34 = *v33;
      v35 = v33[1];
      v36 = v33[2];
      v37 = v33[3];
      v38 = v33[4];
      v57 = v33[5];
      v58 = v38;
      v39 = v32 + *(v51 + 72) * v31;
      v54 = *(v51 + 72);
      if (v52)
      {
        sub_1002E0034(v39, v55, v56);
      }

      else
      {
        sub_1003173B4(v39, v55, v56);
      }

      v40 = *(v17 + 40);
      Hasher.init(_seed:)();
      v53 = v37;
      NANClusterChangeEvent.hash(into:)(&v59, (v58 << 32) | (v57 << 40) | (v37 << 24) | (v36 << 16) | (v35 << 8) | v34);
      result = Hasher._finalize()();
      v41 = -1 << *(v17 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v24 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v24 + 8 * v43);
          if (v47 != -1)
          {
            v25 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v42) & ~*(v24 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 6 * v25);
      *v26 = v34;
      v26[1] = v35;
      v26[2] = v36;
      v26[3] = v53;
      v27 = v57;
      v26[4] = v58;
      v26[5] = v27;
      result = sub_1002E0034(v55, *(v17 + 56) + v54 * v25, v56);
      ++*(v17 + 16);
      v14 = v50;
    }

    v29 = v18;
    while (1)
    {
      v18 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v30 = v19[v18];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v22 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v49;
      goto LABEL_36;
    }

    v48 = 1 << *(v14 + 32);
    v9 = v49;
    if (v48 >= 64)
    {
      bzero(v19, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v48;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v9 = v17;
  return result;
}

uint64_t sub_100312304(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v56 = a6;
  v9 = v6;
  v52 = *(a3(0) - 8);
  v12 = *(v52 + 64);
  __chkstk_darwin();
  v55 = &v49 - v13;
  v14 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v15 = *(*v9 + 24);
  }

  sub_10005DC58(a4, a5);
  v53 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v14 + 16))
  {
    v50 = v9;
    v51 = v14;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v24 = result + 64;
    while (v22)
    {
      v29 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v32 = v29 | (v18 << 6);
      v33 = *(v14 + 56);
      v34 = (*(v14 + 48) - v32 + 8 * v32);
      v35 = *v34;
      v36 = v34[1];
      v37 = v34[2];
      v60 = v34[3];
      v59 = v34[4];
      v38 = v34[5];
      v57 = v34[6];
      v58 = v38;
      v54 = *(v52 + 72);
      v39 = v33 + v54 * v32;
      if (v53)
      {
        sub_1002E0034(v39, v55, v56);
      }

      else
      {
        sub_1003173B4(v39, v55, v56);
      }

      v40 = *(v17 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v35);
      NANClusterChangeEvent.hash(into:)(&v61, (v58 << 32) | (v57 << 40) | (v59 << 24) | (v60 << 16) | (v37 << 8) | v36);
      result = Hasher._finalize()();
      v41 = -1 << *(v17 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v24 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v24 + 8 * v43);
          if (v47 != -1)
          {
            v25 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v42) & ~*(v24 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) - v25 + 8 * v25);
      *v26 = v35;
      v26[1] = v36;
      v26[2] = v37;
      v27 = v59;
      v26[3] = v60;
      v26[4] = v27;
      v26[5] = v58;
      v28 = v56;
      v26[6] = v57;
      result = sub_1002E0034(v55, *(v17 + 56) + v54 * v25, v28);
      ++*(v17 + 16);
      v14 = v51;
    }

    v30 = v18;
    while (1)
    {
      v18 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v31 = v19[v18];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v22 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v53 & 1) == 0)
    {

      v9 = v50;
      goto LABEL_36;
    }

    v48 = 1 << *(v14 + 32);
    v9 = v50;
    if (v48 >= 64)
    {
      bzero(v19, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v48;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v9 = v17;
  return result;
}

uint64_t sub_1003126B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_10059B110, &qword_100480EA0);
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 6 * v22);
      v45 = *v23;
      v24 = v23[1];
      v25 = v23[3];
      v26 = v23[4];
      v43 = v23[5];
      v44 = v23[2];
      v27 = (*(v5 + 56) + 16 * v22);
      v28 = v27[1];
      v42 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      NANClusterChangeEvent.hash(into:)(&v46, (v26 << 32) | (v43 << 40) | (v25 << 24) | (v44 << 16) | (v24 << 8) | v45);
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
      v17 = (*(v8 + 48) + 6 * v16);
      *v17 = v45;
      v17[1] = v24;
      v17[2] = v44;
      v17[3] = v25;
      v17[4] = v26;
      v17[5] = v43;
      v18 = (*(v8 + 56) + 16 * v16);
      v13 = v41;
      *v18 = v42;
      v18[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
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

uint64_t sub_1003129D0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10005DC58(&qword_100596320, &unk_1004B4D60);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_100029954((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_10002B154(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_100029954(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100312DB4(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = *(sub_10005DC58(&qword_100597400, &unk_1004B4D20) - 8);
  v6 = *(v45 + 64);
  __chkstk_darwin();
  v49 = &v43 - v7;
  v8 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v9 = *(*v3 + 24);
  }

  sub_10005DC58(&qword_100596308, &unk_1004B0790);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v43 = v3;
    v44 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v25 = v22 | (v12 << 6);
      v26 = *(v8 + 56);
      v27 = (*(v8 + 48) + 6 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v32 = v27[4];
      v50 = v27[5];
      v51 = v32;
      v33 = v26 + *(v45 + 72) * v25;
      v48 = *(v45 + 72);
      if (v46)
      {
        sub_1002DF868(v33, v49);
      }

      else
      {
        sub_100012400(v33, v49, &qword_100597400, &unk_1004B4D20);
      }

      v34 = *(v11 + 40);
      Hasher.init(_seed:)();
      v47 = v31;
      NANClusterChangeEvent.hash(into:)(&v52, (v51 << 32) | (v50 << 40) | (v31 << 24) | (v30 << 16) | (v29 << 8) | v28);
      result = Hasher._finalize()();
      v35 = -1 << *(v11 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v18 + 8 * v37);
          if (v41 != -1)
          {
            v19 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 6 * v19);
      *v20 = v28;
      v20[1] = v29;
      v20[2] = v30;
      v20[3] = v47;
      v21 = v50;
      v20[4] = v51;
      v20[5] = v21;
      result = sub_1002DF868(v49, *(v11 + 56) + v48 * v19);
      ++*(v11 + 16);
      v8 = v44;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v8 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v13, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v42;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
  return result;
}

uint64_t sub_10031315C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_10059B220, &unk_1004B4DF0);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100313474(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10005DC58(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = a2;
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + v22);
      v24 = *(*(v7 + 56) + v22);
      v25 = *(v10 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v23;
      *(*(v10 + 56) + v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_100313710(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v61 = a6;
  v9 = v6;
  v54 = *(a3(0) - 8);
  v12 = *(v54 + 64);
  __chkstk_darwin();
  v60 = &v50 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v19 = *(*v9 + 24);
  }

  sub_10005DC58(a4, a5);
  v55 = a2;
  v20 = v18;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v22 = result;
  if (*(v18 + 16))
  {
    v59 = v14;
    v23 = 0;
    v24 = (v18 + 64);
    v25 = 1 << *(v18 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v18 + 64);
    v28 = (v25 + 63) >> 6;
    v50 = v9;
    v51 = (v15 + 16);
    v52 = v18;
    v53 = v15;
    v57 = (v15 + 32);
    v29 = result + 64;
    v30 = v56;
    while (v27)
    {
      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v35 = v32 | (v23 << 6);
      v36 = *(v20 + 48);
      v58 = *(v53 + 72);
      v37 = v36 + v58 * v35;
      if (v55)
      {
        (*v57)(v30, v37, v59);
        v38 = *(v20 + 56);
        v39 = *(v54 + 72);
        sub_1002E0034(v38 + v39 * v35, v60, v61);
      }

      else
      {
        (*v51)(v30, v37, v59);
        v40 = *(v20 + 56);
        v39 = *(v54 + 72);
        sub_1003173B4(v40 + v39 * v35, v60, v61);
      }

      v41 = *(v22 + 40);
      sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v42 = -1 << *(v22 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v29 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v30 = v56;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v29 + 8 * v44);
          if (v48 != -1)
          {
            v31 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v31 = __clz(__rbit64((-1 << v43) & ~*(v29 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v30 = v56;
LABEL_9:
      *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      (*v57)((*(v22 + 48) + v58 * v31), v30, v59);
      result = sub_1002E0034(v60, *(v22 + 56) + v39 * v31, v61);
      ++*(v22 + 16);
      v20 = v52;
    }

    v33 = v23;
    while (1)
    {
      v23 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v23 >= v28)
      {
        break;
      }

      v34 = v24[v23];
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v27 = (v34 - 1) & v34;
        goto LABEL_17;
      }
    }

    if ((v55 & 1) == 0)
    {

      v9 = v50;
      goto LABEL_36;
    }

    v49 = 1 << *(v20 + 32);
    v9 = v50;
    if (v49 >= 64)
    {
      bzero(v24, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v49;
    }

    *(v20 + 16) = 0;
  }

LABEL_36:
  *v9 = v22;
  return result;
}

uint64_t sub_100313BAC(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_10005DC58(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_100313F88(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = *(type metadata accessor for BrowseEndpoints(0) - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_10005DC58(qword_1005953C8, &qword_1004B4E10);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + 8 * v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_1002E0034(v27, v8, type metadata accessor for BrowseEndpoints);
      }

      else
      {
        sub_1003173B4(v27, v8, type metadata accessor for BrowseEndpoints);
      }

      v28 = *(v12 + 40);
      result = static Hasher._hash(seed:_:)();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = sub_1002E0034(v8, *(v12 + 56) + v26 * v20, type metadata accessor for BrowseEndpoints);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_100314320(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_10059B200, &unk_1004B0880);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1003145B0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10005DC58(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = static Hasher._hash(seed:_:)();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_100314818(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10005DC58(&unk_10059B1D0, &unk_1004B0870);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10001AD5C(&unk_10058BB00, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100314BF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&unk_1005974F0, &qword_1004B0838);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v40 = *(v23 + 16);
      v26 = *(v23 + 17);
      v39 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v26);
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v40;
      *(v17 + 17) = v26;
      *(*(v8 + 56) + 8 * v16) = v39;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

Swift::Int sub_100314F10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100315F1C(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v4;
        v12 = v9;
        do
        {
          v13 = *(v11 + 2);
          if (v13 >= *v11)
          {
            break;
          }

          v14 = *(v11 + 6);
          *(v11 + 1) = *v11;
          *v11 = v13;
          *(v11 + 2) = v14;
          v11 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        --v9;
        v4 += 8;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v16[0] = v8 + 4;
    v16[1] = v7;
    sub_100315054(v16, v17, v18, v6);
    v8[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100315054(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_10016AD7C(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1000DECA4((*a3 + 8 * *v83), (*a3 + 8 * *v85), (*a3 + 8 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_117;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_118;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_119;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v14 >= *(v14 - 2);
        ++v16;
        v14 += 2;
        if ((((v10 < v13) ^ v17) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v18 = 8 * v7 - 8;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = *(v22 + v11);
            v25 = *(v22 + v11 + 4);
            v26 = *(v22 + v11 + 5);
            if (v11 != v18 || v23 >= v22 + v18 + 8)
            {
              *v23 = *(v22 + v18);
            }

            v21 = v22 + v18;
            *v21 = v24;
            *(v21 + 4) = v25;
            *(v21 + 5) = v26;
          }

          ++v20;
          v18 -= 8;
          v11 += 8;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10011707C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_10011707C((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_60:
          if (v42)
          {
            goto LABEL_107;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_109;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_114;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v36 < 2)
        {
          goto LABEL_115;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_75:
        if (v60)
        {
          goto LABEL_111;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_1000DECA4((*a3 + 8 * *v76), (*a3 + 8 * *v78), (*a3 + 8 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_104;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_105;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_106;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_108;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_110;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_116;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v27 = *a3;
  v28 = v9 - v7;
  v29 = *a3 + 8 * v7;
LABEL_33:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *v30;
    if (*v30 >= *(v30 - 8))
    {
LABEL_32:
      ++v7;
      --v28;
      v29 += 8;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v33 = *(v30 + 4);
    *v30 = *(v30 - 8);
    *(v30 - 8) = v32;
    *(v30 - 4) = v33;
    v30 -= 8;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1003155FC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v8 = *(v42 + 64);
  __chkstk_darwin();
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin();
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1003158A0(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = a4;
      v16 = *(a4 + 48) + 56 * (__clz(__rbit64(v8)) | (v10 << 6));
      v8 &= v8 - 1;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);
      v19 = *(v16 + 24);
      v20 = *(v16 + 48);
      v21 = *(v16 + 32);
      *v9 = *v16;
      *(v9 + 8) = v17;
      *(v9 + 16) = v18;
      *(v9 + 24) = v19;
      v26 = v21;
      *(v9 + 32) = v21;
      *(v9 + 48) = v20;
      if (v12 == v25)
      {
        sub_10000AB0C(v17, v18);
        sub_10005D67C(v19, v26);

        a4 = v15;
        v6 = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v9 += 56;
      sub_10000AB0C(v17, v18);
      sub_10005D67C(v19, v26);

      result = v12;
      v22 = __OFADD__(v12++, 1);
      a4 = v15;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v23 = v10 + 1;
    }

    else
    {
      v23 = v11;
    }

    v10 = v23 - 1;
    a3 = result;
    v6 = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100315A68(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v7))));
      v15 = *v14;
      LOWORD(v14) = *(v14 + 4);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 4) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 8;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100315B74(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100315CCC(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100315DC8(void *result, void *a2, uint64_t a3, uint64_t a4)
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

BOOL sub_100315FA0(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PriorityRadioConstraint();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if (!static RadioResources.SymbolicChannel.__derived_enum_equals(_:_:)(*(a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 8), *(a2 + *(v4 + 24)), *(a2 + *(v4 + 24) + 8)))
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = (a2 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];

  return static TimeBitmap.__derived_struct_equals(_:_:)(v7, v8, v9, v11, v12, v13);
}

uint64_t sub_100316058(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v125 = a2;
  v147 = type metadata accessor for Logger();
  v144 = *(v147 - 8);
  v7 = *(v144 + 64);
  __chkstk_darwin();
  v143 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 64);
  v145 = a1;
  v146 = a3;
  v127 = a4 + 64;
  v126 = v9;
  v10 = v9(a3, a4);
  v11 = *(v10 + 16);
  v128 = a4;
  if (v11)
  {
    v148 = _swiftEmptyArrayStorage;
    v12 = v10;
    sub_100027CF0(0, v11, 0);
    v13 = v12;
    v14 = 0;
    v15 = v148;
    v16 = v148[2];
    v17 = v16;
    do
    {
      v18 = *(v13 + v14 + 32);
      v19 = *(v13 + v14 + 36);
      v20 = *(v13 + v14 + 37);
      v148 = v15;
      v21 = v15[3];
      v22 = v16 + 1;
      if (v16 >= v21 >> 1)
      {
        sub_100027CF0((v21 > 1), v16 + 1, 1);
        v13 = v12;
        v15 = v148;
      }

      v15[2] = v22;
      v23 = &v15[v17 + v14 / 8];
      *(v23 + 8) = v18;
      *(v23 + 36) = v19;
      *(v23 + 37) = v20;
      v14 += 8;
      v16 = v22;
      --v11;
    }

    while (v11);
    v142 = v15;

    a4 = v128;
  }

  else
  {

    v142 = _swiftEmptyArrayStorage;
  }

  v24 = v126(v146, a4);
  v25 = *(v24 + 16);
  v141 = v24;
  if (v25)
  {
    v26 = (v24 + 39);
    v27 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v26 - 1) == 1)
      {
        v31 = *(v26 - 7);
        v32 = *(v26 - 3);
        v33 = *(v26 - 2);
        v34 = *v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v148 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000C06E4(0, v27[2] + 1, 1);
          v27 = v148;
        }

        v29 = v27[2];
        v28 = v27[3];
        if (v29 >= v28 >> 1)
        {
          sub_1000C06E4((v28 > 1), v29 + 1, 1);
          v27 = v148;
        }

        v27[2] = v29 + 1;
        v30 = &v27[v29];
        *(v30 + 8) = v31;
        *(v30 + 36) = v32;
        *(v30 + 37) = v33;
        *(v30 + 38) = 1;
        *(v30 + 39) = v34;
      }

      v26 += 8;
      --v25;
    }

    while (v25);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  v140 = v27[2];

  v36 = v126(v146, v128);
  v37 = *(v36 + 16);
  v141 = v36;
  if (v37)
  {
    v38 = (v36 + 39);
    v39 = _swiftEmptyArrayStorage;
    do
    {
      v43 = *(v38 - 3);
      if (v43 >= 2)
      {
        v44 = *(v38 - 7);
        v45 = *(v38 - 2);
        v46 = *(v38 - 1);
        v47 = *v38;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v148 = v39;
        if ((v48 & 1) == 0)
        {
          sub_1000C06E4(0, v39[2] + 1, 1);
          v39 = v148;
        }

        v41 = v39[2];
        v40 = v39[3];
        if (v41 >= v40 >> 1)
        {
          sub_1000C06E4((v40 > 1), v41 + 1, 1);
          v39 = v148;
        }

        v39[2] = v41 + 1;
        v42 = &v39[v41];
        *(v42 + 8) = v44;
        *(v42 + 36) = v43;
        *(v42 + 37) = v45;
        *(v42 + 38) = v46;
        *(v42 + 39) = v47;
      }

      v38 += 8;
      --v37;
    }

    while (v37);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
  }

  v131 = v39[2];

  v49 = v143;
  Logger.init(subsystem:category:)();

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v148 = v53;
    *v52 = 136315138;
    v54 = Array.description.getter();
    v56 = v55;

    v57 = sub_100002320(v54, v56, &v148);

    *(v52 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v50, v51, "Configuring SDB realtime schedule for %s", v52, 0xCu);
    sub_100002A00(v53);
  }

  else
  {
  }

  (*(v144 + 8))(v49, v147);
  v58 = v128;
  result = (*(v128 + 40))(v146, v128);
  v130 = *(result + 16);
  if (!v130)
  {
  }

  v60 = 0;
  v123 = v140 == 1;
  v129 = result + 32;
  v122 = v58 + 24;
  v124 = result;
  while (v60 < *(result + 16))
  {
    v83 = *(v129 + v60);
    if (v131)
    {
      v84 = v83 == 1;
    }

    else
    {
      v84 = 0;
    }

    v85 = v84;
    if (*(v129 + v60))
    {
      if (v83 != 1)
      {
        goto LABEL_35;
      }

      LODWORD(v142) = v85;
      v144 = v60;
      v86 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
      v87 = *v86;
      v140 = v86[1];
      v141 = v87;
      v88 = v86[2];
      v89 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v90 = *v89;
      v91 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v92 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v90, *v91, *v89, *v89);
      v138 = v93;
      v139 = v92;
      v137 = v94;
      v95 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v91, *v89, *v89, *v89);
      v133 = v97;
      v134 = v96;
      v135 = 1;
      v136 = v95;
    }

    else
    {
      LODWORD(v142) = v85;
      v144 = v60;
      v98 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
      v99 = *v98;
      v140 = v98[1];
      v141 = v99;
      v88 = v98[2];
      v100 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v101 = *v100;
      v102 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v103 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v101, *v102, *v102, *v102);
      v138 = v104;
      v139 = v103;
      v137 = v105;
      v106 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(*v102, *v100, *v102, *v102);
      v135 = 0;
      v136 = v106;
      v133 = v108;
      v134 = v107;
    }

    v109 = v126(v146, v58);
    v110 = *(v109 + 16);
    LODWORD(v143) = v83;
    v132 = v109;
    if (v110)
    {
      if (v83)
      {
        v111 = 16;
      }

      else
      {
        v111 = 4;
      }

      v112 = (v109 + 39);
      v61 = _swiftEmptyArrayStorage;
      LODWORD(v147) = v111;
      while (1)
      {
        v116 = *(v112 - 7);
        v117 = *(v112 - 3);
        v118 = *(v112 - 2);
        v119 = *(v112 - 1);
        v120 = *v112;
        if (*(v112 - 3))
        {
          if (v117 == 1 && v111 == 16)
          {
LABEL_61:
            v121 = swift_isUniquelyReferenced_nonNull_native();
            v148 = v61;
            if ((v121 & 1) == 0)
            {
              sub_1000C06E4(0, v61[2] + 1, 1);
              v61 = v148;
            }

            v114 = v61[2];
            v113 = v61[3];
            if (v114 >= v113 >> 1)
            {
              sub_1000C06E4((v113 > 1), v114 + 1, 1);
              v61 = v148;
            }

            v61[2] = v114 + 1;
            v115 = &v61[v114];
            *(v115 + 8) = v116;
            *(v115 + 36) = v117;
            *(v115 + 37) = v118;
            *(v115 + 38) = v119;
            *(v115 + 39) = v120;
            v111 = v147;
          }
        }

        else if (v111 == 4)
        {
          goto LABEL_61;
        }

        v112 += 8;
        if (!--v110)
        {
          goto LABEL_34;
        }
      }
    }

    v61 = _swiftEmptyArrayStorage;
LABEL_34:

    v62 = v137;
    v63 = v133;
    v64 = v61;
    v65 = v133 >> 40;
    v66 = HIWORD(v133);
    v67 = HIBYTE(v133);
    v68 = __chkstk_darwin();
    *(&v122 - 104) = v142;
    *(&v122 - 85) = v143;
    v69 = v140;
    *(&v122 - 10) = v141;
    *(&v122 - 9) = v69;
    v70 = v138;
    *(&v122 - 7) = v139;
    *(&v122 - 6) = v70;
    *(&v122 - 40) = v62;
    *(&v122 - 39) = v71;
    *(&v122 - 38) = v72;
    *(&v122 - 37) = v73;
    *(&v122 - 36) = v74;
    *(&v122 - 35) = v68;
    *(&v122 - 34) = v75;
    *(&v122 - 33) = v76;
    v77 = v135;
    v78 = v134;
    *(&v122 - 4) = v136;
    *(&v122 - 3) = v78;
    *(&v122 - 16) = v63;
    *(&v122 - 15) = v79;
    *(&v122 - 14) = v80;
    *(&v122 - 13) = v81;
    *(&v122 - 12) = v82;
    *(&v122 - 11) = v65;
    *(&v122 - 10) = v66;
    *(&v122 - 9) = v67;
    v58 = v128;
    *(&v122 - 16) = v146;
    *(&v122 - 15) = v58;
    *(&v122 - 14) = v64;
    *(&v122 - 12) = v77;
    *(&v122 - 88) = 2;
    *(&v122 - 87) = v125;
    *(&v122 - 86) = v123;
    *(&v122 - 8) = v88;
    (*(v58 + 24))(v77);

    result = v124;
    v60 = v144;
LABEL_35:
    if (++v60 == v130)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003169D0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v86 = a2;
  v7 = type metadata accessor for Logger();
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  __chkstk_darwin();
  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 64);
  v89 = a1;
  v90 = a3;
  v91 = a4;
  v87 = v10;
  v88 = a4 + 64;
  v11 = v10(a3, a4);
  v12 = *(v11 + 16);
  if (v12)
  {
    v92 = _swiftEmptyArrayStorage;
    v13 = v11;
    sub_100027CF0(0, v12, 0);
    v14 = v13;
    v15 = 0;
    v16 = v92;
    v17 = v92[2];
    v18 = v17;
    do
    {
      v19 = *(v14 + v15 + 32);
      v20 = *(v14 + v15 + 36);
      v21 = *(v14 + v15 + 37);
      v92 = v16;
      v22 = v16[3];
      v23 = v17 + 1;
      if (v17 >= v22 >> 1)
      {
        sub_100027CF0((v22 > 1), v17 + 1, 1);
        v14 = v13;
        v16 = v92;
      }

      v16[2] = v23;
      v24 = &v16[v18 + v15 / 8];
      *(v24 + 8) = v19;
      *(v24 + 36) = v20;
      *(v24 + 37) = v21;
      v15 += 8;
      v17 = v23;
      --v12;
    }

    while (v12);
    v82 = v16;
  }

  else
  {

    v82 = _swiftEmptyArrayStorage;
  }

  v25 = v87(v90, v91);
  v26 = *(v25 + 16);
  v81 = v25;
  if (v26)
  {
    v27 = (v25 + 39);
    v28 = _swiftEmptyArrayStorage;
    do
    {
      v32 = *(v27 - 7);
      v33 = *(v27 - 3);
      v34 = *(v27 - 2);
      v35 = *(v27 - 1);
      v36 = *v27;
      if (Channel.isDFS.getter(v32))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000C06E4(0, v28[2] + 1, 1);
          v28 = v92;
        }

        v30 = v28[2];
        v29 = v28[3];
        if (v30 >= v29 >> 1)
        {
          sub_1000C06E4((v29 > 1), v30 + 1, 1);
          v28 = v92;
        }

        v28[2] = v30 + 1;
        v31 = &v28[v30];
        *(v31 + 8) = v32;
        *(v31 + 36) = v33;
        *(v31 + 37) = v34;
        *(v31 + 38) = v35;
        *(v31 + 39) = v36;
      }

      v27 += 8;
      --v26;
    }

    while (v26);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v81 = v28[2];

  v38 = v87(v90, v91);
  v39 = *(v38 + 16);
  v80 = v38;
  if (v39)
  {
    v40 = (v38 + 39);
    v41 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v40 - 1) == 1)
      {
        v45 = *(v40 - 7);
        v46 = *(v40 - 3);
        v47 = *(v40 - 2);
        v48 = *v40;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v92 = v41;
        if ((v49 & 1) == 0)
        {
          sub_1000C06E4(0, v41[2] + 1, 1);
          v41 = v92;
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          sub_1000C06E4((v42 > 1), v43 + 1, 1);
          v41 = v92;
        }

        v41[2] = v43 + 1;
        v44 = &v41[v43];
        *(v44 + 8) = v45;
        *(v44 + 36) = v46;
        *(v44 + 37) = v47;
        *(v44 + 38) = 1;
        *(v44 + 39) = v48;
      }

      v40 += 8;
      --v39;
    }

    while (v39);
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
  }

  v80 = v41[2];

  v50 = v87(v90, v91);
  v51 = *(v50 + 16);
  v88 = v50;
  if (v51)
  {
    v52 = (v50 + 39);
    v53 = _swiftEmptyArrayStorage;
    do
    {
      v57 = *(v52 - 3);
      if (v57 >= 2)
      {
        v58 = *(v52 - 7);
        v59 = *(v52 - 2);
        v60 = *(v52 - 1);
        v61 = *v52;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v92 = v53;
        if ((v62 & 1) == 0)
        {
          sub_1000C06E4(0, v53[2] + 1, 1);
          v53 = v92;
        }

        v55 = v53[2];
        v54 = v53[3];
        if (v55 >= v54 >> 1)
        {
          sub_1000C06E4((v54 > 1), v55 + 1, 1);
          v53 = v92;
        }

        v53[2] = v55 + 1;
        v56 = &v53[v55];
        *(v56 + 8) = v58;
        *(v56 + 36) = v57;
        *(v56 + 37) = v59;
        *(v56 + 38) = v60;
        *(v56 + 39) = v61;
      }

      v52 += 8;
      --v51;
    }

    while (v51);
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
  }

  v63 = v53[2];

  v64 = v83;
  Logger.init(subsystem:category:)();
  v65 = v82;

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v92 = v69;
    *v68 = 136315138;
    v70 = Array.description.getter();
    v72 = sub_100002320(v70, v71, &v92);

    *(v68 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v66, v67, "Configuring non-SDB realtime schedule for %s", v68, 0xCu);
    sub_100002A00(v69);
  }

  (*(v84 + 8))(v64, v85);
  __chkstk_darwin();
  v73 = v91;
  *(&v79 - 4) = v90;
  *(&v79 - 3) = v73;
  *(&v79 - 2) = v65;
  *(&v79 - 8) = v74;
  *(&v79 - 7) = v75;
  *(&v79 - 6) = v76;
  *(&v79 - 5) = v77;
  (*(v73 + 24))(0, 2, sub_1003174C0);
}

uint64_t sub_100317064()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PriorityRadioConstraint()
{
  result = qword_1005961D8;
  if (!qword_1005961D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003171B0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100317238(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10031736C()
{
  swift_weakAssign();

  return sub_10030C964();
}

uint64_t sub_1003173A4(uint64_t a1, void **a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  return sub_10030CCD8(a1, a2);
}

uint64_t sub_1003173B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10031741C()
{
  swift_weakAssign();

  return sub_10030C528();
}

uint64_t sub_100317454(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  return sub_10030C8AC(a1, a2);
}

uint64_t sub_100317464(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_10030D76C(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 57), *(v1 + 58), *(v1 + 59), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128));
}

uint64_t sub_1003174C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10030D1FC(a1, *(v1 + 32), *(v1 + 40), *(v1 + 41), *(v1 + 42), *(v1 + 43));
}

uint64_t sub_1003174DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100317524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100317594()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10031771C()
{
  v1 = *(v0 + qword_10059B990);
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();
}

BOOL sub_10031776C(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static AWDLPeer.Reachability.__derived_enum_equals(_:_:)(*a1, *a2);
}

Swift::Int sub_100317780(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return AWDLPeer.Reachability.hashValue.getter(*v1);
}

void sub_10031778C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AWDLPeer.Reachability.hash(into:)(a1, *v2);
}

Swift::Int sub_100317798(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AWDLPeer.Reachability.hash(into:)(v7, *v2);
  return Hasher._finalize()();
}

uint64_t sub_1003177E0(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      v8 = WiFiAddress.description.getter(*(v3 + 42) | (*(v3 + 44) << 16));
      v10 = sub_100002320(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Marking peer %s as unrecoverable", v6, 0xCu);
      sub_100002A00(v7);
    }

    v11 = *(v2 + qword_10059B990);
    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_10033A838(*(v2 + qword_1005963B8), *(v3 + 42) | (*(v3 + 44) << 16), 1);
  }

  return result;
}

uint64_t sub_100317984(unsigned __int8 *a1)
{
  v3 = *(*(*v1 + 88) + 8);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6[8];
  __chkstk_darwin();
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v47 - v10;
  v12 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation(0) - 8) + 64);
  __chkstk_darwin();
  result = __chkstk_darwin();
  v16 = &v47 - v15;
  if (a1)
  {
    v54 = a1;
    v17 = *(v1 + qword_10059B990);
    v50 = result;
    v51 = v14;
    swift_unownedRetainStrong();
    v18 = *(*v17 + 96);
    swift_beginAccess();
    v52 = v1;
    v53 = v16;
    v19 = v6[2];
    v19(v11, v17 + v18, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    LODWORD(v49) = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v21 = v6[1];
    v21(v11, AssociatedTypeWitness);
    swift_unownedRetainStrong();
    v22 = *(*v17 + 96);
    swift_beginAccess();
    v19(v9, v17 + v22, AssociatedTypeWitness);
    v23 = v52;
    v24 = v53;

    LOBYTE(v22) = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v21(v9, AssociatedTypeWitness);
    v25 = *NANAttribute.CustomDeviceInformation.Flags.linkConditionFeedbackRequest.unsafeMutableAddressor();
    NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v24 + *(v50 + 28));
    *v24 = v49;
    *(v24 + 1) = v22;
    *(v24 + 4) = v25;
    v26 = v51;
    sub_10031CFB4(v24, v51, type metadata accessor for NANAttribute.CustomDeviceInformation);
    v27 = NANActionFrame.init(customDeviceInformation:)(v26);
    v29 = v28;
    v30 = v27;
    swift_unownedRetainStrong();
    sub_10040DD50();
    v31 = v54;

    v56[0] = 0;
    v56[1] = v30;
    v56[2] = v29;
    v56[3] = 0;
    v57 = 2;
    v32 = v31[44];
    v33 = v31[45];
    v34 = v31[46];
    v35 = v31[47];
    v36 = *(v23 + qword_1005963E0) | (*(v23 + qword_1005963E0 + 4) << 32);
    v37 = v31[42] | (v31[43] << 8);
    v50 = v34;
    v51 = v33;
    v48 = v37;
    v49 = v35;
    if ((v36 & 0xFF00000000) == 0x300000000)
    {
      sub_1003A8260(v56, v37 | (v32 << 16) | (v33 << 24) | (v34 << 32) | (v35 << 40), 1, 0, 0, 0, 1, 1, 3000, NANBitmap.Channel.operatingClass.getter, 0);
    }

    else
    {
      sub_1003A8260(v56, v37 | (v32 << 16) | (v33 << 24) | (v34 << 32) | (v35 << 40), 1, 0, 0, 0, 1, SBYTE4(v36), 3000, NANBitmap.Channel.operatingClass.getter, 0);
    }

    sub_100048C4C(v30);

    v38 = *&v31[OBJC_IVAR____TtC12wifip2pdCore13MulticastPeer_heartbeatRequestCounter];

    if (v38 >= 3)
    {
      v39 = sub_10031D088;
    }

    else
    {
      v39 = sub_10031D08C;
    }

    sub_100334458(10000, v39, v23);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55 = v43;
      *v42 = 136315138;
      v44 = WiFiAddress.description.getter(v48 | (v32 << 16) | (v51 << 24) | (v50 << 32) | (v49 << 40));
      v46 = sub_100002320(v44, v45, &v55);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Finish sending link condition request for %s of peers", v42, 0xCu);
      sub_100002A00(v43);
    }

    else
    {
    }

    return sub_10031D01C(v24, type metadata accessor for NANAttribute.CustomDeviceInformation);
  }

  return result;
}

uint64_t sub_100318138(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      v8 = WiFiAddress.description.getter(*(v3 + 42) | (*(v3 + 44) << 16));
      v10 = sub_100002320(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "No response from peer %s marking it as inactive", v6, 0xCu);
      sub_100002A00(v7);
    }

    *(v3 + 51) = 0;
    sub_100333C24();
    v11 = *(v2 + qword_10059B990);
    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_10033A838(*(v2 + qword_1005963B8), *(v3 + 42) | (*(v3 + 44) << 16), 0);
  }

  return result;
}

uint64_t sub_1003182E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = v5;
  v7 = v4;
  v65 = a4;
  v59 = a3;
  v62 = a3 & 0xFFFFFFFFFFFFLL;
  v10 = *(*v4 + 88);
  v11 = *(v10 + 8);
  v12 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v13 = *(v63 + 64);
  __chkstk_darwin();
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v52 - v16;
  v58 = qword_10059B988;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v19 = os_log_type_enabled(v17, v18);
  v56 = a1;
  v57 = a2;
  v55 = v15;
  v61 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v64 = v21;
    *v20 = 136315138;
    v22 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v24 = sub_100002320(v22, v23, &v64);
    v6 = v5;

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "create GCR session with %s", v20, 0xCu);
    sub_100002A00(v21);
  }

  v25 = v63;
  v26 = AssociatedTypeWitness;
  if ((v62 & 0xFF00000000) == 0x300000000)
  {
    v53 = v12;
    v27 = v59 & 0xFFFFFFFFFFFFLL;
    v28 = v56;
  }

  else
  {
    v29 = *(v7 + qword_10059B990);
    swift_unownedRetainStrong();
    v30 = *(*v29 + 96);
    swift_beginAccess();
    v31 = v29 + v30;
    v32 = v54;
    (*(v25 + 16))(v54, v31, v26);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = v12;
    v27 = v59 & 0xFFFFFFFFFFFFLL;
    (*(AssociatedConformanceWitness + 144))(v59 & 0xFFFFFFFFFFFFLL, v26, AssociatedConformanceWitness);
    if (v6)
    {
      goto LABEL_8;
    }

    v53 = v34;
    (*(v25 + 8))(v32, v26);
    v28 = v56;
  }

  v35 = *(v7 + qword_10059B990);
  swift_unownedRetainStrong();
  v36 = *(*v35 + 96);
  swift_beginAccess();
  v32 = v55;
  (*(v25 + 16))(v55, v35 + v36, v26);

  v37 = swift_getAssociatedConformanceWitness();
  v38 = v57;
  (*(v37 + 432))(v28 & 0xFFFFFFFFFFFFLL, v57 & 0xFFFFFFFFFFFFLL, v27, v65 & 0x1FFFF, v26, v37);
  if (v6)
  {
LABEL_8:
    (*(v63 + 8))(v32, v26);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Error %@ while updating multicast MAC address)", v41, 0xCu);
      sub_100016290(v42, &qword_10058B780, &qword_100480AC0);
    }

    else
    {
    }

    goto LABEL_14;
  }

  (*(v25 + 8))(v32, v26);
  v44 = v7 + qword_1005963C8;
  *(v44 + 4) = WORD2(v28);
  *v44 = v28;
  *(v44 + 6) = 0;
  v45 = v7 + qword_1005963D0;
  *v45 = v38;
  *(v45 + 4) = WORD2(v38);
  *(v45 + 6) = 0;
  v46 = v7 + qword_1005963E0;
  v47 = v62;
  *(v46 + 4) = WORD2(v62);
  *v46 = v47;
  v48 = v7 + qword_1005963E8;
  v49 = BYTE2(v65);
  *v48 = v65;
  *(v48 + 2) = v49 & 1;
  v50 = &_mh_execute_header;
  if (!*(v7 + qword_1005963F8 + 4))
  {
    v50 = 0;
  }

  sub_100318900(v50 | (*(v7 + qword_1005963F8 + 3) << 24) | (*(v7 + qword_1005963F8 + 2) << 16) | (*(v7 + qword_1005963F8 + 1) << 8) | *(v7 + qword_1005963F8));
LABEL_14:
  swift_unownedRetainStrong();
  sub_10040DE10(160);
}

uint64_t sub_100318900(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(*v1 + 88) + 8);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = *(v2 + qword_10059B990);
  swift_unownedRetainStrong();
  v12 = *(*v11 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11 + v12, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 464))(a1 & 0x1FFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = (*(v7 + 8))(v10, AssociatedTypeWitness);
  v15 = v2 + qword_1005963F8;
  *v15 = a1;
  *(v15 + 2) = BYTE2(a1);
  *(v15 + 3) = BYTE3(a1);
  *(v15 + 4) = BYTE4(a1) & 1;
  return result;
}

void sub_100318C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = qword_10059B9A0;
  swift_beginAccess();
  sub_10031CEF0(v2 + v6, v31);
  v7 = v32;
  sub_100016290(v31, &unk_100595C70, &qword_1004B0C00);
  if (v7)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = a2;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31[0] = v12;
      *v11 = 136315138;
      v13 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v15 = sub_100002320(v13, v14, v31);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Received Link condition feedback from %s", v11, 0xCu);
      sub_100002A00(v12);

      a2 = v10;
    }

    v16 = *(v3 + qword_10059B9A8);
    swift_beginAccess();
    v17 = *(v16 + 24);
    if (*(v17 + 16))
    {

      v18 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
      if (v19)
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        v21 = a2 + *(type metadata accessor for NANAttribute.CustomDeviceInformation(0) + 28);
        v22 = *(v21 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 52));
        if (v22)
        {
          if (*(v20 + 51))
          {
            sub_10031CEF0(v3 + v6, v31);
            if (v32)
            {
              sub_10002B154(v31, v28);
              sub_100016290(v31, &unk_100595C70, &qword_1004B0C00);
              v23 = v29;
              v24 = v30;
              sub_100029B34(v28, v29);
              (*(v24 + 48))(v20, v22, v23, v24);

              sub_100002A00(v28);
            }

            else
            {

              sub_100016290(v31, &unk_100595C70, &qword_1004B0C00);
            }
          }

          else
          {
            v25 = Logger.logObject.getter();
            v26 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              *v27 = 0;
              _os_log_impl(&_mh_execute_header, v25, v26, "Received link condition feedback from inactive peer. Discarding.......", v27, 2u);
            }
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }
}

void sub_100318F44(unint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 88);
  v5 = *(v4 + 8);
  v6 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v44 - v10;
  v12 = qword_10059B9A8;
  v13 = *(v1 + qword_10059B9A8);
  swift_beginAccess();
  v14 = *(v13 + 24);
  if (*(v14 + 16))
  {

    v15 = sub_100041DE8(a1 & 0xFFFFFFFFFFFFLL);
    if (v16)
    {
      v46 = v11;
      v47 = v8;
      v48 = AssociatedTypeWitness;
      v50 = a1 >> 40;
      v51 = v6;
      v17 = *(v14 + 56);
      v52 = v4;
      v18 = *(v17 + 8 * v15);

      v19 = *(v2 + v12);

      sub_1003355D0(a1 & 0xFFFFFFFFFFFFLL);

      v49 = v18;
      v20 = *(v18 + 40);
      v59 = 0;
      v54 = a1;
      v55 = BYTE2(a1);
      v56 = BYTE3(a1);
      v57 = BYTE4(a1);
      v58 = v50;
      swift_beginAccess();
      type metadata accessor for NANDeviceLink();
      sub_1002CAFC4();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      swift_endAccess();
      swift_beginAccess();
      sub_10037E4EC(v20);
      swift_endAccess();
      v21 = *(v2 + qword_1005963C0) - 1;
      if ((v21 & 0xFFFF0000) != 0)
      {
        __break(1u);
      }

      else
      {
        *(v2 + qword_1005963C0) = v21;
        v50 = qword_10059B988;
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();
        v24 = os_log_type_enabled(v22, v23);
        v26 = v46;
        v25 = v47;
        if (v24)
        {
          v27 = swift_slowAlloc();
          v45 = v20;
          v28 = v27;
          v29 = swift_slowAlloc();
          v53[0] = v29;
          *v28 = 136315394;
          v30 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
          v32 = sub_100002320(v30, v31, v53);

          *(v28 + 4) = v32;
          *(v28 + 12) = 512;
          *(v28 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v22, v23, "Multicast peer %s removed with instance ID %hu", v28, 0x10u);
          sub_100002A00(v29);
        }

        v33 = v48;
        v34 = *(v2 + qword_10059B990);
        swift_unownedRetainStrong();
        v35 = *(*v34 + 96);
        swift_beginAccess();
        (*(v25 + 16))(v26, v34 + v35, v33);

        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        (*(AssociatedConformanceWitness + 472))(a1 & 0xFFFFFFFFFFFFLL, v33, AssociatedConformanceWitness);
        (*(v25 + 8))(v26, v33);
      }

      return;
    }
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v53[0] = v40;
    *v39 = 136315138;
    v41 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
    v43 = sub_100002320(v41, v42, v53);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "No multicast peer found with %s", v39, 0xCu);
    sub_100002A00(v40);
  }
}
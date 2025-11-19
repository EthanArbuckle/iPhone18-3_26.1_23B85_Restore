uint64_t sub_10030A8A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_10030A8EC, v1, 0);
}

uint64_t sub_10030A8EC(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];
  v6 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService);
  v7 = swift_task_alloc();
  v2[5] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  v2[6] = v9;
  *v9 = v2;
  v9[1] = sub_100305DA0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v3, v6, 0x7228747265736E69, 0xEF293A64726F6365, sub_10031870C, v7, &type metadata for () + 8);
}

uint64_t sub_10030AA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v23 = a2;
  v25 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for OwnerSharedSecretsRecord();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 160);
  v24 = type metadata accessor for WorkItemQueue.WorkItem();
  sub_100318DB4(a3, v16, type metadata accessor for OwnerSharedSecretsRecord);
  (*(v9 + 16))(v12, v25, v8);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v9 + 80) + v18 + 8) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_100318718(v16, v20 + v17, type metadata accessor for OwnerSharedSecretsRecord);
  *(v20 + v18) = v23;
  (*(v9 + 32))(v20 + v19, v12, v8);
  *(v20 + ((v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030AD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for OwnerSharedSecretsRecord();
  v3[7] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10030ADB4, 0, 0);
}

uint64_t sub_10030ADB4()
{
  v21 = v0;
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  v0[10] = sub_10000A6F0(v3, qword_1005E0A98);
  sub_100318DB4(v2, v1, type metadata accessor for OwnerSharedSecretsRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    sub_100318DB4(v7, v8, type metadata accessor for OwnerSharedSecretsRecord);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_100318F00(v7, type metadata accessor for OwnerSharedSecretsRecord);
    v15 = sub_10000D01C(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Inserting OwnerSharedSecretsRecord: %s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {

    sub_100318F00(v7, type metadata accessor for OwnerSharedSecretsRecord);
  }

  v16 = *(v0[5] + 128);
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_10030B01C;
  v18 = v0[4];

  return sub_100319D70(v18);
}

uint64_t sub_10030B01C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_10030B1BC;
  }

  else
  {
    v3 = sub_10030B130;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10030B130()
{
  v1 = v0[6];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(returning:)();
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10030B1BC()
{
  v17 = v0;
  v1 = v0[12];
  v2 = v0[10];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to insert OwnerSharedSecretsRecord: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[6];
  v0[2] = v0[12];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v13 = v0[8];
  v12 = v0[9];

  v14 = v0[1];

  return v14();
}

void *sub_10030B378()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[19];

  v6 = v0[20];

  v7 = v0[21];

  v8 = v0[22];

  v9 = v0[23];

  v10 = v0[24];

  v11 = v0[25];

  v12 = v0[26];

  v13 = v0[27];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10030B400()
{
  sub_10030B378();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10030B42C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalStorageService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10030B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LocalStorageService();
  *v9 = v4;
  v9[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10030B598(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalStorageService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10030B640(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalStorageService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_10030B6E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_100307A38();
}

uint64_t sub_10030B774()
{
  v1 = *v0;
  type metadata accessor for LocalStorageService();
  sub_10000D108(&qword_1005AAB88, v2, type metadata accessor for LocalStorageService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10030B86C()
{
  v1 = v0[16];
  v2 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v0[2] = v1;
  sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  CheckedContinuation.resume(throwing:)();
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10030B91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v37 = a4;
  v38 = a2;
  v35 = a3;
  v36 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v39 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for HandleType();
  v8 = *(v41 - 8);
  v34 = *(v8 + 64);
  __chkstk_darwin(v41);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v10;
  v11 = sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0);
  v30 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v31 = &v28 - v14;
  v16 = type metadata accessor for Handle();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v17 + 16))(v19, v35, v16);
  (*(v12 + 16))(v15, v36, v11);
  v29 = v8;
  (*(v8 + 16))(v10, v37, v41);
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = (v18 + *(v12 + 80) + v20) & ~*(v12 + 80);
  v22 = (v13 + *(v8 + 80) + v21) & ~*(v8 + 80);
  v23 = (v34 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v38;
  *(v24 + 16) = v38;
  (*(v17 + 32))(v24 + v20, v19, v16);
  (*(v12 + 32))(v24 + v21, v31, v30);
  (*(v29 + 32))(v24 + v22, v32, v41);
  *(v24 + v23) = v40;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v26 = *(v25 + 136);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030BCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Handle();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005B0B88, &qword_1004D5CC0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v10 = type metadata accessor for FriendRecord(0);
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10030BE5C, 0, 0);
}

uint64_t sub_10030BE5C()
{
  v1 = v0[4];
  v2 = *(v0[3] + 128);
  v3 = Handle.identifier.getter();
  v5 = v4;
  v0[15] = v4;
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_10030BF1C;
  v7 = v0[11];

  return sub_10031A318(v7, v3, v5);
}

uint64_t sub_10030BF1C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_10030C398;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_10030C038;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10030C038()
{
  v33 = v0;
  v1 = v0[11];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    sub_100002CE0(v1, &qword_1005B0B88, &qword_1004D5CC0);
    if (qword_1005A8490 != -1)
    {
      swift_once();
    }

    v3 = v0[8];
    v2 = v0[9];
    v4 = v0[7];
    v5 = v0[4];
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0A98);
    (*(v3 + 16))(v2, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v15 = Handle.identifier.getter();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_10000D01C(v15, v17, &v32);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "No friend matching handle %{private,mask.hash}s", v13, 0x16u);
      sub_100004984(v14);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v23 = v0[10];
    v24 = v0[5];
    v25 = type metadata accessor for Friend();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v19 = v0[14];
    v20 = v0[10];
    v22 = v0[5];
    v21 = v0[6];
    sub_100318718(v1, v19, type metadata accessor for FriendRecord);
    sub_10000D7A4(v21, v20);
    sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0);
    CheckedContinuation.resume(returning:)();
    sub_100318F00(v19, type metadata accessor for FriendRecord);
  }

  v26 = v0[14];
  v27 = v0[10];
  v28 = v0[11];
  v29 = v0[9];

  v30 = v0[1];

  return v30();
}

uint64_t sub_10030C398()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[5];

  v0[2] = v1;
  sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0);
  CheckedContinuation.resume(throwing:)();
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10030C45C()
{
  v1 = v0[5];
  v0[2] = v0[14];
  sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  CheckedContinuation.resume(throwing:)();
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10030C514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_10030C538, 0, 0);
}

uint64_t sub_10030C538()
{
  v16 = v0;
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  v0[7] = sub_10000A6F0(v2, qword_1005E0A98);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    type metadata accessor for Friend();
    v8 = Array.description.getter();
    v10 = sub_10000D01C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocalStorage Service write with friends: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = *(v0[5] + 128);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_10030C720;
  v13 = v0[4];

  return sub_10031A92C(v13);
}

uint64_t sub_10030C720()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10030C834;
  }

  else
  {
    v3 = sub_100318F80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10030C834()
{
  v15 = v0;
  v1 = v0[9];
  v2 = v0[7];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocalStorage Service write with friends error:%{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[6];
  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v12 = v0[1];

  return v12();
}

uint64_t sub_10030C9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a6;
  v24 = a7;
  v22 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v13 + 16))(v16, a1, v12);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v13 + 32))(v18 + v17, v16, v12);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v19 = *(a3 + 136);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030CBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_10030CBEC, 0, 0);
}

uint64_t sub_10030CBEC()
{
  v16 = v0;
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  v0[7] = sub_10000A6F0(v2, qword_1005E0A98);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    type metadata accessor for Friend();
    type metadata accessor for FriendshipAction();
    sub_10000D108(&qword_1005AE9B0, 255, &type metadata accessor for Friend);
    v8 = Dictionary.description.getter();
    v10 = sub_10000D01C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocalStorage Service update with changes: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = *(v0[5] + 128);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_10030CE24;
  v13 = v0[4];

  return sub_10031B518(v13);
}

uint64_t sub_10030CE24()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10030CF38;
  }

  else
  {
    v3 = sub_100318F80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10030CF38()
{
  v15 = v0;
  v1 = v0[9];
  v2 = v0[7];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocalStorage Service update with changes error:%{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[6];
  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v12 = v0[1];

  return v12();
}

uint64_t sub_10030D0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v10 + 32))(v15 + v14, v13, v9);
  *(v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v16 = *(a3 + 144);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030D2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_10030D310, 0, 0);
}

uint64_t sub_10030D310()
{
  v16 = v0;
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  v0[7] = sub_10000A6F0(v2, qword_1005E0A98);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    type metadata accessor for Device();
    v8 = Array.description.getter();
    v10 = sub_10000D01C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocalStorage Service write with devices: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = *(v0[5] + 128);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_10030D4F8;
  v13 = v0[4];

  return sub_10032274C(v13);
}

uint64_t sub_10030D4F8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10030D60C;
  }

  else
  {
    v3 = sub_100318F80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10030D60C()
{
  v15 = v0;
  v1 = v0[9];
  v2 = v0[7];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocalStorage Service write with devices error:%{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[6];
  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v12 = v0[1];

  return v12();
}

uint64_t sub_10030D7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10004B564(&qword_1005B1C18, &qword_1004D5AC8);
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
  v15 = *(a2 + 144);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030D9B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10030D9D4, 0, 0);
}

uint64_t sub_10030D9D4()
{
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_10000A6F0(v1, qword_1005E0A98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalStorage Service read all devices", v4, 2u);
  }

  v5 = v0[5];

  v6 = *(v5 + 128);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_10030DB28;

  return sub_100324C30();
}

uint64_t sub_10030DB28(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_10030DD0C;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_10030DC50;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10030DC50()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  v0[4] = v3;
  sub_10004B564(&qword_1005B1C18, &qword_1004D5AC8);
  CheckedContinuation.resume(returning:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10030DD0C()
{
  v15 = v0;
  v1 = v0[9];
  v2 = v0[7];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocalStorage Service read with devices error:%{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[6];
  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C18, &qword_1004D5AC8);
  CheckedContinuation.resume(throwing:)();
  v12 = v0[1];

  return v12();
}

uint64_t sub_10030DEB8()
{
  v2 = *(sub_10004B564(&qword_1005B1C18, &qword_1004D5AC8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10030D9B4(v4, v0 + v3);
}

uint64_t sub_10030DFCC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v19 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v18 - v12;
  v18[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 80) + 504) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  memcpy((v15 + 24), a3, 0x1E0uLL);
  (*(v10 + 32))(v15 + v14, v13, v9);
  *(v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;

  sub_1001B5440(a3, &v20);
  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v16 = *(a2 + 152);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030E1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_10030E210, 0, 0);
}

uint64_t sub_10030E210()
{
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_10000A6F0(v1, qword_1005E0A98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalStorage Service write serverSettings", v4, 2u);
  }

  v5 = v0[4];

  v6 = *(v5 + 128);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_10030E36C;
  v8 = v0[5];

  return sub_100324FE8(v8);
}

uint64_t sub_10030E36C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10030E4FC;
  }

  else
  {
    v3 = sub_10030E480;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10030E480()
{
  v1 = *(v0 + 48);
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10030E4FC()
{
  v15 = v0;
  v1 = v0[9];
  v2 = v0[7];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocalStorage Service write serverSettings:%{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[6];
  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v12 = v0[1];

  return v12();
}

uint64_t sub_10030E6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10004B564(&qword_1005B1C40, &qword_1004D5BF0);
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
  v15 = *(a2 + 152);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030E89C(uint64_t a1, uint64_t a2)
{
  *(v2 + 8328) = a2;
  *(v2 + 8320) = a1;
  return _swift_task_switch(sub_10030E8C0, 0, 0);
}

uint64_t sub_10030E8C0()
{
  if (qword_1005A8490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[1042] = sub_10000A6F0(v1, qword_1005E0A98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocalStorage Service read all server settings", v4, 2u);
  }

  v5 = v0[1040];

  v6 = *(v5 + 128);
  v7 = swift_task_alloc();
  v0[1043] = v7;
  *v7 = v0;
  v7[1] = sub_100033A74;

  return sub_100325664((v0 + 602));
}

uint64_t sub_10030EA20()
{
  v15 = v0;
  v1 = v0[1044];
  v2 = v0[1042];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[1044];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[1038] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocalStorage Service write with serverSettings error:%{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[1041];
  v0[1039] = v0[1044];
  sub_10004B564(&qword_1005B1C40, &qword_1004D5BF0);
  CheckedContinuation.resume(throwing:)();
  v12 = v0[1];

  return v12();
}

uint64_t sub_10030EBCC()
{
  v1 = v0[5];
  v0[2] = v0[7];
  sub_10004B564(&qword_1005B1C38, &qword_1004D5B88);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10030EC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v25 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  v13 = type metadata accessor for Fence.ID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v14 + 16))(v16, a3, v13);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v24;
  (*(v14 + 32))(v19 + v17, v16, v13);
  (*(v9 + 32))(v19 + v18, v12, v8);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v21 = *(v20 + 176);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030EF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10030EF38, 0, 0);
}

uint64_t sub_10030EF38()
{
  v1 = v0[4];
  v2 = *(v0[3] + 128);
  v3 = Fence.ID.uuidString.getter();
  v5 = v4;
  v0[6] = v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10030EFF0;

  return sub_100325814(v3, v5);
}

uint64_t sub_10030EFF0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10030F188;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10030F10C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10030F10C()
{
  v1 = *(v0 + 40);
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10030F188()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];

  v0[2] = v1;
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v4 = v0[1];

  return v4();
}

uint64_t sub_10030F220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v25 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005B1C30, &qword_1004D5B68);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  v13 = type metadata accessor for Fence.ID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v14 + 16))(v16, a3, v13);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v24;
  (*(v14 + 32))(v19 + v17, v16, v13);
  (*(v9 + 32))(v19 + v18, v12, v8);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v21 = *(v20 + 176);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030F4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[151] = a3;
  v3[150] = a2;
  v3[149] = a1;
  return _swift_task_switch(sub_10030F504, 0, 0);
}

uint64_t sub_10030F504()
{
  v1 = v0[150];
  v2 = *(v0[149] + 128);
  v3 = Fence.ID.uuidString.getter();
  v5 = v4;
  v0[152] = v4;
  v6 = swift_task_alloc();
  v0[153] = v6;
  *v6 = v0;
  v6[1] = sub_10030F5C8;

  return sub_100326220((v0 + 2), v3, v5);
}

uint64_t sub_10030F5C8()
{
  v2 = *v1;
  v3 = *(*v1 + 1224);
  v7 = *v1;
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v4 = sub_10030F774;
  }

  else
  {
    v5 = *(v2 + 1216);

    v4 = sub_10030F6E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10030F6E4()
{
  v1 = v0[151];
  memcpy(v0 + 75, v0 + 2, 0x241uLL);
  sub_10004B564(&qword_1005B1C30, &qword_1004D5B68);
  CheckedContinuation.resume(returning:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10030F774()
{
  v1 = v0[154];
  v2 = v0[152];
  v3 = v0[151];

  v0[148] = v1;
  sub_10004B564(&qword_1005B1C30, &qword_1004D5B68);
  CheckedContinuation.resume(throwing:)();
  v4 = v0[1];

  return v4();
}

uint64_t sub_10030F804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v9 + 32))(v14 + v13, v12, v8);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v15 = *(a2 + 176);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030F9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10030FA14, 0, 0);
}

uint64_t sub_10030FA14()
{
  v1 = *(v0[3] + 128);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10030FAB0;
  v3 = v0[4];

  return sub_100326EE4(v3);
}

uint64_t sub_10030FAB0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_100318F9C;
  }

  else
  {
    v3 = sub_100318F84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10030FBC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10004B564(&qword_1005B1C98, &qword_1004D5EA0);
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
  v13 = *(a2 + 168);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10030FDA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_10030FDC4, 0, 0);
}

uint64_t sub_10030FDC4()
{
  v1 = *(*(v0 + 32) + 128);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_10030FE58;

  return sub_1003272F4();
}

uint64_t sub_10030FE58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_10031000C;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_10030FF80;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10030FF80()
{
  v1 = v0[5];
  v0[3] = v0[8];
  sub_10004B564(&qword_1005B1C98, &qword_1004D5EA0);
  CheckedContinuation.resume(returning:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10031000C()
{
  v1 = v0[5];
  v0[2] = v0[7];
  sub_10004B564(&qword_1005B1C98, &qword_1004D5EA0);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_100310098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v31 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v29[0] = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v29 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v16 + 16))(v18, a3, v15);
  (*(v11 + 16))(v14, a1, v10);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v11 + 80) + v20 + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v30;
  (*(v16 + 32))(v22 + v19, v18, v15);
  v24 = (v22 + v20);
  v26 = v32;
  v25 = v33;
  *v24 = v32;
  v24[1] = v25;
  (*(v11 + 32))(v22 + v21, v14, v29[0]);

  sub_100005F6C(v26, v25);
  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v27 = *(v23 + 168);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100310380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1003103A8, 0, 0);
}

uint64_t sub_1003103A8()
{
  v1 = *(v0[3] + 128);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100310448;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];

  return sub_100328340(v5, v3, v4);
}

uint64_t sub_100310448()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1003105D8;
  }

  else
  {
    v3 = sub_10031055C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10031055C()
{
  v1 = *(v0 + 56);
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003105D8()
{
  v1 = v0[7];
  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_100310664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v25 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v14 + 16))(v16, a3, v13);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v24;
  (*(v14 + 32))(v19 + v17, v16, v13);
  (*(v9 + 32))(v19 + v18, v12, v8);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v21 = *(v20 + 168);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100310920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_100310944, 0, 0);
}

uint64_t sub_100310944()
{
  v1 = *(v0[3] + 128);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10030FAB0;
  v3 = v0[4];

  return sub_100328B18(v3);
}

uint64_t sub_1003109E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v25 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005B1C28, &qword_1004D5B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  v13 = type metadata accessor for Fence.ID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v14 + 16))(v16, a3, v13);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v24;
  (*(v14 + 32))(v19 + v17, v16, v13);
  (*(v9 + 32))(v19 + v18, v12, v8);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v21 = *(v20 + 184);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100310C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*(sub_10004B564(&qword_1005B0B98, &qword_1004D27F0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100310D48, 0, 0);
}

uint64_t sub_100310D48()
{
  v1 = *(v0[3] + 128);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100310DE8;
  v3 = v0[7];
  v4 = v0[4];

  return sub_100329164(v3, v4);
}

uint64_t sub_100310DE8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_100310FD4;
  }

  else
  {
    v3 = sub_100310EFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100310EFC()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_100005F04(v1, v0[6], &qword_1005B0B98, &qword_1004D27F0);
  sub_10004B564(&qword_1005B1C28, &qword_1004D5B28);
  CheckedContinuation.resume(returning:)();
  sub_100002CE0(v1, &qword_1005B0B98, &qword_1004D27F0);
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100310FD4()
{
  v1 = v0[5];
  v0[2] = v0[9];
  sub_10004B564(&qword_1005B1C28, &qword_1004D5B28);
  CheckedContinuation.resume(throwing:)();
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100311070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for FenceTriggerRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for WorkItemQueue.WorkItem();
  sub_100318DB4(a3, v15, type metadata accessor for FenceTriggerRecord);
  (*(v8 + 16))(v11, v22, v7);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_100318718(v15, v18 + v16, type metadata accessor for FenceTriggerRecord);
  (*(v8 + 32))(v18 + v17, v11, v7);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v19 = *(a2 + 184);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10031131C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_100311340, 0, 0);
}

uint64_t sub_100311340()
{
  v1 = *(v0[3] + 128);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10030FAB0;
  v3 = v0[4];

  return sub_10032A70C(v3);
}

uint64_t sub_1003113DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v25 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - v11;
  v13 = type metadata accessor for Fence.ID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v14 + 16))(v16, a3, v13);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v24;
  (*(v14 + 32))(v19 + v17, v16, v13);
  (*(v9 + 32))(v19 + v18, v12, v8);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v21 = *(v20 + 184);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100311698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003116BC, 0, 0);
}

uint64_t sub_1003116BC()
{
  v1 = *(v0[3] + 128);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100311758;
  v3 = v0[4];

  return sub_10032B474(v3);
}

uint64_t sub_100311758()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_10031186C;
  }

  else
  {
    v3 = sub_100318F84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10031186C()
{
  v1 = v0[5];
  v0[2] = v0[7];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_100311958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v23[0] = a8;
  v23[1] = a4;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10004B564(a5, a6);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v23 - v18;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v16 + 16))(v19, a1, v15);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  (*(v16 + 32))(v21 + v20, v19, v15);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100311B30(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 88) = a3;
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  *(v3 + 96) = v5;
  *v5 = v3;
  v5[1] = sub_100311C24;

  return v7(v3 + 16);
}

uint64_t sub_100311C24()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100311DE0;
  }

  else
  {
    v3 = sub_100311D38;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100311D38()
{
  v1 = v0[11];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[9] = v5;
  sub_1003185CC(v2, v3, v4, v5);
  sub_10004B564(&qword_1005B1C70, &qword_1004D5DA0);
  CheckedContinuation.resume(returning:)();
  sub_1000F4DB8(v0[2], v0[3], v0[4], v0[5]);
  v6 = v0[1];

  return v6();
}

uint64_t sub_100311DE0()
{
  v1 = v0[11];
  v0[10] = v0[13];
  sub_10004B564(&qword_1005B1C70, &qword_1004D5DA0);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_100311E6C(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  *(v3 + 48) = v5;
  *v5 = v3;
  v5[1] = sub_100311F60;

  return v7(v3 + 16);
}

uint64_t sub_100311F60()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_100312100;
  }

  else
  {
    v3 = sub_100312074;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100312074()
{
  v1 = v0[5];
  v0[4] = v0[2];
  sub_10004B564(&qword_1005B1C58, &qword_1004D5D68);
  CheckedContinuation.resume(returning:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_100312100()
{
  v1 = v0[5];
  v0[3] = v0[7];
  sub_10004B564(&qword_1005B1C58, &qword_1004D5D68);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10031218C(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_100312278;

  return v7();
}

uint64_t sub_100312278()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100312408;
  }

  else
  {
    v3 = sub_10031238C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10031238C()
{
  v1 = *(v0 + 24);
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100312408()
{
  v1 = v0[3];
  v0[2] = v0[5];
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_100312494(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_100312588;

  return v7(v3 + 48);
}

uint64_t sub_100312588()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100312728;
  }

  else
  {
    v3 = sub_10031269C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10031269C()
{
  v1 = *(v0 + 24);
  *(v0 + 49) = *(v0 + 48);
  sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100312728()
{
  v1 = v0[3];
  v0[2] = v0[5];
  sub_10004B564(&unk_1005A9578, &unk_1004C29A0);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_1003127B4(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 88) = a3;
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  *(v3 + 96) = v5;
  *v5 = v3;
  v5[1] = sub_1003128A8;

  return v7(v3 + 16);
}

uint64_t sub_1003128A8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100312A64;
  }

  else
  {
    v3 = sub_1003129BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003129BC()
{
  v1 = v0[11];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v0[6] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[9] = v5;
  sub_1003185CC(v2, v3, v4, v5);
  sub_10004B564(&qword_1005B1C80, &qword_1004D5E20);
  CheckedContinuation.resume(returning:)();
  sub_1000F4DB8(v0[2], v0[3], v0[4], v0[5]);
  v6 = v0[1];

  return v6();
}

uint64_t sub_100312A64()
{
  v1 = v0[11];
  v0[10] = v0[13];
  sub_10004B564(&qword_1005B1C80, &qword_1004D5E20);
  CheckedContinuation.resume(throwing:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_100312AF0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_100312B10, a2, 0);
}

uint64_t sub_100312B10()
{
  v1 = 0xD000000000000014;
  v2 = *(*(v0 + 24) + 128);
  v3 = "aredKeysImported";
  if (*(v0 + 88) != 1)
  {
    v1 = 0xD000000000000020;
    v3 = "readServerSettings()";
  }

  if (*(v0 + 88))
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xD00000000000001BLL;
  }

  if (*(v0 + 88))
  {
    v5 = v3;
  }

  else
  {
    v5 = "secureLocationLabels";
  }

  *(v0 + 32) = v5;
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_100312C08;

  return sub_10032C09C(v4, v5 | 0x8000000000000000);
}

uint64_t sub_100312C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  v12 = *v5;
  *(*v5 + 48) = v4;

  if (v4)
  {
    v13 = v10[3];
    v14 = sub_100318FA0;
  }

  else
  {
    v16 = v10[3];
    v15 = v10[4];

    v10[7] = a4;
    v10[8] = a3;
    v10[9] = a2;
    v10[10] = a1;
    v14 = sub_100318F68;
    v13 = v16;
  }

  return _swift_task_switch(v14, v13, 0);
}

uint64_t sub_100312D68(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = a1;
  return _swift_task_switch(sub_100312D8C, v1, 0);
}

uint64_t sub_100312D8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 57);
  v3 = *(v1 + 192);
  v4 = swift_allocObject();
  *(v0 + 24) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v6 = sub_10000D108(&qword_1005AAB90, v5, type metadata accessor for LocalStorageService);

  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v7[2] = &unk_1004D5D10;
  v7[3] = v4;
  v7[4] = v3;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v9[1] = sub_100312F0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, v1, v6, 0xD00000000000001DLL, 0x80000001004E0910, sub_100317C00, v7, &type metadata for Bool);
}

uint64_t sub_100312F0C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {
    v4 = *(v3 + 16);

    return _swift_task_switch(sub_100313058, v4, 0);
  }

  else
  {
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);

    v7 = *(v3 + 56);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_100313058()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3(0);
}

uint64_t sub_1003130C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_1003130E8, a2, 0);
}

uint64_t sub_1003130E8()
{
  v1 = 0xD000000000000014;
  v2 = *(*(v0 + 24) + 128);
  v3 = "aredKeysImported";
  if (*(v0 + 56) != 1)
  {
    v1 = 0xD000000000000020;
    v3 = "readServerSettings()";
  }

  if (*(v0 + 56))
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xD00000000000001BLL;
  }

  if (*(v0 + 56))
  {
    v5 = v3;
  }

  else
  {
    v5 = "secureLocationLabels";
  }

  *(v0 + 32) = v5;
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1003131E0;

  return sub_10032D348(v4, v5 | 0x8000000000000000);
}

uint64_t sub_1003131E0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = *(v4 + 24);
    v8 = sub_100313348;
  }

  else
  {
    v10 = *(v4 + 24);
    v9 = *(v4 + 32);

    *(v4 + 57) = a1 & 1;
    v8 = sub_100313324;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100313348()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1003133B0()
{
  v1[3] = v0;
  v2 = type metadata accessor for SecureLocation();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10031347C, v0, 0);
}

uint64_t sub_10031347C(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = *(v3 + 200);
  v5 = sub_10000D108(&qword_1005AAB90, a2, type metadata accessor for LocalStorageService);

  v6 = swift_task_alloc();
  v2[8] = v6;
  v6[2] = &unk_1004D5D58;
  v6[3] = v3;
  v6[4] = v4;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  v2[9] = v8;
  v9 = sub_10004B564(&qword_1005B1C50, &qword_1004D5D60);
  *v8 = v2;
  v8[1] = sub_1003135E4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 2, v3, v5, 0xD00000000000001DLL, 0x80000001004E0910, sub_100317EB8, v6, v9);
}

uint64_t sub_1003135E4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_100313A18;
  }

  else
  {
    v6 = v2[8];
    v7 = v2[3];

    v2[11] = v2[2];
    v5 = sub_100313728;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100313728()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = v0[5];
    result = sub_100239440(0, v2, 0);
    v4 = 0;
    v5 = v0[10];
    v6 = (v1 + 56);
    v28 = v2;
    v29 = v1;
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v30 = v0[6];
      v7 = v0[4];
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      v10 = *v6;
      v11 = type metadata accessor for PropertyListDecoder();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();

      sub_100005F6C(v8, v10);
      PropertyListDecoder.init()();
      sub_10000D108(&qword_1005AB000, 255, type metadata accessor for SecureLocation);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v5)
      {
        break;
      }

      v15 = v0[6];
      v14 = v0[7];

      sub_1000049D0(v8, v10);

      sub_100318718(v15, v14, type metadata accessor for SecureLocation);
      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_100239440(v16 > 1, v17 + 1, 1);
      }

      ++v4;
      v18 = v0[7];
      _swiftEmptyArrayStorage[2] = v17 + 1;
      result = sub_100318718(v18, _swiftEmptyArrayStorage + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v17, type metadata accessor for SecureLocation);
      v5 = 0;
      v6 += 4;
      v1 = v29;
      if (v28 == v4)
      {
        goto LABEL_8;
      }
    }

    v19 = v0[11];

    sub_1000049D0(v8, v10);

    v21 = v0[6];
    v20 = v0[7];

    v22 = v0[1];

    return v22();
  }

  else
  {
LABEL_8:
    v23 = v0[11];

    v25 = v0[6];
    v24 = v0[7];

    v26 = v0[1];

    return v26(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100313A18()
{
  v1 = v0[8];
  v2 = v0[3];

  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100313A98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100313AB4, a2, 0);
}

uint64_t sub_100313AB4()
{
  v1 = *(*(v0 + 24) + 128);
  if (qword_1005A8170 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E0120);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_10008420C;

  return sub_10032DAAC(v3);
}

uint64_t sub_100313B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for SecureLocation();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100313C58, v3, 0);
}

uint64_t sub_100313C58()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = *(v1 + 200);
  v5 = swift_allocObject();
  v0[13] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v7 = sub_10000D108(&qword_1005AAB90, v6, type metadata accessor for LocalStorageService);

  v8 = swift_task_alloc();
  v0[14] = v8;
  v8[2] = &unk_1004D5E48;
  v8[3] = v5;
  v8[4] = v4;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[15] = v10;
  v11 = sub_10004B564(&qword_1005B1C78, &qword_1004D5E18);
  *v10 = v0;
  v10[1] = sub_100313DF0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, v7, 0xD00000000000001DLL, 0x80000001004E0910, sub_100318F94, v8, v11);
}

uint64_t sub_100313DF0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = sub_1003140DC;
  }

  else
  {
    v6 = v2[13];
    v7 = v2[14];
    v8 = v2[9];

    v5 = sub_100313F20;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100313F20()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[10];
    v8 = type metadata accessor for PropertyListDecoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10000D108(&qword_1005AB000, 255, type metadata accessor for SecureLocation);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v5)
    {
      sub_1000F4DB8(v2, v1, v3, v4);

      v11 = v0[12];

      v12 = v0[1];
      goto LABEL_7;
    }

    v14 = v0[12];
    v15 = v0[6];
    sub_1000F4DB8(v2, v1, v3, v4);

    sub_100318718(v14, v15, type metadata accessor for SecureLocation);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v16 = v0[12];
  (*(v0[11] + 56))(v0[6], v13, 1, v0[10]);

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_1003140DC()
{
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[16];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100314150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100314170, a2, 0);
}

uint64_t sub_100314170()
{
  v1 = *(v0[3] + 128);
  if (qword_1005A8170 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E0120);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100314258;
  v6 = v0[4];
  v5 = v0[5];

  return sub_10032E450(v6, v5, v3);
}

uint64_t sub_100314258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 48);
  v12 = *v5;

  if (v4)
  {
    v13 = *(v12 + 8);

    return v13();
  }

  else
  {
    v15 = v10[3];
    v10[7] = a4;
    v10[8] = a3;
    v10[9] = a2;
    v10[10] = a1;

    return _swift_task_switch(sub_1003143CC, v15, 0);
  }
}

uint64_t sub_1003143CC()
{
  v1 = *(v0 + 16);
  v2 = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  *v1 = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1003143FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for SecureLocation() - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003144C0, v1, 0);
}

uint64_t sub_1003144C0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 200);
  sub_100318DB4(v0[2], v1, type metadata accessor for SecureLocation);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[7] = v6;
  *(v6 + 16) = v2;
  sub_100318718(v1, v6 + v5, type metadata accessor for SecureLocation);
  v8 = sub_10000D108(&qword_1005AAB90, v7, type metadata accessor for LocalStorageService);

  v9 = swift_task_alloc();
  v0[8] = v9;
  v9[2] = &unk_1004D5F00;
  v9[3] = v6;
  v9[4] = v4;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_100314684;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v2, v8, 0xD00000000000001DLL, 0x80000001004E0910, sub_100318F98, v9, &type metadata for () + 8);
}

uint64_t sub_100314684()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_100314818;
  }

  else
  {
    v6 = v2[7];
    v7 = v2[8];
    v8 = v2[3];

    v5 = sub_1003147B4;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003147B4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100314818()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_100314890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = type metadata accessor for SecureLocation();
  v3[4] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_100314928, a2, 0);
}

uint64_t sub_100314928()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + 128);
  v6 = *v3;
  v5 = v3[1];
  v0[6] = v5;
  sub_100318DB4(v3, v2, type metadata accessor for SecureLocation);
  v7 = type metadata accessor for PropertyListEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  PropertyListEncoder.init()();
  sub_10000D108(&qword_1005AB008, 255, type metadata accessor for SecureLocation);
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v12 = v11;
  v0[7] = v10;
  v0[8] = v11;
  sub_100318F00(v2, type metadata accessor for SecureLocation);

  if (qword_1005A8170 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Table();
  v14 = sub_10000A6F0(v13, qword_1005E0120);
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_100314B64;

  return sub_10032EFC0(v6, v5, v10, v12, v14);
}

uint64_t sub_100314B64()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_100314CC8, v4, 0);
  }

  else
  {
    v6 = v3[7];
    v5 = v3[8];
    v8 = v3[5];
    v7 = v3[6];

    sub_1000049D0(v6, v5);

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_100314CC8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  sub_1000049D0(v1, v2);
  v4 = v0[10];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100314D44(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100314D68, v2, 0);
}

uint64_t sub_100314D68()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v1 + 200);
  v5 = swift_allocObject();
  v0[5] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v7 = sub_10000D108(&qword_1005AAB90, v6, type metadata accessor for LocalStorageService);

  v8 = swift_task_alloc();
  v0[6] = v8;
  v8[2] = &unk_1004D5DE0;
  v8[3] = v5;
  v8[4] = v4;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_100314EF0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 9, v1, v7, 0xD00000000000001DLL, 0x80000001004E0910, sub_100318F90, v8, &type metadata for Bool);
}

uint64_t sub_100314EF0()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {
    v4 = *(v3 + 32);

    return _swift_task_switch(sub_10031503C, v4, 0);
  }

  else
  {
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);

    v7 = *(v3 + 72);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_10031503C()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3(0);
}

uint64_t sub_1003150AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1003150CC, a2, 0);
}

uint64_t sub_1003150CC()
{
  v1 = *(v0[3] + 128);
  if (qword_1005A8170 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E0120);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1003151B4;
  v6 = v0[4];
  v5 = v0[5];

  return sub_10032F670(v6, v5, v3);
}

uint64_t sub_1003151B4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_100315304, v9, 0);
  }
}

uint64_t sub_100315328(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100315344, a2, 0);
}

uint64_t sub_100315344()
{
  v1 = *(*(v0 + 24) + 128);
  if (qword_1005A8178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E0138);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_100315424;

  return sub_10032DAAC(v3);
}

uint64_t sub_100315424(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100318F78, v9, 0);
  }
}

uint64_t sub_100315570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100315634, v3, 0);
}

uint64_t sub_100315634()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = *(v1 + 208);
  v5 = swift_allocObject();
  v0[13] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v7 = sub_10000D108(&qword_1005AAB90, v6, type metadata accessor for LocalStorageService);

  v8 = swift_task_alloc();
  v0[14] = v8;
  v8[2] = &unk_1004D5E10;
  v8[3] = v5;
  v8[4] = v4;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[15] = v10;
  v11 = sub_10004B564(&qword_1005B1C78, &qword_1004D5E18);
  *v10 = v0;
  v10[1] = sub_1003157CC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, v7, 0xD00000000000001DLL, 0x80000001004E0910, sub_1003183D8, v8, v11);
}

uint64_t sub_1003157CC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = sub_100318F74;
  }

  else
  {
    v6 = v2[13];
    v7 = v2[14];
    v8 = v2[9];

    v5 = sub_1003158FC;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003158FC()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[10];
    v8 = type metadata accessor for PropertyListDecoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10000D108(&qword_1005B1C68, 255, type metadata accessor for SecureLocationsCachedSharedKey);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v5)
    {
      sub_1000F4DB8(v2, v1, v3, v4);

      v11 = v0[12];

      v12 = v0[1];
      goto LABEL_7;
    }

    v14 = v0[12];
    v15 = v0[6];
    sub_1000F4DB8(v2, v1, v3, v4);

    sub_100318718(v14, v15, type metadata accessor for SecureLocationsCachedSharedKey);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v16 = v0[12];
  (*(v0[11] + 56))(v0[6], v13, 1, v0[10]);

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_100315AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100315AD8, a2, 0);
}

uint64_t sub_100315AD8()
{
  v1 = *(v0[3] + 128);
  if (qword_1005A8178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E0138);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100315BC0;
  v6 = v0[4];
  v5 = v0[5];

  return sub_10032E450(v6, v5, v3);
}

uint64_t sub_100315BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 48);
  v12 = *v5;

  if (v4)
  {
    v13 = *(v12 + 8);

    return v13();
  }

  else
  {
    v15 = v10[3];
    v10[7] = a4;
    v10[8] = a3;
    v10[9] = a2;
    v10[10] = a1;

    return _swift_task_switch(sub_100318F68, v15, 0);
  }
}

uint64_t sub_100315D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v3[4] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_100315DCC, a2, 0);
}

uint64_t sub_100315DCC()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v0[2] + 128);
  v4 = (v2 + *(v0[4] + 20));
  v6 = *v4;
  v5 = v4[1];
  v0[6] = v5;
  sub_100318DB4(v2, v1, type metadata accessor for SecureLocationsCachedSharedKey);
  v7 = type metadata accessor for PropertyListEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  PropertyListEncoder.init()();
  sub_10000D108(&qword_1005B1C60, 255, type metadata accessor for SecureLocationsCachedSharedKey);
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v12 = v11;
  v0[7] = v10;
  v0[8] = v11;
  sub_100318F00(v1, type metadata accessor for SecureLocationsCachedSharedKey);

  if (qword_1005A8178 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Table();
  v14 = sub_10000A6F0(v13, qword_1005E0138);
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_100316010;

  return sub_10032EFC0(v6, v5, v10, v12, v14);
}

uint64_t sub_100316010()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_100318F60, v4, 0);
  }

  else
  {
    v6 = v3[7];
    v5 = v3[8];
    v8 = v3[5];
    v7 = v3[6];

    sub_1000049D0(v6, v5);

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_100316174(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100316198, v2, 0);
}

uint64_t sub_100316198()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v1 + 208);
  v5 = swift_allocObject();
  v0[5] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v7 = sub_10000D108(&qword_1005AAB90, v6, type metadata accessor for LocalStorageService);

  v8 = swift_task_alloc();
  v0[6] = v8;
  v8[2] = &unk_1004D5DF8;
  v8[3] = v5;
  v8[4] = v4;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_100316320;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 9, v1, v7, 0xD00000000000001DLL, 0x80000001004E0910, sub_100318F90, v8, &type metadata for Bool);
}

uint64_t sub_100316320()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {
    v4 = *(v3 + 32);

    return _swift_task_switch(sub_100318F7C, v4, 0);
  }

  else
  {
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);

    v7 = *(v3 + 72);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_10031646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10031648C, a2, 0);
}

uint64_t sub_10031648C()
{
  v1 = *(v0[3] + 128);
  if (qword_1005A8178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E0138);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100316574;
  v6 = v0[4];
  v5 = v0[5];

  return sub_10032F670(v6, v5, v3);
}

uint64_t sub_100316574(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_100318F6C, v9, 0);
  }
}

uint64_t sub_1003166C4()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0AB0);
  sub_10000A6F0(v0, qword_1005E0AB0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100316744()
{
  v2 = *(type metadata accessor for Fence.ID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_10030EF14(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100316884()
{
  v2 = *(type metadata accessor for FenceTriggerRecord() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_10031131C(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1003169C4()
{
  v2 = *(type metadata accessor for Fence.ID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C28, &qword_1004D5B28) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_100310C9C(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100316B04()
{
  v2 = *(type metadata accessor for Fence.ID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_100311698(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100316C44()
{
  v2 = *(type metadata accessor for Fence.ID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C30, &qword_1004D5B68) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_10030F4DC(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100316D84()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10030F9F0(v4, v5, v0 + v3);
}

uint64_t sub_100316E78()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 504) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10030E1EC(v4, v0 + 24, v0 + v3);
}

uint64_t sub_100316F98()
{
  v2 = *(sub_10004B564(&qword_1005B1C40, &qword_1004D5BF0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10030E89C(v4, v0 + v3);
}

uint64_t sub_1003170FC()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_10030C514(v4, v5, v0 + v3);
}

uint64_t sub_10031726C()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_10030CBC8(v4, v5, v0 + v3);
}

uint64_t sub_100317398()
{
  v1 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10031747C()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_10030D2EC(v4, v5, v0 + v3);
}

uint64_t sub_10031759C(uint64_t *a1, uint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  v7 = sub_10004B564(a1, a2);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = *(v8 + 64);
  a3(*(v4 + 16));
  a4(*(v4 + 24));
  (*(v8 + 8))(v4 + v10, v7);

  return _swift_deallocObject(v4, v10 + v11, v9 | 7);
}

uint64_t sub_10031767C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10004B564(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

uint64_t sub_100317748(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = sub_10004B564(a2, a3);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = (v9 + v10 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v8 | v13;
  v17 = *(v3 + 16);

  (*(v7 + 8))(v3 + v9, v6);
  (*(v12 + 8))(v3 + v14, v11);

  return _swift_deallocObject(v3, v14 + v15, v16 | 7);
}

uint64_t sub_1003178AC()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_100310920(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1003179EC()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10000368C;

  return sub_100310380(v7, v0 + v3, v9, v10, v0 + v6);
}

uint64_t sub_100317B50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1003130C8(a1, v4, v5);
}

uint64_t sub_100317C4C()
{
  v2 = *(sub_10004B564(&unk_1005A9578, &unk_1004C29A0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100312494(v4, v5, v0 + v3);
}

uint64_t sub_100317D34()
{
  v2 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10031218C(v4, v5, v0 + v3);
}

uint64_t sub_100317E1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_100313A98(a1, v1);
}

uint64_t sub_100317F04()
{
  v2 = *(sub_10004B564(&qword_1005B1C58, &qword_1004D5D68) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100311E6C(v4, v5, v0 + v3);
}

uint64_t sub_100317FEC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_100315328(a1, v1);
}

uint64_t sub_100318088()
{
  v2 = *(sub_10004B564(&qword_1005B1C70, &qword_1004D5DA0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100311B30(v4, v5, v0 + v3);
}

uint64_t sub_1003181BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1003150AC(a1, v4, v5, v6);
}

uint64_t sub_100318270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_10031646C(a1, v4, v5, v6);
}

uint64_t sub_100318324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100315AB8(a1, v4, v5, v6);
}

uint64_t sub_100318424(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10004B564(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 24);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1003184E4()
{
  v2 = *(sub_10004B564(&qword_1005B1C80, &qword_1004D5E20) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003127B4(v4, v5, v0 + v3);
}

void sub_1003185CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100005F6C(a3, a4);
  }
}

uint64_t sub_100318618()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100318658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100314150(a1, v4, v5, v6);
}

uint64_t sub_100318718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100318780()
{
  v2 = *(type metadata accessor for OwnerSharedSecretsRecord() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10000368C;

  return sub_10030AD10(v0 + v3, v7, v0 + v6);
}

uint64_t sub_100318910()
{
  v2 = *(sub_10004B564(&qword_1005B1C90, &qword_1004D5E70) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_10030A39C(v0 + v3, v5);
}

uint64_t sub_100318A30(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10004B564(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100318AF0()
{
  v2 = *(sub_10004B564(&qword_1005B1C98, &qword_1004D5EA0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10030FDA4(v4, v0 + v3);
}

uint64_t sub_100318BE0()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for HandleType() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_10000368C;

  return sub_10030BCCC(v10, v0 + v3, v0 + v6, v0 + v9);
}

uint64_t sub_100318DB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100318E1C(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocation() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100314890(a1, v6, v1 + v5);
}

uint64_t sub_100318F00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100318FB0(uint64_t a1)
{
  v37 = type metadata accessor for Device();
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
    sub_10002B3C0(0, v6, 0);
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
      v39 = Device.identifier.getter();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_10002B3C0((v19 > 1), v20 + 1, 1);
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
            result = sub_10002F14C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_10002F14C(v10, v38, 0);
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

uint64_t sub_1003192B8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Row();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1003193F8, v1, 0);
}

uint64_t sub_1003193F8()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_10031941C, v1, 0);
}

uint64_t sub_10031941C()
{
  v1 = *(v0 + 144);
  sub_10000A0A4();
  *(v0 + 152) = 0;
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_10031950C, v2, 0);
}

uint64_t sub_10031950C()
{
  v1 = v0[18];
  v2 = v0[8];
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  v0[20] = Database.readConnection.getter();

  return _swift_task_switch(sub_1003195CC, v2, 0);
}

uint64_t sub_1003195CC()
{
  if (v0[20])
  {
    if (qword_1005A8130 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v0[14], qword_1005E0060);
    sub_10004B564(&qword_1005AF0D0, &unk_1004D5830);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004C0BB0;
    if (qword_1005A8180 != -1)
    {
      swift_once();
    }

    v2 = sub_10004B564(&qword_1005AF078, &unk_1004D0260);
    v3 = sub_10000A6F0(v2, qword_1005E0168);
    *(v1 + 56) = v2;
    *(v1 + 64) = sub_10001DF0C(&qword_1005AF0D8, &qword_1005AF078, &unk_1004D0260);
    v4 = sub_10000331C((v1 + 32));
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    if (qword_1005A81A0 != -1)
    {
      swift_once();
    }

    v5 = sub_10004B564(&qword_1005AF0C8, &unk_1004D02A0);
    v6 = sub_10000A6F0(v5, qword_1005E01C8);
    *(v1 + 96) = v5;
    *(v1 + 104) = sub_10001DF0C(&qword_1005B1DF8, &qword_1005AF0C8, &unk_1004D02A0);
    v7 = sub_10000331C((v1 + 72));
    (*(*(v5 - 8) + 16))(v7, v6, v5);
    if (qword_1005A8190 != -1)
    {
      swift_once();
    }

    v8 = sub_10004B564(&qword_1005AF0B8, &qword_1004D5850);
    v9 = sub_10000A6F0(v8, qword_1005E0198);
    *(v1 + 136) = v8;
    *(v1 + 144) = sub_10001DF0C(&qword_1005B1E00, &qword_1005AF0B8, &qword_1004D5850);
    v10 = sub_10000331C((v1 + 112));
    (*(*(v8 - 8) + 16))(v10, v9, v8);
    if (qword_1005A8198 != -1)
    {
      swift_once();
    }

    v47 = v0[19];
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[14];
    v14 = v0[15];
    v15 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
    v16 = sub_10000A6F0(v15, qword_1005E01B0);
    *(v1 + 176) = v15;
    *(v1 + 184) = sub_10001DF0C(&qword_1005B1E08, &qword_1005AF028, &qword_1004D0238);
    v17 = sub_10000331C((v1 + 152));
    (*(*(v15 - 8) + 16))(v17, v16, v15);
    SchemaType.select(_:)();

    QueryType.limit(_:)();
    v18 = *(v14 + 8);
    v18(v12, v13);
    v0[5] = v13;
    v0[6] = &protocol witness table for Table;
    v19 = sub_10000331C(v0 + 2);
    (*(v14 + 16))(v19, v11, v13);
    Connection.prepare(_:)();
    if (!v47)
    {
      sub_100004984(v0 + 2);
      v29 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

      if (*(v29 + 16))
      {
        v30 = v0[12];
        v31 = v0[13];
        v32 = v0[10];
        v46 = v30;
        v48 = v0[11];
        v33 = v0[9];
        v49 = v0[7];
        v34 = *(v32 + 80);
        v35 = *(v32 + 16);
        v35();

        (*(v32 + 32))(v31, v46, v33);
        (v35)(v48, v31, v33);
        sub_10032FECC(v48, v49);
        v36 = v0[13];
        v37 = v0[9];
        v38 = v0[10];

        (*(v38 + 8))(v36, v37);
        v39 = 0;
      }

      else
      {

        v39 = 1;
      }

      v40 = v0[16];
      v41 = v0[13];
      v42 = v0[11];
      v43 = v0[12];
      v44 = v0[7];
      v18(v0[17], v0[14]);
      v45 = type metadata accessor for OwnerSharedSecretsRecord();
      (*(*(v45 - 8) + 56))(v44, v39, 1, v45);

      v27 = v0[1];
      goto LABEL_16;
    }

    v18(v0[17], v0[14]);

    sub_100004984(v0 + 2);
  }

  else
  {
    v20 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for DatabaseError.notConnected(_:), v20);
    swift_willThrow();
  }

  v23 = v0[16];
  v22 = v0[17];
  v25 = v0[12];
  v24 = v0[13];
  v26 = v0[11];

  v27 = v0[1];
LABEL_16:

  return v27();
}

uint64_t sub_100319D70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Insert();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100319E30, v1, 0);
}

uint64_t sub_100319E30()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_100319E54, v1, 0);
}

uint64_t sub_100319E54()
{
  v1 = *(v0 + 56);
  sub_10000A0A4();
  *(v0 + 64) = 0;
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100319F10, v2, 0);
}

uint64_t sub_100319F10()
{
  v1 = v0[7];
  v2 = v0[3];
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  v0[9] = Database.writeConnection.getter();

  return _swift_task_switch(sub_100319FD0, v2, 0);
}

uint64_t sub_100319FD0()
{
  if (v0[9])
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_10031A154;
    v2 = v0[6];
    v3 = v0[2];
    v4 = v0[3];

    return sub_100330374(v2, v3);
  }

  else
  {
    v6 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for DatabaseError.notConnected(_:), v6);
    swift_willThrow();
    v8 = v0[6];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10031A154()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10031A264, v2, 0);
}

uint64_t sub_10031A264()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  Connection.run(_:)();
  (*(v4 + 8))(v3, v5);

  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10031A318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10031A444, 0, 0);
}

uint64_t sub_10031A444()
{
  v1 = *(*(v0 + 96) + 112);
  *(v0 + 152) = v1;
  return _swift_task_switch(sub_10031A468, v1, 0);
}

uint64_t sub_10031A468()
{
  v1 = *(v0 + 152);
  sub_10000A0A4();
  *(v0 + 160) = 0;
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10031A530, v2, 0);
}

uint64_t sub_10031A530()
{
  v1 = *(v0 + 152);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 168) = Database.readConnection.getter();

  return _swift_task_switch(sub_10031A5E4, 0, 0);
}

uint64_t sub_10031A5E4()
{
  if (!*(v0 + 168))
  {
    v13 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for DatabaseError.notConnected(_:), v13);
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_1005A8138 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(*(v0 + 128), qword_1005E0078);
  if (qword_1005A81A8 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 160);
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v21 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  sub_10000A6F0(v8, qword_1005E01E0);
  *(v0 + 56) = String.lowercased()();
  == infix<A>(_:_:)();

  QueryType.filter(_:)();
  (*(v5 + 8))(v4, v21);
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for Table;
  v9 = sub_10000331C((v0 + 16));
  (*(v1 + 16))(v9, v2, v3);
  sub_10000A728();
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  v12 = *(v0 + 128);
  if (v22)
  {
    (*(v11 + 8))(*(v0 + 144), *(v0 + 128));

    sub_100004984((v0 + 16));
LABEL_9:
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);

    v17 = *(v0 + 8);
    goto LABEL_11;
  }

  v18 = *(v0 + 120);
  v19 = *(v0 + 72);
  sub_100004984((v0 + 16));
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();

  (*(v11 + 8))(v10, v12);

  v17 = *(v0 + 8);
LABEL_11:

  return v17();
}

uint64_t sub_10031A92C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Insert();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for FriendRecord(0);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for Delete();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10031AAA4, v1, 0);
}

uint64_t sub_10031AAA4()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_10031AAC8, v1, 0);
}

uint64_t sub_10031AAC8()
{
  v1 = *(v0 + 104);
  sub_10000A0A4();
  *(v0 + 112) = 0;
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_10031AB9C, v2, 0);
}

uint64_t sub_10031AB9C()
{
  v1 = v0[13];
  v2 = v0[3];
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  v0[15] = Database.writeConnection.getter();

  return _swift_task_switch(sub_10031AC5C, v2, 0);
}

void sub_10031AC5C()
{
  v32 = v0;
  if (!v0[15])
  {
    v4 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for DatabaseError.notConnected(_:), v4);
    swift_willThrow();
    goto LABEL_7;
  }

  if (qword_1005A8138 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  v3 = type metadata accessor for Table();
  sub_10000A6F0(v3, qword_1005E0078);
  QueryType.delete()();
  Connection.run(_:)();
  if (v1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

LABEL_7:
    v6 = v0[12];
    v7 = v0[9];
    v8 = v0[6];

    v9 = v0[1];
LABEL_8:

    v9();
    return;
  }

  v10 = sub_100339AF0(v0[2]);
  v0[16] = v10;
  if (qword_1005A84A0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0AC8);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[7];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = Array.description.getter();
    v19 = sub_10000D01C(v17, v18, &v31);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "LocalStorageSerivice write friendRecords: %{private,mask.hash}s", v15, 0x16u);
    sub_100004984(v16);
  }

  v20 = *(v10 + 16);
  v0[17] = v20;
  if (!v20)
  {
    v27 = v0[15];
    v28 = v0[16];
    v29 = v0[9];
    v30 = v0[6];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v9 = v0[1];
    goto LABEL_8;
  }

  v21 = v0[8];
  v0[18] = 0;
  v22 = v0[16];
  if (*(v22 + 16))
  {
    sub_10033C390(v22 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v0[9], type metadata accessor for FriendRecord);
    v23 = swift_task_alloc();
    v0[19] = v23;
    *v23 = v0;
    v23[1] = sub_10031B0A8;
    v24 = v0[9];
    v25 = v0[6];
    v26 = v0[3];

    sub_100335C5C(v25, v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10031B0A8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v11 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[9];
    v6 = v2[3];
    sub_10033C3F8(v5, type metadata accessor for FriendRecord);

    v7 = sub_10031B46C;
    v8 = v6;
  }

  else
  {
    v9 = v2[3];
    sub_10033C3F8(v2[9], type metadata accessor for FriendRecord);
    v7 = sub_10031B210;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10031B210()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[6];
  Connection.run(_:)();
  if (v1)
  {
    v5 = v0[15];
    v4 = v0[16];
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];

    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[6];

    v15 = v0[1];
LABEL_5:

    return v15();
  }

  v16 = v0[17];
  v17 = v0[18] + 1;
  result = (*(v0[5] + 8))(v0[6], v0[4]);
  if (v17 == v16)
  {
    v19 = v0[15];
    v20 = v0[16];
    v21 = v0[9];
    v22 = v0[6];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v15 = v0[1];
    goto LABEL_5;
  }

  v23 = v0[18] + 1;
  v0[18] = v23;
  v24 = v0[16];
  if (v23 >= *(v24 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_10033C390(v24 + ((*(v0[8] + 80) + 32) & ~*(v0[8] + 80)) + *(v0[8] + 72) * v23, v0[9], type metadata accessor for FriendRecord);
    v25 = swift_task_alloc();
    v0[19] = v25;
    *v25 = v0;
    v25[1] = sub_10031B0A8;
    v26 = v0[9];
    v27 = v0[6];
    v28 = v0[3];

    return sub_100335C5C(v27, v26);
  }

  return result;
}

uint64_t sub_10031B46C()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  (*(v3 + 8))(v2, v4);
  v5 = v0[20];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10031B518(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = v1;
  v3 = type metadata accessor for Insert();
  v2[42] = v3;
  v4 = *(v3 - 8);
  v2[43] = v4;
  v5 = *(v4 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v2[48] = v6;
  v7 = *(v6 - 8);
  v2[49] = v7;
  v8 = *(v7 + 64) + 15;
  v2[50] = swift_task_alloc();
  v9 = type metadata accessor for Delete();
  v2[51] = v9;
  v10 = *(v9 - 8);
  v2[52] = v10;
  v11 = *(v10 + 64) + 15;
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v12 = type metadata accessor for HandleType();
  v2[56] = v12;
  v13 = *(v12 - 8);
  v2[57] = v13;
  v14 = *(v13 + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v15 = type metadata accessor for Handle();
  v2[61] = v15;
  v16 = *(v15 - 8);
  v2[62] = v16;
  v17 = *(v16 + 64) + 15;
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v18 = *(*(sub_10004B564(&qword_1005B0B88, &qword_1004D5CC0) - 8) + 64) + 15;
  v2[65] = swift_task_alloc();
  v19 = type metadata accessor for FriendRecord(0);
  v2[66] = v19;
  v20 = *(v19 - 8);
  v2[67] = v20;
  v21 = *(v20 + 64) + 15;
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v22 = type metadata accessor for FriendshipAction();
  v2[75] = v22;
  v23 = *(v22 - 8);
  v2[76] = v23;
  v24 = *(v23 + 64) + 15;
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v25 = type metadata accessor for Friend();
  v2[85] = v25;
  v26 = *(v25 - 8);
  v2[86] = v26;
  v27 = *(v26 + 64) + 15;
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v28 = *(*(sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0) - 8) + 64) + 15;
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v29 = type metadata accessor for Table();
  v2[94] = v29;
  v30 = *(v29 - 8);
  v2[95] = v30;
  v31 = *(v30 + 64) + 15;
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();

  return _swift_task_switch(sub_10031BA78, v1, 0);
}

uint64_t sub_10031BA78()
{
  v1 = *(*(v0 + 328) + 112);
  *(v0 + 784) = v1;
  return _swift_task_switch(sub_10031BA9C, v1, 0);
}

uint64_t sub_10031BA9C()
{
  v1 = *(v0 + 784);
  sub_10000A0A4();
  v2 = *(v0 + 784);

  return _swift_task_switch(sub_10031BD60, v2, 0);
}

uint64_t sub_10031BD60()
{
  v1 = v0[98];
  v2 = v0[41];
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  v0[99] = Database.writeConnection.getter();

  return _swift_task_switch(sub_10031BE20, v2, 0);
}

uint64_t sub_10031BE20()
{
  if (!*(v0 + 792))
  {
    v12 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for DatabaseError.notConnected(_:), v12);
    swift_willThrow();
    v14 = *(v0 + 776);
    v15 = *(v0 + 768);
    v16 = *(v0 + 744);
    v17 = *(v0 + 736);
    v18 = *(v0 + 728);
    v19 = *(v0 + 720);
    v20 = *(v0 + 712);
    v21 = *(v0 + 704);
    v22 = *(v0 + 696);
    v23 = *(v0 + 672);
    v67 = *(v0 + 664);
    v69 = *(v0 + 656);
    v71 = *(v0 + 648);
    v73 = *(v0 + 640);
    v75 = *(v0 + 632);
    v77 = *(v0 + 624);
    v79 = *(v0 + 616);
    v81 = *(v0 + 592);
    v83 = *(v0 + 584);
    v85 = *(v0 + 576);
    v87 = *(v0 + 568);
    v89 = *(v0 + 560);
    v91 = *(v0 + 552);
    v93 = *(v0 + 544);
    v95 = *(v0 + 520);
    v97 = *(v0 + 512);
    v99 = *(v0 + 504);
    v101 = *(v0 + 480);
    v103 = *(v0 + 472);
    v105 = *(v0 + 464);
    v107 = *(v0 + 440);
    v109 = *(v0 + 432);
    v111 = *(v0 + 424);
    v113 = *(v0 + 400);
    v115 = *(v0 + 376);
    v117 = *(v0 + 368);
    v119 = *(v0 + 360);
    v122 = *(v0 + 352);

    v24 = *(v0 + 8);
LABEL_15:

    return v24();
  }

  if (qword_1005A8138 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 776);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 320);
  v5 = sub_10000A6F0(v3, qword_1005E0078);
  (*(v2 + 16))(v1, v5, v3);
  v6 = *(v4 + 32);
  *(v0 + 1008) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -(-1 << v6));
  }

  v9 = v7 & *(v4 + 64);
  *(v0 + 976) = enum case for HandleType.follower(_:);
  *(v0 + 980) = enum case for HandleType.following(_:);
  *(v0 + 984) = enum case for HandleType.futureFollower(_:);
  *(v0 + 988) = enum case for HandleType.futureFollowing(_:);
  *(v0 + 992) = enum case for HandleType.pendingOffer(_:);
  *(v0 + 996) = enum case for FriendshipAction.remove(_:);
  *(v0 + 1000) = enum case for FriendshipAction.add(_:);
  *(v0 + 1004) = enum case for FriendshipAction.modify(_:);

  if (v9)
  {
    v10 = 0;
    v11 = *(v0 + 320);
LABEL_12:
    v27 = *(v0 + 736);
    v28 = *(v0 + 728);
    v29 = *(v0 + 688);
    v30 = *(v0 + 680);
    v31 = *(v0 + 672);
    v32 = *(v0 + 608);
    v120 = *(v0 + 600);
    v124 = (v9 - 1) & v9;
    v33 = __clz(__rbit64(v9)) | (v10 << 6);
    (*(v29 + 16))(v28, *(v11 + 48) + *(v29 + 72) * v33, v30);
    (*(v32 + 16))(v31, *(v11 + 56) + *(v32 + 72) * v33, v120);
    v34 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v35 = *(v34 + 48);
    (*(v29 + 32))(v27, v28, v30);
    (*(v32 + 32))(v27 + v35, v31, v120);
    (*(*(v34 - 8) + 56))(v27, 0, 1, v34);
    v36 = v124;
    v26 = v10;
  }

  else
  {
    v25 = 0;
    v26 = ((63 - v8) >> 6) - 1;
    while (v26 != v25)
    {
      v10 = v25 + 1;
      v11 = *(v0 + 320);
      v9 = *(v11 + 8 * v25++ + 72);
      if (v9)
      {
        goto LABEL_12;
      }
    }

    v63 = *(v0 + 736);
    v64 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
    v36 = 0;
  }

  *(v0 + 808) = v26;
  *(v0 + 800) = v36;
  v37 = *(v0 + 744);
  sub_10033C300(*(v0 + 736), v37);
  v38 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
  {
    v39 = *(v0 + 792);
    v40 = *(v0 + 768);
    v41 = *(v0 + 744);
    v42 = *(v0 + 736);
    v43 = *(v0 + 728);
    v44 = *(v0 + 720);
    v45 = *(v0 + 712);
    v65 = *(v0 + 704);
    v66 = *(v0 + 696);
    v68 = *(v0 + 672);
    v70 = *(v0 + 664);
    v72 = *(v0 + 656);
    v74 = *(v0 + 648);
    v76 = *(v0 + 640);
    v78 = *(v0 + 632);
    v80 = *(v0 + 624);
    v82 = *(v0 + 616);
    v84 = *(v0 + 592);
    v86 = *(v0 + 584);
    v88 = *(v0 + 576);
    v90 = *(v0 + 568);
    v92 = *(v0 + 560);
    v94 = *(v0 + 552);
    v96 = *(v0 + 544);
    v98 = *(v0 + 520);
    v100 = *(v0 + 512);
    v102 = *(v0 + 504);
    v104 = *(v0 + 480);
    v106 = *(v0 + 472);
    v108 = *(v0 + 464);
    v110 = *(v0 + 440);
    v112 = *(v0 + 432);
    v114 = *(v0 + 424);
    v116 = *(v0 + 400);
    v118 = *(v0 + 376);
    v121 = *(v0 + 368);
    v123 = *(v0 + 360);
    v125 = *(v0 + 352);
    v46 = *(v0 + 320);
    (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

    v24 = *(v0 + 8);
    goto LABEL_15;
  }

  v48 = *(v0 + 744);
  v49 = *(v0 + 664);
  v50 = *(v0 + 608);
  v51 = *(v0 + 600);
  v52 = *(v0 + 512);
  v53 = *(v0 + 488);
  v54 = *(v0 + 496);
  v55 = *(v38 + 48);
  (*(*(v0 + 688) + 32))(*(v0 + 720), v48, *(v0 + 680));
  (*(v50 + 32))(v49, v48 + v55, v51);
  Friend.handle.getter();
  v56 = Handle.identifier.getter();
  v58 = v57;
  *(v0 + 816) = v57;
  v59 = *(v54 + 8);
  *(v0 + 824) = v59;
  *(v0 + 832) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v59(v52, v53);
  v60 = swift_task_alloc();
  *(v0 + 840) = v60;
  *v60 = v0;
  v60[1] = sub_10031C7D0;
  v61 = *(v0 + 520);
  v62 = *(v0 + 328);

  return sub_10031A318(v61, v56, v58);
}

uint64_t sub_10031C7D0()
{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v4 = *v1;
  *(*v1 + 848) = v0;

  v5 = *(v2 + 816);
  v6 = *(v2 + 328);

  if (v0)
  {
    v7 = sub_100321B2C;
  }

  else
  {
    v7 = sub_10031C918;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10031C918()
{
  v411 = v0;
  v1 = *(v0 + 520);
  if ((*(*(v0 + 536) + 48))(v1, 1, *(v0 + 528)) != 1)
  {
    v9 = *(v0 + 976);
    v10 = *(v0 + 720);
    v12 = *(v0 + 472);
    v11 = *(v0 + 480);
    v13 = *(v0 + 448);
    v14 = *(v0 + 456);
    sub_10033C458(v1, *(v0 + 592), type metadata accessor for FriendRecord);
    Friend.type.getter();
    (*(v14 + 16))(v12, v11, v13);
    v15 = (*(v14 + 88))(v12, v13);
    if (v15 == v9)
    {
      v16 = 2;
    }

    else if (v15 == *(v0 + 980))
    {
      v16 = 4;
    }

    else if (v15 == *(v0 + 984))
    {
      v16 = 8;
    }

    else if (v15 == *(v0 + 988))
    {
      v16 = 16;
    }

    else
    {
      if (v15 != *(v0 + 992))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v16 = 32;
    }

    v116 = *(v0 + 996);
    v117 = *(v0 + 664);
    v118 = *(v0 + 656);
    v119 = *(v0 + 608);
    v120 = *(v0 + 600);
    v121 = *(*(v0 + 456) + 8);
    v121(*(v0 + 480), *(v0 + 448));
    v122 = *(v119 + 104);
    v122(v118, v116, v120);
    sub_10000A49C(&qword_1005AFFE8, &type metadata accessor for FriendshipAction);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 208) == *(v0 + 224) && *(v0 + 216) == *(v0 + 232))
    {
      v123 = 1;
    }

    else
    {
      v124 = *(v0 + 216);
      v125 = *(v0 + 232);
      v123 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v126 = *(v0 + 656);
    v127 = *(v0 + 608);
    v128 = *(v0 + 600);
    v129 = *(v127 + 8);
    *(v0 + 856) = v129;
    *(v0 + 864) = (v127 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v406 = v129;
    v129(v126, v128);

    v401 = v121;
    if (v123)
    {
      v130 = *(v0 + 592);
      v131 = *(v0 + 528);
      swift_beginAccess();
      v132 = *(v131 + 140);
      v133 = *(v130 + v132);
      if ((v133 & v16) != 0)
      {
        v133 &= ~v16;
        *(v130 + v132) = v133;
      }

      v134 = *(v0 + 848);
      v135 = *(v0 + 720);
      v136 = *(v0 + 592);
      v137 = *(*(v0 + 528) + 136);
      v138 = *(v136 + v137);
      v139 = swift_task_alloc();
      *(v139 + 16) = v135;

      v140 = sub_100338788(sub_10033C370, v139, v138);

      *(v136 + v137) = v140;
      swift_endAccess();
      if (v133)
      {
        if (qword_1005A84A0 != -1)
        {
          swift_once();
        }

        v141 = *(v0 + 720);
        v142 = *(v0 + 712);
        v143 = *(v0 + 688);
        v144 = *(v0 + 680);
        v145 = type metadata accessor for Logger();
        sub_10000A6F0(v145, qword_1005E0AC8);
        (*(v143 + 16))(v142, v141, v144);
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.default.getter();
        v148 = os_log_type_enabled(v146, v147);
        v149 = *(v0 + 712);
        v150 = *(v0 + 688);
        v151 = *(v0 + 680);
        if (v148)
        {
          v393 = *(v0 + 680);
          v152 = *(v0 + 592);
          v153 = *(v0 + 584);
          v154 = *(v0 + 528);
          v155 = *(v0 + 464);
          v386 = *(v0 + 448);
          v156 = swift_slowAlloc();
          v410[0] = swift_slowAlloc();
          *v156 = 136315394;
          sub_10033C390(v152, v153, type metadata accessor for FriendRecord);
          v157 = String.init<A>(describing:)();
          v159 = sub_10000D01C(v157, v158, v410);

          *(v156 + 4) = v159;
          *(v156 + 12) = 2080;
          Friend.type.getter();
          sub_10000A49C(&qword_1005A9198, &type metadata accessor for HandleType);
          v160 = dispatch thunk of CustomStringConvertible.description.getter();
          v162 = v161;
          v401(v155, v386);
          v163 = *(v150 + 8);
          v163(v149, v393);
          v164 = sub_10000D01C(v160, v162, v410);

          *(v156 + 14) = v164;
          _os_log_impl(&_mh_execute_header, v146, v147, "LocalStorage update a record: %s by removing type: %s", v156, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v163 = *(v150 + 8);
          v163(v149, v151);
        }

        *(v0 + 872) = v163;
        sub_10033C390(*(v0 + 592), *(v0 + 576), type metadata accessor for FriendRecord);
        v242 = swift_task_alloc();
        *(v0 + 880) = v242;
        *v242 = v0;
        v242[1] = sub_10031ED50;
        v104 = *(v0 + 576);
        v105 = *(v0 + 376);
LABEL_108:
        v315 = *(v0 + 328);

        return sub_100335C5C(v105, v104);
      }

      v405 = v134;
      if (qword_1005A81A8 != -1)
      {
        swift_once();
      }

      v366 = *(v0 + 824);
      v370 = *(v0 + 832);
      v198 = *(v0 + 760);
      v374 = *(v0 + 752);
      v380 = *(v0 + 768);
      v199 = *(v0 + 720);
      v200 = *(v0 + 504);
      v201 = *(v0 + 488);
      v395 = *(v0 + 776);
      v402 = *(v0 + 440);
      v202 = *(v0 + 392);
      v203 = *(v0 + 400);
      v387 = *(v0 + 384);
      v204 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
      sub_10000A6F0(v204, qword_1005E01E0);
      Friend.handle.getter();
      Handle.identifier.getter();
      v366(v200, v201);
      v205 = String.lowercased()();

      *(v0 + 304) = v205;
      == infix<A>(_:_:)();

      QueryType.filter(_:)();
      (*(v202 + 8))(v203, v387);
      QueryType.delete()();
      v396 = *(v198 + 8);
      (v396)(v380, v374);
      if (qword_1005A84A0 != -1)
      {
        swift_once();
      }

      v206 = *(v0 + 432);
      v207 = *(v0 + 440);
      v208 = *(v0 + 408);
      v209 = *(v0 + 416);
      v210 = type metadata accessor for Logger();
      sub_10000A6F0(v210, qword_1005E0AC8);
      v211 = *(v209 + 16);
      v211(v206, v207, v208);
      v212 = Logger.logObject.getter();
      v213 = static os_log_type_t.default.getter();
      v214 = os_log_type_enabled(v212, v213);
      v215 = *(v0 + 432);
      if (v214)
      {
        v388 = v213;
        v216 = *(v0 + 416);
        v217 = *(v0 + 424);
        v218 = *(v0 + 408);
        v219 = swift_slowAlloc();
        v381 = swift_slowAlloc();
        v410[0] = v381;
        *v219 = 136315138;
        v211(v217, v215, v218);
        v220 = String.init<A>(describing:)();
        v222 = v221;
        v223 = v218;
        v224 = *(v216 + 8);
        v224(v215, v223);
        v225 = sub_10000D01C(v220, v222, v410);

        *(v219 + 4) = v225;
        _os_log_impl(&_mh_execute_header, v212, v388, "LocalStorage delete a record: %s", v219, 0xCu);
        sub_100004984(v381);
      }

      else
      {
        v246 = *(v0 + 408);
        v247 = *(v0 + 416);

        v224 = *(v247 + 8);
        v224(v215, v246);
      }

      v248 = *(v0 + 792);
      v249 = *(v0 + 440);
      Connection.run(_:)();
      if (v405)
      {
        v250 = *(v0 + 792);
        v367 = *(v0 + 752);
        v371 = *(v0 + 776);
        v251 = *(v0 + 688);
        v375 = *(v0 + 680);
        v382 = *(v0 + 720);
        v252 = *(v0 + 664);
        v253 = *(v0 + 600);
        v389 = *(v0 + 592);
        v254 = *(v0 + 440);
        v256 = *(v0 + 408);
        v255 = *(v0 + 416);
        v257 = *(v0 + 320);

        v224(v254, v256);
        v406(v252, v253);
        (v396)(v371, v367);
        (*(v251 + 8))(v382, v375);
        sub_10033C3F8(v389, type metadata accessor for FriendRecord);
        v258 = *(v0 + 776);
        v259 = *(v0 + 768);
        v260 = *(v0 + 744);
        v261 = *(v0 + 736);
        v262 = *(v0 + 728);
        v263 = *(v0 + 720);
        v264 = *(v0 + 712);
        v265 = *(v0 + 704);
        v266 = *(v0 + 696);
        v267 = *(v0 + 672);
        v326 = *(v0 + 664);
        v328 = *(v0 + 656);
        v330 = *(v0 + 648);
        v332 = *(v0 + 640);
        v334 = *(v0 + 632);
        v336 = *(v0 + 624);
        v338 = *(v0 + 616);
        v340 = *(v0 + 592);
        v342 = *(v0 + 584);
        v344 = *(v0 + 576);
        v346 = *(v0 + 568);
        v348 = *(v0 + 560);
        v350 = *(v0 + 552);
        v352 = *(v0 + 544);
        v354 = *(v0 + 520);
        v356 = *(v0 + 512);
        v358 = *(v0 + 504);
        v360 = *(v0 + 480);
        v362 = *(v0 + 472);
        v364 = *(v0 + 464);
        v368 = *(v0 + 440);
        v372 = *(v0 + 432);
        v376 = *(v0 + 424);
        v383 = *(v0 + 400);
        v390 = *(v0 + 376);
        v397 = *(v0 + 368);
        v403 = *(v0 + 360);
        v409 = *(v0 + 352);

        v64 = *(v0 + 8);
        goto LABEL_95;
      }

      v268 = *(v0 + 720);
      v269 = *(v0 + 688);
      v270 = *(v0 + 680);
      v271 = *(v0 + 664);
      v272 = *(v0 + 600);
      v273 = *(v0 + 592);
      v274 = *(v0 + 416) + 8;
      v224(*(v0 + 440), *(v0 + 408));
      v406(v271, v272);
      (*(v269 + 8))(v268, v270);
      v275 = v273;
LABEL_114:
      sub_10033C3F8(v275, type metadata accessor for FriendRecord);
      goto LABEL_14;
    }

    v165 = *(v0 + 664);
    v122(*(v0 + 648), *(v0 + 1000), *(v0 + 600));
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v166 = *(v0 + 648);
    v167 = *(v0 + 600);
    if (*(v0 + 240) == *(v0 + 256) && *(v0 + 248) == *(v0 + 264))
    {
      v406(*(v0 + 648), *(v0 + 600));
    }

    else
    {
      v168 = *(v0 + 248);
      v169 = *(v0 + 264);
      v170 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v406(v166, v167);

      if ((v170 & 1) == 0)
      {
        v243 = *(v0 + 664);
        v122(*(v0 + 640), *(v0 + 1004), *(v0 + 600));
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v244 = *(v0 + 640);
        v245 = *(v0 + 600);
        if (*(v0 + 272) == *(v0 + 288) && *(v0 + 280) == *(v0 + 296))
        {
          v406(*(v0 + 640), *(v0 + 600));
        }

        else
        {
          v276 = *(v0 + 280);
          v277 = *(v0 + 296);
          v278 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v406(v244, v245);

          if ((v278 & 1) == 0)
          {
            v319 = *(v0 + 720);
            v320 = *(v0 + 688);
            v321 = *(v0 + 680);
            v322 = *(v0 + 592);
            v406(*(v0 + 664), *(v0 + 600));
            (*(v320 + 8))(v319, v321);
            v275 = v322;
            goto LABEL_114;
          }
        }

        if (qword_1005A84A0 != -1)
        {
          swift_once();
        }

        v279 = *(v0 + 720);
        v280 = *(v0 + 696);
        v281 = *(v0 + 688);
        v282 = *(v0 + 680);
        v283 = type metadata accessor for Logger();
        sub_10000A6F0(v283, qword_1005E0AC8);
        (*(v281 + 16))(v280, v279, v282);
        v284 = Logger.logObject.getter();
        v285 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v284, v285))
        {
          v377 = *(v0 + 824);
          v384 = *(v0 + 832);
          v286 = *(v0 + 696);
          v287 = *(v0 + 688);
          v391 = *(v0 + 680);
          v288 = *(v0 + 504);
          v289 = *(v0 + 488);
          v290 = swift_slowAlloc();
          v398 = swift_slowAlloc();
          v410[0] = v398;
          *v290 = 141558275;
          *(v290 + 4) = 1752392040;
          *(v290 + 12) = 2081;
          Friend.handle.getter();
          v291 = Handle.identifier.getter();
          v293 = v292;
          v377(v288, v289);
          v294 = *(v287 + 8);
          v294(v286, v391);
          v295 = sub_10000D01C(v291, v293, v410);

          *(v290 + 14) = v295;
          _os_log_impl(&_mh_execute_header, v284, v285, "Local storage modify friend %{private,mask.hash}s", v290, 0x16u);
          sub_100004984(v398);
        }

        else
        {
          v296 = *(v0 + 696);
          v297 = *(v0 + 688);
          v298 = *(v0 + 680);

          v294 = *(v297 + 8);
          v294(v296, v298);
        }

        *(v0 + 920) = v294;
        v299 = *(v0 + 720);
        v300 = *(v0 + 592);
        v301 = *(v0 + 464);
        v302 = *(v0 + 448);
        Friend.type.getter();
        swift_beginAccess();
        sub_1001A952C(v299, v301);
        swift_endAccess();
        v401(v301, v302);
        v303 = Logger.logObject.getter();
        v304 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v303, v304))
        {
          v305 = *(v0 + 592);
          v306 = *(v0 + 528);
          v307 = swift_slowAlloc();
          v308 = swift_slowAlloc();
          v410[0] = v308;
          *v307 = 136315138;
          v309 = *(v305 + *(v306 + 136));
          type metadata accessor for FriendInfoOption(0);
          sub_10000A49C(&unk_1005AEA60, type metadata accessor for FriendInfoOption);

          v310 = Set.description.getter();
          v312 = v311;

          v313 = sub_10000D01C(v310, v312, v410);

          *(v307 + 4) = v313;
          _os_log_impl(&_mh_execute_header, v303, v304, "LocalStorage record info : %s", v307, 0xCu);
          sub_100004984(v308);
        }

        sub_10033C390(*(v0 + 592), *(v0 + 560), type metadata accessor for FriendRecord);
        v314 = swift_task_alloc();
        *(v0 + 928) = v314;
        *v314 = v0;
        v314[1] = sub_1003202D8;
        v104 = *(v0 + 560);
        v105 = *(v0 + 360);
        goto LABEL_108;
      }
    }

    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v171 = *(v0 + 720);
    v172 = *(v0 + 704);
    v173 = *(v0 + 688);
    v174 = *(v0 + 680);
    v175 = type metadata accessor for Logger();
    sub_10000A6F0(v175, qword_1005E0AC8);
    (*(v173 + 16))(v172, v171, v174);
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.default.getter();
    v178 = os_log_type_enabled(v176, v177);
    v179 = *(v0 + 704);
    v180 = *(v0 + 688);
    v181 = *(v0 + 680);
    if (v178)
    {
      v394 = v177;
      v182 = *(v0 + 592);
      v379 = *(v0 + 680);
      v183 = *(v0 + 584);
      v184 = *(v0 + 528);
      v185 = *(v0 + 464);
      v186 = *(v0 + 448);
      v187 = swift_slowAlloc();
      v410[0] = swift_slowAlloc();
      *v187 = 136315394;
      swift_beginAccess();
      sub_10033C390(v182, v183, type metadata accessor for FriendRecord);
      v188 = String.init<A>(describing:)();
      v190 = sub_10000D01C(v188, v189, v410);

      *(v187 + 4) = v190;
      *(v187 + 12) = 2080;
      Friend.type.getter();
      sub_10000A49C(&qword_1005A9198, &type metadata accessor for HandleType);
      v191 = dispatch thunk of CustomStringConvertible.description.getter();
      v193 = v192;
      v194 = v186;
      v195 = v401;
      v401(v185, v194);
      v196 = *(v180 + 8);
      v196(v179, v379);
      v197 = sub_10000D01C(v191, v193, v410);

      *(v187 + 14) = v197;
      _os_log_impl(&_mh_execute_header, v176, v394, "LocalStorage update a record: %s by adding type: %s", v187, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v196 = *(v180 + 8);
      v196(v179, v181);
      v195 = v401;
    }

    *(v0 + 896) = v196;
    v226 = *(v0 + 720);
    v227 = *(v0 + 592);
    v228 = *(v0 + 464);
    v229 = *(v0 + 448);
    Friend.type.getter();
    swift_beginAccess();
    sub_1001A952C(v226, v228);
    swift_endAccess();
    v195(v228, v229);
    v230 = Logger.logObject.getter();
    v231 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v230, v231))
    {
      v232 = *(v0 + 592);
      v233 = *(v0 + 528);
      v234 = swift_slowAlloc();
      v235 = swift_slowAlloc();
      v410[0] = v235;
      *v234 = 136315138;
      v236 = *(v232 + *(v233 + 136));
      type metadata accessor for FriendInfoOption(0);
      sub_10000A49C(&unk_1005AEA60, type metadata accessor for FriendInfoOption);

      v237 = Set.description.getter();
      v239 = v238;

      v240 = sub_10000D01C(v237, v239, v410);

      *(v234 + 4) = v240;
      _os_log_impl(&_mh_execute_header, v230, v231, "LocalStorage record info : %s", v234, 0xCu);
      sub_100004984(v235);
    }

    sub_10033C390(*(v0 + 592), *(v0 + 568), type metadata accessor for FriendRecord);
    v241 = swift_task_alloc();
    *(v0 + 904) = v241;
    *v241 = v0;
    v241[1] = sub_10031F814;
    v104 = *(v0 + 568);
    v105 = *(v0 + 368);
    goto LABEL_108;
  }

  v2 = *(v0 + 996);
  v3 = *(v0 + 664);
  v4 = *(v0 + 632);
  v5 = *(v0 + 608);
  v6 = *(v0 + 600);
  sub_100002CE0(v1, &qword_1005B0B88, &qword_1004D5CC0);
  v7 = *(v5 + 104);
  v7(v4, v2, v6);
  sub_10000A49C(&qword_1005AFFE8, &type metadata accessor for FriendshipAction);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 112) == *(v0 + 128) && *(v0 + 120) == *(v0 + 136))
  {
    v8 = 1;
  }

  else
  {
    v17 = *(v0 + 120);
    v18 = *(v0 + 136);
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v19 = *(v0 + 632);
  v20 = *(v0 + 608);
  v21 = *(v0 + 600);
  v22 = *(v20 + 8);
  *(v0 + 944) = v22;
  *(v0 + 952) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v19, v21);

  if ((v8 & 1) == 0)
  {
    v37 = *(v0 + 664);
    v7(*(v0 + 624), *(v0 + 1000), *(v0 + 600));
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v38 = *(v0 + 624);
    v39 = *(v0 + 600);
    if (*(v0 + 144) == *(v0 + 160) && *(v0 + 152) == *(v0 + 168))
    {
      v22(*(v0 + 624), *(v0 + 600));
    }

    else
    {
      v81 = *(v0 + 152);
      v82 = *(v0 + 168);
      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v84 = v22;
      v85 = v83;
      v406 = v84;
      v84(v38, v39);

      if ((v85 & 1) == 0)
      {
        v108 = *(v0 + 664);
        v7(*(v0 + 616), *(v0 + 1004), *(v0 + 600));
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v109 = *(v0 + 616);
        v110 = *(v0 + 600);
        if (*(v0 + 176) == *(v0 + 192) && *(v0 + 184) == *(v0 + 200))
        {
          v406(*(v0 + 616), *(v0 + 600));
        }

        else
        {
          v111 = *(v0 + 184);
          v112 = *(v0 + 200);
          v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v406(v109, v110);

          if ((v113 & 1) == 0)
          {
            v316 = *(v0 + 720);
            v317 = *(v0 + 688);
            v318 = *(v0 + 680);
            v406(*(v0 + 664), *(v0 + 600));
            (*(v317 + 8))(v316, v318);
            goto LABEL_14;
          }
        }

        if (qword_1005A84A0 != -1)
        {
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        sub_10000A6F0(v114, qword_1005E0AC8);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();
        v115 = os_log_type_enabled(v24, v25);
        v27 = *(v0 + 720);
        v28 = *(v0 + 688);
        v29 = *(v0 + 680);
        v30 = *(v0 + 664);
        v31 = *(v0 + 600);
        if (!v115)
        {
          goto LABEL_13;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "Local storage try to modified friend record that not exist";
        goto LABEL_12;
      }
    }

    v86 = *(v0 + 728);
    v87 = *(v0 + 552);
    (*(*(v0 + 688) + 16))(v86, *(v0 + 720), *(v0 + 680));
    sub_1001A80DC(v86, v87);
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v88 = *(v0 + 552);
    v89 = *(v0 + 544);
    v90 = type metadata accessor for Logger();
    sub_10000A6F0(v90, qword_1005E0AC8);
    sub_10033C390(v88, v89, type metadata accessor for FriendRecord);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = *(v0 + 584);
      v94 = *(v0 + 544);
      v95 = *(v0 + 528);
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v410[0] = v97;
      *v96 = 136315138;
      sub_10033C390(v94, v93, type metadata accessor for FriendRecord);
      v98 = String.init<A>(describing:)();
      v100 = v99;
      sub_10033C3F8(v94, type metadata accessor for FriendRecord);
      v101 = sub_10000D01C(v98, v100, v410);

      *(v96 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v91, v92, "LocalStorage add a new record: %s", v96, 0xCu);
      sub_100004984(v97);
    }

    else
    {
      v102 = *(v0 + 544);

      sub_10033C3F8(v102, type metadata accessor for FriendRecord);
    }

    v103 = swift_task_alloc();
    *(v0 + 960) = v103;
    *v103 = v0;
    v103[1] = sub_100320D9C;
    v104 = *(v0 + 552);
    v105 = *(v0 + 352);
    goto LABEL_108;
  }

  v406 = v22;
  if (qword_1005A84A0 != -1)
  {
    goto LABEL_116;
  }

  while (1)
  {
    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005E0AC8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 720);
    v28 = *(v0 + 688);
    v29 = *(v0 + 680);
    v30 = *(v0 + 664);
    v31 = *(v0 + 600);
    if (v26)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Local storage try to remove friend record that not exist";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v24, v25, v33, v32, 2u);
    }

LABEL_13:

    v406(v30, v31);
    (*(v28 + 8))(v27, v29);
LABEL_14:
    v34 = *(v0 + 808);
    v35 = *(v0 + 800);
    if (v35)
    {
      break;
    }

    v40 = ((1 << *(v0 + 1008)) + 63) >> 6;
    if (v40 <= (v34 + 1))
    {
      v41 = v34 + 1;
    }

    else
    {
      v41 = ((1 << *(v0 + 1008)) + 63) >> 6;
    }

    v42 = v41 - 1;
    while (1)
    {
      v43 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        v106 = *(v0 + 736);
        v107 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v107 - 8) + 56))(v106, 1, 1, v107);
        v53 = 0;
        goto LABEL_30;
      }

      v36 = *(v0 + 320);
      v35 = *(v36 + 8 * v43 + 64);
      ++v34;
      if (v35)
      {
        v34 = v43;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_116:
    swift_once();
  }

  v36 = *(v0 + 320);
LABEL_29:
  v44 = *(v0 + 736);
  v45 = *(v0 + 728);
  v46 = *(v0 + 688);
  v47 = *(v0 + 680);
  v48 = *(v0 + 672);
  v49 = *(v0 + 608);
  v399 = *(v0 + 600);
  v407 = (v35 - 1) & v35;
  v50 = __clz(__rbit64(v35)) | (v34 << 6);
  (*(v46 + 16))(v45, *(v36 + 48) + *(v46 + 72) * v50, v47);
  (*(v49 + 16))(v48, *(v36 + 56) + *(v49 + 72) * v50, v399);
  v51 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v52 = *(v51 + 48);
  (*(v46 + 32))(v44, v45, v47);
  (*(v49 + 32))(v44 + v52, v48, v399);
  (*(*(v51 - 8) + 56))(v44, 0, 1, v51);
  v53 = v407;
  v42 = v34;
LABEL_30:
  *(v0 + 808) = v42;
  *(v0 + 800) = v53;
  v54 = *(v0 + 744);
  sub_10033C300(*(v0 + 736), v54);
  v55 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
  {
    v56 = *(v0 + 792);
    v57 = *(v0 + 768);
    v58 = *(v0 + 744);
    v59 = *(v0 + 736);
    v60 = *(v0 + 728);
    v61 = *(v0 + 720);
    v62 = *(v0 + 712);
    v323 = *(v0 + 704);
    v324 = *(v0 + 696);
    v325 = *(v0 + 672);
    v327 = *(v0 + 664);
    v329 = *(v0 + 656);
    v331 = *(v0 + 648);
    v333 = *(v0 + 640);
    v335 = *(v0 + 632);
    v337 = *(v0 + 624);
    v339 = *(v0 + 616);
    v341 = *(v0 + 592);
    v343 = *(v0 + 584);
    v345 = *(v0 + 576);
    v347 = *(v0 + 568);
    v349 = *(v0 + 560);
    v351 = *(v0 + 552);
    v353 = *(v0 + 544);
    v355 = *(v0 + 520);
    v357 = *(v0 + 512);
    v359 = *(v0 + 504);
    v361 = *(v0 + 480);
    v363 = *(v0 + 472);
    v365 = *(v0 + 464);
    v369 = *(v0 + 440);
    v373 = *(v0 + 432);
    v378 = *(v0 + 424);
    v385 = *(v0 + 400);
    v392 = *(v0 + 376);
    v400 = *(v0 + 368);
    v404 = *(v0 + 360);
    v408 = *(v0 + 352);
    v63 = *(v0 + 320);
    (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

    v64 = *(v0 + 8);
LABEL_95:

    return v64();
  }

  v65 = *(v0 + 744);
  v66 = *(v0 + 664);
  v67 = *(v0 + 608);
  v68 = *(v0 + 600);
  v69 = *(v0 + 512);
  v70 = *(v0 + 488);
  v71 = *(v0 + 496);
  v72 = *(v55 + 48);
  (*(*(v0 + 688) + 32))(*(v0 + 720), v65, *(v0 + 680));
  (*(v67 + 32))(v66, v65 + v72, v68);
  Friend.handle.getter();
  v73 = Handle.identifier.getter();
  v75 = v74;
  *(v0 + 816) = v74;
  v76 = *(v71 + 8);
  *(v0 + 824) = v76;
  *(v0 + 832) = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v76(v69, v70);
  v77 = swift_task_alloc();
  *(v0 + 840) = v77;
  *v77 = v0;
  v77[1] = sub_10031C7D0;
  v78 = *(v0 + 520);
  v79 = *(v0 + 328);

  return sub_10031A318(v78, v73, v75);
}

uint64_t sub_10031ED50()
{
  v2 = *v1;
  v3 = *(*v1 + 880);
  v4 = *v1;
  *(*v1 + 888) = v0;

  v5 = *(v2 + 576);
  v6 = *(v2 + 328);
  sub_10033C3F8(v5, type metadata accessor for FriendRecord);
  if (v0)
  {
    v7 = sub_100321E1C;
  }

  else
  {
    v7 = sub_10031EEAC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10031EEAC()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 792);
  v3 = *(v0 + 376);
  Connection.run(_:)();
  v4 = *(v0 + 872);
  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  if (v1)
  {
    v7 = *(v0 + 792);
    v8 = *(v0 + 760);
    v127 = *(v0 + 752);
    v130 = *(v0 + 776);
    v9 = *(v0 + 688);
    v133 = *(v0 + 680);
    v136 = *(v0 + 720);
    v121 = *(v0 + 664);
    v124 = *(v0 + 872);
    v10 = *(v0 + 600);
    v140 = *(v0 + 592);
    v11 = *(v0 + 376);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 320);

    (*(v12 + 8))(v11, v13);
    v6(v121, v10);
    (*(v8 + 8))(v130, v127);
    v124(v136, v133);
    sub_10033C3F8(v140, type metadata accessor for FriendRecord);
    v15 = *(v0 + 776);
    v16 = *(v0 + 768);
    v17 = *(v0 + 744);
    v18 = *(v0 + 736);
    v19 = *(v0 + 728);
    v20 = *(v0 + 720);
    v21 = *(v0 + 712);
    v22 = *(v0 + 704);
    v23 = *(v0 + 696);
    v24 = *(v0 + 672);
    v79 = *(v0 + 664);
    v81 = *(v0 + 656);
    v83 = *(v0 + 648);
    v85 = *(v0 + 640);
    v87 = *(v0 + 632);
    v89 = *(v0 + 624);
    v91 = *(v0 + 616);
    v93 = *(v0 + 592);
    v95 = *(v0 + 584);
    v97 = *(v0 + 576);
    v99 = *(v0 + 568);
    v101 = *(v0 + 560);
    v103 = *(v0 + 552);
    v105 = *(v0 + 544);
    v107 = *(v0 + 520);
    v109 = *(v0 + 512);
    v111 = *(v0 + 504);
    v113 = *(v0 + 480);
    v115 = *(v0 + 472);
    v117 = *(v0 + 464);
    v119 = *(v0 + 440);
    v122 = *(v0 + 432);
    v125 = *(v0 + 424);
    v128 = *(v0 + 400);
    v131 = *(v0 + 376);
    v134 = *(v0 + 368);
    v137 = *(v0 + 360);
    v141 = *(v0 + 352);

    v25 = *(v0 + 8);
LABEL_16:

    return v25();
  }

  v26 = *(v0 + 720);
  v27 = *(v0 + 680);
  v28 = *(v0 + 664);
  v29 = *(v0 + 600);
  v30 = *(v0 + 592);
  v31 = *(v0 + 688) + 8;
  (*(*(v0 + 344) + 8))(*(v0 + 376), *(v0 + 336));
  v6(v28, v29);
  v4(v26, v27);
  result = sub_10033C3F8(v30, type metadata accessor for FriendRecord);
  v33 = *(v0 + 808);
  v34 = *(v0 + 800);
  if (v34)
  {
    v35 = *(v0 + 320);
LABEL_13:
    v40 = *(v0 + 736);
    v41 = *(v0 + 728);
    v42 = *(v0 + 688);
    v43 = *(v0 + 680);
    v44 = *(v0 + 672);
    v45 = *(v0 + 608);
    v138 = *(v0 + 600);
    v143 = (v34 - 1) & v34;
    v46 = __clz(__rbit64(v34)) | (v33 << 6);
    (*(v42 + 16))(v41, *(v35 + 48) + *(v42 + 72) * v46, v43);
    (*(v45 + 16))(v44, *(v35 + 56) + *(v45 + 72) * v46, v138);
    v47 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v48 = *(v47 + 48);
    (*(v42 + 32))(v40, v41, v43);
    (*(v45 + 32))(v40 + v48, v44, v138);
    (*(*(v47 - 8) + 56))(v40, 0, 1, v47);
    v49 = v143;
    v38 = v33;
LABEL_14:
    *(v0 + 808) = v38;
    *(v0 + 800) = v49;
    v50 = *(v0 + 744);
    sub_10033C300(*(v0 + 736), v50);
    v51 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      v52 = *(v0 + 792);
      v53 = *(v0 + 768);
      v54 = *(v0 + 744);
      v55 = *(v0 + 736);
      v56 = *(v0 + 728);
      v57 = *(v0 + 720);
      v58 = *(v0 + 712);
      v77 = *(v0 + 704);
      v78 = *(v0 + 696);
      v80 = *(v0 + 672);
      v82 = *(v0 + 664);
      v84 = *(v0 + 656);
      v86 = *(v0 + 648);
      v88 = *(v0 + 640);
      v90 = *(v0 + 632);
      v92 = *(v0 + 624);
      v94 = *(v0 + 616);
      v96 = *(v0 + 592);
      v98 = *(v0 + 584);
      v100 = *(v0 + 576);
      v102 = *(v0 + 568);
      v104 = *(v0 + 560);
      v106 = *(v0 + 552);
      v108 = *(v0 + 544);
      v110 = *(v0 + 520);
      v112 = *(v0 + 512);
      v114 = *(v0 + 504);
      v116 = *(v0 + 480);
      v118 = *(v0 + 472);
      v120 = *(v0 + 464);
      v123 = *(v0 + 440);
      v126 = *(v0 + 432);
      v129 = *(v0 + 424);
      v132 = *(v0 + 400);
      v135 = *(v0 + 376);
      v139 = *(v0 + 368);
      v142 = *(v0 + 360);
      v144 = *(v0 + 352);
      v59 = *(v0 + 320);
      (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

      v25 = *(v0 + 8);
      goto LABEL_16;
    }

    v60 = *(v0 + 744);
    v61 = *(v0 + 664);
    v62 = *(v0 + 608);
    v63 = *(v0 + 600);
    v64 = *(v0 + 512);
    v65 = *(v0 + 488);
    v66 = *(v0 + 496);
    v67 = *(v51 + 48);
    (*(*(v0 + 688) + 32))(*(v0 + 720), v60, *(v0 + 680));
    (*(v62 + 32))(v61, v60 + v67, v63);
    Friend.handle.getter();
    v68 = Handle.identifier.getter();
    v70 = v69;
    *(v0 + 816) = v69;
    v71 = *(v66 + 8);
    *(v0 + 824) = v71;
    *(v0 + 832) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71(v64, v65);
    v72 = swift_task_alloc();
    *(v0 + 840) = v72;
    *v72 = v0;
    v72[1] = sub_10031C7D0;
    v73 = *(v0 + 520);
    v74 = *(v0 + 328);

    return sub_10031A318(v73, v68, v70);
  }

  else
  {
    v36 = ((1 << *(v0 + 1008)) + 63) >> 6;
    if (v36 <= (v33 + 1))
    {
      v37 = v33 + 1;
    }

    else
    {
      v37 = ((1 << *(v0 + 1008)) + 63) >> 6;
    }

    v38 = v37 - 1;
    while (1)
    {
      v39 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v39 >= v36)
      {
        v75 = *(v0 + 736);
        v76 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
        v49 = 0;
        goto LABEL_14;
      }

      v35 = *(v0 + 320);
      v34 = *(v35 + 8 * v39 + 64);
      ++v33;
      if (v34)
      {
        v33 = v39;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10031F814()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v4 = *v1;
  *(*v1 + 912) = v0;

  v5 = *(v2 + 568);
  v6 = *(v2 + 328);
  sub_10033C3F8(v5, type metadata accessor for FriendRecord);
  if (v0)
  {
    v7 = sub_10032212C;
  }

  else
  {
    v7 = sub_10031F970;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10031F970()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 792);
  v3 = *(v0 + 368);
  Connection.run(_:)();
  v4 = *(v0 + 896);
  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  if (v1)
  {
    v7 = *(v0 + 792);
    v8 = *(v0 + 760);
    v127 = *(v0 + 752);
    v130 = *(v0 + 776);
    v9 = *(v0 + 688);
    v133 = *(v0 + 680);
    v136 = *(v0 + 720);
    v121 = *(v0 + 664);
    v124 = *(v0 + 896);
    v10 = *(v0 + 600);
    v140 = *(v0 + 592);
    v11 = *(v0 + 368);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 320);

    (*(v12 + 8))(v11, v13);
    v6(v121, v10);
    (*(v8 + 8))(v130, v127);
    v124(v136, v133);
    sub_10033C3F8(v140, type metadata accessor for FriendRecord);
    v15 = *(v0 + 776);
    v16 = *(v0 + 768);
    v17 = *(v0 + 744);
    v18 = *(v0 + 736);
    v19 = *(v0 + 728);
    v20 = *(v0 + 720);
    v21 = *(v0 + 712);
    v22 = *(v0 + 704);
    v23 = *(v0 + 696);
    v24 = *(v0 + 672);
    v79 = *(v0 + 664);
    v81 = *(v0 + 656);
    v83 = *(v0 + 648);
    v85 = *(v0 + 640);
    v87 = *(v0 + 632);
    v89 = *(v0 + 624);
    v91 = *(v0 + 616);
    v93 = *(v0 + 592);
    v95 = *(v0 + 584);
    v97 = *(v0 + 576);
    v99 = *(v0 + 568);
    v101 = *(v0 + 560);
    v103 = *(v0 + 552);
    v105 = *(v0 + 544);
    v107 = *(v0 + 520);
    v109 = *(v0 + 512);
    v111 = *(v0 + 504);
    v113 = *(v0 + 480);
    v115 = *(v0 + 472);
    v117 = *(v0 + 464);
    v119 = *(v0 + 440);
    v122 = *(v0 + 432);
    v125 = *(v0 + 424);
    v128 = *(v0 + 400);
    v131 = *(v0 + 376);
    v134 = *(v0 + 368);
    v137 = *(v0 + 360);
    v141 = *(v0 + 352);

    v25 = *(v0 + 8);
LABEL_16:

    return v25();
  }

  v26 = *(v0 + 720);
  v27 = *(v0 + 680);
  v28 = *(v0 + 664);
  v29 = *(v0 + 600);
  v30 = *(v0 + 592);
  v31 = *(v0 + 688) + 8;
  (*(*(v0 + 344) + 8))(*(v0 + 368), *(v0 + 336));
  v6(v28, v29);
  v4(v26, v27);
  result = sub_10033C3F8(v30, type metadata accessor for FriendRecord);
  v33 = *(v0 + 808);
  v34 = *(v0 + 800);
  if (v34)
  {
    v35 = *(v0 + 320);
LABEL_13:
    v40 = *(v0 + 736);
    v41 = *(v0 + 728);
    v42 = *(v0 + 688);
    v43 = *(v0 + 680);
    v44 = *(v0 + 672);
    v45 = *(v0 + 608);
    v138 = *(v0 + 600);
    v143 = (v34 - 1) & v34;
    v46 = __clz(__rbit64(v34)) | (v33 << 6);
    (*(v42 + 16))(v41, *(v35 + 48) + *(v42 + 72) * v46, v43);
    (*(v45 + 16))(v44, *(v35 + 56) + *(v45 + 72) * v46, v138);
    v47 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v48 = *(v47 + 48);
    (*(v42 + 32))(v40, v41, v43);
    (*(v45 + 32))(v40 + v48, v44, v138);
    (*(*(v47 - 8) + 56))(v40, 0, 1, v47);
    v49 = v143;
    v38 = v33;
LABEL_14:
    *(v0 + 808) = v38;
    *(v0 + 800) = v49;
    v50 = *(v0 + 744);
    sub_10033C300(*(v0 + 736), v50);
    v51 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      v52 = *(v0 + 792);
      v53 = *(v0 + 768);
      v54 = *(v0 + 744);
      v55 = *(v0 + 736);
      v56 = *(v0 + 728);
      v57 = *(v0 + 720);
      v58 = *(v0 + 712);
      v77 = *(v0 + 704);
      v78 = *(v0 + 696);
      v80 = *(v0 + 672);
      v82 = *(v0 + 664);
      v84 = *(v0 + 656);
      v86 = *(v0 + 648);
      v88 = *(v0 + 640);
      v90 = *(v0 + 632);
      v92 = *(v0 + 624);
      v94 = *(v0 + 616);
      v96 = *(v0 + 592);
      v98 = *(v0 + 584);
      v100 = *(v0 + 576);
      v102 = *(v0 + 568);
      v104 = *(v0 + 560);
      v106 = *(v0 + 552);
      v108 = *(v0 + 544);
      v110 = *(v0 + 520);
      v112 = *(v0 + 512);
      v114 = *(v0 + 504);
      v116 = *(v0 + 480);
      v118 = *(v0 + 472);
      v120 = *(v0 + 464);
      v123 = *(v0 + 440);
      v126 = *(v0 + 432);
      v129 = *(v0 + 424);
      v132 = *(v0 + 400);
      v135 = *(v0 + 376);
      v139 = *(v0 + 368);
      v142 = *(v0 + 360);
      v144 = *(v0 + 352);
      v59 = *(v0 + 320);
      (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

      v25 = *(v0 + 8);
      goto LABEL_16;
    }

    v60 = *(v0 + 744);
    v61 = *(v0 + 664);
    v62 = *(v0 + 608);
    v63 = *(v0 + 600);
    v64 = *(v0 + 512);
    v65 = *(v0 + 488);
    v66 = *(v0 + 496);
    v67 = *(v51 + 48);
    (*(*(v0 + 688) + 32))(*(v0 + 720), v60, *(v0 + 680));
    (*(v62 + 32))(v61, v60 + v67, v63);
    Friend.handle.getter();
    v68 = Handle.identifier.getter();
    v70 = v69;
    *(v0 + 816) = v69;
    v71 = *(v66 + 8);
    *(v0 + 824) = v71;
    *(v0 + 832) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71(v64, v65);
    v72 = swift_task_alloc();
    *(v0 + 840) = v72;
    *v72 = v0;
    v72[1] = sub_10031C7D0;
    v73 = *(v0 + 520);
    v74 = *(v0 + 328);

    return sub_10031A318(v73, v68, v70);
  }

  else
  {
    v36 = ((1 << *(v0 + 1008)) + 63) >> 6;
    if (v36 <= (v33 + 1))
    {
      v37 = v33 + 1;
    }

    else
    {
      v37 = ((1 << *(v0 + 1008)) + 63) >> 6;
    }

    v38 = v37 - 1;
    while (1)
    {
      v39 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v39 >= v36)
      {
        v75 = *(v0 + 736);
        v76 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
        v49 = 0;
        goto LABEL_14;
      }

      v35 = *(v0 + 320);
      v34 = *(v35 + 8 * v39 + 64);
      ++v33;
      if (v34)
      {
        v33 = v39;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003202D8()
{
  v2 = *v1;
  v3 = *(*v1 + 928);
  v4 = *v1;
  *(*v1 + 936) = v0;

  v5 = *(v2 + 560);
  v6 = *(v2 + 328);
  sub_10033C3F8(v5, type metadata accessor for FriendRecord);
  if (v0)
  {
    v7 = sub_10032243C;
  }

  else
  {
    v7 = sub_100320434;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100320434()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 792);
  v3 = *(v0 + 360);
  Connection.run(_:)();
  v4 = *(v0 + 920);
  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  if (v1)
  {
    v7 = *(v0 + 792);
    v8 = *(v0 + 760);
    v127 = *(v0 + 752);
    v130 = *(v0 + 776);
    v9 = *(v0 + 688);
    v133 = *(v0 + 680);
    v136 = *(v0 + 720);
    v121 = *(v0 + 664);
    v124 = *(v0 + 920);
    v10 = *(v0 + 600);
    v140 = *(v0 + 592);
    v11 = *(v0 + 360);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 320);

    (*(v12 + 8))(v11, v13);
    v6(v121, v10);
    (*(v8 + 8))(v130, v127);
    v124(v136, v133);
    sub_10033C3F8(v140, type metadata accessor for FriendRecord);
    v15 = *(v0 + 776);
    v16 = *(v0 + 768);
    v17 = *(v0 + 744);
    v18 = *(v0 + 736);
    v19 = *(v0 + 728);
    v20 = *(v0 + 720);
    v21 = *(v0 + 712);
    v22 = *(v0 + 704);
    v23 = *(v0 + 696);
    v24 = *(v0 + 672);
    v79 = *(v0 + 664);
    v81 = *(v0 + 656);
    v83 = *(v0 + 648);
    v85 = *(v0 + 640);
    v87 = *(v0 + 632);
    v89 = *(v0 + 624);
    v91 = *(v0 + 616);
    v93 = *(v0 + 592);
    v95 = *(v0 + 584);
    v97 = *(v0 + 576);
    v99 = *(v0 + 568);
    v101 = *(v0 + 560);
    v103 = *(v0 + 552);
    v105 = *(v0 + 544);
    v107 = *(v0 + 520);
    v109 = *(v0 + 512);
    v111 = *(v0 + 504);
    v113 = *(v0 + 480);
    v115 = *(v0 + 472);
    v117 = *(v0 + 464);
    v119 = *(v0 + 440);
    v122 = *(v0 + 432);
    v125 = *(v0 + 424);
    v128 = *(v0 + 400);
    v131 = *(v0 + 376);
    v134 = *(v0 + 368);
    v137 = *(v0 + 360);
    v141 = *(v0 + 352);

    v25 = *(v0 + 8);
LABEL_16:

    return v25();
  }

  v26 = *(v0 + 720);
  v27 = *(v0 + 680);
  v28 = *(v0 + 664);
  v29 = *(v0 + 600);
  v30 = *(v0 + 592);
  v31 = *(v0 + 688) + 8;
  (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));
  v6(v28, v29);
  v4(v26, v27);
  result = sub_10033C3F8(v30, type metadata accessor for FriendRecord);
  v33 = *(v0 + 808);
  v34 = *(v0 + 800);
  if (v34)
  {
    v35 = *(v0 + 320);
LABEL_13:
    v40 = *(v0 + 736);
    v41 = *(v0 + 728);
    v42 = *(v0 + 688);
    v43 = *(v0 + 680);
    v44 = *(v0 + 672);
    v45 = *(v0 + 608);
    v138 = *(v0 + 600);
    v143 = (v34 - 1) & v34;
    v46 = __clz(__rbit64(v34)) | (v33 << 6);
    (*(v42 + 16))(v41, *(v35 + 48) + *(v42 + 72) * v46, v43);
    (*(v45 + 16))(v44, *(v35 + 56) + *(v45 + 72) * v46, v138);
    v47 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v48 = *(v47 + 48);
    (*(v42 + 32))(v40, v41, v43);
    (*(v45 + 32))(v40 + v48, v44, v138);
    (*(*(v47 - 8) + 56))(v40, 0, 1, v47);
    v49 = v143;
    v38 = v33;
LABEL_14:
    *(v0 + 808) = v38;
    *(v0 + 800) = v49;
    v50 = *(v0 + 744);
    sub_10033C300(*(v0 + 736), v50);
    v51 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      v52 = *(v0 + 792);
      v53 = *(v0 + 768);
      v54 = *(v0 + 744);
      v55 = *(v0 + 736);
      v56 = *(v0 + 728);
      v57 = *(v0 + 720);
      v58 = *(v0 + 712);
      v77 = *(v0 + 704);
      v78 = *(v0 + 696);
      v80 = *(v0 + 672);
      v82 = *(v0 + 664);
      v84 = *(v0 + 656);
      v86 = *(v0 + 648);
      v88 = *(v0 + 640);
      v90 = *(v0 + 632);
      v92 = *(v0 + 624);
      v94 = *(v0 + 616);
      v96 = *(v0 + 592);
      v98 = *(v0 + 584);
      v100 = *(v0 + 576);
      v102 = *(v0 + 568);
      v104 = *(v0 + 560);
      v106 = *(v0 + 552);
      v108 = *(v0 + 544);
      v110 = *(v0 + 520);
      v112 = *(v0 + 512);
      v114 = *(v0 + 504);
      v116 = *(v0 + 480);
      v118 = *(v0 + 472);
      v120 = *(v0 + 464);
      v123 = *(v0 + 440);
      v126 = *(v0 + 432);
      v129 = *(v0 + 424);
      v132 = *(v0 + 400);
      v135 = *(v0 + 376);
      v139 = *(v0 + 368);
      v142 = *(v0 + 360);
      v144 = *(v0 + 352);
      v59 = *(v0 + 320);
      (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

      v25 = *(v0 + 8);
      goto LABEL_16;
    }

    v60 = *(v0 + 744);
    v61 = *(v0 + 664);
    v62 = *(v0 + 608);
    v63 = *(v0 + 600);
    v64 = *(v0 + 512);
    v65 = *(v0 + 488);
    v66 = *(v0 + 496);
    v67 = *(v51 + 48);
    (*(*(v0 + 688) + 32))(*(v0 + 720), v60, *(v0 + 680));
    (*(v62 + 32))(v61, v60 + v67, v63);
    Friend.handle.getter();
    v68 = Handle.identifier.getter();
    v70 = v69;
    *(v0 + 816) = v69;
    v71 = *(v66 + 8);
    *(v0 + 824) = v71;
    *(v0 + 832) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71(v64, v65);
    v72 = swift_task_alloc();
    *(v0 + 840) = v72;
    *v72 = v0;
    v72[1] = sub_10031C7D0;
    v73 = *(v0 + 520);
    v74 = *(v0 + 328);

    return sub_10031A318(v73, v68, v70);
  }

  else
  {
    v36 = ((1 << *(v0 + 1008)) + 63) >> 6;
    if (v36 <= (v33 + 1))
    {
      v37 = v33 + 1;
    }

    else
    {
      v37 = ((1 << *(v0 + 1008)) + 63) >> 6;
    }

    v38 = v37 - 1;
    while (1)
    {
      v39 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v39 >= v36)
      {
        v75 = *(v0 + 736);
        v76 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
        v49 = 0;
        goto LABEL_14;
      }

      v35 = *(v0 + 320);
      v34 = *(v35 + 8 * v39 + 64);
      ++v33;
      if (v34)
      {
        v33 = v39;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100320D9C()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v4 = *v1;
  *(*v1 + 968) = v0;

  v5 = *(v2 + 328);
  if (v0)
  {
    v6 = sub_100321824;
  }

  else
  {
    v6 = sub_100320EC8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100320EC8()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 792);
  v3 = *(v0 + 352);
  Connection.run(_:)();
  v4 = *(v0 + 952);
  v5 = *(v0 + 944);
  if (v1)
  {
    v6 = *(v0 + 792);
    v7 = *(v0 + 760);
    v129 = *(v0 + 752);
    v132 = *(v0 + 776);
    v8 = *(v0 + 688);
    v135 = *(v0 + 680);
    v139 = *(v0 + 720);
    v124 = *(v0 + 664);
    v9 = *(v0 + 600);
    v10 = *(v0 + 552);
    v11 = *(v0 + 944);
    v12 = *(v0 + 344);
    v13 = *(v0 + 352);
    v14 = *(v0 + 336);
    v15 = *(v0 + 320);

    (*(v12 + 8))(v13, v14);
    sub_10033C3F8(v10, type metadata accessor for FriendRecord);
    v11(v124, v9);
    (*(v7 + 8))(v132, v129);
    (*(v8 + 8))(v139, v135);
    v16 = *(v0 + 776);
    v17 = *(v0 + 768);
    v18 = *(v0 + 744);
    v19 = *(v0 + 736);
    v20 = *(v0 + 728);
    v21 = *(v0 + 720);
    v22 = *(v0 + 712);
    v23 = *(v0 + 704);
    v24 = *(v0 + 696);
    v25 = *(v0 + 672);
    v80 = *(v0 + 664);
    v82 = *(v0 + 656);
    v84 = *(v0 + 648);
    v86 = *(v0 + 640);
    v88 = *(v0 + 632);
    v90 = *(v0 + 624);
    v92 = *(v0 + 616);
    v94 = *(v0 + 592);
    v96 = *(v0 + 584);
    v98 = *(v0 + 576);
    v100 = *(v0 + 568);
    v102 = *(v0 + 560);
    v104 = *(v0 + 552);
    v106 = *(v0 + 544);
    v108 = *(v0 + 520);
    v110 = *(v0 + 512);
    v112 = *(v0 + 504);
    v114 = *(v0 + 480);
    v116 = *(v0 + 472);
    v118 = *(v0 + 464);
    v120 = *(v0 + 440);
    v122 = *(v0 + 432);
    v125 = *(v0 + 424);
    v127 = *(v0 + 400);
    v130 = *(v0 + 376);
    v133 = *(v0 + 368);
    v136 = *(v0 + 360);
    v140 = *(v0 + 352);

    v26 = *(v0 + 8);
LABEL_16:

    return v26();
  }

  v27 = *(v0 + 720);
  v28 = *(v0 + 688);
  v29 = *(v0 + 680);
  v30 = *(v0 + 664);
  v31 = *(v0 + 600);
  v32 = *(v0 + 552);
  (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
  sub_10033C3F8(v32, type metadata accessor for FriendRecord);
  v5(v30, v31);
  result = (*(v28 + 8))(v27, v29);
  v34 = *(v0 + 808);
  v35 = *(v0 + 800);
  if (v35)
  {
    v36 = *(v0 + 320);
LABEL_13:
    v41 = *(v0 + 736);
    v42 = *(v0 + 728);
    v43 = *(v0 + 688);
    v44 = *(v0 + 680);
    v45 = *(v0 + 672);
    v46 = *(v0 + 608);
    v137 = *(v0 + 600);
    v142 = (v35 - 1) & v35;
    v47 = __clz(__rbit64(v35)) | (v34 << 6);
    (*(v43 + 16))(v42, *(v36 + 48) + *(v43 + 72) * v47, v44);
    (*(v46 + 16))(v45, *(v36 + 56) + *(v46 + 72) * v47, v137);
    v48 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v49 = *(v48 + 48);
    (*(v43 + 32))(v41, v42, v44);
    (*(v46 + 32))(v41 + v49, v45, v137);
    (*(*(v48 - 8) + 56))(v41, 0, 1, v48);
    v50 = v142;
    v39 = v34;
LABEL_14:
    *(v0 + 808) = v39;
    *(v0 + 800) = v50;
    v51 = *(v0 + 744);
    sub_10033C300(*(v0 + 736), v51);
    v52 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {
      v53 = *(v0 + 792);
      v54 = *(v0 + 768);
      v55 = *(v0 + 744);
      v56 = *(v0 + 736);
      v57 = *(v0 + 728);
      v58 = *(v0 + 720);
      v59 = *(v0 + 712);
      v78 = *(v0 + 704);
      v79 = *(v0 + 696);
      v81 = *(v0 + 672);
      v83 = *(v0 + 664);
      v85 = *(v0 + 656);
      v87 = *(v0 + 648);
      v89 = *(v0 + 640);
      v91 = *(v0 + 632);
      v93 = *(v0 + 624);
      v95 = *(v0 + 616);
      v97 = *(v0 + 592);
      v99 = *(v0 + 584);
      v101 = *(v0 + 576);
      v103 = *(v0 + 568);
      v105 = *(v0 + 560);
      v107 = *(v0 + 552);
      v109 = *(v0 + 544);
      v111 = *(v0 + 520);
      v113 = *(v0 + 512);
      v115 = *(v0 + 504);
      v117 = *(v0 + 480);
      v119 = *(v0 + 472);
      v121 = *(v0 + 464);
      v123 = *(v0 + 440);
      v126 = *(v0 + 432);
      v128 = *(v0 + 424);
      v131 = *(v0 + 400);
      v134 = *(v0 + 376);
      v138 = *(v0 + 368);
      v141 = *(v0 + 360);
      v143 = *(v0 + 352);
      v60 = *(v0 + 320);
      (*(*(v0 + 760) + 8))(*(v0 + 776), *(v0 + 752));

      v26 = *(v0 + 8);
      goto LABEL_16;
    }

    v61 = *(v0 + 744);
    v62 = *(v0 + 664);
    v63 = *(v0 + 608);
    v64 = *(v0 + 600);
    v65 = *(v0 + 512);
    v66 = *(v0 + 488);
    v67 = *(v0 + 496);
    v68 = *(v52 + 48);
    (*(*(v0 + 688) + 32))(*(v0 + 720), v61, *(v0 + 680));
    (*(v63 + 32))(v62, v61 + v68, v64);
    Friend.handle.getter();
    v69 = Handle.identifier.getter();
    v71 = v70;
    *(v0 + 816) = v70;
    v72 = *(v67 + 8);
    *(v0 + 824) = v72;
    *(v0 + 832) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72(v65, v66);
    v73 = swift_task_alloc();
    *(v0 + 840) = v73;
    *v73 = v0;
    v73[1] = sub_10031C7D0;
    v74 = *(v0 + 520);
    v75 = *(v0 + 328);

    return sub_10031A318(v74, v69, v71);
  }

  else
  {
    v37 = ((1 << *(v0 + 1008)) + 63) >> 6;
    if (v37 <= (v34 + 1))
    {
      v38 = v34 + 1;
    }

    else
    {
      v38 = ((1 << *(v0 + 1008)) + 63) >> 6;
    }

    v39 = v38 - 1;
    while (1)
    {
      v40 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v40 >= v37)
      {
        v76 = *(v0 + 736);
        v77 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
        v50 = 0;
        goto LABEL_14;
      }

      v36 = *(v0 + 320);
      v35 = *(v36 + 8 * v40 + 64);
      ++v34;
      if (v35)
      {
        v34 = v40;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100321824()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[99];
  v4 = v0[95];
  v5 = v0[94];
  v53 = v0[90];
  v6 = v0[86];
  v49 = v0[97];
  v51 = v0[85];
  v7 = v0[83];
  v8 = v0[75];
  v9 = v0[69];
  v10 = v0[40];

  sub_10033C3F8(v9, type metadata accessor for FriendRecord);
  v2(v7, v8);
  (*(v4 + 8))(v49, v5);
  (*(v6 + 8))(v53, v51);
  v54 = v0[121];
  v11 = v0[97];
  v12 = v0[96];
  v13 = v0[93];
  v14 = v0[92];
  v15 = v0[91];
  v16 = v0[90];
  v17 = v0[89];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[84];
  v23 = v0[83];
  v24 = v0[82];
  v25 = v0[81];
  v26 = v0[80];
  v27 = v0[79];
  v28 = v0[78];
  v29 = v0[77];
  v30 = v0[74];
  v31 = v0[73];
  v32 = v0[72];
  v33 = v0[71];
  v34 = v0[70];
  v35 = v0[69];
  v36 = v0[68];
  v37 = v0[65];
  v38 = v0[64];
  v39 = v0[63];
  v40 = v0[60];
  v41 = v0[59];
  v42 = v0[58];
  v43 = v0[55];
  v44 = v0[54];
  v45 = v0[53];
  v46 = v0[50];
  v47 = v0[47];
  v48 = v0[46];
  v50 = v0[45];
  v52 = v0[44];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100321B2C()
{
  v1 = v0[99];
  v2 = v0[97];
  v3 = v0[95];
  v4 = v0[94];
  v51 = v0[90];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[83];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[40];

  (*(v8 + 8))(v7, v9);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v51, v6);
  v52 = v0[106];
  v11 = v0[97];
  v12 = v0[96];
  v13 = v0[93];
  v14 = v0[92];
  v15 = v0[91];
  v16 = v0[90];
  v17 = v0[89];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[84];
  v23 = v0[83];
  v24 = v0[82];
  v25 = v0[81];
  v26 = v0[80];
  v27 = v0[79];
  v28 = v0[78];
  v29 = v0[77];
  v30 = v0[74];
  v31 = v0[73];
  v32 = v0[72];
  v33 = v0[71];
  v34 = v0[70];
  v35 = v0[69];
  v36 = v0[68];
  v37 = v0[65];
  v38 = v0[64];
  v39 = v0[63];
  v40 = v0[60];
  v41 = v0[59];
  v42 = v0[58];
  v43 = v0[55];
  v44 = v0[54];
  v45 = v0[53];
  v46 = v0[50];
  v47 = v0[47];
  v48 = v0[46];
  v49 = v0[45];
  v50 = v0[44];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100321E1C()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[99];
  v4 = v0[97];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[86];
  v48 = v0[85];
  v50 = v0[90];
  v8 = v0[83];
  v9 = v0[75];
  v52 = v0[74];
  v54 = v0[109];
  v10 = v0[40];

  v2(v8, v9);
  (*(v5 + 8))(v4, v6);
  v54(v50, v48);
  sub_10033C3F8(v52, type metadata accessor for FriendRecord);
  v55 = v0[111];
  v11 = v0[97];
  v12 = v0[96];
  v13 = v0[93];
  v14 = v0[92];
  v15 = v0[91];
  v16 = v0[90];
  v17 = v0[89];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[84];
  v23 = v0[83];
  v24 = v0[82];
  v25 = v0[81];
  v26 = v0[80];
  v27 = v0[79];
  v28 = v0[78];
  v29 = v0[77];
  v30 = v0[74];
  v31 = v0[73];
  v32 = v0[72];
  v33 = v0[71];
  v34 = v0[70];
  v35 = v0[69];
  v36 = v0[68];
  v37 = v0[65];
  v38 = v0[64];
  v39 = v0[63];
  v40 = v0[60];
  v41 = v0[59];
  v42 = v0[58];
  v43 = v0[55];
  v44 = v0[54];
  v45 = v0[53];
  v46 = v0[50];
  v47 = v0[47];
  v49 = v0[46];
  v51 = v0[45];
  v53 = v0[44];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10032212C()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[99];
  v4 = v0[97];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[86];
  v48 = v0[85];
  v50 = v0[90];
  v8 = v0[83];
  v9 = v0[75];
  v52 = v0[74];
  v54 = v0[112];
  v10 = v0[40];

  v2(v8, v9);
  (*(v5 + 8))(v4, v6);
  v54(v50, v48);
  sub_10033C3F8(v52, type metadata accessor for FriendRecord);
  v55 = v0[114];
  v11 = v0[97];
  v12 = v0[96];
  v13 = v0[93];
  v14 = v0[92];
  v15 = v0[91];
  v16 = v0[90];
  v17 = v0[89];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[84];
  v23 = v0[83];
  v24 = v0[82];
  v25 = v0[81];
  v26 = v0[80];
  v27 = v0[79];
  v28 = v0[78];
  v29 = v0[77];
  v30 = v0[74];
  v31 = v0[73];
  v32 = v0[72];
  v33 = v0[71];
  v34 = v0[70];
  v35 = v0[69];
  v36 = v0[68];
  v37 = v0[65];
  v38 = v0[64];
  v39 = v0[63];
  v40 = v0[60];
  v41 = v0[59];
  v42 = v0[58];
  v43 = v0[55];
  v44 = v0[54];
  v45 = v0[53];
  v46 = v0[50];
  v47 = v0[47];
  v49 = v0[46];
  v51 = v0[45];
  v53 = v0[44];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10032243C()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[99];
  v4 = v0[97];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[86];
  v48 = v0[85];
  v50 = v0[90];
  v8 = v0[83];
  v9 = v0[75];
  v52 = v0[74];
  v54 = v0[115];
  v10 = v0[40];

  v2(v8, v9);
  (*(v5 + 8))(v4, v6);
  v54(v50, v48);
  sub_10033C3F8(v52, type metadata accessor for FriendRecord);
  v55 = v0[117];
  v11 = v0[97];
  v12 = v0[96];
  v13 = v0[93];
  v14 = v0[92];
  v15 = v0[91];
  v16 = v0[90];
  v17 = v0[89];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[84];
  v23 = v0[83];
  v24 = v0[82];
  v25 = v0[81];
  v26 = v0[80];
  v27 = v0[79];
  v28 = v0[78];
  v29 = v0[77];
  v30 = v0[74];
  v31 = v0[73];
  v32 = v0[72];
  v33 = v0[71];
  v34 = v0[70];
  v35 = v0[69];
  v36 = v0[68];
  v37 = v0[65];
  v38 = v0[64];
  v39 = v0[63];
  v40 = v0[60];
  v41 = v0[59];
  v42 = v0[58];
  v43 = v0[55];
  v44 = v0[54];
  v45 = v0[53];
  v46 = v0[50];
  v47 = v0[47];
  v49 = v0[46];
  v51 = v0[45];
  v53 = v0[44];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10032274C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Insert();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = type metadata accessor for Delete();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v15 = type metadata accessor for Device();
  v2[20] = v15;
  v16 = *(v15 - 8);
  v2[21] = v16;
  v17 = *(v16 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v18 = type metadata accessor for Table();
  v2[27] = v18;
  v19 = *(v18 - 8);
  v2[28] = v19;
  v20 = *(v19 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100322A70, 0, 0);
}

uint64_t sub_100322A70()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 248) = v1;

  return _swift_task_switch(sub_100322B04, v1, 0);
}

uint64_t sub_100322B04()
{
  v1 = *(v0 + 248);
  sub_10000A0A4();
  v2 = *(v0 + 248);

  return _swift_task_switch(sub_100322CAC, v2, 0);
}

uint64_t sub_100322CAC()
{
  v1 = *(v0 + 248);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 256) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100322D94, 0, 0);
}

uint64_t sub_100322D94()
{
  if (v0[32])
  {
    if (qword_1005A8140 != -1)
    {
      swift_once();
    }

    v1 = v0[30];
    v2 = v0[27];
    v3 = v0[28];
    v4 = v0[4];
    v5 = sub_10000A6F0(v2, qword_1005E0090);
    (*(v3 + 16))(v1, v5, v2);

    v0[33] = sub_10023F630(v6);

    v7 = swift_task_alloc();
    v0[34] = v7;
    *v7 = v0;
    v7[1] = sub_100323080;
    v8 = v0[5];

    return sub_100324C30();
  }

  else
  {
    v10 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DatabaseError.notConnected(_:), v10);
    swift_willThrow();
    v13 = v0[29];
    v12 = v0[30];
    v15 = v0[25];
    v14 = v0[26];
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[22];
    v20 = v0[18];
    v19 = v0[19];
    v21 = v0[17];
    v23 = v0[14];
    v24 = v0[11];
    v25 = v0[8];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100323080(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v8 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  if (v1)
  {
    v5 = v3[33];

    v6 = sub_100324ACC;
  }

  else
  {
    v6 = sub_1003231D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003231D0()
{
  v212 = v0;
  object = v0[17]._object;

  v2 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  p_object = sub_10023F630(v2);

  if (qword_1005A84A0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v4 = v0[16]._object;
    v5 = type metadata accessor for Logger();
    v6 = sub_10000A6F0(v5, qword_1005E0AC8);
    v0[18]._object = v6;

    v198 = v6;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    v9 = os_log_type_enabled(v7, v8);
    v210 = v0;
    if (!v9)
    {
LABEL_19:

      countAndFlagsBits = v0[18]._countAndFlagsBits;
      goto LABEL_38;
    }

    LODWORD(v201) = v8;
    v202 = v7;
    v10 = swift_slowAlloc();
    v200 = swift_slowAlloc();
    v211[0] = v200;
    *v10 = 141558787;
    *(v10 + 4) = 1752392040;
    v206 = v10;
    *(v10 + 12) = 2081;
    v11 = *(p_object + 32);
    v12 = v11 & 0x3F;
    v13 = ((1 << v11) + 63) >> 6;
    v14 = 8 * v13;

    v209 = p_object;
    if (v12 <= 0xD)
    {
      goto LABEL_4;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_4:
      v203 = &v187;
      v204 = v13;
      v0 = v0[10]._object;
      __chkstk_darwin(v15);
      v205 = &v187 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v205, v14);
      v16 = 0;
      v17 = p_object + 56;
      v18 = 1 << *(p_object + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & *(p_object + 56);
      v21 = (v18 + 63) >> 6;
      v207 = 0;
      v208 = v0 + 1;
      p_object = &v0->_object;
      while (v20)
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v23 = v22 | (v16 << 6);
        v24 = v210;
LABEL_15:
        v7 = v24[13]._countAndFlagsBits;
        v27 = v24[10]._countAndFlagsBits;
        (v0[1]._countAndFlagsBits)(v7, *(v209 + 48) + v0[4]._object * v23, v27);
        v28 = Device.isActive.getter();
        (v0->_object)(v7, v27);
        if (v28)
        {
          *&v205[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
          v29 = __OFADD__(v207++, 1);
          if (v29)
          {
            __break(1u);
            goto LABEL_19;
          }
        }
      }

      v25 = v16;
      v24 = v210;
      while (1)
      {
        v16 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v16 >= v21)
        {
          v31 = sub_10033948C(v205, v204, v207, v209);
          v32 = v24[18]._countAndFlagsBits;
          goto LABEL_21;
        }

        v26 = *(v17 + 8 * v16);
        ++v25;
        if (v26)
        {
          v20 = (v26 - 1) & v26;
          v23 = __clz(__rbit64(v26)) | (v16 << 6);
          goto LABEL_15;
        }
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v32 = v0[18]._countAndFlagsBits;
    v185 = swift_slowAlloc();
    v31 = sub_1003390B4(v185, v13, p_object, sub_10033C544, 0);

    if (v32)
    {
      return result;
    }

    v24 = v210;
LABEL_21:
    v33 = v24[16]._object;
    sub_100318FB0(v31);

    v34 = Array.description.getter();
    v36 = v35;

    v37 = sub_10000D01C(v34, v36, v211);

    v38 = v206;
    *(v206 + 14) = v37;
    *(v38 + 11) = 2160;
    v38[3] = 1752392040;
    *(v38 + 16) = 2081;
    v39 = v33[32];
    v40 = v39 & 0x3F;
    v41 = ((1 << v39) + 63) >> 6;
    v42 = 8 * v41;

    if (v40 > 0xD)
    {
      break;
    }

LABEL_22:
    v199 = v41;
    v203 = v32;
    v197 = &v187;
    v44 = v24[16]._object;
    v45 = v24[10]._object;
    __chkstk_darwin(v43);
    v204 = &v187 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v204, v42);
    v205 = 0;
    v46 = 0;
    v208 = v44;
    v48 = *(v44 + 7);
    v0 = (v44 + 56);
    v47 = v48;
    v49 = 1 << v33[32];
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & v47;
    v52 = (v49 + 63) >> 6;
    v207 = v45 + 16;
    while (v51)
    {
      v53 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
LABEL_32:
      p_object = v53 | (v46 << 6);
      v56 = v210[13]._countAndFlagsBits;
      v57 = v210[10]._countAndFlagsBits;
      (*(v45 + 2))(v56, v208[3]._countAndFlagsBits + *(v45 + 9) * p_object, v57);
      v58 = Device.isActive.getter();
      (*(v45 + 1))(v56, v57);
      if (v58)
      {
        *&v204[(p_object >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << p_object;
        v29 = __OFADD__(v205++, 1);
        if (v29)
        {
          __break(1u);
LABEL_36:
          v0 = v210;
          v59 = sub_10033948C(v204, v199, v205, v210[16]._object);
          goto LABEL_37;
        }
      }
    }

    v54 = v46;
    while (1)
    {
      v46 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v46 >= v52)
      {
        goto LABEL_36;
      }

      v55 = *(&v0->_countAndFlagsBits + v46);
      ++v54;
      if (v55)
      {
        v53 = __clz(__rbit64(v55));
        v51 = (v55 - 1) & v55;
        goto LABEL_32;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v182 = v24[16]._object;

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v184 = v24[16]._object;
  if (isStackAllocationSafe)
  {

    v24 = v210;
    goto LABEL_22;
  }

  v186 = swift_slowAlloc();
  v59 = sub_1003390B4(v186, v41, v184, sub_10033C544, 0);

  if (v32)
  {
    return result;
  }

  v203 = 0;
  v0 = v210;
LABEL_37:
  countAndFlagsBits = v203;
  sub_100318FB0(v59);

  v60 = Array.description.getter();
  v62 = v61;

  v63 = sub_10000D01C(v60, v62, v211);

  v64 = v206;
  *(v206 + 34) = v63;
  v65 = v202;
  _os_log_impl(&_mh_execute_header, v202, v201, "cached active Devices: %{private,mask.hash}s\ncurrent active Devices: %{private,mask.hash}s", v64, 0x2Au);
  swift_arrayDestroy();

  p_object = v209;
LABEL_38:
  v67 = v0[14]._countAndFlagsBits;
  v68 = v0[10]._object;
  v69 = v0[8]._countAndFlagsBits;
  v70 = v0[6]._object;
  v71 = v0[5]._countAndFlagsBits;
  v211[0] = v0[16]._object;
  v66 = v211[0];

  sub_10023CE40(p_object);
  v72 = v211[0];

  v74 = sub_10033AF34(v73, v66);

  v188 = sub_10033B7FC(v72, v66);
  v0[19]._countAndFlagsBits = v188;

  v76 = 0;
  v78 = v74 + 56;
  v77 = *(v74 + 56);
  v79 = -1;
  v200 = v74;
  v80 = -1 << *(v74 + 32);
  if (-v80 < 64)
  {
    v79 = ~(-1 << -v80);
  }

  p_object = v79 & v77;
  v81 = (63 - v80) >> 6;
  v196 = v68 + 16;
  v197 = v68;
  v194 = (v71 + 8);
  v195 = (v68 + 8);
  v193 = (v70 + 8);
  v199 = (v67 + 8);
  v208 = (v69 + 8);
  *&v75 = 136315138;
  v189 = v75;
  v209 = countAndFlagsBits;
  v191 = v78;
  v190 = v81;
  v192 = (v69 + 16);
  if (p_object)
  {
    while (1)
    {
      v82 = v76;
LABEL_45:
      (v197[2])(v0[12]._object, *(v200 + 48) + v197[9] * (__clz(__rbit64(p_object)) | (v82 << 6)), v0[10]._countAndFlagsBits);
      if (qword_1005A82A8 != -1)
      {
        swift_once();
      }

      v83 = v0[15]._countAndFlagsBits;
      v84 = v0[13]._object;
      v201 = v0[14]._object;
      v202 = v84;
      v85 = v0[12]._object;
      v86 = v0[9]._object;
      v87 = v0[10]._countAndFlagsBits;
      v204 = v83;
      v205 = v86;
      v89 = v0[7]._countAndFlagsBits;
      v88 = v0[7]._object;
      v206 = v0[9]._countAndFlagsBits;
      v207 = v88;
      v90 = v0[5]._object;
      v203 = v0[6]._countAndFlagsBits;
      v91 = v0[4]._object;
      sub_10000A6F0(v91, qword_1005E04E0);
      sub_10001DF0C(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
      ExpressionType<>.lowercaseString.getter();
      Device.identifier.getter();
      (*v195)(v85, v87);
      v92 = String.lowercased()();
      v0 = v210;

      v0[1] = v92;
      == infix<A>(_:_:)();

      (*v194)(v90, v91);
      v94 = v201;
      v93 = v202;
      QueryType.filter(_:)();
      (*v193)(v89, v203);
      v95 = v205;
      QueryType.delete()();
      v96 = *v199;
      (*v199)(v94, v93);
      v97 = *v192;
      (*v192)(v206, v95, v207);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      v100 = os_log_type_enabled(v98, v99);
      v101 = v0[9]._countAndFlagsBits;
      if (v100)
      {
        v102 = v0[8]._object;
        v207 = v96;
        v103 = v210[7]._object;
        v104 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        v211[0] = v206;
        *v104 = v189;
        v97(v102, v101, v103);
        v205 = String.init<A>(describing:)();
        v106 = v105;
        v107 = v208->_countAndFlagsBits;
        v108 = v103;
        v96 = v207;
        v0 = v210;
        (v208->_countAndFlagsBits)(v101, v108);
        v109 = sub_10000D01C(v205, v106, v211);

        *(v104 + 4) = v109;
        _os_log_impl(&_mh_execute_header, v98, v99, "LocalStorage delete a device record: %s", v104, 0xCu);
        sub_100004984(v206);
      }

      else
      {
        v110 = v0[7]._object;

        v107 = v208->_countAndFlagsBits;
        (v208->_countAndFlagsBits)(v101, v110);
      }

      v111 = v0[16]._countAndFlagsBits;
      v112 = v0[9]._object;
      v113 = v209;
      Connection.run(_:)();
      if (v113)
      {
        break;
      }

      p_object &= p_object - 1;
      v107(v0[9]._object, v0[7]._object);
      v209 = 0;
      v76 = v82;
      v78 = v191;
      v81 = v190;
      if (!p_object)
      {
        goto LABEL_42;
      }
    }

    v164 = v0[17]._object;
    v165 = v0[16]._countAndFlagsBits;
    v166 = v0[15]._countAndFlagsBits;
    v167 = v0[13]._object;
    v168 = v0[9]._object;
    v169 = v0[7]._object;

    v107(v168, v169);
    (v96)(v166, v167);
    v171 = v0[14]._object;
    v170 = v0[15]._countAndFlagsBits;
    v173 = v0[12]._object;
    v172 = v0[13]._countAndFlagsBits;
    v175 = v0[11]._object;
    v174 = v0[12]._countAndFlagsBits;
    v176 = v0[11]._countAndFlagsBits;
    v178 = v0[9]._countAndFlagsBits;
    v177 = v0[9]._object;
    v179 = v210[8]._object;
    v180 = v210[5]._object;
    v207 = v210[7]._countAndFlagsBits;
    v208 = v180;
    v209 = v210[4]._countAndFlagsBits;

    v181 = v210;

    v163 = v181->_object;
LABEL_69:

    return v163();
  }

  else
  {
    while (1)
    {
LABEL_42:
      v82 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        __break(1u);
        goto LABEL_73;
      }

      if (v82 >= v81)
      {
        break;
      }

      p_object = *(v78 + 8 * v82);
      ++v76;
      if (p_object)
      {
        goto LABEL_45;
      }
    }

    v114 = v188;
    v115 = *(v188 + 32);
    LOBYTE(v0[22]._countAndFlagsBits) = v115;
    v116 = -1 << v115;
    v117 = *(v114 + 56);
    if (-v116 < 64)
    {
      v118 = ~(-1 << -v116);
    }

    else
    {
      v118 = -1;
    }

    v0[19]._object = v209;
    v119 = v118 & v117;
    if ((v118 & v117) == 0)
    {
      v122 = 0;
      v123 = ((63 - v116) >> 6) - 1;
      v121 = v0[19]._countAndFlagsBits;
      while (v123 != v122)
      {
        v120 = (v122 + 1);
        v119 = *(v121 + 8 * v122++ + 64);
        if (v119)
        {
          goto LABEL_61;
        }
      }

      v149 = v0[17]._object;
      v150 = v0[16]._countAndFlagsBits;
      v152 = v0[14]._object;
      v151 = v0[15]._countAndFlagsBits;
      v153 = v0[13]._object;
      v154 = v0[14]._countAndFlagsBits;
      v155 = v210[13]._countAndFlagsBits;
      v156 = v210[12]._object;
      v157 = v210[12]._countAndFlagsBits;
      v158 = v210[11]._object;
      v159 = v210[9]._object;
      v203 = v210[11]._countAndFlagsBits;
      v204 = v159;
      v160 = v210[8]._object;
      v205 = v210[9]._countAndFlagsBits;
      v206 = v160;
      v161 = v210[5]._object;
      v207 = v210[7]._countAndFlagsBits;
      v208 = v161;
      v209 = v210[4]._countAndFlagsBits;
      (*(v154 + 8))(v151, v153);

      v162 = v210;

      v163 = v162->_object;
      goto LABEL_69;
    }

    v120 = 0;
    v121 = v0[19]._countAndFlagsBits;
LABEL_61:
    v0[20]._countAndFlagsBits = v119;
    v0[20]._object = v120;
    v124 = v0[18]._object;
    v125 = v0[11]._object;
    v126 = v0[12]._countAndFlagsBits;
    v128 = v0[10]._object;
    v127 = v0[11]._countAndFlagsBits;
    v129 = v0[10]._countAndFlagsBits;
    v130 = v128[2];
    v130(v126, *(v121 + 48) + v128[9] * (__clz(__rbit64(v119)) | (v120 << 6)), v129);
    (v128[4])(v125, v126, v129);
    v130(v127, v125, v129);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();
    v133 = os_log_type_enabled(v131, v132);
    v135 = v0[10]._object;
    v134 = v0[11]._countAndFlagsBits;
    v136 = v0[10]._countAndFlagsBits;
    if (v133)
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v211[0] = v138;
      *v137 = v189;
      sub_10000A49C(&qword_1005B1DF0, &type metadata accessor for Device);
      v139 = dispatch thunk of CustomStringConvertible.description.getter();
      v141 = v140;
      v142 = v135[1];
      v142(v134, v136);
      v143 = sub_10000D01C(v139, v141, v211);

      *(v137 + 4) = v143;
      _os_log_impl(&_mh_execute_header, v131, v132, "LocalStorage added a device: %s", v137, 0xCu);
      sub_100004984(v138);
    }

    else
    {

      v142 = v135[1];
      v142(v134, v136);
    }

    v144 = v210;
    v210[21]._countAndFlagsBits = v142;
    v145 = swift_task_alloc();
    v144[21]._object = v145;
    *v145 = v144;
    v145[1] = sub_1003243DC;
    v146 = v144[11]._object;
    v147 = v144[4]._countAndFlagsBits;

    return sub_100330EF4(v147, v146);
  }
}

uint64_t sub_1003243DC()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return _swift_task_switch(sub_100324504, 0, 0);
}

uint64_t sub_100324504()
{
  v78 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = *(v0 + 64);
  Connection.run(_:)();
  v4 = *(v0 + 336);
  if (v1)
  {
    v5 = *(v0 + 304);
    v6 = *(v0 + 280);
    v7 = *(v0 + 256);
    v8 = *(v0 + 224);
    v70 = *(v0 + 216);
    v73 = *(v0 + 240);
    v67 = *(v0 + 184);
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
    v13 = *(v0 + 48);

    (*(v11 + 8))(v12, v13);
    v4(v67, v10);
    (*(v8 + 8))(v73, v70);
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v20 = *(v0 + 176);
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    v23 = *(v0 + 136);
    v68 = *(v0 + 112);
    v71 = *(v0 + 88);
    v74 = *(v0 + 64);

    v24 = *(v0 + 8);
LABEL_3:

    return v24();
  }

  v26 = *(v0 + 184);
  v27 = *(v0 + 160);
  v28 = *(v0 + 168) + 8;
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v4(v26, v27);
  v30 = *(v0 + 320);
  v29 = *(v0 + 328);
  *(v0 + 312) = 0;
  v31 = (v30 - 1) & v30;
  if (!v31)
  {
    while (1)
    {
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
      }

      v32 = *(v0 + 304);
      if (v33 >= (((1 << *(v0 + 352)) + 63) >> 6))
      {
        break;
      }

      v31 = *(v32 + 8 * v33 + 56);
      ++v29;
      if (v31)
      {
        v29 = v33;
        goto LABEL_12;
      }
    }

    v56 = *(v0 + 280);
    v57 = *(v0 + 256);
    v58 = *(v0 + 232);
    v60 = *(v0 + 200);
    v59 = *(v0 + 208);
    v61 = *(v0 + 184);
    v62 = *(v0 + 192);
    v64 = *(v0 + 176);
    v65 = *(v0 + 152);
    v66 = *(v0 + 144);
    v69 = *(v0 + 136);
    v72 = *(v0 + 112);
    v63 = *(v0 + 88);
    v76 = *(v0 + 64);
    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

    v24 = *(v0 + 8);
    goto LABEL_3;
  }

  v32 = *(v0 + 304);
LABEL_12:
  *(v0 + 320) = v31;
  *(v0 + 328) = v29;
  v34 = *(v0 + 296);
  v36 = *(v0 + 184);
  v35 = *(v0 + 192);
  v38 = *(v0 + 168);
  v37 = *(v0 + 176);
  v39 = *(v0 + 160);
  v40 = *(v38 + 16);
  v40(v35, *(v32 + 48) + *(v38 + 72) * (__clz(__rbit64(v31)) | (v29 << 6)), v39);
  (*(v38 + 32))(v36, v35, v39);
  v40(v37, v36, v39);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v45 = *(v0 + 168);
  v44 = *(v0 + 176);
  v46 = *(v0 + 160);
  if (v43)
  {
    v47 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v77 = v75;
    *v47 = 136315138;
    sub_10000A49C(&qword_1005B1DF0, &type metadata accessor for Device);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v51 = *(v45 + 8);
    v51(v44, v46);
    v52 = sub_10000D01C(v48, v50, &v77);

    *(v47 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v41, v42, "LocalStorage added a device: %s", v47, 0xCu);
    sub_100004984(v75);
  }

  else
  {

    v51 = *(v45 + 8);
    v51(v44, v46);
  }

  *(v0 + 336) = v51;
  v53 = swift_task_alloc();
  *(v0 + 344) = v53;
  *v53 = v0;
  v53[1] = sub_1003243DC;
  v54 = *(v0 + 184);
  v55 = *(v0 + 64);

  return sub_100330EF4(v55, v54);
}

uint64_t sub_100324ACC()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];

  (*(v4 + 8))(v2, v3);
  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[17];
  v17 = v0[36];
  v18 = v0[14];
  v19 = v0[11];
  v20 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100324C50()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_100324C74, v1, 0);
}

uint64_t sub_100324C74()
{
  v1 = *(v0 + 64);
  sub_10000A0A4();
  *(v0 + 72) = 0;
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100324D28, v2, 0);
}

uint64_t sub_100324D28()
{
  v1 = *(v0 + 64);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 80) = Database.readConnection.getter();

  return _swift_task_switch(sub_100324DDC, 0, 0);
}

uint64_t sub_100324DDC()
{
  if (v0[10])
  {
    if (qword_1005A8140 != -1)
    {
      swift_once();
    }

    v1 = v0[9];
    v2 = type metadata accessor for Table();
    v3 = sub_10000A6F0(v2, qword_1005E0090);
    v0[5] = v2;
    v0[6] = &protocol witness table for Table;
    v4 = sub_10000331C(v0 + 2);
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    v5 = sub_100339FCC();

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

uint64_t sub_100324FE8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10004B564(&qword_1005B1D80, &qword_1004D6000) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for Insert();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003250E0, 0, 0);
}

uint64_t sub_1003250E0()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_100325104, v1, 0);
}

uint64_t sub_100325104()
{
  v1 = *(v0 + 64);
  sub_10000A0A4();
  *(v0 + 72) = 0;
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_1003251CC, v2, 0);
}

uint64_t sub_1003251CC()
{
  v1 = *(v0 + 64);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 80) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100325280, 0, 0);
}

uint64_t sub_100325280()
{
  if (v0[10])
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_100325410;
    v3 = v0[3];
    v2 = v0[4];
    v4 = v0[2];

    return sub_10033150C(v2, v4);
  }

  else
  {
    v6 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for DatabaseError.notConnected(_:), v6);
    swift_willThrow();
    v8 = v0[7];
    v9 = v0[4];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100325410()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_10032550C, 0, 0);
}

uint64_t sub_10032550C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[10];
  if (v4 == 1)
  {
    v6 = v0[10];

    sub_100002CE0(v3, &qword_1005B1D80, &qword_1004D6000);
  }

  else
  {
    v7 = v0[9];
    v8 = v0[7];
    (*(v2 + 32))(v8, v3, v1);
    Connection.run(_:)();
    (*(v2 + 8))(v8, v1);
  }

  v9 = v0[7];
  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100325664(uint64_t a1)
{
  *(v2 + 544) = v1;
  *(v2 + 536) = a1;
  return _swift_task_switch(sub_100325688, 0, 0);
}

uint64_t sub_100325688()
{
  v1 = *(*(v0 + 544) + 112);
  *(v0 + 552) = v1;
  return _swift_task_switch(sub_1003256AC, v1, 0);
}

uint64_t sub_1003256AC()
{
  v1 = *(v0 + 552);
  sub_10000A0A4();
  *(v0 + 560) = 0;
  v2 = *(v0 + 552);

  return _swift_task_switch(sub_100325760, v2, 0);
}

uint64_t sub_100325760()
{
  v1 = *(v0 + 552);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 568) = Database.readConnection.getter();

  return _swift_task_switch(sub_10003384C, 0, 0);
}

uint64_t sub_100325814(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = type metadata accessor for Table();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v13 = type metadata accessor for Delete();
  v3[16] = v13;
  v14 = *(v13 - 8);
  v3[17] = v14;
  v15 = *(v14 + 64) + 15;
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100325A04, 0, 0);
}

uint64_t sub_100325A04()
{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 152) = v1;
  return _swift_task_switch(sub_100325A28, v1, 0);
}

uint64_t sub_100325A28()
{
  v1 = *(v0 + 152);
  sub_10000A0A4();
  *(v0 + 160) = 0;
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_100325B14, v2, 0);
}

uint64_t sub_100325B14()
{
  v1 = *(v0 + 152);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 168) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100325BC8, 0, 0);
}

uint64_t sub_100325BC8()
{
  v49 = v0;
  if (!*(v0 + 168))
  {
    v10 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DatabaseError.notConnected(_:), v10);
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_1005A8158 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(*(v0 + 104), qword_1005E00D8);
  if (qword_1005A8360 != -1)
  {
    swift_once();
  }

  v47 = *(v0 + 160);
  v45 = *(v0 + 144);
  v46 = *(v0 + 112);
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v43 = *(v0 + 120);
  v44 = *(v0 + 80);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  sub_10000A6F0(v6, qword_1005E0708);
  sub_10001DF0C(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
  ExpressionType<>.lowercaseString.getter();
  *(v0 + 16) = String.lowercased()();
  == infix<A>(_:_:)();

  (*(v5 + 8))(v4, v6);
  QueryType.filter(_:)();
  (*(v3 + 8))(v2, v44);
  QueryType.delete()();
  (*(v46 + 8))(v43, v1);
  v9 = Connection.run(_:)();
  if (v47)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

LABEL_9:
    v12 = *(v0 + 144);
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);

    v16 = *(v0 + 8);
    goto LABEL_22;
  }

  if (v9 == 1)
  {
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 40);
    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005E0AC8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v24 = *(v0 + 128);
    if (v21)
    {
      v26 = *(v0 + 32);
      v25 = *(v0 + 40);
      v27 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v27 = 136446466;
      *(v27 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E7BA0, v48);
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_10000D01C(v26, v25, v48);
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s: fence deleted: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    (*(v23 + 8))(v22, v24);
  }

  else
  {
    v28 = v9;
    if (qword_1005A84A0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000A6F0(v29, qword_1005E0AC8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    v35 = *(v0 + 128);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48[0] = v37;
      *v36 = 136446466;
      *(v36 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E7BA0, v48);
      *(v36 + 12) = 2050;
      *(v36 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s: did not delete fence. DeletedRows: %{public}ld", v36, 0x16u);
      sub_100004984(v37);
    }

    (*(v34 + 8))(v33, v35);
  }

  v38 = *(v0 + 144);
  v39 = *(v0 + 120);
  v40 = *(v0 + 96);
  v41 = *(v0 + 72);

  v16 = *(v0 + 8);
LABEL_22:

  return v16();
}

uint64_t sub_100326220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[450] = v3;
  v4[449] = a3;
  v4[448] = a2;
  v4[447] = a1;
  v5 = *(*(sub_10004B564(&qword_1005AF468, &qword_1004D06C0) - 8) + 64) + 15;
  v4[451] = swift_task_alloc();
  v4[452] = swift_task_alloc();
  v6 = type metadata accessor for Row();
  v4[453] = v6;
  v7 = *(v6 - 8);
  v4[454] = v7;
  v8 = *(v7 + 64) + 15;
  v4[455] = swift_task_alloc();
  v4[456] = swift_task_alloc();
  v4[457] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
  v4[458] = v9;
  v10 = *(v9 - 8);
  v4[459] = v10;
  v11 = *(v10 + 64) + 15;
  v4[460] = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005AF0B0, &unk_1004D0290);
  v4[461] = v12;
  v13 = *(v12 - 8);
  v4[462] = v13;
  v14 = *(v13 + 64) + 15;
  v4[463] = swift_task_alloc();
  v15 = type metadata accessor for Table();
  v4[464] = v15;
  v16 = *(v15 - 8);
  v4[465] = v16;
  v17 = *(v16 + 64) + 15;
  v4[466] = swift_task_alloc();

  return _swift_task_switch(sub_100326474, 0, 0);
}

uint64_t sub_100326474()
{
  v1 = *(*(v0 + 3600) + 112);
  *(v0 + 3736) = v1;
  return _swift_task_switch(sub_100326498, v1, 0);
}

uint64_t sub_100326498()
{
  v1 = *(v0 + 3736);
  sub_10000A0A4();
  *(v0 + 3744) = 0;
  v2 = *(v0 + 3736);

  return _swift_task_switch(sub_1003265CC, v2, 0);
}

uint64_t sub_1003265CC()
{
  v1 = *(v0 + 3736);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 3752) = Database.readConnection.getter();

  return _swift_task_switch(sub_100326680, 0, 0);
}

uint64_t sub_100326680()
{
  if (*(v0 + 3752))
  {
    if (qword_1005A8158 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(*(v0 + 3712), qword_1005E00D8);
    if (qword_1005A8360 != -1)
    {
      swift_once();
    }

    v64 = *(v0 + 3744);
    v62 = *(v0 + 3720);
    v1 = *(v0 + 3712);
    v2 = *(v0 + 3704);
    v3 = *(v0 + 3696);
    v59 = *(v0 + 3728);
    v61 = *(v0 + 3688);
    v4 = *(v0 + 3680);
    v5 = *(v0 + 3672);
    v6 = *(v0 + 3664);
    v7 = *(v0 + 3592);
    v8 = *(v0 + 3584);
    sub_10000A6F0(v6, qword_1005E0708);
    sub_10001DF0C(&qword_1005AF070, &qword_1005AF068, &unk_1004D06E0);
    ExpressionType<>.lowercaseString.getter();
    *(v0 + 3560) = String.lowercased()();
    == infix<A>(_:_:)();

    (*(v5 + 8))(v4, v6);
    QueryType.filter(_:)();
    (*(v3 + 8))(v2, v61);
    *(v0 + 3544) = v1;
    *(v0 + 3552) = &protocol witness table for Table;
    v9 = sub_10000331C((v0 + 3520));
    (*(v62 + 16))(v9, v59, v1);
    Connection.prepare(_:)();
    if (!v64)
    {
      sub_100004984((v0 + 3520));
      v22 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
      sub_10000F708(0, v22 & ~(v22 >> 63), 0);
      result = dispatch thunk of _AnySequenceBox._makeIterator()();
      if (v22 < 0)
      {
        __break(1u);
      }

      else
      {
        if (!v22)
        {
LABEL_20:
          v32 = *(v0 + 3632);
          v33 = *(v0 + 3624);
          v34 = *(v0 + 3616);
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v63 = *(v32 + 48);
          if (v63(v34, 1, v33) != 1)
          {
            v41 = *(v0 + 3632);
            v60 = *(v41 + 32);
            v42 = (v41 + 16);
            v43 = (v41 + 8);
            do
            {
              v44 = *(v0 + 3656);
              v45 = *(v0 + 3648);
              v46 = *(v0 + 3624);
              v60(v44, *(v0 + 3616), v46);
              (*v42)(v45, v44, v46);
              sub_10033C560(v45, v0 + 600);
              (*v43)(*(v0 + 3656), *(v0 + 3624));
              v48 = _swiftEmptyArrayStorage[2];
              v47 = _swiftEmptyArrayStorage[3];
              if (v48 >= v47 >> 1)
              {
                sub_10000F708((v47 > 1), v48 + 1, 1);
              }

              v49 = *(v0 + 3624);
              v50 = *(v0 + 3616);
              _swiftEmptyArrayStorage[2] = v48 + 1;
              memcpy(&_swiftEmptyArrayStorage[73 * v48 + 4], (v0 + 600), 0x241uLL);
              dispatch thunk of _AnyIteratorBoxBase.next()();
            }

            while (v63(v50, 1, v49) != 1);
          }

          v35 = *(v0 + 3616);

          sub_100002CE0(v35, &qword_1005AF468, &qword_1004D06C0);
          v36 = *(v0 + 3728);
          v37 = *(v0 + 3720);
          v38 = *(v0 + 3712);
          if (_swiftEmptyArrayStorage[2])
          {
            memcpy((v0 + 2352), &_swiftEmptyArrayStorage[4], 0x241uLL);
            sub_10005D0C0(v0 + 2352, v0 + 2936);

            (*(v37 + 8))(v36, v38);
            memcpy((v0 + 1768), (v0 + 2352), 0x241uLL);
            v39._countAndFlagsBits = v0 + 1768;
            DarwinNotification.init(name:value:)(v39, v40);
            memcpy((v0 + 1184), (v0 + 1768), 0x241uLL);
          }

          else
          {
            (*(v37 + 8))(*(v0 + 3728), *(v0 + 3712));

            sub_10033BCFC((v0 + 1184));
          }

          v51 = *(v0 + 3728);
          v52 = *(v0 + 3704);
          v53 = *(v0 + 3680);
          v54 = *(v0 + 3656);
          v55 = *(v0 + 3648);
          v56 = *(v0 + 3640);
          v57 = *(v0 + 3616);
          v58 = *(v0 + 3608);
          memcpy(*(v0 + 3576), (v0 + 1184), 0x241uLL);

          v20 = *(v0 + 8);
          goto LABEL_10;
        }

        v23 = *(v0 + 3632);
        v24 = (v23 + 48);
        v25 = (v23 + 16);
        v26 = (v23 + 8);
        while (1)
        {
          v27 = *(v0 + 3624);
          v28 = *(v0 + 3608);
          dispatch thunk of _AnyIteratorBoxBase.next()();
          result = (*v24)(v28, 1, v27);
          if (result == 1)
          {
            break;
          }

          v29 = *(v0 + 3640);
          (*v25)(v29, *(v0 + 3608), *(v0 + 3624));
          sub_10033C560(v29, v0 + 16);
          (*v26)(*(v0 + 3608), *(v0 + 3624));
          v31 = _swiftEmptyArrayStorage[2];
          v30 = _swiftEmptyArrayStorage[3];
          if (v31 >= v30 >> 1)
          {
            sub_10000F708((v30 > 1), v31 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v31 + 1;
          memcpy(&_swiftEmptyArrayStorage[73 * v31 + 4], (v0 + 16), 0x241uLL);
          if (!--v22)
          {
            goto LABEL_20;
          }
        }
      }

      __break(1u);
      return result;
    }

    (*(*(v0 + 3720) + 8))(*(v0 + 3728), *(v0 + 3712));

    sub_100004984((v0 + 3520));
  }

  else
  {
    v10 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DatabaseError.notConnected(_:), v10);
    swift_willThrow();
  }

  v12 = *(v0 + 3728);
  v13 = *(v0 + 3704);
  v14 = *(v0 + 3680);
  v15 = *(v0 + 3656);
  v16 = *(v0 + 3648);
  v17 = *(v0 + 3640);
  v18 = *(v0 + 3616);
  v19 = *(v0 + 3608);

  v20 = *(v0 + 8);
LABEL_10:

  return v20();
}

uint64_t sub_100326EE4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100326FA4, 0, 0);
}

uint64_t sub_100326FA4()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_100326FC8, v1, 0);
}

uint64_t sub_100326FC8()
{
  v1 = *(v0 + 56);
  sub_10000A0A4();
  *(v0 + 64) = 0;
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100327084, v2, 0);
}

uint64_t sub_100327084()
{
  v1 = *(v0 + 56);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 72) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100327138, 0, 0);
}

uint64_t sub_100327138()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 64);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = swift_task_alloc();
    v7 = *(v0 + 16);
    *(v6 + 16) = v1;
    *(v6 + 24) = v7;
    (*(v4 + 104))(v3, enum case for Connection.TransactionMode.deferred(_:), v5);
    Connection.transaction(_:block:)();
    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v8 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for DatabaseError.notConnected(_:), v8);
    swift_willThrow();
  }

  v10 = *(v0 + 48);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003272F4()
{
  v1[19] = v0;
  v2 = *(*(sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[22] = v3;
  v4 = *(v3 - 8);
  v1[23] = v4;
  v5 = *(v4 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v6 = type metadata accessor for ShareInvitationRecord();
  v1[26] = v6;
  v7 = *(v6 - 8);
  v1[27] = v7;
  v8 = *(v7 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005AF468, &qword_1004D06C0) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v10 = type metadata accessor for Row();
  v1[34] = v10;
  v11 = *(v10 - 8);
  v1[35] = v11;
  v12 = *(v11 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_10032753C, 0, 0);
}

uint64_t sub_10032753C()
{
  v1 = *(*(v0 + 152) + 112);
  *(v0 + 312) = v1;
  return _swift_task_switch(sub_100327560, v1, 0);
}

uint64_t sub_100327560()
{
  v1 = *(v0 + 312);
  sub_10000A0A4();
  *(v0 + 320) = 0;
  v2 = *(v0 + 312);

  return _swift_task_switch(sub_1003276C0, v2, 0);
}

uint64_t sub_1003276C0()
{
  v1 = *(v0 + 312);
  type metadata accessor for LocalStorageDatabase();
  sub_10000A49C(&qword_1005B19F0, type metadata accessor for LocalStorageDatabase);
  *(v0 + 328) = Database.readConnection.getter();

  return _swift_task_switch(sub_100327774, 0, 0);
}

uint64_t sub_100327774()
{
  if (!*(v0 + 328))
  {
    v5 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DatabaseError.notConnected(_:), v5);
    swift_willThrow();
    goto LABEL_7;
  }

  if (qword_1005A8150 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E00C0);
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for Table;
  v4 = sub_10000331C((v0 + 16));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  Connection.prepare(_:)();
  if (v1)
  {

    sub_100004984((v0 + 16));
LABEL_7:
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = *(v0 + 288);
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v13 = *(v0 + 240);
    v12 = *(v0 + 248);
    v15 = *(v0 + 224);
    v14 = *(v0 + 232);
    v16 = *(v0 + 200);
    v118 = *(v0 + 192);
    v122 = *(v0 + 168);
    v126 = *(v0 + 160);

    v17 = *(v0 + 8);

    return v17();
  }

  sub_100004984((v0 + 16));
  v19 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  sub_10023967C(0, v19 & ~(v19 >> 63), 0);
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  if (v19 < 0)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  if (v19)
  {
    v20 = *(v0 + 280);
    v123 = (v20 + 16);
    v127 = (v20 + 48);
    v21 = *(v0 + 184);
    v113 = (v21 + 32);
    v109 = (v21 + 8);
    v111 = (v21 + 16);
    v116 = (v20 + 8);
    v119 = (v21 + 48);
    v105 = *(v0 + 208);
    v107 = *(v0 + 216);
    do
    {
      v22 = *(v0 + 272);
      v23 = *(v0 + 256);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v127)(v23, 1, v22);
      if (result == 1)
      {
        goto LABEL_39;
      }

      (*v123)(*(v0 + 288), *(v0 + 256), *(v0 + 272));
      if (qword_1005A8308 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 288);
      v25 = *(v0 + 176);
      v26 = *(v0 + 160);
      v27 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
      sub_10000A6F0(v27, qword_1005E0600);
      Row.subscript.getter();
      v28 = *(v0 + 56);
      v29 = *(v0 + 64);
      URL.init(string:)();

      if ((*v119)(v26, 1, v25) == 1)
      {
        v87 = *(v0 + 288);
        v88 = *(v0 + 272);
        v89 = *(v0 + 256);
        v90 = *(v0 + 160);

        sub_100002CE0(v90, &qword_1005A9DB8, &unk_1004CC1D0);
        Row.subscript.getter();
        v91 = *(v0 + 72);
        v92 = *(v0 + 80);
        sub_10033BD30();
        swift_allocError();
        *v93 = v91;
        *(v93 + 8) = v92;
        *(v93 + 16) = 0;
        swift_willThrow();

        v94 = *v116;
        (*v116)(v87, v88);

        v94(v89, v88);
        goto LABEL_7;
      }

      v30 = *(v0 + 224);
      v31 = *(v0 + 192);
      v32 = *(v0 + 176);
      (*v113)(v31, *(v0 + 160), v32);
      (*v111)(v30, v31, v32);
      if (qword_1005A8310 != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 288);
      v34 = *(v0 + 272);
      v35 = *(v0 + 256);
      v36 = *(v0 + 224);
      v37 = *(v0 + 232);
      v38 = *(v0 + 192);
      v39 = *(v0 + 176);
      v40 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v40, qword_1005E0618);
      Row.subscript.getter();
      (*v109)(v38, v39);
      v41 = *v116;
      (*v116)(v33, v34);
      *(v36 + *(v105 + 20)) = *(v0 + 88);
      sub_10033C458(v36, v37, type metadata accessor for ShareInvitationRecord);
      v41(v35, v34);
      v43 = _swiftEmptyArrayStorage[2];
      v42 = _swiftEmptyArrayStorage[3];
      if (v43 >= v42 >> 1)
      {
        sub_10023967C(v42 > 1, v43 + 1, 1);
      }

      v44 = *(v0 + 232);
      _swiftEmptyArrayStorage[2] = v43 + 1;
      sub_10033C458(v44, _swiftEmptyArrayStorage + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v43, type metadata accessor for ShareInvitationRecord);
    }

    while (--v19);
  }

  v45 = *(v0 + 272);
  v46 = *(v0 + 280);
  v47 = *(v0 + 264);
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v124 = *(v46 + 48);
  if (v124(v47, 1, v45) != 1)
  {
    v57 = *(v0 + 280);
    v58 = *(v57 + 32);
    v57 += 32;
    v112 = (v57 - 16);
    v115 = v58;
    v59 = *(v0 + 184);
    v108 = (v59 + 32);
    v110 = (v59 + 48);
    v104 = (v59 + 8);
    v106 = (v59 + 16);
    v121 = (v57 - 24);
    v60 = *(v0 + 216);
    v103 = *(v0 + 208);
    while (1)
    {
      v62 = *(v0 + 296);
      v61 = *(v0 + 304);
      v63 = *(v0 + 272);
      v115(v61, *(v0 + 264), v63);
      (*v112)(v62, v61, v63);
      if (qword_1005A8308 != -1)
      {
        swift_once();
      }

      v64 = *(v0 + 296);
      v65 = *(v0 + 168);
      v66 = *(v0 + 176);
      v67 = sub_10004B564(&qword_1005AF068, &unk_1004D06E0);
      sub_10000A6F0(v67, qword_1005E0600);
      Row.subscript.getter();
      v68 = *(v0 + 104);
      v69 = *(v0 + 112);
      URL.init(string:)();

      if ((*v110)(v65, 1, v66) == 1)
      {
        break;
      }

      v70 = *(v0 + 240);
      v71 = *(v0 + 200);
      v72 = *(v0 + 176);
      (*v108)(v71, *(v0 + 168), v72);
      (*v106)(v70, v71, v72);
      if (qword_1005A8310 != -1)
      {
        swift_once();
      }

      v74 = *(v0 + 296);
      v73 = *(v0 + 304);
      v75 = *(v0 + 272);
      v77 = *(v0 + 240);
      v76 = *(v0 + 248);
      v78 = *(v0 + 200);
      v79 = *(v0 + 176);
      v80 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
      sub_10000A6F0(v80, qword_1005E0618);
      Row.subscript.getter();
      (*v104)(v78, v79);
      v81 = *v121;
      (*v121)(v74, v75);
      v81(v73, v75);
      *(v77 + *(v103 + 20)) = *(v0 + 136);
      sub_10033C458(v77, v76, type metadata accessor for ShareInvitationRecord);
      v83 = _swiftEmptyArrayStorage[2];
      v82 = _swiftEmptyArrayStorage[3];
      if (v83 >= v82 >> 1)
      {
        sub_10023967C(v82 > 1, v83 + 1, 1);
      }

      v85 = *(v0 + 264);
      v84 = *(v0 + 272);
      v86 = *(v0 + 248);
      _swiftEmptyArrayStorage[2] = v83 + 1;
      sub_10033C458(v86, _swiftEmptyArrayStorage + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v83, type metadata accessor for ShareInvitationRecord);
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (v124(v85, 1, v84) == 1)
      {
        goto LABEL_23;
      }
    }

    v96 = *(v0 + 296);
    v95 = *(v0 + 304);
    v97 = *(v0 + 272);
    v98 = *(v0 + 168);

    sub_100002CE0(v98, &qword_1005A9DB8, &unk_1004CC1D0);
    Row.subscript.getter();
    v99 = *(v0 + 120);
    v100 = *(v0 + 128);
    sub_10033BD30();
    swift_allocError();
    *v101 = v99;
    *(v101 + 8) = v100;
    *(v101 + 16) = 0;
    swift_willThrow();

    v102 = *v121;
    (*v121)(v96, v97);
    v102(v95, v97);

    goto LABEL_7;
  }

LABEL_23:
  v49 = *(v0 + 296);
  v48 = *(v0 + 304);
  v50 = *(v0 + 288);
  v51 = *(v0 + 256);
  v52 = *(v0 + 264);
  v54 = *(v0 + 240);
  v53 = *(v0 + 248);
  v114 = *(v0 + 232);
  v117 = *(v0 + 224);
  v120 = *(v0 + 200);
  v125 = *(v0 + 192);
  v55 = *(v0 + 160);
  v128 = *(v0 + 168);

  sub_100002CE0(v52, &qword_1005AF468, &qword_1004D06C0);

  v56 = *(v0 + 8);

  return v56(_swiftEmptyArrayStorage);
}

uint64_t sub_100328340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for OnConflict();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for Insert();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v11 = type metadata accessor for ShareInvitationRecord();
  v4[16] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_100328490, 0, 0);
}

uint64_t sub_100328490()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_1003284B4, v1, 0);
}

uint64_t sub_1003284B4()
{
  v1 = *(v0 + 144);
  sub_10000A0A4();
  *(v0 + 152) = 0;
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_100328588, v2, 0);
}
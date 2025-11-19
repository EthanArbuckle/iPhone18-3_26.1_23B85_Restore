uint64_t sub_10027224C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for Fence.ID();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  v9 = type metadata accessor for Fence();
  v4[6] = v9;
  v10 = *(v9 - 8);
  v4[7] = v10;
  v11 = *(v10 + 64) + 15;
  v4[8] = swift_task_alloc();
  v12 = swift_task_alloc();
  v4[9] = v12;
  v13 = swift_task_alloc();
  v4[10] = v13;
  *v13 = v4;
  v13[1] = sub_1002723C0;

  return sub_100269ECC(v12, a4);
}

uint64_t sub_1002723C0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1002725A4;
  }

  else
  {
    (*(v2[7] + 8))(v2[9], v2[6]);
    v4 = sub_1002724EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002724EC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v4 = sub_10004D0C4(v0[2], 0, 0);
  sub_10001157C(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002725A4()
{
  v43 = v0;
  v1 = v0[11];
  v2 = v0[2];
  swift_errorRetain();
  v3 = sub_10004D0C4(v2, v1, 1);
  v5 = v4;
  v7 = v6;

  sub_10001157C(v3, v5, v7);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v8 = v0[11];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  v12 = v0[2];
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFF88);
  (*(v10 + 16))(v9, v12, v11);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v40 = v0[11];
    v38 = v15;
    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[5];
    v37 = v0[6];
    v19 = v0[3];
    v20 = v0[4];
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v21 = 136446466;
    Fence.id.getter();
    sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v20 + 8))(v18, v19);
    (*(v17 + 8))(v16, v37);
    v25 = sub_10000D01C(v22, v24, &v42);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v26;
    *v39 = v26;
    _os_log_impl(&_mh_execute_header, v14, v38, "Failed to mute fence with ID: %{public}s error: %{public}@", v21, 0x16u);
    sub_100002CE0(v39, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v41);
  }

  else
  {
    v28 = v0[7];
    v27 = v0[8];
    v29 = v0[6];

    (*(v28 + 8))(v27, v29);
  }

  v30 = v0[11];
  v31 = v0[8];
  v32 = v0[9];
  v33 = v0[5];
  swift_willThrow();

  v34 = v0[1];
  v35 = v0[11];

  return v34();
}

uint64_t sub_100272914(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for FenceRecord() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for CloudKitCoordinator.Database();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v3[10] = v10;
  *v10 = v3;
  v10[1] = sub_100272A6C;

  return daemon.getter();
}

uint64_t sub_100272A6C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000094D0(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100272C48;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100272C48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v10 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_100273BF8;
  }

  else
  {
    v7 = v3[11];
    v8 = v3[4];

    v6 = sub_100272D70;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100272D70()
{
  v1 = v0[13];
  v2 = v0[3];
  sub_1002744D8();
  v3._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4._object = v5;
  v6._countAndFlagsBits = 0x2D65636E6546;
  v6._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v6, v4).super.isa;
  v8 = [(objc_class *)isa zoneName];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v0[15] = v9;
  v0[16] = v11;

  return _swift_task_switch(sub_100272E84, v1, 0);
}

uint64_t sub_100272E84()
{
  v17 = v0;
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  v0[17] = v2;
  sub_10000A6F0(v2, qword_1005DFE80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000D01C(v6, v5, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating CloudKit zone: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  v9 = *(v0[13] + 136);
  v10 = *(&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + 1);
  v15 = (&async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.create(zoneName:));
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_100273064;
  v13 = v0[15];
  v12 = v0[16];

  return v15(v13, v12);
}

uint64_t sub_100273064()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1002733F4;
  }

  else
  {
    v6 = *(v2 + 128);
    v7 = *(v2 + 32);

    v5 = sub_10027318C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10027318C()
{
  v1 = v0[13];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[20] = v3;
  *(v3 + 16) = v2;

  return _swift_task_switch(sub_100273204, v1, 0);
}

uint64_t sub_100273204()
{
  v1 = *(v0[13] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_1002732CC;
  v4 = v0[20];
  v5 = v0[9];

  return v7(v5, &unk_1004D2758, v4);
}

uint64_t sub_1002732CC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = sub_1002736F8;
  }

  else
  {
    v6 = v2[20];
    v7 = v2[4];

    v5 = sub_100273488;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002733F4()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[19];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100273488()
{
  v1 = v0[13];
  (*(v0[7] + 104))(v0[8], enum case for CloudKitCoordinator.Database.private(_:), v0[6]);

  return _swift_task_switch(sub_100273510, v1, 0);
}

uint64_t sub_100273510()
{
  v1 = *(v0[13] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_1002735C0;
  v4 = v0[8];
  v5 = v0[9];

  return v7(v5, v4);
}

uint64_t sub_1002735C0()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = sub_100273AD8;
  }

  else
  {
    v6 = v2[4];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5 = sub_1002737EC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002736F8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 32);

  return _swift_task_switch(sub_100273764, v2, 0);
}

uint64_t sub_100273764()
{
  v1 = v0[13];

  v2 = v0[22];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002737EC()
{
  v20 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  sub_10000A6F0(v0[17], qword_1005DFF88);
  sub_10027499C(v2, v1, type metadata accessor for FenceRecord);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[9];
  v8 = v0[5];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10000D01C(0xD000000000000012, 0x80000001004E6510, &v19);
    *(v9 + 12) = 2082;
    type metadata accessor for UUID();
    sub_1000094D0(&qword_1005A92C0, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100274A04(v8, type metadata accessor for FenceRecord);
    v13 = sub_10000D01C(v10, v12, &v19);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s succeed with record: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100274A04(v8, type metadata accessor for FenceRecord);
  }

  sub_100002CE0(v7, &qword_1005AF228, &unk_1004D0440);
  v14 = v0[8];
  v15 = v0[9];
  v16 = v0[5];
  sub_10027499C(v0[3], v0[2], type metadata accessor for FenceRecord);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100273AD8()
{
  v1 = v0[4];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return _swift_task_switch(sub_100273B54, v1, 0);
}

uint64_t sub_100273B54()
{
  v1 = v0[13];
  v2 = v0[9];

  sub_100002CE0(v2, &qword_1005AF228, &unk_1004D0440);
  v3 = v0[24];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100273BF8()
{
  v1 = v0[11];

  v2 = v0[14];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100273C80(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to CloudKitChangeSet.Adaptor.create<A>(record:)[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FenceRecord();
  v7 = sub_1000094D0(&qword_1005AF238, type metadata accessor for FenceRecord);
  *v5 = v2;
  v5[1] = sub_10000368C;

  return CloudKitChangeSet.Adaptor.create<A>(record:)(a2, v6, v7);
}

uint64_t sub_100273D74(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to CloudKitChangeSet.Adaptor.delete<A>(record:)[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FenceRecord();
  v7 = sub_1000094D0(&qword_1005AF238, type metadata accessor for FenceRecord);
  *v5 = v2;
  v5[1] = sub_100003690;

  return CloudKitChangeSet.Adaptor.delete<A>(record:)(a2, v6, v7);
}

unint64_t sub_100273E68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10001145C(a1, a2, v6);
}

uint64_t sub_100273EE0(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003788;

  return v5();
}

uint64_t sub_100273FC8(uint64_t a1)
{
  v4 = *(type metadata accessor for Fence() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_10026BCD8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002740F8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100003690;

  return sub_10026D57C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1002741D0()
{
  v2 = *(type metadata accessor for PersonHandle() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for FenceRecord() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Fence() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + v4);
  v13 = *(v0 + v7);
  v14 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v1 + 16) = v15;
  *v15 = v1;
  v15[1] = sub_10000368C;

  return sub_10026DC44(v10, v11, v0 + v3, v12, v0 + v6, v13, v0 + v9);
}

unint64_t sub_1002743D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B00C8, &qword_1004D1658);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100273E68(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002744D8()
{
  result = qword_1005AE728;
  if (!qword_1005AE728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005AE728);
  }

  return result;
}

uint64_t sub_100274524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100273C80(a1, v4);
}

uint64_t sub_1002745C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_100273D74(a1, v4);
}

uint64_t sub_10027467C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_100271DB8(a1, a2, v6, v7, v8);
}

uint64_t sub_100274740()
{
  v1 = type metadata accessor for Fence();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100274818()
{
  v2 = *(type metadata accessor for Fence() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_10027224C(v4, v5, v6, v0 + v3);
}

uint64_t sub_100274934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027499C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100274A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100274A6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000368C;

  return sub_10026ED20(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_100274BA4(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + v6);
  v13 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000368C;

  return sub_10026E720(a1, v7, v8, v9, v10, v11, v1 + v5, v12);
}

uint64_t sub_100274D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_10004B564(&qword_1005B0B98, &qword_1004D27F0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for Fence.TriggerPosition();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v4[14] = v9;
  v10 = *(v9 - 8);
  v4[15] = v10;
  v11 = *(v10 + 64) + 15;
  v4[16] = swift_task_alloc();
  v12 = type metadata accessor for Fence.Schedule.Matcher();
  v4[17] = v12;
  v13 = *(v12 - 8);
  v4[18] = v13;
  v14 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005B0BB0, &qword_1004D2830) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v16 = type metadata accessor for DateInterval();
  v4[21] = v16;
  v17 = *(v16 - 8);
  v4[22] = v17;
  v18 = *(v17 + 64) + 15;
  v4[23] = swift_task_alloc();
  v19 = type metadata accessor for Fence.Variant();
  v4[24] = v19;
  v20 = *(v19 - 8);
  v4[25] = v20;
  v21 = *(v20 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v22 = type metadata accessor for Fence.Schedule();
  v4[28] = v22;
  v23 = *(v22 - 8);
  v4[29] = v23;
  v24 = *(v23 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v25 = *(*(sub_10004B564(&qword_1005B0B00, &qword_1004D26A0) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v26 = type metadata accessor for Fence.TriggerID();
  v4[33] = v26;
  v27 = *(v26 - 8);
  v4[34] = v27;
  v28 = *(v27 + 64) + 15;
  v4[35] = swift_task_alloc();
  v29 = type metadata accessor for Fence.ID();
  v4[36] = v29;
  v30 = *(v29 - 8);
  v4[37] = v30;
  v31 = *(v30 + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v32 = *(*(sub_10004B564(&qword_1005B09D0, &unk_1004D2380) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v33 = type metadata accessor for Fence();
  v4[44] = v33;
  v34 = *(v33 - 8);
  v4[45] = v34;
  v35 = *(v34 + 64) + 15;
  v4[46] = swift_task_alloc();
  v36 = async function pointer to daemon.getter[1];
  v37 = swift_task_alloc();
  v4[47] = v37;
  *v37 = v4;
  v37[1] = sub_10027522C;

  return daemon.getter();
}

uint64_t sub_10027522C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 376);
  v12 = *v1;
  v3[48] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[49] = v6;
  v7 = type metadata accessor for Daemon();
  v3[50] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[51] = v9;
  v10 = sub_100009518(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10027540C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10027540C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  if (v1)
  {
    v7 = v4[5];

    return _swift_task_switch(sub_100277D38, v7, 0);
  }

  else
  {
    v8 = v4[48];

    v9 = swift_task_alloc();
    v4[54] = v9;
    *v9 = v6;
    v9[1] = sub_10027559C;
    v10 = v4[43];
    v11 = v4[2];

    return sub_10020ED50(v10, v11);
  }
}

uint64_t sub_10027559C()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1002756AC, v2, 0);
}

uint64_t sub_1002756AC()
{
  v85 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B09D0, &unk_1004D2380);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v5 = v0[37];
    v4 = v0[38];
    v6 = v0[36];
    v7 = v0[2];
    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFF88);
    (*(v5 + 16))(v4, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[37];
    v12 = v0[38];
    v14 = v0[36];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E6740, &v84);
      *(v15 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      v19 = sub_10000D01C(v16, v18, &v84);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Fence %{public}s trigger was received, but no fence is found!", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v50 = v0[52];
    v51 = sub_10004D308(v0[4]);
    sub_10001157C(v51, v52, v53);

    v54 = v0[46];
    v56 = v0[42];
    v55 = v0[43];
    v58 = v0[40];
    v57 = v0[41];
    v60 = v0[38];
    v59 = v0[39];
    v61 = v0[35];
    v62 = v0[31];
    v63 = v0[32];
    v68 = v0[30];
    v69 = v0[27];
    v70 = v0[26];
    v71 = v0[23];
    v72 = v0[20];
    v73 = v0[19];
    v74 = v0[16];
    v75 = v0[13];
    v76 = v0[12];
    v78 = v0[11];
    loga = v0[10];
    v82 = v0[9];
    v83 = v0[6];

    v64 = v0[1];

    return v64();
  }

  else
  {
    (*(v2 + 32))(v0[46], v3, v1);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v20 = v0[42];
    v21 = v0[36];
    v22 = v0[37];
    v24 = v0[34];
    v23 = v0[35];
    v25 = v0[33];
    v27 = v0[2];
    v26 = v0[3];
    v28 = type metadata accessor for Logger();
    v0[55] = sub_10000A6F0(v28, qword_1005DFF88);
    v29 = *(v22 + 16);
    v0[56] = v29;
    v0[57] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v20, v27, v21);
    (*(v24 + 16))(v23, v26, v25);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[42];
    v35 = v0[36];
    v34 = v0[37];
    v36 = v0[34];
    v37 = v0[35];
    v38 = v0[33];
    if (v32)
    {
      v81 = v31;
      v39 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v39 = 136446722;
      *(v39 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E6740, &v84);
      *(v39 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v38;
      log = v30;
      v41 = v37;
      v43 = v42;
      v44 = *(v34 + 8);
      v44(v33, v35);
      v45 = sub_10000D01C(v40, v43, &v84);

      *(v39 + 14) = v45;
      *(v39 + 22) = 2082;
      sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v36 + 8))(v41, v77);
      v49 = sub_10000D01C(v46, v48, &v84);

      *(v39 + 24) = v49;
      _os_log_impl(&_mh_execute_header, log, v81, "%{public}s Fence %{public}s trigger was received (%{public}s)", v39, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v36 + 8))(v37, v38);
      v44 = *(v34 + 8);
      v44(v33, v35);
    }

    v0[58] = v44;
    v66 = async function pointer to daemon.getter[1];
    v67 = swift_task_alloc();
    v0[59] = v67;
    *v67 = v0;
    v67[1] = sub_100275E2C;

    return daemon.getter();
  }
}

uint64_t sub_100275E2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 472);
  v5 = *v1;
  v3[60] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[61] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v7 = v5;
  v7[1] = sub_100275FE0;
  v10 = v3[51];
  v11 = v3[50];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100275FE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 488);
  v10 = *v2;
  v3[62] = a1;
  v3[63] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_100277ED0;
  }

  else
  {
    v7 = v3[60];
    v8 = v3[5];

    v6 = sub_100276108;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100276108()
{
  v78 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  Fence.variant.getter();
  v5 = *(v4 + 88);
  *(v0 + 512) = v5;
  *(v0 + 520) = (v4 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v6 = v5(v2, v3);
  v7 = enum case for Fence.Variant.oneTime(_:);
  *(v0 + 608) = enum case for Fence.Variant.oneTime(_:);
  v8 = enum case for Fence.Variant.recurring(_:);
  *(v0 + 612) = enum case for Fence.Variant.recurring(_:);
  if (v6 == v7 || v6 == v8)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
LABEL_7:
    v11 = *(v0 + 448);
    v10 = *(v0 + 456);
    v74 = *(v0 + 440);
    v12 = *(v0 + 312);
    v13 = *(v0 + 288);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 56);
    v17 = *(v0 + 32);
    v18 = *(v0 + 16);
    (*(v15 + 56))(*(v0 + 256), 1, 1, v16);
    v11(v12, v18, v13);
    (*(v15 + 16))(v14, v17, v16);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 464);
    v23 = *(v0 + 312);
    v24 = *(v0 + 288);
    v25 = *(v0 + 296);
    if (v21)
    {
      v75 = v20;
      v26 = *(v0 + 128);
      v65 = *(v0 + 120);
      v67 = *(v0 + 112);
      v64 = *(v0 + 72);
      v69 = *(v0 + 64);
      v71 = *(v0 + 56);
      v27 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v27 = 136446722;
      *(v27 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E6740, &v77);
      *(v27 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v22(v23, v24);
      v31 = sub_10000D01C(v28, v30, &v77);

      *(v27 + 14) = v31;
      *(v27 + 22) = 2082;
      sub_1002787C8(v26);
      v32 = Date.localISO8601.getter();
      v34 = v33;
      (*(v65 + 8))(v26, v67);
      (*(v69 + 8))(v64, v71);
      v35 = sub_10000D01C(v32, v34, &v77);

      *(v27 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v19, v75, "%{public}s Scheduled fence %{public}s is triggered for the first time in current schedule interval at: %{public}s", v27, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v48 = *(v0 + 64);
      v47 = *(v0 + 72);
      v49 = *(v0 + 56);

      (*(v48 + 8))(v47, v49);
      v22(v23, v24);
    }

    v50 = swift_task_alloc();
    *(v0 + 568) = v50;
    *v50 = v0;
    v50[1] = sub_100277230;
    v51 = *(v0 + 368);
    v52 = *(v0 + 256);
    v53 = *(v0 + 32);
    v54 = *(v0 + 40);
    v55 = *(v0 + 24);

    return sub_10028C668(v51, v55, v53, v52);
  }

  if (v6 != enum case for Fence.Variant.scheduled(_:))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v37 = *(v0 + 240);
  v36 = *(v0 + 248);
  v39 = *(v0 + 224);
  v38 = *(v0 + 232);
  v40 = *(v0 + 216);
  v73 = *(v0 + 176);
  v76 = *(v0 + 168);
  v41 = *(v0 + 152);
  v42 = *(v0 + 144);
  v72 = *(v0 + 136);
  v43 = *(v0 + 120);
  v44 = *(v0 + 128);
  v68 = *(v0 + 160);
  v70 = *(v0 + 112);
  v66 = *(v0 + 32);
  (*(*(v0 + 200) + 96))(v40, *(v0 + 192));
  (*(v38 + 32))(v36, v40, v39);
  (*(v38 + 16))(v37, v36, v39);
  Fence.Schedule.Matcher.init(schedule:)();
  sub_1002787C8(v44);
  Fence.Schedule.Matcher.interval(containingDate:)();
  v45 = *(v43 + 8);
  *(v0 + 528) = v45;
  *(v0 + 536) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45(v44, v70);
  (*(v42 + 8))(v41, v72);
  if ((*(v73 + 48))(v68, 1, v76) == 1)
  {
    v46 = *(v0 + 160);
    (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
    sub_100002CE0(v46, &qword_1005B0BB0, &qword_1004D2830);
    goto LABEL_7;
  }

  v57 = *(v0 + 368);
  v58 = *(v0 + 328);
  (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
  Fence.id.getter();
  v59 = swift_task_alloc();
  *(v0 + 544) = v59;
  *v59 = v0;
  v59[1] = sub_10027678C;
  v60 = *(v0 + 496);
  v61 = *(v0 + 328);
  v62 = *(v0 + 184);
  v63 = *(v0 + 48);

  return sub_100306C9C(v63, v61, v62);
}

uint64_t sub_10027678C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  v2[69] = v0;

  v5 = v2[58];
  v6 = v2[41];
  v7 = v2[36];
  v8 = v2[5];
  if (v0)
  {
    v5(v6, v7);
    v9 = sub_1002780E8;
  }

  else
  {
    v2[70] = (v2[37] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v6, v7);
    v9 = sub_100276934;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100276934()
{
  v117 = v0;
  v1 = v0[6];
  v2 = type metadata accessor for FenceTriggerRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[31];
    v4 = v0[28];
    v5 = v0[29];
    (*(v0[22] + 8))(v0[23], v0[21]);
    (*(v5 + 8))(v3, v4);
    sub_100002CE0(v1, &qword_1005B0B98, &qword_1004D27F0);
    v7 = v0[56];
    v6 = v0[57];
    v112 = v0[55];
    v8 = v0[39];
    v9 = v0[36];
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    v13 = v0[4];
    v14 = v0[2];
    (*(v11 + 56))(v0[32], 1, 1, v12);
    v7(v8, v14, v9);
    (*(v11 + 16))(v10, v13, v12);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[58];
    v19 = v0[39];
    v20 = v0[36];
    v21 = v0[37];
    if (v17)
    {
      v113 = v16;
      v22 = v0[16];
      v93 = v0[15];
      v97 = v0[14];
      v89 = v0[9];
      v101 = v0[8];
      v105 = v0[7];
      v23 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v23 = 136446722;
      *(v23 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E6740, &v116);
      *(v23 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v18(v19, v20);
      v27 = sub_10000D01C(v24, v26, &v116);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2082;
      sub_1002787C8(v22);
      v28 = Date.localISO8601.getter();
      v30 = v29;
      (*(v93 + 8))(v22, v97);
      (*(v101 + 8))(v89, v105);
      v31 = sub_10000D01C(v28, v30, &v116);

      *(v23 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v15, v113, "%{public}s Scheduled fence %{public}s is triggered for the first time in current schedule interval at: %{public}s", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = v0[8];
      v61 = v0[9];
      v63 = v0[7];

      (*(v62 + 8))(v61, v63);
      v18(v19, v20);
    }
  }

  else
  {
    v109 = v0[57];
    v102 = v0[56];
    v114 = v0[55];
    v98 = v0[36];
    v32 = v0[32];
    v34 = v0[12];
    v33 = v0[13];
    v90 = v0[40];
    v94 = v0[11];
    v106 = v0[10];
    v36 = v0[7];
    v35 = v0[8];
    v87 = v0[4];
    v37 = v0[2];
    v38 = *(v35 + 16);
    v38(v34, v1 + *(v2 + 24), v36);
    sub_100293A10(v1, type metadata accessor for FenceTriggerRecord);
    (*(v35 + 32))(v33, v34, v36);
    v38(v32, v33, v36);
    (*(v35 + 56))(v32, 0, 1, v36);
    v102(v90, v37, v98);
    v38(v94, v87, v36);
    v38(v106, v33, v36);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v115 = v0[70];
    if (v41)
    {
      v83 = v0[66];
      v84 = v0[67];
      v80 = v0[58];
      log = v39;
      v42 = v0[40];
      v43 = v0[36];
      v110 = v0[31];
      v103 = v0[29];
      v107 = v0[28];
      v95 = v0[21];
      v99 = v0[23];
      v44 = v0[16];
      v88 = v0[13];
      v91 = v0[22];
      v45 = v0[11];
      v85 = v0[10];
      v46 = v0[8];
      v81 = v0[14];
      v82 = v0[7];
      v47 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v47 = 136446978;
      *(v47 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E6740, &v116);
      *(v47 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v80(v42, v43);
      v51 = sub_10000D01C(v48, v50, &v116);

      *(v47 + 14) = v51;
      *(v47 + 22) = 2082;
      sub_1002787C8(v44);
      v52 = Date.localISO8601.getter();
      v54 = v53;
      v83(v44, v81);
      v55 = *(v46 + 8);
      v55(v45, v82);
      v56 = sub_10000D01C(v52, v54, &v116);

      *(v47 + 24) = v56;
      *(v47 + 32) = 2082;
      sub_100009518(&qword_1005AE810, &type metadata accessor for Fence.TriggerPosition);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v55(v85, v82);
      v60 = sub_10000D01C(v57, v59, &v116);

      *(v47 + 34) = v60;
      _os_log_impl(&_mh_execute_header, log, v40, "%{public}s Scheduled fence %{public}s was triggered earlier in the current schedule interval at: %{public}s previousPosition: %{public}s", v47, 0x2Au);
      swift_arrayDestroy();

      v55(v88, v82);
      (*(v91 + 8))(v99, v95);
      (*(v103 + 8))(v110, v107);
    }

    else
    {
      v92 = v0[40];
      v96 = v0[58];
      v64 = v0[36];
      v111 = v0[31];
      v65 = v0[29];
      v66 = v0[22];
      v104 = v0[23];
      v108 = v0[28];
      v100 = v0[21];
      v67 = v0[13];
      v68 = v0[10];
      v69 = v0[11];
      v70 = v0[7];
      v71 = v0[8];

      v72 = *(v71 + 8);
      v72(v68, v70);
      v72(v69, v70);
      v96(v92, v64);
      v72(v67, v70);
      (*(v66 + 8))(v104, v100);
      (*(v65 + 8))(v111, v108);
    }
  }

  v73 = swift_task_alloc();
  v0[71] = v73;
  *v73 = v0;
  v73[1] = sub_100277230;
  v74 = v0[46];
  v75 = v0[32];
  v76 = v0[4];
  v77 = v0[5];
  v78 = v0[3];

  return sub_10028C668(v74, v78, v76, v75);
}

uint64_t sub_100277230()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100278340;
  }

  else
  {
    v6 = sub_10027735C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10027735C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 368);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  Fence.variant.getter();
  v7 = v3(v5, v6);
  if (v7 == v1)
  {
    v8 = swift_task_alloc();
    *(v0 + 584) = v8;
    *v8 = v0;
    v8[1] = sub_1002776D4;
    v9 = *(v0 + 40);
    v10 = *(v0 + 16);

    return sub_100288628(v10);
  }

  else
  {
    v12 = v7;
    v13 = *(v0 + 612);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    if (v12 == v13 || v12 == enum case for Fence.Variant.scheduled(_:))
    {
      v34 = swift_task_alloc();
      *(v0 + 600) = v34;
      *v34 = v0;
      v34[1] = sub_100277A20;
      v35 = *(v0 + 32);
      v36 = *(v0 + 40);
      v38 = *(v0 + 16);
      v37 = *(v0 + 24);

      return sub_100289330(v38, v35, v37);
    }

    else
    {
      v14 = *(v0 + 496);
      v15 = *(v0 + 416);
      v17 = *(v0 + 360);
      v16 = *(v0 + 368);
      v18 = *(v0 + 352);
      v19 = *(v0 + 256);
      v20 = sub_10004D318(*(v0 + 32), 0, 0);
      sub_10001157C(v20, v21, v22);

      sub_100002CE0(v19, &qword_1005B0B00, &qword_1004D26A0);
      (*(v17 + 8))(v16, v18);
      v23 = *(v0 + 368);
      v25 = *(v0 + 336);
      v24 = *(v0 + 344);
      v27 = *(v0 + 320);
      v26 = *(v0 + 328);
      v29 = *(v0 + 304);
      v28 = *(v0 + 312);
      v30 = *(v0 + 280);
      v31 = *(v0 + 248);
      v32 = *(v0 + 256);
      v39 = *(v0 + 240);
      v40 = *(v0 + 216);
      v41 = *(v0 + 208);
      v42 = *(v0 + 184);
      v43 = *(v0 + 160);
      v44 = *(v0 + 152);
      v45 = *(v0 + 128);
      v46 = *(v0 + 104);
      v47 = *(v0 + 96);
      v48 = *(v0 + 88);
      v49 = *(v0 + 80);
      v50 = *(v0 + 72);
      v51 = *(v0 + 48);

      v33 = *(v0 + 8);

      return v33();
    }
  }
}

uint64_t sub_1002776D4()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100278574;
  }

  else
  {
    v6 = sub_100277800;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100277800()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1 = v0[62];
  v2 = v0[52];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v6 = v0[32];
  v7 = sub_10004D318(v0[4], 0, 0);
  sub_10001157C(v7, v8, v9);

  sub_100002CE0(v6, &qword_1005B0B00, &qword_1004D26A0);
  (*(v4 + 8))(v3, v5);
  v10 = v0[46];
  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[40];
  v13 = v0[41];
  v16 = v0[38];
  v15 = v0[39];
  v17 = v0[35];
  v18 = v0[31];
  v19 = v0[32];
  v22 = v0[30];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[23];
  v26 = v0[20];
  v27 = v0[19];
  v28 = v0[16];
  v29 = v0[13];
  v30 = v0[12];
  v31 = v0[11];
  v32 = v0[10];
  v33 = v0[9];
  v34 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100277A20()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100277B30, v2, 0);
}

uint64_t sub_100277B30()
{
  v1 = v0[62];
  v2 = v0[52];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v6 = v0[32];
  v7 = sub_10004D318(v0[4], 0, 0);
  sub_10001157C(v7, v8, v9);

  sub_100002CE0(v6, &qword_1005B0B00, &qword_1004D26A0);
  (*(v4 + 8))(v3, v5);
  v10 = v0[46];
  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[40];
  v13 = v0[41];
  v16 = v0[38];
  v15 = v0[39];
  v17 = v0[35];
  v18 = v0[31];
  v19 = v0[32];
  v22 = v0[30];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[23];
  v26 = v0[20];
  v27 = v0[19];
  v28 = v0[16];
  v29 = v0[13];
  v30 = v0[12];
  v31 = v0[11];
  v32 = v0[10];
  v33 = v0[9];
  v34 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100277D38()
{
  v1 = v0[48];

  v27 = v0[53];
  v2 = v0[46];
  v4 = v0[42];
  v3 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[35];
  v11 = v0[31];
  v10 = v0[32];
  v14 = v0[30];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[23];
  v18 = v0[20];
  v19 = v0[19];
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[12];
  v23 = v0[11];
  v24 = v0[10];
  v25 = v0[9];
  v26 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100277ED0()
{
  v1 = v0[60];

  v2 = v0[63];
  v3 = v0[52];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
  v7 = v0[4];
  swift_errorRetain();
  v8 = sub_10004D318(v7, v2, 1);
  v10 = v9;
  v12 = v11;

  sub_10001157C(v8, v10, v12);

  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  v13 = v0[46];
  v15 = v0[42];
  v14 = v0[43];
  v17 = v0[40];
  v16 = v0[41];
  v18 = v0[38];
  v19 = v0[39];
  v20 = v0[35];
  v21 = v0[32];
  v24 = v0[31];
  v25 = v0[30];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[23];
  v29 = v0[20];
  v30 = v0[19];
  v31 = v0[16];
  v32 = v0[13];
  v33 = v0[12];
  v34 = v0[11];
  v35 = v0[10];
  v36 = v0[9];
  v37 = v0[6];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1002780E8()
{
  v1 = v0[62];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = v0[69];
  v9 = v0[52];
  v11 = v0[45];
  v10 = v0[46];
  v12 = v0[44];
  v13 = v0[4];
  swift_errorRetain();
  v14 = sub_10004D318(v13, v8, 1);
  v16 = v15;
  v18 = v17;

  sub_10001157C(v14, v16, v18);

  swift_willThrow();

  (*(v11 + 8))(v10, v12);
  v19 = v0[46];
  v21 = v0[42];
  v20 = v0[43];
  v23 = v0[40];
  v22 = v0[41];
  v24 = v0[38];
  v25 = v0[39];
  v26 = v0[35];
  v27 = v0[32];
  v30 = v0[31];
  v31 = v0[30];
  v32 = v0[27];
  v33 = v0[26];
  v34 = v0[23];
  v35 = v0[20];
  v36 = v0[19];
  v37 = v0[16];
  v38 = v0[13];
  v39 = v0[12];
  v40 = v0[11];
  v41 = v0[10];
  v42 = v0[9];
  v43 = v0[6];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100278340()
{
  v1 = v0[62];
  v2 = v0[32];

  sub_100002CE0(v2, &qword_1005B0B00, &qword_1004D26A0);
  v3 = v0[72];
  v4 = v0[52];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[44];
  v8 = v0[4];
  swift_errorRetain();
  v9 = sub_10004D318(v8, v3, 1);
  v11 = v10;
  v13 = v12;

  sub_10001157C(v9, v11, v13);

  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  v14 = v0[46];
  v16 = v0[42];
  v15 = v0[43];
  v18 = v0[40];
  v17 = v0[41];
  v19 = v0[38];
  v20 = v0[39];
  v21 = v0[35];
  v22 = v0[32];
  v25 = v0[31];
  v26 = v0[30];
  v27 = v0[27];
  v28 = v0[26];
  v29 = v0[23];
  v30 = v0[20];
  v31 = v0[19];
  v32 = v0[16];
  v33 = v0[13];
  v34 = v0[12];
  v35 = v0[11];
  v36 = v0[10];
  v37 = v0[9];
  v38 = v0[6];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100278574()
{
  v1 = v0[62];
  v2 = v0[32];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];

  sub_100002CE0(v2, &qword_1005B0B00, &qword_1004D26A0);
  (*(v4 + 8))(v3, v5);
  v6 = v0[74];
  v7 = v0[52];
  v9 = v0[45];
  v8 = v0[46];
  v10 = v0[44];
  v11 = v0[4];
  swift_errorRetain();
  v12 = sub_10004D318(v11, v6, 1);
  v14 = v13;
  v16 = v15;

  sub_10001157C(v12, v14, v16);

  swift_willThrow();

  (*(v9 + 8))(v8, v10);
  v17 = v0[46];
  v19 = v0[42];
  v18 = v0[43];
  v21 = v0[40];
  v20 = v0[41];
  v22 = v0[38];
  v23 = v0[39];
  v24 = v0[35];
  v25 = v0[32];
  v28 = v0[31];
  v29 = v0[30];
  v30 = v0[27];
  v31 = v0[26];
  v32 = v0[23];
  v33 = v0[20];
  v34 = v0[19];
  v35 = v0[16];
  v36 = v0[13];
  v37 = v0[12];
  v38 = v0[11];
  v39 = v0[10];
  v40 = v0[9];
  v41 = v0[6];

  v26 = v0[1];

  return v26();
}

void sub_1002787C8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Fence.TriggerPosition();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for Fence.TriggerPosition.inside(_:) || v9 == enum case for Fence.TriggerPosition.outside(_:))
  {
    (*(v5 + 96))(v8, v4);
    v11 = *v8;
    v12 = [v11 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else if (v9 == enum case for Fence.TriggerPosition.undetermined(_:))
  {
    (*(v5 + 96))(v8, v4);
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 32))(a1, v8, v13);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1002789EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  v6 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v5[8] = v6;
  v5[9] = *(v6 + 64);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for Fence.TriggerPosition();
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v5[13] = *(v8 + 64);
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for Fence.ID();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v5[17] = *(v10 + 64);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_100278BB4, v4, 0);
}

uint64_t sub_100278BB4()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v21 = v1;
  v24 = v0[17];
  v25 = v0[13];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v23 = v0[8];
  v26 = v0[9];
  v27 = v0[7];
  v19 = v0[5];
  v20 = v6;
  v8 = v0[3];
  v18 = v0[4];
  v29 = *(v0[6] + OBJC_IVAR____TtC13findmylocated12FenceService_triggerWorkItemQueue);
  v22 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v1, v8, v3);
  (*(v5 + 16))(v4, v18, v6);
  sub_100005F04(v19, v7, &qword_1005A9148, &qword_1004D2370);
  v9 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v10 = (v24 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = (v25 + *(v23 + 80) + v10) & ~*(v23 + 80);
  v12 = swift_allocObject();
  v0[19] = v12;
  *(v12 + 16) = v22;
  (*(v2 + 32))(v12 + v9, v21, v3);
  (*(v5 + 32))(v12 + v10, v4, v20);
  sub_1000176A8(v7, v12 + v11, &qword_1005A9148, &qword_1004D2370);
  *(v12 + ((v26 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  v13 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v28 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));
  v14 = swift_task_alloc();
  v0[20] = v14;
  v15 = sub_10004B564(&qword_1005B09C8, &qword_1004D2378);
  *v14 = v0;
  v14[1] = sub_100278E4C;
  v16 = v0[2];

  return v28(v16, &unk_1004D2888, v12, v15);
}

uint64_t sub_100278E4C()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {
    v4 = v3[6];

    return _swift_task_switch(sub_100278FB8, v4, 0);
  }

  else
  {
    v6 = v3[18];
    v5 = v3[19];
    v7 = v3[14];
    v8 = v3[10];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_100278FB8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[10];

  v5 = v0[1];
  v6 = v0[21];

  return v5();
}

uint64_t sub_100279044()
{
  PersonHandle.id.getter();
  sub_1000246F4();
  v0 = StringProtocol.components<A>(separatedBy:)();

  v1 = *(v0 + 16);

  PersonHandle.id.getter();
  if (v1 == 2)
  {
    return Destination.init(email:)();
  }

  else
  {
    return Destination.init(phoneNumber:)();
  }
}

uint64_t sub_1002790EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v3[6] = v4;
  v3[7] = *(v4 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005B09C8, &qword_1004D2378);
  v3[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for Fence.TriggerPosition();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v3[18] = *(v11 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005B0B98, &qword_1004D27F0);
  v3[21] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v14 = type metadata accessor for FenceTriggerRecord();
  v3[23] = v14;
  v15 = *(v14 - 8);
  v3[24] = v15;
  v16 = *(v15 + 64) + 15;
  v3[25] = swift_task_alloc();
  v17 = type metadata accessor for Fence.AcceptanceStatus();
  v3[26] = v17;
  v18 = *(v17 - 8);
  v3[27] = v18;
  v19 = *(v18 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v20 = type metadata accessor for Fence.ID();
  v3[30] = v20;
  v21 = *(v20 - 8);
  v3[31] = v21;
  v3[32] = *(v21 + 64);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v22 = type metadata accessor for Fence();
  v3[37] = v22;
  v23 = *(v22 - 8);
  v3[38] = v23;
  v24 = *(v23 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v25 = type metadata accessor for Fence.Participant();
  v3[44] = v25;
  v26 = *(v25 - 8);
  v3[45] = v26;
  v27 = *(v26 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v28 = type metadata accessor for Fence.Variant();
  v3[48] = v28;
  v29 = *(v28 - 8);
  v3[49] = v29;
  v30 = *(v29 + 64) + 15;
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_1002795E0, v2, 0);
}

uint64_t sub_1002795E0()
{
  v112 = v0;
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[3];
  Fence.variant.getter();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for Fence.Variant.oneTime(_:))
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v6 = v0[43];
    v7 = v0[37];
    v8 = v0[38];
    v9 = v0[3];
    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFF88);
    (*(v8 + 16))(v6, v9, v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[43];
    v15 = v0[37];
    v16 = v0[38];
    if (v13)
    {
      v17 = v0[36];
      v107 = v12;
      v18 = v0[30];
      v19 = v0[31];
      v20 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v20 = 136446466;
      *(v20 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E6710, &v111);
      *(v20 + 12) = 2082;
      v103 = v15;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v19 + 8))(v17, v18);
      (*(v16 + 8))(v14, v103);
      v24 = sub_10000D01C(v21, v23, &v111);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v11, v107, "%{public}s Trying to trigger fence %{public}s which is not recurring", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v41 = v0[49];
    v40 = v0[50];
    v42 = v0[48];
    v43 = v0[2];
    v44 = type metadata accessor for Fence.TriggerID();
    (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
    (*(v41 + 8))(v40, v42);
    goto LABEL_29;
  }

  if (v5 != enum case for Fence.Variant.recurring(_:) && v5 != enum case for Fence.Variant.scheduled(_:))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v26 = v0[47];
  v28 = v0[45];
  v27 = v0[46];
  v29 = v0[44];
  v30 = v0[3];
  (*(v0[49] + 8))(v0[50], v0[48]);
  Fence.findee.getter();
  (*(v28 + 104))(v27, enum case for Fence.Participant.me(_:), v29);
  LOBYTE(v30) = static Fence.Participant.== infix(_:_:)();
  v31 = *(v28 + 8);
  v31(v27, v29);
  v31(v26, v29);
  if ((v30 & 1) == 0)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v47 = v0[38];
    v46 = v0[39];
    v48 = v0[37];
    v49 = v0[3];
    v50 = type metadata accessor for Logger();
    sub_10000A6F0(v50, qword_1005DFF88);
    (*(v47 + 16))(v46, v49, v48);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    v53 = os_log_type_enabled(v51, v52);
    v55 = v0[38];
    v54 = v0[39];
    v56 = v0[37];
    if (v53)
    {
      v57 = v0[36];
      v108 = v52;
      v58 = v0[30];
      v59 = v0[31];
      v60 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v60 = 136446466;
      *(v60 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E6710, &v111);
      *(v60 + 12) = 2082;
      v104 = v56;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v59 + 8))(v57, v58);
      (*(v55 + 8))(v54, v104);
      v64 = sub_10000D01C(v61, v63, &v111);

      *(v60 + 14) = v64;
      v65 = "%{public}s Trying to trigger fence %{public}s which we are not the findee for";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v51, v108, v65, v60, 0x16u);
      swift_arrayDestroy();

LABEL_28:
      v80 = v0[2];
      v81 = type metadata accessor for Fence.TriggerID();
      (*(*(v81 - 8) + 56))(v80, 1, 1, v81);
LABEL_29:
      v82 = v0[50];
      v84 = v0[46];
      v83 = v0[47];
      v86 = v0[42];
      v85 = v0[43];
      v88 = v0[40];
      v87 = v0[41];
      v89 = v0[39];
      v90 = v0[35];
      v91 = v0[36];
      v93 = v0[34];
      v94 = v0[33];
      v95 = v0[29];
      v96 = v0[28];
      v97 = v0[25];
      v98 = v0[22];
      v99 = v0[20];
      v100 = v0[19];
      v101 = v0[15];
      v102 = v0[14];
      v106 = v0[11];
      v109 = v0[9];
      v110 = v0[8];

      v92 = v0[1];

      return v92();
    }

LABEL_27:

    (*(v55 + 8))(v54, v56);
    goto LABEL_28;
  }

  v33 = v0[28];
  v32 = v0[29];
  v34 = v0[26];
  v35 = v0[27];
  v36 = v0[3];
  Fence.acceptanceStatus.getter();
  (*(v35 + 104))(v33, enum case for Fence.AcceptanceStatus.accepted(_:), v34);
  LOBYTE(v36) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v37 = *(v35 + 8);
  v37(v33, v34);
  v37(v32, v34);
  if ((v36 & 1) == 0)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v66 = v0[40];
    v67 = v0[37];
    v68 = v0[38];
    v69 = v0[3];
    v70 = type metadata accessor for Logger();
    sub_10000A6F0(v70, qword_1005DFF88);
    (*(v68 + 16))(v66, v69, v67);
    v51 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    v72 = os_log_type_enabled(v51, v71);
    v54 = v0[40];
    v56 = v0[37];
    v55 = v0[38];
    if (v72)
    {
      v73 = v0[36];
      v108 = v71;
      v74 = v0[30];
      v75 = v0[31];
      v60 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v60 = 136446466;
      *(v60 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E6710, &v111);
      *(v60 + 12) = 2082;
      v105 = v56;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      (*(v75 + 8))(v73, v74);
      (*(v55 + 8))(v54, v105);
      v79 = sub_10000D01C(v76, v78, &v111);

      *(v60 + 14) = v79;
      v65 = "%{public}s Trying to trigger fence %{public}s which we are not accepted";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v38 = async function pointer to daemon.getter[1];
  v39 = swift_task_alloc();
  v0[51] = v39;
  *v39 = v0;
  v39[1] = sub_10027A094;

  return daemon.getter();
}

uint64_t sub_10027A094(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 408);
  v12 = *v1;
  *(v3 + 416) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 424) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10027A270;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10027A270(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v10 = *v2;
  v3[54] = a1;
  v3[55] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_10027BFF0;
  }

  else
  {
    v7 = v3[52];
    v8 = v3[4];

    v6 = sub_10027A398;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10027A398()
{
  v1 = v0[54];
  v2 = v0[35];
  v3 = v0[3];
  Fence.id.getter();

  return _swift_task_switch(sub_10027A408, v1, 0);
}

uint64_t sub_10027A408()
{
  v1 = v0[54];
  v2 = v0[35];
  v3 = sub_100009518(&qword_1005AAB90, type metadata accessor for LocalStorageService);
  v0[56] = v3;
  v4 = swift_task_alloc();
  v0[57] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[58] = v6;
  *v6 = v0;
  v6[1] = sub_10027A540;
  v8 = v0[21];
  v7 = v0[22];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v1, v3, 0xD000000000000011, 0x80000001004E6620, sub_100293A80, v4, v8);
}

uint64_t sub_10027A540()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v13 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = v2[54];
    v5 = sub_10027ABB4;
  }

  else
  {
    v6 = v2[57];
    v7 = v2[35];
    v8 = v2[30];
    v9 = v2[31];
    v10 = v2[4];

    v11 = *(v9 + 8);
    v2[60] = v11;
    v2[61] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);
    v5 = sub_10027A6A4;
    v4 = v10;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10027A6A4()
{
  v64 = v0;
  v1 = v0[23];
  v2 = v0[22];
  if ((*(v0[24] + 48))(v2, 1, v1) == 1)
  {
    sub_100002CE0(v2, &qword_1005B0B98, &qword_1004D27F0);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v3 = v0[41];
    v4 = v0[37];
    v5 = v0[38];
    v6 = v0[3];
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFF88);
    (*(v5 + 16))(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v54 = v0[60];
      v56 = v0[61];
      v61 = v0[54];
      v10 = v0[41];
      v11 = v0[38];
      v58 = v0[37];
      v12 = v0[36];
      v13 = v0[30];
      v14 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E6710, &v63);
      *(v14 + 12) = 2082;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v54(v12, v13);
      (*(v11 + 8))(v10, v58);
      v18 = sub_10000D01C(v15, v17, &v63);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s Trying to trigger fence %{public}s but with no fenceTrigger info", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v28 = v0[54];
      v29 = v0[41];
      v30 = v0[37];
      v31 = v0[38];

      (*(v31 + 8))(v29, v30);
    }

    v32 = v0[2];
    v33 = type metadata accessor for Fence.TriggerID();
    (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
    v34 = v0[50];
    v36 = v0[46];
    v35 = v0[47];
    v38 = v0[42];
    v37 = v0[43];
    v40 = v0[40];
    v39 = v0[41];
    v41 = v0[39];
    v42 = v0[35];
    v43 = v0[36];
    v46 = v0[34];
    v47 = v0[33];
    v48 = v0[29];
    v49 = v0[28];
    v50 = v0[25];
    v51 = v0[22];
    v52 = v0[20];
    v53 = v0[19];
    v55 = v0[15];
    v57 = v0[14];
    v59 = v0[11];
    v60 = v0[9];
    v62 = v0[8];

    v44 = v0[1];

    return v44();
  }

  else
  {
    v19 = v0[54];
    v20 = v0[34];
    v21 = v0[25];
    v22 = v0[20];
    v23 = v0[16];
    v24 = v0[17];
    v25 = v0[3];
    sub_10029350C(v2, v21, type metadata accessor for FenceTriggerRecord);
    v26 = *(v1 + 24);
    v27 = *(v24 + 16);
    v0[62] = v27;
    v0[63] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v27(v22, v21 + v26, v23);
    Fence.id.getter();

    return _swift_task_switch(sub_10027ADDC, v19, 0);
  }
}

uint64_t sub_10027ABB4()
{
  v1 = v0[57];
  v2 = v0[35];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[4];

  (*(v4 + 8))(v2, v3);

  return _swift_task_switch(sub_10027AC48, v5, 0);
}

uint64_t sub_10027AC48()
{
  v1 = v0[54];

  v27 = v0[59];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[39];
  v11 = v0[35];
  v10 = v0[36];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[11];
  v25 = v0[9];
  v26 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10027ADDC()
{
  v1 = v0[56];
  v2 = v0[54];
  v3 = v0[34];
  v4 = swift_task_alloc();
  v0[64] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[65] = v6;
  *v6 = v0;
  v6[1] = sub_10027AEE0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v2, v1, 0xD000000000000017, 0x80000001004E65A0, sub_100274A64, v4, &type metadata for () + 8);
}

uint64_t sub_10027AEE0()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v9 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = *(v2 + 432);
    v5 = sub_10027B814;
  }

  else
  {
    v6 = *(v2 + 512);
    v7 = *(v2 + 432);

    v5 = sub_10027B008;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10027B008()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 32);
  (*(v0 + 480))(*(v0 + 272), *(v0 + 240));

  return _swift_task_switch(sub_10027B07C, v2, 0);
}

uint64_t sub_10027B07C()
{
  v103 = v0;
  v1 = v0[25];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  static Date.now.getter();
  sub_1001A6DD8(v3);
  Date.timeIntervalSince(_:)();
  v7 = v6;
  v8 = *(v5 + 8);
  v8(v3, v4);
  v8(v2, v4);
  if (v7 <= 3600.0)
  {
    v73 = v0[62];
    v75 = v0[63];
    v26 = v0[36];
    v27 = v0[31];
    v65 = v0[33];
    v66 = v0[30];
    v29 = v0[26];
    v28 = v0[27];
    v30 = v0[19];
    v69 = v30;
    v71 = v0[20];
    v87 = v0[18];
    v90 = v0[32];
    v78 = v0[17];
    v31 = v0[16];
    v32 = v0[9];
    v99 = v0[8];
    v81 = v0[6];
    v84 = v0[7];
    v33 = v0[4];
    v93 = v0[5];
    v34 = v0[3];
    Fence.id.getter();
    (*(v28 + 56))(v32, 1, 1, v29);
    v96 = *(v33 + OBJC_IVAR____TtC13findmylocated12FenceService_triggerWorkItemQueue);
    v67 = swift_allocObject();
    swift_weakInit();
    (*(v27 + 16))(v26, v65, v66);
    v73(v30, v71, v31);
    sub_100005F04(v32, v99, &qword_1005A9148, &qword_1004D2370);
    v35 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v36 = (v90 + *(v78 + 80) + v35) & ~*(v78 + 80);
    v37 = (v87 + *(v81 + 80) + v36) & ~*(v81 + 80);
    v38 = swift_allocObject();
    v0[67] = v38;
    *(v38 + 16) = v67;
    (*(v27 + 32))(v38 + v35, v26, v66);
    (*(v78 + 32))(v38 + v36, v69, v31);
    sub_1000176A8(v99, v38 + v37, &qword_1005A9148, &qword_1004D2370);
    *(v38 + ((v84 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v93;
    v39 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
    v100 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));
    v40 = swift_task_alloc();
    v0[68] = v40;
    *v40 = v0;
    v40[1] = sub_10027BA7C;
    v42 = v0[10];
    v41 = v0[11];

    return v100(v41, &unk_1004D2878, v38, v42);
  }

  else
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v9 = v0[42];
    v10 = v0[37];
    v11 = v0[38];
    v12 = v0[3];
    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005DFF88);
    (*(v11 + 16))(v9, v12, v10);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v77 = v0[60];
      v80 = v0[61];
      v95 = v0[54];
      v16 = v0[42];
      v17 = v0[38];
      v83 = v0[37];
      v18 = v0[36];
      v19 = v0[30];
      v98 = v0[25];
      v86 = v0[17];
      v89 = v0[16];
      v92 = v0[20];
      v20 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v20 = 136446466;
      *(v20 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E6710, &v102);
      *(v20 + 12) = 2082;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v77(v18, v19);
      (*(v17 + 8))(v16, v83);
      v24 = sub_10000D01C(v21, v23, &v102);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s Fence %{public}s should not trigger since it was accepted >1h after invitation.", v20, 0x16u);
      swift_arrayDestroy();

      (*(v86 + 8))(v92, v89);
      v25 = v98;
    }

    else
    {
      v44 = v0[54];
      v45 = v0[42];
      v46 = v0[37];
      v47 = v0[38];
      v48 = v0[25];
      v49 = v0[20];
      v50 = v0[16];
      v51 = v0[17];

      (*(v47 + 8))(v45, v46);
      (*(v51 + 8))(v49, v50);
      v25 = v48;
    }

    sub_100293A10(v25, type metadata accessor for FenceTriggerRecord);
    v52 = v0[2];
    v53 = type metadata accessor for Fence.TriggerID();
    (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
    v54 = v0[50];
    v56 = v0[46];
    v55 = v0[47];
    v58 = v0[42];
    v57 = v0[43];
    v60 = v0[40];
    v59 = v0[41];
    v61 = v0[39];
    v62 = v0[35];
    v63 = v0[36];
    v68 = v0[34];
    v70 = v0[33];
    v72 = v0[29];
    v74 = v0[28];
    v76 = v0[25];
    v79 = v0[22];
    v82 = v0[20];
    v85 = v0[19];
    v88 = v0[15];
    v91 = v0[14];
    v94 = v0[11];
    v97 = v0[9];
    v101 = v0[8];

    v64 = v0[1];

    return v64();
  }
}

uint64_t sub_10027B814()
{
  v1 = v0[64];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[34];
  v5 = v0[30];
  v6 = v0[4];

  v3(v4, v5);

  return _swift_task_switch(sub_10027B8A8, v6, 0);
}

uint64_t sub_10027B8A8()
{
  v1 = v0[54];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[17];

  (*(v5 + 8))(v3, v4);
  sub_100293A10(v2, type metadata accessor for FenceTriggerRecord);
  v31 = v0[66];
  v6 = v0[50];
  v8 = v0[46];
  v7 = v0[47];
  v10 = v0[42];
  v9 = v0[43];
  v12 = v0[40];
  v11 = v0[41];
  v13 = v0[39];
  v15 = v0[35];
  v14 = v0[36];
  v18 = v0[34];
  v19 = v0[33];
  v20 = v0[29];
  v21 = v0[28];
  v22 = v0[25];
  v23 = v0[22];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[15];
  v27 = v0[14];
  v28 = v0[11];
  v29 = v0[9];
  v30 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10027BA7C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 536);
  v14 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v5 = v2[4];
    v6 = sub_10027BDE8;
  }

  else
  {
    v8 = v2[60];
    v7 = v2[61];
    v9 = v2[33];
    v10 = v2[30];
    v11 = v2[9];
    v12 = v2[4];
    sub_100002CE0(v11, &qword_1005A9148, &qword_1004D2370);
    v8(v9, v10);
    v6 = sub_10027BBF8;
    v5 = v12;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10027BBF8()
{
  v1 = v0[54];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[11];
  v7 = v0[2];

  (*(v5 + 8))(v3, v4);
  sub_100293A10(v2, type metadata accessor for FenceTriggerRecord);
  sub_1000176A8(v6, v7, &qword_1005B09C8, &qword_1004D2378);
  v8 = v0[50];
  v10 = v0[46];
  v9 = v0[47];
  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[40];
  v13 = v0[41];
  v15 = v0[39];
  v16 = v0[35];
  v17 = v0[36];
  v20 = v0[34];
  v21 = v0[33];
  v22 = v0[29];
  v23 = v0[28];
  v24 = v0[25];
  v25 = v0[22];
  v26 = v0[20];
  v27 = v0[19];
  v28 = v0[15];
  v29 = v0[14];
  v30 = v0[11];
  v31 = v0[9];
  v32 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10027BDE8()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[54];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[25];
  v7 = v0[20];
  v8 = v0[16];
  v9 = v0[17];
  sub_100002CE0(v0[9], &qword_1005A9148, &qword_1004D2370);
  v2(v4, v5);

  (*(v9 + 8))(v7, v8);
  sub_100293A10(v6, type metadata accessor for FenceTriggerRecord);
  v35 = v0[69];
  v10 = v0[50];
  v12 = v0[46];
  v11 = v0[47];
  v14 = v0[42];
  v13 = v0[43];
  v16 = v0[40];
  v15 = v0[41];
  v17 = v0[39];
  v19 = v0[35];
  v18 = v0[36];
  v22 = v0[34];
  v23 = v0[33];
  v24 = v0[29];
  v25 = v0[28];
  v26 = v0[25];
  v27 = v0[22];
  v28 = v0[20];
  v29 = v0[19];
  v30 = v0[15];
  v31 = v0[14];
  v32 = v0[11];
  v33 = v0[9];
  v34 = v0[8];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10027BFF0()
{
  v1 = v0[52];

  v27 = v0[55];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[39];
  v11 = v0[35];
  v10 = v0[36];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[11];
  v25 = v0[9];
  v26 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10027C184(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10027C218;

  return daemon.getter();
}

uint64_t sub_10027C218(uint64_t a1)
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
  v9 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10027C3F4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10027C3F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_1000E9F80;
  }

  else
  {
    v9 = v4[5];

    v8 = sub_10027C52C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10027C52C()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = sub_100009518(&qword_1005AAB90, type metadata accessor for LocalStorageService);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_10027C664;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v3, 0xD000000000000017, 0x80000001004E65A0, sub_100293A84, v4, &type metadata for () + 8);
}

uint64_t sub_10027C664()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_10027C7A8;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 56);

    v5 = sub_10027C78C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10027C7A8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_10027C814, v2, 0);
}

uint64_t sub_10027C814()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10027C878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(sub_10004B564(&qword_1005B09C8, &qword_1004D2378) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for Fence.AcceptanceStatus();
  v5[15] = v8;
  v9 = *(v8 - 8);
  v5[16] = v9;
  v10 = *(v9 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v11 = type metadata accessor for Fence.ID();
  v5[21] = v11;
  v12 = *(v11 - 8);
  v5[22] = v12;
  v13 = *(v12 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v15 = type metadata accessor for Date();
  v5[27] = v15;
  v16 = *(v15 - 8);
  v5[28] = v16;
  v17 = *(v16 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v18 = *(*(sub_10004B564(&qword_1005B09D0, &unk_1004D2380) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v19 = type metadata accessor for Fence();
  v5[32] = v19;
  v20 = *(v19 - 8);
  v5[33] = v20;
  v21 = *(v20 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_10027CBAC, 0, 0);
}

uint64_t sub_10027CBAC()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    v3 = async function pointer to daemon.getter[1];
    v4 = swift_task_alloc();
    v0[37] = v4;
    *v4 = v0;
    v4[1] = sub_10027CDCC;

    return daemon.getter();
  }

  else
  {
    v5 = v0[5];
    v6 = type metadata accessor for Fence.TriggerID();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v8 = v0[34];
    v7 = v0[35];
    v10 = v0[30];
    v9 = v0[31];
    v11 = v0[29];
    v12 = v0[25];
    v13 = v0[26];
    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[20];
    v19 = v0[19];
    v20 = v0[18];
    v21 = v0[17];
    v22 = v0[14];
    v23 = v0[13];
    v24 = v0[12];
    v25 = v0[11];
    v26 = v0[10];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_10027CDCC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 296);
  v12 = *v1;
  *(v3 + 304) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 312) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009518(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10027CFA8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10027CFA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  v4[40] = a1;
  v4[41] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10027EA00, 0, 0);
  }

  else
  {
    v7 = v4[38];

    v8 = swift_task_alloc();
    v4[42] = v8;
    *v8 = v6;
    v8[1] = sub_10027D138;
    v9 = v4[31];
    v10 = v4[7];

    return sub_10020ED50(v9, v10);
  }
}

uint64_t sub_10027D138()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return _swift_task_switch(sub_10027D234, 0, 0);
}

uint64_t sub_10027D234()
{
  v161 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B09D0, &unk_1004D2380);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v5 = v0[22];
    v4 = v0[23];
    v6 = v0[21];
    v7 = v0[7];
    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFF88);
    (*(v5 + 16))(v4, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10000D01C(0xD000000000000033, 0x80000001004E65E0, &v160);
      *(v15 + 12) = 2082;
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      v19 = sub_10000D01C(v16, v18, &v160);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s cannot trigger a fence with ID %{public}s as no fence is found!", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v23 = v0[40];
    v24 = v0[36];
    v25 = v0[5];
    v26 = sub_10004D7C0(v0[8]);
    sub_10001157C(v26, v27, v28);

LABEL_10:
    v29 = type metadata accessor for Fence.TriggerID();
    (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
    v31 = v0[34];
    v30 = v0[35];
    v33 = v0[30];
    v32 = v0[31];
    v34 = v0[29];
    v35 = v0[25];
    v36 = v0[26];
    v38 = v0[23];
    v37 = v0[24];
    v39 = v0[20];
    v138 = v0[19];
    log = v0[18];
    v141 = v0[17];
    v144 = v0[14];
    v147 = v0[13];
    v150 = v0[12];
    v153 = v0[11];
    v156 = v0[10];

    v40 = v0[1];

    return v40();
  }

  v20 = v0[27];
  v21 = v0[28];
  v22 = v0[26];
  (*(v2 + 32))(v0[35], v3, v1);
  Fence.muteEndDate.getter();
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    sub_100002CE0(v0[26], &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    v42 = v0[29];
    v43 = v0[27];
    v44 = v0[28];
    (*(v44 + 32))(v0[30], v0[26], v43);
    static Date.now.getter();
    v45 = static Date.< infix(_:_:)();
    v46 = *(v44 + 8);
    v46(v42, v43);
    if (v45)
    {
      v157 = v46;
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v47 = v0[25];
      v48 = v0[21];
      v49 = v0[22];
      v50 = v0[7];
      v51 = type metadata accessor for Logger();
      sub_10000A6F0(v51, qword_1005DFF88);
      (*(v49 + 16))(v47, v50, v48);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v0[25];
      v56 = v0[21];
      v57 = v0[22];
      if (v54)
      {
        v58 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v160 = v154;
        *v58 = 136446210;
        sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        (*(v57 + 8))(v55, v56);
        v62 = sub_10000D01C(v59, v61, &v160);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v52, v53, "Fence %{public}s being triggered is muted", v58, 0xCu);
        sub_100004984(v154);
      }

      else
      {

        (*(v57 + 8))(v55, v56);
      }

      v125 = v0[35];
      v124 = v0[36];
      v126 = v0[33];
      v152 = v0[40];
      v155 = v0[32];
      v127 = v0[30];
      v128 = v0[27];
      v25 = v0[5];
      v129 = sub_10004D4D8();
      sub_10001157C(v129, v130, v131);

      v157(v127, v128);
      (*(v126 + 8))(v125, v155);
      goto LABEL_10;
    }

    v46(v0[30], v0[27]);
  }

  v63 = v0[15];
  v64 = v0[16];
  v65 = v0[14];
  sub_100005F04(v0[9], v65, &qword_1005A9148, &qword_1004D2370);
  if ((*(v64 + 48))(v65, 1, v63) == 1)
  {
    sub_100002CE0(v0[14], &qword_1005A9148, &qword_1004D2370);
  }

  else
  {
    v66 = v0[35];
    v67 = v0[19];
    v68 = v0[15];
    v69 = v0[16];
    (*(v69 + 32))(v0[20], v0[14], v68);
    Fence.acceptanceStatus.getter();
    sub_100009518(&qword_1005B0B68, &type metadata accessor for Fence.AcceptanceStatus);
    LOBYTE(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
    v70 = *(v69 + 8);
    v70(v67, v68);
    if ((v66 & 1) == 0)
    {
      v151 = v70;
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v86 = v0[34];
      v148 = v0[35];
      v87 = v0[32];
      v88 = v0[33];
      v89 = v0[24];
      v90 = v0[21];
      v91 = v0[22];
      v158 = v0[20];
      v92 = v0[16];
      v142 = v0[15];
      v145 = v0[18];
      v93 = v0[7];
      v94 = type metadata accessor for Logger();
      sub_10000A6F0(v94, qword_1005DFF88);
      (*(v91 + 16))(v89, v93, v90);
      (*(v88 + 16))(v86, v148, v87);
      (*(v92 + 16))(v145, v158, v142);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      v97 = os_log_type_enabled(v95, v96);
      v98 = v0[40];
      v149 = v0[35];
      v99 = v0[33];
      v100 = v0[34];
      v159 = v0[32];
      v101 = v0[24];
      v102 = v0[21];
      v103 = v0[22];
      v146 = v0[20];
      if (v97)
      {
        loga = v95;
        v143 = v0[36];
        v104 = v0[19];
        v135 = v0[15];
        v136 = v0[18];
        v137 = v96;
        v105 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        *v105 = 136446722;
        sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
        v106 = dispatch thunk of CustomStringConvertible.description.getter();
        v108 = v107;
        (*(v103 + 8))(v101, v102);
        v109 = sub_10000D01C(v106, v108, &v160);

        *(v105 + 4) = v109;
        *(v105 + 12) = 2082;
        Fence.acceptanceStatus.getter();
        sub_100009518(&qword_1005B0B90, &type metadata accessor for Fence.AcceptanceStatus);
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v111;
        v151(v104, v135);
        v113 = *(v99 + 8);
        v113(v100, v159);
        v114 = sub_10000D01C(v110, v112, &v160);

        *(v105 + 14) = v114;
        *(v105 + 22) = 2082;
        v115 = dispatch thunk of CustomStringConvertible.description.getter();
        v117 = v116;
        v151(v136, v135);
        v118 = sub_10000D01C(v115, v117, &v160);

        *(v105 + 24) = v118;
        _os_log_impl(&_mh_execute_header, loga, v137, "Fence %{public}s will not be triggered as its current acceptance status (%{public}s) does not match the required status (%{public}s)", v105, 0x20u);
        swift_arrayDestroy();

        v151(v146, v135);
        v113(v149, v159);
      }

      else
      {
        v132 = v0[18];
        v133 = v0[15];

        v151(v132, v133);
        v134 = *(v99 + 8);
        v134(v100, v159);
        (*(v103 + 8))(v101, v102);
        v151(v146, v133);
        v134(v149, v159);
      }

      v25 = v0[5];
      goto LABEL_10;
    }

    v70(v0[20], v0[15]);
  }

  v71 = v0[35];
  v73 = v0[16];
  v72 = v0[17];
  v74 = v0[15];
  Fence.acceptanceStatus.getter();
  v75 = (*(v73 + 88))(v72, v74);
  if (v75 == enum case for Fence.AcceptanceStatus.pendingHidden(_:))
  {
    v76 = swift_task_alloc();
    v0[47] = v76;
    *v76 = v0;
    v76[1] = sub_10027E704;
    v77 = v0[35];
    v78 = v0[36];
    v79 = v0[10];
    v80 = v0[8];

    return sub_100282084(v79, v77, v80);
  }

  else if (v75 == enum case for Fence.AcceptanceStatus.pending(_:))
  {
    v81 = swift_task_alloc();
    v0[45] = v81;
    *v81 = v0;
    v81[1] = sub_10027E408;
    v82 = v0[35];
    v83 = v0[36];
    v84 = v0[11];
    v85 = v0[8];

    return sub_100281988(v84, v82, v85);
  }

  else if (v75 == enum case for Fence.AcceptanceStatus.accepted(_:))
  {
    v119 = swift_task_alloc();
    v0[43] = v119;
    *v119 = v0;
    v119[1] = sub_10027E110;
    v120 = v0[35];
    v121 = v0[36];
    v122 = v0[12];
    v123 = v0[8];

    return sub_10027F0D8(v122, v120, v123);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_10027E110()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_10027EB5C;
  }

  else
  {
    v3 = sub_10027E224;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10027E224()
{
  v1 = v0[40];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[13];
  v7 = v0[8];
  v8 = v0[5];
  sub_1000176A8(v0[12], v6, &qword_1005B09C8, &qword_1004D2378);
  v9 = sub_10004D920(v3, v7, 0, 0);
  sub_10001157C(v9, v10, v11);

  (*(v5 + 8))(v3, v4);
  sub_1000176A8(v6, v8, &qword_1005B09C8, &qword_1004D2378);
  v13 = v0[34];
  v12 = v0[35];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[29];
  v17 = v0[25];
  v18 = v0[26];
  v20 = v0[23];
  v19 = v0[24];
  v21 = v0[20];
  v24 = v0[19];
  v25 = v0[18];
  v26 = v0[17];
  v27 = v0[14];
  v28 = v0[13];
  v29 = v0[12];
  v30 = v0[11];
  v31 = v0[10];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10027E408()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_10027ED30;
  }

  else
  {
    v3 = sub_10027E51C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10027E51C()
{
  v1 = v0[40];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[13];
  v7 = v0[8];
  v8 = v0[5];
  sub_1000176A8(v0[11], v6, &qword_1005B09C8, &qword_1004D2378);
  v9 = sub_10004D920(v3, v7, 0, 0);
  sub_10001157C(v9, v10, v11);

  (*(v5 + 8))(v3, v4);
  sub_1000176A8(v6, v8, &qword_1005B09C8, &qword_1004D2378);
  v13 = v0[34];
  v12 = v0[35];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[29];
  v17 = v0[25];
  v18 = v0[26];
  v20 = v0[23];
  v19 = v0[24];
  v21 = v0[20];
  v24 = v0[19];
  v25 = v0[18];
  v26 = v0[17];
  v27 = v0[14];
  v28 = v0[13];
  v29 = v0[12];
  v30 = v0[11];
  v31 = v0[10];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10027E704()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_10027EF04;
  }

  else
  {
    v3 = sub_10027E818;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10027E818()
{
  v1 = v0[40];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[13];
  v7 = v0[8];
  v8 = v0[5];
  sub_1000176A8(v0[10], v6, &qword_1005B09C8, &qword_1004D2378);
  v9 = sub_10004D920(v3, v7, 0, 0);
  sub_10001157C(v9, v10, v11);

  (*(v5 + 8))(v3, v4);
  sub_1000176A8(v6, v8, &qword_1005B09C8, &qword_1004D2378);
  v13 = v0[34];
  v12 = v0[35];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[29];
  v17 = v0[25];
  v18 = v0[26];
  v20 = v0[23];
  v19 = v0[24];
  v21 = v0[20];
  v24 = v0[19];
  v25 = v0[18];
  v26 = v0[17];
  v27 = v0[14];
  v28 = v0[13];
  v29 = v0[12];
  v30 = v0[11];
  v31 = v0[10];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10027EA00()
{
  v1 = v0[38];
  v2 = v0[36];

  v23 = v0[41];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[20];
  v15 = v0[19];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[14];
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[11];
  v22 = v0[10];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10027EB5C()
{
  v1 = v0[44];
  v2 = v0[40];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[8];
  swift_errorRetain();
  v8 = sub_10004D920(v4, v7, v1, 1);
  v10 = v9;
  v12 = v11;

  sub_10001157C(v8, v10, v12);

  swift_willThrow();

  (*(v6 + 8))(v4, v5);
  v14 = v0[34];
  v13 = v0[35];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[29];
  v19 = v0[25];
  v18 = v0[26];
  v21 = v0[23];
  v20 = v0[24];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[14];
  v29 = v0[13];
  v30 = v0[12];
  v31 = v0[11];
  v32 = v0[10];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10027ED30()
{
  v1 = v0[46];
  v2 = v0[40];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[8];
  swift_errorRetain();
  v8 = sub_10004D920(v4, v7, v1, 1);
  v10 = v9;
  v12 = v11;

  sub_10001157C(v8, v10, v12);

  swift_willThrow();

  (*(v6 + 8))(v4, v5);
  v14 = v0[34];
  v13 = v0[35];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[29];
  v19 = v0[25];
  v18 = v0[26];
  v21 = v0[23];
  v20 = v0[24];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[14];
  v29 = v0[13];
  v30 = v0[12];
  v31 = v0[11];
  v32 = v0[10];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10027EF04()
{
  v1 = v0[48];
  v2 = v0[40];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[8];
  swift_errorRetain();
  v8 = sub_10004D920(v4, v7, v1, 1);
  v10 = v9;
  v12 = v11;

  sub_10001157C(v8, v10, v12);

  swift_willThrow();

  (*(v6 + 8))(v4, v5);
  v14 = v0[34];
  v13 = v0[35];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[29];
  v19 = v0[25];
  v18 = v0[26];
  v21 = v0[23];
  v20 = v0[24];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[14];
  v29 = v0[13];
  v30 = v0[12];
  v31 = v0[11];
  v32 = v0[10];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10027F0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Fence.Variant();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005B0B98, &qword_1004D27F0);
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005B0B00, &qword_1004D26A0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for Fence.ID();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v14 = type metadata accessor for Fence();
  v4[17] = v14;
  v15 = *(v14 - 8);
  v4[18] = v15;
  v16 = *(v15 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v17 = type metadata accessor for Fence.TriggerID();
  v4[21] = v17;
  v18 = *(v17 - 8);
  v4[22] = v18;
  v19 = *(v18 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10027F354, v3, 0);
}

uint64_t sub_10027F354()
{
  v1 = v0[24];
  Fence.TriggerID.init()();
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10027F3F8;
  v3 = v0[24];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_100283AEC(v3, v6, v4);
}

uint64_t sub_10027F3F8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100281188;
  }

  else
  {
    v6 = sub_10027F524;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10027F524()
{
  v28 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[27] = sub_10000A6F0(v5, qword_1005DFF88);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[18];
  if (v9)
  {
    v13 = v0[16];
    v26 = v8;
    v14 = v0[12];
    v15 = v0[13];
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E6640, &v27);
    *(v16 + 12) = 2082;
    v25 = v11;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v25);
    v21 = sub_10000D01C(v17, v19, &v27);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v26, "%{public}s: About to trigger fence %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[30] = v20;
  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  v0[31] = v23;
  *v23 = v0;
  v23[1] = sub_10027F81C;

  return daemon.getter();
}

uint64_t sub_10027F81C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  *(v3 + 256) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 264) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10027F9F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10027F9F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *(*v2 + 256);
  v7 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v8 = *(v3 + 40);
  if (v1)
  {
    v9 = sub_100281614;
  }

  else
  {
    v9 = sub_10027FB48;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10027FB48()
{
  v1 = v0[34];
  v2 = v0[15];
  v3 = v0[3];
  Fence.id.getter();

  return _swift_task_switch(sub_10027FBB8, v1, 0);
}

uint64_t sub_10027FBB8()
{
  v1 = v0[34];
  v2 = v0[15];
  v3 = sub_100009518(&qword_1005AAB90, type metadata accessor for LocalStorageService);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_10027FCEC;
  v8 = v0[9];
  v7 = v0[10];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v1, v3, 0xD000000000000011, 0x80000001004E6620, sub_100293188, v4, v8);
}

uint64_t sub_10027FCEC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v13 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = v2[34];
    v5 = sub_100280054;
  }

  else
  {
    v6 = v2[36];
    v7 = v2[15];
    v8 = v2[12];
    v9 = v2[13];
    v10 = v2[5];

    v11 = *(v9 + 8);
    v2[39] = v11;
    v2[40] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);
    v5 = sub_10027FE50;
    v4 = v10;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10027FE50()
{
  v1 = v0[10];
  v2 = type metadata accessor for FenceTriggerRecord();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[11];
  if (v3 == 1)
  {
    sub_100002CE0(v1, &qword_1005B0B98, &qword_1004D27F0);
    v5 = type metadata accessor for Fence.TriggerPosition();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = type metadata accessor for Fence.TriggerPosition();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, v1 + v6, v7);
    sub_100293A10(v1, type metadata accessor for FenceTriggerRecord);
    (*(v8 + 56))(v4, 0, 1, v7);
  }

  v9 = swift_task_alloc();
  v0[41] = v9;
  *v9 = v0;
  v9[1] = sub_1002801F4;
  v10 = v0[11];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[3];

  return sub_100286200(v13, v11, v10);
}

uint64_t sub_100280054()
{
  v1 = v0[36];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[5];

  (*(v4 + 8))(v2, v3);

  return _swift_task_switch(sub_1002800E8, v5, 0);
}

uint64_t sub_1002800E8()
{
  v1 = v0[34];

  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  v12 = v0[8];
  v13 = v0[38];
  (*(v0[22] + 8))(v0[24], v0[21]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002801F4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(v4 + 336) = v1;

  v7 = *(v4 + 40);
  if (v1)
  {
    v8 = sub_100281718;
  }

  else
  {
    *(v4 + 376) = a1 & 1;
    v8 = sub_100280334;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100280334()
{
  v48 = v0;
  if (*(v0 + 376) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 344) = v1;
    *v1 = v0;
    v1[1] = sub_100280808;
    v2 = *(v0 + 192);
    v3 = *(v0 + 88);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);

    return sub_100286B20(v6, v2, v4, v3);
  }

  else
  {
    v8 = *(v0 + 232);
    v9 = *(v0 + 216);
    (*(v0 + 224))(*(v0 + 152), *(v0 + 24), *(v0 + 136));
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v45 = *(v0 + 320);
      v46 = *(v0 + 240);
      v12 = *(v0 + 152);
      v42 = *(v0 + 144);
      v43 = *(v0 + 312);
      v13 = *(v0 + 128);
      v44 = *(v0 + 136);
      v14 = *(v0 + 96);
      v15 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E6640, &v47);
      *(v15 + 12) = 2082;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v43(v13, v14);
      v46(v12, v44);
      v19 = sub_10000D01C(v16, v18, &v47);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s: NOT showing TransparencyNotification for fence %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v20 = *(v0 + 240);
      v22 = *(v0 + 144);
      v21 = *(v0 + 152);
      v23 = *(v0 + 136);

      v20(v21, v23);
    }

    v25 = *(v0 + 56);
    v24 = *(v0 + 64);
    v26 = *(v0 + 48);
    v27 = *(v0 + 24);
    Fence.variant.getter();
    v28 = (*(v25 + 88))(v24, v26);
    if (v28 == enum case for Fence.Variant.oneTime(_:))
    {
      v29 = *(v0 + 112);
      v30 = *(v0 + 24);
      Fence.id.getter();
      v31 = swift_task_alloc();
      *(v0 + 352) = v31;
      *v31 = v0;
      v31[1] = sub_100280B48;
      v32 = *(v0 + 112);
      v33 = *(v0 + 40);

      return sub_100288628(v32);
    }

    else if (v28 == enum case for Fence.Variant.recurring(_:) || v28 == enum case for Fence.Variant.scheduled(_:))
    {
      v34 = *(v0 + 184);
      v35 = *(v0 + 128);
      v36 = *(v0 + 24);
      (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
      Fence.id.getter();
      Fence.TriggerID.init()();
      v37 = swift_task_alloc();
      *(v0 + 368) = v37;
      *v37 = v0;
      v37[1] = sub_100280E58;
      v38 = *(v0 + 184);
      v39 = *(v0 + 128);
      v40 = *(v0 + 32);
      v41 = *(v0 + 40);

      return sub_100289330(v39, v40, v38);
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }
}

uint64_t sub_100280808()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100280918, v2, 0);
}

uint64_t sub_100280918()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  Fence.variant.getter();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for Fence.Variant.oneTime(_:))
  {
    v6 = v0[14];
    v7 = v0[3];
    Fence.id.getter();
    v8 = swift_task_alloc();
    v0[44] = v8;
    *v8 = v0;
    v8[1] = sub_100280B48;
    v9 = v0[14];
    v10 = v0[5];

    return sub_100288628(v9);
  }

  else if (v5 == enum case for Fence.Variant.recurring(_:) || v5 == enum case for Fence.Variant.scheduled(_:))
  {
    v13 = v0[23];
    v14 = v0[16];
    v15 = v0[3];
    (*(v0[7] + 8))(v0[8], v0[6]);
    Fence.id.getter();
    Fence.TriggerID.init()();
    v16 = swift_task_alloc();
    v0[46] = v16;
    *v16 = v0;
    v16[1] = sub_100280E58;
    v17 = v0[23];
    v18 = v0[16];
    v19 = v0[4];
    v20 = v0[5];

    return sub_100289330(v18, v19, v17);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_100280B48()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 320);
  v5 = *(*v1 + 312);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 360) = v0;

  v5(v6, v7);
  v9 = *(v2 + 40);
  if (v0)
  {
    v10 = sub_100281840;
  }

  else
  {
    v10 = sub_100280CE0;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100280CE0()
{
  v1 = v0[34];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  sub_100002CE0(v2, &qword_1005B0B00, &qword_1004D26A0);
  (*(v4 + 8))(v3, v5);
  v6 = v0[23];
  v7 = v0[21];
  v8 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v12 = v0[15];
  v11 = v0[16];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[10];
  v19 = v0[8];
  v13 = v0[2];
  (*(v8 + 32))(v13, v0[24], v7);
  (*(v8 + 56))(v13, 0, 1, v7);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100280E58()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 312);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 176);
  v6 = *(*v0 + 168);
  v7 = *(*v0 + 128);
  v8 = *(*v0 + 96);
  v9 = *(*v0 + 40);
  v11 = *v0;

  (*(v5 + 8))(v4, v6);
  v3(v7, v8);

  return _swift_task_switch(sub_100281030, v9, 0);
}

uint64_t sub_100281030()
{
  v1 = v0[34];
  v2 = v0[11];

  sub_100002CE0(v2, &qword_1005B0B00, &qword_1004D26A0);
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[15];
  v8 = v0[16];
  v13 = v0[14];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[8];
  v10 = v0[2];
  (*(v5 + 32))(v10, v0[24], v4);
  (*(v5 + 56))(v10, 0, 1, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100281188()
{
  v38 = v0;
  v1 = &qword_1005A8000;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF88);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E6640, &v37);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s: Failed to send IDS message: %{public}@", v8, 0x16u);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v10);
    v1 = &qword_1005A8000;
  }

  else
  {
  }

  if (v1[29] != -1)
  {
    swift_once();
  }

  v12 = v0[20];
  v13 = v0[17];
  v14 = v0[18];
  v15 = v0[3];
  v0[27] = sub_10000A6F0(v3, qword_1005DFF88);
  v16 = *(v14 + 16);
  v0[28] = v16;
  v0[29] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v12, v15, v13);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[18];
  if (v19)
  {
    v23 = v0[16];
    v36 = v18;
    v24 = v0[12];
    v25 = v0[13];
    v26 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v26 = 136446466;
    *(v26 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E6640, &v37);
    *(v26 + 12) = 2082;
    v35 = v21;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v25 + 8))(v23, v24);
    v30 = *(v22 + 8);
    v30(v20, v35);
    v31 = sub_10000D01C(v27, v29, &v37);

    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v17, v36, "%{public}s: About to trigger fence %{public}s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v30 = *(v22 + 8);
    v30(v20, v21);
  }

  v0[30] = v30;
  v32 = async function pointer to daemon.getter[1];
  v33 = swift_task_alloc();
  v0[31] = v33;
  *v33 = v0;
  v33[1] = sub_10027F81C;

  return daemon.getter();
}

uint64_t sub_100281614()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[10];
  v8 = v0[11];
  v11 = v0[8];
  v12 = v0[35];
  (*(v0[22] + 8))(v0[24], v0[21]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100281718()
{
  v1 = v0[34];
  v2 = v0[11];

  sub_100002CE0(v2, &qword_1005B0B00, &qword_1004D26A0);
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v9 = v0[10];
  v10 = v0[11];
  v13 = v0[8];
  v14 = v0[42];
  (*(v0[22] + 8))(v0[24], v0[21]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100281840()
{
  v1 = v0[34];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[11];

  sub_100002CE0(v5, &qword_1005B0B00, &qword_1004D26A0);
  (*(v4 + 8))(v2, v3);
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v13 = v0[11];
  v16 = v0[10];
  v17 = v0[45];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100281988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Fence.TriggerID();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Fence.ID();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for Fence();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100281B04, v3, 0);
}

uint64_t sub_100281B04()
{
  v32 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF88);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[10];
    v13 = v0[11];
    v30 = v7;
    v14 = v0[9];
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E66E0, &v31);
    *(v15 + 12) = 2082;
    v29 = v11;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v29);
    v19 = sub_10000D01C(v16, v18, &v31);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v6, v30, "%{public}s: Triggering fence %{public}s awaiting approval", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[11];
  v21 = v0[8];
  v22 = v0[3];
  Fence.id.getter();
  Fence.TriggerID.init()();
  v23 = swift_task_alloc();
  v0[15] = v23;
  *v23 = v0;
  v23[1] = sub_100281E0C;
  v24 = v0[11];
  v25 = v0[8];
  v26 = v0[4];
  v27 = v0[5];

  return sub_100289330(v24, v26, v25);
}

uint64_t sub_100281E0C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 40);
  v10 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100281FDC, v8, 0);
}

uint64_t sub_100281FDC()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];
  (*(v0[7] + 56))(v0[2], 1, 1, v0[6]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100282084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for Fence.AcceptanceStatus();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = type metadata accessor for Fence.TriggerPosition();
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = type metadata accessor for Fence.ID();
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v15 = type metadata accessor for Fence();
  v4[17] = v15;
  v16 = *(v15 - 8);
  v4[18] = v16;
  v17 = *(v16 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v18 = type metadata accessor for Fence.Variant();
  v4[26] = v18;
  v19 = *(v18 - 8);
  v4[27] = v19;
  v20 = *(v19 + 64) + 15;
  v4[28] = swift_task_alloc();
  v21 = type metadata accessor for Fence.TriggerID();
  v4[29] = v21;
  v22 = *(v21 - 8);
  v4[30] = v22;
  v4[31] = *(v22 + 64);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1002823D0, v3, 0);
}

uint64_t sub_1002823D0()
{
  v146 = v0;
  v1 = v0[33];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[3];
  Fence.TriggerID.init()();
  Fence.variant.getter();
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == enum case for Fence.Variant.oneTime(_:))
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v7 = v0[25];
    v8 = v0[17];
    v9 = v0[18];
    v10 = v0[3];
    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005DFF88);
    (*(v9 + 16))(v7, v10, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[33];
    v16 = v0[29];
    v17 = v0[30];
    v18 = v0[25];
    v20 = v0[17];
    v19 = v0[18];
    if (v14)
    {
      v141 = v0[29];
      v22 = v0[15];
      v21 = v0[16];
      loga = v12;
      v23 = v0[14];
      v126 = v0[17];
      v24 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v145 = v133;
      *v24 = 136446210;
      v137 = v15;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v123 = v13;
      v27 = v26;
      (*(v22 + 8))(v21, v23);
      (*(v19 + 8))(v18, v126);
      v28 = sub_10000D01C(v25, v27, &v145);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, loga, v123, "Trying to trigger a .pendingHidden one-time fence id %{public}s", v24, 0xCu);
      sub_100004984(v133);

      (*(v17 + 8))(v137, v141);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
      (*(v17 + 8))(v15, v16);
    }

    v51 = v0[27];
    v50 = v0[28];
    v52 = v0[26];
    (*(v0[30] + 56))(v0[2], 1, 1, v0[29]);
    (*(v51 + 8))(v50, v52);
    v54 = v0[32];
    v53 = v0[33];
    v55 = v0[28];
    v57 = v0[24];
    v56 = v0[25];
    v59 = v0[22];
    v58 = v0[23];
    v61 = v0[20];
    v60 = v0[21];
    v62 = v0[19];
    logb = v0[16];
    v135 = v0[13];
    v139 = v0[10];
    v143 = v0[7];

    v63 = v0[1];

    return v63();
  }

  if (v6 == enum case for Fence.Variant.recurring(_:))
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v29 = v0[24];
    v30 = v0[17];
    v31 = v0[18];
    v32 = v0[3];
    v33 = type metadata accessor for Logger();
    sub_10000A6F0(v33, qword_1005DFF88);
    v138 = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v142 = *(v31 + 16);
    v142(v29, v32, v30);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[24];
    v38 = v0[17];
    v39 = v0[18];
    if (!v36)
    {

      v47 = *(v39 + 8);
      v134 = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v47)(v37, v38);
      goto LABEL_23;
    }

    v40 = v0[15];
    v41 = v0[16];
    v42 = v0[14];
    v124 = v0[17];
    v43 = swift_slowAlloc();
    log = swift_slowAlloc();
    v145 = log;
    *v43 = 136446210;
    v127 = v35;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    (*(v40 + 8))(v41, v42);
    v47 = *(v39 + 8);
    v134 = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v47)(v37, v124);
    v48 = sub_10000D01C(v44, v46, &v145);

    *(v43 + 4) = v48;
    v49 = "Triggering recurring fence (%{public}s) for the first time";
  }

  else
  {
    if (v6 != enum case for Fence.Variant.scheduled(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v66 = v0[12];
    v65 = v0[13];
    v67 = v0[11];
    (*(v66 + 16))(v65, v0[4], v67);
    v68 = (*(v66 + 88))(v65, v67);
    v69 = enum case for Fence.TriggerPosition.undetermined(_:);
    (*(v66 + 8))(v65, v67);
    if (v68 != v69)
    {
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v102 = v0[22];
      v103 = v0[17];
      v104 = v0[18];
      v105 = v0[3];
      v106 = type metadata accessor for Logger();
      sub_10000A6F0(v106, qword_1005DFF88);
      (*(v104 + 16))(v102, v105, v103);
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();
      v109 = os_log_type_enabled(v107, v108);
      v110 = v0[22];
      v111 = v0[17];
      v112 = v0[18];
      if (v109)
      {
        v136 = v0[17];
        v113 = v0[15];
        v114 = v0[16];
        v115 = v0[14];
        v116 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v145 = v144;
        *v116 = 136446210;
        v140 = v108;
        Fence.id.getter();
        sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
        v117 = dispatch thunk of CustomStringConvertible.description.getter();
        v119 = v118;
        (*(v113 + 8))(v114, v115);
        (*(v112 + 8))(v110, v136);
        v120 = sub_10000D01C(v117, v119, &v145);

        *(v116 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v107, v140, "Fence (%{public}s) triggered by CoreLocation before fence is updated to pending", v116, 0xCu);
        sub_100004984(v144);
      }

      else
      {

        (*(v112 + 8))(v110, v111);
      }

      v121 = v0[16];
      v122 = v0[3];
      Fence.id.getter();
      v96 = swift_task_alloc();
      v0[34] = v96;
      *v96 = v0;
      v97 = sub_10028304C;
      goto LABEL_24;
    }

    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v70 = v0[23];
    v71 = v0[17];
    v72 = v0[18];
    v73 = v0[3];
    v74 = type metadata accessor for Logger();
    sub_10000A6F0(v74, qword_1005DFF88);
    v138 = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v142 = *(v72 + 16);
    v142(v70, v73, v71);
    v34 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    v76 = os_log_type_enabled(v34, v75);
    v77 = v0[23];
    v78 = v0[17];
    v79 = v0[18];
    if (!v76)
    {

      v47 = *(v79 + 8);
      v134 = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v47)(v77, v78);
      goto LABEL_23;
    }

    v80 = v0[15];
    v81 = v0[16];
    v82 = v0[14];
    v125 = v0[17];
    v43 = swift_slowAlloc();
    log = swift_slowAlloc();
    v145 = log;
    *v43 = 136446210;
    v127 = v75;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v83 = dispatch thunk of CustomStringConvertible.description.getter();
    v85 = v84;
    (*(v80 + 8))(v81, v82);
    v47 = *(v79 + 8);
    v134 = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v47)(v77, v125);
    v86 = sub_10000D01C(v83, v85, &v145);

    *(v43 + 4) = v86;
    v49 = "Triggering scheduled fence (%{public}s) for the first time";
  }

  _os_log_impl(&_mh_execute_header, v34, v127, v49, v43, 0xCu);
  sub_100004984(log);

LABEL_23:
  logc = v47;
  v0[35] = v47;
  v0[36] = v142;
  v87 = v0[21];
  v88 = v0[17];
  v128 = v0[16];
  v90 = v0[9];
  v89 = v0[10];
  v91 = v0[8];
  v92 = v0[3];
  (*(v0[27] + 8))(v0[28], v0[26]);
  v93 = swift_allocBox();
  v95 = v94;
  v0[37] = v93;
  v0[38] = v94;
  v0[39] = v138;
  v142(v94, v92, v88);
  (*(v90 + 104))(v89, enum case for Fence.AcceptanceStatus.pending(_:), v91);
  Fence.update(acceptanceStatus:)();
  (*(v90 + 8))(v89, v91);
  v142(v87, v95, v88);
  Fence.id.getter();
  v0[40] = v134;
  (logc)(v87, v88);
  v96 = swift_task_alloc();
  v0[41] = v96;
  *v96 = v0;
  v97 = sub_100283338;
LABEL_24:
  v96[1] = v97;
  v98 = v0[33];
  v99 = v0[16];
  v100 = v0[4];
  v101 = v0[5];

  return sub_100289330(v99, v100, v98);
}

uint64_t sub_10028304C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 40);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002831B8, v5, 0);
}

uint64_t sub_1002831B8()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[2];
  (*(v2 + 32))(v6, v0[33], v1);
  (*(v2 + 56))(v6, 0, 1, v1);
  (*(v4 + 8))(v3, v5);
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[28];
  v11 = v0[24];
  v10 = v0[25];
  v13 = v0[22];
  v12 = v0[23];
  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[19];
  v19 = v0[16];
  v20 = v0[13];
  v21 = v0[10];
  v22 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100283338()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 40);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002834A4, v5, 0);
}

uint64_t sub_1002834A4()
{
  v1 = *(v0 + 312);
  (*(v0 + 288))(*(v0 + 152), *(v0 + 304), *(v0 + 136));
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *v2 = v0;
  v2[1] = sub_100283550;
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 40);

  return sub_100261468(v3, v4);
}

uint64_t sub_100283550()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 320);
  v5 = *(*v1 + 280);
  v6 = *(*v1 + 152);
  v7 = *(*v1 + 136);
  v13 = *v1;
  *(*v1 + 344) = v0;

  v5(v6, v7);
  if (v0)
  {
    v8 = *(v2 + 40);
    v9 = sub_1002839A8;
  }

  else
  {
    v10 = *(v2 + 320);
    v11 = *(v2 + 40);
    (*(v2 + 280))(*(v2 + 160), *(v2 + 136));
    v9 = sub_1002836F0;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1002836F0()
{
  v1 = v0[37];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[29];
  v7 = v0[7];
  v27 = v3;
  v28 = v7;
  v30 = v0[6];
  v32 = v2;
  v8 = v0[5];
  v34 = v0[2];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v4 + 16))(v3, v2, v6);
  v10 = sub_100009518(&qword_1005AF4A8, type metadata accessor for FenceService);
  v11 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 2) = v8;
  *(v13 + 3) = v10;
  *(v13 + 4) = v1;
  *(v13 + 5) = v8;
  v14 = *(v4 + 32);
  v14(&v13[v11], v27, v6);
  *&v13[v12] = v30;
  swift_retain_n();

  sub_10020D620(0, 0, v28, &unk_1004D2850, v13);

  v14(v34, v32, v6);
  (*(v4 + 56))(v34, 0, 1, v6);

  v16 = v0[32];
  v15 = v0[33];
  v17 = v0[28];
  v19 = v0[24];
  v18 = v0[25];
  v21 = v0[22];
  v20 = v0[23];
  v23 = v0[20];
  v22 = v0[21];
  v24 = v0[19];
  v29 = v0[16];
  v31 = v0[13];
  v33 = v0[10];
  v35 = v0[7];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1002839A8()
{
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[21];
  v13 = v0[20];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[13];
  v9 = v0[10];
  v17 = v0[7];
  (*(v0[30] + 8))(v0[33], v0[29]);

  v10 = v0[1];
  v11 = v0[43];

  return v10();
}

uint64_t sub_100283AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for UUID();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v9 = type metadata accessor for MessagingOptions();
  v4[16] = v9;
  v10 = *(v9 - 8);
  v4[17] = v10;
  v11 = *(v10 + 64) + 15;
  v4[18] = swift_task_alloc();
  v12 = type metadata accessor for Destination();
  v4[19] = v12;
  v13 = *(v12 - 8);
  v4[20] = v13;
  v14 = *(v13 + 64) + 15;
  v4[21] = swift_task_alloc();
  v15 = type metadata accessor for Fence.Variant();
  v4[22] = v15;
  v16 = *(v15 - 8);
  v4[23] = v16;
  v17 = *(v16 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v18 = type metadata accessor for Fence.TriggerPosition();
  v4[26] = v18;
  v19 = *(v18 - 8);
  v4[27] = v19;
  v20 = *(v19 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v21 = type metadata accessor for Fence.TriggerID();
  v4[30] = v21;
  v22 = *(v21 - 8);
  v4[31] = v22;
  v23 = *(v22 + 64) + 15;
  v4[32] = swift_task_alloc();
  v24 = type metadata accessor for FenceTriggerEnvelopeV1();
  v4[33] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v26 = type metadata accessor for PersonHandle();
  v4[36] = v26;
  v27 = *(v26 - 8);
  v4[37] = v27;
  v28 = *(v27 + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v29 = type metadata accessor for Fence.ID();
  v4[40] = v29;
  v30 = *(v29 - 8);
  v4[41] = v30;
  v31 = *(v30 + 64) + 15;
  v4[42] = swift_task_alloc();
  v32 = type metadata accessor for Fence();
  v4[43] = v32;
  v33 = *(v32 - 8);
  v4[44] = v33;
  v34 = *(v33 + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v35 = type metadata accessor for Fence.Participant();
  v4[49] = v35;
  v36 = *(v35 - 8);
  v4[50] = v36;
  v37 = *(v36 + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();

  return _swift_task_switch(sub_100283FB4, v3, 0);
}

uint64_t sub_100283FB4()
{
  v210 = v0;
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v5 = v0[9];
  Fence.findee.getter();
  (*(v4 + 104))(v2, enum case for Fence.Participant.me(_:), v3);
  LOBYTE(v5) = static Fence.Participant.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  v206 = v0;
  if (v5)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v7 = v0[47];
    v8 = v0[48];
    v9 = v0[43];
    v10 = v0[44];
    v11 = v0[9];
    v12 = type metadata accessor for Logger();
    v0[53] = sub_10000A6F0(v12, qword_1005DFF88);
    v13 = *(v10 + 16);
    (v13)(v8, v11, v9);
    v176 = v13;
    (v13)(v7, v11, v9);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[47];
    v18 = v0[48];
    v19 = v0[43];
    v20 = v0[44];
    v21 = v0;
    if (v16)
    {
      v169 = v14;
      v166 = v15;
      v23 = v0[41];
      v22 = v21[42];
      v24 = v21[40];
      v25 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      *v25 = 136446467;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v23 + 8))(v22, v24);
      v187 = *(v20 + 8);
      v187(v18, v19);
      v29 = sub_10000D01C(v26, v28, &v208);

      *(v25 + 4) = v29;
      buf = v25;
      *(v25 + 12) = 2081;
      v30 = Fence.others.getter();
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = v21[37];
        v209 = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v31, 0);
        v33 = v209;
        v34 = *(v32 + 16);
        v32 += 16;
        v199 = v34;
        v35 = v30 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
        v191 = *(v32 + 56);
        v36 = (v32 - 8);
        do
        {
          v37 = v206[39];
          v38 = v206[36];
          v199(v37, v35, v38);
          v39 = PersonHandle.id.getter();
          v41 = v40;
          (*v36)(v37, v38);
          v209 = v33;
          v43 = v33[2];
          v42 = v33[3];
          if (v43 >= v42 >> 1)
          {
            sub_10002B3C0((v42 > 1), v43 + 1, 1);
            v33 = v209;
          }

          v33[2] = v43 + 1;
          v44 = &v33[2 * v43];
          v44[4] = v39;
          v44[5] = v41;
          v35 += v191;
          --v31;
        }

        while (v31);
      }

      else
      {

        v33 = _swiftEmptyArrayStorage;
      }

      v65 = v206;
      v78 = v206[47];
      v79 = v206[43];
      v206[7] = v33;
      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      sub_10001DF0C(&qword_1005ABF48, &qword_1005A9630, &qword_1004C5680);
      v80 = BidirectionalCollection<>.joined(separator:)();
      v82 = v81;

      v187(v78, v79);
      v83 = sub_10000D01C(v80, v82, &v208);

      *(buf + 14) = v83;
      _os_log_impl(&_mh_execute_header, v169, v166, "Sending IDS trigger of fence %{public}s to %{private}s", buf, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v64 = *(v20 + 8);
      v64(v17, v19);
      v187 = v64;
      v64(v18, v19);
      v65 = v0;
    }

    v171 = v65[46];
    v84 = v65[43];
    v85 = v65[34];
    v194 = v65[33];
    v86 = v65[31];
    v87 = v65[32];
    v88 = v65[29];
    v89 = v65[30];
    bufb = v87;
    v90 = v65[27];
    v202 = v65[28];
    v91 = v65[26];
    v92 = v65[9];
    v168 = v65[10];
    v93 = v65[8];
    v176();
    v94 = *(v86 + 16);
    v94(v87, v93, v89);
    v95 = *(v90 + 16);
    v95(v88, v168, v91);
    Fence.id.getter();
    v183 = v194[5];
    v94((v85 + v183), bufb, v89);
    v96 = v194[6];
    v95(v85 + v96, v88, v91);
    v195 = v194[7];
    sub_1002787C8(v85 + v195);
    v97 = v95;
    v95(v202, v88, v91);
    v98 = (*(v90 + 88))(v202, v91);
    if (v98 == enum case for Fence.TriggerPosition.inside(_:))
    {
      v99 = v65[46];
      v178 = v65[44];
      v184 = v65[43];
      v203 = v65[34];
      v196 = v65[33];
      v100 = v65[31];
      v172 = v65[32];
      v102 = v65[29];
      v101 = v65[30];
      v104 = v65[27];
      v103 = v65[28];
      v106 = v65[25];
      v105 = v65[26];
      v109 = v65 + 22;
      v107 = v65[22];
      v108 = v109[1];
      v110 = *(v104 + 8);
      v110(v103, v105);
      Fence.variant.getter();
      v110(v102, v105);
      (*(v100 + 8))(v172, v101);
      v187(v99, v184);
      LODWORD(v99) = (*(v108 + 88))(v106, v107);
      LODWORD(v100) = enum case for Fence.Variant.scheduled(_:);
      (*(v108 + 8))(v106, v107);
      v111 = *(v196 + 32);
      if (v99 == v100)
      {
        *(v203 + v111) = 0;
LABEL_34:
        sub_10029350C(v206[34], v206[35], type metadata accessor for FenceTriggerEnvelopeV1);
        v130 = async function pointer to daemon.getter[1];
        v131 = swift_task_alloc();
        v206[54] = v131;
        *v131 = v206;
        v131[1] = sub_100284F28;

        return daemon.getter();
      }

      v121 = 2;
LABEL_33:
      *(v203 + v111) = v121;
      goto LABEL_34;
    }

    if (v98 == enum case for Fence.TriggerPosition.outside(_:))
    {
      v112 = v206[46];
      v179 = v206[44];
      v185 = v206[43];
      v203 = v206[34];
      v197 = v206[33];
      v113 = v206[31];
      v173 = v206[32];
      v115 = v206[29];
      v114 = v206[30];
      v116 = v206[26];
      v118 = v206[23];
      v117 = v206[24];
      v119 = v206[22];
      v120 = *(v206[27] + 8);
      v120(v206[28], v116);
      Fence.variant.getter();
      v120(v115, v116);
      (*(v113 + 8))(v173, v114);
      v187(v112, v185);
      LODWORD(v112) = (*(v118 + 88))(v117, v119);
      LODWORD(v113) = enum case for Fence.Variant.scheduled(_:);
      (*(v118 + 8))(v117, v119);
      v111 = *(v197 + 32);
      if (v112 == v113)
      {
        v121 = 1;
      }

      else
      {
        v121 = 3;
      }

      goto LABEL_33;
    }

    v204 = v206[46];
    v174 = v206[44];
    v180 = v206[43];
    if (v98 == enum case for Fence.TriggerPosition.undetermined(_:))
    {
      v123 = v206[33];
      v122 = v206[34];
      v125 = v206[31];
      v124 = v206[32];
      v126 = v206[30];
      v127 = v206[28];
      v128 = v206[26];
      v129 = *(v206[27] + 8);
      v129(v206[29], v128);
      (*(v125 + 8))(v124, v126);
      v187(v204, v180);
      *(v122 + *(v123 + 32)) = 4;
      v129(v127, v128);
      goto LABEL_34;
    }

    bufc = v206[40];
    v156 = v206[41];
    v159 = v206[34];
    v132 = v206[29];
    v152 = v206[30];
    v153 = v206[32];
    v133 = v206[27];
    v154 = v206[28];
    v150 = v206[26];
    v151 = v206[31];
    v134 = type metadata accessor for Session.FenceError();
    sub_100009518(&qword_1005B0BB8, &type metadata accessor for Session.FenceError);
    swift_allocError();
    v136 = v135;
    v97(v135, v132, v150);
    (*(*(v134 - 8) + 104))(v136, enum case for Session.FenceError.unrecognizedTriggerPosition(_:), v134);
    swift_willThrow();
    v137 = *(v133 + 8);
    v137(v132, v150);
    v138 = *(v151 + 8);
    v138(v153, v152);
    v187(v204, v180);
    v137(v154, v150);
    (*(v156 + 8))(v159, bufc);
    v138(v85 + v183, v152);
    v137(v85 + v96, v150);
    v139 = type metadata accessor for Date();
    (*(*(v139 - 8) + 8))(v85 + v195, v139);
    v141 = v206[51];
    v140 = v206[52];
    v142 = v206[47];
    v143 = v206[48];
    v145 = v206[45];
    v144 = v206[46];
    v146 = v206[42];
    v148 = v206[38];
    v147 = v206[39];
    v149 = v206[35];
    v155 = v206[34];
    v157 = v206[32];
    v160 = v206[29];
    bufd = v206[28];
    v175 = v206[25];
    v181 = v206[24];
    v186 = v206[21];
    v190 = v206[18];
    v198 = v206[15];
    v205 = v206[14];

    v76 = v206[1];
  }

  else
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v46 = v0[44];
    v45 = v0[45];
    v47 = v0[43];
    v48 = v0[9];
    v49 = type metadata accessor for Logger();
    sub_10000A6F0(v49, qword_1005DFF88);
    (*(v46 + 16))(v45, v48, v47);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v54 = v0[44];
    v53 = v0[45];
    v55 = v0[43];
    if (v52)
    {
      v56 = v0[42];
      v188 = v0[43];
      v57 = v0[41];
      v58 = v0[40];
      v59 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      v209 = v200;
      *v59 = 136446210;
      v192 = v51;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v57 + 8))(v56, v58);
      (*(v54 + 8))(v53, v188);
      v63 = sub_10000D01C(v60, v62, &v209);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v50, v192, "Not sending IDS trigger of fence %{public}s since we are the finder", v59, 0xCu);
      sub_100004984(v200);
    }

    else
    {

      (*(v54 + 8))(v53, v55);
    }

    v67 = v0[51];
    v66 = v0[52];
    v68 = v0[47];
    v69 = v0[48];
    v71 = v0[45];
    v70 = v0[46];
    v72 = v0[42];
    v74 = v0[38];
    v73 = v0[39];
    v75 = v0[35];
    v158 = v0[34];
    bufa = v0[32];
    v167 = v0[29];
    v170 = v0[28];
    v177 = v0[25];
    v182 = v0[24];
    v189 = v0[21];
    v193 = v0[18];
    v201 = v0[15];
    v207 = v0[14];

    v76 = v0[1];
  }

  return v76();
}

uint64_t sub_100284F28(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v12 = *v1;
  *(v3 + 440) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 448) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v9 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_10001DF0C(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490);
  *v6 = v12;
  v6[1] = sub_100285114;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100285114(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(v4 + 456) = a1;
  *(v4 + 464) = v1;

  v7 = *(v3 + 440);
  v8 = *(v3 + 88);

  if (v1)
  {
    v9 = sub_100286080;
  }

  else
  {
    v9 = sub_100285264;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100285264()
{
  v1 = v0[9];
  v2 = Fence.others.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[37];
    v5 = v0[20];
    sub_1002393FC(0, v3, 0);
    v7 = *(v4 + 16);
    v6 = v4 + 16;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v23 = *(v6 + 56);
    v24 = v7;
    do
    {
      v24(v0[38], v8, v0[36]);
      v0[2] = PersonHandle.id.getter();
      v0[3] = v9;
      v0[4] = 64;
      v0[5] = 0xE100000000000000;
      sub_1000246F4();
      v10 = StringProtocol.components<A>(separatedBy:)();

      v11 = *(v10 + 16);

      PersonHandle.id.getter();
      v12 = v0[21];
      if (v11 == 2)
      {
        Destination.init(email:)();
      }

      else
      {
        Destination.init(phoneNumber:)();
      }

      (*(v6 - 8))(v0[38], v0[36]);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_1002393FC(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[21];
      v16 = v0[19];
      _swiftEmptyArrayStorage[2] = v14 + 1;
      (*(v5 + 32))(_swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v15, v16);
      v8 += v23;
      --v3;
    }

    while (v3);
  }

  v0[59] = _swiftEmptyArrayStorage;
  v0[6] = _swiftEmptyArrayStorage;
  v17 = async function pointer to Sequence.asyncFilter(_:)[1];
  v18 = swift_task_alloc();
  v0[60] = v18;
  v19 = sub_10004B564(&qword_1005A9288, &qword_1004D9EB0);
  v20 = sub_10001DF0C(&qword_1005A9290, &qword_1005A9288, &qword_1004D9EB0);
  *v18 = v0;
  v18[1] = sub_100285550;
  v21 = v0[57];

  return Sequence.asyncFilter(_:)(&unk_1004D2840, v21, v19, v20);
}

uint64_t sub_100285550(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v5 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[11];

    return _swift_task_switch(sub_100285688, v7, 0);
  }
}

uint64_t sub_100285688()
{
  v1 = v0[61];
  v2 = *(v0[59] + 16);

  v3 = v2 - *(v1 + 16);
  if (v3 >= 1)
  {
    v4 = v0[53];
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v5, v6, "Sending IDS trigger contains invalid destinations count: %ld", v7, 0xCu);
    }
  }

  v8 = v0[61];
  v9 = v0[18];
  (*(v0[13] + 56))(v0[15], 1, 1, v0[12]);

  sub_100293190(_swiftEmptyArrayStorage);
  sub_100293190(_swiftEmptyArrayStorage);
  MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();
  v10 = *(v1 + 16);

  if (v10)
  {
    v11 = v0[62];
    v12 = v0[35];
    v13 = sub_1002E7000();
    v14 = v11;
    if (!v11)
    {
      v15 = v0[57];
      v0[63] = sub_10028EE90(v13);

      return _swift_task_switch(sub_100285A50, v15, 0);
    }
  }

  else
  {
    sub_10007CF70();
    v14 = swift_allocError();
    swift_willThrow();
  }

  v16 = v0[57];
  v17 = v0[35];
  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[16];
  v22 = v0[9];
  v21 = v0[10];
  swift_errorRetain();
  v23 = sub_10004D4A8(v22, v21, v14, 1);
  v25 = v24;
  v27 = v26;

  sub_10001157C(v23, v25, v27);

  swift_willThrow();

  (*(v19 + 8))(v18, v20);
  sub_100293A10(v17, type metadata accessor for FenceTriggerEnvelopeV1);
  v29 = v0[51];
  v28 = v0[52];
  v31 = v0[47];
  v30 = v0[48];
  v33 = v0[45];
  v32 = v0[46];
  v34 = v0[42];
  v36 = v0[38];
  v35 = v0[39];
  v39 = v0[35];
  v40 = v0[34];
  v41 = v0[32];
  v42 = v0[29];
  v43 = v0[28];
  v44 = v0[25];
  v45 = v0[24];
  v46 = v0[21];
  v47 = v0[18];
  v48 = v0[15];
  v49 = v0[14];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100285A50()
{
  v1 = *(v0[57] + 128);
  v2 = async function pointer to InternetMessaging.send(dictionary:messageOptions:)[1];
  v3 = swift_task_alloc();
  v0[64] = v3;
  *v3 = v0;
  v3[1] = sub_100285AF8;
  v4 = v0[63];
  v5 = v0[18];
  v6 = v0[14];

  return InternetMessaging.send(dictionary:messageOptions:)(v6, v4, v5);
}

uint64_t sub_100285AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v12 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = v2[57];
    v5 = sub_100285E0C;
  }

  else
  {
    v6 = v2[63];
    v8 = v2[13];
    v7 = v2[14];
    v10 = v2 + 11;
    v9 = v2[11];
    (*(v8 + 8))(v7, v10[1]);

    v5 = sub_100285C38;
    v4 = v9;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100285C38()
{
  v1 = v0[57];
  v2 = v0[35];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = sub_10004D4A8(v0[9], v0[10], 0, 0);
  sub_10001157C(v6, v7, v8);

  (*(v4 + 8))(v3, v5);
  sub_100293A10(v2, type metadata accessor for FenceTriggerEnvelopeV1);
  v10 = v0[51];
  v9 = v0[52];
  v11 = v0[47];
  v12 = v0[48];
  v14 = v0[45];
  v13 = v0[46];
  v15 = v0[42];
  v17 = v0[38];
  v16 = v0[39];
  v18 = v0[35];
  v21 = v0[34];
  v22 = v0[32];
  v23 = v0[29];
  v24 = v0[28];
  v25 = v0[25];
  v26 = v0[24];
  v27 = v0[21];
  v28 = v0[18];
  v29 = v0[15];
  v30 = v0[14];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100285E0C()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_100285E78, v2, 0);
}

uint64_t sub_100285E78()
{
  v1 = v0[65];
  v2 = v0[57];
  v3 = v0[35];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v8 = v0[9];
  v7 = v0[10];
  swift_errorRetain();
  v9 = sub_10004D4A8(v8, v7, v1, 1);
  v11 = v10;
  v13 = v12;

  sub_10001157C(v9, v11, v13);

  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  sub_100293A10(v3, type metadata accessor for FenceTriggerEnvelopeV1);
  v15 = v0[51];
  v14 = v0[52];
  v17 = v0[47];
  v16 = v0[48];
  v19 = v0[45];
  v18 = v0[46];
  v20 = v0[42];
  v22 = v0[38];
  v21 = v0[39];
  v25 = v0[35];
  v26 = v0[34];
  v27 = v0[32];
  v28 = v0[29];
  v29 = v0[28];
  v30 = v0[25];
  v31 = v0[24];
  v32 = v0[21];
  v33 = v0[18];
  v34 = v0[15];
  v35 = v0[14];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100286080()
{
  sub_100293A10(v0[35], type metadata accessor for FenceTriggerEnvelopeV1);
  v23 = v0[58];
  v2 = v0[51];
  v1 = v0[52];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[42];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[35];
  v13 = v0[34];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[18];
  v21 = v0[15];
  v22 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100286200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Fence.ID();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Fence();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = type metadata accessor for Fence.Variant();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100286394, v3, 0);
}

uint64_t sub_100286394()
{
  v56 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[2];
  Fence.variant.getter();
  v5 = (*(v3 + 88))(v1, v2);
  v6 = v5 == enum case for Fence.Variant.oneTime(_:) || v5 == enum case for Fence.Variant.recurring(_:);
  v7 = v6;
  if (!v6)
  {
    if (v5 == enum case for Fence.Variant.scheduled(_:))
    {
      v14 = swift_task_alloc();
      v0[17] = v14;
      *v14 = v0;
      v14[1] = sub_100286864;
      v15 = v0[4];
      v16 = v0[5];
      v18 = v0[2];
      v17 = v0[3];

      return sub_10028F418(v18, v17, v15);
    }

    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[9];
    v22 = v0[10];
    v23 = v0[2];
    v24 = type metadata accessor for Logger();
    sub_10000A6F0(v24, qword_1005DFF88);
    v25 = *(v22 + 16);
    v25(v19, v23, v21);
    v25(v20, v23, v21);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[14];
      v29 = v0[15];
      log = v26;
      v31 = v0[12];
      v30 = v0[13];
      v32 = v0[10];
      v48 = v0[9];
      v49 = v0[8];
      v50 = v0[11];
      v51 = v0[6];
      v52 = v0[7];
      v33 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v33 = 136446466;
      v53 = v27;
      Fence.variant.getter();
      sub_100009518(&qword_1005B0BA8, &type metadata accessor for Fence.Variant);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v28 + 8))(v29, v30);
      v37 = *(v32 + 8);
      v37(v31, v48);
      v38 = sub_10000D01C(v34, v36, &v55);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v52 + 8))(v49, v51);
      v37(v50, v48);
      v42 = sub_10000D01C(v39, v41, &v55);

      *(v33 + 14) = v42;
      _os_log_impl(&_mh_execute_header, log, v53, "Unrecognized fence variant %{public}s for fence id %{public}s", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v44 = v0[11];
      v43 = v0[12];
      v46 = v0[9];
      v45 = v0[10];

      v47 = *(v45 + 8);
      v47(v44, v46);
      v47(v43, v46);
    }
  }

  v8 = v0[15];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[8];
  (*(v0[14] + 8))(v0[16], v0[13]);

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_100286864(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = v1;

  v7 = *(v4 + 40);
  if (v1)
  {
    v8 = sub_100286A64;
  }

  else
  {
    *(v4 + 152) = a1 & 1;
    v8 = sub_1002869A4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002869A4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 64);
  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_100286A64()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  (*(v0[14] + 8))(v0[16], v0[13]);

  v5 = v0[1];
  v6 = v0[18];

  return v5(0);
}

uint64_t sub_100286B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v9 = type metadata accessor for Fence.ID();
  v5[6] = v9;
  v10 = *(v9 - 8);
  v5[7] = v10;
  v11 = *(v10 + 64) + 15;
  v5[8] = swift_task_alloc();
  v12 = type metadata accessor for Fence.TriggerPosition();
  v5[9] = v12;
  v13 = *(v12 - 8);
  v5[10] = v13;
  v14 = *(v13 + 64) + 15;
  v5[11] = swift_task_alloc();
  v15 = type metadata accessor for Fence.TriggerID();
  v5[12] = v15;
  v16 = *(v15 - 8);
  v5[13] = v16;
  v17 = *(v16 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v18 = type metadata accessor for Fence();
  v5[16] = v18;
  v19 = *(v18 - 8);
  v5[17] = v19;
  v20 = *(v19 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v21 = type metadata accessor for LocalUserNotificationCategory();
  v5[20] = v21;
  v22 = *(v21 - 8);
  v5[21] = v22;
  v23 = *(v22 + 64) + 15;
  v5[22] = swift_task_alloc();
  v24 = type metadata accessor for FenceNotification();
  v5[23] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v26 = swift_task_alloc();
  v5[27] = v26;
  *v26 = v5;
  v26[1] = sub_100286E18;

  return sub_10025DC1C(a1, a3, a4);
}

uint64_t sub_100286E18(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 216);
  v8 = *v3;
  *(*v3 + 224) = v2;

  if (v2)
  {
    v9 = v6[5];
    v10 = sub_100287224;
  }

  else
  {
    v6[29] = a2;
    v6[30] = a1;
    v10 = sub_100286F58;
    v9 = 0;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100286F58()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v20 = v0[9];
  v21 = v0[11];
  v8 = v0[3];
  v19 = v0[4];
  v9 = v0[2];
  (*(v0[21] + 104))(v0[22], enum case for LocalUserNotificationCategory.geofenceTrigger(_:), v0[20]);
  (*(v3 + 16))(v1, v9, v2);
  (*(v6 + 16))(v4, v8, v5);
  (*(v7 + 16))(v21, v19, v20);
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_1002870B8;
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[26];
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[15];
  v17 = v0[11];

  return sub_1004504F0(v13, v14, v15, v16, v17, v11, v12);
}

uint64_t sub_1002870B8()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  *(v3 + 256) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002879AC, 0, 0);
  }

  else
  {
    v4 = async function pointer to daemon.getter[1];
    v5 = swift_task_alloc();
    *(v3 + 264) = v5;
    *v5 = v3;
    v5[1] = sub_10028767C;

    return daemon.getter();
  }
}

uint64_t sub_100287224()
{
  v52 = v0;
  v50 = v0[28];
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v8 = v0[2];
  v7 = v0[3];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFF88);
  (*(v1 + 16))(v2, v8, v3);
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  if (v12)
  {
    v46 = v0[12];
    v44 = v0[16];
    v20 = v0[7];
    v19 = v0[8];
    v49 = v11;
    v21 = v0[6];
    v45 = v0[14];
    v22 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v22 = 136446722;
    v47 = v10;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    (*(v14 + 8))(v13, v44);
    v26 = sub_10000D01C(v23, v25, &v51);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v17 + 8))(v45, v46);
    v30 = sub_10000D01C(v27, v29, &v51);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2114;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v31;
    *v48 = v31;
    _os_log_impl(&_mh_execute_header, v47, v49, "Failed to post transparency notification for fence %{public}s with trigger %{public}s: %{public}@", v22, 0x20u);
    sub_100002CE0(v48, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v33 = v0[25];
  v32 = v0[26];
  v34 = v0[24];
  v35 = v0[22];
  v37 = v0[18];
  v36 = v0[19];
  v39 = v0[14];
  v38 = v0[15];
  v40 = v0[11];
  v41 = v0[8];

  v42 = v0[1];

  return v42();
}

uint64_t sub_10028767C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v12 = *v1;
  *(v3 + 272) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 280) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for UserNotificationService();
  v9 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009518(&qword_1005AD530, type metadata accessor for UserNotificationService);
  *v6 = v12;
  v6[1] = sub_100287858;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100287858(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *(*v2 + 272);
  v7 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  if (v1)
  {
    v8 = v4[5];
    v9 = sub_1002881B4;
  }

  else
  {
    v9 = sub_100287E20;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1002879C8()
{
  v52 = v0;
  v50 = v0[32];
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v8 = v0[2];
  v7 = v0[3];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFF88);
  (*(v1 + 16))(v2, v8, v3);
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  if (v12)
  {
    v46 = v0[12];
    v44 = v0[16];
    v20 = v0[7];
    v19 = v0[8];
    v49 = v11;
    v21 = v0[6];
    v45 = v0[14];
    v22 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v22 = 136446722;
    v47 = v10;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    (*(v14 + 8))(v13, v44);
    v26 = sub_10000D01C(v23, v25, &v51);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v17 + 8))(v45, v46);
    v30 = sub_10000D01C(v27, v29, &v51);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2114;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v31;
    *v48 = v31;
    _os_log_impl(&_mh_execute_header, v47, v49, "Failed to post transparency notification for fence %{public}s with trigger %{public}s: %{public}@", v22, 0x20u);
    sub_100002CE0(v48, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v33 = v0[25];
  v32 = v0[26];
  v34 = v0[24];
  v35 = v0[22];
  v37 = v0[18];
  v36 = v0[19];
  v39 = v0[14];
  v38 = v0[15];
  v40 = v0[11];
  v41 = v0[8];

  v42 = v0[1];

  return v42();
}

uint64_t sub_100287E20()
{
  sub_1002939A8(v0[26], v0[25], type metadata accessor for FenceNotification);
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[5];
  sub_1002939A8(v1, v2, type metadata accessor for FenceNotification);
  v5 = *(v2 + *(v3 + 20));
  v6 = objc_allocWithZone(UNUserNotificationCenter);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithBundleIdentifier:v7];

  v9 = sub_1002925EC(v2, type metadata accessor for FenceNotification, type metadata accessor for FenceNotification, type metadata accessor for FenceNotification);
  LocalUserNotificationCategory.rawValue.getter();
  v10._countAndFlagsBits = 45;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = v2 + *(v3 + 24);
  v12._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v12);

  v13 = v9;
  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() requestWithIdentifier:v14 content:v13 trigger:0 destinations:7];

  [v8 addNotificationRequest:v15 withCompletionHandler:0];
  sub_100293A10(v2, type metadata accessor for FenceNotification);
  sub_100293A10(v1, type metadata accessor for FenceNotification);

  return _swift_task_switch(sub_1002880AC, v4, 0);
}

uint64_t sub_1002880AC()
{
  v1 = v0[36];
  v2 = v0[26];

  sub_100293A10(v2, type metadata accessor for FenceNotification);
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[11];
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002881B4()
{
  v52 = v0;
  sub_100293A10(v0[26], type metadata accessor for FenceNotification);
  v50 = v0[37];
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v8 = v0[2];
  v7 = v0[3];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFF88);
  (*(v1 + 16))(v2, v8, v3);
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  if (v12)
  {
    v46 = v0[12];
    v44 = v0[16];
    v20 = v0[7];
    v19 = v0[8];
    v49 = v11;
    v21 = v0[6];
    v45 = v0[14];
    v22 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v22 = 136446722;
    v47 = v10;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    (*(v14 + 8))(v13, v44);
    v26 = sub_10000D01C(v23, v25, &v51);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v17 + 8))(v45, v46);
    v30 = sub_10000D01C(v27, v29, &v51);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2114;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v31;
    *v48 = v31;
    _os_log_impl(&_mh_execute_header, v47, v49, "Failed to post transparency notification for fence %{public}s with trigger %{public}s: %{public}@", v22, 0x20u);
    sub_100002CE0(v48, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v33 = v0[25];
  v32 = v0[26];
  v34 = v0[24];
  v35 = v0[22];
  v37 = v0[18];
  v36 = v0[19];
  v39 = v0[14];
  v38 = v0[15];
  v40 = v0[11];
  v41 = v0[8];

  v42 = v0[1];

  return v42();
}

uint64_t sub_100288628(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_1002886F4;

  return daemon.getter();
}

uint64_t sub_1002886F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  v3[6] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[7] = v6;
  v7 = type metadata accessor for Daemon();
  v3[8] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[9] = v9;
  v10 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1002888D4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002888D4(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {
    v5 = v4[3];

    return _swift_task_switch(sub_100289248, v5, 0);
  }

  else
  {
    v6 = v4[6];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[12] = v8;
    *v8 = v4;
    v8[1] = sub_100288A48;

    return daemon.getter();
  }
}

uint64_t sub_100288A48(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *v1;
  v3[13] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[14] = v7;
  v8 = type metadata accessor for FenceService(0);
  v9 = sub_100009518(&qword_1005A9278, type metadata accessor for FenceService);
  *v7 = v5;
  v7[1] = sub_100288BFC;
  v10 = v3[9];
  v11 = v3[8];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100288BFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v10 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_1002892B8;
  }

  else
  {
    v7 = v3[13];
    v8 = v3[10];

    v6 = sub_100288D24;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100288D24()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = sub_100009518(&qword_1005AAB90, type metadata accessor for LocalStorageService);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_100288E5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v3, 0xD000000000000010, 0x80000001004E66A0, sub_10029332C, v4, &type metadata for () + 8);
}

uint64_t sub_100288E5C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_100289164;
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 80);

    v5 = sub_100288F84;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100288FA0()
{
  v1 = v0[15];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_100009518(&qword_1005AF4A8, type metadata accessor for FenceService);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  swift_retain_n();
  sub_10020D620(0, 0, v2, &unk_1004D0730, v6);

  return _swift_task_switch(sub_1002890E8, v3, 0);
}

uint64_t sub_1002890E8()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100289164()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1002891D0, v2, 0);
}

uint64_t sub_1002891D0()
{
  v1 = v0[10];

  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100289248()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002892B8()
{
  v1 = v0[10];

  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100289330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for FenceTriggerRecord();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for Fence.ID();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100289424, v3, 0);
}

uint64_t sub_100289424()
{
  v23 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[11] = sub_10000A6F0(v5, qword_1005DFF88);
  v6 = *(v2 + 16);
  v0[12] = v6;
  v0[13] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_10000D01C(v15, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "saveFenceTrigger: %{public}s", v13, 0xCu);
    sub_100004984(v14);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[14] = v20;
  *v20 = v0;
  v20[1] = sub_1002896A0;

  return daemon.getter();
}

uint64_t sub_1002896A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  *(v3 + 120) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10028987C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10028987C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v10 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_10028A00C;
  }

  else
  {
    v7 = v3[15];
    v8 = v3[5];

    v6 = sub_1002899A4;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002899A4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  (*(v0 + 96))(v3, *(v0 + 16), *(v0 + 64));
  v7 = *(v4 + 20);
  v8 = type metadata accessor for Fence.TriggerID();
  (*(*(v8 - 8) + 16))(v3 + v7, v5, v8);
  v9 = *(v4 + 24);
  v10 = type metadata accessor for Fence.TriggerPosition();
  (*(*(v10 - 8) + 16))(v3 + v9, v6, v10);

  return _swift_task_switch(sub_100289AB4, v1, 0);
}

uint64_t sub_100289AB4()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = sub_100009518(&qword_1005AAB90, type metadata accessor for LocalStorageService);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100289BEC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v3, 0xD000000000000015, 0x80000001004E66C0, sub_100293334, v4, &type metadata for () + 8);
}

uint64_t sub_100289BEC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = sub_100289E08;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 136);

    v5 = sub_100289D14;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100289D14()
{
  v1 = *(v0 + 40);
  sub_100293A10(*(v0 + 56), type metadata accessor for FenceTriggerRecord);

  return _swift_task_switch(sub_100289D94, v1, 0);
}

uint64_t sub_100289D94()
{
  v1 = v0[17];

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100289E08()
{
  v1 = v0[19];
  v2 = v0[7];
  v3 = v0[5];

  sub_100293A10(v2, type metadata accessor for FenceTriggerRecord);

  return _swift_task_switch(sub_100289E94, v3, 0);
}

uint64_t sub_100289E94()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[11];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "saveFenceTrigger: ERROR %{public}@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v9 = v0[10];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10028A00C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[11];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "saveFenceTrigger: ERROR %{public}@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v9 = v0[10];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10028A184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = type metadata accessor for Fence();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v10 = *(v9 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = type metadata accessor for Fence.ID();
  v6[15] = v11;
  v12 = *(v11 - 8);
  v6[16] = v12;
  v13 = *(v12 + 64) + 15;
  v6[17] = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock();
  v6[18] = v14;
  v15 = *(v14 - 8);
  v6[19] = v15;
  v16 = *(v15 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_projectBox();

  return _swift_task_switch(sub_10028A328, a5, 0);
}

uint64_t sub_10028A328()
{
  v1 = *(v0 + 160);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_10028A3F4;
  v3 = *(v0 + 160);

  return sub_100291918(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_10028A3F4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  v5 = v2[20];
  v6 = v2[19];
  v7 = v2[18];
  v8 = v2[9];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v9 = sub_100293A78;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_10028A5A0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10028A5A0()
{
  v28 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[14];
    v25 = v0[15];
    v10 = v0[11];
    v9 = v0[12];
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v11 = 136446210;
    swift_beginAccess();
    (*(v9 + 16))(v8, v5, v10);
    Fence.id.getter();
    (*(v9 + 8))(v8, v10);
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v7 + 8))(v6, v25);
    v15 = sub_10000D01C(v12, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Posting trigger confirmation notification for fence: %{public}s", v11, 0xCu);
    sub_100004984(v26);
  }

  v16 = v0[21];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[11];
  swift_beginAccess();
  (*(v18 + 16))(v17, v16, v19);
  v20 = swift_task_alloc();
  v0[23] = v20;
  *v20 = v0;
  v20[1] = sub_10028A884;
  v21 = v0[13];
  v23 = v0[9];
  v22 = v0[10];

  return sub_10028AADC(v21, v22);
}

uint64_t sub_10028A884()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *v1;
  v6[24] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[9];

    return _swift_task_switch(sub_10028AA50, v7, 0);
  }

  else
  {
    v8 = v6[20];
    v9 = v6[17];
    v10 = v6[13];
    v11 = v6[14];

    v12 = v6[1];

    return v12();
  }
}

uint64_t sub_10028AA50()
{
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];

  v5 = v0[1];
  v6 = v0[24];

  return v5();
}

uint64_t sub_10028AADC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for FenceConfirmationNotification();
  v3[15] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for Destination();
  v3[19] = v6;
  v7 = *(v6 - 8);
  v3[20] = v7;
  v8 = *(v7 + 64) + 15;
  v3[21] = swift_task_alloc();
  v9 = type metadata accessor for PersonHandle();
  v3[22] = v9;
  v10 = *(v9 - 8);
  v3[23] = v10;
  v11 = *(v10 + 64) + 15;
  v3[24] = swift_task_alloc();
  v12 = type metadata accessor for Fence.ID();
  v3[25] = v12;
  v13 = *(v12 - 8);
  v3[26] = v13;
  v14 = *(v13 + 64) + 15;
  v3[27] = swift_task_alloc();
  v15 = type metadata accessor for Fence.TriggerID();
  v3[28] = v15;
  v16 = *(v15 - 8);
  v3[29] = v16;
  v17 = *(v16 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v18 = type metadata accessor for Fence();
  v3[34] = v18;
  v19 = *(v18 - 8);
  v3[35] = v19;
  v20 = *(v19 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_10028AD94, v2, 0);
}

uint64_t sub_10028AD94()
{
  v76 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[12];
  v7 = v0[13];
  v9 = type metadata accessor for Logger();
  v0[39] = sub_10000A6F0(v9, qword_1005DFF88);
  v10 = *(v3 + 16);
  v0[40] = v10;
  v0[41] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v8, v2);
  v11 = *(v6 + 16);
  v0[42] = v11;
  v0[43] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v7, v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[38];
  v17 = v0[34];
  v16 = v0[35];
  v18 = v0[33];
  v19 = v0[28];
  v20 = v0[29];
  if (v14)
  {
    v70 = v0[28];
    v64 = v0[34];
    v22 = v0[26];
    v21 = v0[27];
    v23 = v0[25];
    v68 = v0[33];
    v24 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v24 = 136446466;
    log = v12;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v13;
    v27 = v26;
    (*(v22 + 8))(v21, v23);
    (*(v16 + 8))(v15, v64);
    v28 = sub_10000D01C(v25, v27, &v75);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v32 = *(v20 + 8);
    v32(v68, v70);
    v33 = sub_10000D01C(v29, v31, &v75);

    *(v24 + 14) = v33;
    _os_log_impl(&_mh_execute_header, log, v66, "Will post confirmation notification for fence %{public}s with trigger %{public}s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v32 = *(v20 + 8);
    v32(v18, v19);
    (*(v16 + 8))(v15, v17);
  }

  v0[44] = v32;
  v34 = v0[12];
  v35 = Fence.others.getter();
  if (*(v35 + 16))
  {
    v36 = v0[21];
    (*(v0[23] + 16))(v0[24], v35 + ((*(v0[23] + 80) + 32) & ~*(v0[23] + 80)), v0[22]);

    sub_100279044();
    v37 = swift_task_alloc();
    v0[45] = v37;
    *v37 = v0;
    v37[1] = sub_10028B424;
    v38 = v0[21];

    return sub_1004559B4(1);
  }

  else
  {

    v63 = v0[43];
    v40 = v0[42];
    v41 = v0[32];
    v42 = v0[28];
    v69 = v0[29];
    v43 = v0[27];
    v71 = v0[26];
    loga = v0[44];
    v74 = v0[25];
    v44 = v0[18];
    v45 = v0[15];
    v46 = v0[13];
    v47 = sub_10025F1DC(v0[12], 0, 0);
    v65 = v48;
    v67 = v47;

    Fence.id.getter();
    v40(v41, v46, v42);
    v49 = enum case for LocalUserNotificationCategory.geofenceConfirmation(_:);
    v50 = type metadata accessor for LocalUserNotificationCategory();
    (*(*(v50 - 8) + 104))(v44, v49, v50);
    *(v44 + v45[5]) = 2;
    v51 = (v44 + v45[8]);
    *v51 = 0;
    v51[1] = 0xE000000000000000;
    v52 = Fence.ID.uuidString.getter();
    v54 = v53;
    v55 = (v44 + v45[9]);
    *v55 = v67;
    v55[1] = v65;
    v56 = (v44 + v45[7]);
    *v56 = v52;
    v56[1] = v53;
    v57 = v45[6];

    Fence.TriggerID.uuid.getter();
    sub_10004B564(&qword_1005B0BC0, &qword_1004D2868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C1900;
    *(inited + 32) = 0x6E6F697461636F6CLL;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEF64497472656C41;
    *(inited + 48) = v52;
    *(inited + 56) = v54;
    v59 = sub_100207B7C(inited);
    swift_setDeallocating();
    sub_100002CE0(inited + 32, &qword_1005B0088, &qword_1004D38F0);
    v0[48] = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (loga)(v41, v42);
    v60 = *(v71 + 8);
    v0[49] = v60;
    v0[50] = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60(v43, v74);
    *(v44 + v45[10]) = v59;
    v61 = async function pointer to daemon.getter[1];
    v62 = swift_task_alloc();
    v0[51] = v62;
    *v62 = v0;
    v62[1] = sub_10028B870;

    return daemon.getter();
  }
}

uint64_t sub_10028B424(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  v7 = *(*v2 + 152);
  v8 = *(*v2 + 112);
  v10 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = a2;

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_10028B598, v8, 0);
}

uint64_t sub_10028B598()
{
  v1 = v0[47];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v2 = v0[42];
  v3 = v0[32];
  v4 = v0[28];
  v29 = v0[29];
  v25 = v0[43];
  v26 = v0[27];
  v30 = v0[26];
  v31 = v0[44];
  v32 = v0[25];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[13];
  v8 = sub_10025F1DC(v0[12], v0[46], v1);
  v27 = v9;
  v28 = v8;

  Fence.id.getter();
  v2(v3, v7, v4);
  v10 = enum case for LocalUserNotificationCategory.geofenceConfirmation(_:);
  v11 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v11 - 8) + 104))(v5, v10, v11);
  *(v5 + v6[5]) = 2;
  v12 = (v5 + v6[8]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = Fence.ID.uuidString.getter();
  v15 = v14;
  v16 = (v5 + v6[9]);
  *v16 = v28;
  v16[1] = v27;
  v17 = (v5 + v6[7]);
  *v17 = v13;
  v17[1] = v14;
  v18 = v6[6];

  Fence.TriggerID.uuid.getter();
  sub_10004B564(&qword_1005B0BC0, &qword_1004D2868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEF64497472656C41;
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  v20 = sub_100207B7C(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005B0088, &qword_1004D38F0);
  v0[48] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v3, v4);
  v21 = *(v30 + 8);
  v0[49] = v21;
  v0[50] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v26, v32);
  *(v5 + v6[10]) = v20;
  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  v0[51] = v23;
  *v23 = v0;
  v23[1] = sub_10028B870;

  return daemon.getter();
}

uint64_t sub_10028B870(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 408);
  v12 = *v1;
  *(v3 + 416) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 424) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for UserNotificationService();
  v9 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009518(&qword_1005AD530, type metadata accessor for UserNotificationService);
  *v6 = v12;
  v6[1] = sub_10028BA4C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10028BA4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *(*v2 + 416);
  v7 = *v2;
  v4[54] = a1;
  v4[55] = v1;

  if (v1)
  {
    v8 = v4[14];
    v9 = sub_10028C210;
  }

  else
  {
    v9 = sub_10028BBA0;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10028BBA0()
{
  sub_1002939A8(v0[18], v0[17], type metadata accessor for FenceConfirmationNotification);
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  sub_1002939A8(v1, v2, type metadata accessor for FenceConfirmationNotification);
  v5 = *(v2 + *(v4 + 20));
  v6 = objc_allocWithZone(UNUserNotificationCenter);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithBundleIdentifier:v7];

  v9 = sub_1002925EC(v2, type metadata accessor for FenceConfirmationNotification, type metadata accessor for FenceConfirmationNotification, type metadata accessor for FenceConfirmationNotification);
  LocalUserNotificationCategory.rawValue.getter();
  v10._countAndFlagsBits = 45;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = v2 + *(v4 + 24);
  v12._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v12);

  v13 = v9;
  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() requestWithIdentifier:v14 content:v13 trigger:0 destinations:7];

  [v8 addNotificationRequest:v15 withCompletionHandler:0];
  sub_100293A10(v2, type metadata accessor for FenceConfirmationNotification);
  sub_100293A10(v1, type metadata accessor for FenceConfirmationNotification);

  return _swift_task_switch(sub_10028BE28, v3, 0);
}

uint64_t sub_10028BE28()
{
  v58 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);
  v5 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 104);
  (*(v0 + 320))(*(v0 + 296), *(v0 + 96), *(v0 + 272));
  v2(v5, v7, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v45 = *(v0 + 392);
    v50 = *(v0 + 352);
    v51 = *(v0 + 384);
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    v46 = *(v0 + 272);
    v47 = *(v0 + 400);
    v12 = *(v0 + 216);
    v48 = *(v0 + 224);
    v49 = *(v0 + 248);
    v13 = *(v0 + 200);
    v53 = *(v0 + 432);
    v55 = *(v0 + 144);
    v14 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v14 = 136446466;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v45(v12, v13);
    (*(v11 + 8))(v10, v46);
    v18 = sub_10000D01C(v15, v17, &v57);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v50(v49, v48);
    v22 = sub_10000D01C(v19, v21, &v57);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Confirmation notification posted for fence %{public}s with trigger %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    v23 = v55;
  }

  else
  {
    v24 = *(v0 + 384);
    v25 = *(v0 + 352);
    v26 = *(v0 + 296);
    v27 = *(v0 + 272);
    v28 = *(v0 + 280);
    v29 = *(v0 + 248);
    v30 = *(v0 + 224);
    v31 = *(v0 + 144);
    v32 = *(v0 + 432);

    v25(v29, v30);
    (*(v28 + 8))(v26, v27);
    v23 = v31;
  }

  sub_100293A10(v23, type metadata accessor for FenceConfirmationNotification);
  v34 = *(v0 + 296);
  v33 = *(v0 + 304);
  v35 = *(v0 + 288);
  v37 = *(v0 + 256);
  v36 = *(v0 + 264);
  v39 = *(v0 + 240);
  v38 = *(v0 + 248);
  v40 = *(v0 + 216);
  v41 = *(v0 + 192);
  v42 = *(v0 + 168);
  v52 = *(v0 + 144);
  v54 = *(v0 + 136);
  v56 = *(v0 + 128);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_10028C210()
{
  v61 = v0;
  v1 = v0[55];
  v52 = v0[42];
  v55 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v58 = v0[39];
  v4 = v0[36];
  v5 = v0[34];
  v6 = v0[30];
  v7 = v0[28];
  v9 = v0[12];
  v8 = v0[13];
  sub_100293A10(v0[18], type metadata accessor for FenceConfirmationNotification);
  v3(v4, v9, v5);
  v52(v6, v8, v7);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v45 = v0[49];
    v50 = v0[44];
    v51 = v0[48];
    v12 = v0[35];
    v13 = v0[36];
    v46 = v0[34];
    v47 = v0[50];
    v48 = v0[28];
    v49 = v0[30];
    v56 = v0[55];
    v14 = v0[27];
    v15 = v0[25];
    v16 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v16 = 136446722;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v45(v14, v15);
    (*(v12 + 8))(v13, v46);
    v20 = sub_10000D01C(v17, v19, &v60);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v50(v49, v48);
    v24 = sub_10000D01C(v21, v23, &v60);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v25;
    *v53 = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to post confirmation notification for fence %{public}s with trigger %{public}s: %{public}@", v16, 0x20u);
    sub_100002CE0(v53, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {
    v26 = v0[48];
    v27 = v0[44];
    v29 = v0[35];
    v28 = v0[36];
    v30 = v0[34];
    v31 = v0[30];
    v32 = v0[28];

    v27(v31, v32);
    (*(v29 + 8))(v28, v30);
  }

  v34 = v0[37];
  v33 = v0[38];
  v35 = v0[36];
  v37 = v0[32];
  v36 = v0[33];
  v39 = v0[30];
  v38 = v0[31];
  v40 = v0[27];
  v41 = v0[24];
  v42 = v0[21];
  v54 = v0[18];
  v57 = v0[17];
  v59 = v0[16];

  v43 = v0[1];

  return v43();
}

uint64_t sub_10028C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v9 = type metadata accessor for Fence.TriggerPosition();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = type metadata accessor for LocalUserNotificationCategory();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();
  v15 = type metadata accessor for FenceNotification();
  v5[13] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v17 = type metadata accessor for Fence.ID();
  v5[17] = v17;
  v18 = *(v17 - 8);
  v5[18] = v18;
  v19 = *(v18 + 64) + 15;
  v5[19] = swift_task_alloc();
  v20 = type metadata accessor for Fence.TriggerID();
  v5[20] = v20;
  v21 = *(v20 - 8);
  v5[21] = v21;
  v22 = *(v21 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v23 = type metadata accessor for Fence();
  v5[27] = v23;
  v24 = *(v23 - 8);
  v5[28] = v24;
  v25 = *(v24 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v26 = swift_task_alloc();
  v5[34] = v26;
  *v26 = v5;
  v26[1] = sub_10028C99C;

  return sub_100286200(a1, a3, a4);
}

uint64_t sub_10028C99C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;

  if (v1)
  {
    v8 = *(v4 + 256);
    v7 = *(v4 + 264);
    v10 = *(v4 + 240);
    v9 = *(v4 + 248);
    v11 = *(v4 + 232);
    v13 = *(v4 + 200);
    v12 = *(v4 + 208);
    v14 = *(v4 + 184);
    v15 = *(v4 + 192);
    v20 = *(v4 + 176);
    v21 = *(v4 + 152);
    v22 = *(v4 + 128);
    v23 = *(v4 + 120);
    v24 = *(v4 + 112);
    v25 = *(v4 + 96);
    v16 = *(v4 + 72);

    v17 = *(v6 + 8);

    return v17(0);
  }

  else
  {
    v19 = *(v4 + 48);
    *(v4 + 424) = a1 & 1;

    return _swift_task_switch(sub_10028CBC8, v19, 0);
  }
}

uint64_t sub_10028CBC8()
{
  v99 = v0;
  if (*(v0 + 424) == 1)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 264);
    v2 = *(v0 + 216);
    v3 = *(v0 + 224);
    v4 = *(v0 + 208);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = type metadata accessor for Logger();
    *(v0 + 280) = sub_10000A6F0(v9, qword_1005DFF88);
    v10 = *(v3 + 16);
    *(v0 + 288) = v10;
    *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v1, v8, v2);
    v11 = *(v6 + 16);
    *(v0 + 304) = v11;
    *(v0 + 312) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v4, v7, v5);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 264);
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = *(v0 + 208);
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);
    if (v14)
    {
      v82 = *(v0 + 216);
      v22 = *(v0 + 144);
      v21 = *(v0 + 152);
      v91 = *(v0 + 208);
      v23 = *(v0 + 136);
      v88 = *(v0 + 160);
      v24 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v24 = 136446466;
      log = v12;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v13;
      v27 = v26;
      (*(v22 + 8))(v21, v23);
      v28 = *(v16 + 8);
      v28(v15, v82);
      v29 = sub_10000D01C(v25, v27, &v98);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2082;
      sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v33 = *(v20 + 8);
      v33(v91, v88);
      v34 = sub_10000D01C(v30, v32, &v98);

      *(v24 + 14) = v34;
      _os_log_impl(&_mh_execute_header, log, v85, "Should post confirmation notification for fence %{public}s with trigger %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v33 = *(v20 + 8);
      v33(v18, v19);
      v28 = *(v16 + 8);
      v28(v15, v17);
    }

    *(v0 + 320) = v28;
    *(v0 + 328) = v33;
    v65 = swift_task_alloc();
    *(v0 + 336) = v65;
    *v65 = v0;
    v65[1] = sub_10028D38C;
    v66 = *(v0 + 32);
    v67 = *(v0 + 40);
    v68 = *(v0 + 16);

    return sub_10025DC1C(v68, v66, v67);
  }

  else
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 240);
    v36 = *(v0 + 216);
    v37 = *(v0 + 224);
    v38 = *(v0 + 184);
    v39 = *(v0 + 160);
    v40 = *(v0 + 168);
    v42 = *(v0 + 16);
    v41 = *(v0 + 24);
    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005DFF88);
    (*(v37 + 16))(v35, v42, v36);
    (*(v40 + 16))(v38, v41, v39);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 240);
    v48 = *(v0 + 216);
    v49 = *(v0 + 224);
    v50 = *(v0 + 184);
    v51 = *(v0 + 160);
    v52 = *(v0 + 168);
    if (v46)
    {
      v83 = *(v0 + 216);
      v54 = *(v0 + 144);
      v53 = *(v0 + 152);
      v92 = *(v0 + 184);
      v55 = *(v0 + 136);
      v89 = *(v0 + 160);
      v56 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v56 = 136446466;
      loga = v44;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v45;
      v59 = v58;
      (*(v54 + 8))(v53, v55);
      (*(v49 + 8))(v47, v83);
      v60 = sub_10000D01C(v57, v59, &v98);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2082;
      sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v52 + 8))(v92, v89);
      v64 = sub_10000D01C(v61, v63, &v98);

      *(v56 + 14) = v64;
      _os_log_impl(&_mh_execute_header, loga, v86, "Should not post trigger received notification for fence %{public}s with trigger %{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v52 + 8))(v50, v51);
      (*(v49 + 8))(v47, v48);
    }

    v71 = *(v0 + 256);
    v70 = *(v0 + 264);
    v73 = *(v0 + 240);
    v72 = *(v0 + 248);
    v74 = *(v0 + 232);
    v76 = *(v0 + 200);
    v75 = *(v0 + 208);
    v77 = *(v0 + 184);
    v78 = *(v0 + 192);
    v79 = *(v0 + 176);
    v84 = *(v0 + 152);
    v87 = *(v0 + 128);
    v90 = *(v0 + 120);
    v93 = *(v0 + 112);
    logb = *(v0 + 96);
    v97 = *(v0 + 72);

    v80 = *(v0 + 8);
    v81 = *(v0 + 424);

    return v80(v81);
  }
}

uint64_t sub_10028D38C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 336);
  v8 = *v3;
  *(*v3 + 344) = v2;

  if (v2)
  {
    v9 = v6[6];
    v10 = sub_10028D794;
  }

  else
  {
    v6[44] = a2;
    v6[45] = a1;
    v10 = sub_10028D4CC;
    v9 = 0;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10028D4CC()
{
  v22 = v0[38];
  v23 = v0[39];
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[20];
  v21 = v0[9];
  v6 = v0[8];
  v19 = v0[37];
  v20 = v0[7];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  (*(v0[11] + 104))(v0[12], enum case for LocalUserNotificationCategory.geofenceTriggerReceived(_:), v0[10]);
  v1(v2, v9, v3);
  v22(v4, v8, v5);
  (*(v6 + 16))(v21, v7, v20);
  v10 = swift_task_alloc();
  v0[46] = v10;
  *v10 = v0;
  v10[1] = sub_10028D628;
  v12 = v0[44];
  v11 = v0[45];
  v13 = v0[32];
  v14 = v0[25];
  v15 = v0[16];
  v16 = v0[12];
  v17 = v0[9];

  return sub_1004504F0(v15, v16, v13, v14, v17, v11, v12);
}

uint64_t sub_10028D628()
{
  v2 = *(*v1 + 368);
  v3 = *v1;
  *(v3 + 376) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10028DF10, 0, 0);
  }

  else
  {
    v4 = async function pointer to daemon.getter[1];
    v5 = swift_task_alloc();
    *(v3 + 384) = v5;
    *v5 = v3;
    v5[1] = sub_10028DBE0;

    return daemon.getter();
  }
}

uint64_t sub_10028D794()
{
  v60 = v0;
  v1 = *(v0 + 344);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 24);
  (*(v0 + 288))(*(v0 + 232), *(v0 + 16), *(v0 + 216));
  v3(v6, v8, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 328);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 216);
  v55 = v15;
  v57 = *(v0 + 320);
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v18 = *(v0 + 160);
  if (v11)
  {
    v45 = *(v0 + 160);
    v46 = *(v0 + 176);
    v20 = *(v0 + 144);
    v19 = *(v0 + 152);
    v52 = v10;
    v21 = *(v0 + 136);
    v47 = *(v0 + 328);
    v22 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v22 = 136446722;
    v48 = v9;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    v57(v13, v55);
    v26 = sub_10000D01C(v23, v25, &v59);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v47(v46, v45);
    v30 = sub_10000D01C(v27, v29, &v59);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2114;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v31;
    *v50 = v31;
    _os_log_impl(&_mh_execute_header, v48, v52, "Failed to post trigger received notification for fence %{public}s with trigger %{public}s: %{public}@", v22, 0x20u);
    sub_100002CE0(v50, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    v12(v16, v18);
    v57(v13, v55);
  }

  v33 = *(v0 + 256);
  v32 = *(v0 + 264);
  v35 = *(v0 + 240);
  v34 = *(v0 + 248);
  v36 = *(v0 + 232);
  v38 = *(v0 + 200);
  v37 = *(v0 + 208);
  v39 = *(v0 + 184);
  v40 = *(v0 + 192);
  v41 = *(v0 + 176);
  v49 = *(v0 + 152);
  v51 = *(v0 + 128);
  v53 = *(v0 + 120);
  v54 = *(v0 + 112);
  v56 = *(v0 + 96);
  v58 = *(v0 + 72);

  v42 = *(v0 + 8);
  v43 = *(v0 + 424);

  return v42(v43);
}

uint64_t sub_10028DBE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 384);
  v12 = *v1;
  *(v3 + 392) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 400) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for UserNotificationService();
  v9 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009518(&qword_1005AD530, type metadata accessor for UserNotificationService);
  *v6 = v12;
  v6[1] = sub_10028DDBC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10028DDBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *(*v2 + 392);
  v7 = *v2;
  v4[51] = a1;
  v4[52] = v1;

  if (v1)
  {
    v8 = v4[6];
    v9 = sub_10028EA28;
  }

  else
  {
    v9 = sub_10028E378;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10028DF2C()
{
  v60 = v0;
  v1 = *(v0 + 376);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 24);
  (*(v0 + 288))(*(v0 + 232), *(v0 + 16), *(v0 + 216));
  v3(v6, v8, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 328);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 216);
  v55 = v15;
  v57 = *(v0 + 320);
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v18 = *(v0 + 160);
  if (v11)
  {
    v45 = *(v0 + 160);
    v46 = *(v0 + 176);
    v20 = *(v0 + 144);
    v19 = *(v0 + 152);
    v52 = v10;
    v21 = *(v0 + 136);
    v47 = *(v0 + 328);
    v22 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v22 = 136446722;
    v48 = v9;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    v57(v13, v55);
    v26 = sub_10000D01C(v23, v25, &v59);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v47(v46, v45);
    v30 = sub_10000D01C(v27, v29, &v59);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2114;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v31;
    *v50 = v31;
    _os_log_impl(&_mh_execute_header, v48, v52, "Failed to post trigger received notification for fence %{public}s with trigger %{public}s: %{public}@", v22, 0x20u);
    sub_100002CE0(v50, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    v12(v16, v18);
    v57(v13, v55);
  }

  v33 = *(v0 + 256);
  v32 = *(v0 + 264);
  v35 = *(v0 + 240);
  v34 = *(v0 + 248);
  v36 = *(v0 + 232);
  v38 = *(v0 + 200);
  v37 = *(v0 + 208);
  v39 = *(v0 + 184);
  v40 = *(v0 + 192);
  v41 = *(v0 + 176);
  v49 = *(v0 + 152);
  v51 = *(v0 + 128);
  v53 = *(v0 + 120);
  v54 = *(v0 + 112);
  v56 = *(v0 + 96);
  v58 = *(v0 + 72);

  v42 = *(v0 + 8);
  v43 = *(v0 + 424);

  return v42(v43);
}

uint64_t sub_10028E378()
{
  sub_1002939A8(v0[16], v0[15], type metadata accessor for FenceNotification);
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[6];
  sub_1002939A8(v1, v2, type metadata accessor for FenceNotification);
  v5 = *(v2 + *(v3 + 20));
  v6 = objc_allocWithZone(UNUserNotificationCenter);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithBundleIdentifier:v7];

  v9 = sub_1002925EC(v2, type metadata accessor for FenceNotification, type metadata accessor for FenceNotification, type metadata accessor for FenceNotification);
  LocalUserNotificationCategory.rawValue.getter();
  v10._countAndFlagsBits = 45;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = v2 + *(v3 + 24);
  v12._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v12);

  v13 = v9;
  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() requestWithIdentifier:v14 content:v13 trigger:0 destinations:7];

  [v8 addNotificationRequest:v15 withCompletionHandler:0];
  sub_100293A10(v2, type metadata accessor for FenceNotification);
  sub_100293A10(v1, type metadata accessor for FenceNotification);

  return _swift_task_switch(sub_10028E604, v4, 0);
}

uint64_t sub_10028E604()
{
  v60 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 192);
  v6 = *(v0 + 160);
  v7 = *(v0 + 24);
  (*(v0 + 288))(*(v0 + 248), *(v0 + 16), *(v0 + 216));
  v2(v5, v7, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 328);
  v57 = *(v0 + 320);
  v12 = *(v0 + 248);
  v13 = *(v0 + 216);
  v14 = *(v0 + 224);
  v15 = *(v0 + 192);
  v16 = *(v0 + 160);
  if (v10)
  {
    v46 = *(v0 + 160);
    v48 = *(v0 + 168);
    v50 = *(v0 + 328);
    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    v19 = *(v0 + 136);
    v53 = *(v0 + 408);
    v55 = *(v0 + 128);
    v45 = *(v0 + 192);
    v20 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v20 = 136446466;
    v47 = v9;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v8;
    v23 = v22;
    (*(v18 + 8))(v17, v19);
    v57(v12, v13);
    v24 = sub_10000D01C(v21, v23, &v59);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v50(v45, v46);
    v28 = sub_10000D01C(v25, v27, &v59);

    *(v20 + 14) = v28;
    _os_log_impl(&_mh_execute_header, log, v47, "Trigger received notification for fence %{public}s with trigger %{public}s", v20, 0x16u);
    swift_arrayDestroy();

    v29 = v55;
  }

  else
  {
    v30 = *(v0 + 128);

    v11(v15, v16);
    v57(v12, v13);
    v29 = v30;
  }

  sub_100293A10(v29, type metadata accessor for FenceNotification);
  v32 = *(v0 + 256);
  v31 = *(v0 + 264);
  v34 = *(v0 + 240);
  v33 = *(v0 + 248);
  v35 = *(v0 + 232);
  v37 = *(v0 + 200);
  v36 = *(v0 + 208);
  v38 = *(v0 + 184);
  v39 = *(v0 + 192);
  v40 = *(v0 + 176);
  v49 = *(v0 + 152);
  v51 = *(v0 + 128);
  v52 = *(v0 + 120);
  v54 = *(v0 + 112);
  v56 = *(v0 + 96);
  v58 = *(v0 + 72);

  v41 = *(v0 + 8);
  v42 = *(v0 + 424);

  return v41(v42);
}

uint64_t sub_10028EA28()
{
  v60 = v0;
  sub_100293A10(*(v0 + 128), type metadata accessor for FenceNotification);
  v1 = *(v0 + 416);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 24);
  (*(v0 + 288))(*(v0 + 232), *(v0 + 16), *(v0 + 216));
  v3(v6, v8, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 328);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 216);
  v55 = v15;
  v57 = *(v0 + 320);
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v18 = *(v0 + 160);
  if (v11)
  {
    v45 = *(v0 + 160);
    v46 = *(v0 + 176);
    v20 = *(v0 + 144);
    v19 = *(v0 + 152);
    v52 = v10;
    v21 = *(v0 + 136);
    v47 = *(v0 + 328);
    v22 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v22 = 136446722;
    v48 = v9;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    v57(v13, v55);
    v26 = sub_10000D01C(v23, v25, &v59);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v47(v46, v45);
    v30 = sub_10000D01C(v27, v29, &v59);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2114;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v31;
    *v50 = v31;
    _os_log_impl(&_mh_execute_header, v48, v52, "Failed to post trigger received notification for fence %{public}s with trigger %{public}s: %{public}@", v22, 0x20u);
    sub_100002CE0(v50, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    v12(v16, v18);
    v57(v13, v55);
  }

  v33 = *(v0 + 256);
  v32 = *(v0 + 264);
  v35 = *(v0 + 240);
  v34 = *(v0 + 248);
  v36 = *(v0 + 232);
  v38 = *(v0 + 200);
  v37 = *(v0 + 208);
  v39 = *(v0 + 184);
  v40 = *(v0 + 192);
  v41 = *(v0 + 176);
  v49 = *(v0 + 152);
  v51 = *(v0 + 128);
  v53 = *(v0 + 120);
  v54 = *(v0 + 112);
  v56 = *(v0 + 96);
  v58 = *(v0 + 72);

  v42 = *(v0 + 8);
  v43 = *(v0 + 424);

  return v42(v43);
}

unint64_t sub_10028EE90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10004B564(&qword_1005B0080, &qword_1004D1618);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_10000709C(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_10004B064(v29, &v24);

        sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
        swift_dynamicCast();
        sub_10004B064(&v25, v27);
        sub_10004B064(v27, v28);
        sub_10004B064(v28, &v26);
        result = sub_1000110D8(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100004984(v12);
          result = sub_10004B064(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_10004B064(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10028F11C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10004B564(&qword_1005B0BA0, &qword_1004D2820);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000709C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_10004B064(v33, v32);
    sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10004B064(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10004B064(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10004B064(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10028F418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_10004B564(&qword_1005B0B08, &qword_1004D26A8);
  v4[5] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005B0B00, &qword_1004D26A0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005B0BB0, &qword_1004D2830) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = type metadata accessor for DateInterval();
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v11 = *(v10 + 64) + 15;
  v4[14] = swift_task_alloc();
  v12 = type metadata accessor for Fence.Schedule.Matcher();
  v4[15] = v12;
  v13 = *(v12 - 8);
  v4[16] = v13;
  v14 = *(v13 + 64) + 15;
  v4[17] = swift_task_alloc();
  v15 = type metadata accessor for Fence.Variant();
  v4[18] = v15;
  v16 = *(v15 - 8);
  v4[19] = v16;
  v17 = *(v16 + 64) + 15;
  v4[20] = swift_task_alloc();
  v18 = type metadata accessor for Fence.Schedule();
  v4[21] = v18;
  v19 = *(v18 - 8);
  v4[22] = v19;
  v20 = *(v19 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v21 = type metadata accessor for Fence.ID();
  v4[25] = v21;
  v22 = *(v21 - 8);
  v4[26] = v22;
  v23 = *(v22 + 64) + 15;
  v4[27] = swift_task_alloc();
  v24 = type metadata accessor for Fence();
  v4[28] = v24;
  v25 = *(v24 - 8);
  v4[29] = v25;
  v26 = *(v25 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v27 = type metadata accessor for Fence.Participant();
  v4[33] = v27;
  v28 = *(v27 - 8);
  v4[34] = v28;
  v29 = *(v28 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v30 = type metadata accessor for Fence.TriggerPosition();
  v4[37] = v30;
  v31 = *(v30 - 8);
  v4[38] = v31;
  v32 = *(v31 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v33 = type metadata accessor for Date();
  v4[41] = v33;
  v34 = *(v33 - 8);
  v4[42] = v34;
  v35 = *(v34 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();

  return _swift_task_switch(sub_10028F8E0, v3, 0);
}

uint64_t sub_10028F8E0()
{
  v240 = v0;
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[3];
  sub_1002787C8(v0[45]);
  v232 = v3[2];
  v232(v1, v4, v2);
  v225 = v3[11];
  LODWORD(v4) = v225(v1, v2);
  v5 = enum case for Fence.TriggerPosition.undetermined(_:);
  v6 = v3[1];
  v6(v1, v2);
  v218 = v5;
  if (v4 != v5)
  {
    goto LABEL_7;
  }

  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[33];
  v10 = v0[34];
  v11 = v0[2];
  Fence.findee.getter();
  (*(v10 + 104))(v8, enum case for Fence.Participant.me(_:), v9);
  LOBYTE(v11) = static Fence.Participant.== infix(_:_:)();
  v12 = *(v10 + 8);
  v12(v8, v9);
  v12(v7, v9);
  if ((v11 & 1) == 0)
  {
LABEL_7:
    v37 = v0[19];
    v36 = v0[20];
    v38 = v0[18];
    v39 = v0[2];
    Fence.variant.getter();
    v40 = (*(v37 + 88))(v36, v38);
    if (v40 == enum case for Fence.Variant.oneTime(_:) || v40 == enum case for Fence.Variant.recurring(_:))
    {
      (*(v0[19] + 8))(v0[20], v0[18]);
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v43 = v0[29];
      v42 = v0[30];
      v44 = v0[28];
      v45 = v0[2];
      v46 = type metadata accessor for Logger();
      sub_10000A6F0(v46, qword_1005DFF88);
      (*(v43 + 16))(v42, v45, v44);
      v18 = Logger.logObject.getter();
      v47 = static os_log_type_t.fault.getter();
      v48 = os_log_type_enabled(v18, v47);
      v21 = v0[45];
      v22 = v0[41];
      v23 = v0[42];
      v25 = v0[29];
      v24 = v0[30];
      v26 = v0[28];
      if (v48)
      {
        v233 = v0[41];
        v50 = v0[26];
        v49 = v0[27];
        log = v18;
        v51 = v0[25];
        v200 = v0[28];
        v30 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        v239 = v219;
        *v30 = 136446210;
        v226 = v21;
        Fence.id.getter();
        sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v191 = v47;
        v54 = v53;
        (*(v50 + 8))(v49, v51);
        (*(v25 + 8))(v24, v200);
        v55 = sub_10000D01C(v52, v54, &v239);

        *(v30 + 4) = v55;
        v35 = "Scheduled fence with no schedule FenceID: %{public}s";
        goto LABEL_16;
      }

LABEL_23:

      (*(v25 + 8))(v24, v26);
      (*(v23 + 8))(v21, v22);
      goto LABEL_24;
    }

    if (v40 != enum case for Fence.Variant.scheduled(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v188 = v6;
    v57 = v0[23];
    v56 = v0[24];
    v59 = v0[21];
    v58 = v0[22];
    v60 = v0[20];
    v61 = v0[17];
    v62 = v0[13];
    v201 = v0[12];
    logb = v0[45];
    v192 = v0[11];
    (*(v0[19] + 96))(v60, v0[18]);
    (*(v58 + 32))(v56, v60, v59);
    (*(v58 + 16))(v57, v56, v59);
    Fence.Schedule.Matcher.init(schedule:)();
    Fence.Schedule.Matcher.interval(containingDate:)();
    if ((*(v62 + 48))(v192, 1, v201) == 1)
    {
      sub_100002CE0(v0[11], &qword_1005B0BB0, &qword_1004D2830);
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v63 = v0[45];
      v65 = v0[42];
      v64 = v0[43];
      v66 = v0[41];
      v67 = v0[31];
      v68 = v0[28];
      v69 = v0[29];
      v70 = v0[2];
      v71 = type metadata accessor for Logger();
      sub_10000A6F0(v71, qword_1005DFF88);
      (*(v69 + 16))(v67, v70, v68);
      (*(v65 + 16))(v64, v63, v66);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      v74 = os_log_type_enabled(v72, v73);
      v76 = v0[42];
      v75 = v0[43];
      v227 = v0[41];
      v234 = v0[45];
      v77 = v0[31];
      v78 = v0[29];
      v220 = v0[28];
      if (v74)
      {
        v169 = v0[43];
        v174 = v73;
        v79 = v0[26];
        v80 = v0[27];
        v81 = v0[25];
        v202 = v0[21];
        logc = v0[24];
        v189 = v0[17];
        v193 = v0[22];
        v178 = v0[16];
        v183 = v0[15];
        v82 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        *v82 = 136446466;
        v171 = v72;
        Fence.id.getter();
        sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v85 = v84;
        (*(v79 + 8))(v80, v81);
        (*(v78 + 8))(v77, v220);
        v86 = sub_10000D01C(v83, v85, &v239);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2082;
        v87 = Date.localISO8601.getter();
        v89 = v88;
        v90 = *(v76 + 8);
        v90(v169, v227);
        v91 = sub_10000D01C(v87, v89, &v239);

        *(v82 + 14) = v91;
        _os_log_impl(&_mh_execute_header, v171, v174, "Fence id %{public}s schedule is not active for %{public}s", v82, 0x16u);
        swift_arrayDestroy();

        (*(v178 + 8))(v189, v183);
        (*(v193 + 8))(logc, v202);
        v90(v234, v227);
      }

      else
      {
        v113 = v0[22];
        v204 = v0[21];
        loge = v0[24];
        v115 = v0[16];
        v114 = v0[17];
        v116 = v0[15];

        v117 = *(v76 + 8);
        v117(v75, v227);
        (*(v78 + 8))(v77, v220);
        (*(v115 + 8))(v114, v116);
        (*(v113 + 8))(loge, v204);
        v117(v234, v227);
      }

      goto LABEL_24;
    }

    v104 = v0[37];
    v105 = v0[38];
    v107 = v0[9];
    v106 = v0[10];
    v108 = v0[4];
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    sub_100005F04(v108, v106, &qword_1005B0B00, &qword_1004D26A0);
    sub_100005F04(v108, v107, &qword_1005B0B00, &qword_1004D26A0);
    loga = *(v105 + 48);
    if ((loga)(v107, 1, v104) == 1)
    {
      v109 = v0[37];
      v110 = v0[38];
      v112 = v0[9];
      v111 = v0[10];
      sub_100002CE0(v111, &qword_1005B0B00, &qword_1004D26A0);
      sub_100002CE0(v112, &qword_1005B0B00, &qword_1004D26A0);
      (*(v110 + 56))(v111, 1, 1, v109);
    }

    else
    {
      v118 = v0[44];
      v119 = v0[41];
      v120 = v0[42];
      v121 = v0[14];
      v195 = *(v0[38] + 32);
      v205 = v0[10];
      v195(v0[39], v0[9], v0[37]);
      sub_1002787C8(v118);
      v122 = DateInterval.contains(_:)();
      (*(v120 + 8))(v118, v119);
      sub_100002CE0(v205, &qword_1005B0B00, &qword_1004D26A0);
      v123 = v0[39];
      if (v122)
      {
        v195(v0[8], v0[39], v0[37]);
        v124 = 0;
      }

      else
      {
        v125 = v0[38] + 8;
        v188(v0[39], v0[37]);
        v124 = 1;
      }

      v126 = v0[10];
      v127 = v0[8];
      (*(v0[38] + 56))(v127, v124, 1, v0[37]);
      sub_1000176A8(v127, v126, &qword_1005B0B00, &qword_1004D26A0);
    }

    v128 = v0[37];
    v129 = v0[10];
    v130 = v0[6];
    v131 = *(v0[5] + 48);
    v232(v130, v0[3], v128);
    sub_100005F04(v129, v130 + v131, &qword_1005B0B00, &qword_1004D26A0);
    if ((loga)(v130 + v131, 1, v128) == 1)
    {
      v132 = v0[42];
      v196 = v0[41];
      v206 = v0[45];
      logf = v0[38];
      v222 = v0[37];
      v180 = v0[24];
      v229 = v131;
      v236 = v130;
      v134 = v0[21];
      v133 = v0[22];
      v135 = v0[16];
      v136 = v0[17];
      v137 = v0[14];
      v138 = v0[15];
      v139 = v0[12];
      v140 = v0[13];
      v185 = v0[6];
      sub_100002CE0(v0[10], &qword_1005B0B00, &qword_1004D26A0);
      (*(v140 + 8))(v137, v139);
      (*(v135 + 8))(v136, v138);
      (*(v133 + 8))(v180, v134);
      (*(v132 + 8))(v206, v196);
      sub_100002CE0(v236 + v229, &qword_1005B0B00, &qword_1004D26A0);
      v188(v185, v222);
LABEL_49:
      v235 = 1;
      goto LABEL_25;
    }

    v141 = v0[37];
    v142 = v0[6];
    sub_100005F04(v130 + v131, v0[7], &qword_1005B0B00, &qword_1004D26A0);
    v143 = v225(v142, v141);
    v144 = v143;
    v145 = enum case for Fence.TriggerPosition.inside(_:);
    if (v143 == enum case for Fence.TriggerPosition.inside(_:))
    {
      v146 = v225(v0[7], v0[37]);
      if (v146 == v144)
      {
LABEL_40:
        v147 = v0[42];
        v197 = v0[41];
        v207 = v0[45];
        v148 = v0[37];
        v223 = v0[38];
        v149 = v0[22];
        v176 = v0[21];
        v181 = v0[24];
        v230 = v131;
        v237 = v130;
        v150 = v0[16];
        v151 = v0[17];
        v152 = v0[14];
        v153 = v0[15];
        v154 = v0[12];
        v155 = v0[13];
        v186 = v0[7];
        logg = v0[6];
        sub_100002CE0(v0[10], &qword_1005B0B00, &qword_1004D26A0);
        (*(v155 + 8))(v152, v154);
        (*(v150 + 8))(v151, v153);
        (*(v149 + 8))(v181, v176);
        (*(v147 + 8))(v207, v197);
        v188(v186, v148);
        sub_100002CE0(v237 + v230, &qword_1005B0B00, &qword_1004D26A0);
        v188(logg, v148);
        goto LABEL_24;
      }

      if (v146 != v218)
      {
        v157 = enum case for Fence.TriggerPosition.outside(_:);
        goto LABEL_47;
      }
    }

    else
    {
      v156 = enum case for Fence.TriggerPosition.outside(_:);
      if (v143 != enum case for Fence.TriggerPosition.outside(_:))
      {
        if (v143 == v218)
        {
          v167 = v225(v0[7], v0[37]);
          if (v167 == v145 || v167 == v156 || v167 == v218)
          {
            goto LABEL_40;
          }
        }

LABEL_54:
        v168 = v0[38] + 8;
        v188(v0[7], v0[37]);
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v146 = v225(v0[7], v0[37]);
      if (v146 != v145)
      {
        if (v146 == v144)
        {
          goto LABEL_40;
        }

        v157 = v218;
LABEL_47:
        if (v146 == v157)
        {
          goto LABEL_48;
        }

        goto LABEL_54;
      }
    }

LABEL_48:
    v158 = v0[42];
    v198 = v0[41];
    v208 = v0[45];
    v159 = v0[37];
    v224 = v0[38];
    v160 = v0[22];
    v177 = v0[21];
    v182 = v0[24];
    v231 = v131;
    v238 = v130;
    v161 = v0[16];
    v162 = v0[17];
    v163 = v0[14];
    v164 = v0[15];
    v165 = v0[12];
    v166 = v0[13];
    v187 = v0[7];
    logh = v0[6];
    sub_100002CE0(v0[10], &qword_1005B0B00, &qword_1004D26A0);
    (*(v166 + 8))(v163, v165);
    (*(v161 + 8))(v162, v164);
    (*(v160 + 8))(v182, v177);
    (*(v158 + 8))(v208, v198);
    v188(v187, v159);
    sub_100002CE0(v238 + v231, &qword_1005B0B00, &qword_1004D26A0);
    v188(logh, v159);
    goto LABEL_49;
  }

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v13 = v0[32];
  v14 = v0[28];
  v15 = v0[29];
  v16 = v0[2];
  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFF88);
  (*(v15 + 16))(v13, v16, v14);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[45];
  v22 = v0[41];
  v23 = v0[42];
  v24 = v0[32];
  v26 = v0[28];
  v25 = v0[29];
  if (!v20)
  {
    goto LABEL_23;
  }

  v233 = v0[41];
  v28 = v0[26];
  v27 = v0[27];
  log = v18;
  v29 = v0[25];
  v199 = v0[28];
  v30 = swift_slowAlloc();
  v219 = swift_slowAlloc();
  v239 = v219;
  *v30 = 136446210;
  v226 = v21;
  Fence.id.getter();
  sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID);
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v191 = v19;
  v33 = v32;
  (*(v28 + 8))(v27, v29);
  (*(v25 + 8))(v24, v199);
  v34 = sub_10000D01C(v31, v33, &v239);

  *(v30 + 4) = v34;
  v35 = "Fence with undetermined location on me should not post transparency notification: %{public}s";
LABEL_16:
  _os_log_impl(&_mh_execute_header, log, v191, v35, v30, 0xCu);
  sub_100004984(v219);

  (*(v23 + 8))(v226, v233);
LABEL_24:
  v235 = 0;
LABEL_25:
  v93 = v0[44];
  v92 = v0[45];
  v94 = v0[43];
  v96 = v0[39];
  v95 = v0[40];
  v98 = v0[35];
  v97 = v0[36];
  v99 = v0[31];
  v100 = v0[32];
  v101 = v0[30];
  v170 = v0[27];
  v172 = v0[24];
  v173 = v0[23];
  v175 = v0[20];
  v179 = v0[17];
  v184 = v0[14];
  v190 = v0[11];
  v194 = v0[10];
  v203 = v0[9];
  logd = v0[8];
  v221 = v0[7];
  v228 = v0[6];

  v102 = v0[1];

  return v102(v235);
}
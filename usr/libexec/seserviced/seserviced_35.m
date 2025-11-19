uint64_t sub_1002E6A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v26[2] = a4;
  v27 = a2;
  v30 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v31);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v26[1] = qword_10051B7F0;
  (*(v16 + 16))(v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v16 + 32))(v21 + v19, v18, v15);
  v22 = (v21 + v20);
  v23 = v30;
  *v22 = v27;
  v22[1] = v23;
  aBlock[4] = v28;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v29;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v32 + 8))(v10, v7);
  (*(v11 + 8))(v14, v31);
}

uint64_t sub_1002E6DD0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20[1] = qword_10051B7F0;
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a1;
  v17[5] = a2;
  aBlock[4] = sub_1002E73AC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CF828;
  v18 = _Block_copy(aBlock);
  sub_100069E2C(a3, a4);
  sub_10006A2BC(a1, a2);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_1002E7098(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v22);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v21;
  v18 = _Block_copy(aBlock);
  sub_100069E2C(a1, a2);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

uint64_t sub_1002E7344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002E735C()
{
  sub_10006A178(v0[2], v0[3]);
  v1 = v0[5];
  if (v1 >> 60 != 15)
  {
    sub_10006A178(v0[4], v1);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002E73DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1002E7494(uint64_t (*a1)(void))
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1002E45C8(v1 + v4, *v5, v5[1], a1);
}

uint64_t sub_1002E7528()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002E75B0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1002E4214(v2, v3, v4);
}

uint64_t sub_1002E7614(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type) || *(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) != 1)
  {
    return 0;
  }

  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return static UUID.== infix(_:_:)();
}

uint64_t sub_1002E76F4()
{
  sub_10006A178(v0[2], v0[3]);
  v1 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002E7778(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1002E77F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002E7834()
{
  if (v0[3])
  {
    v1 = v0[4];
  }

  sub_10006A178(v0[6], v0[7]);
  v2 = v0[10];
  if (v2 >> 60 != 15)
  {
    sub_10006A178(v0[9], v2);
  }

  v3 = v0[12];
  if (v3 >> 60 != 15)
  {
    sub_10006A178(v0[11], v3);
  }

  v4 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1002E7900()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002E79E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002E7A70(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v5 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return static UUID.== infix(_:_:)();
}

uint64_t sub_1002E7BE8()
{
  type metadata accessor for SECSLAMDeletionHandler();
  v0 = swift_allocObject();
  v1 = sub_1000910F0(&off_1004C3D08);
  sub_100068FC4(&unk_100504020, &qword_100409CC0);
  result = swift_arrayDestroy();
  *(v0 + 16) = v1;
  qword_10051B6F8 = v0;
  return result;
}

uint64_t sub_1002E7C64(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for UUID();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1002E7D30, 0, 0);
}

uint64_t sub_1002E7D30()
{
  v35 = v0;
  v1 = v0[23];
  v2 = *(v0[24] + 16);
  v3 = UUID.uuidString.getter();
  if (*(v2 + 16))
  {
    v5 = sub_10008C908(v3, v4);
    v7 = v6;

    if (v7)
    {
      v8 = (*(v2 + 56) + 16 * v5);
      v0[29] = *v8;
      v0[30] = v8[1];
      v9 = objc_opt_self();

      v10 = String._bridgeToObjectiveC()();
      v0[31] = v10;
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = sub_1002E80EC;
      v11 = swift_continuation_init();
      v0[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_1001861F4;
      v0[13] = &unk_1004CFE68;
      v0[14] = v11;
      sub_1003AF710(v9, v10, v0 + 10);

      return _swift_continuation_await(v0 + 2);
    }
  }

  else
  {
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];
  v15 = v0[23];
  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_10051B2C8);
  (*(v13 + 16))(v12, v15, v14);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  v19 = os_log_type_enabled(v17, v18);
  v21 = v0[26];
  v20 = v0[27];
  v22 = v0[25];
  if (v19)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34 = v24;
    *v23 = 136315138;
    v25 = UUID.uuidString.getter();
    v27 = v26;
    (*(v21 + 8))(v20, v22);
    v28 = sub_1002FFA0C(v25, v27, &v34);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "SLAMDeletion deleteCredential: %s does not exist", v23, 0xCu);
    sub_1000752F4(v24);
  }

  else
  {

    (*(v21 + 8))(v20, v22);
  }

  sub_10009591C();
  swift_allocError();
  *v29 = 1;
  v31 = v0[27];
  v30 = v0[28];
  swift_willThrow();

  v32 = v0[1];

  return v32();
}

uint64_t sub_1002E80EC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  if (v3)
  {
    v4 = *(v1 + 240);

    v5 = sub_1002E8600;
  }

  else
  {
    v5 = sub_1002E8204;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002E8204()
{
  v43 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 168);

  v4 = String._bridgeToObjectiveC()();
  v5 = String.utf8CString.getter();

  v6 = sub_100013548(v3, v5 + 32, v4);

  if (v6)
  {
    swift_willThrow();

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v42[0] = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v13 = *(v0 + 144);
      v12 = *(v0 + 152);
      v14 = *(v0 + 160);
      v15 = Error.localizedDescription.getter();
      v17 = sub_1002FFA0C(v15, v16, v42);

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "SLAMDeletion deleteCredential: Error encountered %s", v10, 0xCu);
      sub_1000752F4(v11);
    }

    v18 = *(v0 + 216);
    v19 = *(v0 + 224);
    swift_willThrow();

    v20 = *(v0 + 8);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 224);
    v22 = *(v0 + 200);
    v23 = *(v0 + 208);
    v24 = *(v0 + 184);
    v25 = type metadata accessor for Logger();
    sub_1000958E4(v25, qword_10051B2C8);
    (*(v23 + 16))(v21, v24, v22);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    log = v26;
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42[0] = v33;
      *v32 = 136315138;
      v34 = UUID.uuidString.getter();
      v36 = v35;
      (*(v30 + 8))(v29, v31);
      v37 = sub_1002FFA0C(v34, v36, v42);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, log, v27, "SLAMDeletion deleteCredential: Successfully deleted credential %s", v32, 0xCu);
      sub_1000752F4(v33);
    }

    else
    {

      (*(v30 + 8))(v29, v31);
    }

    v39 = *(v0 + 216);
    v38 = *(v0 + 224);

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_1002E8600()
{
  v20 = v0;
  v1 = v0[31];
  v2 = v0[32];
  swift_willThrow();

  v3 = v0[32];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "SLAMDeletion deleteCredential: Error encountered %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v16 = v0[27];
  v15 = v0[28];
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002E87D0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1002E8844()
{
  if (qword_1005018E8 != -1)
  {
    swift_once();
  }

  sub_10006CAB0();
}

id sub_1002E88F0()
{
  result = [objc_allocWithZone(type metadata accessor for LyonExternal()) init];
  qword_10051B700 = result;
  return result;
}

void sub_1002E8AC4(uint64_t a1, unint64_t a2, double a3)
{
  if (qword_100501950 != -1)
  {
    v3 = a1;
    v4 = a2;
    v5 = a3;
    swift_once();
    a1 = v3;
    a2 = v4;
    a3 = v5;
  }

  sub_1000D2F30(a1, a2, a3);
}

void sub_1002E8C00(uint64_t a1, unint64_t a2)
{
  if (qword_100501950 != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  sub_1000D42BC(a1, a2);
}

void sub_1002E8D48(char a1, uint64_t a2)
{
  if (qword_1005018F8 != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  sub_10008843C(a1 & 1, a2);
}

void sub_1002E8E20(char a1)
{
  if (qword_100501AF0 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_1001DC774(a1 & 1);
}

id sub_1002E8EF8(uint64_t a1, unint64_t a2)
{
  if (qword_1005019E8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v4 = sub_1000CAA04();
    v5 = v4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
      sub_10023EFC4();
      Set.Iterator.init(_cocoa:)();
      v6 = v61[3];
      v7 = v61[4];
      v8 = v61[5];
      v9 = v61[6];
      v10 = v61[7];
    }

    else
    {
      v11 = -1 << *(v4 + 32);
      v7 = (v4 + 56);
      v8 = ~v11;
      v12 = -v11;
      v13 = v12 < 64 ? ~(-1 << v12) : -1;
      v10 = (v13 & *(v4 + 56));

      v9 = 0;
      v6 = v5;
    }

    v55 = a1;
    v56 = 0;
    v14 = (v8 + 64) >> 6;
    v15 = !a1 && a2 == 0xC000000000000000;
    v16 = !v15;
    v54 = v16;
    v57 = v6;
    v58 = a2 >> 62;
    v17 = __OFSUB__(HIDWORD(a1), a1);
    v52 = v17;
    v51 = HIDWORD(a1) - a1;
    v53 = BYTE6(a2);
    v18 = v10;
    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    while (1)
    {
      v21 = v9;
      v22 = v18;
      if (!v18)
      {
        break;
      }

LABEL_25:
      v59 = (v22 - 1) & v22;
      v20 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v20)
      {
        goto LABEL_78;
      }

LABEL_26:
      v23 = [v20 publicKeyIdentifier];
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = v26 >> 62;
      if (v26 >> 62 == 3)
      {
        if (v24)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26 == 0xC000000000000000;
        }

        v29 = v58;
        v31 = !v28 || v58 < 3;
        if (((v31 | v54) & 1) == 0)
        {
          sub_100093854();
          v47 = 0;
          v48 = 0xC000000000000000;
LABEL_81:
          sub_10006A178(v47, v48);
          goto LABEL_79;
        }

LABEL_48:
        v32 = 0;
        if (v29 > 1)
        {
          goto LABEL_49;
        }

LABEL_45:
        v36 = v53;
        if (v29)
        {
          v36 = v51;
          if (v52)
          {
            goto LABEL_85;
          }
        }

LABEL_51:
        if (v32 != v36)
        {
          goto LABEL_57;
        }

        if (v32 < 1)
        {
          goto LABEL_80;
        }

        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v49 = v5;
            v50 = a2;
            v40 = *(v24 + 16);
            v39 = *(v24 + 24);
            v41 = __DataStorage._bytes.getter();
            if (v41)
            {
              v42 = __DataStorage._offset.getter();
              if (__OFSUB__(v40, v42))
              {
                goto LABEL_91;
              }

              v41 += v40 - v42;
            }

            if (__OFSUB__(v39, v40))
            {
              goto LABEL_90;
            }

            goto LABEL_72;
          }

          memset(v61, 0, 14);
        }

        else
        {
          if (v27)
          {
            v50 = a2;
            if (v24 >> 32 < v24)
            {
              goto LABEL_89;
            }

            v49 = v5;
            v41 = __DataStorage._bytes.getter();
            if (v41)
            {
              v43 = __DataStorage._offset.getter();
              if (__OFSUB__(v24, v43))
              {
                goto LABEL_92;
              }

              v41 += v24 - v43;
            }

LABEL_72:
            __DataStorage._length.getter();
            a2 = v50;
            v44 = v56;
            sub_10019F024(v41, v55, v50, v61);
            sub_10006A178(v24, v26);
            v5 = v49;
            if (v61[0])
            {
              goto LABEL_82;
            }

            goto LABEL_76;
          }

          v61[0] = v24;
          LOWORD(v61[1]) = v26;
          BYTE2(v61[1]) = BYTE2(v26);
          BYTE3(v61[1]) = BYTE3(v26);
          BYTE4(v61[1]) = BYTE4(v26);
          BYTE5(v61[1]) = BYTE5(v26);
        }

        v45 = a1;
        v44 = v56;
        sub_10019F024(v61, v45, a2, &v60);
        sub_10006A178(v24, v26);
        if (v60)
        {
LABEL_82:
          sub_100093854();
          goto LABEL_79;
        }

LABEL_76:
        v56 = v44;
        v6 = v57;

        v18 = v59;
        a1 = v55;
        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v29 = v58;
        if (v27 > 1)
        {
          if (v27 != 2)
          {
            goto LABEL_48;
          }

          v34 = *(v24 + 16);
          v33 = *(v24 + 24);
          v35 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (v35)
          {
            goto LABEL_88;
          }

          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

        else if (v27)
        {
          LODWORD(v32) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
          }

          v32 = v32;
          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v32 = BYTE6(v26);
          if (v58 <= 1)
          {
            goto LABEL_45;
          }
        }

LABEL_49:
        if (v29 == 2)
        {
          v38 = *(a1 + 16);
          v37 = *(a1 + 24);
          v35 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v35)
          {
            goto LABEL_84;
          }

          goto LABEL_51;
        }

        if (!v32)
        {
LABEL_80:
          sub_100093854();
          v47 = v24;
          v48 = v26;
          goto LABEL_81;
        }

LABEL_57:

        sub_10006A178(v24, v26);
        v18 = v59;
        v6 = v57;
        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }
      }
    }

    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_78;
      }

      v22 = v7[v9];
      ++v21;
      if (v22)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }

LABEL_18:
  v19 = __CocoaSet.Iterator.next()();
  if (v19)
  {
    v60 = v19;
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    swift_dynamicCast();
    v20 = v61[0];
    v59 = v18;
    if (v61[0])
    {
      goto LABEL_26;
    }
  }

LABEL_78:
  sub_100093854();
  v20 = 0;
LABEL_79:

  return v20;
}

uint64_t sub_1002E9528(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.notOnQueue(_:), v6);
  v11;
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v12)
  {
    __chkstk_darwin(result);
    v14[-4] = a1;
    v14[-3] = a2;
    *&v14[-2] = a3;
    return OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E96E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v4);
  v9;
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    __chkstk_darwin(result);
    *(&v12 - 2) = a1;
    *(&v12 - 1) = a2;
    return OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1002E9890()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.notOnQueue(_:), v0);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v4, v0);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (qword_100501900 != -1)
  {
LABEL_7:
    swift_once();
  }

  v7 = qword_10051B190;
  v8 = *(qword_10051B190 + 16);

  sub_10034D004(v9);

  v10 = *(v7 + 24);

  sub_10034D004(v11);

  v12 = *(v7 + 32);

  sub_10034D004(v13);

  v14 = objc_allocWithZone(AliroProtocolVersions);
  sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = Array._bridgeToObjectiveC()().super.isa;

  v17 = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v14 initWithBleAdvertisingVersions:isa supportedBLEUWBProtocolVersions:v16 expeditedTransactionSupportedProtocolVersions:v17];

  return v18;
}

uint64_t sub_1002E9CE8(int a1, void *a2)
{
  v23 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v24);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.notOnQueue(_:), v12);
  v22 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v23 & 1;
    *(v19 + 24) = a2;
    aBlock[4] = sub_1002EA454;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004CFF08;
    v20 = _Block_copy(aBlock);
    v21 = a2;
    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_1000BA7E0();
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_1000BA838();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v4 + 8))(v7, v3);
    (*(v8 + 8))(v11, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002EA070(int a1)
{
  v21 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for DispatchQoS();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v22);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.notOnQueue(_:), v10);
  v15;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v16)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v21 & 1;
    aBlock[4] = sub_1002EA3FC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004CFEB8;
    v19 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
    sub_1000BA7E0();
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_1000BA838();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v2 + 8))(v5, v1);
    (*(v6 + 8))(v9, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002EA404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002EA41C()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_1002EA4AC(char a1)
{
  LOBYTE(v2) = a1;
  result = [v1 children];
  if (result)
  {
    v4 = result;
    sub_1000754A4();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
LABEL_23:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = v2;
        v22 = _swiftEmptyArrayStorage;
        v2 = "O";
        do
        {
          v9 = v7;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            if ([v10 tag] == *&aO[4 * v8])
            {
              v12 = [v11 value];
              if (v12)
              {
                break;
              }
            }

            ++v9;
            if (v7 == v6)
            {
              goto LABEL_25;
            }
          }

          v13 = v12;
          v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v15;
          v21 = v14;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_10012E5A4(0, *(v22 + 2) + 1, 1, v22);
          }

          v18 = *(v22 + 2);
          v17 = *(v22 + 3);
          if (v18 >= v17 >> 1)
          {
            v22 = sub_10012E5A4((v17 > 1), v18 + 1, 1, v22);
          }

          *(v22 + 2) = v18 + 1;
          v19 = &v22[16 * v18];
          *(v19 + 4) = v21;
          *(v19 + 5) = v20;
        }

        while (v7 != v6);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v22 = _swiftEmptyArrayStorage;
LABEL_25:

    return v22;
  }

  __break(1u);
  return result;
}

char *sub_1002EA6BC(char a1)
{
  LOBYTE(v2) = a1;
  result = [v1 children];
  if (result)
  {
    v4 = result;
    sub_1000754A4();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
LABEL_23:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = v2;
        v22 = _swiftEmptyArrayStorage;
        v2 = dword_100414B4C;
        do
        {
          v9 = v7;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            if ([v10 tag] == dword_100414B4C[v8])
            {
              v12 = [v11 value];
              if (v12)
              {
                break;
              }
            }

            ++v9;
            if (v7 == v6)
            {
              goto LABEL_25;
            }
          }

          v13 = v12;
          v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v15;
          v21 = v14;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_10012E5A4(0, *(v22 + 2) + 1, 1, v22);
          }

          v18 = *(v22 + 2);
          v17 = *(v22 + 3);
          if (v18 >= v17 >> 1)
          {
            v22 = sub_10012E5A4((v17 > 1), v18 + 1, 1, v22);
          }

          *(v22 + 2) = v18 + 1;
          v19 = &v22[16 * v18];
          *(v19 + 4) = v21;
          *(v19 + 5) = v20;
        }

        while (v7 != v6);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v22 = _swiftEmptyArrayStorage;
LABEL_25:

    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EA8CC()
{
  v1[8] = v0;
  v2 = *(*(sub_100068FC4(&qword_10050A110, &qword_100414C28) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002EA974, 0, 0);
}

uint64_t sub_1002EA974()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  v0[11] = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  swift_beginAccess();
  sub_1002F4BBC(v2 + v3, v1);
  v4 = type metadata accessor for SECNetworkConfiguration();
  v0[12] = v4;
  v5 = *(v4 - 8);
  v0[13] = v5;
  LODWORD(v2) = (*(v5 + 48))(v1, 1, v4);
  sub_100075768(v1, &qword_10050A110, &qword_100414C28);
  if (v2 == 1)
  {
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_1002EAB04;
    v7 = v0[9];

    return sub_100122554(v7);
  }

  else
  {
    v10 = v0[9];
    v9 = v0[10];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1002EAB04()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1002EACDC;
  }

  else
  {
    v3 = sub_1002EAC18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002EAC18()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  (*(v0[13] + 56))(v2, 0, 1, v0[12]);
  swift_beginAccess();
  sub_1002F6F2C(v2, v3 + v1);
  swift_endAccess();
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002EACDC()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1002EAD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(sub_100068FC4(&unk_10050BEA0, &unk_10040F450) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  v4[16] = v6;
  v7 = *(v6 - 8);
  v4[17] = v7;
  v8 = *(v7 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002EAE50, 0, 0);
}

uint64_t sub_1002EAE50()
{
  v1 = v0[11];
  UUID.init()();
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1002EAEE8;
  v3 = v0[14];

  return sub_1002EA8CC();
}

uint64_t sub_1002EAEE8()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002EBCC4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[22] = v4;
    *v4 = v3;
    v4[1] = sub_1002EB060;
    v5 = v3[19];
    v6 = v3[13];
    v7 = v3[14];
    v8 = v3[11];
    v9 = v3[12];

    return sub_1002EBE3C(v5, v8, v9, v6);
  }
}

uint64_t sub_1002EB060()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1002EBD80;
  }

  else
  {
    v3 = sub_1002EB174;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002EB174()
{
  v29 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = type metadata accessor for Logger();
  v0[24] = sub_1000958E4(v5, qword_10051B2C8);
  (*(v4 + 16))(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  if (v8)
  {
    v10 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    URLRequest.url.getter();
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v10, 1, v13);
    v16 = v0[15];
    if (v15 == 1)
    {
      sub_100075768(v0[15], &unk_10050BEA0, &unk_10040F450);
      v17 = 0xE700000000000000;
      v18 = 0x6E776F6E6B6E75;
    }

    else
    {
      v22 = v0[15];
      v18 = URL.absoluteString.getter();
      v17 = v23;
      (*(v14 + 8))(v16, v13);
    }

    v21 = *(v0[17] + 8);
    v21(v0[18], v0[16]);
    v24 = sub_1002FFA0C(v18, v17, &v28);

    *(v11 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v6, v7, "createCredential: Sending request to %s", v11, 0xCu);
    sub_1000752F4(v12);
  }

  else
  {
    v19 = v0[16];
    v20 = v0[17];

    v21 = *(v20 + 8);
    v21(v9, v19);
  }

  v0[25] = v21;
  v25 = swift_task_alloc();
  v0[26] = v25;
  *v25 = v0;
  v25[1] = sub_1002EB47C;
  v26 = v0[19];

  return sub_100159A70(v26, 1);
}

uint64_t sub_1002EB47C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 208);
  v8 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v6 = sub_1002EB9D4;
  }

  else
  {
    v6 = sub_1002EB594;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002EB594()
{
  v52 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100068FC4(&qword_100502600, &unk_100417140);
  sub_1002F50B8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v2)
  {
    v7 = v0[9];
    if (*(v7 + 16) && (v8 = sub_10008C908(0xD000000000000013, 0x800000010046BEA0), (v9 & 1) != 0))
    {
      v10 = (*(v7 + 56) + 16 * v8);
      v12 = *v10;
      v11 = v10[1];

      if (v12 == 0x6574736575716572 && v11 == 0xE900000000000064)
      {

LABEL_21:
        v44 = v0[25];
        v45 = v0[18];
        v46 = v0[19];
        v47 = v0[16];
        v48 = v0[17];
        v49 = v0[15];
        sub_10006A178(v0[27], v0[28]);
        v44(v46, v47);

        v42 = v0[1];
        goto LABEL_17;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v15 = v0[24];
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "createCredential: Unexpected JSON Response from Server", v18, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v19 = 13;
    swift_willThrow();
  }

  v20 = v0[24];
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v51 = v24;
    *v23 = 136315138;
    swift_getErrorValue();
    v26 = v0[2];
    v25 = v0[3];
    v27 = v0[4];
    v28 = Error.localizedDescription.getter();
    v30 = sub_1002FFA0C(v28, v29, &v51);

    *(v23 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "createCredential: JSON Decoding error %s encountered", v23, 0xCu);
    sub_1000752F4(v24);
  }

  v32 = v0[27];
  v31 = v0[28];
  v33 = v0[25];
  v34 = v0[19];
  v35 = v0[16];
  v36 = v0[17];
  v50 = v0[11];
  sub_10009591C();
  swift_allocError();
  *v37 = 13;
  swift_willThrow();
  sub_10006A178(v32, v31);

  v33(v34, v35);
  v38 = type metadata accessor for UUID();
  (*(*(v38 - 8) + 8))(v50, v38);
  v40 = v0[18];
  v39 = v0[19];
  v41 = v0[15];

  v42 = v0[1];
LABEL_17:

  return v42();
}

uint64_t sub_1002EB9D4()
{
  v32 = v0;
  *(v0 + 64) = *(v0 + 232);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 192);

    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    sub_10015CCB4(v3, v4, *(v0 + 56));
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_10015CCF0(v3, v4, v5);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31 = v9;
      *v8 = 136315138;
      v10 = sub_100157174(v3, v4, v5);
      v12 = sub_1002FFA0C(v10, v11, &v31);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "createCredential: Data task wrapper error %s encountered while performing URL request", v8, 0xCu);
      sub_1000752F4(v9);
    }

    v13 = *(v0 + 200);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v30 = *(v0 + 88);
    sub_10009591C();
    swift_allocError();
    *v17 = 11;
    swift_willThrow();
    sub_10015CCF0(v3, v4, v5);
    v13(v14, v15);
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 8))(v30, v18);
    v19 = *(v0 + 64);
  }

  else
  {
    v20 = *(v0 + 88);
    v21 = *(v0 + 136) + 8;
    (*(v0 + 200))(*(v0 + 152), *(v0 + 128));
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 8))(v20, v22);
    v23 = *(v0 + 64);

    v24 = *(v0 + 232);
  }

  v26 = *(v0 + 144);
  v25 = *(v0 + 152);
  v27 = *(v0 + 120);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1002EBCC4()
{
  v1 = v0[11];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002EBD80()
{
  v1 = v0[11];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[23];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002EBE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[93] = v4;
  v5[92] = a4;
  v5[91] = a3;
  v5[90] = a2;
  v5[89] = a1;
  v6 = type metadata accessor for SHA256();
  v5[94] = v6;
  v7 = *(v6 - 8);
  v5[95] = v7;
  v8 = *(v7 + 64) + 15;
  v5[96] = swift_task_alloc();
  v9 = type metadata accessor for SHA256Digest();
  v5[97] = v9;
  v10 = *(v9 - 8);
  v5[98] = v10;
  v11 = *(v10 + 64) + 15;
  v5[99] = swift_task_alloc();
  v12 = type metadata accessor for String.Encoding();
  v5[100] = v12;
  v13 = *(v12 - 8);
  v5[101] = v13;
  v14 = *(v13 + 64) + 15;
  v5[102] = swift_task_alloc();
  v15 = type metadata accessor for URL.DirectoryHint();
  v5[103] = v15;
  v16 = *(v15 - 8);
  v5[104] = v16;
  v17 = *(v16 + 64) + 15;
  v5[105] = swift_task_alloc();
  v18 = *(*(type metadata accessor for URL() - 8) + 64) + 15;
  v5[106] = swift_task_alloc();
  v19 = *(*(sub_100068FC4(&qword_10050A110, &qword_100414C28) - 8) + 64) + 15;
  v5[107] = swift_task_alloc();
  v20 = type metadata accessor for SECNetworkConfiguration();
  v5[108] = v20;
  v21 = *(v20 - 8);
  v5[109] = v21;
  v22 = *(v21 + 64) + 15;
  v5[110] = swift_task_alloc();
  v23 = type metadata accessor for UUID();
  v5[111] = v23;
  v24 = *(v23 - 8);
  v5[112] = v24;
  v25 = *(v24 + 64) + 15;
  v5[113] = swift_task_alloc();
  v5[114] = swift_task_alloc();
  v5[115] = swift_task_alloc();
  v5[116] = swift_task_alloc();

  return _swift_task_switch(sub_1002EC18C, 0, 0);
}

uint64_t sub_1002EC18C()
{
  v155 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[91];
  v6 = v0[90];
  v7 = type metadata accessor for Logger();
  v0[117] = sub_1000958E4(v7, qword_10051B2C8);
  v8 = *(v3 + 16);
  v0[118] = v8;
  v0[119] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6, v4);
  v8(v2, v5, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[116];
  v13 = v0[115];
  v14 = v0[112];
  v15 = v0[111];
  v153 = v0;
  if (v11)
  {
    v16 = swift_slowAlloc();
    v154[0] = swift_slowAlloc();
    *v16 = 136315394;
    v17 = UUID.uuidString.getter();
    v148 = v10;
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1002FFA0C(v17, v19, v154);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = UUID.uuidString.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1002FFA0C(v22, v24, v154);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v9, v148, "Creating URL Request for credential %s with configUUID %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[109];
  v28 = v0[108];
  v29 = v0[107];
  v30 = v0[93];
  v31 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  swift_beginAccess();
  sub_1002F4BBC(v30 + v31, v29);
  if ((*(v27 + 48))(v29, 1, v28) == 1)
  {
    sub_100075768(v0[107], &qword_10050A110, &qword_100414C28);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Nil network configuration when creatingCreationURLRequest", v34, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v35 = 19;
    swift_willThrow();
    goto LABEL_28;
  }

  v36 = v0[106];
  v37 = v0[105];
  v38 = v0[104];
  v39 = v0[103];
  v40 = v0[89];
  sub_1002F4C2C(v0[107], v0[110]);
  v0[77] = 0xD000000000000019;
  v0[78] = 0x8000000100463770;
  (*(v38 + 104))(v37, enum case for URL.DirectoryHint.inferFromPath(_:), v39);
  sub_10012512C();
  URL.appending<A>(path:directoryHint:)();
  (*(v38 + 8))(v37, v39);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  v41._countAndFlagsBits = 0x2D746E65746E6F43;
  v41._object = 0xEC00000065707954;
  v42.value._object = 0x800000010046BE40;
  v42.value._countAndFlagsBits = 0xD000000000000010;
  URLRequest.setValue(_:forHTTPHeaderField:)(v42, v41);
  v43 = sub_1002F4C90();
  v44 = [v43 serialNumber];

  if (v44)
  {
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v48 = v0[92];
  v49 = v0[90];
  v50 = v0[89];
  v51._countAndFlagsBits = 0x2D656C7070612D78;
  v51._object = 0xEC00000064696573;
  v52.value._countAndFlagsBits = v45;
  v52.value._object = v47;
  URLRequest.setValue(_:forHTTPHeaderField:)(v52, v51);

  v53.value._countAndFlagsBits = sub_1002F4E88();
  v54._countAndFlagsBits = 0xD000000000000013;
  v54._object = 0x800000010046BE60;
  URLRequest.setValue(_:forHTTPHeaderField:)(v53, v54);

  v55.value._countAndFlagsBits = UUID.uuidString.getter();
  v56._countAndFlagsBits = 0x7365757165722D78;
  v56._object = 0xEC00000064692D74;
  URLRequest.setValue(_:forHTTPHeaderField:)(v55, v56);

  v57.value._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58._countAndFlagsBits = 0x6567612D72657375;
  v58._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v57, v58);

  v59 = *(v48 + 16);
  v60 = *(v48 + 32);
  v61 = *(v48 + 64);
  *(v0 + 3) = *(v48 + 48);
  *(v0 + 4) = v61;
  *(v0 + 1) = v59;
  *(v0 + 2) = v60;
  v62 = *(v48 + 80);
  v63 = *(v48 + 96);
  v64 = *(v48 + 112);
  *(v0 + 128) = *(v48 + 128);
  *(v0 + 6) = v63;
  *(v0 + 7) = v64;
  *(v0 + 5) = v62;
  v65 = v0[2];
  v66 = v0[3];
  v67 = v0[4];
  v68 = v0[5];
  v69 = v0[6];
  v70 = v0[7];
  v0[120] = v69;
  v0[121] = v70;
  v71 = v0[8];
  v72 = v0[9];
  v0[122] = v71;
  v0[123] = v72;
  v74 = v0[10];
  v73 = v0[11];
  v0[124] = v74;
  v0[125] = v73;
  if (*(v0 + 128) >= 2u)
  {
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "Unable to provision as privileged client";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v84, v85, v87, v86, 2u);
    }

LABEL_26:
    v98 = v0[110];
    v99 = v0[89];

    sub_10009591C();
    swift_allocError();
    *v100 = 6;
    swift_willThrow();
    v101 = type metadata accessor for URLRequest();
    (*(*(v101 - 8) + 8))(v99, v101);
    v102 = v98;
LABEL_27:
    sub_1002F6D98(v102, type metadata accessor for SECNetworkConfiguration);
LABEL_28:
    v103 = v0[116];
    v104 = v0[115];
    v105 = v0[114];
    v106 = v0[113];
    v107 = v0[110];
    v108 = v0[107];
    v109 = v0[106];
    v110 = v0[105];
    v111 = v153[102];
    v112 = v153[99];
    v151 = v153[96];

    v113 = v153[1];

    return v113();
  }

  v75 = *(v48 + 112);
  *(v0 + 67) = *(v48 + 96);
  *(v0 + 69) = v75;
  v76 = v0[102];
  v77 = v0[101];
  v150 = v0[100];
  v78 = v0[90];
  v0[32] = v65;
  v0[33] = v66;
  v0[34] = v67;
  v0[35] = v68;
  v0[36] = v69;
  v0[37] = v70;
  v0[38] = v71;
  v0[39] = v72;
  v0[40] = v74;
  v0[41] = v73;
  v79 = *(v0 + 69);
  *(v0 + 21) = *(v0 + 67);
  *(v0 + 22) = v79;

  sub_10012E3F4((v0 + 2), (v0 + 17));
  sub_10012E450((v0 + 32));
  UUID.uuidString.getter();
  String.lowercased()();

  static String.Encoding.utf8.getter();
  v80 = String.data(using:allowLossyConversion:)();
  v82 = v81;

  v0[126] = v80;
  v0[127] = v82;
  v83 = *(v77 + 8);
  v83(v76, v150);
  if (v82 >> 60 == 15)
  {

    goto LABEL_23;
  }

  v146 = v80;
  v147 = v82;
  v88 = v0[102];
  v144 = v0[100];
  v89 = v0[91];
  UUID.uuidString.getter();
  String.lowercased()();

  static String.Encoding.utf8.getter();
  v90 = String.data(using:allowLossyConversion:)();
  v92 = v91;

  v0[128] = v90;
  v0[129] = v92;
  v83(v88, v144);
  if (v92 >> 60 == 15)
  {

LABEL_22:
    sub_10006A2D0(v146, v147);
    goto LABEL_23;
  }

  v93 = v0[102];
  v94 = v0[100];
  static String.Encoding.utf8.getter();
  v95 = String.data(using:allowLossyConversion:)();
  v97 = v96;
  v145 = v95;
  v0[130] = v95;
  v0[131] = v96;
  v83(v93, v94);
  if (v97 >> 60 == 15)
  {

    sub_10006A2D0(v90, v92);
    goto LABEL_22;
  }

  v115 = v0[102];
  v116 = v0[100];
  v0[85] = v74;
  dispatch thunk of CustomStringConvertible.description.getter();
  static String.Encoding.utf8.getter();
  v117 = String.data(using:allowLossyConversion:)();
  v119 = v118;

  v0[132] = v117;
  v0[133] = v119;
  v83(v115, v116);
  if (v119 >> 60 == 15)
  {

    sub_10006A2D0(v145, v97);
    sub_10006A2D0(v90, v92);
    sub_10006A2D0(v146, v147);
LABEL_23:
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "createCredential: Failed to get teamID data or country code data";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v120 = v117;
  v121 = sub_1002F4C90();
  v122 = [v121 info];

  if (!v122 || (v123 = [v122 ecdsaCertificate], v122, !v123))
  {

    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&_mh_execute_header, v135, v136, "createCredental: Nil ECDSA certificate", v137, 2u);
    }

    v0 = v153;
    v138 = v153[110];
    v139 = v153[89];

    sub_10009591C();
    swift_allocError();
    *v140 = 6;
    swift_willThrow();
    sub_10006A2D0(v90, v92);
    sub_10006A2D0(v145, v97);
    sub_10006A2D0(v120, v119);
    sub_10006A2D0(v146, v147);
    v141 = type metadata accessor for URLRequest();
    (*(*(v141 - 8) + 8))(v139, v141);
    v102 = v138;
    goto LABEL_27;
  }

  v142 = v153[99];
  v149 = v153[97];
  v152 = v153[98];
  v124 = v153[96];
  v143 = v153[95];
  v125 = v153[94];
  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v128 = v127;
  v153[83] = v126;
  v153[84] = v127;

  v153[134] = v128;
  v153[79] = v146;
  v153[80] = v147;
  sub_100069E2C(v146, v147);
  Data.append(_:)();
  Data.append(_:)();
  Data.append(_:)();
  v129 = v153[79];
  v130 = v153[80];
  sub_1002F6DF8(&qword_100503000, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100069E2C(v129, v130);
  sub_100357FC4(v129, v130);
  sub_10006A178(v129, v130);
  dispatch thunk of HashFunction.finalize()();
  (*(v143 + 8))(v124, v125);
  v153[65] = v149;
  v153[66] = sub_1002F6DF8(&qword_100503008, &type metadata accessor for SHA256Digest);
  v131 = sub_1000B9634(v153 + 62);
  (*(v152 + 16))(v131, v142, v149);
  sub_1000752B0(v153 + 62, v153[65]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v152 + 8))(v142, v149);
  v132 = v153[81];
  v153[135] = v132;
  v133 = v153[82];
  v153[136] = v133;
  sub_1000752F4(v153 + 62);
  v134 = swift_task_alloc();
  v153[137] = v134;
  *v134 = v153;
  v134[1] = sub_1002ED1A4;

  return sub_1002F5150((v153 + 46), v132, v133);
}

uint64_t sub_1002ED1A4()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1096);
  v5 = *v1;
  v6 = *(*v1 + 384);
  *(v3 + 1112) = *(v3 + 368);
  *(v3 + 1128) = v6;
  v7 = *(v3 + 416);
  *(v3 + 1144) = *(v3 + 400);
  *(v3 + 1104) = v0;
  *(v3 + 1160) = v7;

  v8 = *(v2 + 1088);
  v9 = *(v2 + 1080);
  if (v0)
  {
    v10 = *(v3 + 1072);
    v11 = *(v3 + 984);
    v12 = *(v3 + 968);
    sub_10006A178(v9, v8);

    v13 = sub_1002EDF98;
  }

  else
  {
    *(v3 + 1176) = *(v3 + 664);
    sub_10006A178(v9, v8);
    v13 = sub_1002ED378;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1002ED378()
{
  v139 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1160);
  v106 = *(v0 + 1152);
  v100 = *(v0 + 1168);
  v103 = *(v0 + 1144);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1112);
  v7 = *(v0 + 1072);
  v124 = *(v0 + 1000);
  v121 = *(v0 + 992);
  v127 = *(v0 + 976);
  v132 = *(v0 + 984);
  v115 = *(v0 + 960);
  v118 = *(v0 + 968);
  v109 = *(v0 + 728);
  v112 = *(v0 + 720);
  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  *(inited + 32) = 6513509;
  v9 = inited + 32;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v1;
  *(inited + 56) = v7;
  v10 = sub_1000910F0(inited);
  swift_setDeallocating();
  sub_100075768(v9, &unk_100504020, &qword_100409CC0);
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10040AA50;
  *(v11 + 32) = 0x727574616E676973;
  *(v11 + 40) = 0xE900000000000065;
  *(v11 + 48) = Data.base64EncodedString(options:)(0);
  *(v11 + 72) = &type metadata for String;
  *(v11 + 80) = 0x6D726F6674616C70;
  *(v11 + 88) = 0xEA00000000006449;
  *(v11 + 96) = Data.base64EncodedString(options:)(0);
  *(v11 + 120) = &type metadata for String;
  *(v11 + 128) = 0x766544646E72;
  *(v11 + 136) = 0xE600000000000000;
  *(v11 + 144) = Data.base64EncodedString(options:)(0);
  *(v11 + 168) = &type metadata for String;
  *(v11 + 176) = 0x6E756F436C62736ALL;
  *(v11 + 184) = 0xEB00000000726574;
  *(v11 + 192) = Data.base64EncodedString(options:)(0);
  *(v11 + 216) = &type metadata for String;
  *(v11 + 224) = 0x7472654364736163;
  *(v11 + 232) = 0xEF65746163696669;
  *(v11 + 264) = sub_100068FC4(&qword_100502600, &unk_100417140);
  *(v11 + 240) = v10;
  v12 = sub_10008FFDC(v11);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100413A40;
  *(v13 + 32) = 0x43746375646F7270;
  *(v13 + 40) = 0xEF64496769666E6FLL;
  UUID.uuidString.getter();
  v14 = String.lowercased()();

  *(v13 + 48) = v14;
  *(v13 + 72) = &type metadata for String;
  *(v13 + 80) = 0xD000000000000014;
  *(v13 + 88) = 0x800000010046BE80;
  UUID.uuidString.getter();
  v15 = String.lowercased()();

  *(v13 + 96) = v15;
  *(v13 + 120) = &type metadata for String;
  *(v13 + 128) = 0x64496D616574;
  *(v13 + 136) = 0xE600000000000000;
  *(v13 + 144) = v115;
  *(v13 + 152) = v118;
  *(v13 + 168) = &type metadata for String;
  *(v13 + 176) = 0x437972746E756F63;
  *(v13 + 184) = 0xEB0000000065646FLL;
  *(v13 + 192) = v121;
  *(v13 + 216) = &type metadata for UInt64;
  *(v13 + 224) = 0xD000000000000015;
  *(v13 + 232) = 0x800000010046C030;
  v16 = sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  *(v13 + 240) = v12;
  *(v13 + 264) = v16;
  *(v13 + 272) = 0x496D616441707061;
  *(v13 + 280) = 0xE900000000000064;
  *(v0 + 688) = v124;
  *(v13 + 288) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v13 + 296) = v17;
  *(v13 + 312) = &type metadata for String;
  *(v13 + 320) = 0x656D614E707061;
  *(v13 + 360) = &type metadata for String;
  *(v13 + 328) = 0xE700000000000000;
  *(v13 + 336) = v127;
  *(v13 + 344) = v132;
  sub_10008FFDC(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v18 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 696) = 0;
  v20 = [v18 dataWithJSONObject:isa options:0 error:v0 + 696];

  v21 = *(v0 + 696);
  if (v20)
  {
    v22 = *(v0 + 952);
    v23 = *(v0 + 944);
    v24 = *(v0 + 912);
    v128 = *(v0 + 904);
    v133 = *(v0 + 936);
    v25 = *(v0 + 888);
    v125 = *(v0 + 728);
    v26 = *(v0 + 720);
    v27 = *(v0 + 712);
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    URLRequest.httpBody.setter();
    v23(v24, v26, v25);
    v23(v128, v125, v25);
    v28 = Logger.logObject.getter();
    v99 = static os_log_type_t.info.getter();
    v29 = os_log_type_enabled(v28, v99);
    v107 = *(v0 + 1160);
    v110 = *(v0 + 1168);
    v113 = *(v0 + 1144);
    v116 = *(v0 + 1152);
    v119 = *(v0 + 1128);
    v122 = *(v0 + 1136);
    v126 = *(v0 + 1112);
    v129 = *(v0 + 1120);
    v30 = *(v0 + 1064);
    v134 = *(v0 + 1056);
    v101 = *(v0 + 1040);
    v104 = *(v0 + 1048);
    v31 = *(v0 + 1024);
    v32 = *(v0 + 1016);
    v33 = *(v0 + 1008);
    v34 = *(v0 + 912);
    v35 = *(v0 + 904);
    v36 = *(v0 + 896);
    v37 = *(v0 + 888);
    v38 = *(v0 + 880);
    if (v29)
    {
      v94 = *(v0 + 1024);
      v95 = *(v0 + 1032);
      v98 = *(v0 + 1064);
      v39 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v39 = 136315394;
      v96 = v33;
      v97 = v38;
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v43 = *(v36 + 8);
      v43(v34, v37);
      v44 = sub_1002FFA0C(v40, v42, v138);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v45 = UUID.uuidString.getter();
      v47 = v46;
      v43(v35, v37);
      v48 = sub_1002FFA0C(v45, v47, v138);

      *(v39 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v28, v99, "Successfully created URLRequest to provision credential %s with config %s", v39, 0x16u);
      swift_arrayDestroy();

      sub_10006A2D0(v94, v95);
      sub_10006A2D0(v101, v104);
      sub_10006A178(v107, v110);
      sub_10006A178(v113, v116);
      sub_10006A178(v119, v122);
      sub_10006A178(v126, v129);
      sub_10006A2D0(v134, v98);

      sub_10006A2D0(v96, v32);
      v49 = v97;
    }

    else
    {
      sub_10006A2D0(*(v0 + 1024), *(v0 + 1032));
      sub_10006A2D0(v101, v104);
      sub_10006A178(v107, v110);
      sub_10006A178(v113, v116);
      sub_10006A178(v119, v122);
      sub_10006A178(v126, v129);
      sub_10006A2D0(v134, v30);

      sub_10006A2D0(v33, v32);
      v83 = *(v36 + 8);
      v83(v35, v37);
      v83(v34, v37);
      v49 = v38;
    }

    sub_1002F6D98(v49, type metadata accessor for SECNetworkConfiguration);
    v84 = *(v0 + 928);
    v85 = *(v0 + 920);
    v86 = *(v0 + 912);
    v87 = *(v0 + 904);
    v88 = *(v0 + 880);
    v89 = *(v0 + 856);
    v90 = *(v0 + 848);
    v91 = *(v0 + 840);
    v92 = *(v0 + 816);
    v131 = *(v0 + 792);
    v137 = *(v0 + 768);
    sub_10006A178(*(v0 + 632), *(v0 + 640));

    v82 = *(v0 + 8);
  }

  else
  {
    v50 = *(v0 + 936);
    v51 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v138[0] = v55;
      *v54 = 136315138;
      swift_getErrorValue();
      v56 = *(v0 + 592);
      v57 = *(v0 + 600);
      v58 = *(v0 + 608);
      v59 = Error.localizedDescription.getter();
      v61 = sub_1002FFA0C(v59, v60, v138);

      *(v54 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v52, v53, "JSONSerialization error %s encountered while serializing createAppletInstanceRequest", v54, 0xCu);
      sub_1000752F4(v55);
    }

    v62 = *(v0 + 1168);
    v63 = *(v0 + 1160);
    v64 = *(v0 + 1152);
    v65 = *(v0 + 1144);
    v102 = *(v0 + 1128);
    v105 = *(v0 + 1136);
    v108 = *(v0 + 1112);
    v111 = *(v0 + 1120);
    v114 = *(v0 + 1056);
    v117 = *(v0 + 1064);
    v66 = *(v0 + 1048);
    v67 = *(v0 + 1040);
    v68 = *(v0 + 1032);
    v69 = *(v0 + 1024);
    v120 = *(v0 + 1008);
    v123 = *(v0 + 1016);
    v130 = *(v0 + 712);
    v135 = *(v0 + 880);
    sub_10009591C();
    swift_allocError();
    *v70 = 14;
    swift_willThrow();
    sub_10006A2D0(v69, v68);
    sub_10006A2D0(v67, v66);
    sub_10006A178(v63, v62);
    sub_10006A178(v65, v64);
    sub_10006A178(v102, v105);
    sub_10006A178(v108, v111);
    sub_10006A2D0(v114, v117);

    sub_10006A2D0(v120, v123);
    v71 = type metadata accessor for URLRequest();
    (*(*(v71 - 8) + 8))(v130, v71);
    sub_1002F6D98(v135, type metadata accessor for SECNetworkConfiguration);
    sub_10006A178(*(v0 + 632), *(v0 + 640));
    v72 = *(v0 + 928);
    v73 = *(v0 + 920);
    v74 = *(v0 + 912);
    v75 = *(v0 + 904);
    v76 = *(v0 + 880);
    v77 = *(v0 + 856);
    v78 = *(v0 + 848);
    v79 = *(v0 + 840);
    v80 = *(v0 + 816);
    v81 = *(v0 + 792);
    v136 = *(v0 + 768);

    v82 = *(v0 + 8);
  }

  return v82();
}

uint64_t sub_1002EDF98()
{
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[130];
  v5 = v0[127];
  v6 = v0[126];
  v7 = v0[110];
  v8 = v0[89];
  sub_10006A2D0(v0[128], v0[129]);
  sub_10006A2D0(v4, v3);
  sub_10006A2D0(v2, v1);
  sub_10006A2D0(v6, v5);
  v9 = type metadata accessor for URLRequest();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_1002F6D98(v7, type metadata accessor for SECNetworkConfiguration);
  sub_10006A178(v0[79], v0[80]);
  v10 = v0[116];
  v11 = v0[115];
  v12 = v0[114];
  v13 = v0[113];
  v14 = v0[110];
  v15 = v0[107];
  v16 = v0[106];
  v17 = v0[105];
  v18 = v0[102];
  v19 = v0[99];
  v22 = v0[138];
  v23 = v0[96];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002EE178(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(type metadata accessor for URL() - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = *(*(sub_100068FC4(&qword_10050A110, &qword_100414C28) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = type metadata accessor for SECNetworkConfiguration();
  v2[17] = v11;
  v12 = *(v11 - 8);
  v2[18] = v12;
  v13 = *(v12 + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v2[20] = v14;
  v15 = *(v14 - 8);
  v2[21] = v15;
  v16 = *(v15 + 64) + 15;
  v2[22] = swift_task_alloc();
  v17 = *(*(type metadata accessor for CredentialHeartbeatPayload.Report(0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v18 = swift_task_alloc();
  v2[24] = v18;
  *v18 = v2;
  v18[1] = sub_1002EE408;

  return sub_1002EA8CC();
}

uint64_t sub_1002EE408()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[22];
    v5 = v2[23];
    v7 = v2[19];
    v9 = v2[15];
    v8 = v2[16];
    v12 = v2 + 11;
    v10 = v2[11];
    v11 = v12[1];

    v13 = *(v4 + 8);

    return v13();
  }

  else
  {

    return _swift_task_switch(sub_1002EE5A0, 0, 0);
  }
}

uint64_t sub_1002EE5A0()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[7];
  UUID.init()();

  sub_1003436E4(v1, v3, v2);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_1002EE678;
  v5 = v0[23];

  return sub_100344EB0(v5);
}

uint64_t sub_1002EE678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v8 = *(*v5 + 200);
  v9 = *v5;
  v7[26] = a1;
  v7[27] = a2;
  v7[28] = a3;
  v7[29] = a4;
  v7[30] = v4;

  sub_1002F6D98(v6[23], type metadata accessor for CredentialHeartbeatPayload.Report);
  if (v4)
  {
    v10 = sub_1002EED00;
  }

  else
  {
    v10 = sub_1002EE7D0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1002EE7D0()
{
  v53 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  swift_beginAccess();
  sub_1002F4BBC(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100075768(v0[16], &qword_10050A110, &qword_100414C28);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v52 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1002FFA0C(0xD000000000000021, 0x800000010046BFE0, &v52);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s: Nil network configuration", v9, 0xCu);
      sub_1000752F4(v10);
    }

    v12 = v0[28];
    v11 = v0[29];
    v14 = v0[26];
    v13 = v0[27];
    sub_10009591C();
    swift_allocError();
    *v15 = 19;
    swift_willThrow();
    sub_10006A178(v12, v11);
    sub_10006A178(v14, v13);
    v17 = v0[22];
    v16 = v0[23];
    v18 = v0[19];
    v20 = v0[15];
    v19 = v0[16];
    v22 = v0[11];
    v21 = v0[12];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v50 = v0[28];
    v51 = v0[29];
    v48 = v0[26];
    v49 = v0[27];
    v25 = v0[22];
    v46 = v0[21];
    v47 = v0[20];
    v26 = v0[17];
    v27 = v0[15];
    v28 = v0[11];
    v29 = v0[12];
    v30 = v0[9];
    v31 = v0[10];
    sub_1002F4C2C(v0[16], v0[19]);
    v32 = *(v26 + 20);
    v0[5] = 0xD00000000000001BLL;
    v0[6] = 0x800000010046C010;
    (*(v31 + 104))(v28, enum case for URL.DirectoryHint.inferFromPath(_:), v30);
    sub_10012512C();
    URL.appending<A>(path:directoryHint:)();
    (*(v31 + 8))(v28, v30);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    v33._countAndFlagsBits = 0x2D746E65746E6F43;
    v33._object = 0xEC00000065707954;
    v34.value._object = 0x800000010046BE40;
    v34.value._countAndFlagsBits = 0xD000000000000010;
    URLRequest.setValue(_:forHTTPHeaderField:)(v34, v33);
    UUID.init()();
    v35 = UUID.uuidString.getter();
    v37 = v36;
    (*(v46 + 8))(v25, v47);
    v38._countAndFlagsBits = 0x7365757165722D78;
    v38._object = 0xEC00000064692D74;
    v39.value._countAndFlagsBits = v35;
    v39.value._object = v37;
    URLRequest.setValue(_:forHTTPHeaderField:)(v39, v38);

    v40.value._countAndFlagsBits = sub_1002F4E88();
    v41._countAndFlagsBits = 0xD000000000000013;
    v41._object = 0x800000010046BE60;
    URLRequest.setValue(_:forHTTPHeaderField:)(v40, v41);

    v42 = Data.base64EncodedString(options:)(0);
    v43._countAndFlagsBits = 0xD000000000000011;
    v43._object = 0x800000010046BFA0;
    URLRequest.setValue(_:forHTTPHeaderField:)(v42, v43);

    sub_100069E2C(v50, v51);
    URLRequest.httpBody.setter();
    v44 = swift_task_alloc();
    v0[31] = v44;
    *v44 = v0;
    v44[1] = sub_1002EEDB8;
    v45 = v0[15];

    return sub_100159A70(v45, 0);
  }
}

uint64_t sub_1002EED00()
{
  v1 = v0[30];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[11];
  v7 = v0[12];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002EEDB8(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 248);
  v9 = *v3;
  *(*v3 + 256) = v2;

  if (v2)
  {
    v7 = sub_1002EF000;
  }

  else
  {
    sub_10006A178(a1, a2);
    v7 = sub_1002EEEE8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002EEEE8()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  v12 = v0[12];
  v13 = v0[11];
  sub_10006A178(v0[26], v0[27]);
  sub_10006A178(v1, v2);
  (*(v9 + 8))(v7, v8);
  sub_1002F6D98(v5, type metadata accessor for SECNetworkConfiguration);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002EF000()
{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[14];
  v18 = v0[15];
  v19 = v0[19];
  v7 = v0[13];
  sub_10009591C();
  swift_allocError();
  *v8 = 11;
  swift_willThrow();
  sub_10006A178(v5, v4);

  sub_10006A178(v3, v2);
  (*(v6 + 8))(v18, v7);
  sub_1002F6D98(v19, type metadata accessor for SECNetworkConfiguration);
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[19];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[11];
  v14 = v0[12];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002EF15C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = *(*(type metadata accessor for URL() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v2[17] = v7;
  v8 = *(v7 - 8);
  v2[18] = v8;
  v9 = *(v8 + 64) + 15;
  v2[19] = swift_task_alloc();
  v10 = *(*(sub_100068FC4(&qword_10050A110, &qword_100414C28) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v11 = type metadata accessor for SECNetworkConfiguration();
  v2[21] = v11;
  v12 = *(v11 - 8);
  v2[22] = v12;
  v13 = *(v12 + 64) + 15;
  v2[23] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v2[24] = v14;
  v15 = *(v14 - 8);
  v2[25] = v15;
  v16 = *(v15 + 64) + 15;
  v2[26] = swift_task_alloc();
  v17 = *(type metadata accessor for SECPresentmentReport(0) - 8);
  v2[27] = v17;
  v18 = *(v17 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v19 = swift_task_alloc();
  v2[30] = v19;
  *v19 = v2;
  v19[1] = sub_1002EF424;

  return sub_1002EA8CC();
}

uint64_t sub_1002EF424()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[28];
    v5 = v2[29];
    v7 = v2[26];
    v8 = v2[23];
    v10 = v2[19];
    v9 = v2[20];
    v13 = v2 + 15;
    v11 = v2[15];
    v12 = v13[1];

    v14 = *(v4 + 8);

    return v14();
  }

  else
  {
    v16 = swift_task_alloc();
    v2[31] = v16;
    *v16 = v4;
    v16[1] = sub_1002EF5F8;
    v17 = v2[11];

    return sub_10030148C();
  }
}

uint64_t sub_1002EF5F8(uint64_t a1)
{
  v3 = *(*v2 + 248);
  v4 = *v2;
  v4[32] = a1;

  if (v1)
  {
    v6 = v4[28];
    v5 = v4[29];
    v7 = v4[26];
    v8 = v4[23];
    v10 = v4[19];
    v9 = v4[20];
    v11 = v4[15];
    v12 = v4[16];

    v13 = v4[1];

    return v13();
  }

  else
  {

    return _swift_task_switch(sub_1002EF7A0, 0, 0);
  }
}

uint64_t sub_1002EF7A0()
{
  v1 = *(*(v0 + 256) + 16);
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = *(v0 + 216);
    v3 = *(v0 + 96);
    *(v0 + 272) = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
    *(v0 + 376) = *(v2 + 80);
    result = swift_beginAccess();
    *(v0 + 380) = enum case for URL.DirectoryHint.inferFromPath(_:);
    *(v0 + 280) = 0;
    v5 = *(v0 + 256);
    if (*(v5 + 16))
    {
      v7 = *(v0 + 200);
      v6 = *(v0 + 208);
      v8 = *(v0 + 192);
      sub_1002F6CC0(v5 + ((*(v0 + 376) + 32) & ~*(v0 + 376)), *(v0 + 232));
      UUID.init()();
      *(v0 + 288) = UUID.uuidString.getter();
      *(v0 + 296) = v9;
      (*(v7 + 8))(v6, v8);
      v10 = swift_task_alloc();
      *(v0 + 304) = v10;
      *v10 = v0;
      v10[1] = sub_1002EF98C;
      v11 = *(v0 + 232);

      return sub_1002F65D4(v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 208);
    v15 = *(v0 + 184);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);

    v20 = *(v0 + 8);

    return v20();
  }

  return result;
}

uint64_t sub_1002EF98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 304);
  v11 = *v5;
  v6[39] = a1;
  v6[40] = a2;
  v6[41] = a3;
  v6[42] = a4;
  v6[43] = v4;

  if (v4)
  {
    v8 = v6[37];

    v9 = sub_1002F025C;
  }

  else
  {
    v9 = sub_1002EFAB0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002EFAB0()
{
  v77 = v0;
  v1 = v0;
  v2 = *(v0 + 272);
  v3 = *(v0 + 176);
  v4 = *(v1 + 160);
  v5 = *(v1 + 168);
  sub_1002F4BBC(*(v1 + 96) + v2, v4);
  if ((*(v3 + 48))(v4, 1, v5) == 1)
  {
    v6 = *(v1 + 296);
    v7 = *(v1 + 160);

    sub_100075768(v7, &qword_10050A110, &qword_100414C28);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "sendDailyPresentmentReports: Nil network configuration", v11, 2u);
    }

    v13 = *(v1 + 328);
    v12 = *(v1 + 336);
    v15 = *(v1 + 312);
    v14 = *(v1 + 320);

    sub_10009591C();
    swift_allocError();
    *v16 = 19;
    swift_willThrow();
    sub_10006A178(v13, v12);
    sub_10006A178(v15, v14);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v18 = *(v1 + 224);
    v17 = *(v1 + 232);
    sub_1000958E4(v8, qword_10051B2C8);
    sub_1002F6CC0(v17, v18);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v1 + 224);
    v22 = *(v1 + 232);
    if (v21)
    {
      v24 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v24 = 136315394;
      swift_getErrorValue();
      v26 = *(v1 + 40);
      v25 = *(v1 + 48);
      v27 = *(v1 + 56);
      v28 = Error.localizedDescription.getter();
      v30 = sub_1002FFA0C(v28, v29, v76);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      v31 = UUID.uuidString.getter();
      v33 = v32;
      sub_1002F6D98(v23, type metadata accessor for SECPresentmentReport);
      v34 = sub_1002FFA0C(v31, v33, v76);

      *(v24 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error %s when sending report %s. Will try again the next scheduled task.", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002F6D98(v23, type metadata accessor for SECPresentmentReport);
    }

    result = sub_1002F6D98(v22, type metadata accessor for SECPresentmentReport);
    v52 = *(v1 + 280) + 1;
    if (v52 == *(v1 + 264))
    {
      v53 = *(v1 + 256);

      v55 = *(v1 + 224);
      v54 = *(v1 + 232);
      v56 = *(v1 + 208);
      v57 = *(v1 + 184);
      v59 = *(v1 + 152);
      v58 = *(v1 + 160);
      v61 = *(v1 + 120);
      v60 = *(v1 + 128);

      v62 = *(v1 + 8);

      return v62();
    }

    else
    {
      *(v1 + 280) = v52;
      v63 = *(v1 + 256);
      if (v52 >= *(v63 + 16))
      {
        __break(1u);
      }

      else
      {
        v64 = *(v1 + 208);
        v65 = *(v1 + 192);
        v66 = *(v1 + 200);
        sub_1002F6CC0(v63 + ((*(v1 + 376) + 32) & ~*(v1 + 376)) + *(*(v1 + 216) + 72) * v52, *(v1 + 232));
        UUID.init()();
        *(v1 + 288) = UUID.uuidString.getter();
        *(v1 + 296) = v67;
        (*(v66 + 8))(v64, v65);
        v68 = swift_task_alloc();
        *(v1 + 304) = v68;
        *v68 = v1;
        v68[1] = sub_1002EF98C;
        v69 = *(v1 + 232);

        return sub_1002F65D4(v69);
      }
    }
  }

  else
  {
    v74 = *(v1 + 328);
    v75 = *(v1 + 336);
    v72 = *(v1 + 312);
    v73 = *(v1 + 320);
    v71 = *(v1 + 288);
    v70 = *(v1 + 380);
    v35 = *(v1 + 168);
    v36 = *(v1 + 152);
    v38 = *(v1 + 120);
    v37 = *(v1 + 128);
    v39 = *(v1 + 104);
    v40 = *(v1 + 112);
    sub_1002F4C2C(*(v1 + 160), *(v1 + 184));
    v41 = *(v35 + 20);
    *(v1 + 64) = 0xD000000000000013;
    *(v1 + 72) = 0x800000010046BF80;
    (*(v40 + 104))(v38, v70, v39);
    sub_10012512C();
    URL.appending<A>(path:directoryHint:)();
    (*(v40 + 8))(v38, v39);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    v42.value._countAndFlagsBits = 0xD000000000000010;
    v43._countAndFlagsBits = 0x2D746E65746E6F43;
    v43._object = 0xEC00000065707954;
    v42.value._object = 0x800000010046BE40;
    URLRequest.setValue(_:forHTTPHeaderField:)(v42, v43);
    v44._countAndFlagsBits = 0x7365757165722D78;
    v44._object = 0xEC00000064692D74;
    URLRequest.setValue(_:forHTTPHeaderField:)(v71, v44);

    v45.value._countAndFlagsBits = sub_1002F4E88();
    v46._object = 0x800000010046BE60;
    v46._countAndFlagsBits = 0xD000000000000013;
    URLRequest.setValue(_:forHTTPHeaderField:)(v45, v46);

    v47 = Data.base64EncodedString(options:)(0);
    v48._countAndFlagsBits = 0xD000000000000011;
    v48._object = 0x800000010046BFA0;
    URLRequest.setValue(_:forHTTPHeaderField:)(v47, v48);

    sub_100069E2C(v74, v75);
    URLRequest.httpBody.setter();
    v49 = swift_task_alloc();
    *(v1 + 352) = v49;
    *v49 = v1;
    v49[1] = sub_1002F0628;
    v50 = *(v1 + 152);

    return sub_100159A70(v50, 0);
  }

  return result;
}

uint64_t sub_1002F025C()
{
  v43 = v0;
  v1 = *(v0 + 344);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  sub_1002F6CC0(v2, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v10 = 136315394;
    swift_getErrorValue();
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 56);
    v14 = Error.localizedDescription.getter();
    v16 = sub_1002FFA0C(v14, v15, &v42);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    v17 = UUID.uuidString.getter();
    v41 = v8;
    v19 = v18;
    sub_1002F6D98(v9, type metadata accessor for SECPresentmentReport);
    v20 = sub_1002FFA0C(v17, v19, &v42);

    *(v10 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error %s when sending report %s. Will try again the next scheduled task.", v10, 0x16u);
    swift_arrayDestroy();

    v21 = v41;
  }

  else
  {

    sub_1002F6D98(v9, type metadata accessor for SECPresentmentReport);
    v21 = v8;
  }

  result = sub_1002F6D98(v21, type metadata accessor for SECPresentmentReport);
  v23 = *(v0 + 280) + 1;
  if (v23 == *(v0 + 264))
  {
    v24 = *(v0 + 256);

    v26 = *(v0 + 224);
    v25 = *(v0 + 232);
    v27 = *(v0 + 208);
    v28 = *(v0 + 184);
    v30 = *(v0 + 152);
    v29 = *(v0 + 160);
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    *(v0 + 280) = v23;
    v34 = *(v0 + 256);
    if (v23 >= *(v34 + 16))
    {
      __break(1u);
    }

    else
    {
      v35 = *(v0 + 208);
      v36 = *(v0 + 192);
      v37 = *(v0 + 200);
      sub_1002F6CC0(v34 + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(*(v0 + 216) + 72) * v23, *(v0 + 232));
      UUID.init()();
      *(v0 + 288) = UUID.uuidString.getter();
      *(v0 + 296) = v38;
      (*(v37 + 8))(v35, v36);
      v39 = swift_task_alloc();
      *(v0 + 304) = v39;
      *v39 = v0;
      v39[1] = sub_1002EF98C;
      v40 = *(v0 + 232);

      return sub_1002F65D4(v40);
    }
  }

  return result;
}

uint64_t sub_1002F0628(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 352);
  v8 = *v3;
  *(*v3 + 360) = v2;

  if (v2)
  {
    v9 = sub_1002F0860;
    v10 = 0;
  }

  else
  {
    v11 = *(v6 + 88);
    sub_10006A178(a1, a2);
    v9 = sub_1002F0774;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1002F0774()
{
  v1 = v0[45];
  v2 = v0[11];
  v3 = sub_10035E904();
  if (v1)
  {
    v0[46] = v1;
    v8 = sub_1002F0EBC;
  }

  else
  {
    v4 = v3;
    v5 = v0[29];
    v6 = v0[11];
    v7 = swift_task_alloc();
    v7[2] = v4;
    v7[3] = v6;
    v7[4] = v5;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v8 = sub_1002F0C84;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002F0860()
{
  v49 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 184);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  sub_10006A178(*(v0 + 312), *(v0 + 320));
  sub_10006A178(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_1002F6D98(v3, type metadata accessor for SECNetworkConfiguration);
  v7 = *(v0 + 360);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v10 = type metadata accessor for Logger();
  sub_1000958E4(v10, qword_10051B2C8);
  sub_1002F6CC0(v8, v9);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();

  v13 = os_log_type_enabled(v11, v12);
  v15 = *(v0 + 224);
  v14 = *(v0 + 232);
  if (v13)
  {
    v16 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v16 = 136315394;
    swift_getErrorValue();
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 56);
    v20 = Error.localizedDescription.getter();
    v22 = sub_1002FFA0C(v20, v21, &v48);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = UUID.uuidString.getter();
    v47 = v14;
    v25 = v24;
    sub_1002F6D98(v15, type metadata accessor for SECPresentmentReport);
    v26 = sub_1002FFA0C(v23, v25, &v48);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v11, v12, "Error %s when sending report %s. Will try again the next scheduled task.", v16, 0x16u);
    swift_arrayDestroy();

    v27 = v47;
  }

  else
  {

    sub_1002F6D98(v15, type metadata accessor for SECPresentmentReport);
    v27 = v14;
  }

  result = sub_1002F6D98(v27, type metadata accessor for SECPresentmentReport);
  v29 = *(v0 + 280) + 1;
  if (v29 == *(v0 + 264))
  {
    v30 = *(v0 + 256);

    v32 = *(v0 + 224);
    v31 = *(v0 + 232);
    v33 = *(v0 + 208);
    v34 = *(v0 + 184);
    v36 = *(v0 + 152);
    v35 = *(v0 + 160);
    v38 = *(v0 + 120);
    v37 = *(v0 + 128);

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    *(v0 + 280) = v29;
    v40 = *(v0 + 256);
    if (v29 >= *(v40 + 16))
    {
      __break(1u);
    }

    else
    {
      v41 = *(v0 + 208);
      v42 = *(v0 + 192);
      v43 = *(v0 + 200);
      sub_1002F6CC0(v40 + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(*(v0 + 216) + 72) * v29, *(v0 + 232));
      UUID.init()();
      *(v0 + 288) = UUID.uuidString.getter();
      *(v0 + 296) = v44;
      (*(v43 + 8))(v41, v42);
      v45 = swift_task_alloc();
      *(v0 + 304) = v45;
      *v45 = v0;
      v45[1] = sub_1002EF98C;
      v46 = *(v0 + 232);

      return sub_1002F65D4(v46);
    }
  }

  return result;
}

uint64_t sub_1002F0C84()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 232);
  v4 = *(v0 + 184);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  sub_10006A178(*(v0 + 312), *(v0 + 320));
  sub_10006A178(v1, v2);
  (*(v6 + 8))(v5, v7);
  sub_1002F6D98(v4, type metadata accessor for SECNetworkConfiguration);
  result = sub_1002F6D98(v3, type metadata accessor for SECPresentmentReport);
  v9 = *(v0 + 280) + 1;
  if (v9 == *(v0 + 264))
  {
    v10 = *(v0 + 256);

    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v13 = *(v0 + 208);
    v14 = *(v0 + 184);
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    *(v0 + 280) = v9;
    v20 = *(v0 + 256);
    if (v9 >= *(v20 + 16))
    {
      __break(1u);
    }

    else
    {
      v21 = *(v0 + 208);
      v22 = *(v0 + 192);
      v23 = *(v0 + 200);
      sub_1002F6CC0(v20 + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(*(v0 + 216) + 72) * v9, *(v0 + 232));
      UUID.init()();
      *(v0 + 288) = UUID.uuidString.getter();
      *(v0 + 296) = v24;
      (*(v23 + 8))(v21, v22);
      v25 = swift_task_alloc();
      *(v0 + 304) = v25;
      *v25 = v0;
      v25[1] = sub_1002EF98C;
      v26 = *(v0 + 232);

      return sub_1002F65D4(v26);
    }
  }

  return result;
}

uint64_t sub_1002F0EBC()
{
  v49 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 184);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  sub_10006A178(*(v0 + 312), *(v0 + 320));
  sub_10006A178(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_1002F6D98(v3, type metadata accessor for SECNetworkConfiguration);
  v7 = *(v0 + 368);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v10 = type metadata accessor for Logger();
  sub_1000958E4(v10, qword_10051B2C8);
  sub_1002F6CC0(v8, v9);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();

  v13 = os_log_type_enabled(v11, v12);
  v15 = *(v0 + 224);
  v14 = *(v0 + 232);
  if (v13)
  {
    v16 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v16 = 136315394;
    swift_getErrorValue();
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 56);
    v20 = Error.localizedDescription.getter();
    v22 = sub_1002FFA0C(v20, v21, &v48);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = UUID.uuidString.getter();
    v47 = v14;
    v25 = v24;
    sub_1002F6D98(v15, type metadata accessor for SECPresentmentReport);
    v26 = sub_1002FFA0C(v23, v25, &v48);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v11, v12, "Error %s when sending report %s. Will try again the next scheduled task.", v16, 0x16u);
    swift_arrayDestroy();

    v27 = v47;
  }

  else
  {

    sub_1002F6D98(v15, type metadata accessor for SECPresentmentReport);
    v27 = v14;
  }

  result = sub_1002F6D98(v27, type metadata accessor for SECPresentmentReport);
  v29 = *(v0 + 280) + 1;
  if (v29 == *(v0 + 264))
  {
    v30 = *(v0 + 256);

    v32 = *(v0 + 224);
    v31 = *(v0 + 232);
    v33 = *(v0 + 208);
    v34 = *(v0 + 184);
    v36 = *(v0 + 152);
    v35 = *(v0 + 160);
    v38 = *(v0 + 120);
    v37 = *(v0 + 128);

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    *(v0 + 280) = v29;
    v40 = *(v0 + 256);
    if (v29 >= *(v40 + 16))
    {
      __break(1u);
    }

    else
    {
      v41 = *(v0 + 208);
      v42 = *(v0 + 192);
      v43 = *(v0 + 200);
      sub_1002F6CC0(v40 + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(*(v0 + 216) + 72) * v29, *(v0 + 232));
      UUID.init()();
      *(v0 + 288) = UUID.uuidString.getter();
      *(v0 + 296) = v44;
      (*(v43 + 8))(v41, v42);
      v45 = swift_task_alloc();
      *(v0 + 304) = v45;
      *v45 = v0;
      v45[1] = sub_1002EF98C;
      v46 = *(v0 + 232);

      return sub_1002F65D4(v46);
    }
  }

  return result;
}

uint64_t sub_1002F12E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[63] = a3;
  v4[64] = v3;
  v4[61] = a1;
  v4[62] = a2;
  v5 = type metadata accessor for UUID();
  v4[65] = v5;
  v6 = *(v5 - 8);
  v4[66] = v6;
  v7 = *(v6 + 64) + 15;
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v8 = type metadata accessor for SECCredentialConfig();
  v4[69] = v8;
  v9 = *(v8 - 8);
  v4[70] = v9;
  v10 = *(v9 + 64) + 15;
  v4[71] = swift_task_alloc();
  v11 = type metadata accessor for SECMetadata();
  v4[72] = v11;
  v12 = *(v11 - 8);
  v4[73] = v12;
  v13 = *(v12 + 64) + 15;
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v14 = *(*(type metadata accessor for URL() - 8) + 64) + 15;
  v4[76] = swift_task_alloc();
  v15 = type metadata accessor for URLRequest();
  v4[77] = v15;
  v16 = *(v15 - 8);
  v4[78] = v16;
  v17 = *(v16 + 64) + 15;
  v4[79] = swift_task_alloc();
  v18 = *(*(sub_100068FC4(&qword_10050A110, &qword_100414C28) - 8) + 64) + 15;
  v4[80] = swift_task_alloc();
  v19 = type metadata accessor for SECNetworkConfiguration();
  v4[81] = v19;
  v20 = *(v19 - 8);
  v4[82] = v20;
  v21 = *(v20 + 64) + 15;
  v4[83] = swift_task_alloc();
  v22 = *(*(sub_100068FC4(&qword_100502D50, &qword_100414C30) - 8) + 64) + 15;
  v4[84] = swift_task_alloc();

  return _swift_task_switch(sub_1002F15C8, 0, 0);
}

uint64_t sub_1002F15C8()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 680) = qword_10051B858;

  return _swift_task_switch(sub_1002F1660, v1, 0);
}

uint64_t sub_1002F1660()
{
  v1 = v0[85];
  v2 = v0[62];
  sub_10009453C(v0[84]);
  v0[86] = 0;

  return _swift_task_switch(sub_1002F16F4, 0, 0);
}

uint64_t sub_1002F16F4()
{
  v1 = v0[84];
  v2 = v0[70];
  v3 = v0[69];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    sub_100075768(v1, &qword_100502D50, &qword_100414C30);
    v4 = swift_task_alloc();
    v0[87] = v4;
    *v4 = v0;
    v4[1] = sub_1002F18C4;
    v5 = v0[64];

    return sub_1002EA8CC();
  }

  else
  {
    (*(v2 + 32))(v0[61], v1, v3);
    v7 = v0[84];
    v8 = v0[83];
    v9 = v0[80];
    v10 = v0[79];
    v11 = v0[76];
    v12 = v0[75];
    v13 = v0[74];
    v14 = v0[71];
    v15 = v0[68];
    v16 = v0[67];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1002F18C4()
{
  v2 = *(*v1 + 696);
  v3 = *v1;
  v3[88] = v0;

  if (v0)
  {
    v4 = v3[84];
    v5 = v3[83];
    v6 = v3[80];
    v7 = v3[79];
    v8 = v3[76];
    v9 = v3[75];
    v10 = v3[74];
    v11 = v3[71];
    v15 = v3[68];
    v12 = v3[67];

    v13 = v3[1];

    return v13();
  }

  else
  {

    return _swift_task_switch(sub_1002F1AA0, 0, 0);
  }
}

uint64_t sub_1002F1AA0()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 512);
  v5 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  swift_beginAccess();
  sub_1002F4BBC(v4 + v5, v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100075768(*(v0 + 640), &qword_10050A110, &qword_100414C28);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "getCredentialMetadata: Nil network configuration", v9, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v10 = 19;
    swift_willThrow();
    goto LABEL_15;
  }

  v11 = *(v0 + 504);
  sub_1002F4C2C(*(v0 + 640), *(v0 + 664));
  v13 = *(v11 + 96);
  v12 = *(v11 + 112);
  v14 = *(v11 + 80);
  *(v0 + 128) = *(v11 + 128);
  v15 = *(v11 + 64);
  v17 = *(v11 + 16);
  v16 = *(v11 + 32);
  *(v0 + 48) = *(v11 + 48);
  *(v0 + 64) = v15;
  *(v0 + 16) = v17;
  *(v0 + 32) = v16;
  *(v0 + 96) = v13;
  *(v0 + 112) = v12;
  *(v0 + 80) = v14;
  if (*(v0 + 128) >= 2u)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000958E4(v37, qword_10051B2C8);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Unable to get metadata as privileged client", v40, 2u);
    }

    v41 = *(v0 + 664);

    sub_10009591C();
    swift_allocError();
    *v42 = 6;
    swift_willThrow();
    sub_1002F6D98(v41, type metadata accessor for SECNetworkConfiguration);
    goto LABEL_15;
  }

  v19 = *(v0 + 64);
  v18 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  v23 = *(v0 + 32);
  v22 = *(v0 + 40);
  v24 = *(v0 + 16);
  v25 = *(v0 + 80);
  v27 = *(v11 + 96);
  v26 = *(v11 + 112);
  *(v0 + 368) = v27;
  *(v0 + 384) = v26;
  v28 = *(v0 + 704);
  v29 = *(v0 + 664);
  v30 = *(v0 + 632);
  v31 = *(v0 + 608);
  v32 = *(v0 + 496);
  *(v0 + 256) = v24;
  *(v0 + 272) = v23;
  *(v0 + 280) = v22;
  *(v0 + 288) = v21;
  *(v0 + 296) = v20;
  *(v0 + 304) = v19;
  *(v0 + 312) = v18;
  *(v0 + 320) = v25;
  *(v0 + 336) = v27;
  *(v0 + 352) = *(v0 + 384);
  sub_10012E3F4(v0 + 16, v0 + 136);

  sub_10012E450(v0 + 256);
  sub_100124BD8(v21, v20, v31);

  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  v33._countAndFlagsBits = 0x2D746E65746E6F43;
  v33._object = 0xEC00000065707954;
  v34.value._object = 0x800000010046BE40;
  v34.value._countAndFlagsBits = 0xD000000000000010;
  URLRequest.setValue(_:forHTTPHeaderField:)(v34, v33);
  v35 = sub_1002F4C90();
  if (v28)
  {
    v36 = *(v0 + 664);
    (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
    sub_1002F6D98(v36, type metadata accessor for SECNetworkConfiguration);
LABEL_15:
    v43 = *(v0 + 672);
    v44 = *(v0 + 664);
    v45 = *(v0 + 640);
    v46 = *(v0 + 632);
    v47 = *(v0 + 608);
    v48 = *(v0 + 600);
    v49 = *(v0 + 592);
    v50 = *(v0 + 568);
    v51 = *(v0 + 544);
    v52 = *(v0 + 536);

    v53 = *(v0 + 8);

    return v53();
  }

  v55 = v35;
  v56 = [v35 serialNumber];

  if (v56)
  {
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  v60 = *(v0 + 632);
  v61 = *(v0 + 496);
  v62._countAndFlagsBits = 0x2D656C7070612D78;
  v62._object = 0xEC00000064696573;
  v63.value._countAndFlagsBits = v57;
  v63.value._object = v59;
  URLRequest.setValue(_:forHTTPHeaderField:)(v63, v62);

  v64.value._countAndFlagsBits = sub_1002F4E88();
  v65._countAndFlagsBits = 0xD000000000000013;
  v65._object = 0x800000010046BE60;
  URLRequest.setValue(_:forHTTPHeaderField:)(v64, v65);

  v66.value._countAndFlagsBits = UUID.uuidString.getter();
  v67._countAndFlagsBits = 0x7365757165722D78;
  v67._object = 0xEC00000064692D74;
  URLRequest.setValue(_:forHTTPHeaderField:)(v66, v67);

  v68.value._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69._countAndFlagsBits = 0x6567612D72657375;
  v69._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v68, v69);

  v70 = swift_task_alloc();
  *(v0 + 712) = v70;
  *v70 = v0;
  v70[1] = sub_1002F2118;
  v71 = *(v0 + 632);

  return sub_100159A70(v71, 1);
}

uint64_t sub_1002F2118(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 712);
  v8 = *v3;
  v4[90] = a1;
  v4[91] = a2;
  v4[92] = v2;

  if (v2)
  {
    v6 = sub_1002F2698;
  }

  else
  {
    v6 = sub_1002F2234;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002F2234()
{
  v50 = v0;
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[75];
  v5 = v0[72];
  v6 = type metadata accessor for JSONDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1002F6DF8(&qword_100502D48, &type metadata accessor for SECMetadata);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v0[93] = v1;
  if (v1)
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_10051B2C8);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v49 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v15 = v0[53];
      v14 = v0[54];
      v16 = v0[55];
      v17 = Error.localizedDescription.getter();
      v19 = sub_1002FFA0C(v17, v18, &v49);

      *(v12 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "getCredentialMetadata: JSON Decoding error %s encountered", v12, 0xCu);
      sub_1000752F4(v13);
    }

    v20 = v0[91];
    v21 = v0[90];
    v22 = v0[83];
    v23 = v0[79];
    v24 = v0[78];
    v25 = v0[77];
    sub_10009591C();
    swift_allocError();
    *v26 = 13;
    swift_willThrow();
    sub_10006A178(v21, v20);

    (*(v24 + 8))(v23, v25);
    sub_1002F6D98(v22, type metadata accessor for SECNetworkConfiguration);
    v27 = v0[84];
    v28 = v0[83];
    v29 = v0[80];
    v30 = v0[79];
    v31 = v0[76];
    v32 = v0[75];
    v33 = v0[74];
    v34 = v0[71];
    v35 = v0[68];
    v36 = v0[67];

    v37 = v0[1];

    return v37();
  }

  else
  {
    v39 = v0[75];
    v47 = v0[71];
    v48 = v0[85];
    v40 = v0[68];
    v45 = v0[67];
    v46 = v0[74];
    v41 = v0[66];
    v42 = v0[65];
    v43 = v0[62];

    v44 = *(v41 + 16);
    v44(v40, v43, v42);
    SECMetadata.credentialTypes.getter();
    SECMetadata.appletInstances.getter();
    SECMetadata.friendlyName.getter();
    v44(v45, v40, v42);
    SECMetadata.init(credentialTypes:appletInstances:friendlyName:)();
    SECCredentialConfig.init(configUUID:metadata:)();
    (*(v41 + 8))(v40, v42);

    return _swift_task_switch(sub_1002F29E8, v48, 0);
  }
}

uint64_t sub_1002F2698()
{
  v35 = v0;
  *(v0 + 472) = *(v0 + 736);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 736);

    v2 = *(v0 + 448);
    v3 = *(v0 + 456);
    v4 = *(v0 + 464);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10051B2C8);
    sub_10015CCB4(v2, v3, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_10015CCF0(v2, v3, v4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = v9;
      *v8 = 136315138;
      v10 = sub_100157174(v2, v3, v4);
      v12 = sub_1002FFA0C(v10, v11, &v34);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "getCredentialMetadata: Data task wrapper error %s encountered while performing URL request", v8, 0xCu);
      sub_1000752F4(v9);
    }

    v13 = *(v0 + 664);
    v14 = *(v0 + 632);
    v15 = *(v0 + 624);
    v16 = *(v0 + 616);
    sub_10009591C();
    swift_allocError();
    *v17 = 11;
    swift_willThrow();
    sub_10015CCF0(v2, v3, v4);
    (*(v15 + 8))(v14, v16);
    sub_1002F6D98(v13, type metadata accessor for SECNetworkConfiguration);
    v18 = *(v0 + 472);
  }

  else
  {
    v19 = *(v0 + 664);
    (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
    sub_1002F6D98(v19, type metadata accessor for SECNetworkConfiguration);
    v20 = *(v0 + 472);

    v33 = *(v0 + 736);
  }

  v21 = *(v0 + 672);
  v22 = *(v0 + 664);
  v23 = *(v0 + 640);
  v24 = *(v0 + 632);
  v25 = *(v0 + 608);
  v26 = *(v0 + 600);
  v27 = *(v0 + 592);
  v28 = *(v0 + 568);
  v29 = *(v0 + 544);
  v30 = *(v0 + 536);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002F29E8()
{
  v1 = v0[93];
  v2 = v0[85];
  v3 = sub_10035E904();
  if (v1)
  {
    v0[94] = v1;
    v7 = sub_1002F2C60;
  }

  else
  {
    v4 = v3;
    v5 = v0[71];
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v7 = sub_1002F2ACC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002F2ACC()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[75];
  v5 = v0[73];
  v6 = v0[72];
  v22 = v0[83];
  v23 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[61];
  sub_10006A178(v0[90], v0[91]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_1002F6D98(v22, type metadata accessor for SECNetworkConfiguration);
  (*(v7 + 32))(v9, v23, v8);
  v10 = v0[84];
  v11 = v0[83];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[71];
  v18 = v0[68];
  v19 = v0[67];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002F2C60()
{
  v36 = v0;
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  (*(v0[73] + 8))(v0[75], v0[72]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[94];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B2C8);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[53];
    v10 = v0[54];
    v12 = v0[55];
    v13 = Error.localizedDescription.getter();
    v15 = sub_1002FFA0C(v13, v14, &v35);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "getCredentialMetadata: JSON Decoding error %s encountered", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v16 = v0[91];
  v17 = v0[90];
  v18 = v0[83];
  v19 = v0[79];
  v20 = v0[78];
  v21 = v0[77];
  sub_10009591C();
  swift_allocError();
  *v22 = 13;
  swift_willThrow();
  sub_10006A178(v17, v16);

  (*(v20 + 8))(v19, v21);
  sub_1002F6D98(v18, type metadata accessor for SECNetworkConfiguration);
  v23 = v0[84];
  v24 = v0[83];
  v25 = v0[80];
  v26 = v0[79];
  v27 = v0[76];
  v28 = v0[75];
  v29 = v0[74];
  v30 = v0[71];
  v31 = v0[68];
  v32 = v0[67];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1002F2F54()
{
  v13 = v0[86];
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[71];
  v9 = v0[68];
  v10 = v0[67];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002F304C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;

  return _swift_task_switch(sub_1002F30E0, 0, 0);
}

uint64_t sub_1002F30E0()
{
  v27 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 40) = 0;
  v5 = [v3 signChallenge:isa outError:v0 + 40];

  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = *(v0 + 56);
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *v7 = v8;
    v7[1] = v10;
    v11 = *(v0 + 8);
  }

  else
  {
    v12 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2C8);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v19 = *(v0 + 16);
      v18 = *(v0 + 24);
      v20 = *(v0 + 32);
      v21 = Error.localizedDescription.getter();
      v23 = sub_1002FFA0C(v21, v22, &v26);

      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "performSEAuthenticatedGetData: Failed to sign challenge with nearfield error %s", v16, 0xCu);
      sub_1000752F4(v17);
    }

    sub_10009591C();
    swift_allocError();
    *v24 = 8;
    swift_willThrow();

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_1002F3390(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *(*(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v6 = *(v5 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v7 = *(*(type metadata accessor for URL() - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  v2[22] = v8;
  v9 = *(v8 - 8);
  v2[23] = v9;
  v10 = *(v9 + 64) + 15;
  v2[24] = swift_task_alloc();
  v11 = *(*(sub_100068FC4(&qword_10050A110, &qword_100414C28) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v12 = type metadata accessor for SECNetworkConfiguration();
  v2[26] = v12;
  v13 = *(v12 - 8);
  v2[27] = v13;
  v14 = *(v13 + 64) + 15;
  v2[28] = swift_task_alloc();
  v15 = swift_task_alloc();
  v2[29] = v15;
  *v15 = v2;
  v15[1] = sub_1002F35DC;

  return sub_1002EA8CC();
}

uint64_t sub_1002F35DC()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  v3[30] = v0;

  if (v0)
  {
    v4 = v3[28];
    v6 = v3[24];
    v5 = v3[25];
    v8 = v3[20];
    v7 = v3[21];
    v9 = v3[19];
    v10 = v3[16];

    v11 = v3[1];

    return v11();
  }

  else
  {

    return _swift_task_switch(sub_1002F377C, 0, 0);
  }
}

uint64_t sub_1002F377C()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[15];
  v5 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  swift_beginAccess();
  sub_1002F4BBC(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100075768(v0[25], &qword_10050A110, &qword_100414C28);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "getInstallationStatus: Nil network configuration", v9, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v10 = 19;
    swift_willThrow();
    goto LABEL_9;
  }

  v11 = v0[30];
  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[14];
  sub_1002F4C2C(v0[25], v0[28]);
  sub_100124E14(v13);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  v15._countAndFlagsBits = 0x2D746E65746E6F43;
  v15._object = 0xEC00000065707954;
  v16.value._object = 0x800000010046BE40;
  v16.value._countAndFlagsBits = 0xD000000000000010;
  URLRequest.setValue(_:forHTTPHeaderField:)(v16, v15);
  v17 = sub_1002F4C90();
  if (v11)
  {
    v18 = v0[28];
    (*(v0[23] + 8))(v0[24], v0[22]);
    sub_1002F6D98(v18, type metadata accessor for SECNetworkConfiguration);
LABEL_9:
    v19 = v0[28];
    v21 = v0[24];
    v20 = v0[25];
    v23 = v0[20];
    v22 = v0[21];
    v24 = v0[19];
    v25 = v0[16];

    v26 = v0[1];

    return v26();
  }

  v28 = v17;
  v29 = [v17 serialNumber];

  if (v29)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = v0[24];
  v34 = v0[20];
  v35 = v0[17];
  v36 = v0[18];
  v37._countAndFlagsBits = 0x2D656C7070612D78;
  v37._object = 0xEC00000064696573;
  v38.value._countAndFlagsBits = v30;
  v38.value._object = v32;
  URLRequest.setValue(_:forHTTPHeaderField:)(v38, v37);

  v39.value._countAndFlagsBits = sub_1002F4E88();
  v40._countAndFlagsBits = 0xD000000000000013;
  v40._object = 0x800000010046BE60;
  URLRequest.setValue(_:forHTTPHeaderField:)(v39, v40);

  UUID.init()();
  v41 = UUID.uuidString.getter();
  v43 = v42;
  v44 = *(v36 + 8);
  v0[31] = v44;
  v0[32] = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v34, v35);
  v45._countAndFlagsBits = 0x7365757165722D78;
  v45._object = 0xEC00000064692D74;
  v46.value._countAndFlagsBits = v41;
  v46.value._object = v43;
  URLRequest.setValue(_:forHTTPHeaderField:)(v46, v45);

  v47.value._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48._countAndFlagsBits = 0x6567612D72657375;
  v48._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v47, v48);

  v49 = swift_task_alloc();
  v0[33] = v49;
  *v49 = v0;
  v49[1] = sub_1002F3C44;
  v50 = v0[24];

  return sub_100159A70(v50, 1);
}

uint64_t sub_1002F3C44(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 264);
  v8 = *v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = v2;

  if (v2)
  {
    v6 = sub_1002F443C;
  }

  else
  {
    v6 = sub_1002F3D5C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002F3D5C()
{
  v76 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100068FC4(&qword_100502600, &unk_100417140);
  sub_1002F50B8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v2)
  {
LABEL_20:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000958E4(v29, qword_10051B2C8);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v75 = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v35 = *(v0 + 40);
      v34 = *(v0 + 48);
      v36 = *(v0 + 56);
      v37 = Error.localizedDescription.getter();
      v39 = sub_1002FFA0C(v37, v38, &v75);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "getInstallationStatus: JSON Decoding error %s encountered", v32, 0xCu);
      sub_1000752F4(v33);
    }

    v41 = *(v0 + 272);
    v40 = *(v0 + 280);
    v42 = *(v0 + 224);
    v44 = *(v0 + 184);
    v43 = *(v0 + 192);
    v45 = *(v0 + 176);
    sub_10009591C();
    swift_allocError();
    *v46 = 13;
    swift_willThrow();
    sub_10006A178(v41, v40);

    (*(v44 + 8))(v43, v45);
    sub_1002F6D98(v42, type metadata accessor for SECNetworkConfiguration);
    v47 = *(v0 + 224);
    v49 = *(v0 + 192);
    v48 = *(v0 + 200);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    v53 = *(v0 + 128);

    v54 = *(v0 + 8);

    return v54();
  }

  v7 = *(v0 + 96);
  if (!*(v7 + 16))
  {
    goto LABEL_14;
  }

  v8 = sub_10008C908(0xD000000000000014, 0x800000010046BE80);
  if ((v9 & 1) == 0)
  {
    goto LABEL_14;
  }

  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  v12 = *(v0 + 128);
  v13 = (*(v7 + 56) + 16 * v8);
  v14 = *v13;
  v15 = v13[1];

  UUID.init(uuidString:)();

  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    v16 = *(v0 + 128);

    sub_100075768(v16, &unk_10050BE80, &unk_10040B360);
LABEL_15:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000958E4(v24, qword_10051B2C8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "getInstallationStatus: Unexpected JSON Response from Server", v27, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v28 = 13;
    swift_willThrow();
    goto LABEL_20;
  }

  v17 = *(v0 + 112);
  (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    v23 = *(v0 + 256);
    (*(v0 + 248))(*(v0 + 152), *(v0 + 136));
LABEL_14:

    goto LABEL_15;
  }

  if (!*(v7 + 16) || (v18 = sub_10008C908(0xD000000000000013, 0x800000010046BEA0), (v19 & 1) == 0))
  {
    v57 = *(v0 + 248);
    v56 = *(v0 + 256);
    v58 = *(v0 + 152);
    v59 = *(v0 + 136);

    v57(v58, v59);
    goto LABEL_15;
  }

  v20 = (*(v7 + 56) + 16 * v18);
  v22 = *v20;
  v21 = v20[1];

  if (v22 == 0x6574736575716572 && v21 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10006A178(*(v0 + 272), *(v0 + 280));

    v74 = 0;
  }

  else
  {
    v61 = *(v0 + 272);
    v60 = *(v0 + 280);
    if (v22 == 0x64657461657263 && v21 == 0xE700000000000000)
    {
      sub_10006A178(*(v0 + 272), *(v0 + 280));

      v62 = 1;
    }

    else
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10006A178(v61, v60);

      if (v63)
      {
        v62 = 1;
      }

      else
      {
        v62 = 2;
      }
    }

    v74 = v62;
  }

  v64 = *(v0 + 256);
  v65 = *(v0 + 224);
  v67 = *(v0 + 192);
  v66 = *(v0 + 200);
  v69 = *(v0 + 176);
  v68 = *(v0 + 184);
  v71 = *(v0 + 160);
  v70 = *(v0 + 168);
  v72 = *(v0 + 128);
  (*(v0 + 248))(*(v0 + 152), *(v0 + 136));
  (*(v68 + 8))(v67, v69);
  sub_1002F6D98(v65, type metadata accessor for SECNetworkConfiguration);

  v73 = *(v0 + 8);

  return v73(v74);
}

uint64_t sub_1002F443C()
{
  v32 = v0;
  *(v0 + 88) = *(v0 + 288);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 288);

    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10051B2C8);
    sub_10015CCB4(v2, v3, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_10015CCF0(v2, v3, v4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31 = v9;
      *v8 = 136315138;
      v10 = sub_100157174(v2, v3, v4);
      v12 = sub_1002FFA0C(v10, v11, &v31);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "getInstallationStatus: Data task wrapper error %s encountered while performing URL request", v8, 0xCu);
      sub_1000752F4(v9);
    }

    v13 = *(v0 + 224);
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = *(v0 + 176);
    sub_10009591C();
    swift_allocError();
    *v17 = 11;
    swift_willThrow();
    sub_10015CCF0(v2, v3, v4);
    (*(v15 + 8))(v14, v16);
    sub_1002F6D98(v13, type metadata accessor for SECNetworkConfiguration);
    v18 = *(v0 + 88);
  }

  else
  {
    v19 = *(v0 + 224);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    sub_1002F6D98(v19, type metadata accessor for SECNetworkConfiguration);
    v20 = *(v0 + 88);

    v21 = *(v0 + 288);
  }

  v22 = *(v0 + 224);
  v24 = *(v0 + 192);
  v23 = *(v0 + 200);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 152);
  v28 = *(v0 + 128);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1002F4758()
{
  sub_100075768(v0 + OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration, &qword_10050A110, &qword_100414C28);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SECNetworkController()
{
  result = qword_100509FE8;
  if (!qword_100509FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002F4820()
{
  sub_1002F48D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1002F48D4()
{
  if (!qword_100509FF8)
  {
    type metadata accessor for SECNetworkConfiguration();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100509FF8);
    }
  }
}

uint64_t sub_1002F492C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10012E598;

  return sub_1002EA8CC();
}

uint64_t sub_1002F49BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000C288C;

  return sub_1002EAD48(a1, a2, a3);
}

uint64_t sub_1002F4A70(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001BB698;

  return sub_1002F3390(a1);
}

uint64_t sub_1002F4B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10012E598;

  return sub_1002F12E0(a1, a2, a3);
}

uint64_t sub_1002F4BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_10050A110, &qword_100414C28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F4C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SECNetworkConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1002F4C90()
{
  v0 = [objc_opt_self() sharedHardwareManager];
  v1 = String._bridgeToObjectiveC()();
  v11 = 0;
  v2 = [v0 secureElementWithIdentifier:v1 error:&v11];

  if (v2)
  {
    v3 = v11;
  }

  else
  {
    v4 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10051B2C8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not get ese info", v8, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v9 = 9;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1002F4E88()
{
  v0 = sub_1001C7DE0(0x54746375646F7250, 0xEB00000000657079, 0xD000000000000016);
  v2 = v1;
  v3 = sub_1001C7DE0(0x4E746375646F7250, 0xEB00000000656D61, 0xD000000000000016);
  v5 = v4;
  v6 = sub_1001C7DE0(0x56746375646F7250, 0xEE006E6F69737265, 0xD000000000000019);
  v8 = v7;
  v9 = sub_1001C7DE0(0x726556646C697542, 0xEC0000006E6F6973, 0xD000000000000017);
  v11 = v10;
  v12._countAndFlagsBits = 59;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v6;
  v13._object = v8;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 59;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v9;
  v15._object = v11;
  String.append(_:)(v15);

  _StringGuts.grow(_:)(63);
  v16._countAndFlagsBits = 60;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v0;
  v17._object = v2;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 3940414;
  v18._object = 0xE300000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v3;
  v19._object = v5;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000037;
  v20._object = 0x800000010046BF40;
  String.append(_:)(v20);
  return 0;
}

unint64_t sub_1002F50B8()
{
  result = qword_10050A118;
  if (!qword_10050A118)
  {
    sub_1000692D8(&qword_100502600, &unk_100417140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050A118);
  }

  return result;
}

uint64_t sub_1002F5150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return _swift_task_switch(sub_1002F5174, 0, 0);
}

uint64_t sub_1002F5174()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[12] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_100069E2C(v1, v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1002F5288;

  return sub_1001FCDDC((v0 + 2), 0xD000000000000010, 0x800000010046C050, &unk_100414C68, v3);
}

uint64_t sub_1002F5288()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1002F6570;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1002F53A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002F53A4()
{
  v168 = v1;
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_15;
    }

    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 != 115)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      if (HIDWORD(v2) - v2 == 115)
      {
        goto LABEL_11;
      }

LABEL_15:
      if (qword_1005019D8 != -1)
      {
LABEL_132:
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000958E4(v14, qword_10051B2C8);
      sub_100069E2C(v2, v3);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      sub_10006A178(v2, v3);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v1[14];
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v167[0] = v19;
        *v18 = 136315138;
        v1[4] = sub_100288788(v2, v3);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v20 = BidirectionalCollection<>.joined(separator:)();
        v22 = v21;

        v23 = sub_1002FFA0C(v20, v22, v167);

        *(v18 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "performSEAuthenticatedGetData: Bad signature %s", v18, 0xCu);
        sub_1000752F4(v19);
      }

      sub_10009591C();
      swift_allocError();
      *v24 = 31;
      swift_willThrow();
      v25 = v2;
      goto LABEL_19;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_137:

    v137 = 0;
    v67 = 0;
    v66 = 0xF000000000000000;
    v65 = 0xF000000000000000;
    v68 = v156;
    v1 = v157;
    goto LABEL_138;
  }

  if (BYTE6(v3) != 115)
  {
    goto LABEL_15;
  }

LABEL_11:
  v9 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v9 TLVsWithData:isa];

  if (!v11)
  {
    goto LABEL_15;
  }

  v156 = v2;
  sub_1000754A4();
  v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v157 = v1;
  if (v0 >> 62)
  {
    goto LABEL_136;
  }

  v12 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_137;
  }

LABEL_14:
  v13 = 0;
  v1 = (v0 & 0xC000000000000001);
  v163 = 0;
  v165 = 0;
  v166 = 0xF000000000000000;
  v164 = 0xF000000000000000;
  v151 = v3;
  do
  {
    if (v1)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_134;
      }

      v29 = *(v0 + 8 * v13 + 32);
    }

    v30 = v29;
    v2 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_132;
    }

    v31 = [v29 tag];
    if (v31 > 57119)
    {
      if (v31 == 57137)
      {
        v52 = [v30 value];
        if (!v52)
        {
          goto LABEL_90;
        }

        v53 = v52;
        v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = v56 >> 62;
        if ((v56 >> 62) > 1)
        {
          if (v57 != 2)
          {

            sub_10006A178(v54, v56);
LABEL_91:
            v1 = v157;
            v2 = v166;
            if (qword_1005019D8 != -1)
            {
              swift_once();
            }

            v93 = type metadata accessor for Logger();
            sub_1000958E4(v93, qword_10051B2C8);
            v76 = v30;
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v77, v78))
            {
              goto LABEL_114;
            }

            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v167[0] = v80;
            *v79 = 136315138;
            v94 = [v76 value];
            if (v94)
            {
              v95 = v157[14];
              v96 = v94;
              v153 = v80;
              v97 = v76;
              v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v160 = v78;
              v100 = v99;

              v157[7] = sub_100288788(v98, v100);
              sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
              sub_10007A2D0();
              v101 = BidirectionalCollection<>.joined(separator:)();
              v103 = v102;
              v104 = v98;
              v76 = v97;
              v80 = v153;
              v105 = v100;
              v78 = v160;
              sub_10006A178(v104, v105);
            }

            else
            {
              v101 = 7104878;
              v103 = 0xE300000000000000;
            }

            v143 = sub_1002FFA0C(v101, v103, v167);

            *(v79 + 4) = v143;
            v140 = "performSEAuthenticatedGetData: Bad jsbl sequence counter %s in signature response";
            goto LABEL_127;
          }

          v60 = *(v54 + 16);
          v3 = *(v54 + 24);
          sub_10006A178(v54, v56);
          v61 = v3 - v60;
          if (__OFSUB__(v3, v60))
          {
            goto LABEL_151;
          }
        }

        else
        {
          if (!v57)
          {
            sub_10006A178(v54, v56);
            if (BYTE6(v56) != 16)
            {
              goto LABEL_90;
            }

            goto LABEL_26;
          }

          v3 = HIDWORD(v54);
          sub_10006A178(v54, v56);
          LODWORD(v61) = HIDWORD(v54) - v54;
          if (__OFSUB__(HIDWORD(v54), v54))
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            swift_once();
LABEL_87:
            v75 = type metadata accessor for Logger();
            sub_1000958E4(v75, qword_10051B2C8);
            v76 = v30;
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v77, v78))
            {
              goto LABEL_114;
            }

            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v167[0] = v80;
            *v79 = 136315138;
            v81 = [v76 value];
            if (v81)
            {
              v82 = v1[14];
              v83 = v81;
              v152 = v80;
              v84 = v76;
              v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v159 = v78;
              v87 = v86;

              v1[8] = sub_100288788(v85, v87);
              sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
              sub_10007A2D0();
              v88 = BidirectionalCollection<>.joined(separator:)();
              v90 = v89;
              v91 = v85;
              v76 = v84;
              v80 = v152;
              v92 = v87;
              v78 = v159;
              sub_10006A178(v91, v92);
            }

            else
            {
              v88 = 7104878;
              v90 = 0xE300000000000000;
            }

            v139 = sub_1002FFA0C(v88, v90, v167);

            *(v79 + 4) = v139;
            v140 = "performSEAuthenticatedGetData: Bad platform Id %s in singature response";
LABEL_127:
            _os_log_impl(&_mh_execute_header, v77, v78, v140, v79, 0xCu);
            sub_1000752F4(v80);

            v2 = v166;
            goto LABEL_128;
          }

          v61 = v61;
        }

        v3 = v151;
        if (v61 != 16)
        {
LABEL_90:

          goto LABEL_91;
        }
      }

      else
      {
        if (v31 != 57120)
        {
LABEL_98:

          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v106 = type metadata accessor for Logger();
          sub_1000958E4(v106, qword_10051B2C8);
          v107 = v30;
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.error.getter();
          v1 = v157;
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            *v110 = 67109120;
            *(v110 + 4) = [v107 tag];

            _os_log_impl(&_mh_execute_header, v108, v109, "performSEAuthenticatedGetData: Unexpected tag %u in signature response", v110, 8u);
          }

          else
          {
          }

          sub_10009591C();
          swift_allocError();
          *v138 = 31;
          swift_willThrow();
          sub_10006A2D0(v163, v166);
          sub_10006A2D0(v165, v164);
          sub_10006A178(v156, v3);

          goto LABEL_20;
        }

        v39 = [v30 value];
        if (!v39)
        {
LABEL_85:

          goto LABEL_86;
        }

        v40 = v39;
        v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = v43 >> 62;
        if ((v43 >> 62) > 1)
        {
          if (v44 != 2)
          {

            sub_10006A178(v41, v43);
LABEL_86:
            v1 = v157;
            v2 = v166;
            if (qword_1005019D8 != -1)
            {
              goto LABEL_152;
            }

            goto LABEL_87;
          }

          v3 = *(v41 + 16);
          v64 = *(v41 + 24);
          sub_10006A178(v41, v43);
          v28 = v64 - v3;
          if (__OFSUB__(v64, v3))
          {
            goto LABEL_150;
          }

          v3 = v151;
        }

        else if (v44)
        {
          sub_10006A178(v41, v43);
          LODWORD(v28) = HIDWORD(v41) - v41;
          if (__OFSUB__(HIDWORD(v41), v41))
          {
            goto LABEL_149;
          }

          v28 = v28;
        }

        else
        {
          sub_10006A178(v41, v43);
          v28 = BYTE6(v43);
        }

        if (v28 != 16)
        {
          goto LABEL_85;
        }
      }
    }

    else if (v31 == 133)
    {
      v45 = [v30 value];
      if (!v45)
      {

LABEL_103:
        v1 = v157;
        v2 = v166;
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v111 = type metadata accessor for Logger();
        sub_1000958E4(v111, qword_10051B2C8);
        v76 = v30;
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v77, v78))
        {
          goto LABEL_114;
        }

        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v167[0] = v80;
        *v79 = 136315138;
        v112 = [v76 value];
        if (v112)
        {
          v113 = v157[14];
          v114 = v112;
          v154 = v80;
          v115 = v76;
          v116 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v161 = v78;
          v118 = v117;

          v157[5] = sub_100288788(v116, v118);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v119 = BidirectionalCollection<>.joined(separator:)();
          v121 = v120;
          v122 = v116;
          v76 = v115;
          v80 = v154;
          v123 = v118;
          v78 = v161;
          sub_10006A178(v122, v123);
        }

        else
        {
          v119 = 7104878;
          v121 = 0xE300000000000000;
        }

        v141 = sub_1002FFA0C(v119, v121, v167);

        *(v79 + 4) = v141;
        v140 = "performSEAuthenticatedGetData: Bad challenge %s in signature response";
        goto LABEL_127;
      }

      v46 = v45;
      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = v49 >> 62;
      if ((v49 >> 62) > 1)
      {
        if (v50 != 2)
        {
          goto LABEL_97;
        }

        v59 = *(v47 + 16);
        v58 = *(v47 + 24);
        v7 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        if (v7)
        {
          goto LABEL_145;
        }
      }

      else if (v50)
      {
        LODWORD(v51) = HIDWORD(v47) - v47;
        if (__OFSUB__(HIDWORD(v47), v47))
        {
          goto LABEL_146;
        }

        v51 = v51;
      }

      else
      {
        v51 = BYTE6(v49);
      }

      if (v51 != 8)
      {
LABEL_97:

        sub_10006A178(v47, v49);
        goto LABEL_103;
      }

      sub_10006A2D0(v163, v166);
      v163 = v47;
      v166 = v49;
    }

    else
    {
      if (v31 != 24375)
      {
        goto LABEL_98;
      }

      v32 = [v30 value];
      if (!v32)
      {

LABEL_109:
        v1 = v157;
        v2 = v166;
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v124 = type metadata accessor for Logger();
        sub_1000958E4(v124, qword_10051B2C8);
        v76 = v30;
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v167[0] = v80;
          *v79 = 136315138;
          v125 = [v76 value];
          if (v125)
          {
            v126 = v157[14];
            v127 = v125;
            v155 = v80;
            v128 = v76;
            v129 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v162 = v78;
            v131 = v130;

            v157[6] = sub_100288788(v129, v131);
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_10007A2D0();
            v132 = BidirectionalCollection<>.joined(separator:)();
            v134 = v133;
            v135 = v129;
            v76 = v128;
            v80 = v155;
            v136 = v131;
            v78 = v162;
            sub_10006A178(v135, v136);
          }

          else
          {
            v132 = 7104878;
            v134 = 0xE300000000000000;
          }

          v142 = sub_1002FFA0C(v132, v134, v167);

          *(v79 + 4) = v142;
          v140 = "performSEAuthenticatedGetData: Bad signature %s in signature response";
          goto LABEL_127;
        }

LABEL_114:

LABEL_128:
        sub_10009591C();
        swift_allocError();
        *v144 = 31;
        swift_willThrow();
        sub_10006A2D0(v163, v2);
        sub_10006A2D0(v165, v164);
        sub_10006A178(v156, v3);

        goto LABEL_20;
      }

      v33 = v32;
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = v36 >> 62;
      if ((v36 >> 62) > 1)
      {
        if (v37 != 2)
        {
          goto LABEL_96;
        }

        v63 = *(v34 + 16);
        v62 = *(v34 + 24);
        v7 = __OFSUB__(v62, v63);
        v38 = v62 - v63;
        if (v7)
        {
          goto LABEL_148;
        }
      }

      else if (v37)
      {
        LODWORD(v38) = HIDWORD(v34) - v34;
        if (__OFSUB__(HIDWORD(v34), v34))
        {
          goto LABEL_147;
        }

        v38 = v38;
      }

      else
      {
        v38 = BYTE6(v36);
      }

      if (v38 != 64)
      {
LABEL_96:

        sub_10006A178(v34, v36);
        goto LABEL_109;
      }

      sub_10006A2D0(v165, v164);
      v164 = v36;
      v165 = v34;
    }

LABEL_26:

    ++v13;
  }

  while (v2 != v12);

  v65 = v164;
  if (v164 >> 60 == 15)
  {
    v68 = v156;
    v1 = v157;
    v67 = v165;
    v66 = v166;
    v137 = v163;
  }

  else
  {
    v67 = v165;
    v66 = v166;
    v68 = v156;
    v1 = v157;
    if (v166 >> 60 != 15)
    {
      v69 = v157[9];
      v158 = Data.subdata(in:)();
      v71 = v70;
      v72 = Data.subdata(in:)();
      v74 = v73;
      sub_10006A178(v156, v3);
      *v69 = v165;
      v69[1] = v164;
      v69[2] = v158;
      v69[3] = v71;
      v69[4] = v72;
      v69[5] = v74;
      v69[6] = v163;
      v69[7] = v166;
      v26 = v157[1];
      goto LABEL_21;
    }

    v137 = v163;
  }

LABEL_138:
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v145 = type metadata accessor for Logger();
  sub_1000958E4(v145, qword_10051B2C8);
  sub_10006A2BC(v67, v65);
  sub_10006A2BC(v137, v66);
  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = v66;
    v149 = swift_slowAlloc();
    *v149 = 67109376;
    *(v149 + 4) = v65 >> 60 != 15;
    sub_10006A2D0(v67, v65);
    *(v149 + 8) = 1024;
    *(v149 + 10) = v148 >> 60 != 15;
    sub_10006A2D0(v137, v148);
    _os_log_impl(&_mh_execute_header, v146, v147, "performSEAuthenticatedGetData: missing signature %{BOOL}d or challenge %{BOOL}d", v149, 0xEu);
    v66 = v148;
  }

  else
  {
    sub_10006A2D0(v137, v66);
    sub_10006A2D0(v67, v65);
  }

  sub_10009591C();
  swift_allocError();
  *v150 = 31;
  swift_willThrow();
  sub_10006A2D0(v137, v66);
  sub_10006A2D0(v67, v65);
  v25 = v68;
LABEL_19:
  sub_10006A178(v25, v3);
LABEL_20:
  v26 = v1[1];
LABEL_21:

  return v26();
}

uint64_t sub_1002F6570()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002F65D4(uint64_t a1)
{
  *(v1 + 224) = a1;
  v2 = swift_task_alloc();
  *(v1 + 232) = v2;
  *v2 = v1;
  v2[1] = sub_1002F66AC;

  return sub_1001BDDF0(v1 + 144);
}

uint64_t sub_1002F66AC()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  *(v3 + 240) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1002F6824, 0, 0);
  }
}

uint64_t sub_1002F6824()
{
  v39 = v0;
  v1 = *(v0 + 224);
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409900;
  *(inited + 32) = 1635017060;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_100268D04();
  v4 = sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000010046BFC0;
  sub_100068FC4(&unk_100504720, &qword_100414C40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100409900;
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  *(v5 + 32) = Data.base64EncodedString(options:)(0);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  *(v5 + 48) = Data.base64EncodedString(options:)(0);
  *(inited + 120) = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *(inited + 96) = v5;
  sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  v10 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 208) = 0;
  v12 = [v10 dataWithJSONObject:isa options:0 error:v0 + 208];

  v13 = *(v0 + 208);
  if (!v12)
  {
    v20 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_5;
  }

  v14 = *(v0 + 240);
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = sub_1001BD2A4();
  if (v14)
  {
    sub_10006A178(v15, v17);
LABEL_5:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000958E4(v21, qword_10051B2C8);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v27 = *(v0 + 184);
      v26 = *(v0 + 192);
      v28 = *(v0 + 200);
      v29 = Error.localizedDescription.getter();
      v31 = sub_1002FFA0C(v29, v30, &v38);

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error %s when signing report", v24, 0xCu);
      sub_1000752F4(v25);
    }

    sub_10009591C();
    swift_allocError();
    *v32 = 14;
    swift_willThrow();

    sub_1002F6D44(v0 + 144);
    v33 = *(v0 + 8);

    return v33();
  }

  v35 = v19;
  v36 = v18;
  sub_1002F6D44(v0 + 144);
  v37 = *(v0 + 8);

  return v37(v36, v35, v15, v17);
}

uint64_t sub_1002F6CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SECPresentmentReport(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F6D98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002F6DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002F6E40()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002F6E78(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000C288C;

  return sub_1002F304C(a1, a2, v7, v6);
}

uint64_t sub_1002F6F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_10050A110, &qword_100414C28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F6F9C()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B708 = result;
    unk_10051B710 = v1;
  }

  return result;
}

uint64_t sub_1002F6FEC()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B718 = result;
    unk_10051B720 = v1;
  }

  return result;
}

uint64_t sub_1002F703C()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B728 = result;
    unk_10051B730 = v1;
  }

  return result;
}

uint64_t sub_1002F708C()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B738 = result;
    unk_10051B740 = v1;
  }

  return result;
}

uint64_t sub_1002F70DC()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B748 = result;
    unk_10051B750 = v1;
  }

  return result;
}

uint64_t sub_1002F712C()
{
  result = Data.init(base64Encoded:options:)();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B758 = result;
    unk_10051B760 = v1;
  }

  return result;
}

uint64_t sub_1002F717C()
{
  v1 = OBJC_IVAR____TtC10seserviced35SECPresentmentIntentCooldownContext_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SECPresentmentIntentCooldownContext()
{
  result = qword_10050A158;
  if (!qword_10050A158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002F7274()
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

uint64_t sub_1002F732C()
{
  if (qword_100501CD0 != -1)
  {
    result = swift_once();
  }

  v1 = off_10050A240;
  v2 = *(off_10050A240 + 25);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(off_10050A240 + 25) = v4;
  if (*(v0 + 224) == 1)
  {
    v5 = v1[14];
    v3 = __CFADD__(v5, 1);
    v6 = v5 + 1;
    if (!v3)
    {
      v1[14] = v6;
      return result;
    }

    goto LABEL_10;
  }

  v7 = v1[5];
  v3 = __CFADD__(v7, 1);
  v8 = v7 + 1;
  if (!v3)
  {
    v1[5] = v8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1002F73C8(uint64_t result)
{
  if (result)
  {
    *(v1 + 164) = 1;
    if (qword_100501CD0 != -1)
    {
      result = swift_once();
    }

    v2 = *(off_10050A240 + 11);
    v3 = __CFADD__(v2, 1);
    v4 = v2 + 1;
    if (!v3)
    {
      *(off_10050A240 + 11) = v4;
      return result;
    }

    __break(1u);
LABEL_14:
    result = swift_once();
LABEL_10:
    v6 = *(off_10050A240 + 17);
    v3 = __CFADD__(v6, 1);
    v7 = v6 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(off_10050A240 + 17) = v7;
    }

    return result;
  }

  v5 = *(v1 + 164);
  if (!v5)
  {
    *(v1 + 164) = 2;
    if (qword_100501CD0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v5 == 1)
  {
    *(v1 + 164) = 3;
  }

  return result;
}

uint64_t sub_1002F74B0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 136))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + 128);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  v11 = v9 - v7;
  if (COERCE__INT64(fabs(v9 - v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v11 <= -1.0)
  {
    goto LABEL_20;
  }

  if (v11 >= 4294967300.0)
  {
    goto LABEL_21;
  }

  v12 = v11;
  *(v1 + 124) = v11;
  if (qword_100501CD0 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v13 = *(off_10050A240 + 16);
    v14 = __CFADD__(v13, v12);
    v15 = v13 + v12;
    if (v14)
    {
      break;
    }

    *(off_10050A240 + 16) = v15;
    *(v1 + 128) = 0;
    *(v1 + 136) = 1;
LABEL_8:
    v16 = *(v1 + 164);
    if (v16 == 3)
    {
      v17 = 6;
    }

    else
    {
      v17 = 5;
    }

    if (v16 == 1)
    {
      v18 = 4;
    }

    else
    {
      v18 = v17;
    }

    *(v1 + 164) = v18;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v20 = v19;
    v21 = *(v3 + 8);
    v3 += 8;
    result = v21(v6, v2);
    *(v1 + 144) = v20;
    *(v1 + 152) = 0;
    if (qword_100501CD0 != -1)
    {
      result = swift_once();
    }

    v22 = *(off_10050A240 + 18);
    v14 = __CFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      *(off_10050A240 + 18) = v23;
      return result;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = swift_once();
    v12 = *(v1 + 124);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F76D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  sub_100288788(a1, a2);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  v14 = v7[23];
  v7[22] = v11;
  v7[23] = v13;

  sub_100288788(a3, a4);
  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;

  v18 = v7[25];
  v7[24] = v15;
  v7[25] = v17;

  sub_100288788(a5, a6);
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  v22 = v7[27];
  v7[26] = v19;
  v7[27] = v21;
}

uint64_t sub_1002F784C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1002F78F8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_100069E2C(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_10006A178(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1002F79A8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer();
    sub_1002FAFA8(&qword_100503F20, type metadata accessor for Peer);
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

        v5 = v21;
        if (v19)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for Peer();
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

      sub_100093854();
      return 1;
    }

    else
    {
LABEL_20:
      sub_100093854();
      return 0;
    }
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

void sub_1002F7C24(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    sub_10023EFC4();
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v26 = v17;
        v18 = a1(&v26);

        if (v4)
        {
          break;
        }

        v5 = v20;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
      }

      while (v26);
    }

LABEL_20:
    sub_100093854();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002F7E70(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1002F7FAC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_1002F80D4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
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
  if (v12)
  {
    if (qword_100501CD8 == -1)
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
  v14 = qword_10050A248;
  [qword_10050A248 setPreregistered:1];
  if (qword_100501D88 != -1)
  {
    swift_once();
  }

  (*(v3 + 16))(v6, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Registering CA Aliro Daily Transaction Statistics", v17, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  aBlock[4] = sub_1002FB000;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10022ECB0;
  aBlock[3] = &unk_1004CFFD0;
  v19 = _Block_copy(aBlock);

  [v14 scheduleWithBlock:v19];
  _Block_release(v19);
}

uint64_t sub_1002F846C()
{
  v2 = v0;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 164);
  if (v9 == 4 || v9 == 1)
  {
    if (qword_100501CD0 != -1)
    {
      swift_once();
    }

    v11 = *(off_10050A240 + 20);
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
      goto LABEL_29;
    }

    *(off_10050A240 + 20) = v13;
    goto LABEL_13;
  }

  if (qword_100501CD0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v14 = *(off_10050A240 + 21);
    v12 = __CFADD__(v14, 1);
    v15 = v14 + 1;
    if (v12)
    {
      __break(1u);
      return result;
    }

    *(off_10050A240 + 21) = v15;
LABEL_13:
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v1 = v16;
    v17 = *(v4 + 8);
    v4 += 8;
    result = v17(v8, v3);
    if ((*(v2 + 152) & 1) == 0)
    {
      v18 = (v1 - *(v2 + 144)) * 1000.0;
      if (COERCE__INT64(fabs(v18)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_29:
        __break(1u);
      }

      else if (v18 > -1.0)
      {
        if (v18 < 4294967300.0)
        {
          *(v2 + 156) = v18;
          *(v2 + 144) = 0;
          *(v2 + 152) = 1;
          if (qword_100501CD0 != -1)
          {
            goto LABEL_34;
          }

          goto LABEL_18;
        }

        goto LABEL_32;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    while (1)
    {
      if (*(v2 + 136))
      {
        return result;
      }

      v21 = v1 - *(v2 + 128);
      if (COERCE__INT64(fabs(v21)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_31;
      }

      if (v21 > -1.0)
      {
        break;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      result = swift_once();
LABEL_18:
      v19 = *(off_10050A240 + 22);
      v12 = __CFADD__(v19, 1);
      v20 = v19 + 1;
      if (v12)
      {
        __break(1u);
        goto LABEL_36;
      }

      *(off_10050A240 + 22) = v20;
    }

    if (v21 < 4294967300.0)
    {
      v22 = v21;
      *(v2 + 124) = v21;
      if (qword_100501CD0 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    result = swift_once();
    v22 = *(v2 + 124);
LABEL_25:
    v23 = *(off_10050A240 + 16);
    v12 = __CFADD__(v23, v22);
    v24 = v23 + v22;
    if (!v12)
    {
      break;
    }

    __break(1u);
LABEL_39:
    result = swift_once();
  }

  *(off_10050A240 + 16) = v24;
  *(v2 + 128) = 0;
  *(v2 + 136) = 1;
  return result;
}

uint64_t sub_1002F8758(unsigned __int8 a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = v4;
  v11 = a1;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 < 0xA && ((0x37Fu >> a1) & 1) != 0)
  {
    v17 = dword_100414E9C[a1];
  }

  else if (*(v6 + 168))
  {
    v17 = 9;
  }

  else
  {
    v17 = 8;
  }

  Date.init()();
  Date.timeIntervalSince1970.getter();
  v19 = v18;
  result = (*(v13 + 8))(v16, v12);
  v21 = (a2 == 5) << 17;
  if (a2 == 4)
  {
    v21 = 0x10000;
  }

  v22 = *(v6 + 224);
  v23 = (v21 + v22);
  if (__CFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = v19 - *(v6 + 16);
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 >= 4294967300.0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (*(v6 + 136))
  {
    goto LABEL_20;
  }

  v24 = v19 - *(v6 + 128);
  if (COERCE__INT64(fabs(v24)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v24 <= -1.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v24 >= 4294967300.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v25 = v24;
  *(v6 + 124) = v24;
  if (qword_100501CD0 != -1)
  {
LABEL_30:
    result = swift_once();
    v25 = *(v6 + 124);
  }

  v26 = *(off_10050A240 + 16);
  v27 = __CFADD__(v26, v25);
  v28 = v26 + v25;
  if (v27)
  {
    __break(1u);
    return result;
  }

  *(off_10050A240 + 16) = v28;
LABEL_20:
  sub_1002F8D2C();
  sub_1002FAE08(v6, v19);
  v29 = *(v6 + 84);
  if (*(v6 + 88))
  {
    v29 = 0;
  }

  v68 = v29;
  v66 = objc_opt_self();
  v30 = *(v6 + 168);
  v67 = *(v6 + 164);
  sub_1000C0AC8(2u, v30);
  v65 = v31;
  sub_1000C0AC8(2u, *(v6 + 172));
  v64 = v32;
  sub_1000C0AC8(2u, *(v6 + 76));
  v63 = v33;
  sub_1000C0AC8(2u, *(v6 + 100));
  v62 = v34;
  sub_1000C0AC8(2u, *(v6 + 160));
  v61 = v35;
  sub_1000C0AC8(2u, *(v6 + 68));
  v60 = v36;
  sub_1000C0AC8(2u, *(v6 + 72));
  v58 = v37;
  sub_1000C0AC8(2u, *(v6 + 64));
  v59 = a4;
  v39 = v38;
  sub_1000C0AC8(2u, *(v6 + 156));
  v57 = a3;
  v41 = v40;
  sub_1000C0AC8(2u, *(v6 + 24));
  v43 = v42;
  sub_1000C0AC8(2u, v5);
  v44 = v23;
  v46 = v45;
  v48 = *(v6 + 192);
  v47 = *(v6 + 200);

  v49 = String._bridgeToObjectiveC()();

  v50 = *(v6 + 176);
  v51 = *(v6 + 184);

  v52 = String._bridgeToObjectiveC()();

  v54 = *(v6 + 208);
  v53 = *(v6 + 216);

  v55 = String._bridgeToObjectiveC()();

  sub_10004F0B8(v66, v17, v67, v44, v68, v57, v59, v65, v64, v63, v62, v61, v60, v58, v39, v41, v43, v46, v49, v52, v55);

  return sub_1002FA668();
}

uint64_t sub_1002F8B80()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 92) == 1)
  {
    if (qword_100501CD0 != -1)
    {
      swift_once();
    }

    v8 = *(off_10050A240 + 13);
    v9 = __CFADD__(v8, 1);
    v10 = v8 + 1;
    if (!v9)
    {
      *(off_10050A240 + 13) = v10;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v1 + 76);
  v9 = __CFADD__(v11, 1);
  v12 = v11 + 1;
  if (v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v1 + 76) = v12;
  if (qword_100501CD0 != -1)
  {
LABEL_15:
    result = swift_once();
  }

  v13 = *(off_10050A240 + 8);
  v9 = __CFADD__(v13, 1);
  v14 = v13 + 1;
  if (v9)
  {
    __break(1u);
    return result;
  }

  *(off_10050A240 + 8) = v14;
LABEL_10:
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  result = (*(v3 + 8))(v7, v2);
  *(v1 + 112) = v16;
  *(v1 + 120) = 0;
  if (*(v1 + 56) == 1)
  {
    *(v1 + 48) = v16;
    *(v1 + 56) = 0;
  }

  return result;
}

uint64_t sub_1002F8D2C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 120) & 1) == 0)
  {
    v8 = *(v1 + 112);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v10 = v9;
    result = (*(v3 + 8))(v7, v2);
    v11 = v10 - v8;
    if (COERCE__INT64(fabs(v10 - v8)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v11 > -1.0)
    {
      if (v11 < 4294967300.0)
      {
        LODWORD(v7) = v11;
        v12 = *(v1 + 24);
        v13 = __CFADD__(v12, v11);
        v14 = v12 + v11;
        if (!v13)
        {
          *(v1 + 24) = v14;
          if (qword_100501CD0 == -1)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        result = swift_once();
LABEL_7:
        v15 = *(off_10050A240 + 15);
        v13 = __CFADD__(v15, v7);
        v16 = v15 + v7;
        if (v13)
        {
          __break(1u);
        }

        else
        {
          *(off_10050A240 + 15) = v16;
          *(v1 + 112) = 0;
          *(v1 + 120) = 1;
        }

        return result;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

BOOL sub_1002F8EBC(_BOOL8 result, uint64_t a2)
{
  v2[23] = 0;
  v3 = v2[25];
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v2[25] = v5;
    if (result)
    {
      if (sub_1002A11C0(1u, a2))
      {
        v7 = 4;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7 & 0xFFFFFFFE | sub_1002A11C0(0, a2);
      result = sub_1002A11C0(2u, a2);
      v9 = v8 | 2;
      if (!result)
      {
        v9 = v8;
      }
    }

    else
    {
      v9 = 0;
    }

    v2[26] = v9;
  }

  return result;
}

uint64_t sub_1002F8F48(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10012E5A4(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002F903C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10012EA44(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002F9130(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_10012FAA8(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for SEStorageCredential();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

double sub_1002F925C()
{
  type metadata accessor for LyonDailyStatistics();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  *(v0 + 104) = _swiftEmptyArrayStorage;
  off_10050A240 = v0;
  return result;
}

void sub_1002F92A8()
{
  v0 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithIdentifier:v1];

  qword_10050A248 = v2;
}

uint64_t sub_1002F9318(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  *(v2 + 16) = v10;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 60) = 0;
  *(v2 + 76) = 0;
  *(v2 + 68) = 0;
  *(v2 + 84) = 0;
  *(v2 + 88) = 1;
  *(v2 + 112) = 0;
  *(v2 + 100) = 0;
  *(v2 + 92) = 0;
  *(v2 + 120) = 1;
  *(v2 + 124) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 1;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 164) = 0;
  *(v2 + 156) = 0;
  *(v2 + 180) = 0;
  *(v2 + 172) = 0;
  *(v2 + 184) = 0xE000000000000000;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0xE000000000000000;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0xE000000000000000;
  *(v2 + 224) = a1;
  return v2;
}

uint64_t sub_1002F9474(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v40 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  __chkstk_darwin(v20);
  v22 = &v36 - v21;
  if (qword_100501B78 != -1)
  {
    swift_once();
  }

  if (byte_10051B5B8 != 1)
  {
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v13 + 16))(v16, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v12);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Invalidating CA Aliro Daily Transaction Statistics", v32, 2u);
    }

    (*(v13 + 8))(v16, v12);
    if (qword_100501CD8 != -1)
    {
      swift_once();
    }

    [qword_10050A248 invalidate];
    return v40(1);
  }

  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  if (*(qword_10051B188 + 16) != 1)
  {
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v13 + 16))(v19, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v12);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Skipping Aliro Daily Transaction Statistics since Lyon is not running", v35, 2u);
    }

    (*(v13 + 8))(v19, v12);
    return v40(1);
  }

  if (qword_100501D88 != -1)
  {
    swift_once();
  }

  (*(v13 + 16))(v22, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v12);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v36 = a2;
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Running CA Aliro Daily Transaction Statistics", v25, 2u);
    a2 = v36;
  }

  (*(v13 + 8))(v22, v12);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v26 = swift_allocObject();
  v27 = v40;
  v26[2] = v37;
  v26[3] = v27;
  v26[4] = a2;
  aBlock[4] = sub_1002FB058;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004D0020;
  v28 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1002FAFA8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  (*(v39 + 8))(v7, v4);
  (*(v38 + 8))(v11, v8);
}

uint64_t sub_1002F9BFC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v74 = a3;
  v75 = a2;
  v72 = type metadata accessor for Date();
  v3 = *(v72 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v72);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D88 != -1)
  {
LABEL_53:
    swift_once();
  }

  (*(v7 + 16))(v10, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Posting CA Aliro Daily Transaction Statistics", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v14 = sub_1000CAAC4();
  v15 = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer();
    sub_1002FAFA8(&qword_100503F20, type metadata accessor for Peer);
    Set.Iterator.init(_cocoa:)();
    v15 = v80;
    v16 = v81;
    v17 = v82;
    v7 = v83;
    v18 = v84;
  }

  else
  {
    v7 = 0;
    v19 = -1 << *(v14 + 32);
    v16 = v14 + 56;
    v17 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v14 + 56);
  }

  v73 = v17;
  v22 = (v17 + 64) >> 6;
  v23 = _swiftEmptyArrayStorage;
  v10 = _TtC10seserviced8LyonPeer;
  v70 = (v3 + 8);
  while (1)
  {
    v6 = v18;
    if ((v15 & 0x8000000000000000) == 0)
    {
      v24 = v7;
      v25 = v18;
      if (!v18)
      {
        while (1)
        {
          v7 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v7 >= v22)
          {
            goto LABEL_46;
          }

          v25 = *(v16 + 8 * v7);
          ++v24;
          if (v25)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_53;
      }

LABEL_18:
      v18 = (v25 - 1) & v25;
      v3 = *(*(v15 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v25)))));

      if (!v3)
      {
        break;
      }

      goto LABEL_22;
    }

    v26 = __CocoaSet.Iterator.next()();
    if (!v26)
    {
      break;
    }

    v78 = v26;
    type metadata accessor for Peer();
    swift_dynamicCast();
    v3 = v77[0];
    v10 = _TtC10seserviced8LyonPeer;
    if (!v77[0])
    {
      break;
    }

LABEL_22:
    if (*v3 == _TtC10seserviced8LyonPeer)
    {
      v27 = v71;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v29 = v28;
      (*v70)(v27, v72);
      v30 = OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData;
      v31 = *(v3 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);

      sub_1002FAE08(v32, v29);
      v33 = *(v3 + v30);
      *(v33 + 32) = v29;
      *(v33 + 40) = 0;
      if ((*(v33 + 56) & 1) == 0)
      {
        *(v33 + 48) = v29;
        *(v33 + 56) = 0;
      }

      v67 = v31;
      *(v33 + 60) = *(v31 + 24);
      v35 = *(v3 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier);
      v34 = *(v3 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8);
      v37 = *(v3 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier);
      v36 = *(v3 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier + 8);
      v78 = v35;
      v79 = v34;
      v77[3] = &type metadata for Data;
      v77[4] = &protocol witness table for Data;
      v68 = v37;
      v77[0] = v37;
      v77[1] = v36;
      v69 = v36;
      v38 = sub_1000752B0(v77, &type metadata for Data);
      v39 = *v38;
      v40 = v38[1];
      v41 = v40 >> 62;
      if ((v40 >> 62) > 1)
      {
        if (v41 != 2)
        {
          memset(v76, 0, 14);
          sub_100069E2C(v35, v34);
          sub_100069E2C(v68, v69);
          goto LABEL_41;
        }

        v43 = *(v39 + 16);
        v42 = *(v39 + 24);
        v66 = v43;
        v65 = v42;
        sub_100069E2C(v35, v34);
        sub_100069E2C(v68, v69);
        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v45 = v44;
          v46 = __DataStorage._offset.getter();
          v47 = v66;
          if (__OFSUB__(v66, v46))
          {
            goto LABEL_56;
          }

          v69 = v66 - v46 + v45;
        }

        else
        {
          v69 = 0;
          v47 = v66;
        }

        if (__OFSUB__(v65, v47))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (!v41)
        {
          v76[0] = *v38;
          LOWORD(v76[1]) = v40;
          BYTE2(v76[1]) = BYTE2(v40);
          BYTE3(v76[1]) = BYTE3(v40);
          BYTE4(v76[1]) = BYTE4(v40);
          BYTE5(v76[1]) = BYTE5(v40);
          sub_100069E2C(v35, v34);
          sub_100069E2C(v68, v69);
          goto LABEL_41;
        }

        v48 = v39;
        v49 = v39 >> 32;
        v65 = v48;
        v66 = v49 - v48;
        if (v49 < v48)
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
        }

        sub_100069E2C(v35, v34);
        sub_100069E2C(v68, v69);
        if (__DataStorage._bytes.getter() && __OFSUB__(v65, __DataStorage._offset.getter()))
        {
          goto LABEL_57;
        }
      }

      __DataStorage._length.getter();
LABEL_41:
      Data._Representation.append(contentsOf:)();
      sub_1000752F4(v77);
      v51 = v78;
      v50 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_10012E5A4(0, *(v23 + 2) + 1, 1, v23);
      }

      v54 = *(v23 + 2);
      v53 = *(v23 + 3);
      if (v54 >= v53 >> 1)
      {
        v23 = sub_10012E5A4((v53 > 1), v54 + 1, 1, v23);
      }

      *(v23 + 2) = v54 + 1;
      v55 = &v23[16 * v54];
      v56 = v69;
      *(v55 + 4) = v51;
      *(v55 + 5) = v56;
      v10 = _TtC10seserviced8LyonPeer;
    }

    else
    {
    }
  }

LABEL_46:
  sub_100093854();
  sub_1002FA668();
  v57 = objc_opt_self();
  sub_10004E708();
  v58 = *(v23 + 2);
  if (v58)
  {
    v59 = (v23 + 40);
    do
    {
      v60 = *(v59 - 1);
      v61 = *v59;
      sub_100069E2C(v60, *v59);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10004E500(v57, isa);

      sub_10006A178(v60, v61);
      v59 += 2;
      --v58;
    }

    while (v58);
  }

  if (qword_100501CD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_1002F8F48(v23);
  swift_endAccess();

  return v75(1);
}

uint64_t sub_1002FA564()
{
  v1 = v0[23];

  v2 = v0[25];

  v3 = v0[27];

  return swift_deallocClassInstance();
}

uint64_t sub_1002FA5D0()
{
  v1 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_1002FA668()
{
  v0 = objc_opt_self();
  sub_100068FC4(&qword_10050A518, &qword_100414E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100414CB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  if (qword_100501CD0 != -1)
  {
    swift_once();
  }

  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 4)];
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v3;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 5)];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 6)];
  *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 112) = v5;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 7)];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v6;
  *(inited + 144) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 8)];
  *(inited + 152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 160) = v7;
  *(inited + 168) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 9)];
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v8;
  *(inited + 192) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 10)];
  *(inited + 200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 208) = v9;
  *(inited + 216) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 11)];
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v10;
  *(inited + 240) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 12)];
  *(inited + 248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 256) = v11;
  *(inited + 264) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 13)];
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v12;
  *(inited + 288) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 14)];
  *(inited + 296) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 304) = v13;
  *(inited + 312) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 15)];
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v14;
  *(inited + 336) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 16)];
  *(inited + 344) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 352) = v15;
  *(inited + 360) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 17)];
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v16;
  *(inited + 384) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 18)];
  *(inited + 392) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 400) = v17;
  *(inited + 408) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 19)];
  *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 424) = v18;
  *(inited + 432) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 20)];
  *(inited + 440) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 448) = v19;
  *(inited + 456) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 21)];
  *(inited + 464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 472) = v20;
  *(inited + 480) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 22)];
  *(inited + 488) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 496) = v21;
  *(inited + 504) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 23)];
  *(inited + 512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 520) = v22;
  *(inited + 528) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 24)];
  *(inited + 536) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 544) = v23;
  *(inited + 552) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(off_10050A240 + 25)];
  sub_1000914A0(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_10050A520, &qword_100414E90);
  swift_arrayDestroy();
  sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10004E158(v0, isa);

  type metadata accessor for LyonDailyStatistics();
  v25 = swift_allocObject();
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 96) = 0;
  *(v25 + 104) = _swiftEmptyArrayStorage;
  off_10050A240 = v25;
}

void sub_1002FAC14(uint64_t a1, unint64_t a2)
{
  if (qword_100501CD0 != -1)
  {
    swift_once();
  }

  v5 = off_10050A240;
  v6 = *(off_10050A240 + 6);
  v7 = __CFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
LABEL_11:
    v2 = sub_10012E5A4(0, *(v2 + 2) + 1, 1, v2);
    v5[13] = v2;
    goto LABEL_6;
  }

  *(off_10050A240 + 6) = v8;
  v9 = swift_beginAccess();
  v10 = v5[13];
  v19[0] = a1;
  v19[1] = a2;
  __chkstk_darwin(v9);
  v18[2] = v19;

  v11 = sub_1002F78F8(sub_1002FAF6C, v18, v10);

  if (v11)
  {
    return;
  }

  v5 = off_10050A240;
  swift_beginAccess();
  v2 = v5[13];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[13] = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_10012E5A4((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  v15 = &v2[16 * v14];
  *(v15 + 4) = a1;
  *(v15 + 5) = a2;
  v5[13] = v2;
  swift_endAccess();
  sub_100069E2C(a1, a2);

  v16 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10004E500(v16, isa);
}

uint64_t sub_1002FAE08(uint64_t result, double a2)
{
  v2 = 32;
  if (*(result + 40))
  {
    v2 = 16;
  }

  v3 = *(result + v2);
  if (qword_100501CD0 != -1)
  {
    v15 = result;
    v16 = a2;
    swift_once();
    result = v15;
    a2 = v16;
  }

  v4 = a2 - v3;
  if (COERCE__INT64(fabs(a2 - v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v4 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v4 >= 4294967300.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = off_10050A240;
  v6 = *(off_10050A240 + 7);
  if (__CFADD__(v6, v4))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(off_10050A240 + 7) = v6 + v4;
  if ((*(result + 56) & 1) == 0)
  {
    v7 = *(result + 24);
    v8 = *(result + 60);
    v9 = v7 >= v8;
    v10 = v7 - v8;
    if (!v9)
    {
      goto LABEL_24;
    }

    v11 = a2 - *(result + 48);
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v11 <= -1.0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v11 >= 4294967300.0)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v9 = v11 >= v10;
    v12 = v11 - v10;
    if (!v9)
    {
      goto LABEL_28;
    }

    v13 = v5[23];
    v9 = __CFADD__(v13, v12);
    v14 = v13 + v12;
    if (v9)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v5[23] = v14;
  }

  return result;
}

uint64_t sub_1002FAFA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002FB008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002FB020()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1002FB088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v3;
  v10[4] = sub_1002FC794;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1002FBB94;
  v10[3] = &unk_1004D0070;
  v9 = _Block_copy(v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

void sub_1002FB184()
{
  v1 = v0;
  if (*(v0 + 128))
  {
    if (qword_100501CE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10050A528);

    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *&v21[0] = swift_slowAlloc();
      *v4 = 136315394;
      *(v4 + 4) = sub_1002FFA0C(0xD000000000000017, 0x800000010046E510, v21);
      *(v4 + 12) = 2080;
      if (v1[16])
      {
        v5 = 0x8000000100460880;
        v6 = 0xD00000000000002DLL;
        if (*(v1 + 112) != 1)
        {
          v6 = 0xD000000000000020;
          v5 = 0x80000001004608B0;
        }

        if (*(v1 + 112))
        {
          v7 = v6;
        }

        else
        {
          v7 = 0xD00000000000002FLL;
        }

        if (*(v1 + 112))
        {
          v8 = v5;
        }

        else
        {
          v8 = 0x8000000100460850;
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E55;
      }

      v18 = sub_1002FFA0C(v7, v8, v21);

      *(v4 + 14) = v18;
      _os_log_impl(&_mh_execute_header, oslog, v3, "%s task %s is already scheduled", v4, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for SESScheduledActivityManager();
    swift_retain_n();
    sub_100131F30(2, 1, 0, sub_1002FBC20, v0, sub_1002FBC24, v0, v20, v21, 86400.0);
    v9 = v22;
    v10 = v23;

    v11 = v1[14];
    v12 = v1[15];
    v13 = v1[16];
    v14 = v1[17];
    v15 = v1[18];
    v16 = v1[19];
    v17 = v21[1];
    *(v1 + 7) = v21[0];
    *(v1 + 8) = v17;
    v1[18] = v9;
    v1[19] = v10;
    sub_100274F1C(v11, v12, v13);
  }
}

double sub_1002FB58C()
{
  type metadata accessor for SESAnalyticsLogger();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = 0.0;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 160) = 0x40F5180000000000;
  qword_10051B768 = v0;
  return result;
}

uint64_t sub_1002FB5E0()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_10050A528);
  sub_1000958E4(v0, qword_10050A528);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002FB65C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[19];
  sub_100274F1C(v0[14], v0[15], v0[16]);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002FB6C0()
{
  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000B6A94(v0, qword_10050A540);
  sub_1000958E4(v0, qword_10050A540);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1002FB778()
{
  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000B6A94(v0, qword_10050A558);
  sub_1000958E4(v0, qword_10050A558);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1002FB830()
{
  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000B6A94(v0, qword_10050A570);
  sub_1000958E4(v0, qword_10050A570);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1002FB8E8()
{
  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000B6A94(v0, qword_10050A588);
  sub_1000958E4(v0, qword_10050A588);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1002FB9A4()
{
  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000B6A94(v0, qword_10050A5A0);
  sub_1000958E4(v0, qword_10050A5A0);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1002FBA60()
{
  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000B6A94(v0, qword_10050A5B8);
  sub_1000958E4(v0, qword_10050A5B8);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1002FBB14()
{
  v1 = v0[2];
  v5 = *v0;
  v6 = v0[1];

  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  sub_1002FC7DC();
  v3._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v3);

  return v5;
}

Class sub_1002FBB94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1002FC7DC();
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_1002FBC28()
{
  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  if (qword_100501CF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000958E4(v0, qword_10050A540);
  v6 = v1[2];
  v6(v4, v5, v0);
  UserDefaultBacked.wrappedValue.getter();
  v7 = v1[1];
  v7(v4, v0);
  v16 = v17;
  if (qword_100501CF8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000958E4(v0, qword_10050A558);
  v6(v4, v8, v0);
  UserDefaultBacked.wrappedValue.getter();
  v7(v4, v0);
  v15 = v17;
  if (qword_100501D00 != -1)
  {
    swift_once();
  }

  v9 = sub_1000958E4(v0, qword_10050A570);
  swift_beginAccess();
  v6(v4, v9, v0);
  UserDefaultBacked.wrappedValue.getter();
  v7(v4, v0);
  if (qword_100501D08 != -1)
  {
    swift_once();
  }

  v10 = sub_1000958E4(v0, qword_10050A588);
  swift_beginAccess();
  v6(v4, v10, v0);
  UserDefaultBacked.wrappedValue.getter();
  v7(v4, v0);
  if (qword_100501D10 != -1)
  {
    swift_once();
  }

  v11 = sub_1000958E4(v0, qword_10050A5A0);
  swift_beginAccess();
  v6(v4, v11, v0);
  UserDefaultBacked.wrappedValue.getter();
  v7(v4, v0);
  if (qword_100501D18 != -1)
  {
    swift_once();
  }

  v12 = sub_1000958E4(v0, qword_10050A5B8);
  swift_beginAccess();
  v6(v4, v12, v0);
  UserDefaultBacked.wrappedValue.getter();
  v7(v4, v0);
  return v15;
}

uint64_t sub_1002FC0E0()
{
  if (qword_100501D00 != -1)
  {
    swift_once();
  }

  v0 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000958E4(v0, qword_10050A570);
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  if (qword_100501D08 != -1)
  {
    swift_once();
  }

  sub_1000958E4(v0, qword_10050A588);
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  if (qword_100501D10 != -1)
  {
    swift_once();
  }

  sub_1000958E4(v0, qword_10050A5A0);
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  if (qword_100501D18 != -1)
  {
    swift_once();
  }

  sub_1000958E4(v0, qword_10050A5B8);
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  return swift_endAccess();
}

id sub_1002FC2C8(void *a1)
{
  if (qword_100501CE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10050A528);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000020, 0x800000010046E560, &v22);
    *(v6 + 12) = 2080;
    v7 = [v3 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_1002FFA0C(v8, v10, &v22);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s task %s launched", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12 = sub_1002FBC28();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = objc_opt_self();
  v20 = [objc_opt_self() getWeeksTryingToDownload];
  sub_10004DE34(v19, v12, v14, v20, v16, BYTE1(v16), BYTE2(v16), v18);
  sub_1002FC0E0();

  return [v3 setTaskCompleted];
}

id sub_1002FC504(void *a1)
{
  if (qword_100501CE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10050A528);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000024, 0x800000010046E530, v14);
    *(v6 + 12) = 2080;
    v7 = [v3 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_1002FFA0C(v8, v10, v14);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s task %s expired", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100501D00 != -1)
  {
    swift_once();
  }

  v12 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000958E4(v12, qword_10050A570);
  v14[3] = 0;
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  return [v3 setTaskCompleted];
}

uint64_t sub_1002FC754()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002FC794()
{
  sub_1002FC828(v0[2], v0[3], v0[4]);
}

uint64_t sub_1002FC7C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1002FC7DC()
{
  result = qword_100502D20;
  if (!qword_100502D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100502D20);
  }

  return result;
}

uint64_t sub_1002FC828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100501CE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10050A528);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    sub_1002FC9B4();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_1002FFA0C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Posting %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  return a3;
}

unint64_t sub_1002FC9B4()
{
  result = qword_10050A6B0;
  if (!qword_10050A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050A6B0);
  }

  return result;
}

uint64_t sub_1002FCA08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1002FCA50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002FCAA0(int a1)
{
  v3 = v1;
  LODWORD(v106) = a1;
  v107 = type metadata accessor for Logger();
  v4 = *(v107 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v107);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v16 = &v89 - v15;
  v17 = *(v3 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stepUpSK + 8);
  if (v17 >> 60 == 15 || (v18 = *(v3 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_endpointId + 8), v18 >> 60 == 15))
  {
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    v19 = v107;
    (*(v4 + 16))(v8, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v107);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "StepUpSK not initialized, cannot setup event", v22, 2u);
    }

    (*(v4 + 8))(v8, v19);
    sub_100079E24();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  else
  {
    v97 = v14;
    v98 = v13;
    v99 = v12;
    v100 = v2;
    v105 = v4;
    v25 = *(v3 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stepUpSK);
    v26 = *(v3 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_endpointId);
    v27 = *(v3 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stsHelper);
    sub_10006A2BC(v25, v17);
    sub_10006A2BC(v26, v18);
    v28 = [v27 startISO18013WithConnectionHandoverConfiguration:32 type:2 credentialType:3 delegate:v3];
    v103 = v25;
    v104 = v17;
    v101 = v26;
    v102 = v18;
    if (v28)
    {
      v29 = v28;
      if (qword_100501D88 != -1)
      {
        swift_once();
      }

      v30 = v105;
      v31 = v107;
      (*(v105 + 16))(v16, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v107);
      v32 = v29;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v109 = v106;
        *v35 = 136315138;
        swift_getErrorValue();
        v36 = Error.localizedDescription.getter();
        v38 = v32;
        v39 = sub_1002FFA0C(v36, v37, &v109);

        *(v35 + 4) = v39;
        v32 = v38;
        _os_log_impl(&_mh_execute_header, v33, v34, "Could not startISO18013: %s", v35, 0xCu);
        sub_1000752F4(v106);

        (*(v30 + 8))(v16, v107);
      }

      else
      {

        (*(v30 + 8))(v16, v31);
      }

      v72 = v101;
      sub_100079E24();
      swift_allocError();
      *v73 = 0;
      swift_willThrow();

      v74 = v72;
    }

    else
    {
      v93 = v27;
      sub_100068FC4(&unk_100503F50, &unk_10040D950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004099F0;
      v109 = 0xD000000000000010;
      v110 = 0x8000000100465F50;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = 0xD000000000000012;
      *(inited + 80) = 0x8000000100461630;
      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = v41;
      AnyHashable.init<A>(_:)();
      *(inited + 168) = &type metadata for Data;
      *(inited + 144) = v26;
      *(inited + 152) = v18;
      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = v42;
      sub_100069E2C(v26, v18);
      AnyHashable.init<A>(_:)();
      *(inited + 240) = &type metadata for Data;
      *(inited + 216) = v25;
      *(inited + 224) = v17;
      v109 = 0x6C6F636F746F7270;
      v110 = 0xEF6E6F6973726556;
      sub_100069E2C(v25, v17);
      AnyHashable.init<A>(_:)();
      *(inited + 312) = &type metadata for UInt16;
      *(inited + 288) = v106;
      v43 = sub_100090BC4(inited);
      swift_setDeallocating();
      sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
      swift_arrayDestroy();
      if (qword_100501D88 != -1)
      {
        swift_once();
      }

      v44 = v105;
      v45 = *(v105 + 16);
      v94 = OBJC_IVAR____TtC10seserviced3DSK_logger;
      v95 = v45;
      v106 = qword_10051B7E8;
      v46 = v97;
      v47 = v107;
      v96 = v105 + 16;
      v45(v97, (qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger), v107);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();

      v50 = os_log_type_enabled(v48, v49);
      v92 = v43;
      if (v50)
      {
        v51 = swift_slowAlloc();
        v91 = v49;
        v52 = v51;
        v90 = swift_slowAlloc();
        v109 = v90;
        *v52 = 136642819;
        v53 = Dictionary.description.getter();
        v55 = sub_1002FFA0C(v53, v54, &v109);

        *(v52 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v48, v91, "Sending event dictionary %{sensitive}s to stepup", v52, 0xCu);
        sub_1000752F4(v90);
      }

      v97 = *(v44 + 8);
      v97(v46, v47);
      v56 = v103;
      v57 = v100;
      v58 = v98;
      v95(v98, v106 + v94, v47);
      v59 = v47;
      v60 = v104;
      sub_100069E2C(v56, v104);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();
      sub_10006A2D0(v56, v60);
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v109 = v64;
        *v63 = 136642819;
        v65 = sub_100288788(v56, v60);
        v100 = v57;
        v108 = v65;
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v66 = v62;
        v67 = BidirectionalCollection<>.joined(separator:)();
        v69 = v68;

        v70 = sub_1002FFA0C(v67, v69, &v109);

        *(v63 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v61, v66, "Has stepupSK %{sensitive}s", v63, 0xCu);
        sub_1000752F4(v64);

        v71 = v107;
        v97(v58, v107);
      }

      else
      {

        v97(v58, v59);
        v71 = v59;
      }

      v75 = v99;
      v76 = v93;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v78 = [v76 signalUnifiedAccessStepUpWithEventDictionary:isa];

      if (!v78)
      {
        sub_10006A2D0(v101, v102);
        return sub_10006A2D0(v103, v104);
      }

      v95(v75, v106 + v94, v71);
      v79 = v78;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v109 = v83;
        *v82 = 136315138;
        swift_getErrorValue();
        v84 = Error.localizedDescription.getter();
        v86 = sub_1002FFA0C(v84, v85, &v109);

        *(v82 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v80, v81, "Could not create lyonStepUp object with error: %s", v82, 0xCu);
        sub_1000752F4(v83);

        v87 = v99;
      }

      else
      {

        v87 = v75;
      }

      v97(v87, v71);
      sub_100079E24();
      swift_allocError();
      *v88 = 0;
      swift_willThrow();

      v74 = v101;
    }

    sub_10006A2D0(v74, v102);
    return sub_10006A2D0(v103, v104);
  }
}
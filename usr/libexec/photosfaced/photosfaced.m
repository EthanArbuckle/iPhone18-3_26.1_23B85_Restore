int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for Daemon();
  swift_allocObject();
  qword_10012BB28 = sub_1000F0F88();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [objc_opt_self() mainRunLoop];
  [v3 run];

  return 0;
}

uint64_t sub_10000200C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002084(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002104@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002148()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100002184()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000021D8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000224C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1000022D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10000231C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002348(uint64_t a1)
{
  v2 = sub_100002528(&qword_100129DB0);
  v3 = sub_100002528(&qword_100129DB8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002404(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002424(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_100002474(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AXMFeatureDescriptionOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000025A0@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000C748(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000025CC(char a1)
{
  result = 0x69727453646E6573;
  switch(a1)
  {
    case 1:
      result = 0x65746172656E6567;
      break;
    case 2:
      result = 0x626C416B63617274;
      break;
    case 3:
      result = 0x416B636172746E75;
      break;
    case 4:
      result = 0x75626C41636E7973;
      break;
    case 5:
      result = 0x6C61476B63617274;
      break;
    case 6:
      result = 0x476B636172746E75;
      break;
    case 7:
      result = 0x6C6C6147636E7973;
      break;
    case 8:
      result = 0x7568536B63617274;
      break;
    case 9:
      result = 0x536B636172746E75;
      break;
    case 10:
      result = 0x66756853636E7973;
      break;
    case 11:
      result = 0x6961446B63617274;
      break;
    case 12:
      result = 0x446B636172746E75;
      break;
    case 13:
      result = 0x6C696144636E7973;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100002800()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100002878()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000028BC@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000C758(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000028F4()
{
  v1 = 0x6E79536D75626C61;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6E7953796C696164;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100002980(char a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 217) = a4;
  *(v5 + 64) = a2;
  *(v5 + 216) = a1;
  v6 = sub_10000560C(&qword_100129F80, &qword_100108DB0);
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v9 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v10 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v11 = type metadata accessor for MessageBody();
  *(v5 + 128) = v11;
  v12 = *(v11 - 8);
  *(v5 + 136) = v12;
  *(v5 + 144) = *(v12 + 64);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v13 = sub_10000560C(&qword_100129F88, &qword_100108DB8);
  *(v5 + 168) = v13;
  v14 = *(v13 - 8);
  *(v5 + 176) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100002BA0, 0, 0);
}

uint64_t sub_100002BA0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  static TestProperties.requestTimeout.getter();
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0);
  v5 = sub_10000560C(&qword_100129E78, &unk_100108BE0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = AsyncThrowingChannel.init()();
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;

  static ProtocolVersion.current.getter();
  MessageBody.init<A>(serializable:version:)();
  v31 = *(v0 + 192);
  v32 = *(v0 + 176);
  v33 = *(v0 + 168);
  v34 = *(v0 + 184);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v30 = v10;
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = *(v0 + 112);
  v28 = v14;
  v15 = *(v0 + 80);
  v29 = *(v0 + 217);
  v27 = *(v0 + 216);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = v13;
  (*(v12 + 16))(v9, v10, v13);
  v18 = (*(v12 + 80) + 49) & ~*(v12 + 80);
  v19 = v18 + v11;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v15;
  *(v20 + 40) = v8;
  *(v20 + 48) = v27;
  (*(v12 + 32))(v20 + v18, v9, v17);
  *(v20 + v19) = v29;

  sub_100005654(0, 0, v28, &unk_100108DC8, v20);

  sub_10000560C(&qword_100129E90, &qword_100108C00);
  *(v0 + 48) = v8;

  *(v0 + 56) = DestructableSequence.__allocating_init(_:_:)();
  sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00);
  AsyncThrowingMapSequence.init(_:transform:)();

  (*(v12 + 8))(v30, v17);
  (*(v32 + 16))(v34, v31, v33);
  sub_10000CC24(&qword_100129F90, &qword_100129F88, &qword_100108DB8);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v21 = sub_10000CC24(&qword_100129F98, &qword_100129F80, &qword_100108DB0);
  v22 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v23 = swift_task_alloc();
  *(v0 + 200) = v23;
  *v23 = v0;
  v23[1] = sub_1000030A4;
  v24 = *(v0 + 104);
  v25 = *(v0 + 88);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 32, v25, v21);
}

uint64_t sub_1000030A4()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1000032CC;
  }

  else
  {
    v3 = sub_1000031B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1000031B8()
{
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[23];
    v2 = v0[24];
    v4 = v0[21];
    v5 = v0[22];
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[14];
    v10 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v5 + 8))(v2, v4);

    v9 = v0[1];

    v9(v10, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000032CC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000033BC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 225) = a4;
  *(v5 + 224) = a2;
  *(v5 + 48) = a1;
  v6 = sub_10000560C(&qword_100129F40, &qword_100108D40);
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v9 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v10 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v5 + 112) = v11;
  v12 = *(v11 - 8);
  *(v5 + 120) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v14 = type metadata accessor for MessageBody();
  *(v5 + 136) = v14;
  v15 = *(v14 - 8);
  *(v5 + 144) = v15;
  *(v5 + 152) = *(v15 + 64);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v16 = sub_10000560C(&qword_100129F48, &qword_100108D48);
  *(v5 + 176) = v16;
  v17 = *(v16 - 8);
  *(v5 + 184) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100003638, 0, 0);
}

uint64_t sub_100003638()
{
  v36 = *(v0 + 168);
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 56);
  static TestProperties.requestTimeout.getter();
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0);
  v6 = sub_10000560C(&qword_100129E78, &unk_100108BE0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = AsyncThrowingChannel.init()();
  (*(v2 + 16))(v1, v5, v3);
  static ProtocolVersion.current.getter();
  MessageBody.init<A>(serializable:version:)();
  v32 = *(v0 + 200);
  v33 = *(v0 + 184);
  v34 = *(v0 + 176);
  v35 = *(v0 + 192);
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v31 = v11;
  v13 = *(v0 + 144);
  v12 = *(v0 + 152);
  v14 = *(v0 + 136);
  v15 = *(v0 + 96);
  v29 = v15;
  v16 = *(v0 + 64);
  v30 = *(v0 + 225);
  v28 = *(v0 + 224);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = v14;
  (*(v13 + 16))(v10, v11, v14);
  v19 = (*(v13 + 80) + 49) & ~*(v13 + 80);
  v20 = v19 + v12;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v16;
  *(v21 + 40) = v9;
  *(v21 + 48) = v28;
  (*(v13 + 32))(v21 + v19, v10, v18);
  *(v21 + v20) = v30;

  sub_100005654(0, 0, v29, &unk_100108D58, v21);

  sub_10000560C(&qword_100129E90, &qword_100108C00);
  *(v0 + 32) = v9;

  *(v0 + 40) = DestructableSequence.__allocating_init(_:_:)();
  sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00);
  AsyncThrowingMapSequence.init(_:transform:)();

  (*(v13 + 8))(v31, v18);
  (*(v33 + 16))(v35, v32, v34);
  sub_10000CC24(&qword_100129F50, &qword_100129F48, &qword_100108D48);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v22 = sub_10000CC24(&qword_100129F58, &qword_100129F40, &qword_100108D40);
  v23 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v24 = swift_task_alloc();
  *(v0 + 208) = v24;
  *v24 = v0;
  v24[1] = sub_100003B58;
  v25 = *(v0 + 88);
  v26 = *(v0 + 72);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v26, v22);
}

uint64_t sub_100003B58()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_100003D94;
  }

  else
  {
    v3 = sub_100003C6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100003C6C()
{
  if (*(v0 + 24) >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = *(v0 + 128);
    v12 = *(v0 + 104);
    v13 = *(v0 + 96);
    v9 = *(v0 + 48);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v5 + 8))(v3, v4);
    *v9 = *(v0 + 16);

    v10 = *(v0 + 8);

    return v10();
  }

  return result;
}

uint64_t sub_100003D94()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100003E90(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v3 = *a2;
  v4 = a2[1];
  v2[3] = type metadata accessor for CommunicationActor();
  v2[4] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_100003F4C;

  return sub_1000F3198(v3, v4);
}

uint64_t sub_100003F4C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *v3;
  v7[6] = v2;

  v10 = v7[4];
  v11 = v7[3];
  if (v4)
  {
    sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    v15 = sub_10000CCA4;
  }

  else
  {
    v7[7] = a2;
    v7[8] = a1;
    sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v16;
    v15 = sub_100004140;
  }

  return _swift_task_switch(v15, v12, v14);
}

uint64_t sub_100004140()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[2];

  *v4 = v2;
  v4[1] = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1000041B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 64) = a2;
  v5 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  *(v4 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 40) = v6;
  v7 = *(v6 - 8);
  *(v4 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000042B4, 0, 0);
}

uint64_t sub_1000042B4()
{
  v23 = v0;
  v1 = *(v0 + 56);
  static Log.session.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  if (v4)
  {
    v8 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    v11 = PhotosFaceType.description.getter();
    v13 = sub_100102F80(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Remote device indicated that it has data ready to sync for type %s", v9, 0xCu);
    sub_10000C304(v10);
  }

  (*(v6 + 8))(v5, v7);
  v14 = *(v0 + 56);
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  v17 = *(v0 + 16);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = v16;

  sub_1000FBF3C(0, 0, v15, &unk_100108D10, v19);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000044D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000045BC;

  return v8();
}

uint64_t sub_1000045BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000046B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v35 = &v29 - v6;
  v7 = type metadata accessor for ProtocolVersion();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for MessageBody();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  v11 = __chkstk_darwin(v9);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v31 = *(v2 + 16);
  static TestProperties.requestTimeout.getter();
  type metadata accessor for PowerAssertion();
  swift_allocObject();
  v15 = sub_100104068(0xD00000000000001CLL, 0x8000000100106EA0, 0xD000000000000024, 0x8000000100106EC0);
  v16 = sub_10000560C(&qword_100129E78, &unk_100108BE0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = AsyncThrowingChannel.init()();
  v37 = a1;

  static ProtocolVersion.current.getter();
  sub_10000560C(&qword_100129E80, &unk_1001091F0);
  sub_10000A914();
  v20 = v36;
  MessageBody.init<A>(serializable:version:)();
  if (v20)
  {
  }

  else
  {
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
    v23 = v32;
    v24 = *(v32 + 16);
    v29 = 0;
    v30 = v14;
    v25 = v33;
    v24(v12, v14);
    v26 = (*(v23 + 80) + 49) & ~*(v23 + 80);
    v36 = v15;
    v27 = v26 + v10;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = v31;
    *(v28 + 40) = v19;
    *(v28 + 48) = 1;
    (*(v23 + 32))(v28 + v26, v12, v25);
    *(v28 + v27) = 1;

    sub_100005654(0, 0, v35, &unk_100108BF8, v28);

    sub_10000560C(&qword_100129E90, &qword_100108C00);
    v37 = v19;

    v37 = DestructableSequence.__allocating_init(_:_:)();
    type metadata accessor for StoredPhoto();
    sub_10000CC24(&qword_100129E98, &qword_100129E90, &qword_100108C00);
    AsyncThrowingMapSequence.init(_:transform:)();

    return (*(v23 + 8))(v30, v25);
  }
}

uint64_t sub_100004B38(char a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  *(v3 + 88) = a1;
  type metadata accessor for CommunicationActor();
  *(v3 + 48) = static CommunicationActor.shared.getter();
  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return _swift_task_switch(sub_100004C04, v5, v4);
}

uint64_t sub_100004C04()
{
  v1 = *(*(v0 + 40) + 16);
  v2 = 0xC060903u >> (8 * *(v0 + 88));
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_100004CD8;
  v4 = *(v0 + 32);

  return sub_1000033BC(v0 + 16, v2, v4, 1);
}

uint64_t sub_100004CD8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_100004E58;
  }

  else
  {
    sub_10000C868(v2[2], v2[3]);
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_100004DF4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100004DF4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100004E58()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_100004EBC(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v3[3] = type metadata accessor for CommunicationActor();
  v3[4] = static CommunicationActor.shared.getter();
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100004FDC;

  return v9(a2);
}

uint64_t sub_100004FDC()
{
  v2 = v0;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 48) = v2;

  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_1000051DC;
  }

  else
  {
    v8 = sub_100005168;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100005168()
{
  v1 = v0[4];
  v2 = v0[2];

  *v2 = xmmword_1001089B0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000051DC()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_100005240()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for NetworkEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkRequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkRequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100005560()
{
  result = qword_100129E60;
  if (!qword_100129E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100129E60);
  }

  return result;
}

unint64_t sub_1000055B8()
{
  result = qword_100129E68;
  if (!qword_100129E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100129E68);
  }

  return result;
}

uint64_t sub_10000560C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000C04C(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000C460(v11, &qword_100129E70, &unk_100109CD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000C460(a3, &qword_100129E70, &unk_100109CD0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000C460(a3, &qword_100129E70, &unk_100109CD0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100005944(uint64_t a1, int a2, uint64_t a3, int a4)
{
  LODWORD(v54) = a4;
  v52 = a1;
  v53 = a3;
  v49 = a2;
  v5 = type metadata accessor for Logger();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessageBody();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Message.Operation();
  v12 = *(v46 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v46);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Message();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v24 = sub_10000560C(&qword_100129EA8, &qword_100108C28);
  v51 = *(v24 - 8);
  v25 = *(v51 + 64);
  __chkstk_darwin(v24);
  v27 = &v46 - v26;
  v57 = v4;
  v28 = *(v4 + 64);

  dispatch thunk of MessageDemultiplexer.sendRequest(_:)();

  v52 = v24;
  v50 = v27;
  v29 = v49;
  v30 = InFlightRequest.requestID.getter();
  *v15 = v29;
  v15[1] = v30;
  (*(v12 + 104))(v15, enum case for Message.Operation.request(_:), v46);
  (*(v47 + 16))(v11, v53, v48);
  Message.init(operation:content:complete:)();
  static Log.network.getter();
  v31 = v17[2];
  v53 = v23;
  v54 = v16;
  v31(v21, v23, v16);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v59 = v48;
    *v34 = 136315394;
    v35 = sub_1000025CC(v29);
    v37 = sub_100102F80(v35, v36, &v59);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = Message.shortDescription.getter();
    v40 = v39;
    v41 = v17[1];
    v42 = v54;
    v41(v21, v54);
    v43 = sub_100102F80(v38, v40, &v59);

    *(v34 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v32, v33, "[NMC] Sending request %s: %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = v17[1];
    v42 = v54;
    v41(v21, v54);
  }

  (*(v55 + 8))(v58, v56);
  v44 = v53;
  sub_1000062EC(v53);
  v41(v44, v42);
  return (*(v51 + 8))(v50, v52);
}

uint64_t sub_100005E88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000CC88, 0, 0);
}

uint64_t sub_100005EA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100005EC8, 0, 0);
}

uint64_t sub_100005EC8()
{
  v1 = v0[2];
  v2 = v0[3];
  MessageBody.deserialized<A>()();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100005F54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100005F74, 0, 0);
}

uint64_t sub_100005F74()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_10000560C(&qword_100129F30, &qword_100108D20);
  sub_10000CC24(&qword_100129F38, &qword_100129F30, &qword_100108D20);
  MessageBody.deserialized<A>()();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000604C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000606C, 0, 0);
}

uint64_t sub_10000606C()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_10000560C(&qword_100129F60, &qword_100108D78);
  sub_10000CC24(&qword_100129F68, &qword_100129F60, &qword_100108D78);
  MessageBody.deserialized<A>()();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100006144(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100006164, 0, 0);
}

uint64_t sub_100006164()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_10000560C(&qword_100129F70, &qword_100108D90);
  sub_10000CC24(&qword_100129F78, &qword_100129F70, &qword_100108D90);
  MessageBody.deserialized<A>()();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000623C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000625C, 0, 0);
}

uint64_t sub_10000625C()
{
  v1 = v0[2];
  v2 = v0[3];
  type metadata accessor for StoredPhoto();
  MessageBody.deserialized<A>()();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000062EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v54 = &v51 - v6;
  v7 = sub_10000560C(&qword_100129EB0, &qword_100108C30);
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  __chkstk_darwin(v7);
  v61 = &v51 - v9;
  v10 = sub_10000560C(&qword_100129EB8, &qword_100108C38);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  __chkstk_darwin(v10);
  v58 = &v51 - v12;
  v13 = type metadata accessor for Message();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v55 = *(v18 - 8);
  v56 = v18;
  v19 = *(v55 + 64);
  __chkstk_darwin(v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  v63 = v14;
  v22 = v13;
  v57 = *(v14 + 16);
  v57(v17, a1, v13);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v52 = a1;
    v26 = v25;
    v27 = swift_slowAlloc();
    v53 = v1;
    v51 = v27;
    v64[0] = v27;
    *v26 = 136315138;
    sub_10000C578(&qword_100129EE8, &type metadata accessor for Message);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v7;
    v31 = v30;
    (*(v63 + 8))(v17, v22);
    v32 = sub_100102F80(v28, v31, v64);
    v7 = v29;

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "[MSQ] Queueing %s", v26, 0xCu);
    sub_10000C304(v51);
    v2 = v53;

    a1 = v52;
  }

  else
  {

    (*(v63 + 8))(v17, v22);
  }

  (*(v55 + 8))(v21, v56);
  sub_10000560C(&qword_100129EC0, &qword_100108C40);
  v33 = *(v63 + 72);
  v34 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1001089C0;
  v57((v35 + v34), a1, v22);
  v64[5] = v35;
  sub_10000560C(&qword_100129EC8, &qword_100108C48);
  sub_10000CC24(&qword_100129ED0, &qword_100129EC8, &qword_100108C48);
  v36 = v58;
  Sequence.async.getter();

  sub_10000CC24(&qword_100129ED8, &qword_100129EB8, &qword_100108C38);
  v37 = v60;
  v38 = v61;
  AsyncSequence<>.throwing.getter();
  (*(v59 + 8))(v36, v37);
  v64[3] = v7;
  v64[4] = sub_10000CC24(&qword_100129EE0, &qword_100129EB0, &qword_100108C30);
  v39 = sub_10000C1AC(v64);
  v40 = v62;
  (*(v62 + 16))(v39, v38, v7);
  swift_beginAccess();
  result = *(v2 + 56);
  v42 = *(result + 24);
  v43 = v42 + 1;
  if (__OFADD__(v42, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v2 + 56);
    if (*(v45 + 16) < v43 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000ABC8(isUniquelyReferenced_nonNull_native, v43, 0);
      v45 = *(v2 + 56);
    }

    sub_10000B028((v45 + 16), v45 + 40, v64);
    swift_endAccess();
    sub_10000C304(v64);
    if ((*(v2 + 48) & 1) == 0)
    {
      v46 = type metadata accessor for TaskPriority();
      v47 = v54;
      (*(*(v46 - 8) + 56))(v54, 1, 1, v46);
      type metadata accessor for CommunicationActor();

      v48 = static CommunicationActor.shared.getter();
      v49 = sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor);
      v50 = swift_allocObject();
      v50[2] = v48;
      v50[3] = v49;
      v50[4] = v2;
      sub_100005654(0, 0, v47, &unk_100108C58, v50);
    }

    return (*(v40 + 8))(v38, v7);
  }

  return result;
}

uint64_t sub_100006A44()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100006AF0;

  return sub_100006ED4();
}

uint64_t sub_100006AF0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000CCA8, v5, v4);
}

uint64_t sub_100006C5C()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100006D08;

  return sub_100006ED4();
}

uint64_t sub_100006D08()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100006E74, v5, v4);
}

uint64_t sub_100006E74()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100006ED4()
{
  v1[26] = v0;
  v2 = type metadata accessor for Message();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  v5 = *(*(sub_10000560C(&qword_100129EF0, &qword_100108C68) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[31] = v6;
  v7 = *(v6 - 8);
  v1[32] = v7;
  v8 = *(v7 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = type metadata accessor for CommunicationActor();
  v1[39] = static CommunicationActor.shared.getter();
  v1[40] = sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[41] = v10;
  v1[42] = v9;

  return _swift_task_switch(sub_1000070C4, v10, v9);
}

uint64_t sub_1000070C4()
{
  v74 = v0;
  v1 = *(v0 + 208);
  if (*(v1 + 48) != 1)
  {
    *(v1 + 48) = 1;
    v3 = *(v0 + 208);
    swift_beginAccess();
    if (*(*(v3 + 56) + 24) > 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = *(v0 + 208) + 56;
        sub_10000B9E8();
      }

      v5 = *(*(v0 + 208) + 56);
      v6 = sub_10000C350(&v5[5 * v5[4] + 5], v0 + 56);
      v12 = v5[4];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        __break(1u);
      }

      else
      {
        v15 = v5[3];
        if (v14 >= v5[2])
        {
          v14 = 0;
        }

        v5[4] = v14;
        if (!__OFSUB__(v15, 1))
        {
          v5[3] = v15 - 1;
LABEL_12:
          swift_endAccess();
          if (!*(v0 + 80))
          {
            v33 = *(v0 + 312);

            if (*(v0 + 80))
            {
              sub_10000C304((v0 + 56));
            }

            v34 = *(v0 + 288);
            static Log.network.getter();
            v35 = Logger.logObject.getter();
            v36 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              *v37 = 0;
              _os_log_impl(&_mh_execute_header, v35, v36, "[MSQ] No Pending Messages, exiting.", v37, 2u);
            }

            v38 = *(v0 + 288);
            v40 = *(v0 + 256);
            v39 = *(v0 + 264);
            v41 = *(v0 + 248);

            v42 = *(v40 + 8);
            v42(v38, v41);
            static Log.network.getter();
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 0;
              _os_log_impl(&_mh_execute_header, v43, v44, "[MSQ] Task done.", v45, 2u);
            }

            v47 = *(v0 + 256);
            v46 = *(v0 + 264);
            v48 = *(v0 + 248);
            v49 = *(v0 + 208);

            v42(v46, v48);
            *(v49 + 48) = 0;
            goto LABEL_22;
          }

          v16 = *(v0 + 296);
          sub_10000C350((v0 + 56), v0 + 16);
          static Log.network.getter();
          sub_10000C368(v0 + 16, v0 + 96);
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();
          v19 = os_log_type_enabled(v17, v18);
          v20 = *(v0 + 296);
          v21 = *(v0 + 248);
          v22 = (*(v0 + 256) + 8);
          if (v19)
          {
            v72 = *(v0 + 248);
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v73 = v24;
            *v23 = 136315138;
            v25 = *(v0 + 120);
            sub_10000C3CC((v0 + 96), v25);
            v71 = v20;
            v26 = *(v25 - 8);
            v27 = *(v26 + 64) + 15;
            swift_task_alloc();
            (*(v26 + 16))();
            v28 = String.init<A>(describing:)();
            v30 = v29;

            sub_10000C304((v0 + 96));
            v31 = sub_100102F80(v28, v30, &v73);

            *(v23 + 4) = v31;
            _os_log_impl(&_mh_execute_header, v17, v18, "[MSQ] Dequeue %s", v23, 0xCu);
            sub_10000C304(v24);

            v32 = *v22;
            (*v22)(v71, v72);
          }

          else
          {

            v32 = *v22;
            (*v22)(v20, v21);
            sub_10000C304((v0 + 96));
          }

          *(v0 + 344) = v32;
          v59 = *(v0 + 40);
          v60 = sub_10000C3CC((v0 + 16), v59);
          v61 = *(v59 - 8);
          v62 = *(v61 + 64) + 15;
          v63 = swift_task_alloc();
          (*(v61 + 16))(v63, v60, v59);
          *(v0 + 160) = swift_getAssociatedTypeWitness();
          *(v0 + 168) = swift_getAssociatedConformanceWitness();
          sub_10000C1AC((v0 + 136));
          dispatch thunk of AsyncSequence.makeAsyncIterator()();

          v64 = *(v0 + 320);
          v65 = *(v0 + 304);
          v66 = static CommunicationActor.shared.getter();
          *(v0 + 352) = v66;
          v67 = *(v0 + 160);
          v68 = *(v0 + 168);
          sub_10000C410(v0 + 136, v67);
          v69 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
          v70 = swift_task_alloc();
          *(v0 + 360) = v70;
          *v70 = v0;
          v70[1] = sub_100007730;
          v6 = *(v0 + 240);
          v9 = v0 + 200;
          v7 = v66;
          v8 = v64;
          v10 = v67;
          v11 = v68;

          return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, v7, v8, v9, v10, v11);
        }
      }

      __break(1u);
      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, v7, v8, v9, v10, v11);
    }

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_12;
  }

  v2 = *(v0 + 312);

LABEL_22:
  v51 = *(v0 + 288);
  v50 = *(v0 + 296);
  v53 = *(v0 + 272);
  v52 = *(v0 + 280);
  v54 = *(v0 + 264);
  v56 = *(v0 + 232);
  v55 = *(v0 + 240);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_100007730()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v9 = *v1;

  v4 = v2[44];

  v5 = v2[41];
  v6 = v2[42];
  if (v0)
  {
    v7 = sub_100007FCC;
  }

  else
  {
    v7 = sub_100007850;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100007850()
{
  v82 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v17 = *(v0 + 320);
    v18 = *(v0 + 304);
    v19 = *(v0 + 232);
    v20 = *(v0 + 208);
    (*(v3 + 32))(v19, v1, v2);
    v21 = static CommunicationActor.shared.getter();
    *(v0 + 368) = v21;
    v22 = swift_task_alloc();
    *(v0 + 376) = v22;
    *(v22 + 16) = v19;
    *(v22 + 24) = v20;
    v23 = swift_task_alloc();
    *(v0 + 384) = v23;
    *v23 = v0;
    v23[1] = sub_10000876C;

    return sub_100009A8C(v21, v17, &unk_100108C80, v22);
  }

  sub_10000C304((v0 + 136));
  sub_10000C304((v0 + 16));
  v4 = *(v0 + 208);
  swift_beginAccess();
  if (*(*(v4 + 56) + 24) <= 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = *(v0 + 208) + 56;
    sub_10000B9E8();
  }

  v6 = *(*(v0 + 208) + 56);
  v7 = sub_10000C350(&v6[5 * v6[4] + 5], v0 + 56);
  v13 = v6[4];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, v8, v9, v10, v11, v12);
  }

  v16 = v6[3];
  if (v15 >= v6[2])
  {
    v15 = 0;
  }

  v6[4] = v15;
  if (__OFSUB__(v16, 1))
  {
    goto LABEL_31;
  }

  v6[3] = v16 - 1;
LABEL_14:
  swift_endAccess();
  if (*(v0 + 80))
  {
    v25 = *(v0 + 296);
    sub_10000C350((v0 + 56), v0 + 16);
    static Log.network.getter();
    sub_10000C368(v0 + 16, v0 + 96);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 296);
    v30 = *(v0 + 248);
    v31 = (*(v0 + 256) + 8);
    if (v28)
    {
      v80 = *(v0 + 248);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v81 = v33;
      *v32 = 136315138;
      v34 = *(v0 + 120);
      sub_10000C3CC((v0 + 96), v34);
      v79 = v29;
      v35 = *(v34 - 8);
      v36 = *(v35 + 64) + 15;
      swift_task_alloc();
      (*(v35 + 16))();
      v37 = String.init<A>(describing:)();
      v39 = v38;

      sub_10000C304((v0 + 96));
      v40 = sub_100102F80(v37, v39, &v81);

      *(v32 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v26, v27, "[MSQ] Dequeue %s", v32, 0xCu);
      sub_10000C304(v33);

      v41 = *v31;
      (*v31)(v79, v80);
    }

    else
    {

      v41 = *v31;
      (*v31)(v29, v30);
      sub_10000C304((v0 + 96));
    }

    *(v0 + 344) = v41;
    v67 = *(v0 + 40);
    v68 = sub_10000C3CC((v0 + 16), v67);
    v69 = *(v67 - 8);
    v70 = *(v69 + 64) + 15;
    v71 = swift_task_alloc();
    (*(v69 + 16))(v71, v68, v67);
    *(v0 + 160) = swift_getAssociatedTypeWitness();
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    sub_10000C1AC((v0 + 136));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v72 = *(v0 + 320);
    v73 = *(v0 + 304);
    v74 = static CommunicationActor.shared.getter();
    *(v0 + 352) = v74;
    v75 = *(v0 + 160);
    v76 = *(v0 + 168);
    sub_10000C410(v0 + 136, v75);
    v77 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v78 = swift_task_alloc();
    *(v0 + 360) = v78;
    *v78 = v0;
    v78[1] = sub_100007730;
    v7 = *(v0 + 240);
    v10 = v0 + 200;
    v8 = v74;
    v9 = v72;
    v11 = v75;
    v12 = v76;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, v8, v9, v10, v11, v12);
  }

  v42 = *(v0 + 312);

  if (*(v0 + 80))
  {
    sub_10000C304((v0 + 56));
  }

  v43 = *(v0 + 288);
  static Log.network.getter();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "[MSQ] No Pending Messages, exiting.", v46, 2u);
  }

  v47 = *(v0 + 288);
  v49 = *(v0 + 256);
  v48 = *(v0 + 264);
  v50 = *(v0 + 248);

  v51 = *(v49 + 8);
  v51(v47, v50);
  static Log.network.getter();
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "[MSQ] Task done.", v54, 2u);
  }

  v56 = *(v0 + 256);
  v55 = *(v0 + 264);
  v57 = *(v0 + 248);
  v58 = *(v0 + 208);

  v51(v55, v57);
  *(v58 + 48) = 0;
  v60 = *(v0 + 288);
  v59 = *(v0 + 296);
  v62 = *(v0 + 272);
  v61 = *(v0 + 280);
  v63 = *(v0 + 264);
  v65 = *(v0 + 232);
  v64 = *(v0 + 240);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_100007FCC()
{
  v84 = v0;
  v1 = *(v0 + 200);
  v2 = (v0 + 16);
  v3 = *(v0 + 280);
  v82 = (v0 + 136);
  sub_10000C304((v0 + 136));
  static Log.network.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MSQ] Error reading message from stream: %@", v6, 0xCu);
    sub_10000C460(v7, &qword_100129EF8, &qword_100108C70);

    v2 = (v0 + 16);
  }

  else
  {
  }

  v9 = *(v0 + 256) + 8;
  (*(v0 + 344))(*(v0 + 280), *(v0 + 248));
  sub_10000C304(v2);
  v10 = *(v0 + 208);
  swift_beginAccess();
  if (*(*(v10 + 56) + 24) > 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = *(v0 + 208) + 56;
      sub_10000B9E8();
    }

    v12 = *(*(v0 + 208) + 56);
    v13 = sub_10000C350(&v12[5 * v12[4] + 5], v0 + 56);
    v19 = v12[4];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v22 = v12[3];
      if (v21 >= v12[2])
      {
        v21 = 0;
      }

      v12[4] = v21;
      if (!__OFSUB__(v22, 1))
      {
        v12[3] = v22 - 1;
        goto LABEL_13;
      }
    }

    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v13, v14, v15, v16, v17, v18);
  }

  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
LABEL_13:
  swift_endAccess();
  if (*(v0 + 80))
  {
    v23 = *(v0 + 296);
    sub_10000C350((v0 + 56), v2);
    static Log.network.getter();
    sub_10000C368(v2, v0 + 96);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 296);
    v28 = *(v0 + 248);
    v29 = (*(v0 + 256) + 8);
    if (v26)
    {
      v30 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v83 = v77;
      *v30 = 136315138;
      v80 = v28;
      v31 = *(v0 + 120);
      sub_10000C3CC((v0 + 96), v31);
      v78 = v27;
      v79 = v29;
      v32 = *(v31 - 8);
      v33 = *(v32 + 64) + 15;
      swift_task_alloc();
      v81 = v2;
      (*(v32 + 16))();
      v34 = String.init<A>(describing:)();
      v36 = v35;

      sub_10000C304((v0 + 96));
      v37 = sub_100102F80(v34, v36, &v83);

      *(v30 + 4) = v37;
      v2 = v81;
      _os_log_impl(&_mh_execute_header, v24, v25, "[MSQ] Dequeue %s", v30, 0xCu);
      sub_10000C304(v77);

      v38 = *v79;
      (*v79)(v78, v80);
    }

    else
    {

      v38 = *v29;
      (*v29)(v27, v28);
      sub_10000C304((v0 + 96));
    }

    *(v0 + 344) = v38;
    v65 = *(v0 + 40);
    v66 = sub_10000C3CC(v2, v65);
    v67 = *(v65 - 8);
    v68 = *(v67 + 64) + 15;
    v69 = swift_task_alloc();
    (*(v67 + 16))(v69, v66, v65);
    *(v0 + 160) = swift_getAssociatedTypeWitness();
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    sub_10000C1AC(v82);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v70 = *(v0 + 320);
    v71 = *(v0 + 304);
    v72 = static CommunicationActor.shared.getter();
    *(v0 + 352) = v72;
    v73 = *(v0 + 160);
    v74 = *(v0 + 168);
    sub_10000C410(v82, v73);
    v75 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v76 = swift_task_alloc();
    *(v0 + 360) = v76;
    *v76 = v0;
    v76[1] = sub_100007730;
    v13 = *(v0 + 240);
    v14 = v72;
    v15 = v70;
    v16 = v0 + 200;
    v17 = v73;
    v18 = v74;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v13, v14, v15, v16, v17, v18);
  }

  v39 = *(v0 + 312);

  if (*(v0 + 80))
  {
    sub_10000C304((v0 + 56));
  }

  v40 = *(v0 + 288);
  static Log.network.getter();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "[MSQ] No Pending Messages, exiting.", v43, 2u);
  }

  v44 = *(v0 + 288);
  v46 = *(v0 + 256);
  v45 = *(v0 + 264);
  v47 = *(v0 + 248);

  v48 = *(v46 + 8);
  v48(v44, v47);
  static Log.network.getter();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "[MSQ] Task done.", v51, 2u);
  }

  v53 = *(v0 + 256);
  v52 = *(v0 + 264);
  v54 = *(v0 + 248);
  v55 = *(v0 + 208);

  v48(v52, v54);
  *(v55 + 48) = 0;
  v57 = *(v0 + 288);
  v56 = *(v0 + 296);
  v59 = *(v0 + 272);
  v58 = *(v0 + 280);
  v60 = *(v0 + 264);
  v62 = *(v0 + 232);
  v61 = *(v0 + 240);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_10000876C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = *(v4 + 368);
    v9 = *(v4 + 376);

    *(v4 + 392) = a1 & 1;

    v10 = *(v4 + 328);
    v11 = *(v4 + 336);

    return _swift_task_switch(sub_1000088B8, v10, v11);
  }
}

uint64_t sub_1000088B8()
{
  v83 = v0;
  if (*(v0 + 392))
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
LABEL_28:
    v73 = *(v0 + 320);
    v74 = *(v0 + 304);
    v75 = static CommunicationActor.shared.getter();
    *(v0 + 352) = v75;
    v76 = *(v0 + 160);
    v77 = *(v0 + 168);
    sub_10000C410(v0 + 136, v76);
    v78 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v79 = swift_task_alloc();
    *(v0 + 360) = v79;
    *v79 = v0;
    v79[1] = sub_100007730;
    v15 = *(v0 + 240);
    v18 = v0 + 200;
    v16 = v75;
    v17 = v73;
    v19 = v76;
    v20 = v77;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v15, v16, v17, v18, v19, v20);
  }

  v1 = *(v0 + 272);
  static Log.network.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MSQ] Exiting loop until more data queued", v4, 2u);
  }

  v5 = *(v0 + 344);
  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);
  v11 = *(v0 + 216);

  v5(v6, v7);
  (*(v10 + 8))(v9, v11);
  sub_10000C304((v0 + 136));
  sub_10000C304((v0 + 16));
  v12 = *(v0 + 208);
  swift_beginAccess();
  if (*(*(v12 + 56) + 24) > 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(v0 + 208) + 56;
      sub_10000B9E8();
    }

    v14 = *(*(v0 + 208) + 56);
    v15 = sub_10000C350(&v14[5 * v14[4] + 5], v0 + 56);
    v21 = v14[4];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      v24 = v14[3];
      if (v23 >= v14[2])
      {
        v23 = 0;
      }

      v14[4] = v23;
      if (!__OFSUB__(v24, 1))
      {
        v14[3] = v24 - 1;
        goto LABEL_14;
      }
    }

    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v15, v16, v17, v18, v19, v20);
  }

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
LABEL_14:
  swift_endAccess();
  if (*(v0 + 80))
  {
    v25 = *(v0 + 296);
    sub_10000C350((v0 + 56), v0 + 16);
    static Log.network.getter();
    sub_10000C368(v0 + 16, v0 + 96);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 296);
    v30 = *(v0 + 248);
    v31 = (*(v0 + 256) + 8);
    if (v28)
    {
      v81 = *(v0 + 248);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v82 = v33;
      *v32 = 136315138;
      v34 = *(v0 + 120);
      sub_10000C3CC((v0 + 96), v34);
      v80 = v29;
      v35 = *(v34 - 8);
      v36 = *(v35 + 64) + 15;
      swift_task_alloc();
      (*(v35 + 16))();
      v37 = String.init<A>(describing:)();
      v39 = v38;

      sub_10000C304((v0 + 96));
      v40 = sub_100102F80(v37, v39, &v82);

      *(v32 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v26, v27, "[MSQ] Dequeue %s", v32, 0xCu);
      sub_10000C304(v33);

      v41 = *v31;
      (*v31)(v80, v81);
    }

    else
    {

      v41 = *v31;
      (*v31)(v29, v30);
      sub_10000C304((v0 + 96));
    }

    *(v0 + 344) = v41;
    v68 = *(v0 + 40);
    v69 = sub_10000C3CC((v0 + 16), v68);
    v70 = *(v68 - 8);
    v71 = *(v70 + 64) + 15;
    v72 = swift_task_alloc();
    (*(v70 + 16))(v72, v69, v68);
    *(v0 + 160) = swift_getAssociatedTypeWitness();
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    sub_10000C1AC((v0 + 136));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    goto LABEL_28;
  }

  v42 = *(v0 + 312);

  if (*(v0 + 80))
  {
    sub_10000C304((v0 + 56));
  }

  v43 = *(v0 + 288);
  static Log.network.getter();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "[MSQ] No Pending Messages, exiting.", v46, 2u);
  }

  v47 = *(v0 + 288);
  v49 = *(v0 + 256);
  v48 = *(v0 + 264);
  v50 = *(v0 + 248);

  v51 = *(v49 + 8);
  v51(v47, v50);
  static Log.network.getter();
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "[MSQ] Task done.", v54, 2u);
  }

  v56 = *(v0 + 256);
  v55 = *(v0 + 264);
  v57 = *(v0 + 248);
  v58 = *(v0 + 208);

  v51(v55, v57);
  *(v58 + 48) = 0;
  v60 = *(v0 + 288);
  v59 = *(v0 + 296);
  v62 = *(v0 + 272);
  v61 = *(v0 + 280);
  v63 = *(v0 + 264);
  v65 = *(v0 + 232);
  v64 = *(v0 + 240);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_100008FF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Message();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[14] = static CommunicationActor.shared.getter();
  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v10;
  v2[16] = v9;

  return _swift_task_switch(sub_1000091A0, v10, v9);
}

uint64_t sub_1000091A0()
{
  v32 = v0;
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  static Log.network.getter();
  v6 = *(v4 + 16);
  v0[17] = v6;
  v0[18] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[8];
  v15 = v0[4];
  v14 = v0[5];
  if (v9)
  {
    v30 = v0[9];
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v16 = 136315138;
    sub_10000C578(&qword_100129EE8, &type metadata accessor for Message);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v10;
    v19 = v18;
    v27 = v8;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_100102F80(v17, v19, &v31);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "[MSQ] Send start: %s", v16, 0xCu);
    sub_10000C304(v29);

    v22 = *(v11 + 8);
    v22(v28, v30);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
    v22 = *(v11 + 8);
    v22(v10, v12);
  }

  v0[19] = v22;
  v0[20] = v20;
  v23 = *(v0[3] + 16);
  v24 = swift_task_alloc();
  v0[21] = v24;
  *v24 = v0;
  v24[1] = sub_100009428;
  v25 = v0[2];

  return sub_100073540(v25);
}

uint64_t sub_100009428()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1000097B4;
  }

  else
  {
    v7 = sub_100009564;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100009564()
{
  v37 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[2];

  static Log.network.getter();
  v2(v5, v7, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  v35 = v0[20];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[7];
  v17 = v0[4];
  v16 = v0[5];
  if (v10)
  {
    v34 = v0[12];
    v18 = swift_slowAlloc();
    v33 = v13;
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136315138;
    v32 = v11;
    v20 = Message.shortDescription.getter();
    v22 = v21;
    v35(v15, v17);
    v23 = sub_100102F80(v20, v22, &v36);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "[MSQ] Send end: %s", v18, 0xCu);
    sub_10000C304(v19);

    v32(v34, v33);
  }

  else
  {

    v35(v15, v17);
    v11(v12, v13);
  }

  v25 = v0[12];
  v24 = v0[13];
  v26 = v0[11];
  v28 = v0[7];
  v27 = v0[8];
  v29 = v0[6];

  v30 = v0[1];

  return v30(1);
}

uint64_t sub_1000097B4()
{
  v41 = v0;
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  static Log.network.getter();
  v3(v6, v8, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  LOBYTE(v5) = static os_log_type_t.error.getter();

  v38 = v5;
  v10 = os_log_type_enabled(v9, v5);
  v39 = v0[22];
  v11 = v0[19];
  v12 = v0[20];
  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];
  if (v10)
  {
    v37 = v0[9];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v19 = 136315394;
    v35 = v13;
    v36 = v11;
    v21 = Message.shortDescription.getter();
    v23 = v22;
    v12(v16, v18);
    v24 = sub_100102F80(v21, v23, &v40);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v9, v38, "[MSQ] Send failed: %s with error: %@. Will retry.", v19, 0x16u);
    sub_10000C460(v20, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(v34);

    v36(v35, v37);
  }

  else
  {

    v12(v16, v18);
    v11(v13, v15);
  }

  v27 = v0[12];
  v26 = v0[13];
  v28 = v0[11];
  v30 = v0[7];
  v29 = v0[8];
  v31 = v0[6];

  v32 = v0[1];

  return v32(2);
}

uint64_t sub_100009A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v6 = type metadata accessor for ContinuousClock.Instant();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v8 = *(v7 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[21] = v9;
  v10 = *(v9 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock();
  v4[26] = v12;
  v13 = *(v12 - 8);
  v4[27] = v13;
  v14 = *(v13 + 64) + 15;
  v4[28] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v4[29] = v15;
  v4[30] = v17;

  return _swift_task_switch(sub_100009C60, v15, v17);
}

uint64_t sub_100009C60()
{
  v1 = *(v0 + 28);
  *(v0 + 11) = static Duration.seconds(_:)();
  *(v0 + 12) = v2;
  ContinuousClock.init()();
  swift_beginAccess();
  v7 = (*(v0 + 15) + **(v0 + 15));
  v3 = *(*(v0 + 15) + 4);
  v4 = swift_task_alloc();
  *(v0 + 31) = v4;
  *v4 = v0;
  v4[1] = sub_100009D90;
  v5 = *(v0 + 16);

  return v7(v0 + 81);
}

uint64_t sub_100009D90()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_10000A100;
  }

  else
  {
    v7 = sub_100009ECC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100009ECC()
{
  v25 = v0;
  v1 = *(v0 + 81);
  if (v1 == 2)
  {
    v2 = *(v0 + 200);
    static Log.default.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 200);
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v9 = 136315138;
      v11 = *(v0 + 88);
      v12 = *(v0 + 96);
      v13 = Duration.description.getter();
      v15 = sub_100102F80(v13, v14, &v24);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Sleeping for %s", v9, 0xCu);
      sub_10000C304(v10);
    }

    v16 = *(v8 + 8);
    v16(v6, v7);
    *(v0 + 264) = v16;
    *(v0 + 104) = *(v0 + 88);
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;

    return _swift_task_switch(sub_10000A1C4, 0, 0);
  }

  else
  {
    v17 = *(v0 + 200);
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v21 = *(v0 + 152);
    v20 = *(v0 + 160);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v22 = *(v0 + 8);

    return v22(v1 & 1);
  }
}

uint64_t sub_10000A100()
{
  v1 = v0[25];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[19];
  v4 = v0[20];
  (*(v0[27] + 8))(v0[28], v0[26]);

  v6 = v0[1];
  v7 = v0[32];

  return v6(0);
}

uint64_t sub_10000A1C4()
{
  v1 = v0[28];
  v2 = v0[26];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = sub_10000C578(&qword_100129F10, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000C578(&qword_100129F18, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v6 + 8);
  v0[34] = v8;
  v0[35] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v5);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[36] = v10;
  *v10 = v0;
  v10[1] = sub_10000A34C;
  v11 = v0[28];
  v12 = v0[26];
  v13 = v0[20];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 8, v12, v7);
}

uint64_t sub_10000A34C()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v6 = *(*v1 + 160);
  v7 = *(*v1 + 136);
  v12 = *v1;
  *(*v1 + 296) = v0;

  v5(v6, v7);
  if (v0)
  {
    v8 = sub_10000A6A0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = *(v2 + 232);
    v10 = *(v2 + 240);
    v8 = sub_10000A4D4;
  }

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10000A4D4()
{
  v1 = *(v0 + 192);
  static Log.default.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done sleeping.", v4, 2u);
  }

  v5 = *(v0 + 176) + 8;
  (*(v0 + 264))(*(v0 + 192), *(v0 + 168));
  swift_beginAccess();
  dispatch thunk of static DurationProtocol.*= infix(_:_:)();
  swift_endAccess();
  v10 = (*(v0 + 120) + **(v0 + 120));
  v6 = *(*(v0 + 120) + 4);
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_100009D90;
  v8 = *(v0 + 128);

  return v10(v0 + 81);
}

uint64_t sub_10000A6B8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 184);
  static Log.default.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 296);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error Sleeping %@", v7, 0xCu);
    sub_10000C460(v8, &qword_100129EF8, &qword_100108C70);
  }

  else
  {
    v10 = *(v0 + 296);
  }

  v11 = *(v0 + 176) + 8;
  (*(v0 + 264))(*(v0 + 184), *(v0 + 168));
  swift_beginAccess();
  dispatch thunk of static DurationProtocol.*= infix(_:_:)();
  swift_endAccess();
  v16 = (*(v0 + 120) + **(v0 + 120));
  v12 = *(*(v0 + 120) + 4);
  v13 = swift_task_alloc();
  *(v0 + 248) = v13;
  *v13 = v0;
  v13[1] = sub_100009D90;
  v14 = *(v0 + 128);

  return v16(v0 + 81);
}

unint64_t sub_10000A914()
{
  result = qword_100129E88;
  if (!qword_100129E88)
  {
    sub_10000A990(&qword_100129E80, &unk_1001091F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100129E88);
  }

  return result;
}

uint64_t sub_10000A990(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A9D8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AAD0;

  return v7(a1);
}

uint64_t sub_10000AAD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000ABC8(char a1, Swift::Int a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    sub_10000560C(&qword_100129F00, &qword_100108CD0);
    v11 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v11 + 16) = v6;
    *(v11 + 24) = v12;
    if (v12 >= 1)
    {
      sub_10000B768(v11 + 16, v11 + 40, v5, v4 + 40);
    }
  }

  else
  {
    sub_10000560C(&qword_100129F08, &qword_100108CD8);
    Deque._Storage._growCapacity(to:linearly:)(a2, a3 & 1);
    if (a1)
    {
      v10 = *(v4 + 24);
      sub_10000560C(&qword_100129F00, &qword_100108CD0);
      v11 = swift_allocObject();
      *(v11 + 16) = (j__malloc_size(v11) - 40) / 40;
      *(v11 + 24) = v10;
      *(v11 + 32) = 0;
      if (v10 >= 1)
      {
        sub_10000B194(v11 + 16, (v11 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      sub_10000560C(&qword_100129F00, &qword_100108CD0);
      v11 = swift_allocObject();
      v13 = j__malloc_size(v11);
      v14 = *(v4 + 24);
      *(v11 + 16) = (v13 - 40) / 40;
      *(v11 + 24) = v14;
      *(v11 + 32) = 0;
      if (v14 >= 1)
      {
        sub_10000B4E0(v11 + 16, v11 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v11;
  return result;
}

size_t sub_10000ADAC(char a1, Swift::Int a2, char a3)
{
  v7 = *v3;
  v8 = (*v3 + 16);
  v9 = *v8;
  v10 = sub_10000560C(&qword_100129F20, &qword_100109B10);
  v11 = v10;
  if (v9 >= a2)
  {
    v20 = *(v10 - 8);
    v21 = *(v20 + 80);
    sub_10000560C(&qword_100129F28, &qword_100108CF0);
    v22 = *(v20 + 72);
    v17 = swift_allocObject();
    v23 = *(v7 + 24);
    *(v17 + 16) = v9;
    *(v17 + 24) = v23;
    if (v23 >= 1)
    {
      sub_10000B880(v17 + 16, v17 + ((v21 + 40) & ~v21), v8, v7 + ((v21 + 40) & ~v21));
    }

    goto LABEL_19;
  }

  Deque._Storage._growCapacity(to:linearly:)(a2, a3 & 1);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  if (a1)
  {
    v14 = *(v7 + 24);
    sub_10000560C(&qword_100129F28, &qword_100108CF0);
    v15 = *(v12 + 72);
    v16 = (v13 + 40) & ~v13;
    v17 = swift_allocObject();
    result = j__malloc_size(v17);
    if (v15)
    {
      if (result - v16 != 0x8000000000000000 || v15 != -1)
      {
        *(v17 + 16) = (result - v16) / v15;
        *(v17 + 24) = v14;
        *(v17 + 32) = 0;
        if (v14 >= 1)
        {
          sub_10000B2D4(v17 + 16, v17 + v16, v8, v7 + v16);
          *(v7 + 24) = 0;
        }

LABEL_19:

        *v3 = v17;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10000560C(&qword_100129F28, &qword_100108CF0);
  v24 = *(v12 + 72);
  v25 = (v13 + 40) & ~v13;
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v24)
  {
    goto LABEL_21;
  }

  if (result - v25 != 0x8000000000000000 || v24 != -1)
  {
    v27 = *(v7 + 24);
    *(v17 + 16) = (result - v25) / v24;
    *(v17 + 24) = v27;
    *(v17 + 32) = 0;
    if (v27 >= 1)
    {
      sub_10000B5F4(v17 + 16, v17 + v25, v8, v7 + v25);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_10000B028(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v7 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v7)
  {
    v6 = result;
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v7))
      {
LABEL_9:
        result = sub_10000C368(a3, a2 + 40 * v5);
        v8 = v6[1];
        v7 = __OFADD__(v8, 1);
        v9 = v8 + 1;
        if (!v7)
        {
          v6[1] = v9;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v7 = __OFADD__(v5, *result);
      v5 += *result;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_10000B0B4(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = sub_10000560C(&qword_100129F20, &qword_100109B10);
        result = (*(*(v10 - 8) + 16))(a2 + *(*(v10 - 8) + 72) * v5, a3, v10);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_10000B194(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[40 * v4];
  if (v12 != __dst || &v12[40 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 40 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[40 * v8];
  if (v16 != v11 || v16 >= &v11[40 * v7])
  {

    memmove(v16, v11, 40 * v7);
  }
}

void sub_10000B2D4(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(sub_10000560C(&qword_100129F20, &qword_100109B10) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(sub_10000560C(&qword_100129F20, &qword_100109B10) - 8) + 72) * v11 <= a2)
  {
    sub_10000560C(&qword_100129F20, &qword_100109B10);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(sub_10000560C(&qword_100129F20, &qword_100109B10) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_10000B4E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  v10 = a3[1];
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      sub_10000560C(&qword_100129F08, &qword_100108CD8);
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      sub_10000560C(&qword_100129F08, &qword_100108CD8);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_10000B5F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(sub_10000560C(&qword_100129F20, &qword_100109B10) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = a4 + *(v8 + 72) * v4;
  sub_10000560C(&qword_100129F20, &qword_100109B10);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v9 < 1)
  {
    return;
  }

  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v12 = *(*(sub_10000560C(&qword_100129F20, &qword_100109B10) - 8) + 72);
  swift_arrayInitWithCopy();
}

uint64_t sub_10000B768(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v9 = 0;
    v7 = 0;
    v10 = a3[1];
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      sub_10000560C(&qword_100129F08, &qword_100108CD8);
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *a3 - v4;
  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      sub_10000560C(&qword_100129F08, &qword_100108CD8);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_10000B880(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(sub_10000560C(&qword_100129F20, &qword_100109B10) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        v11 = a4 + *(v8 + 72) * v4;
        v12 = *(*(sub_10000560C(&qword_100129F20, &qword_100109B10) - 8) + 72);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v10)
    {
      sub_10000560C(&qword_100129F20, &qword_100109B10);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

uint64_t sub_10000B9E8()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_10000560C(&qword_100129F00, &qword_100108CD0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_10000B768(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_10000BA8C()
{
  v1 = *v0;
  v2 = sub_10000560C(&qword_100129F20, &qword_100109B10);
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  sub_10000560C(&qword_100129F28, &qword_100108CF0);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_10000B880(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

uint64_t sub_10000BB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10000BC30;

  return sub_100008FF0(a2, a3);
}

uint64_t sub_10000BC30(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_10000BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, char a8)
{
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 16) = a4;
  *(v8 + 49) = *a6;
  return _swift_task_switch(sub_10000BD70, 0, 0);
}

uint64_t sub_10000BD70()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 40) = static CommunicationActor.shared.getter();
  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000CC94, v2, v1);
}

uint64_t sub_10000BE34(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_10000BE54, 0, 0);
}

uint64_t sub_10000BE54()
{
  v1 = v0[5];
  MessageBody.deserialized<A>()();
  v3 = v0[3];
  v2 = v0[4];
  *v2 = v0[2];
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_10000BEFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_10000BD40(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_10000C04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C0BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C0F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CC84;

  return sub_10000A9D8(a1, v5);
}

uint64_t *sub_10000C1AC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000C210()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C250()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000045BC;

  return sub_100006C5C();
}

uint64_t sub_10000C304(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000C350(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000C368(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000C3CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000C410(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10000C460(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000560C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C4C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000045BC;

  return sub_10000BB90(a1, v5, v4);
}

uint64_t sub_10000C578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, char a8)
{
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 16) = a4;
  *(v8 + 49) = *a6;
  return _swift_task_switch(sub_10000C5F4, 0, 0);
}

uint64_t sub_10000C5F4()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 40) = static CommunicationActor.shared.getter();
  sub_10000C578(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000C6B8, v2, v1);
}

uint64_t sub_10000C6B8()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 49);

  sub_100005944(v5, v6, v3, v1);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000C748(uint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10000C758(uint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10000C768()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C7A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CC84;

  return sub_1000044D4(a1, v4, v5, v7);
}

uint64_t sub_10000C868(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000C8BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_10000C5C4(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_10000CA04()
{
  v1 = type metadata accessor for MessageBody();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10000CADC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_10000BD40(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_10000CC24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A990(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CCAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for AlbumID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v10 = sub_10000560C(&qword_10012A088, &qword_100108E40);
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10000CE4C, 0, 0);
}

uint64_t sub_10000CE4C()
{
  v95 = v0;
  v1 = v0[2];
  v2 = objc_opt_self();
  sub_10000560C(&qword_10012A090, &qword_100108E48);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001089C0;
  *(v3 + 32) = AlbumID.album.getter();
  *(v3 + 40) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v2 fetchAssetCollectionsWithLocalIdentifiers:isa options:0];

  v7 = [v6 firstObject];
  if (v7)
  {
    v8 = v0[14];
    v9 = v0[15];
    v80 = v0[13];
    v82 = v0[12];
    v10 = v0[6];
    v86 = v0[5];
    loga = v0[8];
    v78 = v0[4];
    v79 = v0[3];
    v84 = v0[2];
    v11 = [objc_allocWithZone(PHFetchOptions) init];
    sub_10000D828(0, &qword_10012A0A8, NSPredicate_ptr);
    sub_10000560C(&qword_10012A0B0, &qword_100108E50);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001089C0;
    *(v12 + 56) = &type metadata for Int;
    *(v12 + 64) = &protocol witness table for Int;
    *(v12 + 32) = 1;
    v13 = NSPredicate.init(format:_:)();
    [v11 setPredicate:v13];

    sub_10000560C(&qword_10012A0B8, &qword_100109430);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100108DE0;
    v15 = objc_allocWithZone(NSSortDescriptor);
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 initWithKey:v16 ascending:1];

    *(v14 + 32) = v17;
    v18 = v7;
    sub_10000D828(0, &qword_10012A0C0, NSSortDescriptor_ptr);
    v19 = Array._bridgeToObjectiveC()().super.isa;

    [v11 setSortDescriptors:v19];

    [v11 setIncludeHiddenAssets:0];
    v92 = v11;
    v20 = [objc_opt_self() fetchAssetsInAssetCollection:v7 options:v11];
    PHFetchResult<>.collection.getter();
    v21 = sub_100010EE8(v9, *(v78 + 16), v79);
    (*(v8 + 8))(v9, v80);
    static Log.album.getter();
    (*(v10 + 16))(loga, v84, v86);
    v22 = v20;

    v23 = Logger.logObject.getter();
    LOBYTE(v19) = static os_log_type_t.default.getter();

    v87 = v19;
    log = v23;
    v24 = os_log_type_enabled(v23, v19);
    v25 = v0[12];
    v26 = v0[9];
    v27 = v0[10];
    v28 = v0[8];
    v29 = v0[5];
    v30 = v0[6];
    if (v24)
    {
      v85 = v18;
      v31 = swift_slowAlloc();
      v94[0] = swift_slowAlloc();
      *v31 = 136315906;
      sub_10000D7E4(&qword_10012A0A0);
      v81 = v26;
      v83 = v25;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v30 + 8))(v28, v29);
      v35 = sub_100102F80(v32, v34, v94);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      sub_10000D870(v21);
      v36 = Dictionary.description.getter();
      v38 = v37;

      v39 = sub_100102F80(v36, v38, v94);

      *(v31 + 14) = v39;
      *(v31 + 22) = 2048;
      v40 = [v22 count];

      *(v31 + 24) = v40;
      *(v31 + 32) = 2080;
      sub_10000560C(&qword_100129E80, &unk_1001091F0);
      v41 = Dictionary.description.getter();
      v43 = sub_100102F80(v41, v42, v94);

      *(v31 + 34) = v43;
      _os_log_impl(&_mh_execute_header, log, v87, "%s: Picked %s out of %ld photos: %s", v31, 0x2Au);
      swift_arrayDestroy();

      (*(v27 + 8))(v83, v81);
    }

    else
    {

      (*(v30 + 8))(v28, v29);
      (*(v27 + 8))(v25, v26);
    }

    v64 = v0[15];
    v65 = v0[11];
    v66 = v0[12];
    v68 = v0[7];
    v67 = v0[8];

    v69 = v0[1];

    return v69(v21);
  }

  else
  {
    v44 = v0[11];
    v46 = v0[6];
    v45 = v0[7];
    v47 = v0[5];
    v48 = v0[2];
    static Log.default.getter();
    (*(v46 + 16))(v45, v48, v47);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v51 = os_log_type_enabled(v49, v50);
    v53 = v0[10];
    v52 = v0[11];
    v54 = v0[9];
    v56 = v0[6];
    v55 = v0[7];
    v57 = v0[5];
    if (v51)
    {
      v93 = v0[9];
      v58 = swift_slowAlloc();
      v88 = v50;
      v59 = swift_slowAlloc();
      v94[0] = v59;
      *v58 = 136315138;
      sub_10000D7E4(&qword_10012A0A0);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      logb = v52;
      v62 = v61;
      (*(v56 + 8))(v55, v57);
      v63 = sub_100102F80(v60, v62, v94);

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v49, v88, "Couldn't find album %s", v58, 0xCu);
      sub_10000C304(v59);

      (*(v53 + 8))(logb, v93);
    }

    else
    {

      (*(v56 + 8))(v55, v57);
      (*(v53 + 8))(v52, v54);
    }

    v71 = v0[15];
    v73 = v0[11];
    v72 = v0[12];
    v75 = v0[7];
    v74 = v0[8];
    sub_10000D790();
    swift_allocError();
    *v76 = 0;
    swift_willThrow();

    v77 = v0[1];

    return v77();
  }
}

uint64_t sub_10000D700()
{
  sub_10000C304((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_10000D790()
{
  result = qword_10012A098;
  if (!qword_10012A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012A098);
  }

  return result;
}

uint64_t sub_10000D7E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlbumID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D828(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000D870(uint64_t a1)
{
  sub_10000560C(&qword_10012A0C8, &qword_100109580);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v22 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v21 = result + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = *(*(v22 + 48) + 8 * v15);
      v17 = *(*(v22 + 56) + 8 * v15);
      swift_getKeyPath();

      swift_getAtKeyPath();

      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v3[6] + 8 * v15) = v16;
      *(v3[7] + 8 * v15) = v23;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DA14(void *a1)
{
  v150 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace.Source();
  v2 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v149 = v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000560C(&qword_10012A200, &qword_100108F60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v151 = v141 - v6;
  v175 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
  v173 = *(v175 - 8);
  v7 = *(v173 + 64);
  v8 = __chkstk_darwin(v175);
  v171 = v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v172 = v141 - v11;
  v12 = __chkstk_darwin(v10);
  v160 = v141 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v141 - v15;
  __chkstk_darwin(v14);
  v182 = v141 - v17;
  v18 = type metadata accessor for UUID();
  v152 = *(v18 - 8);
  v19 = *(v152 + 64);
  v20 = __chkstk_darwin(v18);
  v179 = v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v159 = v141 - v23;
  v24 = __chkstk_darwin(v22);
  v180 = v141 - v25;
  __chkstk_darwin(v24);
  v181 = v141 - v26;
  v27 = type metadata accessor for DailyPhotosFaceCuration();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Logger();
  v177 = *(v32 - 8);
  v33 = *(v177 + 64);
  v34 = __chkstk_darwin(v32);
  v162 = v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v176 = v141 - v37;
  __chkstk_darwin(v36);
  v39 = v141 - v38;
  static Log.daily.getter();

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v174 = a1;

  v42 = os_log_type_enabled(v40, v41);
  v163 = v16;
  v183 = v18;
  v164 = v32;
  v143 = v27;
  v142 = v28;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    *v43 = 136315394;
    *(v43 + 4) = sub_100102F80(0x6728657461647075, 0xEE00293A6E657669, &v184);
    *(v43 + 12) = 2080;
    v44 = Array.description.getter();
    v46 = sub_100102F80(v44, v45, &v184);

    *(v43 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s: refreshing daily photos content, given %s", v43, 0x16u);
    swift_arrayDestroy();
    v32 = v164;
    v47 = v163;
  }

  else
  {
    v47 = v16;
  }

  v48 = v177;
  v161 = *(v177 + 8);
  v161(v39, v32);
  static TestProperties.watchFacePerDaySize.getter();
  v49 = [objc_opt_self() sharedPhotoLibrary];
  DailyPhotosFaceCuration.init(maxNumberOfFaces:photoLibrary:)();
  v50 = v174;
  v51 = v174[2];
  v52 = _swiftEmptyArrayStorage;
  v145 = v31;
  if (v51)
  {
    v184 = _swiftEmptyArrayStorage;
    sub_10005C54C(0, v51, 0);
    v52 = v184;
    v178 = *(v152 + 16);
    v53 = v50 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
    v54 = *(v152 + 72);
    v55 = (v152 + 8);
    do
    {
      v56 = v52;
      v57 = v181;
      v58 = v183;
      (v178)(v181, v53, v183);
      v59 = UUID.uuidString.getter();
      v61 = v60;
      (*v55)(v57, v58);
      v52 = v56;
      v184 = v56;
      v62 = *(v56 + 16);
      v63 = v52[3];
      if (v62 >= v63 >> 1)
      {
        sub_10005C54C((v63 > 1), v62 + 1, 1);
        v52 = v184;
      }

      v52[2] = v62 + 1;
      v64 = &v52[2 * v62];
      v64[4] = v59;
      v64[5] = v61;
      v53 += v54;
      --v51;
    }

    while (v51);
    v47 = v163;
    v32 = v164;
    v48 = v177;
  }

  sub_10006BE04(v65);
  v141[1] = v52;

  v66 = DailyPhotosFaceCuration.getDailyPhotosFaces(excluding:)();

  v67 = v176;
  static Log.daily.getter();

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  v70 = os_log_type_enabled(v68, v69);
  v71 = v175;
  if (v70)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v184 = v73;
    *v72 = 136315394;
    *(v72 + 4) = sub_100102F80(0x6728657461647075, 0xEE00293A6E657669, &v184);
    *(v72 + 12) = 2048;
    *(v72 + 14) = *(v66 + 16);

    _os_log_impl(&_mh_execute_header, v68, v69, "%s: found %ld photos", v72, 0x16u);
    sub_10000C304(v73);

    v74 = v176;
  }

  else
  {

    v74 = v67;
  }

  v161(v74, v32);
  v76 = v151;
  v170 = *(v66 + 16);
  if (v170)
  {
    v77 = 0;
    v181 = (v173 + 16);
    v78 = (v152 + 48);
    v157 = (v152 + 32);
    v176 = (v152 + 16);
    v178 = (v173 + 8);
    v168 = (v152 + 8);
    v156 = v48 + 8;
    v147 = (v173 + 32);
    v146 = (v173 + 40);
    v174 = &_swiftEmptyDictionarySingleton;
    *&v75 = 136316162;
    v148 = v75;
    v169 = v66;
    v158 = (v152 + 48);
    while (v77 < *(v66 + 16))
    {
      v79 = v76;
      v80 = *(v173 + 80);
      v177 = *(v173 + 72);
      v81 = v66 + ((v80 + 32) & ~v80) + v177 * v77;
      v82 = *(v173 + 16);
      v82(v182, v81, v71);
      v83 = DailyPhotosFaceCuration.DailyPhotosFace.asset.getter();
      v84 = [v83 uuid];

      if (!v84)
      {
        goto LABEL_51;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();

      v85 = v183;
      if ((*v78)(v76, 1, v183) == 1)
      {
        (*v178)(v182, v71);
        sub_10000C460(v76, &qword_10012A200, &qword_100108F60);
        v66 = v169;
      }

      else
      {
        v86 = v180;
        (*v157)(v180, v76, v85);
        static Log.daily.getter();
        v87 = v159;
        v167 = *v176;
        v167(v159, v86, v85);
        v88 = v182;
        v82(v47, v182, v71);
        v89 = v160;
        v82(v160, v88, v71);
        v82(v172, v88, v71);
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v184 = v155;
          *v92 = v148;
          *(v92 + 4) = sub_100102F80(0x6728657461647075, 0xEE00293A6E657669, &v184);
          *(v92 + 12) = 2080;
          sub_100010E9C(&qword_10012A1C0, 255, &type metadata accessor for UUID);
          v154 = v90;
          v93 = v183;
          v94 = dispatch thunk of CustomStringConvertible.description.getter();
          v153 = v91;
          v96 = v95;
          v166 = *v168;
          v166(v87, v93);
          v97 = sub_100102F80(v94, v96, &v184);

          *(v92 + 14) = v97;
          *(v92 + 22) = 2080;
          DailyPhotosFaceCuration.DailyPhotosFace.source.getter();
          v98 = String.init<A>(describing:)();
          v100 = v99;
          v101 = *v178;
          (*v178)(v47, v175);
          v102 = sub_100102F80(v98, v100, &v184);

          *(v92 + 24) = v102;
          *(v92 + 32) = 2080;
          v103 = DailyPhotosFaceCuration.DailyPhotosFace.localizedTitle.getter();
          if (v104)
          {
            v105 = v103;
          }

          else
          {
            v105 = 0x29656E6F6E28;
          }

          if (v104)
          {
            v106 = v104;
          }

          else
          {
            v106 = 0xE600000000000000;
          }

          v101(v89, v175);
          v107 = sub_100102F80(v105, v106, &v184);

          *(v92 + 34) = v107;
          *(v92 + 42) = 2080;
          v108 = v172;
          v109 = DailyPhotosFaceCuration.DailyPhotosFace.localizedSubtitle.getter();
          if (v110)
          {
            v111 = v109;
          }

          else
          {
            v111 = 0x29656E6F6E28;
          }

          if (v110)
          {
            v112 = v110;
          }

          else
          {
            v112 = 0xE600000000000000;
          }

          v165 = v101;
          v101(v108, v175);
          v113 = sub_100102F80(v111, v112, &v184);
          v79 = v151;

          *(v92 + 44) = v113;
          v114 = v154;
          _os_log_impl(&_mh_execute_header, v154, v153, "%s: found %s, src = %s, t = %s, s = %s", v92, 0x34u);
          swift_arrayDestroy();

          v71 = v175;

          v161(v162, v164);
          v115 = v183;
        }

        else
        {

          v116 = v47;
          v117 = *v178;
          (*v178)(v172, v71);
          v117(v89, v71);
          v165 = v117;
          v117(v116, v71);
          v118 = v183;
          v166 = *v168;
          v166(v87, v183);
          v161(v162, v164);
          v115 = v118;
        }

        v119 = v179;
        v120 = v167;
        v167(v179, v180, v115);
        v82(v171, v182, v71);
        v121 = v174;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v184 = v121;
        v123 = sub_100057AFC(v119);
        v125 = *(v121 + 16);
        v126 = (v124 & 1) == 0;
        v127 = __OFADD__(v125, v126);
        v128 = v125 + v126;
        v78 = v158;
        if (v127)
        {
          goto LABEL_49;
        }

        v129 = v124;
        if (*(v121 + 24) >= v128)
        {
          v66 = v169;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v137 = v123;
            sub_1000582B4();
            v123 = v137;
            v66 = v169;
          }
        }

        else
        {
          sub_10005959C(v128, isUniquelyReferenced_nonNull_native);
          v123 = sub_100057AFC(v179);
          v66 = v169;
          if ((v129 & 1) != (v130 & 1))
          {
            goto LABEL_52;
          }
        }

        v131 = v183;
        v132 = v184;
        v174 = v184;
        if (v129)
        {
          (*v146)(v184[7] + v123 * v177, v171, v71);
        }

        else
        {
          v184[(v123 >> 6) + 8] |= 1 << v123;
          v133 = v123;
          v120(v132[6] + *(v152 + 72) * v123, v179, v131);
          (*v147)(v132[7] + v133 * v177, v171, v71);
          v134 = v132[2];
          v127 = __OFADD__(v134, 1);
          v135 = v134 + 1;
          if (v127)
          {
            goto LABEL_50;
          }

          v132[2] = v135;
        }

        v136 = v166;
        v166(v179, v131);
        v136(v180, v131);
        v165(v182, v71);
        v47 = v163;
        v76 = v79;
      }

      if (v170 == ++v77)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v174 = &_swiftEmptyDictionarySingleton;
LABEL_47:
    (*(v142 + 8))(v145, v143);

    v138 = v144;
    v139 = *v144;

    *v138 = v174;
    *(v138 + 8) = 1;
  }

  return result;
}

uint64_t sub_10000EB64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(*(sub_10000560C(&qword_10012A1E8, &unk_100108F50) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10000ECEC, 0, 0);
}

uint64_t sub_10000ECEC()
{
  v47 = v0;
  v1 = *(v0[3] + 56);
  v0[13] = v1;
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 24);
  os_unfair_lock_unlock((v1 + 28));
  if (v2)
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[8];
    v7 = v0[5];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[4];
    sub_100010E9C(&qword_10012A1D0, v3, type metadata accessor for DailyProvider);
    v11 = j___s10PhotosFace13TimeUtilitiesO12currentEpochSivgZ();
    v15 = v11 - 1;
    v0[14] = v11 - 1;
    if (__OFSUB__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      v16 = v0[12];
      v17 = v0[7];
      v18 = v0[8];
      v19 = v0[6];
      v20 = v0[2];
      static Log.daily.getter();
      (*(v17 + 16))(v18, v20, v19);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v0[12];
      v26 = v0[9];
      v25 = v0[10];
      v28 = v0[7];
      v27 = v0[8];
      v29 = v0[6];
      if (v23)
      {
        v45 = v15;
        v30 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v30 = 136315394;
        *(v30 + 4) = sub_100102F80(0xD00000000000001DLL, 0x8000000100106F70, &v46);
        *(v30 + 12) = 2080;
        sub_100010E9C(&qword_10012A1C0, 255, &type metadata accessor for UUID);
        v43 = v26;
        v44 = v24;
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        v42 = v22;
        v34 = *(v28 + 8);
        v34(v27, v29);
        v35 = sub_100102F80(v31, v33, &v46);

        *(v30 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v21, v42, "%s: retrieving yesterday's photos given face %s", v30, 0x16u);
        swift_arrayDestroy();

        v15 = v45;

        v36 = *(v25 + 8);
        v36(v44, v43);
      }

      else
      {

        v34 = *(v28 + 8);
        v34(v27, v29);
        v36 = *(v25 + 8);
        v36(v24, v26);
      }

      v0[15] = v34;
      v0[16] = v36;
      v37 = v0[3];
      v38 = v37[5];
      v39 = v37[6];
      sub_10000C3CC(v37 + 2, v38);
      v40 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryPhotosForDays(from:to:)[1];
      v41 = swift_task_alloc();
      v0[17] = v41;
      *v41 = v0;
      v41[1] = sub_10000F0A8;
      v11 = v15;
      v12 = v15;
      v13 = v38;
      v14 = v39;
    }

    return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryPhotosForDays(from:to:)(v11, v12, v13, v14);
  }
}

uint64_t sub_10000F0A8(uint64_t a1)
{
  v3 = *(*v2 + 136);
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v6 = v4[11];
    v5 = v4[12];
    v7 = v4[8];
    v8 = v4[5];

    v9 = v4[1];

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_10000F210, 0, 0);
  }
}

void sub_10000F210()
{
  v33 = v0;
  if (*(*(v0 + 144) + 16) && (v1 = sub_100057BD0(*(v0 + 112)), (v2 & 1) != 0))
  {
    v3 = *(*(*(v0 + 144) + 56) + 8 * v1);
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = *(v0 + 88);

  static Log.daily.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 128);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 72);
  if (v7)
  {
    v12 = *(v0 + 48);
    v31 = *(v0 + 128);
    v13 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100102F80(0xD00000000000001DLL, 0x8000000100106F70, v32);
    *(v13 + 12) = 2080;
    sub_10000560C(&qword_100129E80, &unk_1001091F0);
    sub_100010E9C(&qword_10012A1F8, 255, &type metadata accessor for UUID);
    v14 = Dictionary.description.getter();
    v16 = sub_100102F80(v14, v15, v32);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: found yesterday's photos: %s", v13, 0x16u);
    swift_arrayDestroy();

    v31(v10, v11);
    if (!v3[2])
    {
      goto LABEL_11;
    }
  }

  else
  {

    v8(v10, v11);
    if (!v3[2])
    {
      goto LABEL_11;
    }
  }

  v17 = sub_100057AFC(*(v0 + 16));
  if (v18)
  {
    v19 = *(v3[7] + 8 * v17);

    goto LABEL_14;
  }

LABEL_11:
  v20 = *(v0 + 40);
  sub_100072F54(v3, v20);

  v21 = sub_10000560C(&qword_10012A1F0, &unk_100109B30);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
  {
    sub_10000C460(*(v0 + 40), &qword_10012A1E8, &unk_100108F50);
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    v22 = *(v0 + 48);
    v19 = *(*(v0 + 40) + *(v21 + 48));
    v23 = *(v0 + 56) + 8;
    (*(v0 + 120))();
  }

LABEL_14:
  v24 = *(v0 + 152);
  v25 = *(v0 + 104);
  *(swift_task_alloc() + 16) = v19;
  os_unfair_lock_lock(v25 + 7);
  sub_100010E5C(&v25[4]);
  os_unfair_lock_unlock(v25 + 7);
  if (!v24)
  {

    v27 = *(v0 + 88);
    v26 = *(v0 + 96);
    v28 = *(v0 + 64);
    v29 = *(v0 + 40);

    v30 = *(v0 + 8);

    v30();
  }
}

void sub_10000F614(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = type metadata accessor for StoredPhoto();
  v82 = *(v7 - 8);
  v8 = *(v82 + 64);
  __chkstk_darwin(v7);
  v77 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = *(v72 + 64);
  __chkstk_darwin(v10);
  v78 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v76 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v75 = &v68 - v17;
  v18 = type metadata accessor for UUID();
  v70 = *(v18 - 8);
  v71 = v18;
  v19 = *(v70 + 64);
  __chkstk_darwin(v18);
  v79 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v83 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000560C(&qword_10012A1B8, &qword_100108F20);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = *(a2 + 56);
  v32 = &v68 - v31;
  os_unfair_lock_lock((v30 + 28));
  v84 = a1;
  sub_10000FEB0((v30 + 16), a1, v32);
  if (v3)
  {
    os_unfair_lock_unlock((v30 + 28));
    __break(1u);
    return;
  }

  v33 = 0;
  os_unfair_lock_unlock((v30 + 28));
  sub_10001053C(v32, v29);
  v34 = *(v22 + 48);
  if (v34(v29, 1, v21) == 1)
  {
    sub_10000C460(v29, &qword_10012A1B8, &qword_100108F20);
    v35 = a3;
    goto LABEL_4;
  }

  v80 = v32;
  v81 = 0;
  v74 = a3;
  v68 = v22;
  v69 = v21;
  (*(v22 + 32))(v83, v29, v21);
  v53 = DailyPhotosFaceCuration.DailyPhotosFace.localizedTitle.getter();
  v55 = v54;
  v56 = StoredPhoto.title.getter();
  if (v55)
  {
    if (!v57)
    {
      goto LABEL_24;
    }

    if (v53 == v56 && v55 == v57)
    {
    }

    else
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v58 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else if (v57)
  {
    goto LABEL_24;
  }

  v59 = DailyPhotosFaceCuration.DailyPhotosFace.localizedSubtitle.getter();
  v61 = v60;
  v62 = StoredPhoto.subtitle.getter();
  if (!v61)
  {
    if (!v63)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (!v63)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (v59 != v62 || v61 != v63)
  {
    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v67)
    {
      goto LABEL_27;
    }

LABEL_25:
    StoredPhoto.localIdentifier.getter();
    StoredPhoto.modificationDate.getter();
    StoredPhoto.creationDate.getter();
    StoredPhoto.parallaxScale.getter();
    v64 = v83;
    v82 = DailyPhotosFaceCuration.DailyPhotosFace.localizedTitle.getter();
    v78 = v65;
    DailyPhotosFaceCuration.DailyPhotosFace.localizedSubtitle.getter();
    v77 = v66;
    StoredPhoto.preferredLayout.getter();
    StoredPhoto.layouts.getter();
    StoredPhoto.accessibilityDescription.getter();
    StoredPhoto.init(localIdentifier:modificationDate:creationDate:parallaxScale:title:subtitle:preferredLayout:layouts:accessibilityDescription:)();
    (*(v68 + 8))(v64, v69);
    sub_10000C460(v80, &qword_10012A1B8, &qword_100108F20);
    return;
  }

LABEL_27:
  v21 = v69;
  (*(v68 + 8))(v83, v69);
  v35 = v74;
  v32 = v80;
  v33 = v81;
LABEL_4:
  v36 = v34(v32, 1, v21);
  v37 = (v82 + 16);
  if (v36 == 1)
  {
    v38 = v71;
    v80 = v32;
    v81 = v33;
    v39 = v78;
    static Log.daily.getter();
    v40 = *v37;
    v41 = v77;
    (*v37)(v77, v84, v7);
    v42 = v7;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v74 = v35;
      v46 = v45;
      v83 = swift_slowAlloc();
      v85 = v83;
      *v46 = 136315394;
      *(v46 + 4) = sub_100102F80(0x6F6C42646E656D61, 0xEA00000000006B63, &v85);
      *(v46 + 12) = 2080;
      v47 = v79;
      StoredPhoto.localIdentifier.getter();
      sub_100010E9C(&qword_10012A1C0, 255, &type metadata accessor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v76) = v44;
      v49 = v48;
      v51 = v50;
      (*(v70 + 8))(v47, v38);
      (*(v82 + 8))(v77, v42);
      v52 = sub_100102F80(v49, v51, &v85);

      *(v46 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v43, v76, "%s: %s has no caption data!", v46, 0x16u);
      swift_arrayDestroy();

      v35 = v74;

      (*(v72 + 8))(v78, v73);
    }

    else
    {

      (*(v82 + 8))(v41, v42);
      (*(v72 + 8))(v39, v73);
    }

    sub_10000C460(v80, &qword_10012A1B8, &qword_100108F20);
    v40(v35, v84, v42);
  }

  else
  {
    sub_10000C460(v32, &qword_10012A1B8, &qword_100108F20);
    (*v37)(v35, v84, v7);
  }
}

uint64_t sub_10000FEB0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v54 = type metadata accessor for UUID();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v54);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  v12 = type metadata accessor for StoredPhoto();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[8])
  {
    StoredPhoto.localIdentifier.getter();
    v23 = *a1;
    if (*(*a1 + 16))
    {
      v24 = sub_100057AFC(v9);
      if (v25)
      {
        v26 = v24;
        v27 = *(v23 + 56);
        v28 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
        v29 = *(v28 - 8);
        v30 = v29;
        v31 = v27 + *(v29 + 72) * v26;
        v32 = v55;
        (*(v29 + 16))(v55, v31, v28);
        (*(v5 + 8))(v9, v54);
        return (*(v30 + 56))(v32, 0, 1, v28);
      }
    }

    (*(v5 + 8))(v9, v54);
  }

  else
  {
    v52 = v20;
    v53 = v19;
    static Log.daily.getter();
    (*(v13 + 16))(v16, a2, v12);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v50 = v35;
      v37 = v36;
      v51 = swift_slowAlloc();
      v56 = v51;
      *v37 = 136315394;
      v38 = sub_100102F80(0x6F6C42646E656D61, 0xEA00000000006B63, &v56);
      v49 = v37;
      *(v37 + 4) = v38;
      *(v37 + 12) = 2080;
      StoredPhoto.localIdentifier.getter();
      sub_100010E9C(&qword_10012A1C0, 255, &type metadata accessor for UUID);
      v39 = v54;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v34;
      v42 = v41;
      (*(v5 + 8))(v11, v39);
      (*(v13 + 8))(v16, v12);
      v43 = sub_100102F80(v40, v42, &v56);

      v45 = v48;
      v44 = v49;
      *(v49 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v45, v50, "%s: trying to run amend block for %s, but the provider has no valid data", v44, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    (*(v52 + 8))(v22, v53);
  }

  v46 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
  return (*(*(v46 - 8) + 56))(v55, 1, 1, v46);
}

uint64_t sub_1000103E0()
{
  sub_10000C304((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100010444(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100010458(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000104A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001053C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012A1B8, &qword_100108F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000105AC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  v3 = type metadata accessor for DailyID();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v11 = *(v10 + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10001074C, 0, 0);
}

uint64_t sub_10001074C()
{
  v1 = v0[19];
  v2 = v0[8];
  DailyID.id.getter();
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1000107F0;
  v4 = v0[19];
  v5 = v0[9];

  return sub_10000EB64(v4);
}

uint64_t sub_1000107F0()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100010DD8;
  }

  else
  {
    v6 = sub_100010960;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100010960()
{
  v46 = v0;
  v1 = *(v0[9] + 56);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[18];
    v43 = sub_10006465C(*(v2 + 16), 0);
    v5 = sub_10006B7BC(&v45, &v43[(*(v4 + 80) + 32) & ~*(v4 + 80)], v3, v2);

    result = sub_100010E54();
    if (v5 != v3)
    {
      __break(1u);
      return result;
    }

    v7 = v43;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = v0[16];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[8];
  os_unfair_lock_unlock((v1 + 28));
  sub_10000560C(&qword_10012A1C8, &unk_100109560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001089C0;
  sub_100010E9C(&qword_10012A1D0, v15, type metadata accessor for DailyProvider);
  *(inited + 32) = j___s10PhotosFace13TimeUtilitiesO12currentEpochSivgZ();
  *(inited + 40) = v7;
  v16 = sub_10005D7D0(inited);
  swift_setDeallocating();

  sub_10000C460(inited + 32, &qword_10012A1D8, &unk_100108F40);
  static Log.daily.getter();
  (*(v10 + 16))(v9, v13, v12);

  v17 = Logger.logObject.getter();
  LOBYTE(v11) = static os_log_type_t.default.getter();

  v44 = v11;
  v18 = os_log_type_enabled(v17, v11);
  v19 = v0[15];
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[14];
  v23 = v7;
  v25 = v0[11];
  v24 = v0[12];
  if (v18)
  {
    v42 = v0[16];
    v26 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v26 = 136315650;
    sub_100010E9C(&qword_10012A1E0, 255, &type metadata accessor for DailyID);
    log = v17;
    v41 = v22;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v24 + 8))(v21, v25);
    v30 = sub_100102F80(v27, v29, &v45);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2048;
    v31 = *(v23 + 2);

    *(v26 + 14) = v31;

    *(v26 + 22) = 2080;
    sub_10000560C(&qword_100129E80, &unk_1001091F0);
    v32 = Dictionary.description.getter();
    v34 = v16;
    v35 = sub_100102F80(v32, v33, &v45);

    *(v26 + 24) = v35;
    _os_log_impl(&_mh_execute_header, log, v44, "%s: Found %ld daily photos: %s", v26, 0x20u);
    swift_arrayDestroy();

    (*(v19 + 8))(v42, v41);
  }

  else
  {

    (*(v24 + 8))(v21, v25);
    (*(v19 + 8))(v20, v22);
    v34 = v16;
  }

  v36 = v0[19];
  v37 = v0[16];
  v38 = v0[13];

  v39 = v0[1];

  return v39(v34);
}

uint64_t sub_100010DD8()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

uint64_t sub_100010E5C(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    return sub_10000DA14(*(v1 + 16));
  }

  return result;
}

uint64_t sub_100010E9C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100010EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = static TimeUtilities.currentEpoch.getter();
  v7 = static TimeUtilities.currentEpoch.getter();
  if (__OFADD__(v7, a3))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 + a3 < v6)
  {
LABEL_8:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  __chkstk_darwin(v7);
  v12[2] = a1;
  v12[3] = a2;
  if (*(sub_100011154(sub_10001293C, v12, v6, v8) + 16))
  {
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    v9 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v9 = &_swiftEmptyDictionarySingleton;
  }

  v13 = v9;

  sub_100012200(v10, 1, &v13);

  return v13;
}

uint64_t sub_100011014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v5 = static TimeUtilities.currentEpoch.getter();
  v6 = static TimeUtilities.currentEpoch.getter();
  if (__OFADD__(v6, a3))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 + a3 < v5)
  {
LABEL_8:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  __chkstk_darwin(v6);
  v11[2] = &v13;
  v11[3] = a2;
  if (*(sub_100011154(sub_1000128E0, v11, v5, v7) + 16))
  {
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v8 = &_swiftEmptyDictionarySingleton;
  }

  v12 = v8;

  sub_100012200(v9, 1, &v12);

  return v12;
}

uint64_t sub_100011154(void (*a1)(unint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = &_swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v7 = a3;
  v25 = &_swiftEmptyArrayStorage;
  sub_10005C4E8(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v25;
    v9 = a4;
    if (a4 <= v7)
    {
      v9 = v7;
    }

    v19 = v9 - v7 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v11 = v7;
      v22 = v7 + v8;
      a1(&v23, &v22);
      if (v4)
      {
        goto LABEL_22;
      }

      v13 = v23;
      v12 = v24;
      v25 = v6;
      v15 = v6[2];
      v14 = v6[3];
      if (v15 >= v14 >> 1)
      {
        v17 = v24;
        sub_10005C4E8((v14 > 1), v15 + 1, 1);
        v12 = v17;
        v6 = v25;
      }

      v6[2] = v15 + 1;
      v16 = &v6[2 * v15];
      v16[4] = v13;
      v16[5] = v12;
      if (a4 < v11)
      {
        goto LABEL_18;
      }

      if (v19 == ++v8)
      {
        goto LABEL_19;
      }

      v7 = v11;
      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1000112D8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = type metadata accessor for UUID();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v22 = &_swiftEmptyArrayStorage;
  sub_10005C508(0, v10, 0);
  v11 = v22;
  v12 = (a3 + 32);
  v17[1] = v6 + 32;
  while (1)
  {
    v13 = *v12++;
    v21 = v13;
    v19(&v21);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_10005C508(v14 > 1, v15 + 1, 1);
      v11 = v22;
    }

    v11[2] = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_100011488(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = a1;
  v2 = sub_10000560C(&qword_10012A200, &qword_100108F60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25[-v4];
  v6 = sub_10000560C(&qword_10012A310, &qword_100109008);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v25[-v12];
  sub_10000560C(&qword_10012A088, &qword_100108E40);
  v14 = *(*(swift_getOpaqueTypeConformance2() + 8) + 8);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v15 = *(v7 + 8);
  v26 = v6;
  v16 = v6;
  v17 = v15;
  v15(v11, v16);
  v18 = dispatch thunk of Collection.subscript.read();
  v20 = *v19;
  v18(v25, 0);
  v21 = [v20 uuid];

  if (v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    v22 = type metadata accessor for UUID();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v5, 1, v22) != 1)
    {
      v17(v13, v26);
      (*(v23 + 32))(v24, v5, v22);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100011774(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000560C(&qword_10012A200, &qword_100108F60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v10 = *(a2 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_11;
  }

  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v11 = v10;
  v12 = [v10 uuid];

  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) != 1)
  {
    (*(v14 + 32))(a3, v9, v13);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100011914(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ShuffleID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100011A4C, 0, 0);
}

uint64_t sub_100011A4C()
{
  v81 = v0;
  v1 = v0[2];
  ShuffleID.people.getter();
  v2 = ShuffleID.pets.getter();
  v3 = ShuffleID.nature.getter();
  LOBYTE(v1) = ShuffleID.cityscape.getter();
  v4 = objc_allocWithZone(PFCShuffle);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithPeople:isa pets:v2 & 1 nature:v3 & 1 cityscape:v1 & 1];

  v7 = [objc_opt_self() assetsForShuffle:v6];
  v8 = v0[5];
  v9 = v0[6];
  if (v7)
  {
    v10 = v7;
    v78 = v6;
    v11 = v0[12];
    v12 = v0[8];
    v14 = v0[3];
    v13 = v0[4];
    v15 = v0[2];
    sub_1000121B4();
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = sub_100011014(v16, *(v13 + 16), v14);
    static Log.shuffle.getter();
    (*(v9 + 16))(v12, v15, v8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v76 = v19;
      v20 = v0[8];
      v21 = v0[5];
      v22 = v0[6];
      v23 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v23 = 136315906;
      sub_100012170(&qword_10012A2F0);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v22 + 8))(v20, v21);
      v27 = sub_100102F80(v24, v26, v80);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      sub_10001256C(v17);
      v28 = Dictionary.description.getter();
      v30 = v29;

      v31 = sub_100102F80(v28, v30, v80);

      *(v23 + 14) = v31;
      *(v23 + 22) = 2048;
      if (v16 >> 62)
      {
        v32 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v32 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v33 = v0[12];
      v34 = v0[9];
      v35 = v0[10];

      *(v23 + 24) = v32;

      *(v23 + 32) = 2080;
      sub_10000560C(&qword_100129E80, &unk_1001091F0);
      v36 = Dictionary.description.getter();
      v38 = sub_100102F80(v36, v37, v80);

      *(v23 + 34) = v38;
      _os_log_impl(&_mh_execute_header, v18, v76, "%s: Picked %s out of %ld photos: %s", v23, 0x2Au);
      swift_arrayDestroy();

      (*(v35 + 8))(v33, v34);
    }

    else
    {
      v56 = v0[12];
      v57 = v0[9];
      v58 = v0[10];
      v59 = v0[8];
      v60 = v0[5];
      v61 = v0[6];
      swift_bridgeObjectRelease_n();

      (*(v61 + 8))(v59, v60);
      (*(v58 + 8))(v56, v57);
    }

    v63 = v0[11];
    v62 = v0[12];
    v65 = v0[7];
    v64 = v0[8];

    v66 = v0[1];

    return v66(v17);
  }

  else
  {
    v39 = v0[11];
    v40 = v0[7];
    v41 = v0[2];
    static Log.shuffle.getter();
    (*(v9 + 16))(v40, v41, v8);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[10];
    v77 = v0[11];
    v46 = v0[9];
    v48 = v0[6];
    v47 = v0[7];
    v49 = v0[5];
    if (v44)
    {
      v79 = v6;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v80[0] = v51;
      *v50 = 136315138;
      sub_100012170(&qword_10012A2F0);
      v75 = v46;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v43;
      v54 = v53;
      (*(v48 + 8))(v47, v49);
      v55 = sub_100102F80(v52, v54, v80);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v42, v74, "Couldn't find shuffle %s", v50, 0xCu);
      sub_10000C304(v51);

      v6 = v79;

      (*(v45 + 8))(v77, v75);
    }

    else
    {

      (*(v48 + 8))(v47, v49);
      (*(v45 + 8))(v77, v46);
    }

    v68 = v0[11];
    v69 = v0[12];
    v71 = v0[7];
    v70 = v0[8];
    sub_10000D790();
    swift_allocError();
    *v72 = 1;
    swift_willThrow();

    v73 = v0[1];

    return v73();
  }
}

uint64_t sub_100012170(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShuffleID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000121B4()
{
  result = qword_10012A2F8;
  if (!qword_10012A2F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012A2F8);
  }

  return result;
}

uint64_t sub_100012200(void *a1, char a2, void *a3)
{
  v46 = a1[2];
  if (!v46)
  {
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_100057BD0(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_100058158();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10000560C(&qword_10012A308, &qword_100109000);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

  sub_10005932C(v13, a2 & 1);
  v17 = *a3;
  v18 = sub_100057BD0(v7);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_28:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_29:
    _StringGuts.grow(_:)(30);
    v44._object = 0x8000000100107010;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v44);
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 39;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v14 = v18;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + 8 * v14) = v7;
  *(v21[7] + 8 * v14) = v6;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v46 != 1)
  {
    v25 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_100057BD0(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];

      if (v37 < v34)
      {
        sub_10005932C(v34, 1);
        v38 = *a3;
        v39 = sub_100057BD0(v28);
        if ((v36 & 1) != (v40 & 1))
        {
          goto LABEL_28;
        }

        v35 = v39;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v41 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v41[6] + 8 * v35) = v28;
      *(v41[7] + 8 * v35) = v27;
      v42 = v41[2];
      v23 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v41[2] = v43;
      v25 += 2;
      if (v46 == v26)
      {
      }
    }

    goto LABEL_27;
  }
}

uint64_t sub_10001256C(uint64_t a1)
{
  sub_10000560C(&qword_10012A0C8, &qword_100109580);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v22 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v21 = result + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = *(*(v22 + 48) + 8 * v15);
      v17 = *(*(v22 + 56) + 8 * v15);
      swift_getKeyPath();

      swift_getAtKeyPath();

      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v3[6] + 8 * v15) = v16;
      *(v3[7] + 8 * v15) = v23;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001271C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  sub_10000560C(&qword_10012A088, &qword_100108E40);
  v6 = *(*(swift_getOpaqueTypeConformance2() + 8) + 8);
  dispatch thunk of Collection.count.getter();
  v7 = pickPhotos(totalCount:day:picking:)();
  v10[2] = a2;
  v8 = sub_1000112D8(sub_10001295C, v10, v7);

  *a3 = v5;
  a3[1] = v8;
  return result;
}

uint64_t sub_1000127F8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v10 = *a2;
  if (v10 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = pickPhotos(totalCount:day:picking:)();
  __chkstk_darwin(v6);
  v9[2] = &v10;
  v7 = sub_1000112D8(sub_100012900, v9, v6);

  *a3 = v4;
  a3[1] = v7;
  return result;
}

uint64_t sub_100012994(int a1, void (*a2)(char *, char *, uint64_t), unint64_t a3)
{
  v69 = a3;
  v68 = a2;
  LODWORD(v72) = a1;
  v3 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v65 = &v57 - v5;
  v6 = type metadata accessor for Logger();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  __chkstk_darwin(v6);
  v67 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProtocolVersion();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for MessageBody();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for Message.Operation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for Message();
  v61 = *(v66 - 8);
  v18 = *(v61 + 64);
  v19 = __chkstk_darwin(v66);
  v20 = __chkstk_darwin(v19);
  v22 = &v57 - v21;
  __chkstk_darwin(v20);
  v24 = &v57 - v23;
  *v17 = v72;
  (*(v14 + 104))(v17, enum case for Message.Operation.event(_:), v13);
  v71[0] = v68;
  v71[1] = v69;
  sub_100041E80(v68, v69);
  static ProtocolVersion.current.getter();
  v25 = v70;
  MessageBody.init<A>(serializable:version:)();
  if (v25)
  {
    return (*(v14 + 8))(v17, v13);
  }

  v27 = v72;
  v69 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v18;
  Message.init(operation:content:complete:)();
  v28 = v67;
  static Log.network.getter();
  v29 = v61;
  v30 = v66;
  v68 = *(v61 + 16);
  v68(v22, v24, v66);
  v31 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v31, v58);
  v60 = v24;
  if (v32)
  {
    v57 = v31;
    v33 = swift_slowAlloc();
    v71[0] = swift_slowAlloc();
    *v33 = 136315394;
    v34 = 0x6E79536D75626C61;
    v35 = 0xD000000000000010;
    v36 = 0x8000000100106E60;
    if (v27 != 2)
    {
      v35 = 0x6E7953796C696164;
      v36 = 0xEE00796461655263;
    }

    if (v27)
    {
      v34 = 0xD000000000000010;
      v37 = 0x8000000100106E80;
    }

    else
    {
      v37 = 0xEE00796461655263;
    }

    if (v27 <= 1u)
    {
      v38 = v34;
    }

    else
    {
      v38 = v35;
    }

    if (v27 <= 1u)
    {
      v39 = v37;
    }

    else
    {
      v39 = v36;
    }

    v40 = sub_100102F80(v38, v39, v71);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2080;
    v41 = Message.shortDescription.getter();
    v43 = v42;
    v44 = *(v29 + 8);
    v59 = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v22;
    v46 = v66;
    v72 = v44;
    v44(v45, v66);
    v47 = sub_100102F80(v41, v43, v71);
    v30 = v46;

    *(v33 + 14) = v47;
    v48 = v57;
    _os_log_impl(&_mh_execute_header, v57, v58, "[NMC] Sending event %s: %s", v33, 0x16u);
    swift_arrayDestroy();

    (*(v63 + 8))(v67, v64);
  }

  else
  {

    v49 = *(v29 + 8);
    v59 = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72 = v49;
    v49(v22, v30);
    (*(v63 + 8))(v28, v64);
  }

  v50 = v62;
  v51 = type metadata accessor for TaskPriority();
  v52 = v65;
  (*(*(v51 - 8) + 56))(v65, 1, 1, v51);
  v53 = v69;
  v54 = v60;
  v68(v69, v60, v30);
  v55 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v56 = swift_allocObject();
  *(v56 + 2) = 0;
  *(v56 + 3) = 0;
  *(v56 + 4) = v50;
  (*(v29 + 32))(&v56[v55], v53, v30);

  sub_100005654(0, 0, v52, &unk_1001090E8, v56);

  return v72(v54, v30);
}

uint64_t sub_100013078(uint64_t a1)
{
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v33);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = &_swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v31[1] = v1;
  v42 = &_swiftEmptyArrayStorage;
  sub_10005C508(0, v7, 0);
  v8 = v42;
  v9 = -1 << *(a1 + 32);
  v41 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v36 = v3 + 32;
  v37 = v3 + 16;
  v32 = a1 + 64;
  v13 = v33;
  v34 = v7;
  v35 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v41 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v38 = v12;
    v40 = *(a1 + 36);
    v16 = *(v3 + 72);
    (*(v3 + 16))(v6, *(a1 + 48) + v16 * v11, v13);
    v42 = v8;
    v17 = v13;
    v19 = v8[2];
    v18 = v8[3];
    v20 = (v19 + 1);
    if (v19 >= v18 >> 1)
    {
      v39 = (v19 + 1);
      sub_10005C508(v18 > 1, v19 + 1, 1);
      v20 = v39;
      v8 = v42;
    }

    v8[2] = v20;
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v39 = v8;
    v22 = v8 + v21 + v19 * v16;
    v23 = v3;
    result = (*(v3 + 32))(v22, v6, v17);
    v14 = 1 << *(v35 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v24 = *(v41 + 8 * v15);
    if ((v24 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    v13 = v17;
    a1 = v35;
    if (v40 != *(v35 + 36))
    {
      goto LABEL_25;
    }

    v25 = v24 & (-2 << (v11 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v15 << 6;
      v27 = v15 + 1;
      v28 = (v32 + 8 * v15);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_100042AF0(v11, v40, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_19;
        }
      }

      result = sub_100042AF0(v11, v40, 0);
LABEL_19:
      v13 = v33;
    }

    v12 = v38 + 1;
    v11 = v14;
    v3 = v23;
    v8 = v39;
    if (v38 + 1 == v34)
    {
      return v8;
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
  return result;
}

uint64_t sub_1000133BC()
{
  static Platform.current.getter();
  v1 = Platform.rawValue.getter();
  if (v1 == Platform.rawValue.getter())
  {
    v2 = *(v0[2] + 16);
    v0[3] = v2;

    return _swift_task_switch(sub_100013480, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100013480()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_100109068;
  *(v3 + 24) = v1;

  sub_1000FCA38(1, &unk_100109070, v3);

  return _swift_task_switch(sub_100013550, 0, 0);
}

uint64_t sub_100013550()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1000135BC, v2, 0);
}

uint64_t sub_1000135BC()
{
  v1 = *(v0 + 24);
  sub_1000FCA38(3, &unk_100109080, *(v0 + 16));

  return _swift_task_switch(sub_100013648, 0, 0);
}

uint64_t sub_100013648()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1000136B4, v2, 0);
}

uint64_t sub_1000136B4()
{
  v1 = v0[3];
  sub_1000FCA38(2, &unk_100109090, v0[2]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100013758()
{
  v1 = sub_100041B5C();
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1000137F8;
  v3 = v0[2];

  return sub_100014318(v1);
}

uint64_t sub_1000137F8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_100013978;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100013914;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100013914()
{
  sub_100103EAC(2);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013978()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1000139DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100013A6C;

  return sub_100013BB8();
}

uint64_t sub_100013A6C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(*v4 + 16);
  v9 = *v4;

  if (v3)
  {
    v10 = *(v9 + 8);

    return v10();
  }

  else
  {
    v12 = *(v9 + 8);

    return v12(a1, a2, a3 & 1);
  }
}

uint64_t sub_100013BD8()
{
  v1 = *(*(v0 + 16) + 32);
  v2 = async function pointer to GalleryDatabase.queryList()[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100013C70;

  return GalleryDatabase.queryList()();
}

uint64_t sub_100013C70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_100013DBC, 0, 0);
  }
}

uint64_t sub_100013DBC()
{
  v1 = *(v0[4] + 16);

  if (v1)
  {
LABEL_2:
    v2 = v0[1];

    return v2(0, 0, 1);
  }

  v4 = sub_100041B5C();
  v0[5] = v4;
  if (!*(v4 + 16))
  {

    goto LABEL_2;
  }

  v5 = v4;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_100013EC0;
  v7 = v0[2];

  return sub_100014318(v5);
}

uint64_t sub_100013EC0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_100014224;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100013FDC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100013FDC()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100014084;

  return sub_100014A8C();
}

uint64_t sub_100014084()
{
  v2 = *(*v1 + 64);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1000141B4, 0, 0);
  }
}

uint64_t sub_1000141B4()
{
  sub_100103EAC(2);
  v1 = *(v0 + 8);

  return v1(0, 0, 1);
}

uint64_t sub_100014224()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100014288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100043E40;

  return sub_100013BB8();
}

uint64_t sub_100014318(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ShuffleID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000143D8, 0, 0);
}

uint64_t sub_1000143D8()
{
  v0[7] = *(v0[3] + 32);
  v1 = async function pointer to GalleryDatabase.deleteAll()[1];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100014474;

  return GalleryDatabase.deleteAll()();
}

uint64_t sub_100014474()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 48);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_1000145C0, 0, 0);
  }
}

uint64_t sub_1000145C0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v2 + 32);
  *(v0 + 104) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 72) = v6;
    *(v0 + 80) = v8;
    (*(v1 + 16))(*(v0 + 48), *(v7 + 48) + *(v1 + 72) * (__clz(__rbit64(v6)) | (v8 << 6)), *(v0 + 32));
    v10 = async function pointer to GalleryDatabase.insert(id:)[1];
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_100014750;
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);

    return GalleryDatabase.insert(id:)(v12);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v0 + 48);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100014750()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[5] + 8))(v2[6], v2[4]);
  if (v0)
  {
    v5 = sub_100014A20;
  }

  else
  {
    v5 = sub_1000148B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000148B8(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = (*(v1 + 72) - 1) & *(v1 + 72);
  if (v3)
  {
    v4 = *(v1 + 16);
LABEL_7:
    *(v1 + 72) = v3;
    *(v1 + 80) = v2;
    (*(*(v1 + 40) + 16))(*(v1 + 48), *(v4 + 48) + *(*(v1 + 40) + 72) * (__clz(__rbit64(v3)) | (v2 << 6)), *(v1 + 32));
    v6 = async function pointer to GalleryDatabase.insert(id:)[1];
    v7 = swift_task_alloc();
    *(v1 + 88) = v7;
    *v7 = v1;
    v7[1] = sub_100014750;
    v8 = *(v1 + 56);
    a1 = *(v1 + 48);

    return GalleryDatabase.insert(id:)(a1);
  }

  else
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return GalleryDatabase.insert(id:)(a1);
      }

      if (v5 >= (((1 << *(v1 + 104)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v1 + 16);
      v3 = *(v4 + 8 * v5 + 56);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    v9 = *(v1 + 48);
    v10 = *(v1 + 16);

    v11 = *(v1 + 8);

    return v11();
  }
}

uint64_t sub_100014A20()
{
  v1 = v0[2];

  v2 = v0[12];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100014A8C()
{
  v1[2] = v0;
  v2 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for ShuffleID();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for CommunicationActor();
  v1[22] = static CommunicationActor.shared.getter();
  v1[23] = static CommunicationActor.shared.getter();
  v11 = type metadata accessor for GalleryDatabase();
  v12 = sub_1000438BC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase);
  v13 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()[1];
  v14 = swift_task_alloc();
  v1[24] = v14;
  *v14 = v1;
  v14[1] = sub_100014D28;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v11, v12);
}

uint64_t sub_100014D28(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 184);
  v7 = *(*v2 + 168);
  v12 = *v2;
  v4[25] = a1;
  v4[26] = v3;

  v4[27] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v3)
  {
    v10 = sub_100015788;
  }

  else
  {
    v10 = sub_100014EBC;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100014EBC()
{
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[28] = v6;
  v0[29] = v5;

  return _swift_task_switch(sub_100014F48, v6, v5);
}

uint64_t sub_100014F48()
{
  v129 = v0;
  v1 = v0[25];
  v2 = *(v1 + 16);
  v0[30] = v2;
  if (!v2)
  {
    v26 = v0[22];
    v27 = v0[20];
    v28 = v0[2];

    static Log.session.getter();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[20];
    v34 = v0[13];
    v33 = v0[14];
    v35 = v0[2];
    if (v31)
    {
      v124 = v0[20];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v128[0] = v37;
      *v36 = 136315138;
      v38 = *(v35 + 16);
      v39 = PhotosFaceType.description.getter();
      v41 = v40;

      v42 = sub_100102F80(v39, v41, v128);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "No %s faces. Exiting.", v36, 0xCu);
      sub_10000C304(v37);

      (*(v33 + 8))(v124, v34);
    }

    else
    {
      v96 = v0[2];

      (*(v33 + 8))(v32, v34);
    }

    v98 = v0[19];
    v97 = v0[20];
    v100 = v0[17];
    v99 = v0[18];
    v102 = v0[15];
    v101 = v0[16];
    v104 = v0[11];
    v103 = v0[12];
    v106 = v0[9];
    v105 = v0[10];
    v122 = v0[8];
    v127 = v0[5];

    v69 = v0[1];
    goto LABEL_14;
  }

  v3 = v0[19];
  v4 = v0[2];
  static Log.session.getter();
  swift_bridgeObjectRetain_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  v9 = v0[19];
  v10 = v0[13];
  v11 = v0[14];
  if (v7)
  {
    v117 = v0[6];
    v123 = v0[19];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v13 = 134218498;
    *(v13 + 4) = *(v1 + 16);
    *(v13 + 12) = 2080;
    v14 = *(v12 + 16);
    v15 = PhotosFaceType.description.getter();
    v119 = v10;
    v17 = v16;

    v18 = sub_100102F80(v15, v17, v128);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2080;
    v19 = Array.description.getter();
    v21 = v20;
    swift_bridgeObjectRelease_n();
    v22 = sub_100102F80(v19, v21, v128);

    *(v13 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "Processing %ld %s: %s", v13, 0x20u);
    swift_arrayDestroy();

    v25 = *(v11 + 8);
    v24 = v11 + 8;
    v23 = v25;
    v25(v123, v119);
  }

  else
  {
    v43 = v0[2];
    v44 = v0[25];
    swift_bridgeObjectRelease_n();

    v45 = *(v11 + 8);
    v24 = v11 + 8;
    v23 = v45;
    v45(v9, v10);
  }

  v0[31] = v24;
  v0[32] = v23;
  v46 = v0[7];
  v47 = v0[25];
  v48 = v0[26];
  v0[36] = 0;
  v0[37] = 0;
  v0[35] = 0;
  v49 = *(v47 + 16);

  if (!v49)
  {
    __break(1u);
    return result;
  }

  v53 = *(v46 + 16);
  v52 = v46 + 16;
  v51 = v53;
  v54 = v0[12];
  v55 = v0[6];
  v56 = (*(v52 + 64) + 32) & ~*(v52 + 64);
  v0[38] = v53;
  v0[39] = v52 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v53(v54, result + v56, v55);
  static Task<>.checkCancellation()();
  v57 = v0[6];
  if (v48)
  {
    v58 = v0[25];
    v59 = v0[22];
    (*(v0[7] + 8))(v0[12], v0[6]);

    swift_bridgeObjectRelease_n();
    v61 = v0[19];
    v60 = v0[20];
    v63 = v0[17];
    v62 = v0[18];
    v65 = v0[15];
    v64 = v0[16];
    v67 = v0[11];
    v66 = v0[12];
    v68 = v0[10];
    v118 = v0[9];
    v120 = v0[8];
    v125 = v0[5];

    v69 = v0[1];
LABEL_14:

    return v69();
  }

  v70 = v0[17];
  v72 = v0[11];
  v71 = v0[12];
  v73 = v0[2];
  static Log.photos.getter();
  v51(v72, v71, v57);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  v76 = os_log_type_enabled(v74, v75);
  v78 = v0[31];
  v77 = v0[32];
  v79 = v0[17];
  v80 = v0[13];
  v81 = v0[11];
  if (v76)
  {
    v115 = v75;
    v82 = v0[10];
    v113 = v0[7];
    v121 = v0[17];
    v126 = v0[32];
    v83 = v0[6];
    v84 = v0[2];
    log = v74;
    v85 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v85 = 136315394;
    v86 = *(v84 + 16);
    v116 = v80;
    v87 = PhotosFaceType.description.getter();
    v89 = v88;

    v90 = sub_100102F80(v87, v89, v128);

    *(v85 + 4) = v90;
    *(v85 + 12) = 2080;
    v51(v82, v81, v83);
    v91 = *(v113 + 8);
    v91(v81, v83);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v92 = dispatch thunk of CustomStringConvertible.description.getter();
    v94 = v93;
    v91(v82, v83);
    v95 = sub_100102F80(v92, v94, v128);

    *(v85 + 14) = v95;
    _os_log_impl(&_mh_execute_header, log, v115, "Processing %s face %s", v85, 0x16u);
    swift_arrayDestroy();

    v126(v121, v116);
  }

  else
  {
    v107 = v0[2];
    v91 = *(v0[7] + 8);
    v91(v0[11], v0[6]);

    v77(v79, v80);
  }

  v0[42] = v91;
  v108 = static TestProperties.bufferSize.getter();
  v109 = swift_task_alloc();
  v0[43] = v109;
  *v109 = v0;
  v109[1] = sub_100015AE0;
  v110 = v0[12];
  v111 = v0[5];
  v112 = v0[2];

  return sub_1000203C4(v111, v110, v108);
}

uint64_t sub_100015788()
{
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100043E34, v6, v5);
}

uint64_t sub_100015814()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = v2[25];

    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_100043E38;
  }

  else
  {
    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_100015930;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100015930()
{
  v1 = *(*(v0 + 16) + 104);
  v2 = swift_task_alloc();
  *(v0 + 320) = v2;
  *v2 = v0;
  v2[1] = sub_1000159C4;

  return sub_10006254C();
}

uint64_t sub_1000159C4()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = v2[25];

    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_100043E3C;
  }

  else
  {
    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_100043E24;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100015AE0()
{
  v2 = *(*v1 + 344);
  v3 = *v1;
  v3[44] = v0;

  if (v0)
  {
    v4 = v3[28];
    v5 = v3[29];

    return _swift_task_switch(sub_100015E24, v4, v5);
  }

  else
  {
    v6 = async function pointer to AsyncSequence.collect()[1];
    v7 = swift_task_alloc();
    v3[45] = v7;
    v8 = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
    *v7 = v3;
    v7[1] = sub_100015C94;
    v9 = v3[5];
    v10 = v3[3];

    return AsyncSequence.collect()(v10, v8);
  }
}

uint64_t sub_100015C94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  v4[46] = a1;
  v4[47] = v1;

  (*(v3[4] + 8))(v3[5], v3[3]);
  v7 = v3[29];
  v8 = v3[28];
  if (v1)
  {
    v9 = sub_100016E84;
  }

  else
  {
    v9 = sub_100016624;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100015E24()
{
  v94 = v0;
  v1 = v0[44];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[6];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[38];
    v77 = v0[39];
    v88 = v0[31];
    v90 = v0[32];
    v83 = v0[13];
    v85 = v0[15];
    v87 = v0[12];
    v82 = v9;
    v11 = v0[10];
    v12 = v0[6];
    v13 = v0[7] + 8;
    v14 = v0[8];
    v15 = v0[42];
    v16 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    log = swift_slowAlloc();
    v93[0] = log;
    *v16 = 136315394;
    v10(v11, v14, v12);
    v15(v14, v12);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v15(v11, v12);
    v20 = sub_100102F80(v17, v19, v93);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v78 = v21;
    _os_log_impl(&_mh_execute_header, v8, v82, "Failed to process face %s with error %@", v16, 0x16u);
    sub_10000C460(v78, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v90(v85, v83);
    result = (v15)(v87, v12);
  }

  else
  {
    v23 = v0[31];
    v91 = v0[32];
    v24 = v0[15];
    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[6];
    v28 = v0[7] + 8;
    v29 = v8;
    v30 = v0[42];
    v30(v0[8], v27);

    v91(v24, v25);
    result = v30(v26, v27);
  }

  v32 = v0[36];
  v31 = v0[37];
  v0[48] = v31;
  v33 = v0[35] + 1;
  if (v33 == v0[30])
  {
    v34 = v0[25];

    v35 = swift_task_alloc();
    v0[33] = v35;
    *v35 = v0;
    v35[1] = sub_100015814;
    v36 = v0[2];

    return sub_10002D750();
  }

  else
  {
    v0[36] = v32;
    v0[37] = v31;
    v0[35] = v33;
    v37 = v0[25];
    if (v33 >= *(v37 + 16))
    {
      __break(1u);
    }

    else
    {
      v38 = v0[12];
      v39 = v0[6];
      v40 = v0[7];
      v42 = *(v40 + 16);
      v40 += 16;
      v41 = v42;
      v43 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64)) + *(v40 + 56) * v33;
      v0[38] = v42;
      v0[39] = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v42(v38, v43, v39);
      static Task<>.checkCancellation()();
      v44 = v0[6];
      v45 = v0[17];
      v47 = v0[11];
      v46 = v0[12];
      v48 = v0[2];
      static Log.photos.getter();
      v42(v47, v46, v44);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v53 = v0[31];
      v52 = v0[32];
      v54 = v0[17];
      v55 = v0[13];
      v56 = v0[11];
      if (v51)
      {
        v84 = v50;
        v57 = v0[10];
        v79 = v0[7];
        v89 = v0[17];
        v92 = v0[32];
        v58 = v0[6];
        v59 = v0[2];
        loga = v49;
        v60 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v60 = 136315394;
        v61 = *(v59 + 16);
        v86 = v55;
        v62 = PhotosFaceType.description.getter();
        v64 = v63;

        v65 = sub_100102F80(v62, v64, v93);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2080;
        v41(v57, v56, v58);
        v66 = *(v79 + 8);
        v66(v56, v58);
        sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v66(v57, v58);
        v70 = sub_100102F80(v67, v69, v93);

        *(v60 + 14) = v70;
        _os_log_impl(&_mh_execute_header, loga, v84, "Processing %s face %s", v60, 0x16u);
        swift_arrayDestroy();

        v92(v89, v86);
      }

      else
      {
        v71 = v0[2];
        v66 = *(v0[7] + 8);
        v66(v0[11], v0[6]);

        v52(v54, v55);
      }

      v0[42] = v66;
      v72 = static TestProperties.bufferSize.getter();
      v73 = swift_task_alloc();
      v0[43] = v73;
      *v73 = v0;
      v73[1] = sub_100015AE0;
      v74 = v0[12];
      v75 = v0[5];
      v76 = v0[2];

      return sub_1000203C4(v75, v74, v72);
    }
  }

  return result;
}

uint64_t sub_100016624()
{
  v118 = v0;
  v1 = v0[46];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[2];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_bridgeObjectRetain_n();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  log = v9;
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[46];
  v114 = v0[42];
  if (v11)
  {
    v98 = v0[38];
    v99 = v0[39];
    v106 = v0[31];
    v108 = v0[32];
    v101 = v0[13];
    v103 = v0[16];
    v104 = v0[12];
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[6];
    v97 = v0[7] + 8;
    v16 = v0[2];
    v17 = swift_slowAlloc();
    v117[0] = swift_slowAlloc();
    *v17 = 136315650;
    v18 = *(v16 + 16);
    v19 = PhotosFaceType.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, v117);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    LOBYTE(v21) = v10;
    v23 = *(v12 + 16);

    *(v17 + 14) = v23;

    *(v17 + 22) = 2080;
    v98(v13, v14, v15);
    v114(v14, v15);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v114(v13, v15);
    v27 = sub_100102F80(v24, v26, v117);

    *(v17 + 24) = v27;
    _os_log_impl(&_mh_execute_header, log, v21, "Processed %s %ld photos from %s", v17, 0x20u);
    swift_arrayDestroy();

    v108(v103, v101);
    v114(v104, v15);
  }

  else
  {
    v28 = v0[31];
    v109 = v0[32];
    v29 = v0[16];
    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[9];
    v33 = v0[6];
    v34 = v0[7];
    v35 = v0[2];

    v114(v32, v33);

    v109(v29, v30);
    v114(v31, v33);
  }

  v36 = v0[36];
  v37 = *(v0[46] + 16);

  v39 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
    goto LABEL_21;
  }

  v40 = v0[47];
  v0[48] = v39;
  v41 = v0[35] + 1;
  if (v41 == v0[30])
  {
    v42 = v0[25];

    v43 = swift_task_alloc();
    v0[33] = v43;
    *v43 = v0;
    v43[1] = sub_100015814;
    v44 = v0[2];

    return sub_10002D750();
  }

  v0[36] = v39;
  v0[37] = v39;
  v0[35] = v41;
  v45 = v0[25];
  if (v41 >= *(v45 + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v46 = v0[12];
  v47 = v0[6];
  v48 = v0[7];
  v50 = *(v48 + 16);
  v48 += 16;
  v49 = v50;
  v51 = v45 + ((*(v48 + 64) + 32) & ~*(v48 + 64)) + *(v48 + 56) * v41;
  v0[38] = v50;
  v0[39] = v48 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50(v46, v51, v47);
  static Task<>.checkCancellation()();
  v52 = v0[6];
  if (v40)
  {
    v53 = v0[25];
    v54 = v0[22];
    (*(v0[7] + 8))(v0[12], v0[6]);

    swift_bridgeObjectRelease_n();
    v56 = v0[19];
    v55 = v0[20];
    v58 = v0[17];
    v57 = v0[18];
    v60 = v0[15];
    v59 = v0[16];
    v62 = v0[11];
    v61 = v0[12];
    v63 = v0[10];
    v110 = v0[9];
    loga = v0[8];
    v115 = v0[5];

    v64 = v0[1];

    return v64();
  }

  else
  {
    v65 = v0[17];
    v67 = v0[11];
    v66 = v0[12];
    v68 = v0[2];
    static Log.photos.getter();
    v49(v67, v66, v52);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    v71 = os_log_type_enabled(v69, v70);
    v73 = v0[31];
    v72 = v0[32];
    v74 = v0[17];
    v75 = v0[13];
    v76 = v0[11];
    if (v71)
    {
      v105 = v70;
      v77 = v0[10];
      v100 = v0[7];
      logb = v0[17];
      v116 = v0[32];
      v78 = v0[6];
      v79 = v0[2];
      v102 = v69;
      v80 = swift_slowAlloc();
      v117[0] = swift_slowAlloc();
      *v80 = 136315394;
      v81 = *(v79 + 16);
      v107 = v75;
      v82 = PhotosFaceType.description.getter();
      v84 = v83;

      v85 = sub_100102F80(v82, v84, v117);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      v49(v77, v76, v78);
      v86 = *(v100 + 8);
      v86(v76, v78);
      sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v86(v77, v78);
      v90 = sub_100102F80(v87, v89, v117);

      *(v80 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v102, v105, "Processing %s face %s", v80, 0x16u);
      swift_arrayDestroy();

      v116(logb, v107);
    }

    else
    {
      v91 = v0[2];
      v86 = *(v0[7] + 8);
      v86(v0[11], v0[6]);

      v72(v74, v75);
    }

    v0[42] = v86;
    v92 = static TestProperties.bufferSize.getter();
    v93 = swift_task_alloc();
    v0[43] = v93;
    *v93 = v0;
    v93[1] = sub_100015AE0;
    v94 = v0[12];
    v95 = v0[5];
    v96 = v0[2];

    return sub_1000203C4(v95, v94, v92);
  }
}

uint64_t sub_100016E84()
{
  v94 = v0;
  v1 = v0[47];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[6];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[38];
    v77 = v0[39];
    v88 = v0[31];
    v90 = v0[32];
    v83 = v0[13];
    v85 = v0[15];
    v87 = v0[12];
    v82 = v9;
    v11 = v0[10];
    v12 = v0[6];
    v13 = v0[7] + 8;
    v14 = v0[8];
    v15 = v0[42];
    v16 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    log = swift_slowAlloc();
    v93[0] = log;
    *v16 = 136315394;
    v10(v11, v14, v12);
    v15(v14, v12);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v15(v11, v12);
    v20 = sub_100102F80(v17, v19, v93);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v78 = v21;
    _os_log_impl(&_mh_execute_header, v8, v82, "Failed to process face %s with error %@", v16, 0x16u);
    sub_10000C460(v78, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v90(v85, v83);
    result = (v15)(v87, v12);
  }

  else
  {
    v23 = v0[31];
    v91 = v0[32];
    v24 = v0[15];
    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[6];
    v28 = v0[7] + 8;
    v29 = v8;
    v30 = v0[42];
    v30(v0[8], v27);

    v91(v24, v25);
    result = v30(v26, v27);
  }

  v32 = v0[36];
  v31 = v0[37];
  v0[48] = v31;
  v33 = v0[35] + 1;
  if (v33 == v0[30])
  {
    v34 = v0[25];

    v35 = swift_task_alloc();
    v0[33] = v35;
    *v35 = v0;
    v35[1] = sub_100015814;
    v36 = v0[2];

    return sub_10002D750();
  }

  else
  {
    v0[36] = v32;
    v0[37] = v31;
    v0[35] = v33;
    v37 = v0[25];
    if (v33 >= *(v37 + 16))
    {
      __break(1u);
    }

    else
    {
      v38 = v0[12];
      v39 = v0[6];
      v40 = v0[7];
      v42 = *(v40 + 16);
      v40 += 16;
      v41 = v42;
      v43 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64)) + *(v40 + 56) * v33;
      v0[38] = v42;
      v0[39] = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v42(v38, v43, v39);
      static Task<>.checkCancellation()();
      v44 = v0[6];
      v45 = v0[17];
      v47 = v0[11];
      v46 = v0[12];
      v48 = v0[2];
      static Log.photos.getter();
      v42(v47, v46, v44);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v53 = v0[31];
      v52 = v0[32];
      v54 = v0[17];
      v55 = v0[13];
      v56 = v0[11];
      if (v51)
      {
        v84 = v50;
        v57 = v0[10];
        v79 = v0[7];
        v89 = v0[17];
        v92 = v0[32];
        v58 = v0[6];
        v59 = v0[2];
        loga = v49;
        v60 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v60 = 136315394;
        v61 = *(v59 + 16);
        v86 = v55;
        v62 = PhotosFaceType.description.getter();
        v64 = v63;

        v65 = sub_100102F80(v62, v64, v93);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2080;
        v41(v57, v56, v58);
        v66 = *(v79 + 8);
        v66(v56, v58);
        sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v66(v57, v58);
        v70 = sub_100102F80(v67, v69, v93);

        *(v60 + 14) = v70;
        _os_log_impl(&_mh_execute_header, loga, v84, "Processing %s face %s", v60, 0x16u);
        swift_arrayDestroy();

        v92(v89, v86);
      }

      else
      {
        v71 = v0[2];
        v66 = *(v0[7] + 8);
        v66(v0[11], v0[6]);

        v52(v54, v55);
      }

      v0[42] = v66;
      v72 = static TestProperties.bufferSize.getter();
      v73 = swift_task_alloc();
      v0[43] = v73;
      *v73 = v0;
      v73[1] = sub_100015AE0;
      v74 = v0[12];
      v75 = v0[5];
      v76 = v0[2];

      return sub_1000203C4(v75, v74, v72);
    }
  }

  return result;
}

uint64_t sub_100017684()
{
  v1[2] = v0;
  v2 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DailyID();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for CommunicationActor();
  v1[22] = static CommunicationActor.shared.getter();
  v1[23] = static CommunicationActor.shared.getter();
  v11 = type metadata accessor for DailyDatabase();
  v12 = sub_1000438BC(&qword_10012A468, &type metadata accessor for DailyDatabase);
  v13 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()[1];
  v14 = swift_task_alloc();
  v1[24] = v14;
  *v14 = v1;
  v14[1] = sub_100017920;

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryList()(v11, v12);
}

uint64_t sub_100017920(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 184);
  v7 = *(*v2 + 168);
  v12 = *v2;
  v4[25] = a1;
  v4[26] = v3;

  v4[27] = sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v3)
  {
    v10 = sub_100015788;
  }

  else
  {
    v10 = sub_100017AB4;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100017AB4()
{
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[28] = v6;
  v0[29] = v5;

  return _swift_task_switch(sub_100017B40, v6, v5);
}

uint64_t sub_100017B40()
{
  v66 = v0;
  v1 = v0[25];
  v2 = *(v1 + 16);
  v0[30] = v2;
  if (v2)
  {
    v3 = v0[19];
    v4 = v0[2];
    static Log.session.getter();
    swift_bridgeObjectRetain_n();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[25];
    v9 = v0[19];
    v10 = v0[13];
    v11 = v0[14];
    if (v7)
    {
      v59 = v0[6];
      v62 = v0[19];
      v12 = v0[2];
      v13 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v13 = 134218498;
      *(v13 + 4) = *(v1 + 16);
      *(v13 + 12) = 2080;
      v14 = *(v12 + 16);
      v15 = PhotosFaceType.description.getter();
      v60 = v10;
      v17 = v16;

      v18 = sub_100102F80(v15, v17, &v65);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2080;
      v19 = Array.description.getter();
      v21 = v20;
      swift_bridgeObjectRelease_n();
      v22 = sub_100102F80(v19, v21, &v65);

      *(v13 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v5, v6, "Processing %ld %s: %s", v13, 0x20u);
      swift_arrayDestroy();

      v25 = *(v11 + 8);
      v24 = v11 + 8;
      v23 = v25;
      v25(v62, v60);
    }

    else
    {
      v43 = v0[2];
      v44 = v0[25];
      swift_bridgeObjectRelease_n();

      v45 = *(v11 + 8);
      v24 = v11 + 8;
      v23 = v45;
      v45(v9, v10);
    }

    v0[31] = v24;
    v0[32] = v23;
    v0[33] = *(v0[2] + 32);

    return _swift_task_switch(sub_100017FA4, 0, 0);
  }

  else
  {
    v26 = v0[22];
    v27 = v0[20];
    v28 = v0[2];

    static Log.session.getter();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[20];
    v34 = v0[13];
    v33 = v0[14];
    v35 = v0[2];
    if (v31)
    {
      v63 = v0[20];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v65 = v37;
      *v36 = 136315138;
      v38 = *(v35 + 16);
      v39 = PhotosFaceType.description.getter();
      v41 = v40;

      v42 = sub_100102F80(v39, v41, &v65);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "No %s faces. Exiting.", v36, 0xCu);
      sub_10000C304(v37);

      (*(v33 + 8))(v63, v34);
    }

    else
    {
      v46 = v0[2];

      (*(v33 + 8))(v32, v34);
    }

    v48 = v0[19];
    v47 = v0[20];
    v50 = v0[17];
    v49 = v0[18];
    v52 = v0[15];
    v51 = v0[16];
    v54 = v0[11];
    v53 = v0[12];
    v56 = v0[9];
    v55 = v0[10];
    v61 = v0[8];
    v64 = v0[5];

    v57 = v0[1];

    return v57();
  }
}

uint64_t sub_100017FA4()
{
  v1 = *(v0[33] + 56);
  os_unfair_lock_lock((v1 + 28));
  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 28));
  v2 = v0[28];
  v3 = v0[29];

  return _swift_task_switch(sub_10001801C, v2, v3);
}

uint64_t sub_10001801C()
{
  v67 = v0;
  v1 = v0[7];
  v2 = v0[25];
  v3 = v0[26];
  v0[37] = 0;
  v0[38] = 0;
  v0[36] = 0;
  v4 = *(v2 + 16);

  if (v4)
  {
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v6 = v8;
    v9 = v0[12];
    v10 = v0[6];
    v11 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v0[39] = v8;
    v0[40] = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v9, result + v11, v10);
    static Task<>.checkCancellation()();
    v12 = v0[6];
    if (v3)
    {
      v13 = v0[25];
      v14 = v0[22];
      (*(v0[7] + 8))(v0[12], v0[6]);

      swift_bridgeObjectRelease_n();
      v16 = v0[19];
      v15 = v0[20];
      v18 = v0[17];
      v17 = v0[18];
      v20 = v0[15];
      v19 = v0[16];
      v22 = v0[11];
      v21 = v0[12];
      v23 = v0[10];
      v61 = v0[9];
      v62 = v0[8];
      v64 = v0[5];

      v24 = v0[1];

      return v24();
    }

    else
    {
      v25 = v0[17];
      v27 = v0[11];
      v26 = v0[12];
      v28 = v0[2];
      static Log.photos.getter();
      v6(v27, v26, v12);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      v31 = os_log_type_enabled(v29, v30);
      v33 = v0[31];
      v32 = v0[32];
      v34 = v0[17];
      v35 = v0[13];
      v36 = v0[11];
      if (v31)
      {
        v59 = v30;
        v37 = v0[10];
        v57 = v0[7];
        v63 = v0[17];
        v65 = v0[32];
        v38 = v0[6];
        v39 = v0[2];
        log = v29;
        v40 = swift_slowAlloc();
        v66[0] = swift_slowAlloc();
        *v40 = 136315394;
        v41 = *(v39 + 16);
        v60 = v35;
        v42 = PhotosFaceType.description.getter();
        v44 = v43;

        v45 = sub_100102F80(v42, v44, v66);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2080;
        v6(v37, v36, v38);
        v46 = *(v57 + 8);
        v46(v36, v38);
        sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        v46(v37, v38);
        v50 = sub_100102F80(v47, v49, v66);

        *(v40 + 14) = v50;
        _os_log_impl(&_mh_execute_header, log, v59, "Processing %s face %s", v40, 0x16u);
        swift_arrayDestroy();

        v65(v63, v60);
      }

      else
      {
        v51 = v0[2];
        v46 = *(v0[7] + 8);
        v46(v0[11], v0[6]);

        v32(v34, v35);
      }

      v0[43] = v46;
      v52 = static TestProperties.bufferSize.getter();
      v53 = swift_task_alloc();
      v0[44] = v53;
      *v53 = v0;
      v53[1] = sub_100018C84;
      v54 = v0[12];
      v55 = v0[5];
      v56 = v0[2];

      return sub_100020A84(v55, v54, v52);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000184B8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = v2[25];

    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_100018784;
  }

  else
  {
    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_1000185D4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000185D4()
{
  v1 = *(*(v0 + 16) + 104);
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_100018668;

  return sub_10006254C();
}

uint64_t sub_100018668()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = v2[25];

    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_100018B7C;
  }

  else
  {
    v5 = v2[28];
    v6 = v2[29];
    v7 = sub_10001888C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100018784()
{
  v1 = v0[22];

  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  v14 = v0[8];
  v15 = v0[5];
  v16 = v0[35];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10001888C()
{
  v46 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[18];
  v4 = v0[2];

  static Log.session.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v41 = v0[31];
    v43 = v0[32];
    v7 = v0[25];
    v40 = v0[18];
    v38 = v0[49];
    v39 = v0[13];
    v37 = v0[6];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v9 = 134218754;
    *(v9 + 4) = *(v7 + 16);
    *(v9 + 12) = 2080;
    v10 = *(v8 + 16);
    v11 = PhotosFaceType.description.getter();
    v13 = v12;

    v14 = sub_100102F80(v11, v13, &v45);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v38;
    *(v9 + 32) = 2080;
    v15 = Array.description.getter();
    v17 = v16;
    swift_bridgeObjectRelease_n();
    v18 = sub_100102F80(v15, v17, &v45);

    *(v9 + 34) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Processed %ld %s faces: %ld photos in faces: %s", v9, 0x2Au);
    swift_arrayDestroy();

    v43(v40, v39);
  }

  else
  {
    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[25];
    v22 = v0[18];
    v23 = v0[13];
    v24 = v0[2];
    swift_bridgeObjectRelease_n();

    v19(v22, v23);
  }

  v26 = v0[19];
  v25 = v0[20];
  v28 = v0[17];
  v27 = v0[18];
  v30 = v0[15];
  v29 = v0[16];
  v32 = v0[11];
  v31 = v0[12];
  v34 = v0[9];
  v33 = v0[10];
  v42 = v0[8];
  v44 = v0[5];

  v35 = v0[1];

  return v35();
}

uint64_t sub_100018B7C()
{
  v1 = v0[22];

  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  v14 = v0[8];
  v15 = v0[5];
  v16 = v0[42];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100018C84()
{
  v2 = *(*v1 + 352);
  v3 = *v1;
  v3[45] = v0;

  if (v0)
  {
    v4 = v3[28];
    v5 = v3[29];

    return _swift_task_switch(sub_100018FC8, v4, v5);
  }

  else
  {
    v6 = async function pointer to AsyncSequence.collect()[1];
    v7 = swift_task_alloc();
    v3[46] = v7;
    v8 = sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
    *v7 = v3;
    v7[1] = sub_100018E38;
    v9 = v3[5];
    v10 = v3[3];

    return AsyncSequence.collect()(v10, v8);
  }
}

uint64_t sub_100018E38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  (*(v3[4] + 8))(v3[5], v3[3]);
  v7 = v3[29];
  v8 = v3[28];
  if (v1)
  {
    v9 = sub_10001A028;
  }

  else
  {
    v9 = sub_1000197C8;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100018FC8()
{
  v94 = v0;
  v1 = v0[45];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[6];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[39];
    v77 = v0[40];
    v88 = v0[31];
    v90 = v0[32];
    v83 = v0[13];
    v85 = v0[15];
    v87 = v0[12];
    v82 = v9;
    v11 = v0[10];
    v12 = v0[6];
    v13 = v0[7] + 8;
    v14 = v0[8];
    v15 = v0[43];
    v16 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    log = swift_slowAlloc();
    v93[0] = log;
    *v16 = 136315394;
    v10(v11, v14, v12);
    v15(v14, v12);
    sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v15(v11, v12);
    v20 = sub_100102F80(v17, v19, v93);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v78 = v21;
    _os_log_impl(&_mh_execute_header, v8, v82, "Failed to process face %s with error %@", v16, 0x16u);
    sub_10000C460(v78, &qword_100129EF8, &qword_100108C70);

    sub_10000C304(log);

    v90(v85, v83);
    result = (v15)(v87, v12);
  }

  else
  {
    v23 = v0[31];
    v91 = v0[32];
    v24 = v0[15];
    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[6];
    v28 = v0[7] + 8;
    v29 = v8;
    v30 = v0[43];
    v30(v0[8], v27);

    v91(v24, v25);
    result = v30(v26, v27);
  }

  v32 = v0[37];
  v31 = v0[38];
  v0[49] = v31;
  v33 = v0[36] + 1;
  if (v33 == v0[30])
  {
    v34 = v0[25];

    v35 = swift_task_alloc();
    v0[34] = v35;
    *v35 = v0;
    v35[1] = sub_1000184B8;
    v36 = v0[2];

    return sub_10002E4C4();
  }

  else
  {
    v0[37] = v32;
    v0[38] = v31;
    v0[36] = v33;
    v37 = v0[25];
    if (v33 >= *(v37 + 16))
    {
      __break(1u);
    }

    else
    {
      v38 = v0[12];
      v39 = v0[6];
      v40 = v0[7];
      v42 = *(v40 + 16);
      v40 += 16;
      v41 = v42;
      v43 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64)) + *(v40 + 56) * v33;
      v0[39] = v42;
      v0[40] = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v42(v38, v43, v39);
      static Task<>.checkCancellation()();
      v44 = v0[6];
      v45 = v0[17];
      v47 = v0[11];
      v46 = v0[12];
      v48 = v0[2];
      static Log.photos.getter();
      v42(v47, v46, v44);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v53 = v0[31];
      v52 = v0[32];
      v54 = v0[17];
      v55 = v0[13];
      v56 = v0[11];
      if (v51)
      {
        v84 = v50;
        v57 = v0[10];
        v79 = v0[7];
        v89 = v0[17];
        v92 = v0[32];
        v58 = v0[6];
        v59 = v0[2];
        loga = v49;
        v60 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v60 = 136315394;
        v61 = *(v59 + 16);
        v86 = v55;
        v62 = PhotosFaceType.description.getter();
        v64 = v63;

        v65 = sub_100102F80(v62, v64, v93);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2080;
        v41(v57, v56, v58);
        v66 = *(v79 + 8);
        v66(v56, v58);
        sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v66(v57, v58);
        v70 = sub_100102F80(v67, v69, v93);

        *(v60 + 14) = v70;
        _os_log_impl(&_mh_execute_header, loga, v84, "Processing %s face %s", v60, 0x16u);
        swift_arrayDestroy();

        v92(v89, v86);
      }

      else
      {
        v71 = v0[2];
        v66 = *(v0[7] + 8);
        v66(v0[11], v0[6]);

        v52(v54, v55);
      }

      v0[43] = v66;
      v72 = static TestProperties.bufferSize.getter();
      v73 = swift_task_alloc();
      v0[44] = v73;
      *v73 = v0;
      v73[1] = sub_100018C84;
      v74 = v0[12];
      v75 = v0[5];
      v76 = v0[2];

      return sub_100020A84(v75, v74, v72);
    }
  }

  return result;
}

uint64_t sub_1000197C8()
{
  v118 = v0;
  v1 = v0[47];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[2];
  static Log.photos.getter();
  v3(v6, v5, v7);
  swift_bridgeObjectRetain_n();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  log = v9;
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[47];
  v114 = v0[43];
  if (v11)
  {
    v98 = v0[39];
    v99 = v0[40];
    v106 = v0[31];
    v108 = v0[32];
    v101 = v0[13];
    v103 = v0[16];
    v104 = v0[12];
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[6];
    v97 = v0[7] + 8;
    v16 = v0[2];
    v17 = swift_slowAlloc();
    v117[0] = swift_slowAlloc();
    *v17 = 136315650;
    v18 = *(v16 + 16);
    v19 = PhotosFaceType.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, v117);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    LOBYTE(v21) = v10;
    v23 = *(v12 + 16);

    *(v17 + 14) = v23;

    *(v17 + 22) = 2080;
    v98(v13, v14, v15);
    v114(v14, v15);
    sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v114(v13, v15);
    v27 = sub_100102F80(v24, v26, v117);

    *(v17 + 24) = v27;
    _os_log_impl(&_mh_execute_header, log, v21, "Processed %s %ld photos from %s", v17, 0x20u);
    swift_arrayDestroy();

    v108(v103, v101);
    v114(v104, v15);
  }

  else
  {
    v28 = v0[31];
    v109 = v0[32];
    v29 = v0[16];
    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[9];
    v33 = v0[6];
    v34 = v0[7];
    v35 = v0[2];

    v114(v32, v33);

    v109(v29, v30);
    v114(v31, v33);
  }

  v36 = v0[37];
  v37 = *(v0[47] + 16);

  v39 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
    goto LABEL_21;
  }

  v40 = v0[48];
  v0[49] = v39;
  v41 = v0[36] + 1;
  if (v41 == v0[30])
  {
    v42 = v0[25];

    v43 = swift_task_alloc();
    v0[34] = v43;
    *v43 = v0;
    v43[1] = sub_1000184B8;
    v44 = v0[2];

    return sub_10002E4C4();
  }

  v0[37] = v39;
  v0[38] = v39;
  v0[36] = v41;
  v45 = v0[25];
  if (v41 >= *(v45 + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v46 = v0[12];
  v47 = v0[6];
  v48 = v0[7];
  v50 = *(v48 + 16);
  v48 += 16;
  v49 = v50;
  v51 = v45 + ((*(v48 + 64) + 32) & ~*(v48 + 64)) + *(v48 + 56) * v41;
  v0[39] = v50;
  v0[40] = v48 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50(v46, v51, v47);
  static Task<>.checkCancellation()();
  v52 = v0[6];
  if (v40)
  {
    v53 = v0[25];
    v54 = v0[22];
    (*(v0[7] + 8))(v0[12], v0[6]);

    swift_bridgeObjectRelease_n();
    v56 = v0[19];
    v55 = v0[20];
    v58 = v0[17];
    v57 = v0[18];
    v60 = v0[15];
    v59 = v0[16];
    v62 = v0[11];
    v61 = v0[12];
    v63 = v0[10];
    v110 = v0[9];
    loga = v0[8];
    v115 = v0[5];

    v64 = v0[1];

    return v64();
  }

  else
  {
    v65 = v0[17];
    v67 = v0[11];
    v66 = v0[12];
    v68 = v0[2];
    static Log.photos.getter();
    v49(v67, v66, v52);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    v71 = os_log_type_enabled(v69, v70);
    v73 = v0[31];
    v72 = v0[32];
    v74 = v0[17];
    v75 = v0[13];
    v76 = v0[11];
    if (v71)
    {
      v105 = v70;
      v77 = v0[10];
      v100 = v0[7];
      logb = v0[17];
      v116 = v0[32];
      v78 = v0[6];
      v79 = v0[2];
      v102 = v69;
      v80 = swift_slowAlloc();
      v117[0] = swift_slowAlloc();
      *v80 = 136315394;
      v81 = *(v79 + 16);
      v107 = v75;
      v82 = PhotosFaceType.description.getter();
      v84 = v83;

      v85 = sub_100102F80(v82, v84, v117);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      v49(v77, v76, v78);
      v86 = *(v100 + 8);
      v86(v76, v78);
      sub_1000438BC(&qword_10012A1E0, &type metadata accessor for DailyID);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v86(v77, v78);
      v90 = sub_100102F80(v87, v89, v117);

      *(v80 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v102, v105, "Processing %s face %s", v80, 0x16u);
      swift_arrayDestroy();

      v116(logb, v107);
    }

    else
    {
      v91 = v0[2];
      v86 = *(v0[7] + 8);
      v86(v0[11], v0[6]);

      v72(v74, v75);
    }

    v0[43] = v86;
    v92 = static TestProperties.bufferSize.getter();
    v93 = swift_task_alloc();
    v0[44] = v93;
    *v93 = v0;
    v93[1] = sub_100018C84;
    v94 = v0[12];
    v95 = v0[5];
    v96 = v0[2];

    return sub_100020A84(v95, v94, v92);
  }
}
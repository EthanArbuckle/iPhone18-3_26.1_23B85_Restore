uint64_t sub_100001728()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1000017BC, v2, v1);
}

uint64_t sub_1000017BC()
{
  *(v0 + 40) = type metadata accessor for Daemon();
  v1 = async function pointer to Daemon.__allocating_init(identifier:profile:services:)[1];
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000018B4;

  return Daemon.__allocating_init(identifier:profile:services:)(0xD000000000000021, 0x800000010001AD50, 0xD000000000000010, 0x800000010001AD80, &unk_100019B58, 0);
}

uint64_t sub_1000018B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = v4[4];

    return _swift_task_switch(sub_100001C18, v7, v8);
  }

  else
  {
    v9 = async function pointer to ActorServiceDaemon.run()[1];
    v10 = swift_task_alloc();
    v4[9] = v10;
    v11 = sub_100003450(&unk_100024B10, &type metadata accessor for Daemon);
    *v10 = v6;
    v10[1] = sub_100001A70;
    v12 = v4[5];

    return ActorServiceDaemon.run()(v12, v11);
  }
}

uint64_t sub_100001A70()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_100001DB0;
  }

  else
  {
    v7 = sub_100001BAC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100001BAC()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100001C18()
{
  v1 = *(v0 + 64);
  if (qword_100024A90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002850(v2, qword_100025678);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error creating Daemon instance: %@", v5, 0xCu);
    sub_100002A54(v6);
  }

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100001DB0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 80);
  if (qword_100024A90 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002850(v3, qword_100025678);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error creating Daemon instance: %@", v6, 0xCu);
    sub_100002A54(v7);
  }

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100001F50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FF0;

  return sub_100002B68();
}

uint64_t sub_100001FF0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000020EC()
{
  v0 = type metadata accessor for Logger();
  sub_100002B04(v0, qword_100025678);
  sub_100002850(v0, qword_100025678);
  return Logger.init(subsystem:category:)();
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_1000021C0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100002264;

  return sub_100001728();
}

uint64_t sub_100002264()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000023A0, v5, v4);
}

void sub_1000023A0()
{
  v1 = *(v0 + 24);

  exit(0);
}

uint64_t sub_1000023D8(uint64_t a1)
{
  v2 = sub_100003450(&qword_100024B78, type metadata accessor for SPBeaconManagerError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002444(uint64_t a1)
{
  v2 = sub_100003450(&qword_100024B78, type metadata accessor for SPBeaconManagerError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000024B4(uint64_t a1)
{
  v2 = sub_100003450(&qword_100024BB0, type metadata accessor for SPBeaconManagerError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002540(uint64_t a1)
{
  v2 = sub_100003450(&qword_100024BB0, type metadata accessor for SPBeaconManagerError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000025AC(uint64_t a1)
{
  v2 = sub_100003450(&qword_100024BB0, type metadata accessor for SPBeaconManagerError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002618(void *a1, uint64_t a2)
{
  v4 = sub_100003450(&qword_100024BB0, type metadata accessor for SPBeaconManagerError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000026CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003450(&qword_100024BB0, type metadata accessor for SPBeaconManagerError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002748()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_1000027A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000027C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FF0;

  return sub_100001F50();
}

uint64_t sub_100002850(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003450(&qword_100024BB0, type metadata accessor for SPBeaconManagerError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void *sub_100002920(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002ABC(&qword_100024B38, &qword_100019B70);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100002ABC(&qword_100024B40, &qword_100019B78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100002A54(uint64_t a1)
{
  v2 = sub_100002ABC(&qword_1000251F0, &qword_100019B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002ABC(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_100002B04(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100002B84()
{
  v1 = type metadata accessor for LocalBeaconing();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  strcpy((v4 + 112), "LocalBeaconing");
  *(v4 + 127) = -18;
  v5 = OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_beaconInfo;
  v6 = type metadata accessor for LocalBeaconKeyInfo();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_initialFetchComplete) = 0;
  v7 = sub_100002920(0, 1, 1, &_swiftEmptyArrayStorage);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_100002920((v8 > 1), v9 + 1, 1, v7);
  }

  v0[4] = v7;
  v10 = sub_100003450(&unk_100025540, type metadata accessor for LocalBeaconing);
  v7[2] = v9 + 1;
  v11 = &v7[2 * v9];
  v11[4] = v4;
  v11[5] = v10;
  type metadata accessor for LocalBeaconingXPCService();
  v12 = swift_allocObject();
  v0[5] = v12;
  swift_defaultActor_initialize();
  *(v12 + 112) = 0xD000000000000018;
  *(v12 + 120) = 0x800000010001AE00;
  v0[6] = type metadata accessor for XPCSessionManager();
  v13 = async function pointer to XPCSessionManager.__allocating_init(name:)[1];
  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_100002D9C;

  return XPCSessionManager.__allocating_init(name:)(0xD000000000000018, 0x800000010001AE00);
}

uint64_t sub_100002D9C(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_100002E9C, 0, 0);
}

uint64_t sub_100002EC4()
{
  v1 = v0[4];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100002920((v2 > 1), v3 + 1, 1, v0[4]);
  }

  v0[9] = v1;
  v4 = v0[5];
  v5 = sub_100003450(&qword_100024B20, type metadata accessor for LocalBeaconingXPCService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for SearchPartyPushXPCService();
  v7 = swift_allocObject();
  v0[10] = v7;
  swift_defaultActor_initialize();
  *(v7 + 112) = 0xD000000000000016;
  *(v7 + 120) = 0x800000010001AE20;
  v8 = async function pointer to XPCSessionManager.__allocating_init(name:)[1];
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_100003024;
  v10 = v0[6];

  return XPCSessionManager.__allocating_init(name:)(0xD000000000000016, 0x800000010001AE20);
}

uint64_t sub_100003024(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100003124, 0, 0);
}

uint64_t sub_10000314C()
{
  v1 = v0[9];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100002920((v2 > 1), v3 + 1, 1, v0[9]);
  }

  v0[13] = v1;
  v4 = v0[10];
  v5 = sub_100003450(&qword_100024B28, type metadata accessor for SearchPartyPushXPCService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for StorageService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100003274;

  return sub_10000818C();
}

uint64_t sub_100003274(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 112);
  v6 = *v1;

  return _swift_task_switch(sub_100003374, 0, 0);
}

uint64_t sub_100003374()
{
  v1 = v0[13];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100002920((v2 > 1), v3 + 1, 1, v0[13]);
  }

  v4 = v0[3];
  v5 = sub_100003450(&qword_100024B30, type metadata accessor for StorageService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_100003450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000034AC(uint64_t a1, int a2)
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

uint64_t sub_1000034CC(uint64_t result, int a2, int a3)
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

void sub_100003708(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1000037A0()
{
  result = qword_100024BA0;
  if (!qword_100024BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024BA0);
  }

  return result;
}

uint64_t sub_10000389C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for PublicKey();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = type metadata accessor for SharedSecretKey();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_100003A38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for PublicKey();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = type metadata accessor for SharedSecretKey();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t type metadata accessor for LocalBeaconKeyInfo()
{
  result = qword_100024C78;
  if (!qword_100024C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  return type metadata accessor for LocalBeaconKeyInfo();
}

uint64_t sub_100003C18()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PublicKey();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SharedSecretKey();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100003CCC()
{
  _StringGuts.grow(_:)(44);
  v0._countAndFlagsBits = 0x203A726961703CLL;
  v0._object = 0xE700000000000000;
  String.append(_:)(v0);
  v1 = type metadata accessor for LocalBeaconKeyInfo();
  v2 = v1[6];
  type metadata accessor for Date();
  sub_1000058F8(&qword_100024D28, &type metadata accessor for Date);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x4B63696C62757020;
  v4._object = 0xEC000000203A7965;
  String.append(_:)(v4);
  v5 = v1[7];
  type metadata accessor for PublicKey();
  _print_unlocked<A, B>(_:_:)();
  v6._object = 0x800000010001AE40;
  v6._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v6);
  v7 = v1[8];
  type metadata accessor for SharedSecretKey();
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0;
}

Swift::Int sub_100003E74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100003EE8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100003F2C()
{
  v1 = *v0;
  v2 = 0x6E65644972657375;
  v3 = 0x6574614472696170;
  v4 = 0x654B63696C627570;
  if (v1 != 3)
  {
    v4 = 0x6553646572616873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100003FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100005BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100004028(uint64_t a1)
{
  v2 = sub_100005798();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004064(uint64_t a1)
{
  v2 = sub_100005798();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000040A0(void *a1)
{
  v3 = sub_100002ABC(&qword_100024D00, &qword_100019FC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = a1[4];
  sub_100005754(a1, a1[3]);
  sub_100005798();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  type metadata accessor for UUID();
  sub_1000058F8(&qword_100024D08, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = type metadata accessor for LocalBeaconKeyInfo();
    v10 = v9[5];
    v19 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v9[6];
    v18 = 2;
    type metadata accessor for Date();
    sub_1000058F8(&qword_100024D10, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v9[7];
    v17 = 3;
    type metadata accessor for PublicKey();
    sub_1000058F8(&qword_100024D18, &type metadata accessor for PublicKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v9[8];
    v16 = 4;
    type metadata accessor for SharedSecretKey();
    sub_1000058F8(&qword_100024D20, &type metadata accessor for SharedSecretKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000043C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v42 = type metadata accessor for SharedSecretKey();
  v39 = *(v42 - 8);
  v3 = *(v39 + 64);
  (__chkstk_darwin)();
  v41 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PublicKey();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  (__chkstk_darwin)();
  v43 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Date();
  v47 = *(v50 - 8);
  v8 = *(v47 + 64);
  (__chkstk_darwin)();
  v44 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  v12 = (__chkstk_darwin)();
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = v36 - v15;
  v53 = sub_100002ABC(&qword_100024CD0, &qword_100019FB8);
  v49 = *(v53 - 8);
  v16 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v18 = v36 - v17;
  v19 = type metadata accessor for LocalBeaconKeyInfo();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  sub_100005754(a1, a1[3]);
  sub_100005798();
  v52 = v18;
  v24 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return sub_1000057EC(a1);
  }

  v37 = v19;
  v38 = a1;
  v54 = v22;
  v25 = v50;
  v59 = 0;
  sub_1000058F8(&qword_100024CE0, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v54;
  v27 = *(v48 + 32);
  v27(v54, v51, v10);
  v58 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36[1] = v10;
  v28 = v14;
  v29 = v37;
  v27((v26 + v37[5]), v28, v10);
  v57 = 2;
  sub_1000058F8(&qword_100024CE8, &type metadata accessor for Date);
  v30 = v44;
  v51 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v47 + 32))(v26 + v29[6], v30, v25);
  v56 = 3;
  sub_1000058F8(&qword_100024CF0, &type metadata accessor for PublicKey);
  v31 = v43;
  v32 = v46;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v45 + 32))(v26 + v29[7], v31, v32);
  v55 = 4;
  sub_1000058F8(&qword_100024CF8, &type metadata accessor for SharedSecretKey);
  v33 = v41;
  v34 = v42;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v49 + 8))(v52, v53);
  (*(v39 + 32))(v26 + v29[8], v33, v34);
  sub_100005838(v26, v40);
  sub_1000057EC(v38);
  return sub_10000589C(v26);
}

uint64_t sub_100004BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = type metadata accessor for SharedSecretKey();
  v21 = *(v23 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v23);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PublicKey();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalBeaconKeyInfo.userIdentifier.getter();
  v11 = type metadata accessor for LocalBeaconKeyInfo();
  v12 = v11[5];
  LocalBeaconKeyInfo.beaconIdentifier.getter();
  v13 = v11[6];
  LocalBeaconKeyInfo.pairDate.getter();
  LocalBeaconKeyInfo.publicKey.getter();
  PublicKey.init(data:)();
  if (v2)
  {
    v23 = v7;
    v14 = type metadata accessor for LocalBeaconKeyInfo();
    (*(*(v14 - 8) + 8))(a1, v14);
    v15 = type metadata accessor for UUID();
    v16 = *(*(v15 - 8) + 8);
    v16(a2, v15);
    v16(a2 + v12, v15);
    v17 = type metadata accessor for Date();
    return (*(*(v17 - 8) + 8))(a2 + v13, v17);
  }

  else
  {
    (*(v24 + 32))(a2 + v11[7], v10, v7);
    LocalBeaconKeyInfo.sharedSecretKey.getter();
    sub_1000058F8(&qword_100024D30, &type metadata accessor for SharedSecretKey);
    KeyRepresentable<>.init(data:)();
    v18 = type metadata accessor for LocalBeaconKeyInfo();
    (*(*(v18 - 8) + 8))(a1, v18);
    return (*(v21 + 32))(a2 + v11[8], v22, v23);
  }
}

uint64_t sub_100004F1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10000514C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000052DC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000056AC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100004F1C(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000056AC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1000052DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100004F1C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100005394(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100005700(a3, a4);
          return sub_10000514C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000054FC()
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_6;
  }

  v0 = type metadata accessor for LocalBeaconKeyInfo();
  v1 = v0[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_6;
  }

  v2 = v0[6];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = v0[7];
  type metadata accessor for PublicKey();
  sub_1000058F8(&qword_100024CC0, &type metadata accessor for PublicKey);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v4 = sub_100005394(v10, v11, v8, v9);
  sub_1000056AC(v8, v9);
  sub_1000056AC(v10, v11);
  if (v4)
  {
    v5 = v0[8];
    type metadata accessor for SharedSecretKey();
    sub_1000058F8(&qword_100024CC8, &type metadata accessor for SharedSecretKey);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v6 = sub_100005394(v10, v11, v8, v9);
    sub_1000056AC(v8, v9);
    sub_1000056AC(v10, v11);
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1000056AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005700(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_100005754(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100005798()
{
  result = qword_100024CD8;
  if (!qword_100024CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024CD8);
  }

  return result;
}

uint64_t sub_1000057EC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalBeaconKeyInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000589C(uint64_t a1)
{
  v2 = type metadata accessor for LocalBeaconKeyInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000058F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for LocalBeaconKeyInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocalBeaconKeyInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100005AB4()
{
  result = qword_100024D38;
  if (!qword_100024D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024D38);
  }

  return result;
}

unint64_t sub_100005B0C()
{
  result = qword_100024D40;
  if (!qword_100024D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024D40);
  }

  return result;
}

unint64_t sub_100005B64()
{
  result = qword_100024D48;
  if (!qword_100024D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024D48);
  }

  return result;
}

uint64_t sub_100005BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010001AE60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574614472696170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEF79654B74657263)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100005D88()
{
  v0 = type metadata accessor for Logger();
  sub_100002B04(v0, qword_100025690);
  v1 = sub_100002850(v0, qword_100025690);
  if (qword_100024AD8 != -1)
  {
    swift_once();
  }

  v2 = sub_100002850(v0, qword_100025750);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100005E50(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DatabaseState();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100005F14, 0, 0);
}

uint64_t sub_100005F14()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 72);
  v6 = *(v0 + 16);
  swift_defaultActor_initialize();
  (*(v2 + 104))(v1, enum case for DatabaseState.unavailable(_:), v4);
  v7 = sub_100002ABC(&qword_100024F00, &qword_10001A348);
  v8 = *(v7 + 52);
  v9 = (*(v7 + 48) + 3) & 0x1FFFFFFFCLL;
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 16))(v10 + *(*v10 + class metadata base offset for ManagedBuffer + 16), v1, v4);
  (*(v2 + 8))(v1, v4);
  *(v3 + 14) = v10;
  v11 = sub_100002ABC(&qword_100024F08, &unk_10001A350);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v3 + 15) = AsyncStreamProvider.init()();
  *(v3 + 16) = 0;
  *&v3[OBJC_IVAR____TtC16findmybeaconingd15StorageDatabase_currentVersion] = 1;
  v14 = OBJC_IVAR____TtC16findmybeaconingd15StorageDatabase_baseContainerURL;
  v15 = type metadata accessor for URL();
  *(v0 + 56) = v15;
  v16 = *(v15 - 8);
  *(v0 + 64) = v16;
  (*(v16 + 16))(&v3[v14], v6, v15);
  v3[OBJC_IVAR____TtC16findmybeaconingd15StorageDatabase_temporary] = v5;

  return _swift_task_switch(sub_10000614C, v3, 0);
}

uint64_t sub_10000614C()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[2], v0[7]);

  v2 = v0[1];
  v3 = v0[3];

  return v2(v3);
}

uint64_t sub_1000061D0()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC16findmybeaconingd15StorageDatabase_baseContainerURL;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for StorageDatabase()
{
  result = qword_100024D78;
  if (!qword_100024D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000062B4()
{
  result = type metadata accessor for URL();
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

uint64_t sub_1000063C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16findmybeaconingd15StorageDatabase_baseContainerURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100006438()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_100006470(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

void sub_10000650C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = type metadata accessor for DatabaseState();
  (*(*(v6 - 8) + 16))(a1, v3 + v4, v6);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1000065D4()
{
  v1 = v0;
  v2 = *(v0 + 120);
  sub_100002ABC(&qword_100024EF0, &qword_10001A338);
  v3 = type metadata accessor for DatabaseState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10001A100;
  v8 = *(v1 + 112);
  v9 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  (*(v4 + 16))(v7 + v6, v8 + v9, v3);
  os_unfair_lock_unlock((v8 + v10));
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_100006774()
{
  URL.appendingPathComponent(_:isDirectory:)();
  URL.appendingPathComponent(_:isDirectory:)();
  return URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_100006854()
{
  v1 = type metadata accessor for DatabaseState();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 112);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  v14 = v2[1];
  v14((v6 + v7), v1);
  v9 = enum case for DatabaseState.available(_:);
  v10 = v2[13];
  v10((v6 + v7), enum case for DatabaseState.available(_:), v1);
  os_unfair_lock_unlock((v6 + v8));
  v11 = *(v0 + 120);
  v10(v5, v9, v1);
  AsyncStreamProvider.yield(value:transaction:)();
  return v14(v5, v1);
}

uint64_t sub_100006AB0()
{
  v1 = *v0;
  type metadata accessor for StorageDatabase();
  sub_100008148(&qword_100024EF8);
  return Database.description.getter();
}

uint64_t sub_100006B08()
{
  v1 = async function pointer to Database.isolatedDescription.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = type metadata accessor for StorageDatabase();
  v4 = sub_100008148(&qword_100024EF8);
  *v2 = v0;
  v2[1] = sub_100006BD8;

  return Database.isolatedDescription.getter(v3, v4);
}

uint64_t sub_100006BD8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_100006D44()
{
  v0 = type metadata accessor for Table();
  sub_100002B04(v0, qword_1000256A8);
  sub_100002850(v0, qword_1000256A8);
  return Table.init(_:database:)();
}

uint64_t sub_100006DB0()
{
  v0 = sub_100002ABC(&qword_100024EA8, &qword_10001A310);
  sub_100002B04(v0, qword_1000256C0);
  sub_100002850(v0, qword_1000256C0);
  sub_1000080A0(&qword_100024EE8, &qword_100024EA8, &qword_10001A310);
  return ExpressionType.init(_:)();
}

uint64_t sub_100006E50()
{
  v0 = sub_100002ABC(&qword_100024EB8, &qword_10001A320);
  sub_100002B04(v0, qword_1000256D8);
  sub_100002850(v0, qword_1000256D8);
  sub_1000080A0(&qword_100024EE0, &qword_100024EB8, &qword_10001A320);
  return ExpressionType.init(_:)();
}

uint64_t sub_100006EFC()
{
  v0 = sub_100002ABC(&qword_100024EB8, &qword_10001A320);
  sub_100002B04(v0, qword_1000256F0);
  sub_100002850(v0, qword_1000256F0);
  sub_1000080A0(&qword_100024EE0, &qword_100024EB8, &qword_10001A320);
  return ExpressionType.init(_:)();
}

uint64_t sub_100006FA8()
{
  v0 = sub_100002ABC(&qword_100024EC0, &qword_10001A328);
  sub_100002B04(v0, qword_100025708);
  sub_100002850(v0, qword_100025708);
  sub_1000080A0(&qword_100024ED8, &qword_100024EC0, &qword_10001A328);
  return ExpressionType.init(_:)();
}

uint64_t sub_100007048()
{
  v0 = sub_100002ABC(&qword_100024EC8, &qword_10001A330);
  sub_100002B04(v0, qword_100025720);
  sub_100002850(v0, qword_100025720);
  sub_1000080A0(&qword_100024ED0, &qword_100024EC8, &qword_10001A330);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000070EC()
{
  v0 = sub_100002ABC(&qword_100024EC8, &qword_10001A330);
  sub_100002B04(v0, qword_100025738);
  sub_100002850(v0, qword_100025738);
  sub_1000080A0(&qword_100024ED0, &qword_100024EC8, &qword_10001A330);
  return ExpressionType.init(_:)();
}

uint64_t sub_100007198()
{
  if (qword_100024AA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_100002850(v1, qword_1000256A8);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_100007278()
{
  v0 = sub_100002ABC(&qword_100024E80, &qword_10001A2E8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = &v31 - v2;
  v3 = sub_100002ABC(&qword_100024E88, &qword_10001A2F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v32 = &v31 - v5;
  v6 = sub_100002ABC(&qword_100024E90, &qword_10001A2F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_100002ABC(&qword_100024E98, &qword_10001A300);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_100002ABC(&qword_100024EA0, &qword_10001A308);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v31 - v16;
  if (qword_100024AA8 != -1)
  {
    swift_once();
  }

  v18 = sub_100002ABC(&qword_100024EA8, &qword_10001A310);
  sub_100002850(v18, qword_1000256C0);
  v19 = sub_100002ABC(&qword_100024EB0, &qword_10001A318);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v21(v17, 1, 1, v19);
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_100007FF8(v13, &qword_100024E98, &qword_10001A300);
  sub_100007FF8(v17, &qword_100024EA0, &qword_10001A308);
  if (qword_100024AB0 != -1)
  {
    swift_once();
  }

  v23 = sub_100002ABC(&qword_100024EB8, &qword_10001A320);
  sub_100002850(v23, qword_1000256D8);
  v21(v17, 1, 1, v19);
  v24 = *(*(v23 - 8) + 56);
  v34 = v22;
  v24(v9, 1, 1, v23);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100007FF8(v9, &qword_100024E90, &qword_10001A2F8);
  sub_100007FF8(v17, &qword_100024EA0, &qword_10001A308);
  if (qword_100024AB8 != -1)
  {
    swift_once();
  }

  sub_100002850(v23, qword_1000256F0);
  v21(v17, 1, 1, v19);
  v24(v9, 1, 1, v23);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100007FF8(v9, &qword_100024E90, &qword_10001A2F8);
  sub_100007FF8(v17, &qword_100024EA0, &qword_10001A308);
  if (qword_100024AC0 != -1)
  {
    swift_once();
  }

  v25 = sub_100002ABC(&qword_100024EC0, &qword_10001A328);
  sub_100002850(v25, qword_100025708);
  v21(v17, 1, 1, v19);
  v26 = v32;
  (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100007FF8(v26, &qword_100024E88, &qword_10001A2F0);
  sub_100007FF8(v17, &qword_100024EA0, &qword_10001A308);
  v27 = v33;
  if (qword_100024AC8 != -1)
  {
    swift_once();
  }

  v28 = sub_100002ABC(&qword_100024EC8, &qword_10001A330);
  sub_100002850(v28, qword_100025720);
  v21(v17, 1, 1, v19);
  v29 = *(*(v28 - 8) + 56);
  v29(v27, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100007FF8(v27, &qword_100024E80, &qword_10001A2E8);
  sub_100007FF8(v17, &qword_100024EA0, &qword_10001A308);
  if (qword_100024AD0 != -1)
  {
    swift_once();
  }

  sub_100002850(v28, qword_100025738);
  v21(v17, 1, 1, v19);
  v29(v27, 1, 1, v28);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_100007FF8(v27, &qword_100024E80, &qword_10001A2E8);
  return sub_100007FF8(v17, &qword_100024EA0, &qword_10001A308);
}

uint64_t sub_100007A34()
{
  v0 = type metadata accessor for Logger();
  sub_100002B04(v0, qword_100025750);
  sub_100002850(v0, qword_100025750);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100007AB8()
{
  v1 = type metadata accessor for Keychain.DataProtectionClass();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v0 && v7 >> 60 == 15)
  {
    v8 = static Data.random(bytes:)();
    v10 = v9;
    v11[0] = v8;
    v11[1] = v9;
    (*(v2 + 104))(v5, enum case for Keychain.DataProtectionClass.d(_:), v1);
    sub_100005700(v8, v10);
    sub_1000080F4();
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v5, v1);
    sub_1000056AC(v8, v10);
    return v8;
  }

  return result;
}

void sub_100007CBC(int a1, int a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100024A98 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002850(v9, qword_100025690);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = a1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = a2;
    _os_log_impl(&_mh_execute_header, v10, v11, "Migrate schema %d -> %d", v12, 0xEu);
  }

  if (a2 == 1)
  {
    v13._countAndFlagsBits = 0xD00000000000001FLL;
    v13._object = 0x800000010001AF60;
    Connection.execute(_:)(v13);
    if (!v14)
    {
      v15._countAndFlagsBits = 0xD000000000000018;
      v15._object = 0x800000010001AF80;
      Connection.execute(_:)(v15);
      if (!v16)
      {
        UUID.init()();
        UUID.uuidString.getter();
        (*(v5 + 8))(v8, v4);
        Connection.savepoint(_:block:)();
      }
    }
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v18 = 0xD000000000000013;
    v19 = 0x800000010001AF40;
    v20 = a2;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100007FF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002ABC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008058(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000080A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008058(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000080F4()
{
  result = qword_100025550;
  if (!qword_100025550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025550);
  }

  return result;
}

uint64_t sub_100008148(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StorageDatabase();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000818C()
{
  v1[5] = v0;
  v2 = *(*(sub_100002ABC(&qword_100024FE0, &qword_10001A470) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for URL.DirectoryHint();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000082EC, 0, 0);
}

uint64_t sub_1000082EC()
{
  v1 = *(v0 + 40);
  swift_defaultActor_initialize();
  strcpy((v1 + 112), "StorageService");
  *(v1 + 127) = -18;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1000083AC;

  return daemon.getter();
}

uint64_t sub_1000083AC(uint64_t a1)
{
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = a1;

  type metadata accessor for Daemon();
  sub_1000091A8(&qword_100024FE8, 255, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100008508, v5, v4);
}

uint64_t sub_100008508()
{
  v1 = v0[15];
  v2 = Daemon.identifier.getter();
  v4 = v3;

  v0[16] = v2;
  v0[17] = v4;

  return _swift_task_switch(sub_10000858C, 0, 0);
}

uint64_t sub_10000858C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v17 = v0[7];
  v18 = v0[12];
  _StringGuts.grow(_:)(19);

  v9._countAndFlagsBits = v2;
  v9._object = v1;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 47;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  (*(v7 + 104))(v6, enum case for URL.DirectoryHint.isDirectory(_:), v17);
  (*(v4 + 56))(v8, 1, 1, v5);
  URL.init(filePath:directoryHint:relativeTo:)();
  (*(v4 + 16))(v18, v3, v5);
  v11 = type metadata accessor for StorageDatabase();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_100008754;
  v15 = v0[12];

  return sub_100005E50(v15, 0);
}

uint64_t sub_100008754(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_100008A48;
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = sub_10000887C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000887C()
{
  *(v0[5] + 128) = v0[20];
  type metadata accessor for StorageStore();
  v0[21] = swift_allocObject();

  return _swift_task_switch(sub_10000890C, 0, 0);
}

uint64_t sub_10000890C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_defaultActor_initialize();
  *(v2 + 112) = v1;

  return _swift_task_switch(sub_10000897C, 0, 0);
}

uint64_t sub_10000897C()
{
  v1 = *(v0 + 40);
  *(v1 + 136) = *(v0 + 168);
  return _swift_task_switch(sub_1000089A0, v1, 0);
}

uint64_t sub_1000089A0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  (*(v0[11] + 8))(v0[13], v0[10]);

  v4 = v0[1];
  v5 = v0[5];

  return v4(v5);
}

uint64_t sub_100008A48()
{
  v1 = v0[19];
  (*(v0[11] + 8))(v0[13], v0[10]);
  _StringGuts.grow(_:)(48);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v2._object = 0x800000010001B050;
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  String.append(_:)(v2);
  v0[4] = v1;
  sub_100002ABC(&unk_100024FF0, qword_10001A478);
  _print_unlocked<A, B>(_:_:)();
  v3 = v0[2];
  v4 = v0[3];
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100008B58()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100008BC4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_100008BF4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for StorageService();
  *v5 = v2;
  v5[1] = sub_1000091F0;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100008C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StorageService();
  *v9 = v4;
  v9[1] = sub_1000091F0;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100008D60(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for StorageService();
  *v5 = v2;
  v5[1] = sub_100008E08;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100008E08()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100008F1C()
{
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100008F40, v1, 0);
}

uint64_t sub_100008F40()
{
  v1 = *(v0 + 24);
  type metadata accessor for StorageDatabase();
  sub_1000091A8(&qword_100024EF8, 255, type metadata accessor for StorageDatabase);
  Database.startup()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100009008(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for StorageService();
  *v5 = v2;
  v5[1] = sub_100008E08;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1000090B0()
{
  v1 = *v0;
  type metadata accessor for StorageService();
  sub_1000091A8(&qword_100024B30, v2, type metadata accessor for StorageService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1000091A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100009214()
{
  v1 = *(v0 + 16);
  sub_10000C4B4();
  if (NSXPCConnection.hasEntitlement<A>(_:)())
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {

    return _swift_task_switch(sub_1000092C0, 0, 0);
  }
}

uint64_t sub_1000092C0()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100009328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002ABC(&qword_100025168, &qword_10001A650);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000C164(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007FF8(v12, &qword_100025168, &qword_10001A650);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100007FF8(a3, &qword_100025168, &qword_10001A650);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007FF8(a3, &qword_100025168, &qword_10001A650);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100009618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002ABC(&qword_100025168, &qword_10001A650);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000C164(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007FF8(v12, &qword_100025168, &qword_10001A650);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100002ABC(&qword_1000251E0, &qword_10001A698);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100007FF8(a3, &qword_100025168, &qword_10001A650);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007FF8(a3, &qword_100025168, &qword_10001A650);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100002ABC(&qword_1000251E0, &qword_10001A698);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000991C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000099C8()
{
  v1[4] = v0;
  v2 = type metadata accessor for XPCServiceDescription();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for MachServiceName();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_100009AF0, v0, 0);
}

uint64_t sub_100009AF0()
{
  receiver = v0[5].receiver;
  super_class = v0[5].super_class;
  v3 = v0[4].receiver;
  v4 = v0[4].super_class;
  v15 = v0[3].super_class;
  v5 = v0[2].receiver;
  MachServiceName.init(_:)();
  v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7SPOwner33FindMyBeaconDaemonPushXPCProtocol_];
  v0[6].receiver = v6;
  v7 = sub_100002ABC(&qword_100025158, &qword_10001A638);
  v8 = objc_allocWithZone(v7);
  swift_weakInit();
  swift_weakAssign();
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  v9 = objc_msgSendSuper2(v0 + 1, "init");
  v0[6].super_class = v9;
  (*(v4 + 2))(receiver, super_class, v3);

  v10 = v9;
  v11 = v6;
  XPCServiceDescription.init(name:exportedObject:exportedInterface:options:requiredEntitlement:shouldAccept:)();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v0[7].receiver = v13;
  *v13 = v0;
  v13[1] = sub_100009CD8;

  return daemon.getter();
}

uint64_t sub_100009CD8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  *(v3 + 120) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalBeaconing();
  v9 = sub_10000CA70(&unk_100024B10, 255, &type metadata accessor for Daemon);
  v10 = sub_10000CA70(&unk_100025540, 255, type metadata accessor for LocalBeaconing);
  *v6 = v12;
  v6[1] = sub_100009EBC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100009EBC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 32);

  if (v0)
  {
    v7 = sub_10000A24C;
  }

  else
  {

    v7 = sub_10000A024;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10000A024()
{
  *(v0 + 144) = *(*(v0 + 32) + 128);
  type metadata accessor for XPCSessionManager();
  sub_10000CA70(&qword_100025160, 255, &type metadata accessor for XPCSessionManager);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000A0E8, v2, v1);
}

uint64_t sub_10000A0E8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[7];
  dispatch thunk of XPCSessionManager.register(service:)();
  v0[19] = v2;
  v4 = v0[4];
  if (v2)
  {
    v5 = sub_10000A32C;
  }

  else
  {
    v5 = sub_10000A174;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10000A174()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10000A24C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v3, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000A32C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v3, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000A40C(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  v3 = *(*(sub_100002ABC(&qword_100025168, &qword_10001A650) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_10000A4D0, 0, 0);
}

uint64_t sub_10000A4D0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v2;

  v7 = v4;
  sub_100009328(0, 0, v1, &unk_10001A660, v6);

  v8 = v0[1];

  return v8(1);
}

uint64_t sub_10000A5E8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for SearchPartyPushXPCService();
  *v5 = v2;
  v5[1] = sub_1000091F0;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10000A690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchPartyPushXPCService();
  *v9 = v4;
  v9[1] = sub_1000091F0;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10000A754(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for SearchPartyPushXPCService();
  *v5 = v2;
  v5[1] = sub_100008E08;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10000A7FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000091F0;

  return sub_1000099C8();
}

uint64_t sub_10000A888(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for SearchPartyPushXPCService();
  *v5 = v2;
  v5[1] = sub_100008E08;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_10000A930()
{
  v1 = *v0;
  type metadata accessor for SearchPartyPushXPCService();
  sub_10000CA70(&qword_100024B28, v2, type metadata accessor for SearchPartyPushXPCService);
  return ActorServiceProtocol.description.getter();
}

Swift::Int sub_10000A998()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10000AA0C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000AA60@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100020FC8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10000AAD4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10000AB68;

  return daemon.getter();
}

uint64_t sub_10000AB68(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalBeaconing();
  v9 = sub_10000CA70(&unk_100024B10, 255, &type metadata accessor for Daemon);
  v10 = sub_10000CA70(&unk_100025540, 255, type metadata accessor for LocalBeaconing);
  *v6 = v12;
  v6[1] = sub_10000AD4C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10000AD4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = v4[3];

    return _swift_task_switch(sub_10000B004, v7, 0);
  }

  else
  {
    v8 = v4[5];

    v9 = swift_task_alloc();
    v4[9] = v9;
    *v9 = v6;
    v9[1] = sub_10000AEDC;
    v10 = v4[2];

    return sub_10000CCFC(v10);
  }
}

uint64_t sub_10000AEDC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10000B0CC;
  }

  else
  {
    v4 = sub_10000B068;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10000B004()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000B068()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000B0CC()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000B130(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100002ABC(&qword_100025168, &qword_10001A650);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = v4;
  v14[7] = a3;
  v14[8] = a4;
  sub_10000CA5C(a1, a2);
  v15 = v4;

  sub_100009328(0, 0, v12, &unk_10001A6B0, v14);
}

uint64_t sub_10000B270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = swift_isaMask & *a6;
  v9 = type metadata accessor for LocalBeaconKeyInfo();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v12 = *(*(sub_100002ABC(&qword_1000251E8, &unk_10001A6B8) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000B3C0, 0, 0);
}

uint64_t sub_10000B3C0()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    v2 = v0[13];
    v3 = type metadata accessor for LocalBeaconKeyInfo();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  }

  else
  {
    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[2];
    v16 = type metadata accessor for PropertyListDecoder();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_100005700(v15, v1);
    PropertyListDecoder.init()();
    sub_10000CA70(&qword_1000251F8, 255, &type metadata accessor for LocalBeaconKeyInfo);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v22 = v0[11];
    v21 = v0[12];
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[8];
    v27 = v0[2];
    v26 = v0[3];

    (*(v24 + 16))(v23, v22, v25);
    sub_100004BB8(v23, v21);
    (*(v24 + 8))(v22, v25);
    sub_10000C90C(v27, v26);
    v33 = v0[12];
    v34 = v0[13];
    v35 = type metadata accessor for LocalBeaconKeyInfo();
    (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
    sub_10000CAB8(v33, v34);
  }

  v4 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v6 = v0[7];
    v8 = *(v6 + 80);
    v7 = *(v6 + 88);
    v36 = (*(v7 + 16) + **(v7 + 16));
    v9 = *(*(v7 + 16) + 4);
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_10000B8A0;
    v11 = v0[13];

    return v36(v11, v8, v7);
  }

  else
  {
    v19 = v0[5];
    v20 = v0[6];
    sub_100007FF8(v0[13], &qword_1000251E8, &unk_10001A6B8);
    v19(0);
    v29 = v0[12];
    v28 = v0[13];
    v31 = v0[10];
    v30 = v0[11];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_10000B8A0()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 128) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v4 = sub_10000BA7C;
  }

  else
  {
    v4 = sub_10000B9D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000B9D0()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100007FF8(v0[13], &qword_1000251E8, &unk_10001A6B8);
  v1(0);
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000BA7C()
{
  sub_100007FF8(v0[13], &qword_1000251E8, &unk_10001A6B8);
  v1 = v0[16];
  if (qword_100024AE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002850(v2, qword_100025780);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "TRACE: XPC error: %@", v5, 0xCu);
    sub_100007FF8(v6, &qword_1000251F0, &qword_100019B60);
  }

  v9 = v0[5];
  v8 = v0[6];

  swift_errorRetain();
  v9(v1);

  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14();
}

void sub_10000BC60(void *a1, int a2, void *a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = a1;
  if (a3)
  {
    v7 = a3;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  sub_10000B130(v8, v10, sub_10000C904, v11);

  sub_10000C90C(v8, v10);
}

void sub_10000BD50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_10000BDB4(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_10000C89C();
}

id sub_10000BDF4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000BE54(uint64_t a1, uint64_t a2)
{
  result = sub_10000CA70(&qword_100025148, a2, type metadata accessor for SearchPartyPushXPCService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000BF3C()
{
  v0 = type metadata accessor for Logger();
  sub_100002B04(v0, qword_100025780);
  sub_100002850(v0, qword_100025780);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000BFBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100001FF0;

  return sub_10000A40C(a1, v1);
}

uint64_t sub_10000C054()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000C09C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000091F0;

  return sub_1000091F4(a1, v4, v5, v6, v7);
}

uint64_t sub_10000C164(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002ABC(&qword_100025168, &qword_10001A650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C1D4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000C2CC;

  return v7(a1);
}

uint64_t sub_10000C2CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000C3C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C3FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000091F0;

  return sub_10000C1D4(a1, v5);
}

unint64_t sub_10000C4B4()
{
  result = qword_100025170;
  if (!qword_100025170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025170);
  }

  return result;
}

uint64_t sub_10000C508(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_10000C5FC;

  return v6(v2 + 16);
}

uint64_t sub_10000C5FC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10000C72C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000091F0;

  return sub_10000C508(a1, v5);
}

uint64_t sub_10000C7E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008E08;

  return sub_10000C508(a1, v5);
}

uint64_t sub_10000C8CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C90C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000056AC(a1, a2);
  }

  return a1;
}

uint64_t sub_10000C920()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  if (v2 >> 60 != 15)
  {
    sub_1000056AC(*(v0 + 32), v2);
  }

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000C980(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008E08;

  return sub_10000B270(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10000CA5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005700(a1, a2);
  }

  return a1;
}

uint64_t sub_10000CA70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10000CAB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002ABC(&qword_1000251E8, &unk_10001A6B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SearchPartyPushXPCService.Entitlement(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SearchPartyPushXPCService.Entitlement(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000CC44()
{
  result = qword_100025200;
  if (!qword_100025200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025200);
  }

  return result;
}

unint64_t sub_10000CC9C()
{
  result = qword_100025208;
  if (!qword_100025208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025208);
  }

  return result;
}

uint64_t sub_10000CCFC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(sub_100002ABC(&qword_1000251E8, &unk_10001A6B8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for LocalBeaconKeyInfo();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v6 = *(v5 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000CE18, v1, 0);
}

uint64_t sub_10000CE18()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_10000FC04(v0[11], v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_100007FF8(v0[15], &qword_1000251E8, &unk_10001A6B8);
  }

  else
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = v0[12];
    sub_100011028(v0[15], v0[19]);
    v8 = OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_beaconInfo;
    swift_beginAccess();
    sub_10000FC04(v7 + v8, v6);
    v9 = v4(v6, 1, v5);
    v10 = v0[19];
    if (v9 == 1)
    {
      v11 = v0[14];
      sub_10000589C(v0[19]);
      sub_100007FF8(v11, &qword_1000251E8, &unk_10001A6B8);
    }

    else
    {
      sub_100011028(v0[14], v0[18]);
      if (sub_1000054FC())
      {
        if (qword_100024AE8 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100002850(v12, qword_100025798);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        v15 = os_log_type_enabled(v13, v14);
        v17 = v0[18];
        v16 = v0[19];
        if (v15)
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "Already know about this beacon -- ignoring redundant call.", v18, 2u);
        }

        sub_10000589C(v17);
        sub_10000589C(v16);
        goto LABEL_19;
      }

      v19 = v0[19];
      sub_10000589C(v0[18]);
      sub_10000589C(v19);
    }
  }

  v20 = v0[16];
  if (v4(v0[11], 1, v20) == 1)
  {
    v22 = v0[12];
    v21 = v0[13];
    v23 = OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_beaconInfo;
    swift_beginAccess();
    sub_10000FC04(v22 + v23, v21);
    v24 = v4(v21, 1, v20);
    sub_100007FF8(v21, &qword_1000251E8, &unk_10001A6B8);
    if (v24 == 1)
    {
      if (qword_100024AE8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100002850(v25, qword_100025798);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Beacon already removed -- ignoring redundant call.", v28, 2u);
      }

LABEL_19:
      v30 = v0[18];
      v29 = v0[19];
      v32 = v0[14];
      v31 = v0[15];
      v33 = v0[13];

      v34 = v0[1];

      return v34();
    }
  }

  v36 = async function pointer to daemon.getter[1];
  v37 = swift_task_alloc();
  v0[20] = v37;
  *v37 = v0;
  v37[1] = sub_10000D23C;

  return daemon.getter();
}

uint64_t sub_10000D23C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v12 = *v1;
  *(v3 + 168) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 176) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for StorageService();
  v9 = sub_100011E1C(&unk_100024B10, &type metadata accessor for Daemon);
  v10 = sub_100011E1C(&qword_100024B30, type metadata accessor for StorageService);
  *v6 = v12;
  v6[1] = sub_10000D418;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10000D418(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  v4[23] = a1;
  v4[24] = v1;

  if (v1)
  {
    v7 = v4[12];
    v8 = sub_10000D88C;
  }

  else
  {
    v9 = v4[21];

    v8 = sub_10000D550;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10000D550()
{
  v1 = *(v0[23] + 136);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10000D5EC;
  v3 = v0[11];

  return sub_100016998(v3);
}

uint64_t sub_10000D5EC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_10000D7E8;
  }

  else
  {
    v6 = sub_10000D718;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10000D718()
{
  v1 = v0[23];
  v3 = v0[11];
  v2 = v0[12];

  v4 = OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_beaconInfo;
  swift_beginAccess();
  sub_100010FB8(v3, v2 + v4);
  swift_endAccess();
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000D7E8()
{
  v1 = v0[23];

  v2 = v0[26];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000D88C()
{
  v1 = v0[21];

  v2 = v0[24];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000D930()
{
  v0 = type metadata accessor for Logger();
  sub_100002B04(v0, qword_100025798);
  v1 = sub_100002850(v0, qword_100025798);
  if (qword_100024AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_100002850(v0, qword_1000257B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000D9F8()
{
  v1 = *(v0 + 120);

  sub_100007FF8(v0 + OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_beaconInfo, &qword_1000251E8, &unk_10001A6B8);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for LocalBeaconing()
{
  result = qword_100025240;
  if (!qword_100025240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000DAA4()
{
  sub_10000DB50();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000DB50()
{
  if (!qword_100025250)
  {
    type metadata accessor for LocalBeaconKeyInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100025250);
    }
  }
}

uint64_t sub_10000DBC8()
{
  if (&getBeacon(device:count:swizzler:))
  {
    initializeFindMyBeaconingSupport()();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10000DC68;
  v2 = *(v0 + 40);

  return sub_10000E660();
}

uint64_t sub_10000DC68()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    *(v2 + 56) = v8;
    *v8 = v4;
    v8[1] = sub_10000DDD8;

    return daemon.getter();
  }
}

uint64_t sub_10000DDD8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for StorageService();
  v9 = sub_100011E1C(&unk_100024B10, &type metadata accessor for Daemon);
  v10 = sub_100011E1C(&qword_100024B30, type metadata accessor for StorageService);
  *v6 = v12;
  v6[1] = sub_10000DFB4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10000DFB4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = sub_10000E5FC;
  }

  else
  {
    v9 = v4[8];

    v4[12] = *(*(sub_100002ABC(&qword_1000251E8, &unk_10001A6B8) - 8) + 64);
    v4[13] = swift_task_alloc();
    v8 = sub_10000E128;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10000E128()
{
  v1 = *(v0[10] + 136);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_10000E1C4;
  v3 = v0[13];

  return sub_100017644(v3);
}

uint64_t sub_10000E1C4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10000E58C;
  }

  else
  {
    v6 = sub_10000E2F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10000E2F0()
{
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[12] + 15;
  v4 = OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_beaconInfo;
  swift_beginAccess();
  sub_100011994(v1, v2 + v4);
  swift_endAccess();

  v5 = swift_task_alloc();
  sub_10000FC04(v2 + v4, v5);
  v6 = type metadata accessor for LocalBeaconKeyInfo();
  LODWORD(v2) = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_100007FF8(v5, &qword_1000251E8, &unk_10001A6B8);

  if (v2 != 1)
  {
    if (qword_100024AE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100002850(v7, qword_100025798);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Beaconing FMIP keys.";
    goto LABEL_12;
  }

  if (&getBeacon(device:count:swizzler:))
  {
    logInUse()();
    goto LABEL_14;
  }

  if (qword_100024AE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100002850(v12, qword_100025798);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Not beaconing since FMIP is turned off.";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);
  }

LABEL_13:

LABEL_14:
  v13 = v0[10];
  v14 = v0[5];

  *(v14 + OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_initialFetchComplete) = 1;
  v15 = v0[1];

  return v15();
}

uint64_t sub_10000E58C()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[15];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10000E5FC()
{
  v1 = v0[8];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000E660()
{
  *(v1 + 96) = v0;
  *(v1 + 104) = *v0;
  return _swift_task_switch(sub_10000E6A8, v0, 0);
}

uint64_t sub_10000E6A8()
{
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v2 = sub_100011E1C(&qword_100025328, &type metadata accessor for Feature.FindMy);
  v0[6] = v2;
  v3 = sub_100011A04(v0 + 2);
  v4 = *(*(My - 8) + 104);
  v4(v3, enum case for Feature.FindMy.baLPEM(_:), My);
  v5 = isFeatureEnabled(_:)();
  sub_1000057EC(v0 + 2);
  if ((v5 & 1) != 0 || (v0[10] = My, v0[11] = v2, v6 = sub_100011A04(v0 + 7), v4(v6, enum case for Feature.FindMy.baPowerOff(_:), My), v7 = isFeatureEnabled(_:)(), sub_1000057EC(v0 + 7), (v7)) && (static SystemInfo.isFactoryBuild.getter())
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = swift_task_alloc();
    v0[14] = v10;
    *(v10 + 16) = 0;
    *(v10 + 24) = v9;
    *(v10 + 32) = v8;
    v11 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_10000E8D0;

    return withOnceCheckedThrowingContinuation<A>(function:_:)();
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10000E8D0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = sub_10000EA10;
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 96);

    v5 = sub_10000E9F8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10000EA10()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_10000EA74(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalBeaconing();
  *v5 = v2;
  v5[1] = sub_1000091F0;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10000EB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LocalBeaconing();
  *v9 = v4;
  v9[1] = sub_1000091F0;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10000EBE8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalBeaconing();
  *v5 = v2;
  v5[1] = sub_100008E08;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10000EC94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000091F0;

  return sub_10000DBA8();
}

uint64_t sub_10000ED20(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalBeaconing();
  *v5 = v2;
  v5[1] = sub_100008E08;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_10000EDCC()
{
  v1 = *v0;
  type metadata accessor for LocalBeaconing();
  sub_100011E1C(&unk_100025540, type metadata accessor for LocalBeaconing);
  return ActorServiceProtocol.description.getter();
}

void *sub_10000EE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v6 = sub_100002ABC(&qword_100025358, &qword_10001A9A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for GeneratedTokens();
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  result = __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = &_swiftEmptyArrayStorage;
  if (!v15)
  {
    return result;
  }

  v34 = &_swiftEmptyArrayStorage;
  result = sub_100011634(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v24 = v3;
    v25 = a2 - a1;
    v16 = 0;
    v17 = v34;
    v18 = (v30 + 32);
    v19 = v32;
    if (v32 <= v31)
    {
      v19 = v31;
    }

    v27 = v19 - v31 + 1;
    v28 = (v30 + 48);
    v20 = v10;
    v26 = v9;
    while (v16 < v15)
    {
      if (__OFADD__(v16, 1))
      {
        goto LABEL_18;
      }

      v33 = v16 + 1;
      TokenSequence.next()();
      result = (*v28)(v9, 1, v20);
      if (result == 1)
      {
        goto LABEL_23;
      }

      v21 = *v18;
      (*v18)(v14, v9, v20);
      v34 = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        sub_100011634(v22 > 1, v23 + 1, 1);
        v17 = v34;
      }

      v17[2] = v23 + 1;
      result = v21(v17 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23, v14, v20);
      if (v32 < v31)
      {
        goto LABEL_19;
      }

      if (v27 == ++v16)
      {
        goto LABEL_20;
      }

      v15 = v25;
      v9 = v26;
      if (v33 == v25)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *sub_10000F0EC(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v14 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for GeneratedTokens() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = v14[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000F230@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v53 = a1;
  v54 = a2;
  v59 = a3;
  v3 = type metadata accessor for NearOwnerAdvertisement();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Advertisement();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  __chkstk_darwin(v6);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PublicKey();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  __chkstk_darwin(v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DiversifiedRootKeys();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for KeyGenerationHint();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DateInterval();
  v57 = *(v22 - 8);
  v58 = v22;
  v23 = *(v57 + 64);
  __chkstk_darwin(v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(type metadata accessor for LocalBeaconKeyInfo() + 24);
  GeneratedTokens.hint.getter();
  KeyGenerationHint.index.getter();
  v27 = v17;
  v28 = v50;
  (*(v18 + 8))(v21, v27);
  dateInterval(baseTime:bucket:bucketSizeInMinutes:)();
  GeneratedTokens.diversifiedRootKeys.getter();
  DiversifiedRootKeys.publicKey.getter();
  (*(v48 + 8))(v16, v49);
  PublicKey.advertisement.getter();
  (*(v51 + 8))(v12, v52);
  if (v54 == 1 || v54 == -1)
  {
    v29 = v45;
    Advertisement.nearOwner.getter();
    (*(v55 + 8))(v28, v56);
    v30 = NearOwnerAdvertisement.data.getter();
    v32 = v31;
    (*(v46 + 8))(v29, v47);
    v33 = objc_allocWithZone(SPBeaconingKey);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v35 = Data._bridgeToObjectiveC()().super.isa;
    v36 = [v33 initWithDateInterval:isa key:v35];

    v37 = v30;
  }

  else
  {
    v38 = Advertisement.data.getter();
    v32 = v39;
    (*(v55 + 8))(v28, v56);
    v40 = objc_allocWithZone(SPBeaconingKey);
    v41 = DateInterval._bridgeToObjectiveC()().super.isa;
    v42 = Data._bridgeToObjectiveC()().super.isa;
    v36 = [v40 initWithDateInterval:v41 key:v42];

    v37 = v38;
  }

  sub_1000056AC(v37, v32);
  result = (*(v57 + 8))(v25, v58);
  *v59 = v36;
  return result;
}

void *sub_10000F75C(uint64_t a1)
{
  v4 = sub_100002ABC(&qword_1000251E8, &unk_10001A6B8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for LocalBeaconKeyInfo();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_beaconInfo;
  swift_beginAccess();
  sub_10000FC04(v1 + v13, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100007FF8(v7, &qword_1000251E8, &unk_10001A6B8);
    return sub_100012324();
  }

  else
  {
    sub_100011028(v7, v12);
    v15 = sub_100011E64(a1, v12);
    result = sub_10000589C(v12);
    if (!v2)
    {
      return v15;
    }
  }

  return result;
}

uint64_t sub_10000F934()
{
  if (&getBeacon(device:count:swizzler:))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = *(*(sub_100002ABC(&qword_1000251E8, &unk_10001A6B8) - 8) + 64) + 15;
    v4 = swift_task_alloc();
    v5 = OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_beaconInfo;
    swift_beginAccess();
    sub_10000FC04(v2 + v5, v4);
    v6 = type metadata accessor for LocalBeaconKeyInfo();
    v1 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
    sub_100007FF8(v4, &qword_1000251E8, &unk_10001A6B8);
  }

  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_10000FA80(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10000FAA0, v1, 0);
}

uint64_t sub_10000FAA0()
{
  v1 = v0[3];
  v2 = sub_10000F75C(v0[2]);
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10000FB1C(uint64_t a1)
{
  result = sub_100011E1C(&qword_100025318, type metadata accessor for LocalBeaconing);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002ABC(&qword_1000251E8, &unk_10001A6B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000FC74(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  v11[4] = sub_100011A78;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100010ECC;
  v11[3] = &unk_1000214C0;
  v10 = _Block_copy(v11);

  [v8 sharedHardwareManager:v10];
  _Block_release(v10);
}

uint64_t sub_10000FD84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100002ABC(&qword_100025168, &qword_10001A650);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v18 - v12;
  v18[0] = a1;
  sub_100011AA0();
  deoptionalize<A>(_:)();
  v14 = v18[1];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v14;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;
  *(v16 + 64) = a5;

  sub_100009618(0, 0, v13, &unk_10001A960, v16);
}

uint64_t sub_10000FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 104) = a6;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 64) = a1;
  return _swift_task_switch(sub_10000FF10, 0, 0);
}

uint64_t sub_10000FF10()
{
  v1 = *(v0 + 104);
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  *(v5 + 32) = *(v0 + 11);
  v0[6] = sub_100011C58;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100010E40;
  v0[5] = &unk_100021538;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  v8 = [v2 startLPEMConfigSession:v6];
  _Block_release(v6);
  *v4 = v8;
  v9 = v0[1];

  return v9();
}

void sub_10001005C(void *a1, NSObject *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100002ABC(&qword_100025168, &qword_10001A650);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v29 - v14;
  if (a2)
  {
    swift_errorRetain();
    if (qword_100024AE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100002850(v16, qword_100025798);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = _convertErrorToNSError(_:)();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error starting LPEM configuration session: %{public}@", v19, 0xCu);
      sub_100007FF8(v20, &qword_1000251F0, &qword_100019B60);
    }

    v29[1] = a2;
    OnceCheckedContinuation.resume(throwing:)();
  }

  else if (a1)
  {
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = a4 & 1;
    *(v23 + 40) = a5;
    *(v23 + 48) = a1;
    *(v23 + 56) = a3;
    *(v23 + 64) = a6;
    v24 = a1;

    sub_100009328(0, 0, v15, &unk_10001A970, v23);
  }

  else
  {
    if (qword_100024AE8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100002850(v25, qword_100025798);
    v29[0] = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v29[0], v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v29[0], v26, "startLPEMConfigSession returned a nil session!", v27, 2u);
    }

    v28 = v29[0];
  }
}

uint64_t sub_1000103C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 216) = a6;
  *(v7 + 224) = a7;
  *(v7 + 208) = a5;
  *(v7 + 240) = a4;

  return _swift_task_switch(sub_100010460, 0, 0);
}

uint64_t sub_100010460()
{
  v38 = v0;
  v1 = v0;
  v2 = v0 + 144;
  if (*(v1 + 240) == 1)
  {
    if (qword_100024AE8 != -1)
    {
      swift_once();
    }

    v3 = *(v1 + 208);
    v4 = type metadata accessor for Logger();
    sub_100002850(v4, qword_100025798);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v1 + 208);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v37 = v9;
      *v8 = 136315138;
      *(v1 + 144) = v7;
      type metadata accessor for LocalBeaconing();
      sub_100011E1C(&qword_100025320, type metadata accessor for LocalBeaconing);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = sub_10001108C(v10, v11, &v37);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s: Enabling NFHeadlessModeFeatureFindMy", v8, 0xCu);
      sub_1000057EC(v9);
    }

    v13 = *(v1 + 216);
    *(v1 + 144) = 0;
    v14 = [v13 enableLPEMFeature:4 error:v2];
    v15 = *(v1 + 144);
    if (v14)
    {
LABEL_7:
      v16 = v1 + 80;
      v17 = *(v1 + 216);
      *(v1 + 80) = v1;
      *(v1 + 88) = sub_100010998;
      v18 = v15;
      v19 = swift_continuation_init();
      *(v1 + 200) = sub_100002ABC(&qword_100025338, &qword_10001A980);
      *(v1 + 176) = v19;
      *(v1 + 144) = _NSConcreteStackBlock;
      *(v1 + 152) = 1107296256;
      v20 = &unk_1000215B0;
      goto LABEL_14;
    }
  }

  else
  {
    if (qword_100024AE8 != -1)
    {
      swift_once();
    }

    v21 = *(v1 + 208);
    v22 = type metadata accessor for Logger();
    sub_100002850(v22, qword_100025798);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v1 + 208);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      *(v1 + 144) = v25;
      type metadata accessor for LocalBeaconing();
      sub_100011E1C(&qword_100025320, type metadata accessor for LocalBeaconing);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = sub_10001108C(v28, v29, &v37);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s: Disabling NFHeadlessModeFeatureFindMy", v26, 0xCu);
      sub_1000057EC(v27);
    }

    v31 = *(v1 + 216);
    *(v1 + 144) = 0;
    v32 = [v31 disableLPEMFeature:4 error:v2];
    v15 = *(v1 + 144);
    if (v32)
    {
      goto LABEL_7;
    }
  }

  v33 = v15;
  v34 = _convertNSErrorToError(_:)();

  v16 = v1 + 16;
  *(v1 + 232) = v34;
  v17 = *(v1 + 216);
  swift_willThrow();
  *(v1 + 16) = v1;
  *(v1 + 24) = sub_100010B30;
  v35 = swift_continuation_init();
  *(v1 + 200) = sub_100002ABC(&qword_100025338, &qword_10001A980);
  *(v1 + 176) = v35;
  *(v1 + 144) = _NSConcreteStackBlock;
  *(v1 + 152) = 1107296256;
  v20 = &unk_100021588;
LABEL_14:
  *(v1 + 160) = sub_100010E0C;
  *(v1 + 168) = v20;
  [v17 endSessionWithCompletion:v2];

  return _swift_continuation_await(v16);
}

uint64_t sub_100010998()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100010AA4, 0, 0);
}

uint64_t sub_100010AA4()
{
  v1 = *(v0 + 224);
  OnceCheckedContinuation.resume<>()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100010B30()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100010C3C, 0, 0);
}

uint64_t sub_100010C3C()
{
  if (qword_100024AE8 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  sub_100002850(v2, qword_100025798);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "LPEM error: %{public}@", v6, 0xCu);
    sub_100007FF8(v7, &qword_1000251F0, &qword_100019B60);
  }

  v10 = v0[28];
  v9 = v0[29];

  v0[18] = v9;
  OnceCheckedContinuation.resume(throwing:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100010E0C(uint64_t a1)
{
  v1 = *sub_100005754((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

void sub_100010E40(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_100010ECC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100010F34()
{
  v0 = type metadata accessor for Logger();
  sub_100002B04(v0, qword_1000257B0);
  sub_100002850(v0, qword_1000257B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100010FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002ABC(&qword_1000251E8, &unk_10001A6B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalBeaconKeyInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001108C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100011158(v11, 0, 0, 1, a1, a2);
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
    sub_100011DA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000057EC(v11);
  return v7;
}

unint64_t sub_100011158(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100011264(a5, a6);
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

void *sub_100011264(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000112B0(a1, a2);
  sub_1000113E0(&off_100021000);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_1000112B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000114CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
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
        v7 = sub_1000114CC(v10, 0);
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

uint64_t sub_1000113E0(uint64_t result)
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

  result = sub_100011540(result, v12, 1, v3);
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

void *sub_1000114CC(uint64_t a1, uint64_t a2)
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

  sub_100002ABC(&qword_100025340, &qword_10001A988);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100011540(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002ABC(&qword_100025340, &qword_10001A988);
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

size_t sub_100011634(size_t a1, int64_t a2, char a3)
{
  result = sub_100011674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100011654(void *a1, int64_t a2, char a3)
{
  result = sub_10001184C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100011674(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002ABC(&qword_100025360, &qword_10001A9A8);
  v10 = *(type metadata accessor for GeneratedTokens() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for GeneratedTokens() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10001184C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002ABC(&qword_100025368, &qword_10001A9B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100002ABC(&unk_100025370, &qword_10001A9B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100011994(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002ABC(&qword_1000251E8, &unk_10001A6B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100011A04(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100011A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100011AA0()
{
  result = qword_100025330;
  if (!qword_100025330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025330);
  }

  return result;
}

uint64_t sub_100011AEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100011B3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008E08;

  return sub_10000FEE4(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100011C18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100011C68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100011CB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000091F0;

  return sub_1000103C8(a1, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_100011DA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100011E1C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100011E64(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v3 = sub_100002ABC(&qword_100025348, &qword_10001A990);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v34 - v5;
  v41 = type metadata accessor for SharedSecretKey();
  v38 = *(v41 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v41);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PublicKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002ABC(&qword_100025350, &qword_10001A998);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v34 - v15;
  v17 = type metadata accessor for TokenSequence();
  v35 = *(v17 - 8);
  v36 = v17;
  v18 = *(v35 + 64);
  __chkstk_darwin(v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Date();
  v40 = *(v42 - 8);
  v21 = *(v40 + 64);
  __chkstk_darwin(v42);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ReferenceClock.now.getter();
  v24 = type metadata accessor for LocalBeaconKeyInfo();
  v25 = v24[5];
  v26 = v24[6];
  bucket(beaconIdentifier:baseTime:date:bucketSizeInMinutes:)();
  v27 = type metadata accessor for PrivateKey();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  (*(v9 + 16))(v12, a2 + v24[7], v8);
  (*(v38 + 16))(v39, a2 + v24[8], v41);
  v28 = type metadata accessor for KeyGenerationHint();
  v29 = v43;
  (*(*(v28 - 8) + 56))(v43, 1, 1, v28);
  v30 = v44;
  TokenSequence.init(privateKey:publicKey:sharedKey:startIndex:hint:)();
  if (v30)
  {
    (*(v40 + 8))(v23, v42);
  }

  else
  {
    v31 = sub_10000EE38(0, 5, v20);
    __chkstk_darwin(v31);
    v32 = v37;
    *(&v34 - 2) = a2;
    *(&v34 - 1) = v32;
    v29 = sub_10000F0EC(sub_100012720, (&v34 - 4), v31);

    (*(v40 + 8))(v23, v42);
    (*(v35 + 8))(v20, v36);
  }

  return v29;
}

void *sub_100012324()
{
  v1 = &_swiftEmptyArrayStorage;
  if (!&getBeacon(device:count:swizzler:))
  {
    return v1;
  }

  sub_100011654(0, 5, 0);
  v2 = 0;
  v3 = &_swiftEmptyArrayStorage;
  do
  {
    v4 = getBeacon(device:count:swizzler:)();
    if (v0)
    {

      return v1;
    }

    v45 = v3;
    v8 = v3[2];
    v7 = v3[3];
    if (v8 >= v7 >> 1)
    {
      v44 = v4;
      v10 = v5;
      v11 = v6;
      sub_100011654((v7 > 1), v8 + 1, 1);
      v6 = v11;
      v5 = v10;
      v4 = v44;
      v3 = v45;
    }

    ++v2;
    v3[2] = v8 + 1;
    v9 = &v3[3 * v8];
    v9[4] = v4;
    v9[5] = v5;
    v9[6] = v6;
  }

  while (v2 != 5);
  v35 = 0;
  keyDuration.getter();
  v12 = v3[2];
  if (!v12)
  {

    return &_swiftEmptyArrayStorage;
  }

  v45 = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  v14 = 0;
  v15 = v3 + 6;
  v36 = v12;
  v37 = v3;
  while (v14 < v3[2])
  {
    v42 = v14 + 1;
    v17 = *(v15 - 2);
    v39 = *(v15 - 1);
    v16 = v39;
    v18 = *v15;
    v19 = type metadata accessor for Date();
    v43 = &v35;
    v44 = v19;
    v38 = *(v19 - 8);
    v20 = v38;
    v21 = *(v38 + 64);
    __chkstk_darwin(v19);
    v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100005700(v17, v16);
    Date.init(timeIntervalSince1970:)();
    v40 = type metadata accessor for DateInterval();
    v41 = &v35;
    v23 = *(v40 - 8);
    v24 = *(v23 + 64);
    v25 = __chkstk_darwin(v40);
    v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    __chkstk_darwin(v25);
    (*(v20 + 16))(v22, v22, v44);
    DateInterval.init(start:duration:)();
    v28 = objc_allocWithZone(SPBeaconingKey);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v30 = v39;
    v31 = Data._bridgeToObjectiveC()().super.isa;
    [v28 initWithDateInterval:isa key:v31];

    (*(v23 + 8))(v27, v40);
    v32 = v22;
    v33 = v36;
    v3 = v37;
    (*(v38 + 8))(v32, v44);
    sub_1000056AC(v17, v30);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v34 = v45[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    v14 = v42;
    v15 += 3;
    if (v33 == v42)
    {

      return v45;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100012754()
{
  v0 = type metadata accessor for Logger();
  sub_100002B04(v0, qword_1000257D0);
  v1 = sub_100002850(v0, qword_1000257D0);
  if (qword_100024B00 != -1)
  {
    swift_once();
  }

  v2 = sub_100002850(v0, qword_1000257E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100012884()
{
  v1[4] = v0;
  v2 = type metadata accessor for XPCServiceDescription();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for MachServiceName();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000129AC, v0, 0);
}

uint64_t sub_1000129AC()
{
  receiver = v0[5].receiver;
  super_class = v0[5].super_class;
  v3 = v0[4].receiver;
  v4 = v0[4].super_class;
  v15 = v0[3].super_class;
  v5 = v0[2].receiver;
  MachServiceName.init(_:)();
  v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SPLocalBeaconManagerXPCProtocol];
  v0[6].receiver = v6;
  v7 = sub_100002ABC(&qword_100025528, &qword_10001AB58);
  v8 = objc_allocWithZone(v7);
  swift_weakInit();
  swift_weakAssign();
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  v9 = objc_msgSendSuper2(v0 + 1, "init");
  v0[6].super_class = v9;
  (*(v4 + 2))(receiver, super_class, v3);
  sub_100015CDC();
  v10 = v9;
  v11 = v6;
  XPCServiceDescription.init(name:exportedObject:exportedInterface:options:requiredEntitlement:shouldAccept:)();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v0[7].receiver = v13;
  *v13 = v0;
  v13[1] = sub_100012B84;

  return daemon.getter();
}

uint64_t sub_100012B84(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  *(v3 + 120) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalBeaconing();
  v9 = sub_1000165B4(&unk_100024B10, 255, &type metadata accessor for Daemon);
  v10 = sub_1000165B4(&unk_100025540, 255, type metadata accessor for LocalBeaconing);
  *v6 = v12;
  v6[1] = sub_100012D68;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100012D68()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 32);

  if (v0)
  {
    v7 = sub_10000A24C;
  }

  else
  {

    v7 = sub_100012ED0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100012ED0()
{
  *(v0 + 144) = *(*(v0 + 32) + 128);
  type metadata accessor for XPCSessionManager();
  sub_1000165B4(&qword_100025160, 255, &type metadata accessor for XPCSessionManager);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000A0E8, v2, v1);
}

uint64_t sub_100012F94(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalBeaconingXPCService();
  *v5 = v2;
  v5[1] = sub_1000091F0;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10001303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LocalBeaconingXPCService();
  *v9 = v4;
  v9[1] = sub_1000091F0;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100013100(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalBeaconingXPCService();
  *v5 = v2;
  v5[1] = sub_100008E08;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1000131A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000091F0;

  return sub_100012884();
}

uint64_t sub_100013234(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalBeaconingXPCService();
  *v5 = v2;
  v5[1] = sub_100008E08;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1000132DC()
{
  v1 = *v0;
  type metadata accessor for LocalBeaconingXPCService();
  sub_1000165B4(&qword_100024B20, v2, type metadata accessor for LocalBeaconingXPCService);
  return ActorServiceProtocol.description.getter();
}

Swift::Int sub_100013344()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000133B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001340C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100021028, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100013480()
{
  *(v1 + 40) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = sub_100013514;

  return daemon.getter();
}

uint64_t sub_100013514(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalBeaconing();
  v9 = sub_1000165B4(&unk_100024B10, 255, &type metadata accessor for Daemon);
  v10 = sub_1000165B4(&unk_100025540, 255, type metadata accessor for LocalBeaconing);
  *v6 = v12;
  v6[1] = sub_1000136F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000136F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v10 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_100013BF8;
  }

  else
  {
    v7 = v3[7];
    v8 = v3[5];

    v6 = sub_100013820;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100013820()
{
  type metadata accessor for Transaction();
  v1 = static Transaction.currentNSXPCConnection.getter();
  v0[11] = v1;
  if (v1)
  {
    v2 = NSXPCConnection.shortDescription.getter();
  }

  else
  {
    v3 = 0xE90000000000003ELL;
    v2 = 0x4E574F4E4B4E553CLL;
  }

  v0[12] = v2;
  v0[13] = v3;
  v4 = v0[9];

  return _swift_task_switch(sub_1000138C0, v4, 0);
}

uint64_t sub_1000138C0()
{
  if (&getBeacon(device:count:swizzler:))
  {
    v1 = 1;
  }

  else
  {
    v2 = v0[9];
    v3 = *(*(sub_100002ABC(&qword_1000251E8, &unk_10001A6B8) - 8) + 64) + 15;
    v4 = swift_task_alloc();
    v5 = OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_beaconInfo;
    swift_beginAccess();
    sub_1000165FC(v2 + v5, v4, &qword_1000251E8, &unk_10001A6B8);
    v6 = type metadata accessor for LocalBeaconKeyInfo();
    v1 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
    sub_100015E60(v4);
  }

  v0[14] = v1;
  v7 = v0[5];

  return _swift_task_switch(sub_100013A14, v7, 0);
}

uint64_t sub_100013A14()
{
  v20 = v0;
  if (qword_100024AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  sub_100002850(v2, qword_1000257D0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446466;
    v12 = sub_10001108C(v7, v5, &v19);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: beaconingState() -> %ld", v10, 0x16u);
    sub_1000057EC(v11);
  }

  else
  {
    v13 = v0[13];
    v14 = v0[11];
    v15 = v0[9];
  }

  v16 = v0[1];
  v17 = v0[14];

  return v16(v17);
}

uint64_t sub_100013BF8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_100013C5C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for DateInterval();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(sub_100002ABC(&qword_1000251E8, &unk_10001A6B8) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for LocalBeaconKeyInfo();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v2[16] = v11;
  *v11 = v2;
  v11[1] = sub_100013DE0;

  return daemon.getter();
}

uint64_t sub_100013DE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalBeaconing();
  v9 = sub_1000165B4(&unk_100024B10, 255, &type metadata accessor for Daemon);
  v10 = sub_1000165B4(&unk_100025540, 255, type metadata accessor for LocalBeaconing);
  *v6 = v12;
  v6[1] = sub_100013FC4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100013FC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v5 = *(*v2 + 64);
  v6 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v7 = sub_100014880;
  }

  else
  {
    v8 = v3[17];

    v7 = sub_100014104;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100014104()
{
  type metadata accessor for Transaction();
  v1 = static Transaction.currentNSXPCConnection.getter();
  v0[21] = v1;
  if (v1)
  {
    v2 = NSXPCConnection.shortDescription.getter();
  }

  else
  {
    v3 = 0xE90000000000003ELL;
    v2 = 0x4E574F4E4B4E553CLL;
  }

  v0[22] = v2;
  v0[23] = v3;
  v4 = v0[19];

  return _swift_task_switch(sub_1000141A4, v4, 0);
}

uint64_t sub_1000141A4()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = OBJC_IVAR____TtC16findmybeaconingd14LocalBeaconing_beaconInfo;
  swift_beginAccess();
  sub_1000165FC(v1 + v5, v4, &qword_1000251E8, &unk_10001A6B8);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[20];
    sub_100015E60(v0[12]);
    v7 = sub_100012324();
    if (v6)
    {
      v8 = v0[23];

LABEL_6:
      v0[25] = v6;
      v14 = v0[8];
      v15 = sub_1000147F0;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = v0[20];
    v9 = v0[15];
    v10 = v0[7];
    sub_100011028(v0[12], v9);
    v11 = sub_100011E64(v10, v9);
    if (v6)
    {
      v12 = v0[23];
      v13 = v0[15];

      sub_10000589C(v13);
      goto LABEL_6;
    }

    v16 = v11;
    sub_10000589C(v0[15]);
    v7 = v16;
  }

  v0[24] = v7;
  v14 = v0[8];
  v15 = sub_10001430C;
LABEL_9:

  return _swift_task_switch(v15, v14, 0);
}

void sub_10001430C()
{
  v55 = v0;
  if (qword_100024AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = type metadata accessor for Logger();
  sub_100002850(v2, qword_1000257D0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v52 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v54 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_10001108C(v6, v5, &v54);
    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    v0 = v52;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: beaconingKeys(keyType: %ld) -> ", v8, 0x16u);
    sub_1000057EC(v9);
  }

  v10 = v0[24];
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v39 = v0[24];
    }

    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    return;
  }

  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  v48 = v0[24] + 32;
  v49 = (v0[10] + 8);
  v51 = v11;
  v50 = v10 & 0xC000000000000001;
  do
  {
    if (v13)
    {
      v32 = v0[24];
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v33 = *(v48 + 8 * v12);
    }

    v34 = v33;
    v35 = v0[23];

    v36 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v14 = v0[22];
      v15 = v0[23];
      v16 = v0[11];
      v53 = v0[9];
      v17 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v17 = 136446722;
      *(v17 + 4) = sub_10001108C(v14, v15, &v54);
      *(v17 + 12) = 2080;
      v18 = [v36 key];
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v0[5] = v19;
      v0[6] = v21;
      sub_1000080F4();
      v22 = DataProtocol.hexString.getter();
      v24 = v23;
      v25 = v21;
      v13 = v50;
      sub_1000056AC(v19, v25);
      v26 = sub_10001108C(v22, v24, &v54);

      *(v17 + 14) = v26;
      *(v17 + 22) = 2082;
      v27 = [v36 dateInterval];
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000165B4(&unk_100025558, 255, &type metadata accessor for DateInterval);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*v49)(v16, v53);
      v31 = sub_10001108C(v28, v30, &v54);
      v0 = v52;

      *(v17 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s:   %s -- %{public}s", v17, 0x20u);
      swift_arrayDestroy();

      v11 = v51;
    }

    else
    {
    }

    ++v12;
  }

  while (v11 != v12);
LABEL_19:
  v40 = v0[23];
  v41 = v0[21];
  v42 = v0[19];
  v43 = v0[15];
  v45 = v0[11];
  v44 = v0[12];

  v46 = v0[1];
  v47 = v0[24];

  v46(v47);
}

uint64_t sub_1000147F0()
{
  v1 = v0[21];
  v2 = v0[19];

  v3 = v0[25];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100014880()
{
  v1 = v0[17];

  v2 = v0[20];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100014908()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100016994;

  return sub_100013480();
}

uint64_t sub_100014994(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014A28;

  return sub_100013C5C(a1);
}

uint64_t sub_100014A28(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100014B28(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Transaction();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = v2;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100014BD8(void *a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = swift_isaMask & *a1;
  return _swift_task_switch(sub_100014C34, 0, 0);
}

uint64_t sub_100014C34()
{
  v1 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 40);
    v5 = *(v3 + 80);
    v4 = *(v3 + 88);
    v11 = (*(v4 + 16) + **(v4 + 16));
    v6 = *(*(v4 + 16) + 4);
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_100014DB0;

    return v11(v5, v4);
  }

  else
  {
    v9 = *(v0 + 32);
    (*(v0 + 24))(-1);
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100014DB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_100014F48;
  }

  else
  {
    v8 = *(v4 + 48);
    swift_unknownObjectRelease();
    *(v4 + 72) = a1;
    v7 = sub_100014EE0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100014EE0()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 72));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100014F48()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  swift_unknownObjectRelease();
  v4(-1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100014FCC(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  sub_100014B28(sub_1000167B4, v5);
}

uint64_t sub_100015058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = v3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_10001510C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = swift_isaMask & *a1;
  return _swift_task_switch(sub_100015168, 0, 0);
}

uint64_t sub_100015168()
{
  v1 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 48);
    v5 = *(v3 + 80);
    v4 = *(v3 + 88);
    v12 = (*(v4 + 24) + **(v4 + 24));
    v6 = *(*(v4 + 24) + 4);
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_1000152FC;
    v8 = *(v0 + 24);

    return v12(v8, v5, v4);
  }

  else
  {
    v10 = *(v0 + 40);
    (*(v0 + 32))(&_swiftEmptyArrayStorage);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1000152FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1000154A0;
  }

  else
  {
    v8 = *(v4 + 56);
    swift_unknownObjectRelease();
    *(v4 + 80) = a1;
    v7 = sub_10001542C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001542C()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(*(v0 + 80));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000154A0()
{
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  swift_unknownObjectRelease();
  v4(&_swiftEmptyArrayStorage);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100015528(void *a1, int a2, uint64_t a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a1;
  sub_100015058(a3, sub_100016674, v7);
}

void sub_1000155BC(uint64_t a1, uint64_t a2)
{
  sub_100016768();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100015628(uint64_t *a1, int a2, void *aBlock)
{
  v4 = *a1;
  v5 = swift_isaMask;
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  v7 = *((v5 & v4) + 0x50);
  v8 = *((v5 & v4) + 0x58);
  v9 = a1;
  sub_100015FF8(sub_1000165AC);
}

void sub_1000156FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_10001576C(void *a1, int a2, int a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = a1;
  sub_100016454(&static os_log_type_t.debug.getter, "TRACE: Trampoline offlineAdvertisingKeys:completion:");
  _Block_release(v5);
}

uint64_t sub_1000157E4(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v11;
  v12 = a1;
  sub_100016174(v10, sub_10001698C);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100015968(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t (*a5)(void), const char *a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  sub_100016268(a5, v10, a6);
}

uint64_t sub_100015A48(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t (*a6)(void), const char *a7)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a1;
  sub_100016360(a6, v11, a7);
}

void sub_100015B0C(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_10000C89C();
}

uint64_t sub_100015B74(uint64_t a1, uint64_t a2)
{
  result = sub_1000165B4(&qword_100025518, a2, type metadata accessor for LocalBeaconingXPCService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100015C5C()
{
  v0 = type metadata accessor for Logger();
  sub_100002B04(v0, qword_1000257E8);
  sub_100002850(v0, qword_1000257E8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100015CDC()
{
  result = qword_100025530;
  if (!qword_100025530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025530);
  }

  return result;
}

unint64_t sub_100015D30(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100015DA8(a1, a2, v6);
}

unint64_t sub_100015DA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100015E60(uint64_t a1)
{
  v2 = sub_100002ABC(&qword_1000251E8, &unk_10001A6B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100015EC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002ABC(&qword_100025568, &qword_10001AB78);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000165FC(v4, &v13, &qword_100025570, &qword_10001AB80);
      v5 = v13;
      v6 = v14;
      result = sub_100015D30(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100016664(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void sub_100015FF8(void (*a1)(void))
{
  if (qword_100024AF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002850(v2, qword_1000257D0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "getMacBeaconingConfig is not supported by FindMyBeaconDaemon!", v5, 2u);
  }

  type metadata accessor for SPBeaconManagerError(0);
  sub_100015EC8(&_swiftEmptyArrayStorage);
  sub_1000165B4(&qword_100024BB0, 255, type metadata accessor for SPBeaconManagerError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1(0);
}

uint64_t sub_100016174(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_100024AF8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002850(v3, qword_1000257D0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "poisonBeaconIdentifier is not supported by FindMyBeaconDaemon!", v6, 2u);
  }

  return a2();
}

uint64_t sub_100016268(uint64_t (*a1)(void), uint64_t a2, const char *a3)
{
  if (qword_100024AF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100002850(v5, qword_1000257D0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a3, v8, 2u);
  }

  return a1(0);
}

uint64_t sub_100016360(uint64_t (*a1)(void), uint64_t a2, const char *a3)
{
  if (qword_100024AF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100002850(v5, qword_1000257D0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a3, v8, 2u);
  }

  return a1();
}

void sub_100016454(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100024AF8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002850(v4, qword_1000257D0);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_10001654C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000165B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000165FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002ABC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100016664(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001667C()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000166BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008E08;

  return sub_10001510C(v2, v3, v5, v4);
}

unint64_t sub_100016768()
{
  result = qword_100025578;
  if (!qword_100025578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025578);
  }

  return result;
}

uint64_t sub_1000167C8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100016808()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000091F0;

  return sub_100014BD8(v2, v3, v4);
}

unint64_t sub_1000168C4()
{
  result = qword_100025580;
  if (!qword_100025580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025580);
  }

  return result;
}

unint64_t sub_10001691C()
{
  result = qword_100025588;
  if (!qword_100025588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025588);
  }

  return result;
}

uint64_t sub_100016998(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_100002ABC(&qword_1000251E8, &unk_10001A6B8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for LocalBeaconKeyInfo();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = type metadata accessor for Table();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100016B48, v1, 0);
}

uint64_t sub_100016B48()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_100016B6C, v1, 0);
}

uint64_t sub_100016B6C()
{
  v1 = v0[14];
  v2 = v0[3];
  type metadata accessor for StorageDatabase();
  sub_100018630(&qword_100024EF8, type metadata accessor for StorageDatabase);
  v0[15] = Database.writeConnection.getter();

  return _swift_task_switch(sub_100016C2C, v2, 0);
}

uint64_t sub_100016C2C()
{
  v1 = v0[15];
  if (v1)
  {
    if (qword_100024AA0 != -1)
    {
      swift_once();
    }

    v3 = v0[12];
    v2 = v0[13];
    v4 = v0[11];
    v5 = v0[8];
    v6 = v0[9];
    v7 = v0[7];
    v8 = v0[2];
    v9 = sub_100002850(v4, qword_1000256A8);
    (*(v3 + 16))(v2, v9, v4);
    sub_10000FC04(v8, v7);
    v10 = (*(v6 + 48))(v7, 1, v5);
    v11 = v0[13];
    if (v10 == 1)
    {
      v12 = v0[6];
      v13 = v0[4];
      v14 = v0[5];
      sub_100015E60(v0[7]);
      v15 = swift_task_alloc();
      *(v15 + 16) = v11;
      *(v15 + 24) = v1;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v14 + 8))(v12, v13);
      Connection.savepoint(_:block:)();
    }

    else
    {
      v23 = v0[10];
      v24 = v0[6];
      v25 = v0[4];
      v26 = v0[5];
      sub_100011028(v0[7], v23);
      v27 = swift_task_alloc();
      v27[2] = v11;
      v27[3] = v23;
      v27[4] = v1;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v26 + 8))(v24, v25);
      Connection.savepoint(_:block:)();

      sub_10000589C(v23);
    }

    v28 = v0[10];
    v30 = v0[6];
    v29 = v0[7];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v22 = v0[1];
  }

  else
  {
    v16 = type metadata accessor for DatabaseError();
    sub_100018630(&qword_100025648, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, enum case for DatabaseError.notConnected(_:), v16);
    swift_willThrow();
    v18 = v0[13];
    v19 = v0[10];
    v21 = v0[6];
    v20 = v0[7];

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_100016FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v33 = a1;
  v4 = type metadata accessor for OnConflict();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Insert();
  v34 = *(v36 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v36);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v8;
  v32 = v5;
  v12 = *(v5 + 104);
  v35 = v4;
  v12(v8, enum case for OnConflict.replace(_:), v4);
  sub_100002ABC(&qword_100025670, &unk_10001AD00);
  v13 = *(type metadata accessor for Setter() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10001AC80;
  if (qword_100024AA8 != -1)
  {
    swift_once();
  }

  v30 = v11;
  v16 = sub_100002ABC(&qword_100024EA8, &qword_10001A310);
  sub_100002850(v16, qword_1000256C0);
  v38 = 1;
  <- infix<A>(_:_:)();
  if (qword_100024AB0 != -1)
  {
    swift_once();
  }

  v17 = sub_100002ABC(&qword_100024EB8, &qword_10001A320);
  sub_100002850(v17, qword_1000256D8);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_100024AB8 != -1)
  {
    swift_once();
  }

  sub_100002850(v17, qword_1000256F0);
  v18 = type metadata accessor for LocalBeaconKeyInfo();
  v19 = a2 + v18[5];
  <- infix<A>(_:_:)();
  if (qword_100024AC0 != -1)
  {
    swift_once();
  }

  v20 = sub_100002ABC(&qword_100024EC0, &qword_10001A328);
  sub_100002850(v20, qword_100025708);
  v21 = v18[6];
  type metadata accessor for Date();
  <- infix<A>(_:_:)();
  if (qword_100024AC8 != -1)
  {
    swift_once();
  }

  v22 = sub_100002ABC(&qword_100024EC8, &qword_10001A330);
  sub_100002850(v22, qword_100025720);
  v23 = a2 + v18[7];
  v38 = PublicKey.data.getter();
  v39 = v24;
  <- infix<A>(_:_:)();
  sub_1000056AC(v38, v39);
  if (qword_100024AD0 != -1)
  {
    swift_once();
  }

  sub_100002850(v22, qword_100025738);
  v25 = a2 + v18[8];
  v38 = SharedSecretKey.data.getter();
  v39 = v26;
  <- infix<A>(_:_:)();
  sub_1000056AC(v38, v39);
  type metadata accessor for Table();
  v28 = v30;
  v27 = v31;
  QueryType.insert(or:_:)();

  (*(v32 + 8))(v27, v35);
  Connection.run(_:)();
  return (*(v34 + 8))(v28, v36);
}

uint64_t sub_100017548()
{
  v0 = type metadata accessor for Delete();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Table();
  QueryType.delete()();
  Connection.run(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100017644(uint64_t a1)
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

  return _swift_task_switch(sub_100017784, v1, 0);
}

uint64_t sub_100017784()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_1000177A8, v1, 0);
}

uint64_t sub_1000177A8()
{
  v1 = v0[18];
  v2 = v0[8];
  type metadata accessor for StorageDatabase();
  sub_100018630(&qword_100024EF8, type metadata accessor for StorageDatabase);
  v0[19] = Database.readConnection.getter();

  return _swift_task_switch(sub_100017868, v2, 0);
}

uint64_t sub_100017868()
{
  if (v0[19])
  {
    if (qword_100024AA0 != -1)
    {
      swift_once();
    }

    sub_100002850(v0[14], qword_1000256A8);
    sub_100002ABC(&qword_100025650, &qword_10001ACF8);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_10001AC90;
    if (qword_100024AB0 != -1)
    {
      swift_once();
    }

    v2 = sub_100002ABC(&qword_100024EB8, &qword_10001A320);
    v3 = sub_100002850(v2, qword_1000256D8);
    *(v1 + 56) = v2;
    v4 = sub_1000185DC(&qword_100025658, &qword_100024EB8, &qword_10001A320);
    *(v1 + 64) = v4;
    v5 = sub_100011A04((v1 + 32));
    v6 = *(*(v2 - 8) + 16);
    v6(v5, v3, v2);
    if (qword_100024AB8 != -1)
    {
      swift_once();
    }

    v7 = sub_100002850(v2, qword_1000256F0);
    *(v1 + 96) = v2;
    *(v1 + 104) = v4;
    v8 = sub_100011A04((v1 + 72));
    v6(v8, v7, v2);
    if (qword_100024AC0 != -1)
    {
      swift_once();
    }

    v9 = sub_100002ABC(&qword_100024EC0, &qword_10001A328);
    v10 = sub_100002850(v9, qword_100025708);
    *(v1 + 136) = v9;
    *(v1 + 144) = sub_1000185DC(&qword_100025660, &qword_100024EC0, &qword_10001A328);
    v11 = sub_100011A04((v1 + 112));
    (*(*(v9 - 8) + 16))(v11, v10, v9);
    if (qword_100024AC8 != -1)
    {
      swift_once();
    }

    v12 = sub_100002ABC(&qword_100024EC8, &qword_10001A330);
    v13 = sub_100002850(v12, qword_100025720);
    *(v1 + 176) = v12;
    v14 = sub_1000185DC(&qword_100025668, &qword_100024EC8, &qword_10001A330);
    *(v1 + 184) = v14;
    v15 = sub_100011A04((v1 + 152));
    v16 = *(*(v12 - 8) + 16);
    v16(v15, v13, v12);
    if (qword_100024AD0 != -1)
    {
      swift_once();
    }

    v17 = v0[16];
    v50 = v0[17];
    v19 = v0[14];
    v18 = v0[15];
    v20 = sub_100002850(v12, qword_100025738);
    *(v1 + 216) = v12;
    *(v1 + 224) = v14;
    v21 = sub_100011A04((v1 + 192));
    v16(v21, v20, v12);
    SchemaType.select(_:)();

    QueryType.limit(_:)();
    v22 = *(v18 + 8);
    v22(v17, v19);
    v0[5] = v19;
    v0[6] = &protocol witness table for Table;
    v23 = sub_100011A04(v0 + 2);
    (*(v18 + 16))(v23, v50, v19);
    v52 = v22;
    Connection.prepare(_:)();
    sub_1000057EC(v0 + 2);
    v33 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    if (*(v33 + 16))
    {
      v35 = v0[12];
      v34 = v0[13];
      v36 = v0[10];
      v37 = v0[9];
      v49 = v0[11];
      v51 = v0[7];
      v38 = *(v36 + 16);
      v38(v35, v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v37);

      (*(v36 + 32))(v34, v35, v37);
      v38(v49, v34, v37);
      sub_100017FE4(v49, v51);
      v39 = v0[13];
      v41 = v0[9];
      v40 = v0[10];

      (*(v40 + 8))(v39, v41);
      v42 = 0;
    }

    else
    {

      v42 = 1;
    }

    v43 = v0[16];
    v44 = v0[13];
    v46 = v0[11];
    v45 = v0[12];
    v47 = v0[7];
    v52(v0[17], v0[14]);
    v48 = type metadata accessor for LocalBeaconKeyInfo();
    (*(*(v48 - 8) + 56))(v47, v42, 1, v48);

    v31 = v0[1];
  }

  else
  {
    v24 = type metadata accessor for DatabaseError();
    sub_100018630(&qword_100025648, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for DatabaseError.notConnected(_:), v24);
    swift_willThrow();
    v27 = v0[16];
    v26 = v0[17];
    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[11];

    v31 = v0[1];
  }

  return v31();
}

uint64_t sub_100017FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SharedSecretKey();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PublicKey();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100024AB0 != -1)
  {
    swift_once();
  }

  v12 = sub_100002ABC(&qword_100024EB8, &qword_10001A320);
  sub_100002850(v12, qword_1000256D8);
  v13 = type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_100024AB8 != -1)
  {
    swift_once();
  }

  sub_100002850(v12, qword_1000256F0);
  v14 = type metadata accessor for LocalBeaconKeyInfo();
  v31 = v14[5];
  Row.subscript.getter();
  if (qword_100024AC0 != -1)
  {
    swift_once();
  }

  v27 = v5;
  v15 = sub_100002ABC(&qword_100024EC0, &qword_10001A328);
  sub_100002850(v15, qword_100025708);
  v16 = v14[6];
  v17 = type metadata accessor for Date();
  v30 = v16;
  Row.subscript.getter();
  if (qword_100024AC8 != -1)
  {
    swift_once();
  }

  v18 = sub_100002ABC(&qword_100024EC8, &qword_10001A330);
  sub_100002850(v18, qword_100025720);
  Row.subscript.getter();
  PublicKey.init(data:)();
  if (v2)
  {
    v19 = type metadata accessor for Row();
    (*(*(v19 - 8) + 8))(a1, v19);
    v22 = *(*(v13 - 8) + 8);
    v22(a2, v13);
    v22(a2 + v31, v13);
    return (*(*(v17 - 8) + 8))(a2 + v30, v17);
  }

  else
  {
    (*(v28 + 32))(a2 + v14[7], v11, v29);
    if (qword_100024AD0 != -1)
    {
      swift_once();
    }

    sub_100002850(v18, qword_100025738);
    Row.subscript.getter();
    sub_100018630(&qword_100024D30, &type metadata accessor for SharedSecretKey);
    v20 = v26;
    v21 = v27;
    KeyRepresentable<>.init(data:)();
    v24 = type metadata accessor for Row();
    (*(*(v24 - 8) + 8))(a1, v24);
    return (*(v25 + 32))(a2 + v14[8], v20, v21);
  }
}

uint64_t sub_100018580()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000185DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008058(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100018630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100018678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100017548();
}

uint64_t Connection.run(_:)()
{
  return Connection.run(_:)();
}

{
  return Connection.run(_:)();
}